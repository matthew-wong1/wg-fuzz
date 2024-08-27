struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: f32 = 118f;

var<private> global2: array<i32, 26>;

var<private> global3: vec3<f32>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, -1228f, -2442f) - vec3<f32>(-503f, global3.x, -1558f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, 299f, global3.x)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3.x))), global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3.x)) * _wgslsmith_f_op_f32(round(218f)))))) - vec3<f32>(1f, _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, 1f) + -1000f)));
    var var_1 = Struct_1(all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true)), all(vec4<bool>(true, true, true, false)))), u_input.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global3.x)), global3.x), vec4<f32>(241f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.x, 519f), _wgslsmith_div_f32(-1000f, var_0.x), select(false, true, false))) - _wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_f_op_f32(abs(-416f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))));
    let var_2 = Struct_1(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, 23327u)), ~(~vec2<u32>(80288u, 0u))) >= ~(~(~46686u)), -7376i, var_0.x, var_1.d);
    var var_3 = _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(abs(~(~vec3<u32>(4294967295u, 24181u, 30620u))), vec3<u32>(100139u, abs(66397u), abs(45009u)) ^ vec3<u32>(~1u, firstTrailingBit(1u), ~0u)), ~vec3<u32>(firstLeadingBit(~4294967295u), 1u, ~(~51587u)));
    let var_4 = global0.x << (~var_3.x % 32u);
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(var_1.d, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-var_1.d), _wgslsmith_f_op_vec4_f32(ceil(var_2.d)))), _wgslsmith_f_op_vec4_f32(-var_2.d))), var_1.a)), _wgslsmith_f_op_vec4_f32(-var_2.d)));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> vec4<f32> {
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1548f, -363f, 902f), vec3<f32>(arg_1, -1108f, global3.x))))) + vec3<f32>(_wgslsmith_f_op_f32(sign(-4177f)), _wgslsmith_f_op_f32(-923f + global3.x), arg_1)) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(arg_0.d.yyx - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.d.xzw - arg_0.d.xwx) * vec3<f32>(329f, arg_0.c, 218f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 308f, arg_1)) + arg_0.d.ywx)))));
    let var_0 = Struct_1(arg_0.a, -45382i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1, arg_0.d.x)) - _wgslsmith_f_op_f32(global3.x * 1411f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-453f * -833f) - -379f), 172f, -418f)));
    var var_1 = Struct_1(true, max(-45923i & global2[_wgslsmith_index_u32(~(~6687u), 26u)], 53989i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1277f, 805f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.x, 715f, 998f, -1000f) + vec4<f32>(var_0.d.x, -930f, 1413f, global3.x))))));
    let var_2 = 13561u;
    var_1 = Struct_1(true, _wgslsmith_mult_i32(~reverseBits(arg_0.b), global2[_wgslsmith_index_u32(27760u & var_2, 26u)]), var_1.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, arg_1, -1000f, arg_1)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.d + vec4<f32>(arg_0.d.x, global3.x, 145f, arg_0.d.x)) - vec4<f32>(-897f, 838f, var_1.d.x, global3.x))))));
    return _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1027f, var_0.d.x, global3.x, -558f)));
}

fn func_2() -> Struct_1 {
    var var_0 = false;
    let var_1 = Struct_1(true, 0i, global3.x, _wgslsmith_f_op_vec4_f32(func_4(Struct_1(true, global2[_wgslsmith_index_u32(4998u, 26u)], _wgslsmith_f_op_f32(max(899f, _wgslsmith_f_op_f32(floor(global3.x)))), _wgslsmith_f_op_vec4_f32(func_3())), global3.x)));
    let var_2 = var_1;
    var var_3 = 1u;
    var var_4 = var_2.a;
    return var_2;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> vec3<i32> {
    let var_0 = firstLeadingBit(~_wgslsmith_mult_u32(_wgslsmith_div_u32(1u, _wgslsmith_mod_u32(23186u, 46175u)), 1u));
    let var_1 = arg_0;
    let var_2 = min(~select(select(vec2<u32>(4294967295u, 12173u), vec2<u32>(var_0, 1u), var_1.a) | _wgslsmith_mult_vec2_u32(vec2<u32>(1u, var_0), vec2<u32>(9862u, 13542u)), select(~vec2<u32>(20811u, var_0), vec2<u32>(var_0, var_0), vec2<bool>(true, false)), arg_1.a), vec2<u32>(~select(~var_0, ~37745u, true), select(0u, countOneBits(var_0 | 1u), var_1.a)));
    var var_3 = Struct_1(func_2().a, -465i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_f_op_vec4_f32(-arg_0.d));
    let var_4 = arg_0;
    return vec3<i32>(-1i) * -vec3<i32>(arg_0.b, _wgslsmith_mult_i32(var_4.b, -41676i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 3596u, 22537u, var_2.x), vec4<u32>(4294967295u, var_2.x, var_2.x, 23868u)) % 32u), global0.x & arg_1.b);
}

