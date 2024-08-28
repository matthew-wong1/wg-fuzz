struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_3) -> u32 {
    var var_0 = Struct_1(arg_0.xz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_0.xz))));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1376f, arg_0.x))))), var_0.a);
    let var_1 = -643f;
    var var_2 = arg_1.a.b;
    var_0 = arg_1.a.b;
    return _wgslsmith_div_u32(~firstTrailingBit(u_input.a.x), u_input.a.x);
}

fn func_2(arg_0: vec3<bool>, arg_1: i32) -> u32 {
    var var_0 = Struct_3(Struct_2(~u_input.b.x != func_3(vec3<f32>(1f, 1f, 1f), Struct_3(Struct_2(arg_0.x, Struct_1(vec2<f32>(679f, -1158f), vec2<f32>(681f, -1328f)), vec2<f32>(-322f, -2452f), Struct_1(vec2<f32>(1781f, -1008f), vec2<f32>(887f, 282f))))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(select(889f, -317f, arg_0.x)), 996f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(vec2<f32>(612f, 911f) * vec2<f32>(953f, -951f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1536f, 489f)))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(733f, 750f) + vec2<f32>(563f, -253f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(743f, -2073f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(360f, 1975f) - vec2<f32>(-419f, 3260f)))));
    var_0 = Struct_3(Struct_2(var_0.a.a & var_0.a.a, var_0.a.d, _wgslsmith_f_op_vec2_f32(var_0.a.d.b - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(var_0.a.d.b, vec2<f32>(-2113f, 1000f))))), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(var_0.a.d.a)), _wgslsmith_f_op_vec2_f32(-var_0.a.d.b))));
    let var_1 = arg_1;
    var_0 = Struct_3(var_0.a);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(506f, 527f, var_0.a.d.b.x, var_0.a.b.b.x))) - vec4<f32>(_wgslsmith_f_op_f32(min(-702f, 130f)), -711f, 996f, _wgslsmith_f_op_f32(abs(var_0.a.d.a.x)))) + vec4<f32>(244f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.b.a.x + 530f) * _wgslsmith_f_op_f32(var_0.a.b.a.x - var_0.a.b.b.x)), -2723f, _wgslsmith_f_op_f32(628f - _wgslsmith_f_op_f32(-795f - var_0.a.b.a.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.c.x, var_0.a.b.a.x, var_0.a.b.a.x, var_0.a.c.x) * vec4<f32>(1000f, 1419f, 278f, 1145f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1887f, var_0.a.b.b.x, 1000f, -285f) + vec4<f32>(1710f, 1083f, var_0.a.c.x, var_0.a.c.x)))))));
    return select(u_input.a.x, ~1u, true);
}

fn func_1(arg_0: u32, arg_1: vec2<u32>) -> Struct_2 {
    var var_0 = ~(u_input.b ^ ~vec3<u32>(u_input.a.x, 27437u, 4294967295u));
    var var_1 = _wgslsmith_div_u32(select(~(~_wgslsmith_mult_u32(arg_1.x, arg_0)), func_2(select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), true), -41077i), true), u_input.a.x ^ ~0u);
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-845f, 459f, -526f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(224f, 354f, 317f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-209f, 2062f, 585f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-2819f, -2079f, -1669f) + vec3<f32>(906f, 660f, -595f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1354f * -1463f)), _wgslsmith_f_op_f32(f32(-1f) * -1441f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -432f))))));
    var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(706f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_3.x + var_3.x))), var_3.x));
    return Struct_2(any(vec4<bool>(true || !var_2, false, var_2 == any(vec3<bool>(var_2, var_2, var_2)), select(-520f < var_3.x, false, true))), Struct_1(var_3.yx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(104f, 273f) + _wgslsmith_f_op_vec2_f32(select(var_3.xz, var_3.yz, vec2<bool>(false, var_2)))) - _wgslsmith_f_op_vec2_f32(var_3.xz - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3.x, 770f), var_3.zz, true))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_3.xz), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_3.x, -133f), vec2<f32>(var_3.x, -856f))) * var_3.yx), !(!vec2<bool>(false, var_2)))))), Struct_1(vec2<f32>(-158f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1278f, 1101f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~2277u, u_input.b.yz);
    var var_1 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-404f, _wgslsmith_f_op_f32(var_0.d.b.x * var_0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(964f - _wgslsmith_f_op_f32(trunc(-372f))) * _wgslsmith_f_op_f32(step(-754f, _wgslsmith_f_op_f32(f32(-1f) * -263f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.b.a.x, var_0.b.a.x, false))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(552f, var_0.d.a.x, var_0.b.b.x, var_0.c.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.b.x, -349f, -1285f, -988f)), all(vec4<bool>(var_0.a, false, var_0.a, var_0.a)))))))));
    var var_2 = func_1(14897u, u_input.a.yz);
    var_1 = vec4<f32>(var_2.b.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-417f, -259f))), -379f, 805f);
    var_2 = var_0;
    var var_3 = vec4<bool>(!(!any(vec3<bool>(true, false, var_2.a))) || true, var_2.a, false, ~u_input.a.x >= ~(~23408u >> (u_input.b.x % 32u)));
    let var_4 = Struct_2(true, func_1(0u, u_input.b.yy).b, vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1721f)))), 690f), func_1(86626u, firstTrailingBit(vec2<u32>(_wgslsmith_add_u32(u_input.a.x, 19714u), ~16314u))).d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(~(~(~vec4<i32>(15356i, -4667i, -2147483647i, 2147483647i))), vec4<i32>(countOneBits(~(-32146i)), select(max(-2147483647i, -1i), -1i, true | var_4.a), ~(i32(-1i) * -42748i), -(2147483647i << (0u % 32u)))), _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b.zz, vec2<u32>(u_input.a.x, 0u)), vec2<u32>(u_input.b.x, u_input.a.x)) >> (u_input.b.x % 32u)));
}

