struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<bool>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<u32>(1u, 1u), 1392f);

var<private> global1: f32 = -688f;

var<private> global2: array<Struct_2, 5>;

var<private> global3: array<bool, 2>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> vec3<u32> {
    var var_0 = !global3[_wgslsmith_index_u32(~112787u, 2u)];
    var var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(0u, global0.a.x), arg_0.a.yx);
    var var_2 = ~vec2<u32>(23950u, ~(~firstTrailingBit(arg_0.a.x)));
    var_0 = arg_0.c.x;
    var var_3 = Struct_5(Struct_3(_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(9383u, 4294967295u)), ~global0.a, global0.a ^ ~arg_0.a.yx), _wgslsmith_f_op_f32(floor(-663f))), !select(select(select(vec4<bool>(false, false, arg_0.c.x, global3[_wgslsmith_index_u32(32484u, 2u)]), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, true), arg_0.c.x), vec4<bool>(true, arg_0.c.x, !arg_0.c.x, any(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 2u)], global3[_wgslsmith_index_u32(var_2.x, 2u)], true))), any(vec2<bool>(arg_0.c.x, global3[_wgslsmith_index_u32(global0.a.x, 2u)]))), true, global3[_wgslsmith_index_u32(var_2.x, 2u)]);
    return ~vec3<u32>(73136u, ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(arg_0.a, arg_0.a), firstTrailingBit(4294967295u)), _wgslsmith_mult_u32(~_wgslsmith_mod_u32(1u, var_1.x), ~4294967295u | firstLeadingBit(var_3.a.a.x)));
}