fn func_1() -> Struct_1 {
    var var_0 = global0.x;
    var var_1 = _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(func_5(Struct_1(true, ~global2[_wgslsmith_index_u32(4294967295u, 26u)], global3.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(-2458f, global3.x, -384f, global3.x) + vec4<f32>(global3.x, 1118f, -1147f, -298f))), func_2(), -2485f), vec3<i32>(1i, firstTrailingBit(-2147483647i) ^ _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(4294967295u, 26u)], -2539i), ~(2147483647i | global0.x))), vec3<i32>(i32(-1i) * -11314i, -26411i, global2[_wgslsmith_index_u32(~max(1u, min(9864u, 12946u)), 26u)]));
    var var_2 = Struct_1(any(select(vec3<bool>(false, true, 1i >= u_input.a.x), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(select(false, false, true), true, any(vec4<bool>(false, true, false, false))))), global0.x, global3.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3.x, 1f)) - _wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(f32(-1f) * -1230f))), _wgslsmith_f_op_f32(global3.x * -411f), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-409f * 1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3()).x))));
    var var_3 = -2147483647i;
    var var_4 = vec2<bool>(all(vec4<bool>((var_2.a == var_2.a) && func_2().a, !all(vec4<bool>(var_2.a, true, true, var_2.a)), all(vec2<bool>(false, true)), !all(vec2<bool>(true, var_2.a)))), true & any(select(vec3<bool>(var_2.a, var_2.a, var_2.a), vec3<bool>(true, var_2.a, var_2.a), var_2.a)));
    return func_2();
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_1 {
    global3 = arg_1.d.wxy;
    global3 = arg_1.d.wzy;
    let var_0 = func_1();
    let var_1 = select(select(!arg_2, vec4<bool>(any(vec3<bool>(arg_1.a, true, true)), false, arg_0 < -207f, any(vec3<bool>(var_0.a, var_0.a, arg_1.a)) && any(arg_2.zy)), select(vec4<bool>(2643f >= var_0.c, !arg_1.a, arg_1.a || false, arg_2.x && true), select(!arg_2, arg_2, !vec4<bool>(true, var_0.a, arg_1.a, arg_2.x)), select(select(vec4<bool>(arg_2.x, var_0.a, arg_1.a, arg_1.a), arg_2, vec4<bool>(arg_2.x, var_0.a, true, var_0.a)), !arg_2, arg_2.x))), !vec4<bool>(true, true, !all(arg_2), all(!arg_2)), select(true, func_1().a, !(all(arg_2.yw) && all(arg_2.yxw))));
    var var_2 = -937f;
    return Struct_1(!all(select(var_1.zwz, var_1.xxy, true)), -25253i ^ func_1().b, _wgslsmith_f_op_f32(-193f + _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global3.x)) + -1000f))), vec4<f32>(arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-986f * _wgslsmith_f_op_f32(-arg_1.c)))), _wgslsmith_f_op_f32(exp2(1f)), global3.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(-1000f, func_1(), vec4<bool>(true, true, true, true));
    let var_1 = Struct_1(any(vec3<bool>(true, all(vec4<bool>(var_0.a, var_0.a, false, var_0.a)) && !var_0.a, func_1().a)), u_input.a.x, _wgslsmith_f_op_f32(f32(-1f) * -252f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_div_f32(522f, -2332f), _wgslsmith_f_op_f32(-global3.x), 937f))) - vec4<f32>(_wgslsmith_f_op_f32(155f * _wgslsmith_f_op_f32(-577f + -335f)), 608f, _wgslsmith_f_op_f32(var_0.d.x + 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3.x)) - global3.x))));
    var var_2 = countOneBits(4294967295u);
    global3 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(2227f - _wgslsmith_div_f32(1054f, _wgslsmith_f_op_f32(var_1.c * -1262f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1519f)), _wgslsmith_f_op_f32(-962f * 491f))), -487f)));
    global0 = ~u_input.a;
    var var_3 = 15896u;
    var_3 = ~0u;
    global1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec4_f32(func_3()).x, 906f));
    let var_4 = _wgslsmith_f_op_f32(var_1.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - var_0.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-463f);
}

