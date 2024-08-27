struct Struct_1 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(13368u, 32826u);

var<private> global1: array<bool, 24>;

var<private> global2: u32;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec3<f32>) -> vec4<f32> {
    var var_0 = arg_1;
    global1 = array<bool, 24>();
    global1 = array<bool, 24>();
    global0 = ~vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global0.x, var_0.b), vec2<u32>(arg_1.b, 4294967295u)) << (~vec2<u32>(arg_1.b, global0.x) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(~vec2<u32>(global0.x, arg_1.b), max(vec2<u32>(40294u, 32323u), vec2<u32>(4294967295u, 53282u)))), 1u);
    var var_1 = Struct_1(true, ~(~4294967295u));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-1000f, -1145f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(658f + arg_3.x), _wgslsmith_f_op_f32(floor(arg_3.x)))), arg_3.x, -444f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.x, 844f, arg_3.x, arg_3.x), vec4<f32>(-408f, arg_3.x, -780f, arg_3.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_3.x, arg_3.x, arg_3.x, 1814f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(212f, arg_3.x, -822f, arg_3.x) - vec4<f32>(337f, -420f, arg_3.x, arg_3.x))))));
}

fn func_2(arg_0: i32) -> vec4<f32> {
    var var_0 = global1[_wgslsmith_index_u32(countOneBits(~13883u), 24u)];
    global2 = max(max(0u, global0.x ^ 47023u), global0.x);
    global2 = 1u;
    global2 = _wgslsmith_mod_u32(~_wgslsmith_add_u32(0u, 1u), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, _wgslsmith_add_u32(global0.x, global0.x), global0.x, abs(global0.x)), ~vec4<u32>(~19917u, global0.x, max(global0.x, global0.x), _wgslsmith_add_u32(global0.x, global0.x))));
    global2 = global0.x;
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_3(~arg_0, Struct_1(true, global0.x), u_input.a.xxz, _wgslsmith_div_vec3_f32(vec3<f32>(-1284f, -1236f, 463f), vec3<f32>(-551f, 235f, -1629f))))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(497f * 490f) - _wgslsmith_f_op_f32(trunc(-1037f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1338f)), _wgslsmith_f_op_f32(f32(-1f) * -1117f)))), -178f, -598f, 113f));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<f32>) -> bool {
    let var_0 = firstTrailingBit(reverseBits(u_input.a & min(u_input.a, vec4<i32>(32489i, 9069i, u_input.a.x, u_input.a.x))));
    global1 = array<bool, 24>();
    var var_1 = Struct_1(all(!(!select(vec2<bool>(global1[_wgslsmith_index_u32(arg_0.x, 24u)], false), vec2<bool>(true, false), vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 24u)])))), global0.x);
    let var_2 = Struct_1(!var_1.a, countOneBits(35235u & ~var_1.b));
    let var_3 = var_2;
    return global1[_wgslsmith_index_u32(var_2.b, 24u)];
}

fn func_1() -> bool {
    return !(func_4(vec2<u32>(4294967295u, global0.x) >> (vec2<u32>(global0.x, global0.x) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(u_input.a.x)) - vec4<f32>(-2408f, 364f, 1106f, -186f))) & global1[_wgslsmith_index_u32(abs(reverseBits(global0.x)), 24u)]);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> vec3<u32> {
    let var_0 = -u_input.a.x;
    var var_1 = Struct_1(!(!all(!vec3<bool>(arg_1.a, false, true))), ~arg_0.b);
    let var_2 = vec2<i32>(u_input.a.x, ~(~var_0));
    let var_3 = arg_1;
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.zwz) + arg_2.zxz);
    return ~_wgslsmith_div_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(14568u, 6866u, 33242u) >> (vec3<u32>(var_3.b, 1u, 21170u) % vec3<u32>(32u)), vec3<u32>(3346u, var_1.b, arg_0.b)), ~vec3<u32>(global0.x, ~var_1.b, ~global0.x));
}

fn func_6(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32) -> Struct_1 {
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 24>();
    var var_0 = _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, -firstTrailingBit(~u_input.a.x)) << (_wgslsmith_mod_u32(global0.x, 47745u << (~global0.x % 32u)) % 32u);
    let var_1 = func_6(Struct_1(false, 4294967295u), func_5(Struct_1(func_1(), firstTrailingBit(_wgslsmith_mod_u32(0u, global0.x))), Struct_1(true, ~abs(global0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(u_input.a.x)) * vec4<f32>(_wgslsmith_f_op_f32(-237f - -1000f), _wgslsmith_f_op_f32(max(-208f, 1000f)), -322f, -630f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f))));
    let var_2 = vec3<bool>(true, select(true && !global1[_wgslsmith_index_u32(4269u, 24u)], true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1312f)) < _wgslsmith_f_op_f32(round(-374f))), false);
    let var_3 = ~((countOneBits(vec2<u32>(63891u, global0.x)) ^ select(_wgslsmith_sub_vec2_u32(vec2<u32>(global0.x, 0u), vec2<u32>(global0.x, var_1.b)), countOneBits(vec2<u32>(var_1.b, 57419u)), var_1.a | var_2.x)) >> (max(vec2<u32>(firstLeadingBit(396u), var_1.b), ~(vec2<u32>(global0.x, global0.x) << (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u)))) % vec2<u32>(32u)));
    var var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(612f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -151f)))));
    var_4 = _wgslsmith_f_op_vec4_f32(func_2(~abs(_wgslsmith_add_i32(-u_input.a.x, u_input.a.x)))).x;
    let var_5 = Struct_1(true, abs(var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_div_vec4_i32(vec4<i32>(-16009i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-2147483647i, -27772i, u_input.a.x, u_input.a.x)) ^ (~u_input.a ^ vec4<i32>(u_input.a.x, 44067i, 0i, u_input.a.x)), u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1169f, 174f)))))), var_5.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, 511f, -486f, 1363f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1642f, 508f, 367f, 1262f)))))));
}

