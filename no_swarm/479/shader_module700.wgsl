struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: bool,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(i32(-2147483648), false);

var<private> global1: vec2<f32>;

var<private> global2: vec2<bool>;

var<private> global3: vec2<bool> = vec2<bool>(true, true);

var<private> global4: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec2<u32>(21415u, 4294967295u), vec4<f32>(-307f, 1096f, -621f, 815f)), Struct_1(vec2<u32>(1u, 4294967295u), vec4<f32>(244f, -1357f, 994f, -1000f)), Struct_1(vec2<u32>(63842u, 97531u), vec4<f32>(-218f, 511f, 885f, 797f)), Struct_1(vec2<u32>(0u, 0u), vec4<f32>(1000f, 342f, -1686f, 1000f)), Struct_1(vec2<u32>(1u, 1u), vec4<f32>(376f, 162f, -563f, -125f)), Struct_1(vec2<u32>(25145u, 1u), vec4<f32>(-656f, 924f, -229f, -1678f)), Struct_1(vec2<u32>(4716u, 0u), vec4<f32>(245f, 922f, 445f, 875f)), Struct_1(vec2<u32>(0u, 40719u), vec4<f32>(493f, -963f, -1249f, -776f)), Struct_1(vec2<u32>(4294967295u, 50914u), vec4<f32>(-151f, 1074f, -393f, -1000f)), Struct_1(vec2<u32>(0u, 7181u), vec4<f32>(1078f, 1168f, -823f, -127f)), Struct_1(vec2<u32>(29682u, 85867u), vec4<f32>(703f, -785f, -1176f, -1000f)), Struct_1(vec2<u32>(64112u, 1u), vec4<f32>(-1295f, 919f, -575f, -307f)), Struct_1(vec2<u32>(0u, 0u), vec4<f32>(354f, -1282f, -355f, 1043f)), Struct_1(vec2<u32>(38713u, 0u), vec4<f32>(-2033f, -172f, 1162f, -1515f)), Struct_1(vec2<u32>(0u, 0u), vec4<f32>(1000f, 598f, -1622f, -562f)), Struct_1(vec2<u32>(18911u, 72838u), vec4<f32>(886f, 1000f, -1155f, -1000f)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> Struct_2 {
    var var_0 = 18073i >= global0.a;
    var var_1 = u_input.b.x ^ _wgslsmith_sub_u32(u_input.c.x, u_input.b.x);
    return Struct_2(global4[_wgslsmith_index_u32(1u >> (~u_input.c.x % 32u), 16u)], u_input.d.x << (1u % 32u), ~72325u, global3.x, ~(-vec3<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(u_input.d, u_input.d), u_input.a)));
}

fn func_1() -> vec3<i32> {
    let var_0 = firstTrailingBit(_wgslsmith_clamp_u32(select(0u, 53749u, select(777f != global1.x, select(global2.x, false, global2.x), global1.x < 1482f)), _wgslsmith_clamp_u32(4294967295u, ~(~1u), u_input.b.x), 3150u));
    let var_1 = func_2();
    var var_2 = _wgslsmith_f_op_vec2_f32(var_1.a.b.xx + var_1.a.b.zz);
    var var_3 = select(global3.x, var_0 <= func_2().a.a.x, true);
    var var_4 = u_input.d;
    return vec3<i32>(-2147483647i, _wgslsmith_add_i32(~(-u_input.d.x), _wgslsmith_mult_i32(u_input.a, _wgslsmith_div_i32(2147483647i, 14966i)) ^ 19681i), 7822i);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_4) -> f32 {
    global4 = array<Struct_1, 16>();
    var var_0 = arg_0.a.a;
    var var_1 = 808f;
    var var_2 = arg_2;
    global1 = _wgslsmith_f_op_vec2_f32(min(arg_0.a.b.yx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0.a.b.x * arg_0.a.b.x), _wgslsmith_f_op_f32(361f + -1177f))))));
    return arg_0.a.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a;
    let var_1 = Struct_2(global4[_wgslsmith_index_u32(22739u, 16u)], _wgslsmith_mod_i32(_wgslsmith_mod_i32(global0.a, global0.a), _wgslsmith_add_i32(57548i, u_input.a)), ~(~min(u_input.b.x, ~u_input.b.x)), !global3.x, func_1());
    var var_2 = Struct_2(Struct_1(_wgslsmith_mod_vec2_u32(countOneBits(countOneBits(u_input.c)), u_input.c), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-521f + -912f))), _wgslsmith_f_op_f32(f32(-1f) * -1883f), global1.x, -291f)), firstTrailingBit(_wgslsmith_div_i32(-1i, -1i)), ~_wgslsmith_sub_u32(~0u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 0u), vec2<u32>(0u, 32379u)), max(vec2<u32>(u_input.c.x, var_1.c), vec2<u32>(35738u, 16619u)))), global2.x | all(!vec2<bool>(false, global2.x)), u_input.d);
    let var_3 = Struct_1(vec2<u32>(5691u, ~0u), vec4<f32>(298f, 267f, -640f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(global4[_wgslsmith_index_u32(126431u, 16u)], var_1.b, 45203u, false, var_1.e), vec4<i32>(37179i, 1i, var_1.b, var_2.e.x), Struct_4(8330i, var_2.d)))))));
    global2 = vec2<bool>(true, all(vec2<bool>(global2.x, all(select(vec4<bool>(global2.x, true, false, global0.b), vec4<bool>(var_1.d, var_1.d, var_2.d, false), false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, 229f)), -401f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1185f, _wgslsmith_f_op_f32(1402f - 709f), true))))), func_2().b);
}

