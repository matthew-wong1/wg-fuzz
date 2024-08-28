struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5> = array<bool, 5>(false, false, false, false, false);

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(-930i, 12065i));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: f32) -> vec4<i32> {
    var var_0 = arg_0;
    var var_1 = arg_3;
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_3, -407f), vec2<f32>(-1131f, arg_3))))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, 463f))))))));
    var var_3 = ~_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(~30857u, ~4294967295u, ~1u), vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, 1u, 1u), countOneBits(vec3<u32>(_wgslsmith_clamp_u32(6587u, 26387u, 4294967295u), min(0u, 0u), max(1u, 4294967295u))));
    var var_4 = arg_1.x;
    return _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-arg_2.b, ~(-42976i)), 2147483647i, arg_1.x, min(_wgslsmith_mult_i32(1i, arg_2.b), arg_1.x)) << (firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, var_3.x, var_3.x) ^ vec4<u32>(var_3.x, 27289u, 21814u, 1u), vec4<u32>(var_3.x, 4294967295u, var_3.x, var_3.x) ^ vec4<u32>(20645u, 1u, var_3.x, 1u))) % vec4<u32>(32u)), (-reverseBits(vec4<i32>(-95456i, arg_2.b, arg_1.x, -1i)) ^ vec4<i32>(_wgslsmith_add_i32(arg_2.a, u_input.a.x), u_input.a.x, -26361i, arg_1.x)) << (abs(vec4<u32>(_wgslsmith_mod_u32(var_3.x, 0u), 3069u, var_3.x << (0u % 32u), ~var_3.x)) % vec4<u32>(32u)), abs(-(~(~u_input.b))));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = Struct_1(-1i, 2147483647i);
    var var_1 = ~_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(30818u, 4294967295u, 26683u, 0u), min(select(vec4<u32>(63069u, 38028u, 1u, 0u), vec4<u32>(7774u, 0u, 36927u, 1u), vec4<bool>(false, arg_0, true, arg_0)), ~vec4<u32>(4294967295u, 1u, 2216u, 13381u)), vec4<u32>(41005u, 1u, 19068u, 121314u) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), min(_wgslsmith_mod_vec4_u32(select(vec4<u32>(4294967295u, 43380u, 1u, 11510u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 58017u), vec4<bool>(false, true, false, true)), ~vec4<u32>(0u, 41633u, 6668u, 4294967295u)), firstTrailingBit(vec4<u32>(9989u, 0u, 57738u, 4294967295u))), vec4<u32>(15589u | select(1u, 5693u, false), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), select(vec2<u32>(40781u, 32070u), vec2<u32>(4294967295u, 9267u), vec2<bool>(global0[_wgslsmith_index_u32(1u, 5u)], true))), abs(~11815u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(37772u, 2355u, 0u, 1u), vec4<u32>(0u, 0u, 52199u, 9778u))));
    global0 = array<bool, 5>();
    let var_2 = _wgslsmith_f_op_f32(1416f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2569f - -1442f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1180f)))));
    global0 = array<bool, 5>();
    return var_1.x;
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_mult_u32(17983u, ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 18234u, 4294967295u), vec4<u32>(83873u, 0u, 15492u, 0u)), 28007u)) << (_wgslsmith_clamp_u32(4294967295u, 1u, func_3(!global0[_wgslsmith_index_u32(40251u, 5u)] | (u_input.a.x != u_input.a.x))) % 32u);
    global0 = array<bool, 5>();
    let var_1 = global1[_wgslsmith_index_u32(var_0, 1u)];
    var var_2 = Struct_1(2147483647i, ~(-50384i));
    var var_3 = global1[_wgslsmith_index_u32(var_0, 1u)];
    return Struct_1(-16951i, ~select(-2147483647i, 0i, true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 5>();
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-791f * 683f) + _wgslsmith_f_op_f32(f32(-1f) * -1158f)), 1f)) - -1278f)));
    global0 = array<bool, 5>();
    let var_1 = 1f;
    var_0 = _wgslsmith_f_op_f32(var_1 * 811f);
    let var_2 = func_2(-_wgslsmith_sub_vec4_i32(u_input.b, func_1(vec4<bool>(global0[_wgslsmith_index_u32(32909u, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(0u, 5u)], true), abs(vec2<i32>(u_input.a.x, -2147483647i)), Struct_1(u_input.b.x, u_input.b.x), -1027f)));
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(~firstLeadingBit(1u)), 755f, reverseBits(_wgslsmith_mod_vec3_i32((vec3<i32>(2147483647i, 20379i, u_input.a.x) >> (vec3<u32>(0u, 71664u, 1u) % vec3<u32>(32u))) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), vec3<i32>(2147483647i, u_input.a.x, abs(u_input.a.x)))), _wgslsmith_f_op_f32(step(-2527f, _wgslsmith_f_op_f32(-2049f - var_1))));
}

