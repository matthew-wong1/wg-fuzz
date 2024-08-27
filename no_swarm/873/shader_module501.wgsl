struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec3<bool>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 28> = array<vec2<u32>, 28>(vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 56822u), vec2<u32>(1u, 0u), vec2<u32>(21801u, 110019u), vec2<u32>(4294967295u, 0u), vec2<u32>(22175u, 4294967295u), vec2<u32>(4916u, 0u), vec2<u32>(4294967295u, 8064u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 25410u), vec2<u32>(1u, 18999u), vec2<u32>(37580u, 4294967295u), vec2<u32>(91043u, 16635u), vec2<u32>(34460u, 1u), vec2<u32>(0u, 0u), vec2<u32>(93622u, 1u), vec2<u32>(24098u, 4294967295u), vec2<u32>(18311u, 98u), vec2<u32>(4294967295u, 0u), vec2<u32>(769u, 1u), vec2<u32>(24873u, 1u), vec2<u32>(1u, 50181u), vec2<u32>(31318u, 4294967295u), vec2<u32>(25535u, 22959u), vec2<u32>(11014u, 58082u), vec2<u32>(12451u, 4294967295u), vec2<u32>(3741u, 7047u), vec2<u32>(0u, 0u));

var<private> global1: array<Struct_3, 22>;

var<private> global2: array<Struct_5, 11>;

var<private> global3: array<vec3<bool>, 11>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec4<f32>) -> vec3<bool> {
    global2 = array<Struct_5, 11>();
    var var_0 = Struct_4(Struct_1(vec2<u32>(u_input.a, ~_wgslsmith_mult_u32(0u, u_input.a)), 126f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(371f * -1624f), _wgslsmith_f_op_f32(-934f + 153f)))), u_input.b.x, global3[_wgslsmith_index_u32(max(4294967295u, u_input.a & 65606u), 11u)]);
    return select(vec3<bool>(var_0.c.x, var_0.c.x, select(all(!vec4<bool>(true, true, true, var_0.c.x)), true, var_0.c.x)), !select(var_0.c, !vec3<bool>(var_0.c.x, false, var_0.c.x), var_0.c.x), vec3<bool>(true, true, true));
}

fn func_3() -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-1131f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1099f, -525f)))), -577f))) * vec2<f32>(_wgslsmith_f_op_f32(trunc(-1236f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-418f, 1000f, false)), _wgslsmith_f_op_f32(821f + -185f)), 824f, all(vec2<bool>(true, true))))));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_3) -> Struct_1 {
    global0 = array<vec2<u32>, 28>();
    let var_0 = Struct_5(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(arg_2.b, _wgslsmith_f_op_vec4_f32(-arg_2.b))))), vec4<bool>(false, func_2(arg_2.b).x, false, false || all(vec3<bool>(true, true, true))));
    let var_1 = _wgslsmith_add_u32(1u, 1u);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.x, -592f, -1000f, arg_2.c.b) * vec4<f32>(arg_2.c.b, arg_2.a.x, -1000f, arg_2.b.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1030f, 421f, arg_2.a.x, arg_2.a.x))) + _wgslsmith_f_op_vec4_f32(-arg_2.b)))));
    let var_3 = Struct_4(arg_2.c, -abs(u_input.b.x), var_0.b.zwy);
    return Struct_1(~countOneBits(arg_0.zz), -256f, _wgslsmith_f_op_vec2_f32(func_3()));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = array<vec2<u32>, 28>();
    global3 = array<vec3<bool>, 11>();
    global3 = array<vec3<bool>, 11>();
    var var_0 = 1276f;
    let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b, arg_0.c.x, arg_0.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.b, -2205f, 626f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-646f, arg_0.b, -812f), vec3<f32>(1986f, 200f, arg_0.c.x))))) - vec3<f32>(-414f, _wgslsmith_f_op_f32(-930f + arg_0.b), _wgslsmith_f_op_f32(f32(-1f) * -1806f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(arg_0.c.x + -962f), arg_0.c.x))));
    return func_1(abs(max(_wgslsmith_mod_vec3_u32(vec3<u32>(50138u, u_input.a, 22767u), vec3<u32>(arg_0.a.x, 0u, arg_0.a.x)) << ((vec3<u32>(u_input.a, 92352u, 0u) ^ vec3<u32>(arg_0.a.x, u_input.a, u_input.a)) % vec3<u32>(32u)), vec3<u32>(~12527u, ~arg_0.a.x, u_input.a))), arg_0.a.x, Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.c) - _wgslsmith_f_op_vec2_f32(func_1(vec3<u32>(arg_0.a.x, 79297u, 10004u), u_input.a, global1[_wgslsmith_index_u32(1u, 22u)]).c - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.x, -196f) * vec2<f32>(var_1.x, 316f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.b, arg_0.c.x, arg_0.b, var_1.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, arg_0.c.x, var_1.x, 1156f))))), func_1(min(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 713u, arg_0.a.x), vec3<u32>(arg_0.a.x, 15575u, 4294967295u)), vec3<u32>(arg_0.a.x, u_input.a, u_input.a) | vec3<u32>(25496u, 71262u, arg_0.a.x)), u_input.a >> (u_input.a % 32u), global1[_wgslsmith_index_u32(arg_0.a.x, 22u)])));
}

