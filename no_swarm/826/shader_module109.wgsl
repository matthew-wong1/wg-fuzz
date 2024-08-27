struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: u32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: i32,
    d: bool,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec4<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: u32) -> f32 {
    global0 = array<Struct_2, 7>();
    global0 = array<Struct_2, 7>();
    let var_0 = -firstLeadingBit(vec4<i32>(~arg_0.b, -77869i, u_input.a, _wgslsmith_mod_i32(firstTrailingBit(48916i), -38622i)));
    var var_1 = vec4<u32>(arg_2, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, arg_0.a.a.b, 1u ^ arg_0.a.b.b, ~12235u), ~min(vec4<u32>(arg_0.a.a.b, arg_2, 81821u, arg_1), vec4<u32>(4294967295u, arg_2, 1u, arg_2))), 68907u, ~(~4294967295u) << (_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, arg_0.a.a.b), u_input.c.yy), ~u_input.c.xy) % 32u)) ^ (_wgslsmith_mult_vec4_u32(vec4<u32>(countOneBits(0u), _wgslsmith_add_u32(arg_0.a.b.b, u_input.c.x), 79155u, 4294967295u), firstLeadingBit(vec4<u32>(arg_0.a.d, arg_2, arg_2, arg_0.a.a.b) << (vec4<u32>(arg_1, u_input.c.x, 11u, arg_2) % vec4<u32>(32u)))) >> (abs(vec4<u32>(arg_1, arg_2, _wgslsmith_dot_vec2_u32(u_input.c.yy, vec2<u32>(34492u, arg_2)), 0u)) % vec4<u32>(32u)));
    var var_2 = u_input.c.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(860f * _wgslsmith_f_op_f32(arg_0.a.a.a.x * _wgslsmith_f_op_f32(arg_0.a.b.a.x * -500f))))));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2, arg_3: Struct_3) -> bool {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_1)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-156f, -151f))))), _wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(u_input.c.x, 1u, 54420u, arg_0.d)) << ((_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 2420u, arg_2.d, 20442u), vec4<u32>(17730u, 0u, u_input.c.x, u_input.c.x)) >> ((vec4<u32>(arg_3.e.b.b, 4294967295u, u_input.c.x, u_input.c.x) >> (vec4<u32>(49504u, 0u, 56041u, arg_0.e.a.b) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)), select(_wgslsmith_sub_vec4_u32(~vec4<u32>(55739u, 78923u, 589u, arg_3.d), firstTrailingBit(vec4<u32>(4294967295u, 35595u, 4294967295u, arg_3.d))), ~vec4<u32>(arg_3.c.b, 9015u, u_input.c.x, u_input.c.x), 1u > _wgslsmith_div_u32(141032u, u_input.c.x))));
    return false;
}

fn func_2(arg_0: bool, arg_1: Struct_5, arg_2: vec4<bool>) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.c.x, 7u)];
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a.x, arg_1.c.a.a.a.x)) * var_0.b.a), 47601u << (_wgslsmith_mod_u32(var_0.d, u_input.c.x) % 32u)), Struct_1(arg_1.c.a.b.a, select(var_0.b.b, ~u_input.c.x << (_wgslsmith_div_u32(var_0.b.b, 4294967295u) % 32u), true)), _wgslsmith_f_op_f32(floor(-183f)), firstTrailingBit(max(u_input.c.x, u_input.c.x)), select(var_0.e, vec3<bool>(select(arg_0, !arg_1.c.d, true), ~15042u >= (arg_1.b.a.b.b & var_0.a.b), var_0.e.x), var_0.e));
    global0 = array<Struct_2, 7>();
    global0 = array<Struct_2, 7>();
    let var_1 = func_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_1.b.a.b.a.x)), _wgslsmith_f_op_f32(var_0.b.a.x - arg_1.b.a.a.a.x))), 1i, Struct_1(arg_1.c.a.a.a, 1u), ~firstLeadingBit(u_input.c.x), Struct_2(arg_1.c.a.b, var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.b.a.x)) - _wgslsmith_div_f32(-1201f, var_0.c)), 36568u, arg_1.b.a.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_4(Struct_2(Struct_1(var_0.b.a, var_0.a.b), Struct_1(vec2<f32>(arg_1.c.a.a.a.x, 1888f), 86008u), -1891f, arg_1.c.a.b.b, arg_2.zwx), arg_1.c.b, -1i, arg_1.b.a.e.x), arg_1.b.a.b.b, arg_1.c.a.d)) + 1303f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.a.c * arg_1.b.a.c)))) * var_0.c), Struct_2(var_0.a, var_0.b, -1860f, countOneBits(_wgslsmith_dot_vec3_u32(u_input.c << (vec3<u32>(34189u, arg_1.c.a.b.b, 1u) % vec3<u32>(32u)), u_input.c)), select(vec3<bool>(false, arg_1.a != var_0.e.x, true), select(vec3<bool>(true, false, false), !vec3<bool>(true, true, arg_2.x), var_0.e.x || true), true)), Struct_3(var_0.a.a.x, u_input.b.x, var_0.a, u_input.c.x, Struct_2(Struct_1(vec2<f32>(arg_1.c.a.b.a.x, var_0.b.a.x), arg_1.c.a.d & u_input.c.x), var_0.a, -647f, _wgslsmith_mod_u32(u_input.c.x, 47688u) | 1u, select(!arg_1.b.a.e, vec3<bool>(false, arg_0, arg_1.b.d), vec3<bool>(false, arg_2.x, arg_0)))));
    return var_0.c;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    global0 = array<Struct_2, 7>();
    var var_0 = vec3<u32>(arg_1.b, _wgslsmith_add_u32(54656u, abs(1u)) ^ countOneBits(~(~arg_0.a.b)), u_input.c.x);
    global0 = array<Struct_2, 7>();
    var_0 = _wgslsmith_sub_vec3_u32(~(~u_input.c), vec3<u32>(select(_wgslsmith_div_u32(abs(arg_0.d), arg_1.b), arg_1.b, !any(arg_0.e)), firstTrailingBit(~16914u), _wgslsmith_clamp_u32(~reverseBits(74730u), ~arg_0.a.b, select(1u, 1u, any(vec2<bool>(false, true))))));
    let var_1 = select(min(~_wgslsmith_clamp_vec4_u32(vec4<u32>(13239u, 1u, 59820u, 30094u) << (vec4<u32>(3262u, var_0.x, var_0.x, 32395u) % vec4<u32>(32u)), countOneBits(vec4<u32>(66124u, arg_1.b, 4294967295u, u_input.c.x)), vec4<u32>(arg_1.b, 1u, var_0.x, 17645u) | vec4<u32>(1u, arg_1.b, 4294967295u, u_input.c.x)), vec4<u32>(_wgslsmith_div_u32(arg_1.b, u_input.c.x), u_input.c.x >> (~32283u % 32u), ~(arg_1.b | arg_1.b), abs(abs(15216u)))), vec4<u32>(~1u, ~(countOneBits(arg_0.b.b) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b, 4947u, arg_0.d, arg_0.d), vec4<u32>(10522u, u_input.c.x, var_0.x, var_0.x)) % 32u)), ~(~u_input.c.x), 1u), all(arg_0.e));
    return arg_1;
}

