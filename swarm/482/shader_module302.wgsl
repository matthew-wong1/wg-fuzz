struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 20> = array<vec4<u32>, 20>(vec4<u32>(24727u, 56506u, 4294967295u, 38105u), vec4<u32>(64521u, 24997u, 1u, 1u), vec4<u32>(36930u, 89034u, 8147u, 4294967295u), vec4<u32>(1u, 0u, 1u, 77133u), vec4<u32>(104605u, 4294967295u, 42561u, 1u), vec4<u32>(0u, 0u, 11590u, 1u), vec4<u32>(4294967295u, 6583u, 11667u, 4294967295u), vec4<u32>(4294967295u, 0u, 1u, 4294967295u), vec4<u32>(0u, 4294967295u, 13836u, 7482u), vec4<u32>(1u, 0u, 4294967295u, 12638u), vec4<u32>(4294967295u, 5462u, 1u, 1u), vec4<u32>(32887u, 1u, 42192u, 26004u), vec4<u32>(66707u, 37135u, 38413u, 70282u), vec4<u32>(1u, 4294967295u, 1u, 48973u), vec4<u32>(0u, 4294967295u, 51u, 15596u), vec4<u32>(61695u, 1u, 51526u, 20239u), vec4<u32>(15077u, 49887u, 4294967295u, 1u), vec4<u32>(4294967295u, 114286u, 26163u, 0u), vec4<u32>(4294967295u, 1u, 25757u, 0u), vec4<u32>(13110u, 20521u, 4294967295u, 4294967295u));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: bool) -> Struct_1 {
    global0 = array<vec4<u32>, 20>();
    var var_0 = ~vec4<u32>(_wgslsmith_add_u32(u_input.b, ~(~u_input.b)), _wgslsmith_dot_vec4_u32(vec4<u32>(5809u, u_input.b, 1u, u_input.b) & abs(vec4<u32>(0u, 1u, u_input.b, u_input.b)), select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 57634u, 1u, u_input.b), vec4<u32>(1u, 1u, u_input.b, 61591u)), _wgslsmith_div_vec4_u32(vec4<u32>(38725u, 4294967295u, u_input.b, 4294967295u), global0[_wgslsmith_index_u32(u_input.b, 20u)]), all(vec3<bool>(true, arg_0, arg_0)))), ~(~(~u_input.b)), u_input.b);
    var_0 = global0[_wgslsmith_index_u32(1u, 20u)];
    var_0 = reverseBits(global0[_wgslsmith_index_u32(0u, 20u)]);
    global0 = array<vec4<u32>, 20>();
    return Struct_1(-1082f);
}

fn func_3(arg_0: i32) -> vec2<u32> {
    var var_0 = vec4<i32>(_wgslsmith_add_i32(~(~(-2147483647i)), _wgslsmith_add_i32(-29433i ^ u_input.c, _wgslsmith_sub_i32(-1i, arg_0)) << (u_input.b % 32u)), reverseBits(_wgslsmith_mod_i32(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), u_input.a.wyx)), _wgslsmith_mult_i32(57611i, ~u_input.c))), -_wgslsmith_dot_vec2_i32(~u_input.a.wy, _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a.zw, vec2<i32>(arg_0, 2147483647i)), u_input.a.zx)), -11262i);
    let var_1 = select(!vec2<bool>(true, false | (var_0.x <= -6174i)), !(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, true))), select(vec2<bool>(~33356u != u_input.b, true), !vec2<bool>(true, all(vec3<bool>(false, false, true))), all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-2613f, _wgslsmith_f_op_f32(-256f - 455f))), func_2(var_1.x).a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(134f)))))));
    let var_3 = func_2(!(var_1.x & false));
    let var_4 = 51666u == u_input.b;
    return vec2<u32>(_wgslsmith_mod_u32(abs(firstLeadingBit(u_input.b)), 0u), ~1u);
}

fn func_1(arg_0: vec4<f32>) -> vec2<u32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1157f + _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -128f), -295f);
    let var_1 = func_2(false);
    var_0 = arg_0.yzw;
    var var_2 = true;
    var var_3 = 0u << (~u_input.b % 32u);
    return func_3(0i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~u_input.b, reverseBits(u_input.b), u_input.b);
    var_0 = _wgslsmith_div_vec3_u32(min(~vec3<u32>(~26258u, select(1u, 9372u, false), 1u << (u_input.b % 32u)), reverseBits(~(~vec3<u32>(var_0.x, 14692u, var_0.x)))), vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 86337u), vec2<u32>(28793u, u_input.b)), 4294967295u), ~_wgslsmith_div_u32(1u, 59620u), 57878u) & vec3<u32>(~1u, _wgslsmith_div_u32(79229u, ~var_0.x), 4294967295u));
    let var_1 = ~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(56226u, 25294u), select(var_0.yx, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), var_0.zz), vec2<bool>(true, false)), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1229f, -1379f, 1173f, 787f) + vec4<f32>(589f, 1531f, 155f, 1263f)))));
    let var_2 = true;
    global0 = array<vec4<u32>, 20>();
    var_0 = min(vec3<u32>(func_3(~u_input.c).x, var_1.x, _wgslsmith_dot_vec4_u32(firstLeadingBit(global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 20u)]), _wgslsmith_mult_vec4_u32(global0[_wgslsmith_index_u32(var_0.x, 20u)], vec4<u32>(var_0.x, 1u, var_1.x, u_input.b)) ^ (vec4<u32>(2298u, u_input.b, u_input.b, 23970u) >> (vec4<u32>(1u, var_0.x, 4294967295u, var_0.x) % vec4<u32>(32u))))), _wgslsmith_div_vec3_u32(min(firstLeadingBit(vec3<u32>(4294967295u, var_1.x, var_0.x)), ~(~vec3<u32>(56534u, 0u, 38918u))), vec3<u32>(9020u, var_1.x, firstLeadingBit(_wgslsmith_div_u32(u_input.b, 0u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(abs(u_input.a.x), u_input.a.x, -1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(629f, 1000f, -269f), vec3<f32>(-716f, 733f, -550f)))))), _wgslsmith_mod_vec4_i32(vec4<i32>(~0i, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c, 2147483647i, -18479i, u_input.a.x), -vec4<i32>(u_input.a.x, u_input.c, u_input.c, u_input.c)), 1i << (firstTrailingBit(var_1.x) % 32u), 1i), countOneBits(reverseBits(firstLeadingBit(vec4<i32>(u_input.a.x, -22384i, 0i, -2147483647i))))));
}

