struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    global0 = arg_0.a.yy;
    global0 = min(max(arg_0.a.yz, arg_0.a.yy), abs(vec2<u32>(arg_0.a.x, 1u)));
    var var_0 = u_input.a;
    let var_1 = _wgslsmith_clamp_u32(global0.x, firstLeadingBit(21692u << (firstLeadingBit(arg_0.a.x) % 32u)) & ~1u, ~60525u | (51310u ^ ~arg_0.a.x));
    global0 = abs(_wgslsmith_mod_vec2_u32(firstTrailingBit(~arg_0.a.zx), vec2<u32>(abs(55151u), 0u)));
    return vec4<u32>(var_1, ~_wgslsmith_add_u32(reverseBits(4294967295u), 0u), 33525u, _wgslsmith_div_u32(~(~arg_0.a.x >> (var_1 % 32u)), _wgslsmith_div_u32(~55247u, ~(global0.x | 49717u))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_mod_vec4_u32(func_3(Struct_1(vec4<u32>(global0.x, 0u, 1u, 1u))), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(28516u, global0.x, 0u, 9054u), vec4<u32>(global0.x, global0.x, global0.x, 0u))) >> (~select(vec4<u32>(global0.x, 0u, 17872u, global0.x), vec4<u32>(0u, global0.x, 46819u, global0.x), vec4<bool>(false, true, false, true)) % vec4<u32>(32u))));
    var var_1 = ~global0.x;
    var var_2 = u_input.a;
    var_2 = u_input.a;
    let var_3 = vec3<u32>(~6295u, ~_wgslsmith_add_u32(_wgslsmith_sub_u32(34900u, var_0.a.x), var_0.a.x << (1u % 32u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(var_0.a.xx, var_0.a.wy), vec2<u32>(global0.x, 0u)), ~vec2<u32>(var_0.a.x, 94477u)), max(global0.x, 0u)));
    return Struct_1(vec4<u32>(3477u, _wgslsmith_div_u32(34742u, select(var_3.x, global0.x, false)) | 70550u, ~23664u, firstTrailingBit(var_0.a.x)));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = func_2();
    global0 = countOneBits(abs(func_2().a.xz));
    let var_1 = true;
    global0 = vec2<u32>(9578u, ~(~firstTrailingBit(global0.x) & 0u));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-252f, 684f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(788f, 1000f))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(650f, 1690f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(2128f, 1000f), vec2<f32>(-276f, 1189f))), true))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1203f)))), -245f), true)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-116f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(1775f)))))));
    return Struct_1(min(var_0.a, max(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, var_0.a.x), vec4<u32>(global0.x, 64122u, 0u, global0.x), var_0.a), firstLeadingBit(var_0.a))));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> u32 {
    global0 = arg_0.a.wz;
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_vec2_u32(~vec2<u32>(~firstTrailingBit(48027u), func_4(func_1(vec2<bool>(true, false)), false)), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(15742u, global0.x) | global0.x, _wgslsmith_mod_u32(~16772u, 1u)), vec2<u32>(_wgslsmith_mult_u32(~global0.x, ~42915u), _wgslsmith_div_u32(global0.x, 17970u)), vec2<u32>(global0.x, 0u)));
    let var_0 = ~(_wgslsmith_div_vec2_i32(firstLeadingBit(~vec2<i32>(u_input.a, u_input.a)), vec2<i32>(u_input.a, u_input.a) & _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(-18597i, u_input.a))) ^ ~firstLeadingBit(~vec2<i32>(u_input.a, 25403i)));
    let var_1 = Struct_1(vec4<u32>(global0.x, 285u, ~(31346u | func_3(Struct_1(vec4<u32>(4501u, 127605u, global0.x, global0.x))).x), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, 14795u)), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, global0.x), vec2<u32>(1u, global0.x))), _wgslsmith_div_vec2_u32(vec2<u32>(5010u, 1u), vec2<u32>(79384u, 4294967295u)) | vec2<u32>(global0.x, 1u))));
    let var_2 = func_2();
    global0 = ~(~(~var_2.a.xx));
    global0 = abs(var_2.a.yx);
    var var_3 = countOneBits((_wgslsmith_mult_u32(global0.x, global0.x) & var_1.a.x) ^ (17131u << (func_2().a.x % 32u))) << (~countOneBits(50865u) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(-1125f, ~var_1.a.x, -23672i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1460f, -488f, 1092f) * vec3<f32>(694f, -1807f, -1725f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-147f, -915f, 333f)))));
}