fn func_5(arg_0: Struct_1) -> Struct_5 {
    global3 = array<vec3<bool>, 11>();
    var var_0 = Struct_5(!select(vec3<bool>(true, true, true), select(!global3[_wgslsmith_index_u32(1u, 11u)], vec3<bool>(false, false, false), global3[_wgslsmith_index_u32(countOneBits(49611u), 11u)]), true), vec4<bool>(true, true, true, true));
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(arg_0.c.x + -581f), _wgslsmith_f_op_f32(min(arg_0.b, arg_0.c.x))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1155f, arg_0.c.x) - vec2<f32>(arg_0.c.x, 572f)))))), vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_0.b)), arg_0.b), var_0.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(907f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-380f * 1264f), 1015f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.b)) + _wgslsmith_f_op_f32(-arg_0.b)), arg_0.b)), arg_0);
    global2 = array<Struct_5, 11>();
    let var_2 = Struct_1(vec2<u32>(~(~10591u), min(_wgslsmith_dot_vec2_u32(var_1.c.a, var_1.c.a), arg_0.a.x)), _wgslsmith_f_op_f32(arg_0.b + var_1.c.b), _wgslsmith_f_op_vec2_f32(-var_1.a));
    return Struct_5(global3[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 11u)], select(!(!(!vec4<bool>(var_0.b.x, var_0.a.x, true, false))), select(select(select(var_0.b, vec4<bool>(var_0.b.x, var_0.a.x, var_0.b.x, var_0.b.x), var_0.b.x), !var_0.b, vec4<bool>(false, false, var_0.a.x, false)), vec4<bool>(!var_0.b.x, true, true, true), false), var_0.b));
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_5, arg_2: Struct_4, arg_3: vec2<u32>) -> Struct_2 {
    global1 = array<Struct_3, 22>();
    let var_0 = global1[_wgslsmith_index_u32(4294967295u, 22u)];
    let var_1 = true;
    var var_2 = arg_2;
    global2 = array<Struct_5, 11>();
    return Struct_2(func_5(var_2.a).b, Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a.a.x, 8672u, 1u, var_2.a.a.x), vec4<u32>(4294967295u, 4294967295u, 49787u, var_0.c.a.x)), arg_2.a.a.x ^ var_2.a.a.x), ~(~var_2.a.a)), arg_2.a.b, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, arg_2.a.b), vec2<f32>(470f, var_0.b.x))) * _wgslsmith_f_op_vec2_f32(-var_2.a.c)), var_2.a.c))));
}

