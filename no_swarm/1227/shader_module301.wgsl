struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<i32, 8>;

var<private> global2: array<vec2<i32>, 4>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec2<f32>) -> vec3<f32> {
    global1 = array<i32, 8>();
    let var_0 = arg_2;
    let var_1 = vec3<f32>(1164f, 552f, _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(floor(653f))));
    let var_2 = Struct_1(var_1.x);
    global1 = array<i32, 8>();
    return var_1;
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: vec3<f32>) -> vec2<f32> {
    global2 = array<vec2<i32>, 4>();
    global2 = array<vec2<i32>, 4>();
    let var_0 = arg_2.yy;
    let var_1 = vec4<u32>(arg_1, _wgslsmith_div_u32(71423u, ~min(4294967295u, ~5725u)), arg_1, 4294967295u);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.xz + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_2.zy))))));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(global1[_wgslsmith_index_u32(2155u, 8u)], vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(26288u, var_1.x, arg_1), u_input.b), var_1.x, _wgslsmith_add_u32(arg_1, var_1.x)), Struct_1(var_0.x), arg_2.xy)).x), var_2.x);
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_2(false, Struct_1(_wgslsmith_f_op_f32(floor(-961f))), all(vec2<bool>(true, false)) || any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)));
    global1 = array<i32, 8>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(!(!vec4<bool>(false, var_0.a, var_0.c, var_0.a)), _wgslsmith_dot_vec2_u32(u_input.b.yx >> (max(vec2<u32>(4294967295u, 62739u), vec2<u32>(u_input.c, 480u)) % vec2<u32>(32u)), max(u_input.b.yy & vec2<u32>(u_input.c, u_input.b.x), u_input.b.yx)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_3(~1i, ~vec4<u32>(1042u, 17858u, u_input.b.x, 4294967295u), arg_0, vec2<f32>(arg_0.a, arg_0.a))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.a, var_0.b.a, var_0.b.a) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.a, 967f, var_0.b.a)))), any(vec4<bool>(var_0.a, false, false, var_0.c)))))));
    let var_2 = !select(!vec3<bool>(var_0.a, any(vec3<bool>(true, var_0.a, var_0.a)), false), !vec3<bool>(true, var_0.c && false, true), !select(select(vec3<bool>(var_0.c, var_0.a, true), vec3<bool>(var_0.c, var_0.c, var_0.a), var_0.c), vec3<bool>(false, var_0.a, true), vec3<bool>(true, var_0.c, true)));
    let var_3 = arg_0;
    return reverseBits(4294967295u);
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: u32, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_div_f32(958f, _wgslsmith_f_op_f32(sign(-1034f))));
    var var_1 = Struct_1(_wgslsmith_div_f32(1105f, _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_mult_i32(1i, 26446i), ~select(vec4<u32>(u_input.c, arg_2, u_input.b.x, 9856u), vec4<u32>(39190u, u_input.b.x, 1u, 23918u), vec4<bool>(arg_0, arg_0, arg_3.x, true)), Struct_1(var_0.a), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.a, var_0.a))))).x));
    global1 = array<i32, 8>();
    global2 = array<vec2<i32>, 4>();
    let var_2 = u_input.b.yy;
    return Struct_1(var_1.a);
}

fn func_6(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = true;
    global0 = true;
    global0 = any(select(vec3<bool>(var_0, !var_0, !all(vec3<bool>(var_0, var_0, var_0))), vec3<bool>(false, var_0 && any(vec3<bool>(var_0, false, false)), false), var_0));
    return Struct_2(any(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(false, var_0, true, true), vec4<bool>(var_0, false, var_0, var_0)), !select(vec4<bool>(var_0, var_0, var_0, true), vec4<bool>(var_0, true, false, var_0), vec4<bool>(true, var_0, var_0, var_0)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-568f, _wgslsmith_div_f32(arg_0.a, arg_0.a)))), 591f < arg_1.x);
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> vec2<f32> {
    let var_0 = firstTrailingBit(vec2<u32>(arg_1, 0u) | u_input.b.xx);
    let var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(-abs(u_input.a), -1i, select(global1[_wgslsmith_index_u32(1u, 8u)], -26226i, 527f <= _wgslsmith_f_op_f32(arg_0.b.a + -1355f))), ~(-vec3<i32>(-2147483647i, _wgslsmith_mod_i32(u_input.a, 1i), -2147483647i)));
    var var_2 = func_6(func_5(arg_3.a, u_input.a, _wgslsmith_mod_u32(~_wgslsmith_add_u32(0u, 32078u), func_2(arg_3.b)), vec3<bool>(!(!arg_0.c), arg_3.a, arg_3.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(272f, 457f, arg_0.b.a, arg_3.b.a), vec4<f32>(arg_0.b.a, arg_0.b.a, -221f, 303f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-183f, arg_0.b.a, arg_3.b.a, arg_2.a))) - vec4<f32>(681f, arg_0.b.a, -1785f, arg_2.a)))), _wgslsmith_mod_vec2_u32(vec2<u32>(min(1u, 4294967295u), 80518u), ~(vec2<u32>(u_input.c, 0u) ^ vec2<u32>(u_input.b.x, arg_1))));
    var_2 = Struct_2(false, Struct_1(var_2.b.a), !(_wgslsmith_add_i32(_wgslsmith_add_i32(45856i, u_input.a), 0i) >= abs(~(-24525i))));
    let var_3 = false;
    return _wgslsmith_f_op_vec2_f32(func_4(select(!select(vec4<bool>(true, false, arg_0.c, var_2.c), vec4<bool>(arg_3.c, false, false, true), !vec4<bool>(true, var_2.c, var_3, true)), !(!select(vec4<bool>(false, var_2.c, var_3, arg_0.c), vec4<bool>(var_2.a, arg_0.c, var_2.c, var_2.c), vec4<bool>(false, var_2.a, arg_3.a, var_3))), any(vec3<bool>(arg_0.c, false, true))), arg_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(arg_2.a)), _wgslsmith_f_op_f32(abs(var_2.b.a)), -391f)) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.b.a, arg_2.a, arg_0.b.a) * _wgslsmith_f_op_vec3_f32(vec3<f32>(283f, -1581f, arg_2.a) + vec3<f32>(668f, 1269f, 1334f))))))));
}

