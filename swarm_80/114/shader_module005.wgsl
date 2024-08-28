struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec3<f32>,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<f32, 10> = array<f32, 10>(1134f, 1000f, 670f, -813f, 3032f, -167f, -566f, -193f, 1513f, -1687f);

var<private> global2: array<vec3<bool>, 11>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> f32 {
    global2 = array<vec3<bool>, 11>();
    let var_0 = Struct_3(Struct_1(vec2<u32>(arg_0, _wgslsmith_mult_u32(42750u, u_input.d.x)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(658f)), _wgslsmith_f_op_f32(f32(-1f) * -843f), _wgslsmith_f_op_f32(-1000f * global1[_wgslsmith_index_u32(global0.x, 10u)])) + vec3<f32>(558f, _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(4294967295u, 10u)], arg_1.a)), arg_1.a)), 1950f, !vec4<bool>(true, true, any(vec3<bool>(false, false, true)), any(vec2<bool>(false, false)))), Struct_1(_wgslsmith_sub_vec2_u32(~(~global0.wx), global0.ww), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-137f, -1000f, 479f))))), _wgslsmith_f_op_f32(min(-1369f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(0u, 10u)])) * -432f))), select(vec4<bool>(global0.x < 1196u, any(vec3<bool>(false, false, false)), true, false), vec4<bool>(all(vec4<bool>(false, true, true, false)), false, true, true), !select(false, true, false))), Struct_1(vec2<u32>(~26978u, ~reverseBits(u_input.d.x)), select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false))), vec3<f32>(_wgslsmith_f_op_f32(1f - arg_1.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(arg_1.a, -1249f)))), _wgslsmith_f_op_f32(ceil(-824f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-770f - arg_1.a) - global1[_wgslsmith_index_u32(arg_0, 10u)]), !(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), true))), u_input.a, arg_1);
    var var_1 = ~arg_0;
    var var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.a, var_0.b.c.x, -911f), _wgslsmith_f_op_vec3_f32(-var_0.c.c), vec3<bool>(var_0.c.e.x, var_0.a.e.x, true))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_0.b.c))))), !var_0.a.e.xy);
    var var_3 = 0u;
    return _wgslsmith_f_op_f32(f32(-1f) * -433f);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: Struct_5) -> bool {
    let var_0 = arg_2;
    let var_1 = 48808u;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2200f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.a, Struct_2(-856f))) + -190f))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1684f))));
    let var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.x, -1000f, 1247f), arg_2.a))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -752f, var_0.a.x) + vec3<f32>(1488f, var_2.x, var_2.x))))))), _wgslsmith_f_op_vec3_f32(var_0.a + _wgslsmith_f_op_vec3_f32(-arg_2.a)), true));
    return !(var_4.x >= var_2.x);
}

