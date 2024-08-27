struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<bool>,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: Struct_4) -> vec4<u32> {
    let var_0 = Struct_1(-((_wgslsmith_dot_vec2_i32(u_input.e.zy, vec2<i32>(2147483647i, -1533i)) | u_input.d) >> (_wgslsmith_mult_u32(arg_2.a.x & arg_2.a.x, firstLeadingBit(u_input.a.x)) % 32u)), arg_1.x, u_input.e.x, vec3<i32>(u_input.d, u_input.b.x, _wgslsmith_div_i32(u_input.b.x, u_input.d)));
    let var_1 = var_0;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1462f - -1000f), _wgslsmith_f_op_f32(f32(-1f) * -293f), -1000f, -242f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1085f, -207f, 567f, 1695f))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1390f, -606f, -1006f, 1396f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-241f, 1735f, 301f, 1437f), vec4<f32>(-625f, 1000f, -508f, 1423f), vec4<bool>(arg_1.x, true, var_0.b, var_0.b))))))));
    var var_3 = Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_2.a.x, 1u), vec2<u32>(1u, reverseBits(arg_2.a.x))), var_0);
    let var_4 = _wgslsmith_f_op_f32(-var_2.x);
    return u_input.a;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: Struct_2) -> u32 {
    let var_0 = vec2<i32>(~(~min(arg_2.b.d.x, u_input.b.x)), 1i) & u_input.b.xy;
    var var_1 = Struct_1(arg_2.b.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-773f)) * -378f), _wgslsmith_f_op_f32(f32(-1f) * -872f))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(444f, -1200f))) * -1719f), -_wgslsmith_add_i32(abs(i32(-1i) * -2147483647i), -1i), u_input.e.yzz);
    var_1 = arg_2.b;
    let var_2 = true == (-1258f <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(trunc(620f)))));
    let var_3 = Struct_4(u_input.a.yyy >> (countOneBits(_wgslsmith_mult_vec3_u32(u_input.a.wwx, u_input.a.xyx)) % vec3<u32>(32u)), select(!vec3<bool>(true, var_1.b, var_1.b), vec3<bool>(true, all(select(vec2<bool>(false, true), vec2<bool>(arg_2.b.b, arg_2.b.b), vec2<bool>(false, var_2))), arg_1.x > _wgslsmith_mod_u32(arg_0.x, arg_0.x)), true));
    return ~arg_2.a.x;
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    var var_0 = max(_wgslsmith_mult_vec4_u32(~func_2(~u_input.a.zxy, vec3<bool>(true, true, true), Struct_4(u_input.a.xwy, vec3<bool>(true, false, false))), (u_input.a & vec4<u32>(24798u, 4294967295u, u_input.a.x, u_input.a.x)) | ~u_input.a), u_input.a ^ vec4<u32>((0u >> (u_input.c % 32u)) ^ 1u, u_input.c, countOneBits(65974u), u_input.c));
    let var_1 = min(~(~(-22310i)), countOneBits(-34381i));
    let var_2 = min(u_input.a.yy, vec2<u32>(func_3(~vec2<u32>(0u, 13002u), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.a.x), vec2<u32>(u_input.a.x, 35478u)), Struct_2(var_0.xw, Struct_1(0i, true, var_1, u_input.b.zyx))) & firstTrailingBit(max(4294967295u, u_input.c)), reverseBits(u_input.c) | var_0.x));
    return arg_0;
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: u32) -> vec3<f32> {
    let var_0 = Struct_5(~54746u, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)), 1f))), -688f);
    var var_1 = Struct_4(~u_input.a.xwy, vec3<bool>(true, true, true));
    var_1 = Struct_4(vec3<u32>(~(~u_input.a.x), ~(_wgslsmith_mult_u32(4294967295u, u_input.a.x) & (u_input.c >> (36879u % 32u))), 51073u), var_1.b);
    let var_2 = Struct_4(firstLeadingBit(abs(abs(_wgslsmith_add_vec3_u32(var_1.a, vec3<u32>(arg_3, var_0.a, 35467u))))), !var_1.b);
    var_1 = var_2;
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, arg_1.x, -762f), vec3<f32>(-119f, arg_1.x, arg_2.a)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1189f, 2231f, arg_1.x), vec3<f32>(-340f, 2119f, var_0.b.a))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, -1000f, -106f) - vec3<f32>(var_0.b.a, arg_0, -1000f))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, var_0.c, -1367f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, arg_1.x, -1708f)) + vec3<f32>(arg_2.a, var_0.c, arg_2.a)), !(arg_0 == arg_0))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, -744f, 1914f) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -887f), -1617f, 133f)))), var_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-486f, 1006f, 1f, _wgslsmith_div_f32(365f, _wgslsmith_f_op_f32(abs(-787f)))));
    let var_1 = abs(-_wgslsmith_mod_vec2_i32(u_input.e.xw, countOneBits(~u_input.e.zw)));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-239f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))))), 2424f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + 278f), -1179f);
    var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-227f, 114f, -246f, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, 1043f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 419f, -1053f, -1177f))) - vec4<f32>(1590f, var_0.x, _wgslsmith_f_op_f32(abs(988f)), _wgslsmith_f_op_f32(var_0.x - -1346f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), 364f, _wgslsmith_f_op_f32(var_0.x + var_0.x), -1000f)))));
    let var_2 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(-(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, -7660i), vec2<i32>(-2147483647i, -2147483647i))) & u_input.e.x), vec4<u32>(4294967295u, ~36992u, reverseBits(u_input.c), ~var_2), _wgslsmith_f_op_vec3_f32(func_4(-118f, _wgslsmith_f_op_vec2_f32(-var_0.zx), func_1(Struct_3(_wgslsmith_f_op_f32(-var_0.x))), 104502u | firstLeadingBit(u_input.a.x))), _wgslsmith_sub_i32(var_1.x, ~(-15071i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1083f)), 1047f), var_0.x) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_0.wx))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1712f, 263f))) * vec2<f32>(var_0.x, 958f)))));
}

