struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 7>;

var<private> global1: vec2<u32> = vec2<u32>(46457u, 26157u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(251f, 1476f, 1000f), _wgslsmith_div_vec3_f32(vec3<f32>(-355f, -534f, -1415f), vec3<f32>(1293f, -321f, -449f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-240f, 1552f)) * _wgslsmith_f_op_f32(-1035f + 666f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1183f) * 3418f), 475f))), global1.x, u_input.b.yw);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(var_0.a)), ~var_0.b, var_0.c);
    let var_2 = vec3<bool>(true, true, all(vec3<bool>(true, true, true)) && any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), var_1.a.x >= var_0.a.x)));
    var var_3 = vec2<bool>(any(vec2<bool>(var_2.x, all(!vec3<bool>(var_2.x, false, var_2.x)))), true);
    var var_4 = var_0;
    return var_1.a;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-337f, 849f, 1542f))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(988f, -1887f, 136f)) - vec3<f32>(-366f, arg_0.a.x, arg_0.a.x)))) * arg_0.a);
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.x, arg_0.a.x, _wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(194f + _wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(step(arg_0.a.x, 374f)), _wgslsmith_f_op_f32(select(arg_0.a.x, -1000f, false)))))));
    var var_2 = _wgslsmith_f_op_f32(max(-300f, _wgslsmith_f_op_f32(var_1.x + var_1.x)));
    var var_3 = ~(~arg_1.x);
    global1 = min(~global0[_wgslsmith_index_u32(countOneBits(25058u), 7u)] | firstTrailingBit(vec2<u32>(71018u, abs(arg_1.x))), _wgslsmith_mod_vec2_u32(firstLeadingBit(reverseBits(global0[_wgslsmith_index_u32(23333u, 7u)])), _wgslsmith_sub_vec2_u32(arg_1.xz & arg_1.xy, firstTrailingBit(vec2<u32>(0u, 0u)))) ^ select(vec2<u32>(arg_0.b, ~0u), arg_1.zz, vec2<bool>(true, global1.x > 9881u)));
    return 1u;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> vec2<i32> {
    global1 = vec2<u32>(_wgslsmith_sub_u32(func_2(Struct_1(vec3<f32>(1170f, 1079f, arg_2), 39904u, arg_0.c), vec3<u32>(4899u, global1.x, arg_0.b)), 0u), global1.x | _wgslsmith_add_u32(4294967295u ^ global1.x, ~1u)) | _wgslsmith_mult_vec2_u32(~global0[_wgslsmith_index_u32(~arg_0.b, 7u)], vec2<u32>(~arg_0.b, ~0u) << (global0[_wgslsmith_index_u32(24888u, 7u)] % vec2<u32>(32u)));
    let var_0 = !vec4<bool>(!all(select(vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(arg_1, true, arg_1, arg_1), vec4<bool>(true, false, true, arg_1))), arg_1, !any(!vec3<bool>(true, false, arg_1)), -1000f >= _wgslsmith_f_op_f32(abs(arg_0.a.x)));
    global0 = array<vec2<u32>, 7>();
    var var_1 = Struct_1(arg_0.a, 4294967295u, vec2<i32>(_wgslsmith_add_i32(~(~(-53404i)), -6761i), -2147483647i));
    var_1 = arg_0;
    return vec2<i32>(~_wgslsmith_add_i32(var_1.c.x & (var_1.c.x | arg_0.c.x), arg_0.c.x >> (countOneBits(u_input.a) % 32u)), _wgslsmith_add_i32(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), max(vec2<i32>(-14646i, -25477i), arg_0.c))), -1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec3_u32(abs(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.x, 0u, global1.x), vec3<u32>(56433u, u_input.a, global1.x), vec3<u32>(49483u, global1.x, u_input.a)) & ~vec3<u32>(u_input.a, 4294967295u, 4294967295u), _wgslsmith_mod_vec3_u32(~vec3<u32>(0u, global1.x, global1.x), vec3<u32>(1u, 1u, 1u) & vec3<u32>(38795u, 46989u, u_input.a)))), vec3<u32>(0u, _wgslsmith_sub_u32(global1.x >> (38295u % 32u), 1u), max(max(u_input.a | 4294967295u, global1.x), ~global1.x | u_input.a)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(415f, -771f, 1256f)))), vec3<f32>(_wgslsmith_f_op_f32(select(259f, -1401f, true)), _wgslsmith_f_op_f32(sign(-1563f)), -2139f)))), 22143u ^ _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(var_0.xx, vec2<u32>(16164u, 6433u)), _wgslsmith_clamp_u32(min(13979u, 63926u), _wgslsmith_mod_u32(4294967295u, global1.x), ~28652u)), func_1(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-190f, 341f, -2514f)))), min(var_0.x, _wgslsmith_div_u32(global1.x, 4294967295u)), vec2<i32>(~u_input.b.x, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x))), true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-432f, -169f)), -1000f)));
    global0 = array<vec2<u32>, 7>();
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.x - -272f), var_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(211f + -1381f) - _wgslsmith_f_op_f32(-var_1.a.x))));
    var var_3 = _wgslsmith_f_op_f32(-var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(2701f, var_1.a.x, 977f, var_1.a.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-726f, var_1.a.x, var_1.a.x, var_1.a.x))))));
}