fn func_1(arg_0: Struct_4, arg_1: u32) -> u32 {
    global0 = array<Struct_2, 7>();
    let var_0 = ~vec3<i32>(_wgslsmith_clamp_i32(i32(-1i) * -arg_0.b, _wgslsmith_clamp_i32(-11190i, i32(-1i) * -18878i, _wgslsmith_mult_i32(arg_0.c, -1i)), max(~(-1i), 6951i)), arg_0.b, ~arg_0.c | countOneBits(-1i));
    global0 = array<Struct_2, 7>();
    var var_1 = func_5(Struct_2(arg_0.a.a, Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1701f, arg_0.a.c))), 31977u), _wgslsmith_f_op_f32(-864f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(false, Struct_5(arg_0.a.e.x, Struct_4(global0[_wgslsmith_index_u32(u_input.c.x, 7u)], u_input.a, u_input.a, arg_0.d), arg_0), vec4<bool>(false, false, arg_0.d, false))) + _wgslsmith_f_op_f32(arg_0.a.c - 1367f))), ~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(1u, 1u, 0u), u_input.c.x, arg_1 >> (39886u % 32u)), arg_0.a.e), arg_0.a.a);
    var_1 = arg_0.a.a;
    return reverseBits(abs(~(firstLeadingBit(var_1.b) >> (3095u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 7632u, 4294967295u, 0u) << (vec4<u32>(func_1(Struct_4(global0[_wgslsmith_index_u32(17578u, 7u)], -77668i, u_input.b.x, false), 1u), 1u, 0u, u_input.c.x) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mult_u32(u_input.c.x, 122202u), 1u, u_input.c.x, u_input.c.x) ^ (vec4<u32>(48362u, 58073u, 1u, u_input.c.x) >> (~vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.c.x) % vec4<u32>(32u)))), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(9099u, 1u, 44055u, u_input.c.x), _wgslsmith_div_vec4_u32(vec4<u32>(88134u, 0u, u_input.c.x, 1u), ~vec4<u32>(0u, u_input.c.x, u_input.c.x, 3126u))), ~(~vec4<u32>(1u, 17288u, 40448u, u_input.c.x))));
    global0 = array<Struct_2, 7>();
    global0 = array<Struct_2, 7>();
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -264f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-755f, _wgslsmith_f_op_f32(round(-2135f))), _wgslsmith_f_op_f32(func_2(true, Struct_5(false, Struct_4(Struct_2(Struct_1(vec2<f32>(170f, 1000f), var_0.x), Struct_1(vec2<f32>(428f, 1000f), 29990u), -730f, var_0.x, vec3<bool>(false, false, false)), -20868i, u_input.b.x, false), Struct_4(global0[_wgslsmith_index_u32(u_input.c.x, 7u)], u_input.a, 23397i, true)), vec4<bool>(any(vec4<bool>(false, true, false, true)), all(vec2<bool>(false, false)), true, true)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~min(u_input.a, 140i), var_1, -29148i, _wgslsmith_add_vec4_u32(reverseBits(firstLeadingBit(vec4<u32>(u_input.c.x, var_0.x, u_input.c.x, 1u))) ^ ~vec4<u32>(var_0.x, 32160u, var_0.x, var_0.x), ~_wgslsmith_sub_vec4_u32(~var_0, var_0)), u_input.b);
}

