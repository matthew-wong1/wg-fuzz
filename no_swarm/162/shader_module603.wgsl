struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -249f, arg_0) + vec3<f32>(783f, -134f, arg_0))) - vec3<f32>(arg_0, _wgslsmith_f_op_f32(346f * arg_0), -1597f))), u_input.c);
    let var_1 = firstTrailingBit(abs(~u_input.c.x));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), arg_0, _wgslsmith_f_op_f32(max(arg_0, 463f)))))), vec4<u32>(var_0.b.x, 14817u, var_0.b.x, _wgslsmith_div_u32(22754u, u_input.d)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - var_2.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(209f, -1742f)), _wgslsmith_f_op_f32(min(var_2.a.x, var_0.a.x))), var_0.a.x)), var_0.b);
    var var_4 = var_2.b.yyy;
    return !(!select(vec4<bool>(true, true, any(vec2<bool>(false, false)), select(false, false, true)), vec4<bool>(true, true, true, true), true));
}

fn func_2(arg_0: Struct_1) -> bool {
    return !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, arg_0.b.x < 16094u, u_input.b.x >= 2147483647i, select(false, false, false)), select(func_3(173f), vec4<bool>(true, true, true, true), any(vec3<bool>(false, false, true)))));
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec3<bool>) -> vec3<u32> {
    let var_0 = arg_2;
    var var_1 = ~countOneBits(_wgslsmith_add_vec4_i32(~u_input.b, vec4<i32>(-22416i, u_input.a, -u_input.b.x, u_input.a)));
    var var_2 = var_0;
    var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.x, -474f, 680f)), _wgslsmith_f_op_vec3_f32(var_2.a * vec3<f32>(var_0.a.x, var_2.a.x, 1342f))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(min(var_0.a.x, 961f)), _wgslsmith_f_op_f32(f32(-1f) * -195f), var_0.a.x)))), _wgslsmith_mult_vec4_u32(select(vec4<u32>(1u, var_0.b.x, u_input.d, abs(var_0.b.x)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.b.x, 0u), vec2<u32>(u_input.c.x, 0u)), ~var_2.b.x, var_2.b.x, arg_2.b.x), arg_0), ~vec4<u32>(firstTrailingBit(48469u), _wgslsmith_mult_u32(var_0.b.x, u_input.d), select(57391u, 68373u, false), var_2.b.x)));
    let var_3 = !(!(!(!(!vec4<bool>(arg_0, arg_3.x, true, arg_3.x)))));
    return vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(arg_2.b.zx, var_0.b.xx), ~(~vec2<u32>(1u, 1u))), firstLeadingBit(4294967295u) << (var_0.b.x % 32u), ~4294967295u);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = !(arg_3.a.x <= 1f);
    var var_1 = vec3<u32>(u_input.c.x, ~62290u, ~20179u);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-933f, 1722f, arg_2.a.x, 1508f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(777f, arg_2.a.x, 514f, 1634f))), vec4<f32>(-821f, arg_0.a.x, _wgslsmith_f_op_f32(-521f * -1600f), _wgslsmith_f_op_f32(trunc(857f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(254f, arg_0.a.x, 2046f, 996f) - vec4<f32>(arg_3.a.x, arg_2.a.x, 493f, -1000f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1252f, arg_2.a.x, arg_3.a.x, arg_0.a.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1024f, 1311f, arg_2.a.x, 832f) * vec4<f32>(-106f, arg_2.a.x, 1063f, 904f))))));
    let var_3 = arg_0.a;
    var_1 = ~((_wgslsmith_sub_vec3_u32(~arg_3.b.wxw, vec3<u32>(u_input.d, arg_3.b.x, arg_3.b.x)) | func_4(func_2(arg_2), vec3<bool>(true, true, true), Struct_1(arg_2.a, arg_2.b), func_3(1316f).yzy)) << (vec3<u32>(_wgslsmith_mult_u32(u_input.c.x, arg_0.b.x) ^ abs(42522u), firstLeadingBit(36434u), min(~40400u, ~var_1.x)) % vec3<u32>(32u)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(var_2, vec4<f32>(-115f, arg_0.a.x, var_2.x, arg_0.a.x))))) - var_2) * var_2);
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = all(vec4<bool>(!(u_input.b.x > _wgslsmith_mult_i32(u_input.a, u_input.a)), func_3(541f).x, all(vec2<bool>(true, false)), any(vec4<bool>(true, true, true, true))));
    var var_1 = Struct_1(_wgslsmith_div_vec3_f32(arg_0.zyy, arg_0.zxz), arg_1.b);
    var_1 = arg_2;
    var_1 = arg_1;
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(474f, arg_0.x, 416f), arg_0.xxw) + vec3<f32>(1207f, 336f, 825f)))), _wgslsmith_add_vec4_u32(~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.c.x, 1u, arg_1.b.x, 32139u), firstLeadingBit(arg_2.b)), ~_wgslsmith_div_vec4_u32(~vec4<u32>(arg_1.b.x, 0u, arg_2.b.x, arg_2.b.x), _wgslsmith_add_vec4_u32(vec4<u32>(arg_2.b.x, arg_2.b.x, arg_2.b.x, arg_1.b.x), arg_1.b))));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(reverseBits(-_wgslsmith_div_i32(u_input.a, -u_input.b.x)));
    var var_1 = vec3<i32>(u_input.a, ~var_0, ~(~(-2147483647i)) >> (~u_input.c.x % 32u));
    var_1 = _wgslsmith_mod_vec3_i32(~(-u_input.b.xyz), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-4077i, var_1.x), ~vec2<i32>(2658i, var_0)), select(~var_0, u_input.a, true && all(vec2<bool>(false, true))), -firstLeadingBit(i32(-1i) * -20029i)));
    var var_2 = Struct_1(vec3<f32>(1f, 1f, 1f), vec4<u32>(func_5(_wgslsmith_f_op_vec4_f32(func_1(Struct_1(vec3<f32>(-1536f, 594f, -467f), vec4<u32>(u_input.d, 22641u, u_input.d, 0u)), var_0, Struct_1(vec3<f32>(-1092f, 770f, 1000f), vec4<u32>(73344u, u_input.c.x, u_input.c.x, u_input.c.x)), Struct_1(vec3<f32>(-2119f, -1728f, 466f), u_input.c))), Struct_1(vec3<f32>(-133f, -303f, 1573f), vec4<u32>(39593u, u_input.c.x, 34817u, 4294967295u)), Struct_1(vec3<f32>(-319f, -196f, 907f), u_input.c)) ^ u_input.d, 49376u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(max(vec2<u32>(u_input.c.x, u_input.d), u_input.c.xw), ~vec2<u32>(u_input.c.x, u_input.c.x)), ~select(u_input.c.zy, u_input.c.zz, vec2<bool>(true, true))), ~(~u_input.d)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(floor(233f)), var_2.a.x), vec3<f32>(1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_2.a.x, var_2.a.x))), var_2.a.x), ~(-var_1.x) != min(min(2147483647i, 27722i), u_input.b.x))), vec4<u32>(4294967295u, 78771u, max(max(~21698u, firstTrailingBit(52346u)), ~(~0u)), func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x))), Struct_1(_wgslsmith_f_op_vec3_f32(-var_2.a), var_2.b), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1637f, 227f, 411f) + var_2.a), ~var_2.b))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.x, var_3.b, 1f);
}

