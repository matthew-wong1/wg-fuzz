struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: bool) -> vec4<u32> {
    let var_0 = vec2<bool>(true, true);
    global0 = array<Struct_3, 29>();
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1616f * -1011f))), 1134f) - vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -375f))), 588f)), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1354f, -702f), vec2<f32>(-100f, -682f)) - vec2<f32>(-889f, 337f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1173f, -154f), vec2<f32>(155f, -509f)))), Struct_1(abs(~vec4<i32>(1172i, 1i, 1i, -1158i)), 55435u, ~33507u, abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-26765i, u_input.a, -1i, -2147483647i), vec4<i32>(u_input.a, 31274i, -35247i, u_input.a))), vec2<bool>(false, false & arg_0)), 9440u));
    var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.b.c, abs(abs(0u)), 4294967295u, var_1.b.b.b), vec4<u32>(_wgslsmith_mult_u32(~var_1.b.c, var_1.b.c), 43048u, ~var_1.b.c & var_1.b.c, _wgslsmith_clamp_u32(var_1.b.c, abs(countOneBits(var_1.b.b.c)), 1u))), 29u)];
    var var_2 = -5726i;
    return _wgslsmith_add_vec4_u32(~select(vec4<u32>(reverseBits(var_1.b.c), var_1.b.b.b, _wgslsmith_clamp_u32(1u, 4294967295u, 12959u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, var_1.b.b.b), vec3<u32>(7978u, 1u, var_1.b.b.c))), countOneBits(max(vec4<u32>(1u, 75u, 5861u, 4294967295u), vec4<u32>(1u, 0u, 106630u, var_1.b.c))), (var_0.x & var_0.x) || false), ~vec4<u32>(0u & ~var_1.b.c, abs(var_1.b.b.b), 0u, var_1.b.c | ~var_1.b.c));
}

fn func_2(arg_0: vec2<f32>) -> vec4<i32> {
    global0 = array<Struct_3, 29>();
    var var_0 = Struct_1(vec4<i32>(select(u_input.a, u_input.a, true), u_input.a, countOneBits(u_input.a << (4294967295u % 32u)) & abs(-26071i), ~(~abs(-28002i))), 1u, ~4294967295u << (_wgslsmith_dot_vec4_u32(~func_3(false), ~(~vec4<u32>(115185u, 31942u, 27331u, 51468u))) % 32u), -_wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a, u_input.a, u_input.a, 14929i)), vec4<i32>(-48640i, u_input.a, 2147483647i, 82801i)) | -abs(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -60994i, 24673i, 0i), vec4<i32>(u_input.a, -2147483647i, u_input.a, 9011i))), select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    var var_1 = 1i;
    let var_2 = ~_wgslsmith_clamp_vec3_u32((func_3(true).wzz | select(vec3<u32>(var_0.c, 6713u, 1u), vec3<u32>(var_0.c, 6839u, 1u), var_0.e.x)) & vec3<u32>(_wgslsmith_div_u32(var_0.b, 4294967295u), ~36274u, _wgslsmith_mod_u32(1666u, 4294967295u)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.b, ~var_0.b, ~4294967295u), ~(~vec3<u32>(67165u, 6284u, var_0.b))), vec3<u32>(abs(93457u), _wgslsmith_add_u32(var_0.c, select(4294967295u, var_0.c, var_0.e.x)), ~17078u));
    global0 = array<Struct_3, 29>();
    return abs(max(reverseBits(-var_0.d | abs(vec4<i32>(var_0.a.x, var_0.d.x, var_0.a.x, var_0.a.x))), vec4<i32>(u_input.a, var_0.d.x, -(var_0.d.x ^ -1i), ~_wgslsmith_add_i32(1i, u_input.a))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_3 {
    global0 = array<Struct_3, 29>();
    global0 = array<Struct_3, 29>();
    var var_0 = global0[_wgslsmith_index_u32(~4585u, 29u)];
    let var_1 = Struct_1(~firstTrailingBit(arg_0.a), _wgslsmith_sub_u32(arg_0.c, var_0.b.c), 0u, vec4<i32>(reverseBits(1i), u_input.a, -2147483647i, _wgslsmith_sub_i32(countOneBits(var_0.b.b.a.x), _wgslsmith_add_i32(countOneBits(-47412i), 1i))), vec2<bool>(true, arg_0.e.x));
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_1))), Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(arg_1, arg_1)) + arg_1), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, var_0.b.a.x))))), Struct_1(vec4<i32>(-1i) * -arg_0.d, 4294967295u, ~88700u, -arg_0.d, vec2<bool>(true, true)), firstTrailingBit(arg_0.b)));
    return Struct_3(var_0.b.a, Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.b.a.x, 2052f), vec2<f32>(var_2.b.a.x, 778f))), arg_1, !arg_0.e)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(689f, var_0.b.a.x), arg_1)))), Struct_1(vec4<i32>(~2147483647i, var_1.d.x, _wgslsmith_sub_i32(arg_0.d.x, 2147483647i), 0i), arg_0.c, 54333u, select(reverseBits(vec4<i32>(var_1.d.x, u_input.a, var_1.d.x, var_2.b.b.a.x)), -vec4<i32>(26926i, u_input.a, var_2.b.b.d.x, var_1.d.x), select(vec4<bool>(var_1.e.x, var_1.e.x, var_2.b.b.e.x, var_2.b.b.e.x), vec4<bool>(true, var_0.b.b.e.x, false, true), var_1.e.x)), var_1.e), var_1.c));
}

