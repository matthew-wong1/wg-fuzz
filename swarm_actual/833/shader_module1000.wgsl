struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 31>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = firstTrailingBit(~0i);
    let var_1 = arg_0;
    var var_2 = ~(~vec3<u32>(~932u, _wgslsmith_add_u32(arg_0.b, arg_0.b), abs(24251u)) << ((~select(vec3<u32>(arg_0.b, arg_0.b, 50396u), vec3<u32>(145579u, arg_0.b, var_1.b), true) << ((~vec3<u32>(arg_0.b, var_1.b, 22687u) & reverseBits(vec3<u32>(16086u, 76237u, arg_0.b))) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_3 = vec3<u32>(42884u, ~(_wgslsmith_add_u32(4294967295u, 0u) | _wgslsmith_mult_u32(~68565u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 47885u, var_1.b, 515u), vec4<u32>(arg_0.b, var_2.x, 44168u, 12919u)))), abs(var_1.b));
    var var_4 = var_1;
    return ~u_input.a;
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = select(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), select(!global0[_wgslsmith_index_u32(1u, 31u)], vec4<bool>(false, true, true, true), !global0[_wgslsmith_index_u32(7108u, 31u)])), !(!vec4<bool>(all(vec3<bool>(false, false, true)), true, true, true)), !(!all(vec2<bool>(false, true))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -928f))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(~0u, 1u, ~1u, ~1u), select(vec4<u32>(1u, 1u, 1u, 1u), max(vec4<u32>(1u, 97542u, 1u, 0u), vec4<u32>(11682u, 1u, 1u, 1u)), !global0[_wgslsmith_index_u32(40467u, 31u)])));
    return firstTrailingBit(_wgslsmith_sub_u32(var_1.b, abs(1u))) | min(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, var_1.b, var_1.b, var_1.b)) << (firstLeadingBit(vec4<u32>(18303u, 11867u, 35476u, 9562u)) % vec4<u32>(32u)), ~vec4<u32>(1u, var_1.b, var_1.b, var_1.b)), var_1.b);
}

fn func_1() -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1543f), -415f, all(global0[_wgslsmith_index_u32(1u, 31u)])))), 8639u);
    var_0 = Struct_1(var_0.a, _wgslsmith_sub_u32(firstLeadingBit(func_3(func_2(Struct_1(-1592f, 49768u)))), _wgslsmith_div_u32(~firstTrailingBit(1u), var_0.b)));
    global0 = array<vec4<bool>, 31>();
    let var_1 = !all(!vec3<bool>(all(global0[_wgslsmith_index_u32(var_0.b, 31u)]), true, true));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-220f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + var_0.a)), _wgslsmith_f_op_f32(332f * _wgslsmith_div_f32(-810f, var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - 359f) * _wgslsmith_div_f32(var_0.a, var_0.a)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a, var_0.a, -970f, var_0.a), vec4<f32>(319f, var_0.a, -227f, var_0.a), global0[_wgslsmith_index_u32(var_0.b, 31u)])))))));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(_wgslsmith_div_u32(~16482u, ~0u), 1u, ~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(8188u, 28239u, 63352u), vec3<u32>(74149u, 2409u, 1u)), firstLeadingBit(35422u)), ~_wgslsmith_div_u32(func_1(), ~17533u)) ^ vec4<u32>(~_wgslsmith_mod_u32(firstLeadingBit(39364u), ~91105u), func_1(), _wgslsmith_clamp_u32(56594u, 4294967295u, 1u), _wgslsmith_add_u32(func_1(), select(~1u, ~16995u, false)));
    var var_1 = ~(_wgslsmith_div_u32(4294967295u, 55732u) >> ((~(~1u) | firstTrailingBit(var_0.x)) % 32u));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(1f)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + 1000f), _wgslsmith_f_op_f32(select(-1524f, -955f, false))), _wgslsmith_f_op_f32(select(-1370f, 1000f, any(vec3<bool>(true, false, false))))))), 1u | ~select(var_0.x, 52570u, true));
    let var_3 = 28883i;
    let var_4 = ~_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 0i, -(i32(-1i) * -36113i), 1i), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(u_input.a, var_3, u_input.a, 0i)), select(vec4<i32>(18969i, 0i, 0i, -1i), vec4<i32>(var_3, u_input.a, 9958i, u_input.a), false)));
    let var_5 = _wgslsmith_div_vec2_u32(select(_wgslsmith_mod_vec2_u32(~(vec2<u32>(39136u, 0u) & var_0.zw), min(vec2<u32>(1u, 30353u), var_0.wz) << (~var_0.wy % vec2<u32>(32u))), min(~var_0.xz, ~var_0.ww), vec2<bool>(!select(false, false, true), true)), ~(~(~vec2<u32>(var_0.x, 1u))));
    global0 = array<vec4<bool>, 31>();
    let var_6 = global0[_wgslsmith_index_u32(4294967295u, 31u)];
    var_1 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, 23991i, func_2(var_2));
}

