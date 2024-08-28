struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<bool>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 20> = array<vec2<i32>, 20>(vec2<i32>(i32(-2147483648), 0i), vec2<i32>(0i, 52060i), vec2<i32>(1i, 24381i), vec2<i32>(2147483647i, -2512i), vec2<i32>(34895i, -48368i), vec2<i32>(-1i, 1i), vec2<i32>(1i, 1i), vec2<i32>(38785i, -81842i), vec2<i32>(56303i, i32(-2147483648)), vec2<i32>(7728i, i32(-2147483648)), vec2<i32>(9751i, 2147483647i), vec2<i32>(0i, 1i), vec2<i32>(0i, 0i), vec2<i32>(16925i, -1i), vec2<i32>(24890i, 15468i), vec2<i32>(0i, 2147483647i), vec2<i32>(-36229i, i32(-2147483648)), vec2<i32>(-1i, -7167i), vec2<i32>(0i, 16198i), vec2<i32>(0i, -12299i));

var<private> global1: array<Struct_1, 26>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: vec4<f32>) -> i32 {
    global0 = array<vec2<i32>, 20>();
    global0 = array<vec2<i32>, 20>();
    global0 = array<vec2<i32>, 20>();
    global1 = array<Struct_1, 26>();
    global0 = array<vec2<i32>, 20>();
    return _wgslsmith_div_i32(~1i, 29080i);
}

fn func_3(arg_0: vec4<u32>) -> bool {
    let var_0 = global1[_wgslsmith_index_u32(~(~u_input.a), 26u)];
    global1 = array<Struct_1, 26>();
    global1 = array<Struct_1, 26>();
    global0 = array<vec2<i32>, 20>();
    global0 = array<vec2<i32>, 20>();
    return !(!(!(!var_0.a)) && (abs(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_0.e, 0i), vec3<i32>(var_0.e, var_0.e, var_0.e))) < _wgslsmith_mult_i32(-14705i, var_0.e)));
}

