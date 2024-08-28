struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<u32> {
    var var_0 = vec4<i32>(u_input.a, -15215i, i32(-1i) * -select(countOneBits(38366i), u_input.a, true), ~_wgslsmith_add_i32(-28563i, _wgslsmith_sub_i32(u_input.b.x, -2147483647i)));
    let var_1 = Struct_3(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(~_wgslsmith_mod_u32(506u, 74567u), ~7887u, 4294967295u), 1u), -1i);
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -716f), _wgslsmith_f_op_f32(516f - -670f), -663f, _wgslsmith_f_op_f32(f32(-1f) * -626f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1768f, -1516f, -1393f, 1013f))))));
    var var_3 = Struct_1(~min(vec4<u32>(4294967295u, var_1.a, var_1.a, var_1.a) | vec4<u32>(14704u, 35651u, 0u, 4294967295u), ~vec4<u32>(4294967295u, 41383u, var_1.a, 1u)), vec3<i32>(var_0.x, var_1.b, ~max(var_0.x, var_1.b) & -_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(u_input.a, 66911i))));
    let var_4 = !(!select(true, false, true));
    return abs(var_3.a);
}

fn func_2() -> u32 {
    let var_0 = 749f;
    let var_1 = countOneBits(~11274u);
    var var_2 = Struct_1(~func_3(), vec3<i32>(~u_input.b.x, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(236i, u_input.a, -34627i, u_input.b.x), vec4<i32>(-46132i, 1i, u_input.b.x, u_input.b.x)), vec4<i32>(55859i, u_input.b.x, -1i, u_input.a) >> (vec4<u32>(var_1, var_1, 1u, var_1) % vec4<u32>(32u))), -select(vec4<i32>(-1i, u_input.b.x, -3226i, -41143i), vec4<i32>(u_input.b.x, -19733i, u_input.b.x, u_input.a), vec4<bool>(false, true, false, true))), u_input.a));
    var var_3 = Struct_3(var_1, max(0i, -1i));
    var var_4 = all(vec4<bool>(true && !all(vec2<bool>(false, true)), all(vec3<bool>(true, 1348f < var_0, var_0 < 1616f)), !(!any(vec3<bool>(true, false, false))), all(vec4<bool>(all(vec4<bool>(false, false, false, true)), any(vec2<bool>(false, false)), true, all(vec3<bool>(true, true, true))))));
    return _wgslsmith_dot_vec4_u32(~vec4<u32>(28669u, ~(~15897u), 26411u, countOneBits(_wgslsmith_mult_u32(16491u, var_2.a.x))), vec4<u32>(52235u, ~var_3.a, var_3.a, select(var_1, _wgslsmith_mod_u32(~var_1, var_1), false)));
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: bool, arg_3: i32) -> i32 {
    var var_0 = firstTrailingBit(vec4<u32>(_wgslsmith_clamp_u32(func_2(), arg_0.a, arg_0.a) >> (~1u % 32u), 36719u, 100489u, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(arg_0.a, 66616u, 1u)), ~vec3<u32>(arg_0.a, 4294967295u, 1u) << (_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.a, 4294967295u, arg_0.a), vec3<u32>(0u, arg_0.a, arg_0.a)) % vec3<u32>(32u)))));
    var_0 = _wgslsmith_mult_vec4_u32(max(func_3() | max(~vec4<u32>(arg_0.a, var_0.x, arg_0.a, 50173u), func_3()), vec4<u32>(var_0.x >> (arg_0.a % 32u), countOneBits(var_0.x), arg_0.a, min(1u, 1u)) & vec4<u32>(13591u, 1u, arg_0.a, 1u)), ~(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, arg_0.a, var_0.x, 11693u), vec4<u32>(var_0.x, 4294967295u, arg_0.a, var_0.x), vec4<u32>(arg_0.a, var_0.x, var_0.x, var_0.x)), ~vec4<u32>(4294967295u, 1u, arg_0.a, var_0.x), !vec4<bool>(arg_2, false, arg_2, true)) & firstTrailingBit(select(vec4<u32>(1u, var_0.x, 4294967295u, arg_0.a), vec4<u32>(var_0.x, var_0.x, var_0.x, 0u), arg_2))));
    var_0 = reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(33195u, ~(31447u << (1u % 32u)), 63358u, arg_0.a), ~(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 80078u, 1u, var_0.x), vec4<u32>(44770u, 1u, 4294967295u, 1u)) << (~vec4<u32>(arg_0.a, var_0.x, 16780u, 4294967295u) % vec4<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(923f, arg_1, arg_1) + vec3<f32>(-1538f, 159f, arg_1)) - vec3<f32>(arg_1, arg_1, arg_1))))));
    var_0 = vec4<u32>(17566u, 4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~var_0.xx | var_0.yx, min(vec2<u32>(1u, 0u), vec2<u32>(4294967295u, var_0.x))), var_0.wy), 0u >> (_wgslsmith_dot_vec4_u32(~select(vec4<u32>(4294967295u, 4294967295u, arg_0.a, 39948u), vec4<u32>(1u, 1u, arg_0.a, 8271u), vec4<bool>(arg_2, true, false, true)), min(firstLeadingBit(vec4<u32>(var_0.x, var_0.x, arg_0.a, 46536u)), ~vec4<u32>(arg_0.a, 52519u, 9113u, 82217u))) % 32u));
    return min(countOneBits(_wgslsmith_mult_i32(-32287i, u_input.a)), arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_sub_vec4_u32(firstTrailingBit(~vec4<u32>(7187u, 1u, 44565u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u)) | vec4<u32>(1u, 1u, 27828u, _wgslsmith_div_u32(~30898u, firstLeadingBit(0u))), vec3<i32>(u_input.a, -2147483647i, func_1(Struct_3(~56350u, select(u_input.b.x, 0i, true)), 320f, true, ~22393i)));
    var var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, ~var_0.a.x, var_0.a.x, 4294967295u), ~vec4<u32>(var_0.a.x, 4294967295u, 0u, 13310u)), var_0.a) << (_wgslsmith_dot_vec4_u32(~(~select(var_0.a, var_0.a, vec4<bool>(true, true, false, false))), firstTrailingBit(abs(var_0.a) << (~var_0.a % vec4<u32>(32u)))) % 32u);
    var_0 = Struct_1(firstTrailingBit(~abs(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_0.a.x, 1u, 0u), var_0.a))), ~vec3<i32>(min(u_input.a, -14062i), _wgslsmith_mod_i32(u_input.a, 0i), ~(-1i)) << (countOneBits(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(25864u, 51999u, 16118u), var_0.a.xwy, var_0.a.yzy))) % vec3<u32>(32u)));
    var var_2 = Struct_2(false);
    var var_3 = !(firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(var_0.a.zxy, vec3<u32>(var_0.a.x, var_0.a.x, var_0.a.x)), ~4294967295u)) >= var_0.a.x);
    var_0 = Struct_1(vec4<u32>(var_0.a.x, 68064u, abs(~52302u), _wgslsmith_dot_vec3_u32(~vec3<u32>(32630u, var_0.a.x, var_0.a.x), ~var_0.a.yzw)), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32((vec3<i32>(var_0.b.x, u_input.a, -4900i) >> (var_0.a.yyw % vec3<u32>(32u))) << (_wgslsmith_clamp_vec3_u32(var_0.a.wwx, var_0.a.yzw, var_0.a.xwy) % vec3<u32>(32u)), vec3<i32>(1i, 1i ^ var_0.b.x, _wgslsmith_mod_i32(var_0.b.x, 22191i))), u_input.b));
    var var_4 = Struct_1(min(_wgslsmith_clamp_vec4_u32(reverseBits(~vec4<u32>(4294967295u, var_0.a.x, 15977u, 0u)), var_0.a ^ var_0.a, var_0.a | ~var_0.a), abs(_wgslsmith_sub_vec4_u32(firstTrailingBit(var_0.a), vec4<u32>(1u, var_0.a.x, var_0.a.x, 62644u)))), abs(vec3<i32>(max(var_0.b.x, u_input.b.x), -33462i, ~var_0.b.x) >> (vec3<u32>(~38687u, ~var_0.a.x, var_0.a.x | var_0.a.x) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(-1020f, 1852f), _wgslsmith_f_op_f32(-1000f - 1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1022f, 677f) * vec2<f32>(685f, 1444f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2002f, 287f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(475f, 309f))))))));
}

