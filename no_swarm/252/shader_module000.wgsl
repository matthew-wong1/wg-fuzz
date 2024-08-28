struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: f32,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<i32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_3) -> f32 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1972f, -1000f, 642f, -386f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(483f, arg_1, -1139f, global0.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.c, arg_2.c, global0.x, global0.x))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, 579f, global0.x, arg_1), vec4<f32>(397f, 282f, arg_1, 803f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1449f, 1481f, -1221f, -644f) * vec4<f32>(-496f, global0.x, -584f, arg_1))))));
    var var_0 = Struct_3(vec2<i32>(~2147483647i, u_input.a.x), u_input.c & vec3<u32>(arg_2.b.x, 12608u, 49130u), _wgslsmith_f_op_f32(1228f * 2447f), _wgslsmith_dot_vec2_i32(vec2<i32>(select(-12878i, 68695i, true), _wgslsmith_sub_i32(-1i, -arg_0.a.c)), _wgslsmith_add_vec2_i32(arg_2.a, (u_input.a.wx & vec2<i32>(arg_2.d, arg_0.d.c)) << (countOneBits(arg_2.b.xx) % vec2<u32>(32u)))), vec3<bool>(select(-1i != arg_2.a.x, false, true), arg_0.a.a.x, arg_2.e.x));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c) - arg_1), _wgslsmith_f_op_f32(arg_2.c + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x)))), -470f, _wgslsmith_div_f32(-186f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -432f)) + _wgslsmith_f_op_f32(-378f + _wgslsmith_div_f32(var_0.c, 1000f)))));
    var var_1 = arg_0.a.b | _wgslsmith_sub_u32(~arg_2.b.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.x, u_input.c.x, 4294967295u) ^ vec3<u32>(21296u, 88596u, 0u), vec3<u32>(u_input.b, 34591u, 4182u)));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -360f, global0.x, -546f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-813f, var_0.c, global0.x, 1049f)))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1009f), var_0.c, false))));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<bool>) -> Struct_3 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, global0.x, false)) + -1401f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) + _wgslsmith_f_op_f32(global0.x - -1251f)) * 1603f), -129f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -243f))))));
    let var_1 = arg_0;
    global0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(799f, _wgslsmith_f_op_f32(sign(-1235f)), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.c)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-782f, 530f, arg_0.c, -253f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1020f, -606f, -1376f, -259f)), vec4<f32>(global0.x, var_1.c, 1000f, -703f)), !var_1.e.x)) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec4<bool>(var_1.e.x, arg_0.e.x, arg_1.x, true), arg_0.b.x, arg_0.a.x), vec2<bool>(false, var_1.e.x), var_1.a.x, Struct_1(arg_1, 54449u, -44443i)), var_1.c, Struct_3(u_input.a.zy, var_1.b, var_1.c, 13796i, vec3<bool>(arg_0.e.x, true, var_1.e.x)))) * -590f), -1263f, _wgslsmith_f_op_f32(-683f - _wgslsmith_f_op_f32(210f + 1421f)), arg_0.c))));
    return var_1;
}

fn func_1() -> bool {
    let var_0 = Struct_1(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), u_input.c.x < u_input.c.x)), 0u, ~u_input.a.x);
    let var_1 = func_2(Struct_3(u_input.a.yy, u_input.c << (u_input.c % vec3<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), u_input.a.x | (~u_input.a.x << (0u % 32u)), !(!vec3<bool>(var_0.a.x, true, false))), var_0.a);
    let var_2 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0.b, var_1.b.x, func_2(var_1, vec4<bool>(true, var_1.e.x, false, true)).b.x, 1u), ~select(~(vec4<u32>(16222u, 24269u, var_1.b.x, 160166u) >> (vec4<u32>(4294967295u, 0u, u_input.c.x, u_input.b) % vec4<u32>(32u))), vec4<u32>(u_input.b ^ 4294967295u, var_0.b, ~u_input.b, max(u_input.d.x, 4294967295u)), var_1.e.x), select(vec4<u32>(_wgslsmith_div_u32(countOneBits(1u), ~33980u), 8664u, u_input.c.x, u_input.b), vec4<u32>(22144u, var_1.b.x, func_2(func_2(Struct_3(u_input.a.zz, vec3<u32>(7155u, var_1.b.x, var_0.b), -215f, var_0.c, vec3<bool>(var_0.a.x, var_0.a.x, var_1.e.x)), var_0.a), !vec4<bool>(var_1.e.x, var_1.e.x, false, false)).b.x, ~(~var_0.b)), select(!(!vec4<bool>(var_0.a.x, true, false, false)), !var_0.a, var_0.a)));
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.wxz - _wgslsmith_f_op_vec3_f32(-global0.zxy)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(651f, -141f, 572f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_1.c, global0.x)), !var_0.a.zzz))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.yyw)))));
    let var_4 = Struct_1(vec4<bool>(var_1.e.x, !(var_0.c <= _wgslsmith_mult_i32(u_input.a.x, -2147483647i)), false || !var_1.e.x, any(var_0.a.wyw) & true), var_1.b.x, u_input.a.x);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.xxy;
    global0 = vec4<f32>(1450f, 489f, _wgslsmith_f_op_f32(round(805f)), global0.x);
    let var_1 = select(vec2<bool>(true, false), vec2<bool>(true, false || func_1()), ~(~u_input.c.x) >= 4294967295u);
    let var_2 = 2432u;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-190f, 437f, 173f, global0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 627f, -147f, global0.x)))))) * vec4<f32>(global0.x, global0.x, global0.x, 145f));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec4<bool>(var_1.x, false, false, false), u_input.d.x, -51987i), var_1, -8822i, Struct_1(vec4<bool>(false, false, var_1.x, true), 23316u, u_input.a.x)), -213f, Struct_3(u_input.a.wx, u_input.c, 273f, -1i, vec3<bool>(false, var_1.x, var_1.x)))) * _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(316f - global0.x)), var_1.x)), 1513f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2272f))))));
    let var_3 = -abs(u_input.a);
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - global0.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(select(633f, -1575f, var_1.x))))), _wgslsmith_f_op_f32(-func_2(Struct_3(-var_3.yx, ~vec3<u32>(1u, 12561u, 56516u), 1355f, abs(var_0.x), vec3<bool>(var_1.x, false, var_1.x)), vec4<bool>(var_1.x || false, false, var_2 != 4294967295u, u_input.c.x < 0u)).c), _wgslsmith_f_op_f32(-671f * _wgslsmith_f_op_f32(floor(1005f))));
    let var_4 = -(var_3.x | max(min(-var_0.x, u_input.a.x), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(global0.zx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x)))), vec2<i32>(firstLeadingBit(var_4), _wgslsmith_mult_i32(~var_4, 1i)) ^ -var_3.wz, ~(-(~(-1i))), u_input.c);
}