fn func_1() -> vec4<u32> {
    var var_0 = firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(2147483647i), -u_input.a, 1i, -10778i), ~countOneBits(vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a))), max(~u_input.a, -1i)));
    let var_1 = func_4(Struct_1(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a) & vec4<i32>(-15926i, 12718i, u_input.a, u_input.a), -vec4<i32>(-13769i, u_input.a, u_input.a, u_input.a)), func_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1391f, -1601f), vec2<f32>(672f, 920f), vec2<bool>(true, true)))), vec4<i32>(u_input.a, -2147483647i, 31077i, u_input.a) >> (select(vec4<u32>(71838u, 8656u, 1u, 0u), vec4<u32>(1u, 1u, 4294967295u, 4294967295u), vec4<bool>(true, false, true, true)) % vec4<u32>(32u))), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 1u), ~vec3<u32>(81018u, 30965u, 11331u)) ^ ~1u, _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, -5316i, -15503i, 32911i)), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -34120i, u_input.a, -30238i), vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a)), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -63849i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)))), vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-376f, -429f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-618f, -210f))), vec2<f32>(_wgslsmith_f_op_f32(min(2249f, 313f)), _wgslsmith_f_op_f32(f32(-1f) * -1045f)), select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(false, true), true))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(304f, -334f), vec2<f32>(293f, -1272f)))) - vec2<f32>(420f, _wgslsmith_f_op_f32(-648f - 645f)))));
    global0 = array<Struct_3, 29>();
    global0 = array<Struct_3, 29>();
    var_0 = func_4(var_1.b.b, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_1.b.a)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, var_1.b.a.x) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-182f, var_1.a.x)))))))).b.b.d.x;
    return vec4<u32>(4294967295u, 1u, abs(~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(31722u, var_1.b.b.b, 0u, 4294967295u), vec4<u32>(4294967295u, 26960u, 31081u, 4294967295u)), ~vec4<u32>(4294967295u, var_1.b.c, var_1.b.b.b, 4294967295u))), firstTrailingBit(_wgslsmith_add_u32(1u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(func_1() | abs(abs(vec4<u32>(4294967295u, 0u, 4294967295u, 7480u))));
    let var_1 = vec2<f32>(1346f, -376f);
    var_0 = countOneBits(~firstTrailingBit(select(~vec4<u32>(var_0.x, 4256u, var_0.x, var_0.x), abs(vec4<u32>(var_0.x, var_0.x, var_0.x, 4294967295u)), true)));
    global0 = array<Struct_3, 29>();
    let var_2 = min((vec4<i32>(_wgslsmith_div_i32(-18766i, u_input.a), -21093i, u_input.a | u_input.a, -2147483647i << (var_0.x % 32u)) & (vec4<i32>(-1i) * -vec4<i32>(u_input.a, u_input.a, -1i, 1i))) >> (countOneBits(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, var_0.x, 12154u, 1u), vec4<u32>(var_0.x, var_0.x, 61502u, var_0.x))) % vec4<u32>(32u)), ~_wgslsmith_add_vec4_i32(vec4<i32>(-74902i, u_input.a, 2147483647i, u_input.a) & (vec4<i32>(-1i, -1i, -26126i, u_input.a) >> (vec4<u32>(var_0.x, 18545u, 4294967295u, 1u) % vec4<u32>(32u))), (vec4<i32>(-54352i, u_input.a, u_input.a, -1i) ^ vec4<i32>(2147483647i, u_input.a, -49264i, u_input.a)) | select(vec4<i32>(-1i, u_input.a, -1i, 1i), vec4<i32>(14032i, -4173i, 16189i, u_input.a), vec4<bool>(false, true, false, true))));
    global0 = array<Struct_3, 29>();
    var var_3 = Struct_1(min(var_2, vec4<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, var_2.x), reverseBits(vec3<i32>(var_2.x, 1i, var_2.x))), ~(-u_input.a), ~(~var_2.x))), var_0.x, countOneBits(var_0.x), ~firstLeadingBit(~var_2), vec2<bool>(true, all(vec3<bool>(true, true, all(vec2<bool>(false, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, var_3.a.x, vec3<u32>(var_3.c, var_0.x, 20484u));
}

