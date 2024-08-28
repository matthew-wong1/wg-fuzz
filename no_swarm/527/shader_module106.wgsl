struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 20> = array<Struct_4, 20>(Struct_4(-369f, true, Struct_2(16105u)), Struct_4(593f, true, Struct_2(8529u)), Struct_4(-1412f, true, Struct_2(50691u)), Struct_4(-1848f, false, Struct_2(34891u)), Struct_4(-1237f, false, Struct_2(31305u)), Struct_4(665f, false, Struct_2(1u)), Struct_4(693f, true, Struct_2(4634u)), Struct_4(1039f, false, Struct_2(1u)), Struct_4(1637f, true, Struct_2(7363u)), Struct_4(2021f, false, Struct_2(1u)), Struct_4(476f, true, Struct_2(12111u)), Struct_4(1000f, false, Struct_2(1u)), Struct_4(612f, false, Struct_2(1u)), Struct_4(1340f, true, Struct_2(34295u)), Struct_4(-1018f, false, Struct_2(0u)), Struct_4(169f, false, Struct_2(1u)), Struct_4(-562f, false, Struct_2(4294967295u)), Struct_4(708f, false, Struct_2(4465u)), Struct_4(341f, true, Struct_2(1u)), Struct_4(440f, false, Struct_2(1u)));