fn func_1() -> Struct_5 {
    let var_0 = Struct_3(Struct_1(~vec2<u32>(24056u, u_input.d.x ^ global0.x), vec2<bool>(true || all(vec3<bool>(true, false, true)), !func_2(vec2<i32>(-2147483647i, u_input.c), vec2<f32>(-251f, -2102f), Struct_5(vec3<f32>(2513f, global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(global0.x, 10u)]), vec2<bool>(true, false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(748f, 1129f, -1991f), vec3<f32>(global1[_wgslsmith_index_u32(41005u, 10u)], -281f, -900f))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 10u)], -1967f, global1[_wgslsmith_index_u32(0u, 10u)]) + vec3<f32>(731f, 102f, 1196f))))), _wgslsmith_f_op_f32(step(517f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(1u, Struct_2(global1[_wgslsmith_index_u32(38518u, 10u)]))))))), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)))), Struct_1(_wgslsmith_sub_vec2_u32(u_input.d.zy, _wgslsmith_mod_vec2_u32(min(vec2<u32>(global0.x, global0.x), vec2<u32>(46287u, global0.x)), vec2<u32>(0u, u_input.a))), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 10u)], 490f, global1[_wgslsmith_index_u32(u_input.d.x, 10u)]) * vec3<f32>(347f, 267f, global1[_wgslsmith_index_u32(global0.x, 10u)])))), 603f, !vec4<bool>(any(vec3<bool>(false, true, true)), all(vec2<bool>(true, false)), false, true)), Struct_1(abs(global0.zy) ^ firstLeadingBit(countOneBits(global0.wy)), vec2<bool>(any(global2[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 11u)]), false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -181f, -582f)) * vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0.x, 10u)] - -1092f), global1[_wgslsmith_index_u32(4294967295u, 10u)], _wgslsmith_f_op_f32(-1200f + 686f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(690f, -715f)) - global1[_wgslsmith_index_u32(~20654u, 10u)]))), vec4<bool>(true, true, true, all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), true)))), _wgslsmith_mod_u32(~abs(u_input.d.x >> (u_input.b % 32u)), 1u), Struct_2(-659f));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-365f, global1[_wgslsmith_index_u32(~global0.x | global0.x, 10u)]))), global1[_wgslsmith_index_u32(0u, 10u)]);
    let var_2 = vec3<bool>(!(_wgslsmith_div_f32(var_0.a.c.x, -1862f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.d) * var_0.c.c.x)), true, u_input.a > (55634u << (0u % 32u)));
    let var_3 = var_0.a;
    let var_4 = Struct_4(true, var_0.e);
    return Struct_5(var_0.a.c, select(select(vec2<bool>(any(vec4<bool>(var_0.b.e.x, true, true, true)), var_3.b.x), !var_2.yx, false), select(!var_3.e.xx, var_3.e.xz, var_0.c.e.zy), _wgslsmith_f_op_f32(var_4.b.a - _wgslsmith_f_op_f32(step(-1733f, global1[_wgslsmith_index_u32(1u, 10u)]))) <= var_4.b.a));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_5, arg_2: i32) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1530f, -758f, -2514f, 905f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1167f, arg_0.a.x, arg_0.a.x, -714f)))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-393f - arg_0.a.x))), _wgslsmith_f_op_f32(-func_1().a.x), _wgslsmith_f_op_f32(floor(arg_1.a.x)), 1109f))));
    var_0 = vec4<f32>(411f, -1000f, arg_1.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1().a.x)))));
    var var_1 = global0.x;
    var var_2 = !(!select(select(!vec4<bool>(arg_1.b.x, true, arg_1.b.x, arg_0.b.x), vec4<bool>(arg_1.b.x, false, true, arg_0.b.x), select(vec4<bool>(arg_1.b.x, false, arg_1.b.x, true), vec4<bool>(true, false, true, true), vec4<bool>(true, arg_0.b.x, true, arg_0.b.x))), !(!vec4<bool>(true, arg_1.b.x, false, true)), arg_1.b.x));
    var var_3 = Struct_4(false, Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x + 2550f) + _wgslsmith_div_f32(arg_1.a.x, -1000f)), _wgslsmith_div_f32(1278f, var_0.x)))));
    return func_1();
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_5, arg_2: vec4<f32>) -> Struct_2 {
    var var_0 = Struct_3(Struct_1(max(vec2<u32>(34674u, 1u), vec2<u32>(~13443u, 50249u)), arg_1.b, vec3<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 10u)], _wgslsmith_f_op_f32(133f + -147f)), global1[_wgslsmith_index_u32(global0.x, 10u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1801f)))), !vec4<bool>(select(arg_1.b.x, arg_0.x, arg_0.x), arg_1.b.x, arg_0.x, arg_0.x && true)), Struct_1(reverseBits(global0.xx), func_1().b, arg_2.zww, 127f, select(vec4<bool>(arg_1.b.x != arg_1.b.x, global0.x > u_input.d.x, arg_0.x, arg_1.b.x), !(!vec4<bool>(true, arg_1.b.x, arg_0.x, false)), arg_1.b.x)), Struct_1(_wgslsmith_clamp_vec2_u32(u_input.d.xz, select(~vec2<u32>(u_input.b, u_input.a), max(vec2<u32>(51360u, global0.x), vec2<u32>(global0.x, 1u)), func_4(arg_1, Struct_5(arg_1.a, vec2<bool>(arg_1.b.x, arg_1.b.x)), u_input.c).b), vec2<u32>(_wgslsmith_div_u32(u_input.a, global0.x), min(u_input.b, 21397u))), arg_0.xx, arg_2.xyz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-580f, 505f)) + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 10u)] + 1788f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(arg_2.x, 1389f))))), select(select(vec4<bool>(true, false, true, arg_1.b.x), select(vec4<bool>(true, true, arg_1.b.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_1.b.x, arg_0.x), arg_0.x), true), !vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, arg_0.x), false)), ~(~1u) >> (~abs(u_input.d.x) % 32u), Struct_2(_wgslsmith_f_op_f32(trunc(1000f))));
    global1 = array<f32, 10>();
    var var_1 = 1i;
    global0 = _wgslsmith_sub_vec4_u32(vec4<u32>(abs(_wgslsmith_mult_u32(~u_input.b, u_input.b ^ var_0.a.a.x)), ~abs(var_0.a.a.x ^ var_0.c.a.x), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(5100u, global0.x), vec2<u32>(var_0.b.a.x, u_input.a)), global0.zz), 96593u), firstLeadingBit(vec4<u32>(0u, global0.x, global0.x, 28789u) >> (_wgslsmith_add_vec4_u32(vec4<u32>(15608u, var_0.c.a.x, 29577u, 1u), vec4<u32>(29282u, var_0.c.a.x, 0u, u_input.b)) % vec4<u32>(32u))) >> ((~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 55538u, 84903u, 76639u), vec4<u32>(u_input.b, 1u, var_0.a.a.x, global0.x)) & vec4<u32>(u_input.d.x, countOneBits(var_0.c.a.x), ~18413u, 1u)) % vec4<u32>(32u)));
    var var_2 = abs(vec4<i32>(abs(_wgslsmith_add_i32(2147483647i, u_input.c ^ -26393i)), _wgslsmith_mult_i32(0i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, -21252i), vec4<i32>(-1i, -1688i, 2147483647i, 1i)), -vec4<i32>(u_input.c, 10757i, u_input.c, u_input.c))), 56263i, _wgslsmith_add_i32(min(u_input.c, 14444i) & 0i, _wgslsmith_div_i32(79605i, ~u_input.c))));
    return Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1697f))))), _wgslsmith_f_op_f32(exp2(arg_1.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(global2[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 11u)], func_4(func_1(), func_1(), -u_input.c), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1[_wgslsmith_index_u32(global0.x, 10u)], global1[_wgslsmith_index_u32(3019u, 10u)], -597f, 597f), _wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(global0.x, 10u)], global1[_wgslsmith_index_u32(global0.x, 10u)], global1[_wgslsmith_index_u32(global0.x, 10u)], -686f), vec4<f32>(-241f, global1[_wgslsmith_index_u32(116535u, 10u)], -1250f, 1000f)))))))));
    var var_1 = global0.x;
    var var_2 = reverseBits(-vec2<i32>(u_input.c, reverseBits(u_input.c) | (u_input.c >> (4294967295u % 32u))));
    var var_3 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 193f, global1[_wgslsmith_index_u32(u_input.b, 10u)]))), vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(5360u, 10u)] * var_0.a), 1f, _wgslsmith_f_op_f32(108f - 173f)))), func_4(Struct_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(966f, var_0.a, var_0.a)), vec2<bool>(true, true)), func_4(Struct_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, var_0.a, 822f) * vec3<f32>(234f, -831f, var_0.a)), vec2<bool>(true, true)), Struct_5(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1[_wgslsmith_index_u32(0u, 10u)], var_0.a, global1[_wgslsmith_index_u32(53601u, 10u)]))), vec2<bool>(false, true)), -25398i), -u_input.c).b);
    let var_4 = ~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d.x, global0.x), vec2<u32>(u_input.a, ~95656u));
    let var_5 = _wgslsmith_div_u32(reverseBits(~53309u) & global0.x, 4294967295u);
    var_1 = min(firstTrailingBit(~1u), 4294967295u);
    global1 = array<f32, 10>();
    var_2 = max(-(~(~countOneBits(vec2<i32>(1i, var_2.x)))), min(vec2<i32>(var_2.x, 41442i), vec2<i32>(43496i, -var_2.x) | -vec2<i32>(u_input.c, var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global0.wyx & abs(vec3<u32>(countOneBits(7300u), _wgslsmith_dot_vec4_u32(vec4<u32>(68888u, var_5, 1u, u_input.b), vec4<u32>(1u, var_5, 21803u, 4294967295u)), var_4)), var_4);
}