fn func_2() -> Struct_2 {
    var var_0 = global2[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(~func_3(Struct_2(vec4<u32>(global0.a.x, 40561u, global0.a.x, global0.a.x), vec4<i32>(0i, 38660i, 21467i, -1i), vec2<bool>(false, true))), (vec3<u32>(global0.a.x, 10549u, 64983u) | vec3<u32>(global0.a.x, global0.a.x, 0u)) << (~vec3<u32>(1u, global0.a.x, global0.a.x) % vec3<u32>(32u)))), 5u)];
    var var_1 = Struct_5(Struct_3(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global0.a.x, 4294967295u), var_0.a.xy), var_0.a.xz ^ global0.a) >> (min(_wgslsmith_mult_vec2_u32(vec2<u32>(global0.a.x, var_0.a.x), var_0.a.xz), vec2<u32>(4294967295u, global0.a.x)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.b)) + _wgslsmith_f_op_f32(771f * global0.b)), global0.b))), select(vec4<bool>(true && (global0.a.x >= global0.a.x), any(!var_0.c), any(vec4<bool>(global3[_wgslsmith_index_u32(global0.a.x, 2u)], true, true, false)), var_0.c.x), select(select(vec4<bool>(var_0.c.x, global3[_wgslsmith_index_u32(global0.a.x, 2u)], var_0.c.x, true), !vec4<bool>(var_0.c.x, global3[_wgslsmith_index_u32(global0.a.x, 2u)], false, var_0.c.x), true), select(select(vec4<bool>(var_0.c.x, true, global3[_wgslsmith_index_u32(global0.a.x, 2u)], var_0.c.x), vec4<bool>(var_0.c.x, false, var_0.c.x, var_0.c.x), vec4<bool>(true, true, var_0.c.x, false)), vec4<bool>(true, false, false, var_0.c.x), true), !(!vec4<bool>(var_0.c.x, true, global3[_wgslsmith_index_u32(global0.a.x, 2u)], var_0.c.x))), select(!vec4<bool>(global3[_wgslsmith_index_u32(1u, 2u)], var_0.c.x, false, global3[_wgslsmith_index_u32(68656u, 2u)]), vec4<bool>(var_0.c.x, global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0.a.x, global0.a.x, 26068u), 2u)], true, true), !(!vec4<bool>(var_0.c.x, false, global3[_wgslsmith_index_u32(7301u, 2u)], true)))), !(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1266f))) > global0.b), all(select(select(vec4<bool>(true, global3[_wgslsmith_index_u32(45785u, 2u)], true, global3[_wgslsmith_index_u32(4294967295u, 2u)]), select(vec4<bool>(false, true, var_0.c.x, false), vec4<bool>(false, global3[_wgslsmith_index_u32(global0.a.x, 2u)], false, var_0.c.x), vec4<bool>(false, false, var_0.c.x, false)), select(vec4<bool>(global3[_wgslsmith_index_u32(21792u, 2u)], false, true, var_0.c.x), vec4<bool>(true, global3[_wgslsmith_index_u32(var_0.a.x, 2u)], true, var_0.c.x), vec4<bool>(true, var_0.c.x, var_0.c.x, var_0.c.x))), !(!vec4<bool>(global3[_wgslsmith_index_u32(28889u, 2u)], global3[_wgslsmith_index_u32(global0.a.x, 2u)], false, global3[_wgslsmith_index_u32(23566u, 2u)])), false)));
    let var_2 = 1u << ((~global0.a.x | _wgslsmith_mult_u32(countOneBits(func_3(Struct_2(var_0.a, var_0.b, vec2<bool>(true, false))).x), 1u)) % 32u);
    var var_3 = global0.b;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1260f, _wgslsmith_f_op_f32(-1946f * global0.b)))));
    return Struct_2(~var_0.a, vec4<i32>(countOneBits(_wgslsmith_mult_i32(-2147483647i, u_input.a.x)), firstLeadingBit(var_0.b.x), 5332i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.x, var_0.b.x), u_input.a)) << (vec4<u32>(4294967295u, 53928u, ~var_0.a.x, 0u) % vec4<u32>(32u)), vec2<bool>(select(any(!vec4<bool>(var_1.b.x, true, var_0.c.x, false)), var_0.c.x, false), false));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: f32, arg_3: Struct_5) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(~(-82700i) >> (~global0.a.x % 32u), ~0i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.a.x, 2147483647i, 18653i), _wgslsmith_mod_i32(arg_0.b.x, -1i))), arg_0.b.wwz) ^ ~_wgslsmith_clamp_vec3_i32(max(vec3<i32>(-8558i, 2147483647i, -2147483647i), arg_0.b.ywy), vec3<i32>(arg_0.b.x << (1u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(19382i, -23536i), vec2<i32>(2147483647i, 0i)), _wgslsmith_mod_i32(arg_0.b.x, arg_0.b.x)), vec3<i32>(_wgslsmith_mod_i32(arg_0.b.x, arg_0.b.x), min(26019i, 39121i), u_input.a.x));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b))))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, -879f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_3.a.b, _wgslsmith_f_op_f32(max(arg_2, -1604f)), u_input.a.x >= arg_0.b.x)))));
    let var_1 = Struct_2(~vec4<u32>(global0.a.x, 0u, _wgslsmith_div_u32(1u, 4294967295u), arg_3.a.a.x << (1u % 32u)), select(abs(firstTrailingBit(vec4<i32>(var_0.x, -2147483647i, u_input.a.x, -22705i))), arg_0.b, select(select(vec4<bool>(arg_1.x, global3[_wgslsmith_index_u32(arg_3.a.a.x, 2u)], true, arg_1.x), vec4<bool>(false, arg_1.x, false, false), !arg_0.c.x), vec4<bool>(arg_3.c, !arg_0.c.x, arg_0.c.x, global3[_wgslsmith_index_u32(~1u, 2u)]), !vec4<bool>(global3[_wgslsmith_index_u32(arg_0.a.x, 2u)], arg_0.c.x, false, true))), !arg_3.b.zw);
    var var_2 = _wgslsmith_mod_u32(25546u, _wgslsmith_add_u32(arg_3.a.a.x, _wgslsmith_sub_u32(~_wgslsmith_mod_u32(var_1.a.x, arg_3.a.a.x), arg_0.a.x)));
    return Struct_1(~u_input.a.x, ~max(_wgslsmith_dot_vec3_u32(~vec3<u32>(global0.a.x, var_1.a.x, global0.a.x), var_1.a.xxw), ~firstTrailingBit(global0.a.x)), vec2<i32>(-1i) * -firstLeadingBit(func_2().b.ww), var_1.b.x);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1031f, -1171f)), global0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1488f)) + _wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(-global0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)))));
    let var_1 = !(!select(!vec2<bool>(false, global3[_wgslsmith_index_u32(31404u, 2u)]), vec2<bool>(!global3[_wgslsmith_index_u32(arg_0.b, 2u)], !global3[_wgslsmith_index_u32(arg_0.b, 2u)]), select(vec2<bool>(false, true), !vec2<bool>(global3[_wgslsmith_index_u32(45304u, 2u)], true), vec2<bool>(global3[_wgslsmith_index_u32(28976u, 2u)], false))));
    global0 = Struct_3(global0.a, 1281f);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(861f)) - global0.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.b * var_0.x))))));
    var var_3 = Struct_4(func_4(global2[_wgslsmith_index_u32(global0.a.x | func_3(func_2()).x, 5u)], !vec2<bool>(all(vec3<bool>(var_1.x, false, true)), false), var_0.x, Struct_5(Struct_3(global0.a, _wgslsmith_f_op_f32(-var_0.x)), !select(vec4<bool>(var_1.x, global3[_wgslsmith_index_u32(74421u, 2u)], global3[_wgslsmith_index_u32(6288u, 2u)], var_1.x), vec4<bool>(global3[_wgslsmith_index_u32(global0.a.x, 2u)], global3[_wgslsmith_index_u32(arg_0.b, 2u)], true, global3[_wgslsmith_index_u32(global0.a.x, 2u)]), vec4<bool>(true, false, false, global3[_wgslsmith_index_u32(global0.a.x, 2u)])), false, var_1.x)), -2147483647i, ~_wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(-3937i, 0i)), 0i, min(arg_0.a, u_input.a.x)), min(1i, arg_0.a & u_input.a.x)));
    return arg_0;
}