var<private> global1: Struct_2;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_2) -> u32 {
    global0 = array<Struct_4, 20>();
    global1 = Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(u_input.b | 4966u, 1u), ~global1.a), vec2<u32>(u_input.b >> (4294967295u % 32u), countOneBits(~u_input.b))));
    let var_0 = 0i;
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.c.ywx, u_input.c.xzx), u_input.c.x);
    return (~global1.a & firstTrailingBit(0u ^ global1.a)) ^ 0u;
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    global1 = Struct_2(~_wgslsmith_sub_u32(~abs(global1.a), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.a.x, 26136u, arg_0.b, arg_0.a.x), ~vec4<u32>(1u, 30253u, 0u, 1u))));
    var var_0 = func_2(Struct_2(_wgslsmith_mod_u32(4294967295u, ~75287u))) == global1.a;
    var var_1 = Struct_3(_wgslsmith_clamp_vec2_u32(abs(~select(vec2<u32>(arg_0.a.x, 0u), arg_0.a.zy, vec2<bool>(true, true))), ~firstTrailingBit(~vec2<u32>(arg_0.b, 63384u)), arg_0.a.zx), ~vec2<u32>(u_input.b ^ (global1.a ^ arg_0.a.x), 1u), !select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), select(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), true), vec2<bool>(all(vec3<bool>(true, true, any(vec4<bool>(true, false, false, true)))), all(vec3<bool>(true, true, true)) && !any(vec3<bool>(true, false, false))));
    global0 = array<Struct_4, 20>();
    var var_2 = max(vec4<i32>(-1i, min(~u_input.a, abs(reverseBits(u_input.c.x))), u_input.c.x, u_input.a & (i32(-1i) * -26163i)), u_input.c);
    return _wgslsmith_mod_vec3_u32(arg_0.a, arg_0.a);
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(countOneBits(global1.a), 23449u, u_input.b, ~reverseBits(1u)), ~(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.a, arg_0, arg_0, 4294967295u), vec4<u32>(68087u, 72721u, 1u, global1.a)), ~vec4<u32>(u_input.b, 35036u, global1.a, 26843u), vec4<u32>(arg_0, 25379u, arg_0, u_input.b)) << (firstTrailingBit(vec4<u32>(4294967295u, 1u, 19039u, global1.a)) % vec4<u32>(32u))));
    global0 = array<Struct_4, 20>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(14185u, firstLeadingBit(u_input.b)), select(countOneBits(_wgslsmith_sub_u32(func_2(Struct_2(24936u)), 13990u << (arg_0 % 32u))), arg_0, true)), 20u)];
    let var_2 = vec3<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(312u & var_1.c.a, _wgslsmith_mult_u32(1u, 0u)), ~(~u_input.b)), global1.a, 4294967295u & ~(~arg_0)) | firstLeadingBit(var_0.ywx);
    var var_3 = Struct_4(691f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -697f), _wgslsmith_f_op_f32(var_1.a + -1463f)) >= var_1.a, var_1.c);
    return Struct_1(_wgslsmith_mult_vec3_u32(~var_0.xzy, func_3(Struct_1(_wgslsmith_add_vec3_u32(var_2, vec3<u32>(global1.a, var_2.x, var_3.c.a)), ~1u, 490f))), arg_0, var_3.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.c, 228f, -375f), vec3<f32>(arg_0.c, 1821f, -310f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.c, arg_0.c, 475f))))), vec3<bool>(all(vec3<bool>(false, true, true)), false, -7762i >= u_input.a))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.c, _wgslsmith_f_op_f32(sign(699f)), arg_0.c), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-591f, arg_0.c, arg_0.c))), select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(false, false, true))))));
    global0 = array<Struct_4, 20>();
    var var_1 = !(u_input.a != -1i);
    let var_2 = u_input.b <= (arg_1.a | ~53495u);
    global0 = array<Struct_4, 20>();
    return Struct_2(countOneBits(arg_2.a));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<u32>) -> Struct_1 {
    global1 = func_4(func_1(abs(func_1(1u).b)), Struct_2(func_1(0u).b), func_4(func_1(~1u), arg_1, Struct_2(32109u)));
    var var_0 = -countOneBits(u_input.a);
    global1 = Struct_2(arg_2.x << (~(~arg_0.a ^ _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, arg_0.a, 4294967295u), vec4<u32>(36347u, 1u, 15060u, 77119u))) % 32u));
    let var_1 = ~(~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(22808u, global1.a), vec2<u32>(24956u, 40870u)), _wgslsmith_mod_vec2_u32(arg_2.xy, arg_2.xx)) >> (8206u % 32u));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2378f, -846f))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(879f * -746f), _wgslsmith_f_op_f32(-1240f * _wgslsmith_f_op_f32(round(-115f))))));
    return Struct_1(arg_2, arg_0.a, 1153f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = global0[_wgslsmith_index_u32(~u_input.b, 20u)];
    global0 = array<Struct_4, 20>();
    var var_2 = func_5(Struct_2(4294967295u), func_4(func_1(u_input.b), var_1.c, var_1.c), max(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.c.a, 1u, var_1.c.a), vec3<u32>(51087u, u_input.b, u_input.b)) | _wgslsmith_add_vec3_u32(vec3<u32>(global1.a, 0u, global1.a), vec3<u32>(global1.a, global1.a, u_input.b)), ~firstTrailingBit(vec3<u32>(14444u, u_input.b, u_input.b))), ~vec3<u32>(4294967295u, ~7965u, var_1.c.a)));
    global0 = array<Struct_4, 20>();
    var_2 = Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(~global1.a, min(1u | global1.a, u_input.b), ~(~global1.a)), vec3<u32>(~var_1.c.a, u_input.b, 1u) | vec3<u32>(~30749u, reverseBits(global1.a), firstLeadingBit(1u))), ~(~_wgslsmith_add_u32(var_2.b, 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_5(var_1.c, var_1.c, vec3<u32>(61806u, 14276u, u_input.b)).c)));
    var var_3 = 1u;
    let var_4 = vec4<bool>(u_input.a >= u_input.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a - 1055f) - 617f) >= var_2.c, select(var_0, all(!select(vec2<bool>(var_0, true), vec2<bool>(var_0, true), vec2<bool>(var_0, false))), _wgslsmith_f_op_f32(-var_2.c) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(209f - 240f))), select(~_wgslsmith_mult_i32(u_input.a, u_input.a), reverseBits(u_input.c.x), !(u_input.c.x > u_input.a)) < u_input.c.x);
    var_3 = _wgslsmith_sub_u32(~u_input.b, _wgslsmith_clamp_u32(func_1(var_2.a.x).b, countOneBits(54651u) >> (_wgslsmith_clamp_u32(global1.a, 1578u, 31427u) % 32u), u_input.b >> (1u % 32u)) << (max(~(var_2.b & 1u), 1155u) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c.ywx, 1u, func_5(var_1.c, var_1.c, ~(~(~vec3<u32>(var_1.c.a, global1.a, u_input.b)))).b);
}

