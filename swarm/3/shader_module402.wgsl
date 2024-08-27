struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<f32>) -> vec3<bool> {
    var var_0 = !(!select(arg_0, select(vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, false, arg_0.x), false), arg_0.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_1.x)), _wgslsmith_f_op_f32(select(arg_1.x, 1284f, true)), _wgslsmith_f_op_f32(step(arg_1.x, arg_1.x))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -2324f), _wgslsmith_f_op_f32(floor(arg_1.x))))));
    var var_2 = -vec4<i32>(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x), u_input.b.x, 1i, firstTrailingBit(~(~23646i)));
    var var_3 = ~_wgslsmith_mult_i32(var_2.x, -1i);
    var var_4 = vec3<u32>(u_input.d, ~_wgslsmith_mult_u32(~reverseBits(4294967295u), u_input.a), 93117u);
    return arg_0;
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(round(arg_0.a)), _wgslsmith_f_op_f32(max(-1486f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - _wgslsmith_f_op_f32(exp2(arg_0.a)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_0.x, -904f), _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(f32(-1f) * -114f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, -1000f, var_0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, arg_0.a, -1643f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1304f, arg_0.a, arg_0.a)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1423f, -124f, arg_0.a)))) * vec3<f32>(-597f, _wgslsmith_f_op_f32(floor(-230f)), 866f)));
    return u_input.b.x <= countOneBits(0i);
}

fn func_3(arg_0: u32) -> vec3<f32> {
    var var_0 = 1u;
    let var_1 = min(u_input.b, u_input.b);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-136f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1481f * -444f) + -1392f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-449f, -632f, false))) - _wgslsmith_f_op_f32(-165f + _wgslsmith_f_op_f32(f32(-1f) * -255f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-536f - 1000f) + _wgslsmith_f_op_f32(919f - -140f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(all(func_1(vec3<bool>(false, u_input.c > 27326u, all(vec3<bool>(true, false, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1679f, -350f))))), func_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1671f, 2054f)))), !(!all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(4294967295u)), vec3<f32>(1613f, -1216f, -125f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(671f, -255f, -739f), vec3<f32>(-187f, -832f, -1186f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-758f, -800f, -705f) * vec3<f32>(326f, 314f, -1620f)), var_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1107f, 420f, 147f), vec3<f32>(831f, 644f, 341f), true))))), vec3<f32>(_wgslsmith_f_op_f32(-1334f + -891f), _wgslsmith_f_op_vec3_f32(func_3(~_wgslsmith_div_u32(u_input.c, 4294967295u))).x, _wgslsmith_f_op_f32(-1276f * _wgslsmith_f_op_vec3_f32(func_3(~u_input.c)).x)), vec3<bool>(true || !var_0.x, all(select(vec2<bool>(false, true), select(var_0.yz, var_0.yz, var_0.x), !var_0.x)), select(func_2(Struct_1(-280f)), countOneBits(u_input.a) != _wgslsmith_sub_u32(0u, 0u), !var_0.x))));
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1024f, var_1.x))), 247f, 375f));
    var var_2 = true;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1780f)) > var_1.x;
    var_2 = false;
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + 1000f)), _wgslsmith_f_op_f32(808f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-207f)) * _wgslsmith_f_op_f32(trunc(var_1.x)))), -1119f);
    var var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2193f, -1487f, var_1.x))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(749f, 2419f, var_1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -403f, 838f) * vec3<f32>(var_1.x, -345f, var_1.x)))), all(vec2<bool>(var_0.x, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1411f, -453f, var_1.x) - vec3<f32>(-1028f, 1159f, var_1.x)))))), vec2<i32>((abs(-46701i) >> (firstLeadingBit(u_input.d) % 32u)) << ((37033u ^ ~u_input.c) % 32u), ~u_input.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -1000f, var_1.x) * vec3<f32>(305f, -1170f, var_1.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, -760f) * vec3<f32>(-136f, 1673f, var_1.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -1000f, 138f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -847f, var_1.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.x, var_1.x, var_1.x), vec3<f32>(449f, var_1.x, var_1.x))))))));
}