fn func_1(arg_0: bool, arg_1: Struct_5) -> bool {
    let var_0 = ~53344u;
    global1 = -284f;
    let var_1 = func_5(func_4(func_2(), vec2<bool>(true, !arg_0), -443f, Struct_5(arg_1.a, !vec4<bool>(arg_0, arg_1.d, global3[_wgslsmith_index_u32(global0.a.x, 2u)], true), true, arg_0)));
    var var_2 = select(arg_1.b.wx, !arg_1.b.xx, !select(arg_1.c, ~var_1.b <= arg_1.a.a.x, !arg_1.c));
    return 0u < ~((1u << (global0.a.x % 32u)) & ~var_1.b);
}

fn func_6(arg_0: bool, arg_1: vec3<u32>, arg_2: i32) -> vec2<u32> {
    global1 = global0.b;
    global2 = array<Struct_2, 5>();
    let var_0 = Struct_5(Struct_3(_wgslsmith_mod_vec2_u32(global0.a, ~global0.a & ~vec2<u32>(arg_1.x, 1590u)), global0.b), select(select(!vec4<bool>(global3[_wgslsmith_index_u32(global0.a.x, 2u)], arg_0, global3[_wgslsmith_index_u32(global0.a.x, 2u)], global3[_wgslsmith_index_u32(arg_1.x, 2u)]), !select(vec4<bool>(global3[_wgslsmith_index_u32(1u, 2u)], true, global3[_wgslsmith_index_u32(arg_1.x, 2u)], true), vec4<bool>(arg_0, arg_0, true, global3[_wgslsmith_index_u32(1477u, 2u)]), true), (arg_2 << (arg_1.x % 32u)) <= -1i), !select(vec4<bool>(global3[_wgslsmith_index_u32(arg_1.x, 2u)], arg_0, arg_0, global3[_wgslsmith_index_u32(16184u, 2u)]), !vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 2u)], false, arg_0, global3[_wgslsmith_index_u32(20854u, 2u)]), vec4<bool>(arg_0, false, arg_0, global3[_wgslsmith_index_u32(global0.a.x, 2u)])), select(!vec4<bool>(global3[_wgslsmith_index_u32(1u, 2u)], global3[_wgslsmith_index_u32(global0.a.x, 2u)], false, global3[_wgslsmith_index_u32(10859u, 2u)]), vec4<bool>(true, arg_0, select(arg_0, false, global3[_wgslsmith_index_u32(60205u, 2u)]), true), _wgslsmith_f_op_f32(global0.b - global0.b) == _wgslsmith_f_op_f32(-global0.b))), false, global3[_wgslsmith_index_u32(global0.a.x, 2u)]);
    let var_1 = Struct_4(Struct_1(abs(func_2().b.x), 0u, _wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -u_input.a, abs(vec2<i32>(u_input.a.x, arg_2))), select(u_input.a.x << (_wgslsmith_sub_u32(var_0.a.a.x, arg_1.x) % 32u), func_5(func_5(Struct_1(-39832i, 1768u, u_input.a, -4076i))).d, !global3[_wgslsmith_index_u32(86088u, 2u)])), 0i, -_wgslsmith_add_i32(~(~(-2147483647i)), _wgslsmith_mult_i32(2147483647i, arg_2) >> (~global0.a.x % 32u)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b + global0.b)))), 1000f, global0.b, var_0.a.b);
    return vec2<u32>(var_1.a.b, ~(~var_0.a.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(~func_6(func_1(true, Struct_5(Struct_3(global0.a, global0.b), vec4<bool>(global3[_wgslsmith_index_u32(global0.a.x, 2u)], true, false, true), global3[_wgslsmith_index_u32(global0.a.x, 2u)], global3[_wgslsmith_index_u32(global0.a.x, 2u)])), ~(~vec3<u32>(66979u, 30311u, global0.a.x)), u_input.a.x), -114f);
    var var_0 = select(!(!(!select(vec4<bool>(true, global3[_wgslsmith_index_u32(global0.a.x, 2u)], true, true), vec4<bool>(false, true, global3[_wgslsmith_index_u32(1u, 2u)], global3[_wgslsmith_index_u32(global0.a.x, 2u)]), global3[_wgslsmith_index_u32(4294967295u, 2u)]))), vec4<bool>(!global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.a.x << (19102u % 32u), global0.a.x), 2u)], global3[_wgslsmith_index_u32(4294967295u, 2u)], _wgslsmith_mult_i32(0i, abs(u_input.a.x)) == 510i, select(global3[_wgslsmith_index_u32(func_4(Struct_2(vec4<u32>(29063u, 110439u, 4294967295u, global0.a.x), vec4<i32>(1689i, -23878i, 2147483647i, u_input.a.x), vec2<bool>(false, global3[_wgslsmith_index_u32(5762u, 2u)])), vec2<bool>(global3[_wgslsmith_index_u32(36366u, 2u)], true), _wgslsmith_f_op_f32(step(global0.b, global0.b)), Struct_5(Struct_3(global0.a, 758f), vec4<bool>(false, global3[_wgslsmith_index_u32(0u, 2u)], true, true), false, false)).b, 2u)], !all(vec4<bool>(global3[_wgslsmith_index_u32(4175u, 2u)], global3[_wgslsmith_index_u32(4294967295u, 2u)], global3[_wgslsmith_index_u32(global0.a.x, 2u)], true)), global3[_wgslsmith_index_u32(80363u, 2u)])), vec4<bool>(false, !global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(reverseBits(4294967295u), ~global0.a.x), 2u)], all(!(!vec2<bool>(global3[_wgslsmith_index_u32(28936u, 2u)], false))), func_2().c.x));
    var var_1 = u_input.a.x;
    global0 = Struct_3(vec2<u32>(global0.a.x, _wgslsmith_dot_vec3_u32(min(max(vec3<u32>(37367u, 25612u, global0.a.x), vec3<u32>(global0.a.x, 30057u, global0.a.x)), _wgslsmith_div_vec3_u32(vec3<u32>(global0.a.x, 13018u, global0.a.x), vec3<u32>(global0.a.x, global0.a.x, 4294967295u))), ~vec3<u32>(global0.a.x, global0.a.x, 5710u) & func_3(Struct_2(vec4<u32>(23331u, 1u, 4294967295u, global0.a.x), vec4<i32>(24148i, -7710i, u_input.a.x, -13823i), vec2<bool>(global3[_wgslsmith_index_u32(0u, 2u)], true))))), global0.b);
    var var_2 = _wgslsmith_f_op_f32(global0.b - global0.b);
    let var_3 = vec2<i32>(-7372i, -u_input.a.x);
    global1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(354f + _wgslsmith_f_op_f32(floor(-1114f))), _wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(995f * global0.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1814f, 1402f, global0.b))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, 1889f, global0.b)), all(var_0.xw))), vec3<f32>(_wgslsmith_f_op_f32(-global0.b), -219f, global0.b)) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, global0.b, global0.b))))), _wgslsmith_f_op_f32(trunc(-469f)));
}