fn func_7(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: Struct_1) -> vec3<bool> {
    global1 = array<i32, 8>();
    let var_0 = 714f;
    global1 = array<i32, 8>();
    global0 = any(vec2<bool>(!(_wgslsmith_div_f32(arg_2.x, arg_2.x) < _wgslsmith_f_op_f32(f32(-1f) * -1904f)), arg_1.a));
    let var_1 = arg_1;
    return select(!select(vec3<bool>(true, all(vec4<bool>(false, arg_1.c, arg_1.c, true)), arg_1.c | true), !select(vec3<bool>(true, arg_1.a, arg_1.a), vec3<bool>(arg_1.c, var_1.a, true), var_1.c), -u_input.a <= select(global1[_wgslsmith_index_u32(40424u, 8u)], -26303i, true)), vec3<bool>(any(vec2<bool>(false, true)), any(select(!vec2<bool>(var_1.a, var_1.a), vec2<bool>(false, false), select(vec2<bool>(false, arg_1.a), vec2<bool>(arg_1.c, arg_1.c), vec2<bool>(arg_1.a, false)))), true), select(!(!select(vec3<bool>(true, arg_1.a, true), vec3<bool>(true, var_1.a, true), vec3<bool>(true, var_1.a, arg_1.a))), vec3<bool>(select(true, true, !arg_1.c), true, arg_1.a), var_1.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(all(func_7(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_1(Struct_2(true, Struct_1(-291f), false), u_input.c, Struct_1(-1000f), Struct_2(false, Struct_1(-1613f), true))), _wgslsmith_div_vec2_f32(vec2<f32>(-244f, -1887f), vec2<f32>(-1000f, -468f)), true)), func_6(Struct_1(-564f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1447f, -1068f, -1104f, 1000f))), vec2<u32>(4294967295u, 39071u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1053f, -881f) + vec2<f32>(-689f, 132f))), Struct_1(-871f))), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * -1236f), func_6(Struct_1(-996f), vec4<f32>(330f, -1201f, -1126f, -359f), u_input.b.yy).b.a)))), any(!vec3<bool>(true, any(vec2<bool>(false, true)), true)));
    let var_1 = max(u_input.b.yy, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, firstLeadingBit(u_input.b.x)), u_input.b.zy), u_input.b.x));
    var_0 = Struct_2(false, var_0.b, var_0.a);
    global0 = func_6(Struct_1(var_0.b.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(321f, var_0.b.a, var_0.b.a, 399f) + vec4<f32>(var_0.b.a, var_0.b.a, -1397f, var_0.b.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.a, 1179f, -1315f, -472f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(2126f, var_0.b.a, var_0.b.a, -497f) + vec4<f32>(979f, 1005f, -137f, var_0.b.a)))))), u_input.b.yx).a;
    global2 = array<vec2<i32>, 4>();
    let var_2 = Struct_2(var_0.a, func_6(func_6(var_0.b, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.b.a, 387f, var_0.b.a, -599f))), max(~var_1, vec2<u32>(1107u, 8802u))).b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.b.a, 622f, var_0.b.a, 2952f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.a, var_0.b.a, -1000f, -1000f)))), ~_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.c, 14759u), _wgslsmith_div_vec2_u32(vec2<u32>(50923u, 70461u), var_1))).b, any(select(!vec2<bool>(true, var_0.a), vec2<bool>(false, false), !vec2<bool>(false, var_0.a))) == true);
    var var_3 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(reverseBits(-75580i), ~u_input.a));
}