fn func_2(arg_0: u32, arg_1: i32) -> f32 {
    let var_0 = vec4<bool>(!any(vec2<bool>(true, true)), -2147483647i <= arg_1, any(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), true))), true);
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-786f, -1000f))) + vec2<f32>(-574f, 2125f))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, -2049f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(131f, 920f) - vec2<f32>(-1000f, -1000f))))))), Struct_1(var_0.x & any(var_0.zzw), ~u_input.a << (_wgslsmith_clamp_u32(112165u, abs(6391u), 4294967295u) % 32u), select(vec3<bool>(all(var_0.yzw), func_3(vec4<u32>(33706u, 6072u, 0u, 29877u)), true), !vec3<bool>(false, var_0.x, false), (var_0.x && false) && var_0.x), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(arg_0, u_input.a, 29293u), vec3<u32>(arg_0, u_input.a, 1u), vec3<bool>(true, false, true)), _wgslsmith_mod_vec3_u32(vec3<u32>(95234u, 1u, arg_0), vec3<u32>(arg_0, u_input.a, u_input.a)), ~vec3<u32>(4542u, 0u, 29795u)), ~vec3<u32>(1u, 4294967295u, u_input.a) ^ countOneBits(vec3<u32>(58408u, arg_0, arg_0))), 2147483647i), Struct_1((var_0.x || !var_0.x) | true, 45157u, select(select(select(vec3<bool>(var_0.x, false, true), var_0.xyw, vec3<bool>(false, true, false)), !var_0.xyz, var_0.x), vec3<bool>(false, var_0.x, arg_0 == 25622u), true), _wgslsmith_sub_vec3_u32(~firstLeadingBit(vec3<u32>(u_input.a, arg_0, 0u)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(arg_0, u_input.a)), 9198u, u_input.a)), -2147483647i));
    let var_2 = Struct_2(var_1.c);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(298f - var_1.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(746f)) * _wgslsmith_f_op_f32(f32(-1f) * -171f)) * _wgslsmith_f_op_f32(func_2(u_input.a, func_1(vec4<f32>(-662f, -1593f, 148f, 1159f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1074f - 270f)), _wgslsmith_f_op_f32(floor(1695f))))), Struct_1(true, u_input.a, select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), true), select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), vec3<bool>(false, false, false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false)), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false)), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 13668u), vec3<u32>(1u, u_input.a, u_input.a)), vec3<u32>(u_input.a, 18406u, u_input.a) << (vec3<u32>(24200u, u_input.a, u_input.a) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(6326u, 31116u, u_input.a), vec3<u32>(u_input.a, 0u, u_input.a))), vec3<u32>(reverseBits(u_input.a), u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)))), -2147483647i), global1[_wgslsmith_index_u32(1u, 26u)]);
    let var_1 = Struct_3(vec2<f32>(-1887f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1580f - -1374f))))), Struct_1(!var_0.c.c.x, firstTrailingBit(41407u), var_0.b.c, ~_wgslsmith_clamp_vec3_u32(var_0.b.d, ~var_0.b.d, vec3<u32>(107025u, 0u, 0u) ^ var_0.b.d), countOneBits(abs(var_0.b.e))), Struct_1(true, u_input.a, !select(select(var_0.b.c, vec3<bool>(var_0.c.a, var_0.b.c.x, true), vec3<bool>(var_0.b.a, var_0.c.a, var_0.c.c.x)), !vec3<bool>(true, var_0.c.a, false), select(vec3<bool>(var_0.c.c.x, var_0.c.c.x, var_0.c.a), vec3<bool>(false, var_0.b.a, true), var_0.c.c.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(countOneBits(u_input.a), _wgslsmith_sub_u32(var_0.c.d.x, 0u), _wgslsmith_clamp_u32(28010u, 57230u, 36999u)), ~countOneBits(vec3<u32>(u_input.a, var_0.c.b, u_input.a)), _wgslsmith_add_vec3_u32(var_0.b.d, ~vec3<u32>(4294967295u, var_0.b.b, u_input.a))), var_0.c.e));
    var var_2 = Struct_3(var_0.a, Struct_1(67386i == var_0.b.e, _wgslsmith_sub_u32(u_input.a, firstLeadingBit(44319u)), !(!vec3<bool>(true, var_0.b.c.x, var_1.b.c.x)), var_0.b.d, _wgslsmith_sub_i32(-1i, -(3886i >> (var_1.b.b % 32u)))), Struct_1(any(var_0.b.c.xx), ~(~39203u), vec3<bool>(false, countOneBits(var_0.b.d.x) < 0u, any(!var_1.c.c)), vec3<u32>(70598u, var_1.b.b, ~u_input.a) ^ var_1.b.d, -reverseBits(-112985i)));
    var_0 = var_1;
    var_2 = Struct_3(var_0.a, Struct_1(any(select(!vec3<bool>(false, false, var_0.c.c.x), vec3<bool>(var_1.b.a, var_2.b.c.x, false), vec3<bool>(var_1.c.c.x, true, var_0.c.a))), var_2.b.b << ((countOneBits(var_1.b.b) & _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, var_1.c.d.x, var_0.c.d.x), vec4<u32>(var_0.c.d.x, 35265u, 4294967295u, 0u))) % 32u), var_0.b.c, ~_wgslsmith_div_vec3_u32(reverseBits(var_2.c.d), ~vec3<u32>(38487u, var_0.c.d.x, 4294967295u)), var_0.b.e), var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(var_2.a.x)), 672f, var_2.a.x, -540f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, -2187f, -487f, 724f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-441f, -408f, var_1.a.x, -677f)))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(var_1.a.x - var_0.a.x), var_0.a.x, _wgslsmith_div_f32(1270f, -989f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-291f, 1867f, var_1.a.x, 1198f)))), select(select(vec4<bool>(var_2.b.a, false, var_2.b.a, var_0.c.c.x), vec4<bool>(true, false, var_0.b.a, var_2.b.c.x), true), !vec4<bool>(var_2.b.c.x, false, false, var_1.b.c.x), !vec4<bool>(var_0.c.c.x, var_0.b.a, true, false))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-284f - -1209f), _wgslsmith_f_op_f32(var_0.a.x - 1000f))), _wgslsmith_f_op_f32(var_2.a.x + _wgslsmith_f_op_f32(113f - 1170f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.a * vec2<f32>(289f, var_1.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.a, vec2<f32>(-1665f, var_0.a.x))))), _wgslsmith_f_op_vec2_f32(ceil(var_0.a)), _wgslsmith_mod_u32(var_2.b.b, 0u));
}

