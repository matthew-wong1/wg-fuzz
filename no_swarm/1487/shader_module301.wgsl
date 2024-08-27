struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec3<u32>;

var<private> global2: array<vec4<u32>, 26> = array<vec4<u32>, 26>(vec4<u32>(4294967295u, 19712u, 4294967295u, 4294967295u), vec4<u32>(1u, 69809u, 19316u, 29363u), vec4<u32>(39366u, 0u, 1u, 0u), vec4<u32>(4294967295u, 65260u, 72790u, 79713u), vec4<u32>(1u, 54465u, 0u, 6237u), vec4<u32>(19826u, 0u, 22402u, 1u), vec4<u32>(48568u, 22112u, 4294967295u, 0u), vec4<u32>(55047u, 8267u, 51017u, 66494u), vec4<u32>(31679u, 64129u, 4294967295u, 4294967295u), vec4<u32>(55048u, 46459u, 25380u, 33507u), vec4<u32>(4294967295u, 9356u, 9596u, 1u), vec4<u32>(1u, 15427u, 0u, 1u), vec4<u32>(15657u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(0u, 0u, 3607u, 29755u), vec4<u32>(47738u, 35572u, 64303u, 1u), vec4<u32>(4294967295u, 4294967295u, 7019u, 1u), vec4<u32>(43406u, 16383u, 1u, 4294967295u), vec4<u32>(50329u, 4294967295u, 0u, 14856u), vec4<u32>(1u, 27807u, 4294967295u, 35263u), vec4<u32>(4294967295u, 78937u, 52001u, 88995u), vec4<u32>(13622u, 15528u, 19744u, 40241u), vec4<u32>(42957u, 9781u, 31882u, 1u), vec4<u32>(16224u, 1973u, 62214u, 17264u), vec4<u32>(2116u, 1u, 3403u, 22423u), vec4<u32>(1u, 1u, 57253u, 68697u), vec4<u32>(0u, 4294967295u, 62475u, 57079u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(245f, _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(global0.x + -426f)))) + _wgslsmith_f_op_vec2_f32(global0.xz * global0.zw)) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(select(global0.x, global0.x, false)), _wgslsmith_f_op_f32(sign(global0.x))))))));
    global1 = firstLeadingBit(vec3<u32>(43453u, ~_wgslsmith_add_u32(78592u, global1.x), 28671u));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(min(1333f, 154f)), global0.x));
    global1 = vec3<u32>(global1.x | countOneBits(global1.x), 4294967295u, _wgslsmith_clamp_u32(global1.x, 0u, 1u));
    var var_2 = firstTrailingBit(~u_input.a >> (~1u % 32u));
    return abs(max(_wgslsmith_mod_u32(36747u, global1.x), select(global1.x, 1u, all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true)))));
}

fn func_2(arg_0: bool) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-global0.xxx);
    global1 = ~select(vec3<u32>(global1.x, ~74163u, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4204u, 1u, 4294967295u, global1.x), vec4<u32>(4294967295u, 17759u, global1.x, 4086u)), 15183u)), vec3<u32>(_wgslsmith_div_u32(~1u, global1.x), global1.x, (0u << (global1.x % 32u)) & 25838u), any(!(!vec2<bool>(false, arg_0))));
    global1 = vec3<u32>(func_3() ^ (_wgslsmith_mod_u32(~113223u, _wgslsmith_mod_u32(global1.x, 76726u)) >> (~global1.x % 32u)), global1.x >> (global1.x % 32u), 39123u);
    let var_1 = Struct_1(~(~vec3<u32>(global1.x, global1.x, ~7451u)), -(_wgslsmith_div_i32(abs(u_input.a), _wgslsmith_div_i32(u_input.a, u_input.a)) | _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(u_input.a, u_input.a)), firstTrailingBit(vec2<i32>(u_input.a, -2147483647i)))));
    var var_2 = var_1;
    return vec4<f32>(_wgslsmith_div_f32(-630f, 1322f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(608f, _wgslsmith_f_op_f32(var_0.x + -1916f)) - _wgslsmith_f_op_f32(-787f * _wgslsmith_f_op_f32(sign(964f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: vec3<u32>, arg_3: vec3<f32>) -> vec2<u32> {
    global0 = _wgslsmith_f_op_vec4_f32(func_2(all(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))))));
    var var_0 = Struct_1(vec3<u32>(37934u, 15946u, (~47644u & arg_2.x) ^ 1u), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-1i, -1i, u_input.a)), vec3<i32>(u_input.a, 1i, u_input.a)), u_input.a, ~reverseBits(u_input.a), u_input.a), -_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 30555i, 0i, 29643i), _wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.a, 0i, 2147483647i), vec4<i32>(15458i, u_input.a, u_input.a, 38912i)))));
    let var_1 = arg_3.x;
    var_0 = Struct_1(vec3<u32>(global1.x, _wgslsmith_mult_u32(global1.x, ~50870u) | _wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(4294967295u, 26u)], firstLeadingBit(vec4<u32>(53849u, 1u, 43103u, var_0.a.x))), 1u), abs(firstLeadingBit(_wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, u_input.a, var_0.b, var_0.b), vec4<i32>(-32945i, -43332i, u_input.a, 41130i)))));
    let var_2 = 1i;
    return ~vec2<u32>(max(_wgslsmith_mult_u32(0u, 4294967295u) | (0u << (global1.x % 32u)), _wgslsmith_mod_u32(4294967295u, global1.x)), 47561u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<f32>(-323f, 191f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x))) - _wgslsmith_f_op_f32(f32(-1f) * -427f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_div_f32(172f, global0.x)), 288f)));
    let var_0 = !select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(any(vec2<bool>(true, true)), true, true, _wgslsmith_div_f32(250f, global0.x) > 779f), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), true)));
    let var_1 = Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(100675u, global1.x), global1.yz), func_1(vec3<f32>(global0.x, 1511f, 1000f), global0.x, vec3<u32>(global1.x, global1.x, 4294967295u), global0.wyz)), _wgslsmith_div_u32(func_3(), countOneBits(0u)), select(abs(global1.x), func_3(), var_0.x)) ^ ~countOneBits(vec3<u32>(4294967295u, 4294967295u, global1.x) << (vec3<u32>(0u, global1.x, 1u) % vec3<u32>(32u))), i32(-1i) * -u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-2147483647i, ~max(abs(u_input.a), ~var_1.b), _wgslsmith_mod_i32(3513i, 1425i)), global1.x);
}

