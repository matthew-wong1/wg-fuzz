struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: bool,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: bool,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = arg_0.e;
    return !(!vec3<bool>(!(true & arg_0.c), var_0, any(select(vec4<bool>(arg_0.e, true, arg_0.d, false), vec4<bool>(true, arg_1.c, arg_0.e, true), vec4<bool>(true, arg_1.d, true, arg_1.e)))));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2) -> f32 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(683f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.b, arg_0.a))), arg_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1)))) * vec4<f32>(497f, _wgslsmith_div_f32(904f, 955f), -1376f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1, arg_2.a, arg_2.b, arg_0.b))))))));
    let var_1 = true;
    var var_2 = 199f;
    var var_3 = arg_2;
    let var_4 = select(select(select(select(!vec3<bool>(false, arg_0.c, arg_0.c), func_3(Struct_1(vec4<f32>(-1891f, 665f, arg_0.b, var_0.x), vec3<u32>(58301u, 1u, u_input.b.x), true, true, true), Struct_1(vec4<f32>(var_3.b, 1761f, 781f, -542f), vec3<u32>(4294967295u, u_input.b.x, 4294967295u), arg_0.c, true, true)), func_3(Struct_1(vec4<f32>(416f, arg_1, arg_2.b, -144f), vec3<u32>(92683u, 4294967295u, u_input.b.x), var_1, arg_2.c, true), Struct_1(vec4<f32>(arg_0.a, 210f, var_3.a, var_0.x), vec3<u32>(u_input.b.x, u_input.b.x, 12134u), var_3.c, var_3.c, true))), vec3<bool>(true, true, select(false, var_3.c, false)), true), !select(!vec3<bool>(true, arg_2.c, false), select(vec3<bool>(arg_0.c, true, true), vec3<bool>(true, false, false), var_3.c), true), any(vec2<bool>(var_3.c, any(vec2<bool>(false, true))))), func_3(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, -1119f, 910f, 894f), vec4<f32>(arg_1, -1942f, arg_2.a, arg_0.b), vec4<bool>(var_3.c, false, true, true))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-609f, var_0.x, arg_2.b, var_0.x), vec4<f32>(arg_0.a, 461f, -1371f, arg_2.a), vec4<bool>(arg_0.c, arg_2.c, var_1, arg_2.c)))), ~vec3<u32>(0u, u_input.b.x, 1u) | ~vec3<u32>(32886u, 4294967295u, u_input.b.x), true, all(vec2<bool>(true, true)), any(vec2<bool>(arg_2.c, var_1)) || true), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-674f, 417f, var_3.b, arg_0.b), vec4<f32>(var_0.x, -447f, 400f, arg_0.a)))), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 0u, u_input.b.x), vec3<u32>(u_input.b.x, 1u, 0u)) | _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 0u, 4294967295u), vec3<u32>(u_input.b.x, 19245u, 7156u)), true, all(vec4<bool>(true, false, false, var_1)), arg_2.c)), any(!(!select(vec2<bool>(var_1, false), vec2<bool>(false, true), vec2<bool>(false, true)))));
    return _wgslsmith_f_op_f32(max(arg_2.a, _wgslsmith_f_op_f32(abs(1f))));
}

fn func_1(arg_0: vec3<u32>, arg_1: bool) -> u32 {
    let var_0 = select(false, arg_1 && arg_1, _wgslsmith_mult_u32(~_wgslsmith_sub_u32(u_input.b.x, arg_0.x), 4294967295u ^ u_input.b.x) == 4294967295u);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1429f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(305f, 941f, arg_1, u_input.a.yy), -681f, Struct_2(1277f, 351f, false, vec2<i32>(u_input.a.x, -1i))))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(756f, 177f, false, u_input.a.xw), 566f, Struct_2(-325f, -1137f, var_0, u_input.a.xx)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -350f) - 1884f)))), true, ~_wgslsmith_mod_vec2_i32(firstTrailingBit(-u_input.a.zy), ~select(u_input.a.wy, vec2<i32>(u_input.a.x, -18406i), vec2<bool>(true, arg_1))));
    var var_2 = _wgslsmith_sub_vec2_i32(~var_1.d, abs(u_input.a.yy)) | -(~((vec2<i32>(u_input.a.x, 18791i) & vec2<i32>(var_1.d.x, -1i)) ^ reverseBits(vec2<i32>(1i, 1i))));
    var var_3 = true;
    let var_4 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(var_1.a, -840f, var_0)), _wgslsmith_f_op_f32(-var_1.a), -876f, var_1.b), ~vec3<u32>(~u_input.b.x, firstTrailingBit(1u), u_input.b.x), true, var_1.c, false);
    return firstLeadingBit(var_4.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(~1u, func_1(~max(vec3<u32>(0u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 74094u)), true)), _wgslsmith_add_vec2_u32(vec2<u32>(20085u, u_input.b.x ^ 1u), ~(~u_input.b)) ^ vec2<u32>(0u, max(min(u_input.b.x, u_input.b.x), u_input.b.x)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-106f, -1523f, -879f, 1000f)) * vec4<f32>(348f, -128f, -1387f, 2700f))))), vec3<u32>(select(0u, ~abs(u_input.b.x), 4294967295u > u_input.b.x), _wgslsmith_div_u32(1u << ((u_input.b.x >> (var_0.x % 32u)) % 32u), _wgslsmith_sub_u32(1u, _wgslsmith_mod_u32(79097u, u_input.b.x))), _wgslsmith_mod_u32(~_wgslsmith_add_u32(var_0.x, 4294967295u), ~(~50982u))), true, any(vec3<bool>(true, all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true))), true || all(vec2<bool>(false, false)))), all(select(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), vec3<bool>(65483u > u_input.b.x, u_input.a.x != u_input.a.x, u_input.a.x != u_input.a.x), func_3(Struct_1(vec4<f32>(2016f, 1587f, 511f, 208f), vec3<u32>(4294967295u, var_0.x, 0u), true, true, false), Struct_1(vec4<f32>(745f, -1189f, 287f, -508f), vec3<u32>(u_input.b.x, var_0.x, 1u), false, false, true)))));
    let var_2 = -abs(abs(~vec2<i32>(u_input.a.x, 4425i)));
    let x = u_input.a;
    s_output = StorageBuffer(1273f, var_2.x);
}

