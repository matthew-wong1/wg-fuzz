struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 8948u;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_1) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(-690f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.b.a.x - arg_1.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.a.x) + _wgslsmith_f_op_f32(f32(-1f) * -1528f))) + arg_1.a);
}

fn func_3(arg_0: vec3<f32>) -> Struct_3 {
    let var_0 = vec4<bool>(true, ~firstTrailingBit(_wgslsmith_div_u32(u_input.a.x, u_input.a.x)) != _wgslsmith_mod_u32(u_input.a.x, abs(~4294967295u)), all(vec3<bool>((u_input.a.x | 8862u) != ~0u, false, all(select(vec2<bool>(false, true), vec2<bool>(false, false), true)))), select(!all(vec4<bool>(true, true, true, true)), any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true))), true));
    var var_1 = any(vec2<bool>(!(u_input.b >= -11688i) || (-216f > _wgslsmith_f_op_f32(312f + arg_0.x)), !var_0.x & all(var_0.zz)));
    var var_2 = Struct_3(u_input.a, _wgslsmith_f_op_f32(-arg_0.x));
    let var_3 = _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 36930u, abs(var_2.a.x), ~(u_input.a.x >> (var_2.a.x % 32u))), ~_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(var_2.a.x, var_2.a.x, var_2.a.x, u_input.a.x)), countOneBits(vec4<u32>(55796u, u_input.a.x, u_input.a.x, var_2.a.x))), vec4<u32>(u_input.a.x, ~u_input.a.x, countOneBits(var_2.a.x), 0u ^ abs(u_input.a.x))) >> (_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, var_2.a.x, 34148u, 1u), vec4<u32>(u_input.a.x, 35495u, 39018u, var_2.a.x)), vec4<u32>(u_input.a.x, 78056u, u_input.a.x, 0u), ~vec4<u32>(var_2.a.x, var_2.a.x, 30967u, 0u)) | _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, 13213u, 25081u, var_2.a.x), vec4<u32>(var_2.a.x, u_input.a.x, u_input.a.x, 4294967295u) ^ vec4<u32>(1u, var_2.a.x, var_2.a.x, u_input.a.x)), max(abs(~vec4<u32>(var_2.a.x, 4294967295u, var_2.a.x, u_input.a.x)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a.zx), countOneBits(u_input.a.x), ~1u, ~var_2.a.x))) % vec4<u32>(32u));
    var var_4 = !(u_input.b < ~_wgslsmith_clamp_i32(firstLeadingBit(u_input.b), _wgslsmith_mod_i32(u_input.b, 0i), -4601i));
    return Struct_3(u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)));
}

fn func_1(arg_0: f32, arg_1: bool) -> u32 {
    let var_0 = func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(Struct_2(1000f, Struct_1(vec3<f32>(arg_0, arg_0, 943f), vec4<bool>(false, false, true, arg_1))), Struct_1(vec3<f32>(arg_0, -573f, arg_0), vec4<bool>(arg_1, true, false, false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) + vec2<f32>(arg_0, arg_0)), Struct_1(vec3<f32>(arg_0, -519f, arg_0), vec4<bool>(true, false, true, arg_1))))) - vec3<f32>(-306f, 327f, arg_0)));
    let var_1 = func_3(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.b, var_0.b))), var_0.b, -1101f));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -596f), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(598f, arg_0, var_1.b), vec3<f32>(347f, arg_0, arg_0), arg_1)))))), select(select(vec4<bool>(arg_1, false, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, arg_1, false, false), false), true), !vec4<bool>(true, true, true, arg_1), !(!vec4<bool>(arg_1, arg_1, arg_1, arg_1)))));
    var var_3 = -(~(abs(select(vec2<i32>(-1i, -2927i), vec2<i32>(44249i, u_input.b), var_2.b.b.xy)) | (_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(u_input.b, -2147483647i)) | -vec2<i32>(11245i, 9790i))));
    var_2 = Struct_2(-360f, var_2.b);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-608f, _wgslsmith_f_op_f32(2219f - _wgslsmith_f_op_f32(abs(1438f))), true)) * -1014f), false);
    global0 = ~(~_wgslsmith_dot_vec4_u32(~select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(63441u, 73018u, 6813u, u_input.a.x), vec4<bool>(false, false, false, true)), vec4<u32>(0u, 0u, 84704u, u_input.a.x)));
    var var_1 = vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, 33049u), u_input.a.x);
    var_1 = vec2<u32>(0u, _wgslsmith_div_u32(var_1.x, 27183u));
    let var_2 = !(u_input.b <= (~(~5483i) | -u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(~abs(u_input.a.x), ~(~4294967295u)), reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(67243u, ~u_input.a.x, abs(64391u), 4294967295u), ~(~vec4<u32>(7059u, 1u, var_1.x, 1u)), max(vec4<u32>(u_input.a.x, 1u, var_1.x, 4294967295u), vec4<u32>(37088u, 4669u, 15257u, 18678u)) >> (abs(vec4<u32>(var_1.x, var_1.x, var_1.x, u_input.a.x)) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-560f * -350f), -276f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1838f * -815f) * _wgslsmith_f_op_f32(trunc(692f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -143f), -1138f)))), -(~(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, -29699i, u_input.b), vec4<i32>(u_input.b, u_input.b, -1i, -1i)) & _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b, 2302i, u_input.b), vec4<i32>(u_input.b, -7271i, u_input.b, 2147483647i)))), _wgslsmith_dot_vec3_i32(-firstLeadingBit(~vec3<i32>(-1i, u_input.b, 1i)), vec3<i32>(i32(-1i) * -1i, -14567i, firstLeadingBit(-43862i))));
}

