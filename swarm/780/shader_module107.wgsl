struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: u32,
    d: vec2<bool>,
    e: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<i32, 28>;

var<private> global2: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(48925i, Struct_1(vec3<f32>(-211f, -531f, -245f), -1i, vec2<u32>(41846u, 56082u))));

var<private> global3: array<vec3<i32>, 7>;

var<private> global4: Struct_2;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: bool, arg_1: f32) -> vec2<bool> {
    let var_0 = Struct_3(vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, global4.b.c.x, 1u), max(vec3<u32>(global4.b.c.x, 49431u, global4.b.c.x), vec3<u32>(56348u, global4.b.c.x, global4.b.c.x))) << (~u_input.b % 32u), 64148u), arg_0, _wgslsmith_div_u32((_wgslsmith_add_u32(u_input.b, 31251u) << (max(u_input.a, 0u) % 32u)) >> (0u % 32u), ~0u), vec2<bool>(arg_0 & arg_0, all(!select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(arg_0, arg_0, false, false), true))), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(4294967295u, 61837u), u_input.a, ~u_input.b), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 65365u, u_input.a), vec3<u32>(u_input.a, u_input.b, global4.b.c.x))), ~1u));
    global4 = Struct_2(firstTrailingBit(0i), Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(floor(1146f)), _wgslsmith_f_op_f32(trunc(global4.b.a.x)), _wgslsmith_f_op_f32(abs(828f))))), global1[_wgslsmith_index_u32(min(var_0.e, 39951u), 28u)], global4.b.c));
    var var_1 = var_0;
    let var_2 = select(!(!select(select(vec3<bool>(false, false, false), vec3<bool>(false, arg_0, true), vec3<bool>(var_0.d.x, var_1.b, arg_0)), vec3<bool>(arg_0, var_0.d.x, true), vec3<bool>(false, true, false))), vec3<bool>(any(!(!vec3<bool>(var_0.d.x, var_1.b, false))), select(!var_1.d.x, var_1.b, var_0.b), false), var_0.b);
    var var_3 = global4.b.a.x;
    return vec2<bool>(var_1.d.x, arg_0);
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_3) -> Struct_3 {
    let var_0 = Struct_2(1i, global4.b);
    global1 = array<i32, 28>();
    global3 = array<vec3<i32>, 7>();
    var var_1 = u_input.c;
    var var_2 = arg_2;
    return Struct_3(vec2<u32>(1u, var_2.a.x << (u_input.b % 32u)), true, 25189u, select(select(select(select(var_2.d, vec2<bool>(true, arg_2.d.x), var_2.d.x), var_2.d, select(arg_2.d, var_2.d, arg_2.d)), func_3(true, 554f), !all(vec4<bool>(true, arg_2.d.x, false, arg_2.d.x))), var_2.d, arg_2.d.x | (_wgslsmith_clamp_i32(u_input.c.x, -2147483647i, var_0.b.b) > -u_input.c.x)), _wgslsmith_div_u32((_wgslsmith_mod_u32(arg_0, 1824u) | ~arg_2.c) & ~(~u_input.b), firstLeadingBit(59325u)));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec2<i32>) -> vec4<bool> {
    let var_0 = func_2(func_2(_wgslsmith_div_u32(~31356u | abs(global4.b.c.x), func_2(26502u >> (arg_2.e % 32u), vec4<f32>(-925f, global4.b.a.x, global4.b.a.x, arg_0), func_2(arg_1.b.c.x, vec4<f32>(-1106f, -1219f, 467f, -646f), arg_2)).a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(121f, arg_1.b.a.x, -114f, arg_1.b.a.x) * vec4<f32>(-1104f, -1908f, global4.b.a.x, -405f)) + vec4<f32>(arg_0, -540f, arg_1.b.a.x, 1520f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1287f, 1010f, 732f, arg_1.b.a.x), vec4<f32>(global4.b.a.x, global4.b.a.x, -1212f, arg_0), vec4<bool>(true, false, true, arg_2.d.x))))), Struct_3(arg_1.b.c | abs(vec2<u32>(u_input.b, arg_1.b.c.x)), !arg_2.d.x, 4294967295u, select(vec2<bool>(true, arg_2.b), select(arg_2.d, vec2<bool>(arg_2.b, arg_2.d.x), arg_2.d), all(vec4<bool>(true, false, false, false))), arg_1.b.c.x)).e, vec4<f32>(-662f, _wgslsmith_f_op_f32(abs(1655f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(800f - -223f))))), 1558f), Struct_3(_wgslsmith_mult_vec2_u32(~vec2<u32>(0u, 0u), min(arg_1.b.c, vec2<u32>(global4.b.c.x, 42286u)) << (arg_2.a % vec2<u32>(32u))), true, 1u, vec2<bool>(!(1704f > arg_0), true), reverseBits(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, arg_1.b.c.x), vec3<u32>(49055u, arg_1.b.c.x, 4294967295u)), 1u))));
    var var_1 = ~vec2<u32>(94907u, ~4294967295u);
    global0 = -2147483647i;
    var var_2 = Struct_2(_wgslsmith_clamp_i32(0i, _wgslsmith_div_i32(-1i, _wgslsmith_sub_i32(u_input.c.x, u_input.c.x)), select(global1[_wgslsmith_index_u32(global4.b.c.x, 28u)], 15179i, any(select(vec4<bool>(arg_2.d.x, arg_2.d.x, var_0.d.x, true), vec4<bool>(false, true, arg_2.d.x, false), var_0.d.x)))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(441f, global4.b.a.x, arg_0))), u_input.c.x, min(min(arg_1.b.c, vec2<u32>(var_0.c, 46768u)), select(_wgslsmith_sub_vec2_u32(arg_1.b.c, var_0.a), arg_1.b.c, var_0.d))));
    let var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1155f, -3123f, -1467f, -790f))))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-874f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_2.b.a.x, -857f)))), -648f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1254f * var_2.b.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global4.b.a.x, var_2.b.a.x)) * _wgslsmith_f_op_f32(var_2.b.a.x + 128f)), -135f, _wgslsmith_f_op_f32(-arg_0), -1391f), (reverseBits(arg_3.x) > _wgslsmith_add_i32(arg_3.x, 0i)) != false))));
    return !select(!(!vec4<bool>(true, false, arg_2.b, true)), !(!(!vec4<bool>(var_0.b, false, arg_2.d.x, true))), select(!(!vec4<bool>(arg_2.b, arg_2.b, arg_2.b, true)), !select(vec4<bool>(var_0.d.x, false, var_0.d.x, true), vec4<bool>(false, true, arg_2.b, arg_2.b), var_0.d.x), !(!var_0.b)));
}

