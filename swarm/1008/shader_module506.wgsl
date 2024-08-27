struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2> = array<u32, 2>(8832u, 1u);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    global0 = array<u32, 2>();
    let var_0 = _wgslsmith_clamp_vec3_u32(abs((abs(vec3<u32>(72183u, arg_0.d, 4294967295u)) | _wgslsmith_mod_vec3_u32(vec3<u32>(26603u, 47174u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 2u)]), vec3<u32>(global0[_wgslsmith_index_u32(3197u, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)], arg_0.d))) | vec3<u32>(arg_0.d, firstLeadingBit(4294967295u), arg_0.d ^ global0[_wgslsmith_index_u32(4294967295u, 2u)])), ~(_wgslsmith_div_vec3_u32(~vec3<u32>(1u, arg_0.d, arg_0.d), ~vec3<u32>(74084u, 20177u, arg_0.d)) << (vec3<u32>(arg_0.d, ~global0[_wgslsmith_index_u32(arg_0.d, 2u)], global0[_wgslsmith_index_u32(firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 2u)], 2u)]), 2u)]) % vec3<u32>(32u))), max(vec3<u32>(arg_0.d, 79017u, arg_0.d), countOneBits(countOneBits(vec3<u32>(4294967295u, 57618u, global0[_wgslsmith_index_u32(0u, 2u)])) << (_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, global0[_wgslsmith_index_u32(61885u, 2u)]), vec3<u32>(arg_0.d, global0[_wgslsmith_index_u32(97614u, 2u)], global0[_wgslsmith_index_u32(1u, 2u)])) % vec3<u32>(32u)))));
    var var_1 = Struct_1((i32(-1i) * -1i) & _wgslsmith_add_i32(arg_0.c, 2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(156f, arg_0.b.x, arg_0.b.x, -3000f) * arg_0.b) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-559f, -1763f, arg_0.b.x, -2321f))))), arg_0.a, arg_0.d);
    let var_2 = vec4<f32>(2520f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-arg_0.b.x)))), _wgslsmith_f_op_f32(trunc(arg_0.b.x)), _wgslsmith_f_op_f32(-var_1.b.x));
    var var_3 = Struct_2(Struct_1(-1i, arg_0.b, min(1i, 1i) << ((~28315u >> (var_1.d % 32u)) % 32u), max(_wgslsmith_sub_u32(countOneBits(arg_0.d), 4294967295u), abs(~var_0.x))), true);
    return vec2<f32>(-994f, -1000f);
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = ~(u_input.a | u_input.a);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(-4848i, vec4<f32>(592f, 609f, 1267f, -486f), arg_0, 9328u))))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1011f, -831f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2155f, -1018f))), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(u_input.a.x, vec4<f32>(-190f, 2348f, 909f, -550f), u_input.a.x, 1u)))))));
    var var_2 = vec2<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(~0u), 2u)], 2u)] | 1u, 2u)], global0[_wgslsmith_index_u32(1u, 2u)]);
    var var_3 = Struct_1(arg_0, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-726f, var_1.x)))), var_1.x, var_1.x, 364f), var_0.x, ~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, _wgslsmith_div_u32(18694u, ~1760u)), 2u)]);
    global0 = array<u32, 2>();
    return ~global0[_wgslsmith_index_u32(var_3.d, 2u)];
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_div_i32(-7601i, ~_wgslsmith_dot_vec2_i32(u_input.a, u_input.a)), arg_3.b, ~_wgslsmith_mult_i32(u_input.a.x, arg_3.a) ^ _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(31444i, 28107i), u_input.a), -44603i), func_2(-select(30435i, 28431i, arg_1))), true || (true && (arg_3.c >= 1i)));
    let var_1 = Struct_2(var_0.a, var_0.b);
    let var_2 = Struct_2(Struct_1(-u_input.a.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, _wgslsmith_div_f32(arg_3.b.x, var_0.a.b.x), arg_3.b.x, -763f) - arg_3.b), countOneBits((i32(-1i) * -2147483647i) | var_1.a.c), 18613u), !(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(arg_2, -601f)))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -562f))));
    let var_3 = var_1.a.b.xzy;
    var var_4 = var_0;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_4.a.b.x)) + var_3.x)));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: vec2<f32>, arg_3: bool) -> Struct_2 {
    global0 = array<u32, 2>();
    global0 = array<u32, 2>();
    let var_0 = u_input.a;
    let var_1 = 4373u;
    var var_2 = Struct_1(1i, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2236f + -602f)), 1874f, _wgslsmith_f_op_f32(select(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x), arg_3)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_1, arg_2.x, true)), 1127f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, -2867f, arg_1) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-2084f, arg_1, arg_2.x, -396f) - vec4<f32>(arg_2.x, -871f, arg_1, 1000f))), vec4<f32>(_wgslsmith_f_op_f32(abs(328f)), 1f, -1009f, _wgslsmith_f_op_f32(139f - -2337f)))), 8732i, func_2(_wgslsmith_mult_i32(var_0.x, u_input.a.x)));
    return Struct_2(Struct_1(var_0.x << (40069u % 32u), var_2.b, abs(select(-1i, -14476i, false)), ~(~4294967295u)), (-(~var_2.c) >> (~(var_2.d << (global0[_wgslsmith_index_u32(1u, 2u)] % 32u)) % 32u)) > ~(~var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(vec4<i32>(-1i) * -vec4<i32>(-u_input.a.x, u_input.a.x, ~19960i, 69036i));
    global0 = array<u32, 2>();
    let var_1 = _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-499f + -288f) - -1719f) + _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(1000f + 367f)))) + -508f)));
    var var_2 = _wgslsmith_f_op_f32(round(var_1)) >= _wgslsmith_f_op_f32(-527f - -480f);
    let var_3 = func_4(false, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(select(-274f, var_1, true)))), _wgslsmith_div_vec2_f32(vec2<f32>(var_1, _wgslsmith_f_op_f32(1111f - _wgslsmith_f_op_f32(trunc(697f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(7251u, 2u)], false, 705f, Struct_1(10832i, vec4<f32>(502f, -331f, 584f, -1108f), var_0.x, global0[_wgslsmith_index_u32(0u, 2u)]))), _wgslsmith_f_op_f32(max(var_1, var_1))))), var_1 <= _wgslsmith_f_op_f32(312f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(909f)))));
    let var_4 = all(vec2<bool>(false, true));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

