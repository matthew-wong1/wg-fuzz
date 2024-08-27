struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> i32 {
    global0 = array<Struct_2, 15>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-487f, -1354f, -512f, 2525f) + vec4<f32>(105f, 293f, 1258f, 1209f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-876f, 1000f, -782f, 830f)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(429f, -405f, 953f, -704f)))), true)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -198f, 1095f, 283f), vec4<f32>(336f, -445f, -1206f, 2167f), false)))), vec4<f32>(1f, 1f, 1f, 1f), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), true)))) - vec4<f32>(1f, 1f, 1f, 1f));
    return ~_wgslsmith_mod_i32(select(max(0i << (u_input.a.x % 32u), -31168i), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-1i, 0i, -2147483647i, 2147483647i)), vec4<i32>(1i, 1i, 1i, 1i)), true), _wgslsmith_add_i32(0i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(1i, -17921i), 1i << (u_input.b % 32u), ~(-1i))));
}

fn func_2() -> vec4<u32> {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a.x, 15u)];
    var var_1 = -1000f;
    var var_2 = (~(var_0.a >> (abs(vec2<u32>(39632u, 91332u)) % vec2<u32>(32u))) ^ ~var_0.a) & (-var_0.a ^ ~(-_wgslsmith_div_vec2_i32(vec2<i32>(var_0.a.x, -13981i), var_0.a)));
    var_1 = _wgslsmith_f_op_f32(sign(-409f));
    var_2 = vec2<i32>(_wgslsmith_add_i32(~(-abs(var_0.a.x)), ~func_3(Struct_1(842u, vec3<u32>(0u, u_input.b, 30346u)))), func_3(Struct_1(1u, firstTrailingBit(vec3<u32>(1u, 9651u, 46363u)))));
    return vec4<u32>(u_input.b, ~20236u, ~30224u, u_input.a.x) ^ vec4<u32>(~u_input.a.x, ~u_input.a.x, ~(~u_input.a.x), abs(~select(38588u, 4294967295u, true)));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = 4294967295u;
    var_0 = u_input.b;
    return vec3<u32>(_wgslsmith_dot_vec4_u32(func_2(), vec4<u32>(1u, ~arg_1.b.x, u_input.b, ~_wgslsmith_sub_u32(13156u, arg_1.b.x))), 9281u, u_input.b);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = vec2<u32>(_wgslsmith_mult_u32(arg_0, firstTrailingBit(func_2().x)), u_input.a.x);
    let var_1 = Struct_1(4294967295u, arg_1.b);
    let var_2 = _wgslsmith_mult_u32(~(~var_1.a), var_0.x);
    return Struct_2(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_add_i32(~17712i, 42271i), 1i << (_wgslsmith_div_u32(4294967295u, var_2) % 32u)), min(abs(vec2<i32>(3924i, 0i)), ~vec2<i32>(1i, -60952i)) << (~abs(vec2<u32>(var_0.x, u_input.b)) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~firstTrailingBit(14507u), Struct_1(127434u, max(~(vec3<u32>(u_input.b, u_input.b, u_input.b) << (vec3<u32>(u_input.b, u_input.a.x, 25756u) % vec3<u32>(32u))), ~func_1(false, Struct_1(2558u, vec3<u32>(u_input.a.x, 0u, u_input.a.x))))), true, select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, select(true, any(vec4<bool>(true, false, true, false)), true)), vec3<bool>(any(select(vec2<bool>(false, true), vec2<bool>(false, false), true)), all(vec3<bool>(true, true, true)), true)));
    var var_1 = select(vec3<bool>(false, all(vec3<bool>(any(vec3<bool>(true, true, true)), all(vec3<bool>(false, false, false)), u_input.b == 4294967295u)), false), vec3<bool>(true, u_input.b < u_input.b, false), vec3<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true))), true, var_0.a.x < 0i));
    var var_2 = ~(~(~_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a, u_input.a, u_input.a), min(u_input.a, u_input.a))));
    var_1 = !(!vec3<bool>(true, var_1.x, false));
    var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(firstTrailingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(14040u, 8223u, u_input.b, 1u), vec4<u32>(u_input.a.x, var_2.x, u_input.a.x, var_2.x))), u_input.b), 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(select(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a.x, 7232u, 17682u, 55907u)), abs(vec4<u32>(38665u, u_input.a.x, var_2.x, 36817u))), _wgslsmith_sub_vec4_u32(~vec4<u32>(31340u, var_2.x, u_input.a.x, u_input.b), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, 4294967295u)), true), vec4<u32>(firstLeadingBit(countOneBits(u_input.a.x)), 4294967295u, u_input.b, u_input.b)), _wgslsmith_div_vec3_i32(~vec3<i32>(-31010i, 2147483647i, var_0.a.x ^ 16438i), vec3<i32>(-firstLeadingBit(var_0.a.x), -6987i, abs(_wgslsmith_clamp_i32(var_0.a.x, var_0.a.x, 0i)))), _wgslsmith_dot_vec3_u32(vec3<u32>(~(var_2.x & var_2.x), u_input.a.x, ~u_input.a.x), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, var_2.x, var_2.x), vec3<u32>(var_2.x, 1u, 4294967295u), vec3<u32>(4294967295u, var_2.x, var_2.x)) | ~vec3<u32>(40307u, u_input.b, var_2.x)));
}

