struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: f32,
    d: i32,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 24>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(global0.a, global0.a)))), _wgslsmith_div_f32(1844f, global0.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.a)) + _wgslsmith_f_op_f32(-global0.a))))));
    global1 = array<Struct_2, 24>();
    global1 = array<Struct_2, 24>();
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -858f)));
    global1 = array<Struct_2, 24>();
    return Struct_1(global0.a, 4294967295u, _wgslsmith_dot_vec3_i32(u_input.a.wwy, u_input.a.zxy ^ vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, global0.c), -2147483647i, 1i)));
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> Struct_3 {
    let var_0 = _wgslsmith_sub_u32(abs(~1u | reverseBits(~global0.b)), _wgslsmith_dot_vec3_u32(~abs(vec3<u32>(arg_1, 0u, 4294967295u)) << (select(reverseBits(vec3<u32>(global0.b, arg_0.a.b, 4294967295u)), ~vec3<u32>(38128u, 1u, u_input.b), vec3<bool>(true, true, true)) % vec3<u32>(32u)), ~_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 9797u, 4294967295u), vec3<u32>(global0.b, global0.b, 6359u)), vec3<u32>(1u, 0u, u_input.b) << (vec3<u32>(26126u, u_input.b, arg_1) % vec3<u32>(32u)))));
    global0 = func_2();
    let var_1 = vec2<i32>(~_wgslsmith_mod_i32(u_input.a.x >> (u_input.b % 32u), global0.c), u_input.a.x);
    var var_2 = 71712u;
    var var_3 = vec3<bool>(true, true, true);
    return Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.a - -1458f), arg_0.a.a)), _wgslsmith_f_op_f32(-global0.a)))), -vec4<i32>(~u_input.a.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(10080u, 0u), vec2<u32>(1u, arg_0.a.b)) % 32u), u_input.a.x, u_input.a.x, -u_input.a.x >> (~4605u % 32u)), min(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1, 8224u), vec2<u32>(var_0, 1u)), abs(vec2<u32>(u_input.b, arg_0.a.b))), _wgslsmith_mod_vec2_u32(min(vec2<u32>(1u, 4294967295u), vec2<u32>(arg_1, 0u)), vec2<u32>(u_input.b, arg_0.a.b) & vec2<u32>(arg_1, 0u))) >> (vec2<u32>(_wgslsmith_mod_u32(arg_0.a.b, global0.b), 68580u) % vec2<u32>(32u)), firstLeadingBit(1i), !select(select(vec4<bool>(true, false, true, var_3.x), !vec4<bool>(var_3.x, var_3.x, var_3.x, true), !var_3.x), !vec4<bool>(true, var_3.x, false, false), true));
}

