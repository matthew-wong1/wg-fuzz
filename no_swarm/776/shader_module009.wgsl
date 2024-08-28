struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: u32,
    e: vec2<u32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(22235i), Struct_4(-17256i), Struct_4(-1i), Struct_4(-20083i), Struct_4(-30170i), Struct_4(61193i), Struct_4(-14818i), Struct_4(0i), Struct_4(45792i), Struct_4(25912i), Struct_4(i32(-2147483648)), Struct_4(-4i), Struct_4(-1i), Struct_4(i32(-2147483648)), Struct_4(26258i), Struct_4(i32(-2147483648)), Struct_4(2147483647i));

var<private> global2: vec4<i32>;

var<private> global3: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(Struct_1(false, -1i, true, 0u), true, true, 43000u, vec2<u32>(21506u, 1u)), Struct_3(Struct_1(true, 0i, true, 4294967295u), true, false, 1u, vec2<u32>(0u, 4294967295u)), Struct_3(Struct_1(false, -47114i, true, 0u), false, false, 1u, vec2<u32>(4294967295u, 49309u)), Struct_3(Struct_1(false, 3917i, true, 30341u), false, true, 8359u, vec2<u32>(25926u, 57550u)), Struct_3(Struct_1(false, 37042i, false, 0u), true, true, 26679u, vec2<u32>(4294967295u, 1u)), Struct_3(Struct_1(false, 23644i, true, 0u), false, true, 27334u, vec2<u32>(0u, 1u)), Struct_3(Struct_1(false, -1i, true, 1u), false, false, 0u, vec2<u32>(6905u, 1u)), Struct_3(Struct_1(true, -37687i, false, 1u), false, true, 2609u, vec2<u32>(1u, 0u)), Struct_3(Struct_1(false, 60989i, false, 0u), false, true, 4294967295u, vec2<u32>(29801u, 48464u)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~abs(6455u), u_input.b.x), 17u)];
    var var_1 = !global0.x;
    global0 = !(!(!select(select(vec2<bool>(false, global0.x), vec2<bool>(false, false), vec2<bool>(global0.x, false)), !vec2<bool>(false, global0.x), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, global0.x)))));
    let var_2 = ~((~var_0.a | -14610i) << (_wgslsmith_dot_vec3_u32(~(~vec3<u32>(1u, u_input.b.x, 32590u)), ~vec3<u32>(u_input.b.x, 27187u, u_input.b.x) ^ ~vec3<u32>(u_input.b.x, 63939u, u_input.b.x)) % 32u));
    let var_3 = vec2<i32>(~abs(firstTrailingBit(global2.x)), -1i);
    return select(u_input.b.x, ~1u, any(vec3<bool>(true, true, all(vec3<bool>(false, true, global0.x)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec4<i32>, arg_3: Struct_1) -> vec4<f32> {
    return vec4<f32>(_wgslsmith_f_op_f32(1599f - _wgslsmith_f_op_f32(1627f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(409f - -672f), -740f)))), 593f, 1859f, _wgslsmith_f_op_f32(round(-880f)));
}

fn func_1() -> Struct_2 {
    let var_0 = global0.x;
    var var_1 = !vec4<bool>(true, all(select(vec4<bool>(global0.x, global0.x, global0.x, false), select(vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(true, true, true, false), vec4<bool>(true, global0.x, global0.x, true)), !vec4<bool>(true, global0.x, true, global0.x))), global0.x, true);
    var var_2 = Struct_4(-u_input.a);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-813f, _wgslsmith_f_op_f32(abs(2042f)), _wgslsmith_f_op_f32(step(481f, -145f)), _wgslsmith_f_op_f32(ceil(-1000f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2151f, -1263f, 1078f, -436f) - vec4<f32>(-294f, -826f, 1284f, -305f)) * vec4<f32>(-1000f, 291f, 108f, -357f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-206f, -515f, _wgslsmith_f_op_f32(min(941f, -1287f)), _wgslsmith_f_op_f32(sign(516f))) + vec4<f32>(682f, _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -643f), _wgslsmith_f_op_f32(min(-1000f, 1250f))))) + _wgslsmith_f_op_vec4_f32(func_3(Struct_1(global0.x, _wgslsmith_div_i32(2147483647i, global2.x), var_1.x, func_2()), Struct_4(var_2.a), vec4<i32>(1i, (u_input.a ^ -34313i) & -u_input.a, abs(u_input.a), 0i), Struct_1(false, global2.x, var_1.x, u_input.b.x))));
    let var_4 = Struct_3(Struct_1(!global0.x, i32(-1i) * -1i, var_1.x, firstLeadingBit(max(~4294967295u, ~u_input.b.x))), var_3.x != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-825f - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), all(vec3<bool>(false, true, select(!global0.x, u_input.b.x > u_input.b.x, false))), u_input.b.x, vec2<u32>(~min(_wgslsmith_add_u32(38462u, u_input.b.x), min(23270u, 3112u)), firstTrailingBit(u_input.b.x)));
    return Struct_2(global0.x, _wgslsmith_f_op_vec2_f32(-var_3.yy), var_1.x, var_3.x);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: bool, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x, firstLeadingBit(~arg_3.d), _wgslsmith_mult_u32(abs(_wgslsmith_mod_u32(arg_3.d, u_input.b.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.d, _wgslsmith_clamp_u32(arg_3.d, arg_3.d, 34138u), 6258u << (u_input.b.x % 32u), 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(50694u, 43383u, 24385u, 1u) >> (vec4<u32>(51048u, arg_3.d, 1u, u_input.b.x) % vec4<u32>(32u)), vec4<u32>(u_input.b.x, arg_3.d, 1u, u_input.b.x))))), 9u)];
    global3 = array<Struct_3, 9>();
    var var_1 = select(vec2<bool>(false, true == arg_3.c), select(!select(vec2<bool>(true, true), !arg_1, all(vec2<bool>(arg_0.c, true))), select(arg_1, !select(vec2<bool>(true, true), vec2<bool>(arg_0.a, var_0.a.a), vec2<bool>(arg_3.c, true)), vec2<bool>(true, all(vec3<bool>(arg_1.x, arg_3.a, false)))), !(!any(vec3<bool>(arg_1.x, arg_1.x, var_0.c)))), false);
    global1 = array<Struct_4, 17>();
    let var_2 = vec4<bool>(false, arg_0.c, true, global0.x);
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(func_3(Struct_1((false | arg_3.a) && all(var_2.zyw), _wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, u_input.a, arg_3.b), global2.yxy), ~var_0.a.b >= 0i, u_input.b.x), Struct_4(_wgslsmith_add_i32(global2.x | var_0.a.b, arg_3.b)), firstLeadingBit(reverseBits(vec4<i32>(global2.x, 1i, u_input.a, global2.x))), Struct_1(var_2.x, arg_3.b, arg_3.c, max(0u, ~12749u)))), ~0i | _wgslsmith_div_i32(-u_input.a, ~(-37891i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) - -458f), func_1().b.x, arg_0.d, 2036f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1104f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-635f)) - _wgslsmith_f_op_f32(step(-147f, 1000f)))))));
    let x = u_input.a;
    s_output = func_4(func_1(), select(!select(!vec2<bool>(false, global0.x), !vec2<bool>(global0.x, true), global0.x & global0.x), !vec2<bool>(true, all(vec2<bool>(true, global0.x))), vec2<bool>(!all(vec2<bool>(false, true)), func_1().a)), all(select(vec3<bool>(true, true, true), !(!vec3<bool>(global0.x, true, global0.x)), !select(true, global0.x, global0.x))), Struct_1(func_1().c, ~u_input.a, !all(vec2<bool>(true, global0.x)), ~2344u));
}