fn func_1() -> i32 {
    global1 = array<i32, 28>();
    global0 = 1i;
    global1 = array<i32, 28>();
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1792f, global4.b.a.x, -618f, 336f), vec4<f32>(2017f, _wgslsmith_f_op_f32(global4.b.a.x + _wgslsmith_f_op_f32(sign(503f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-global4.b.a.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f + -127f), global4.b.a.x, true))), !func_4(-300f, Struct_2(-3827i, Struct_1(global4.b.a, 0i, vec2<u32>(4294967295u, u_input.a))), func_2(1u, vec4<f32>(global4.b.a.x, global4.b.a.x, global4.b.a.x, global4.b.a.x), Struct_3(vec2<u32>(global4.b.c.x, u_input.a), false, u_input.b, vec2<bool>(true, false), 0u)), u_input.c.yx))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global4.b.a.x, var_0.x, -342f, 397f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(193f, -1000f, var_0.x, var_0.x))) + vec4<f32>(_wgslsmith_f_op_f32(-global4.b.a.x), _wgslsmith_f_op_f32(251f + 244f), -1148f, _wgslsmith_f_op_f32(ceil(var_0.x)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, 891f, global4.b.a.x, -1000f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -770f, -683f, var_0.x) + vec4<f32>(global4.b.a.x, global4.b.a.x, global4.b.a.x, var_0.x)))))));
    return abs(global4.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b.a.x));
    var var_2 = global4.b;
    var var_3 = ~(~(~min(vec3<u32>(1u, 1u, 1u), vec3<u32>(u_input.a, 1u, 1u) ^ vec3<u32>(u_input.a, global4.b.c.x, 4174u))));
    global3 = array<vec3<i32>, 7>();
    var var_4 = abs(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, global4.b.b, 61496i), vec3<i32>(2147483647i, -2147483647i, -2147483647i)), _wgslsmith_mult_vec3_i32(u_input.c, u_input.c)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(51158u, u_input.a, 4294967295u), select(vec3<u32>(u_input.a, var_2.c.x, u_input.b), vec3<u32>(0u, 0u, var_2.c.x), false)) % vec3<u32>(32u))) & vec3<i32>(-firstTrailingBit(u_input.c.x), func_1(), ~(-29616i >> (~u_input.a % 32u)));
    var_3 = ~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, ~104187u, ~var_2.c.x), ~(~(~vec3<u32>(33599u, u_input.b, u_input.a))));
    global3 = array<vec3<i32>, 7>();
    global3 = array<vec3<i32>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(max(vec3<i32>(47096i, ~(~32270i), var_0), vec3<i32>(-_wgslsmith_clamp_i32(-2147483647i, -43607i, var_2.b), -20611i, abs(~var_4.x))));
}

