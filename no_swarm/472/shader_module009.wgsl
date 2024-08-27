struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2> = array<u32, 2>(30677u, 4294967295u);

var<private> global1: array<Struct_1, 29>;

var<private> global2: array<i32, 2> = array<i32, 2>(1i, i32(-2147483648));

var<private> global3: array<vec3<u32>, 32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec3<u32>) -> Struct_1 {
    global3 = array<vec3<u32>, 32>();
    return arg_1;
}

fn func_3() -> u32 {
    global0 = array<u32, 2>();
    global1 = array<Struct_1, 29>();
    let var_0 = func_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(240f, -386f) + 394f), _wgslsmith_f_op_f32(f32(-1f) * -542f))))), Struct_1(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(51214u, 2u)], ~1u, ~(~48499u)), global2[_wgslsmith_index_u32(u_input.a, 2u)]), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1000f, -1689f), _wgslsmith_f_op_f32(1238f + 787f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-368f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(218f, -458f), _wgslsmith_f_op_f32(sign(136f)), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1679f), -1027f)))), vec3<u32>(u_input.a, max(_wgslsmith_dot_vec2_u32(vec2<u32>(25149u, u_input.a), firstLeadingBit(vec2<u32>(4294967295u, u_input.a))), firstTrailingBit(4294967295u)), ~countOneBits(4294967295u)));
    let var_1 = Struct_1(countOneBits(var_0.a), abs(0i));
    global1 = array<Struct_1, 29>();
    return 19347u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = 0i;
    global2 = array<i32, 2>();
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(793f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-383f + 1000f))))))));
    var var_2 = Struct_1(vec4<u32>(~(~4294967295u) ^ func_3(), ~abs(4294967295u), ~(~_wgslsmith_add_u32(arg_0.a.x, 31765u)), _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(6526u, global0[_wgslsmith_index_u32(0u, 2u)]), 92013u), ~firstLeadingBit(arg_1.a.x))), -41740i);
    var var_3 = _wgslsmith_add_i32(-_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_2.b, var_0), vec2<i32>(var_0, 0i), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(17987i, var_2.b))), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.b, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.a.x, 2u)], 2u)]), vec2<i32>(global2[_wgslsmith_index_u32(15466u, 2u)], var_2.b)), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(arg_0.b, arg_0.b)), -vec2<i32>(arg_0.b, 43438i))), _wgslsmith_div_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b, -28176i, -2147483647i), vec3<i32>(arg_0.b, global2[_wgslsmith_index_u32(1u, 2u)], arg_0.b)) >> (~reverseBits(1754u) % 32u), 28401i >> (func_1(212f, arg_0, vec4<f32>(var_1, var_1, 717f, 1788f), _wgslsmith_div_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(arg_1.a.x, 2u)], 4294967295u, var_2.a.x), global3[_wgslsmith_index_u32(51952u, 32u)])).a.x % 32u)));
    return 33694i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(~_wgslsmith_mod_i32(_wgslsmith_clamp_i32(0i, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(57017u, 2u)], 2u)], 2u)], -30712i) & _wgslsmith_dot_vec2_i32(vec2<i32>(0i, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7497u, 2u)], 2u)]), vec2<i32>(-2147483647i, global2[_wgslsmith_index_u32(u_input.a, 2u)])), ~51628i), firstLeadingBit(0i));
    let var_1 = func_1(_wgslsmith_f_op_f32(f32(-1f) * -1068f), global1[_wgslsmith_index_u32(29621u, 29u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-186f)), -1176f, 1983f, _wgslsmith_f_op_f32(f32(-1f) * -662f)) - vec4<f32>(1f, 1f, 1f, 1f)), vec3<u32>(u_input.a, 19339u, u_input.a));
    global3 = array<vec3<u32>, 32>();
    let var_2 = countOneBits(~19588i);
    var var_3 = _wgslsmith_div_vec4_i32(vec4<i32>(-var_0.x & _wgslsmith_add_i32(countOneBits(var_2), var_2), 2147483647i, i32(-1i) * -func_2(var_1, var_1), var_1.b), min(_wgslsmith_div_vec4_i32(vec4<i32>(var_2, 62663i, global2[_wgslsmith_index_u32(12896u, 2u)], var_1.b) >> (vec4<u32>(var_1.a.x, 39767u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.a.x, 2u)], 2u)]) % vec4<u32>(32u)), -vec4<i32>(-23193i, global2[_wgslsmith_index_u32(66373u, 2u)], 1i, var_1.b)), _wgslsmith_add_vec4_i32(max(select(vec4<i32>(var_1.b, var_0.x, global2[_wgslsmith_index_u32(u_input.a, 2u)], var_0.x), vec4<i32>(-23805i, -36799i, 61785i, var_1.b), false), -vec4<i32>(-21451i, var_0.x, var_2, -2147483647i)), _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(var_1.b, var_0.x, -1i, var_1.b)), vec4<i32>(0i, global2[_wgslsmith_index_u32(u_input.a, 2u)], -1i, 1i)))));
    var var_4 = -681f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(15971u, ~(~_wgslsmith_add_u32(var_1.a.x, 5278u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-400f, -935f, 1000f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 684f, -2059f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-684f, 1000f, 657f))), vec3<bool>(true, true, true)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(533f, 572f)) * -1000f), _wgslsmith_f_op_f32(786f - _wgslsmith_f_op_f32(-630f * 1644f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1939f), _wgslsmith_f_op_f32(select(759f, 157f, false)), any(vec3<bool>(true, true, true)))))));
}

