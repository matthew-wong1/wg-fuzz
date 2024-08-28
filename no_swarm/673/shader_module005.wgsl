struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24> = array<u32, 24>(0u, 6509u, 1u, 16676u, 8275u, 61111u, 4294967295u, 38292u, 4294967295u, 4294967295u, 36736u, 1u, 4294967295u, 16438u, 6670u, 83859u, 30164u, 14076u, 1u, 65952u, 54950u, 4294967295u, 19490u, 52131u);

var<private> global1: bool = true;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(sign(arg_0.b.x));
    global0 = array<u32, 24>();
    let var_1 = true;
    let var_2 = ~(-max(-2147483647i, arg_0.c));
    global0 = array<u32, 24>();
    return Struct_1(arg_0.a, arg_0.b, 1i);
}

fn func_3() -> vec3<u32> {
    var var_0 = func_1(func_1(Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1248f, 1077f, 1000f, -225f) + vec4<f32>(822f, 1546f, 2394f, 907f))), firstTrailingBit(reverseBits(4040i)))));
    global1 = var_0.c < firstTrailingBit(~_wgslsmith_clamp_i32(var_0.c, _wgslsmith_sub_i32(var_0.c, 0i), -14217i));
    global0 = array<u32, 24>();
    let var_1 = vec2<i32>(max(0i | (_wgslsmith_clamp_i32(1i, var_0.c, var_0.c) << (global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(24038u, 24u)]), 24u)] % 32u)), ~var_0.c), firstLeadingBit(countOneBits(~(~var_0.c))));
    var_0 = Struct_1(var_0.a, var_0.b, var_0.c);
    return ~(~_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(31239u, 24u)], u_input.a.x) ^ vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2800u, 24u)], 24u)], 24u)], 24u)], global0[_wgslsmith_index_u32(u_input.b, 24u)]), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(72127u, 24u)], 24u)], global0[_wgslsmith_index_u32(43435u, 24u)], 37713u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8988u, 24u)], 24u)]), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], u_input.a.x, 88719u, global0[_wgslsmith_index_u32(51883u, 24u)])), firstTrailingBit(u_input.a.x), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)])));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, ~(~4294967295u ^ _wgslsmith_mult_u32(firstTrailingBit(global0[_wgslsmith_index_u32(0u, 24u)]), _wgslsmith_mult_u32(29500u, 10283u)))), 24u)], 24u)];
    global1 = ~_wgslsmith_mult_u32(u_input.b, (4294967295u >> (u_input.b % 32u)) ^ (u_input.a.x & u_input.a.x)) > ~global0[_wgslsmith_index_u32(50049u, 24u)];
    var var_1 = ~(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a.x, 0u, global0[_wgslsmith_index_u32(u_input.b, 24u)]), _wgslsmith_mult_vec3_u32(~vec3<u32>(69702u, 0u, 82272u), func_3()), max(~vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(2897u, 24u)], 4294967295u), ~vec3<u32>(4294967295u, u_input.a.x, 16382u))));
    var var_2 = ~_wgslsmith_add_vec4_u32(vec4<u32>(~1u & u_input.a.x, _wgslsmith_mult_u32(~1u, firstTrailingBit(1u)), 12920u, _wgslsmith_mod_u32(u_input.b, 1u)), ~vec4<u32>(var_1.x, _wgslsmith_sub_u32(19370u, u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 50093u), vec2<u32>(u_input.a.x, var_1.x)), 17268u));
    global1 = arg_2.a.x;
    return _wgslsmith_f_op_f32(383f - _wgslsmith_f_op_f32(trunc(711f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(vec2<bool>(true, select(true, true, true)), vec4<f32>(-1480f, -751f, _wgslsmith_f_op_f32(select(-788f, _wgslsmith_f_op_f32(-127f + 816f), true)), -490f), -29415i));
    global0 = array<u32, 24>();
    var var_1 = var_0;
    let var_2 = min(~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(min(4294967295u, 1u), 24u)], 24u)], global0[_wgslsmith_index_u32(u_input.b, 24u)]), 24u)], u_input.a.x);
    global1 = true;
    global0 = array<u32, 24>();
    var var_3 = _wgslsmith_add_i32(select(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.c, 0i, var_1.c, 12372i), vec4<i32>(-1i, 1i, var_1.c, var_0.c), vec4<i32>(1i, var_1.c, var_1.c, -1i)), ~vec4<i32>(var_1.c, 0i, var_1.c, var_1.c)) & _wgslsmith_mult_i32(reverseBits(var_0.c), var_1.c), ~(min(var_1.c, var_1.c) | ~var_0.c), any(!var_0.a)), ~1i);
    let x = u_input.a;
    s_output = StorageBuffer(max(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.a.x, 4294967295u), vec3<u32>(global0[_wgslsmith_index_u32(var_2, 24u)], global0[_wgslsmith_index_u32(u_input.b, 24u)], u_input.b)), 1u), 0u), _wgslsmith_mod_vec2_u32(~u_input.a, u_input.a)), _wgslsmith_f_op_vec2_f32(var_0.b.zz * vec2<f32>(_wgslsmith_f_op_f32(func_2(var_0, var_0.b, func_1(Struct_1(vec2<bool>(false, var_1.a.x), var_1.b, var_0.c)))), -824f)), var_1.b, _wgslsmith_clamp_vec3_u32(min(~vec3<u32>(var_2, var_2, 1u), _wgslsmith_sub_vec3_u32(vec3<u32>(var_2, 4294967295u, 29819u), vec3<u32>(var_2, global0[_wgslsmith_index_u32(52604u, 24u)], var_2))), ~abs(vec3<u32>(53717u, 0u, var_2)), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.b, var_2, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 24u)], 24u)], 24u)]), ~vec3<u32>(global0[_wgslsmith_index_u32(35102u, 24u)], 4294967295u, global0[_wgslsmith_index_u32(1u, 24u)]))) | firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 0u, u_input.a.x), _wgslsmith_add_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(46370u, 24u)], 4294967295u, var_2), vec3<u32>(var_2, 0u, 30981u)))));
}