fn func_3() -> Struct_1 {
    global1 = array<Struct_2, 24>();
    let var_0 = ~(-u_input.a.xz);
    var var_1 = 75124u;
    var var_2 = ~vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(global0.b, 1u, 1u, 8303u), max(vec4<u32>(u_input.b, 9602u, global0.b, global0.b), vec4<u32>(4294967295u, u_input.b, 0u, 4294967295u))), ~firstLeadingBit(vec4<u32>(u_input.b, 1u, global0.b, u_input.b))), ~53141u & _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, 1u, 4294967295u), vec3<u32>(global0.b, 2929u, 35181u) & vec3<u32>(global0.b, u_input.b, global0.b)));
    let var_3 = !vec4<bool>((true & any(vec4<bool>(true, false, true, true))) || (global0.a >= -764f), any(vec4<bool>(true, false, true, -16198i > var_0.x)), any(vec3<bool>(true, true, true)), true);
    return Struct_1(_wgslsmith_f_op_f32(1265f - 1652f), firstLeadingBit(_wgslsmith_clamp_u32(var_2.x, 50509u, var_2.x >> (2332u % 32u))) >> ((abs(4294967295u) | ~_wgslsmith_sub_u32(var_2.x, var_2.x)) % 32u), (-31710i & min(min(-4360i, global0.c), max(u_input.a.x, 888i))) << (_wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 1u, global0.b), vec3<u32>(17324u, var_2.x, 40663u))), select(vec3<u32>(var_2.x, var_2.x, 32548u), vec3<u32>(27854u, var_2.x, 43448u), var_3.x) ^ (vec3<u32>(0u, var_2.x, 55067u) | vec3<u32>(u_input.b, var_2.x, u_input.b))) % 32u));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5, arg_2: Struct_3, arg_3: vec3<u32>) -> f32 {
    global0 = func_3();
    var var_0 = vec3<u32>(_wgslsmith_sub_u32(arg_1.c.a.b, ~func_1(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, arg_2.c.x), 24u)], select(arg_0.c.x, global0.b, arg_2.e.x)).c.x), _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(20852u, arg_2.c.x), arg_3.x), 1u), 55267u);
    var_0 = countOneBits(vec3<u32>(_wgslsmith_add_u32(~(0u >> (arg_2.c.x % 32u)), ~var_0.x), arg_1.c.a.b ^ ~arg_3.x, arg_2.c.x));
    var var_1 = _wgslsmith_f_op_f32(-func_3().a);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_0.a)))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-1950f * global0.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + _wgslsmith_f_op_f32(min(413f, -1162f))))) * _wgslsmith_f_op_f32(-arg_1.a)), arg_0.a);
    return _wgslsmith_div_f32(func_1(Struct_2(arg_1.c.a), _wgslsmith_mod_u32(81925u, ~var_0.x)).a, arg_1.c.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 24>();
    var var_0 = 0u;
    var var_1 = func_1(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 4294967295u), 24u)], 29178u);
    global0 = Struct_1(_wgslsmith_f_op_f32(func_4(func_1(Struct_2(Struct_1(-487f, var_1.c.x, global0.c)), 105803u), Struct_5(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_1.a, global0.a)), global0.a)), _wgslsmith_add_u32(~var_1.c.x, ~61539u), Struct_4(func_3(), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, 109f) - vec2<f32>(global0.a, global0.a)), 454f, 21230i)), func_1(global1[_wgslsmith_index_u32(1u, 24u)], global0.b), select(firstTrailingBit(vec3<u32>(u_input.b, global0.b, 2355u)) >> (~vec3<u32>(u_input.b, u_input.b, 72304u) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(21418u, var_1.c.x, 0u)), false))), var_1.c.x << (func_1(Struct_2(func_3()), firstTrailingBit(_wgslsmith_add_u32(var_1.c.x, 1u))).c.x % 32u), min(0i, -global0.c));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(min(global0.a, var_1.a))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + _wgslsmith_f_op_f32(f32(-1f) * -1005f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)))), ~4294967295u, i32(-1i) * -var_1.d);
    var var_3 = !var_1.e.yxy;
    var_1 = Struct_3(global0.a, u_input.a, var_1.c, 4634i, !func_1(Struct_2(Struct_1(global0.a, 17969u, 67843i)), func_3().b).e);
    var var_4 = vec4<u32>(64239u, ~(~4294967295u >> (_wgslsmith_clamp_u32(0u, 1u, var_2.b) % 32u)), ~func_2().b, var_2.b | 0u) >> (max(vec4<u32>(reverseBits(func_2().b), ~(global0.b << (global0.b % 32u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(63383u, var_2.b, 1u, u_input.b), vec4<u32>(76347u, 11170u, var_1.c.x, global0.b)), var_1.c.x), select(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 1u, 110018u, var_2.b), vec4<u32>(2377u, var_1.c.x, 15077u, global0.b)), max(_wgslsmith_div_vec4_u32(vec4<u32>(33079u, global0.b, u_input.b, var_2.b), vec4<u32>(0u, var_2.b, global0.b, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, global0.b, var_1.c.x, 4294967295u), vec4<u32>(4766u, 4294967295u, 79800u, var_1.c.x))), select(vec4<bool>(var_3.x, var_3.x, true, var_3.x), !vec4<bool>(false, true, var_1.e.x, false), vec4<bool>(var_3.x, false, var_1.e.x, false)))) % vec4<u32>(32u));
    var var_5 = func_1(Struct_2(var_2), var_1.c.x).e.yz;
    let x = u_input.a;
    s_output = StorageBuffer(global0.a, _wgslsmith_dot_vec2_u32(countOneBits(var_4.zz), var_1.c));
}