fn func_7(arg_0: Struct_2, arg_1: u32, arg_2: vec3<f32>) -> vec4<i32> {
    let var_0 = ~vec4<u32>(u_input.a, _wgslsmith_sub_u32(_wgslsmith_add_u32(~1u, ~arg_0.b.a.x), _wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u, u_input.a), ~4294967295u)), arg_1, u_input.a);
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.b) - arg_2.x)), func_1(~(~vec3<u32>(arg_1, 25376u, 1u)) >> (vec3<u32>(~arg_1, _wgslsmith_mod_u32(arg_0.b.a.x, var_0.x), _wgslsmith_add_u32(1u, 72530u)) % vec3<u32>(32u)), max(arg_0.b.a.x, func_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 39914u, var_0.x), vec3<u32>(44234u, arg_0.b.a.x, u_input.a), vec3<u32>(20395u, var_0.x, 4294967295u)), u_input.a, global1[_wgslsmith_index_u32(~13309u, 22u)]).a.x), global1[_wgslsmith_index_u32(var_0.x, 22u)]).c.x));
    global3 = array<vec3<bool>, 11>();
    global1 = array<Struct_3, 22>();
    let var_2 = ~(~vec4<u32>(~u_input.a, abs(21107u), min(27320u, arg_1), abs(61989u))) | ~var_0;
    return ~firstLeadingBit(~vec4<i32>(u_input.b.x, _wgslsmith_mod_i32(-1i, u_input.b.x), u_input.b.x & u_input.b.x, u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(vec4<u32>(~(~u_input.a), max(~1u, 0u), abs(u_input.a), countOneBits(_wgslsmith_sub_u32(1641u, u_input.a))), func_5(func_4(func_1(vec3<u32>(u_input.a, 109081u, 0u), u_input.a, Struct_3(vec2<f32>(590f, 1840f), vec4<f32>(-1041f, -2193f, 1074f, 1474f), Struct_1(vec2<u32>(u_input.a, 45314u), -398f, vec2<f32>(-1088f, 176f)))))), Struct_4(func_1(vec3<u32>(u_input.a, 6701u, u_input.a) | vec3<u32>(u_input.a, u_input.a, u_input.a), ~89068u, Struct_3(vec2<f32>(-313f, -664f), vec4<f32>(-914f, 919f, -371f, -1973f), Struct_1(vec2<u32>(u_input.a, 4294967295u), 750f, vec2<f32>(130f, -590f)))), countOneBits(-2147483647i) >> ((u_input.a & 0u) % 32u), vec3<bool>(true, true, any(vec4<bool>(true, false, true, false)))), global0[_wgslsmith_index_u32(~u_input.a, 28u)]), u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, -1331f, 565f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-737f, -1000f, 109f))))));
    global1 = array<Struct_3, 22>();
    let var_1 = func_4(func_6(max(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a, 0u, u_input.a), vec4<u32>(4294967295u, 45997u, u_input.a, u_input.a)), ~vec4<u32>(u_input.a, u_input.a, 1u, 31922u)) >> (reverseBits(vec4<u32>(4294967295u, u_input.a, 0u, 20302u) ^ vec4<u32>(u_input.a, 1u, u_input.a, 29526u)) % vec4<u32>(32u)), global2[_wgslsmith_index_u32(countOneBits(func_1(vec3<u32>(u_input.a, 29805u, 18664u), 59040u, Struct_3(vec2<f32>(1641f, -342f), vec4<f32>(1078f, 2003f, 1910f, -536f), Struct_1(global0[_wgslsmith_index_u32(u_input.a, 28u)], -1000f, vec2<f32>(-637f, -184f)))).a.x & 16077u), 11u)], Struct_4(func_4(Struct_1(global0[_wgslsmith_index_u32(u_input.a, 28u)], 1950f, vec2<f32>(261f, 1158f))), ~(-var_0.x), vec3<bool>(true, true, u_input.a < u_input.a)), global0[_wgslsmith_index_u32(4294967295u, 28u)]).b);
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(-118f * var_1.b)) - _wgslsmith_f_op_vec2_f32(trunc(var_1.c))) + var_1.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(403f, var_1.b, true))), 1146f, -834f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.c.x * 241f), -589f, any(vec2<bool>(false, true)))))), func_1(max(vec3<u32>(~var_1.a.x, u_input.a, var_1.a.x), abs(min(vec3<u32>(var_1.a.x, 1u, 52304u), vec3<u32>(var_1.a.x, var_1.a.x, var_1.a.x)))), _wgslsmith_mod_u32(func_6(firstTrailingBit(vec4<u32>(39656u, u_input.a, 1u, 38681u)), func_5(Struct_1(vec2<u32>(4294967295u, var_1.a.x), var_1.b, var_1.c)), Struct_4(Struct_1(var_1.a, -219f, vec2<f32>(901f, var_1.c.x)), -1i, vec3<bool>(false, true, true)), ~global0[_wgslsmith_index_u32(23322u, 28u)]).b.a.x, 1u), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(var_1.b - var_1.c.x), _wgslsmith_f_op_f32(f32(-1f) * -753f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-583f, var_1.c.x, var_1.b, 1038f)), var_1)));
    global3 = array<vec3<bool>, 11>();
    var var_3 = 997f;
    let var_4 = Struct_4(var_2.c, u_input.b.x, !func_5(Struct_1(~vec2<u32>(57391u, var_2.c.a.x), 1817f, vec2<f32>(var_1.c.x, var_1.c.x))).b.xzy);
    var var_5 = _wgslsmith_f_op_f32(exp2(func_6(vec4<u32>(17182u ^ var_4.a.a.x, 0u, 0u, _wgslsmith_mult_u32(1u, 4294967295u)), global2[_wgslsmith_index_u32(~(4434u >> (var_1.a.x % 32u)), 11u)], var_4, var_1.a).b.c.x));
    var var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.b)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x + _wgslsmith_f_op_f32(step(var_4.a.b, var_2.b.x))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(687f)) * -471f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, ~vec2<u32>(_wgslsmith_sub_u32(var_4.a.a.x, 30355u & var_4.a.a.x), ~(u_input.a & 1u)), 4294967295u);
}

