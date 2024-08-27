struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: f32,
    b: bool,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: vec2<bool>,
    d: f32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<bool>, 11> = array<vec2<bool>, 11>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_3) -> u32 {
    var var_0 = Struct_2(Struct_1(!vec4<bool>(true, any(global1[_wgslsmith_index_u32(u_input.a, 11u)]), true, select(false, arg_1.a, arg_1.a)), firstLeadingBit(_wgslsmith_div_i32(1i, reverseBits(39171i))), _wgslsmith_f_op_f32(f32(-1f) * -612f), ~(1u & u_input.b)), true);
    global0 = _wgslsmith_f_op_f32(-var_0.a.c);
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(max(0i, -2147483647i & _wgslsmith_sub_i32(u_input.d.x, u_input.e)), countOneBits(-var_0.a.b ^ -2147483647i)), ~_wgslsmith_mult_i32(u_input.e, -13095i) << (~max(~u_input.a, u_input.b & u_input.b) % 32u));
    let var_2 = all(var_0.a.a);
    global1 = array<vec2<bool>, 11>();
    return reverseBits(_wgslsmith_mult_u32(u_input.a, ~((var_0.a.d & u_input.c) ^ 0u)));
}

fn func_2(arg_0: vec2<f32>) -> bool {
    let var_0 = _wgslsmith_mult_u32(10911u, ~func_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, -186f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(2991f, arg_0.x, arg_0.x), vec3<f32>(arg_0.x, arg_0.x, 139f)))), Struct_3(true)));
    var var_1 = -vec3<i32>(~_wgslsmith_sub_i32(u_input.e & -2147483647i, ~31151i), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-u_input.d, ~vec3<i32>(12818i, -27681i, u_input.e)), firstTrailingBit(u_input.e)), abs(u_input.d.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1656f, arg_0.x, arg_0.x, 1348f) + vec4<f32>(arg_0.x, -185f, -1707f, -547f))))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1843f, arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), arg_0.x)));
    var var_3 = Struct_2(Struct_1(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false))), true & all(vec2<bool>(true, true))), abs(-2147483647i), arg_0.x, _wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.c, u_input.c, var_0), vec4<u32>(1u, var_0, u_input.a, 1u)), firstTrailingBit(~var_0), ~(~0u))), true);
    var_3 = Struct_2(var_3.a, false);
    return any(var_3.a.a.xyz);
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = select(vec3<bool>(any(vec4<bool>(arg_0 < 0u, true, true, true)), true, any(vec2<bool>(func_2(vec2<f32>(843f, 264f)), u_input.c < 0u))), !vec3<bool>(!all(vec4<bool>(false, true, true, true)), true, false), !(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)))));
    let var_1 = max(vec3<u32>(_wgslsmith_div_u32(arg_0, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 4294967295u), vec2<u32>(34305u, 51303u)), func_3(vec3<f32>(-441f, -484f, 775f), Struct_3(var_0.x)))), ~59337u, (~82776u ^ arg_0) ^ _wgslsmith_dot_vec2_u32(select(vec2<u32>(arg_0, 1u), vec2<u32>(0u, arg_0), var_0.zz), vec2<u32>(52060u, 0u))), ~_wgslsmith_clamp_vec3_u32(firstTrailingBit(abs(vec3<u32>(u_input.c, u_input.b, 84000u))), vec3<u32>(abs(1u), u_input.b << (arg_0 % 32u), arg_0), vec3<u32>(arg_0, 68141u, 17756u)));
    global0 = -713f;
    var var_2 = vec3<bool>(var_0.x, !(!var_0.x), true);
    return Struct_1(vec4<bool>(!var_0.x | select(false, true, false), 1i >= _wgslsmith_mult_i32(_wgslsmith_mult_i32(0i, u_input.d.x), -u_input.e), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-427f, 1422f) - vec2<f32>(129f, 672f)))), !any(!vec2<bool>(var_2.x, true))), ~(~max(i32(-1i) * -2147483647i, min(u_input.e, 6523i))), 494f, 22691u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    var var_1 = !(!vec4<bool>(true, all(vec4<bool>(false, false, false, false)), false, true));
    let var_2 = func_1(0u);
    var var_3 = Struct_3(var_2.a.x & (var_2.b <= abs(reverseBits(-14952i))));
    let var_4 = vec4<u32>(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(~firstLeadingBit(u_input.a), 1u, abs(~u_input.b), 64064u), vec4<u32>(0u, abs(62888u | u_input.b), 4294967295u, var_2.d << (1u % 32u))), ~0u ^ var_2.d, min(_wgslsmith_clamp_u32(u_input.a, firstTrailingBit(4294967295u), ~24344u | ~var_2.d), 0u));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, ~var_4.x), (var_4.xy >> (vec2<u32>(10957u, 4294967295u) % vec2<u32>(32u))) ^ (vec2<u32>(41110u, 0u) | vec2<u32>(0u, u_input.a))), u_input.d ^ (vec3<i32>(_wgslsmith_add_i32(u_input.e, -45079i), ~u_input.e, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2616i), u_input.d.zx)) ^ vec3<i32>(min(-65154i, 0i), var_2.b, _wgslsmith_clamp_i32(var_2.b, var_2.b, -24196i))), _wgslsmith_add_vec4_u32(reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(50410u, var_2.d, var_4.x, u_input.a), firstLeadingBit(var_4))), firstTrailingBit(vec4<u32>(var_2.d, 23781u, var_2.d, 117507u))));
}

