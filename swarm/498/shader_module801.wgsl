struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = ~vec2<u32>(select(~(~24128u), ~1u, true), 1u);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(830f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(182f)))));
    global0 = Struct_3(global0.a);
    global0 = Struct_3(Struct_2(global0.a.a));
    var var_2 = var_0.x;
    return 8787u;
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = u_input.a;
    let var_1 = Struct_3(Struct_2(vec2<bool>(all(select(vec4<bool>(true, arg_0.a.x, false, arg_0.a.x), vec4<bool>(arg_0.a.x, false, false, arg_0.a.x), global0.a.a.x)), select(u_input.a < u_input.a, 18229i != u_input.a, true))));
    var var_2 = func_3();
    var_2 = max(0u, abs(max(4294967295u, 4294967295u)));
    var var_3 = Struct_1(vec2<i32>(_wgslsmith_sub_i32(~(-u_input.a), u_input.a), _wgslsmith_add_i32(0i, firstTrailingBit(_wgslsmith_div_i32(u_input.a, -2147483647i)))), min(countOneBits(min(vec3<i32>(u_input.a, 1i, 2147483647i), ~vec3<i32>(u_input.a, 43542i, u_input.a))), countOneBits(reverseBits(vec3<i32>(u_input.a, 1i, u_input.a)))), select(!(!vec4<bool>(false, global0.a.a.x, true, var_1.a.a.x)), vec4<bool>(var_1.a.a.x || all(vec4<bool>(arg_0.a.x, false, false, true)), all(vec4<bool>(arg_0.a.x, true, arg_0.a.x, true)), false, any(!vec2<bool>(false, global0.a.a.x))), arg_0.a.x), _wgslsmith_div_i32(min(abs(_wgslsmith_mod_i32(1i, 46650i)), u_input.a), u_input.a));
    return abs(reverseBits(~firstLeadingBit(4294967295u)));
}

fn func_1() -> Struct_3 {
    let var_0 = countOneBits(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, _wgslsmith_sub_u32(4294967295u, 15658u), max(45268u, 5771u), 1u), ~vec4<u32>(1u, 1u, _wgslsmith_mult_u32(0u, 0u), func_2(Struct_2(global0.a.a)))));
    let var_1 = ~(-(firstTrailingBit(vec3<i32>(-8811i, u_input.a, 13672i) >> (var_0.yyx % vec3<u32>(32u))) >> (select(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_0.x, 1u), var_0.wyy), _wgslsmith_sub_vec3_u32(vec3<u32>(43845u, 4294967295u, 1u), vec3<u32>(46441u, 14283u, var_0.x)), vec3<bool>(true, global0.a.a.x, false)) % vec3<u32>(32u))));
    global0 = Struct_3(Struct_2(select(select(global0.a.a, select(vec2<bool>(global0.a.a.x, true), vec2<bool>(false, false), global0.a.a), select(global0.a.a, vec2<bool>(true, global0.a.a.x), global0.a.a)), global0.a.a, u_input.a >= select(-46355i, 0i, true))));
    let var_2 = global0.a;
    global0 = Struct_3(Struct_2(vec2<bool>(false, !any(vec4<bool>(global0.a.a.x, global0.a.a.x, false, false)))));
    return Struct_3(Struct_2(vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(vec3<i32>(~(~firstLeadingBit(u_input.a)), u_input.a, -4763i));
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1398f * -452f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(628f, -1058f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1042f - _wgslsmith_f_op_f32(f32(-1f) * -279f)), _wgslsmith_f_op_f32(trunc(763f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-167f, 107f, -1175f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1000f, 1523f)), !vec3<bool>(global0.a.a.x, false, true))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(981f, -146f, 916f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(900f, -1000f, -1161f))))));
    global0 = Struct_3(Struct_2(vec2<bool>(any(!vec4<bool>(true, true, false, global0.a.a.x)), !(!global0.a.a.x))));
    global0 = func_1();
    global0 = func_1();
    let var_2 = abs(~func_3()) ^ 1u;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(84877u, 0u, var_2) ^ vec3<u32>(38289u, var_2, 76579u), vec3<u32>(47971u, var_2, 20712u) ^ vec3<u32>(var_2, var_2, 47385u), ~vec3<u32>(var_2, 18508u, 28793u)) | select(_wgslsmith_clamp_vec3_u32(vec3<u32>(22800u, var_2, var_2), vec3<u32>(var_2, var_2, var_2), vec3<u32>(0u, 1u, 31886u)), vec3<u32>(0u, 4294967295u, 4294967295u), !global0.a.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1224f, -1102f, 458f)), vec3<f32>(var_1.x, -1392f, var_1.x), !vec3<bool>(global0.a.a.x, true, global0.a.a.x))))), vec4<i32>(2147483647i, -u_input.a << (var_2 % 32u), u_input.a, 1i) | ~max(-vec4<i32>(2147483647i, 19604i, 0i, var_0.x), vec4<i32>(-26224i, u_input.a, var_0.x, -2147483647i) >> (vec4<u32>(var_2, 15851u, var_2, var_2) % vec4<u32>(32u))));
}

