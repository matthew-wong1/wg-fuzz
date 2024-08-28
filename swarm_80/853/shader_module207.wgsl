struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: f32;

var<private> global2: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec4<u32>(26055u, 1u, 25648u, 4294967295u), vec3<u32>(9379u, 69471u, 44280u), vec2<i32>(2147483647i, 2147483647i)), Struct_2(vec4<u32>(8608u, 74360u, 4294967295u, 4294967295u), vec3<u32>(49702u, 0u, 0u), vec2<i32>(1i, 0i)), Struct_2(vec4<u32>(0u, 4294967295u, 4294967295u, 1u), vec3<u32>(57990u, 1u, 1u), vec2<i32>(46490i, 40441i)), Struct_2(vec4<u32>(0u, 9842u, 71476u, 0u), vec3<u32>(73813u, 1u, 53105u), vec2<i32>(7443i, i32(-2147483648))), Struct_2(vec4<u32>(26788u, 0u, 67749u, 37475u), vec3<u32>(0u, 24080u, 1u), vec2<i32>(-28582i, i32(-2147483648))), Struct_2(vec4<u32>(590u, 1u, 27061u, 2124u), vec3<u32>(45215u, 4294967295u, 16562u), vec2<i32>(i32(-2147483648), -1i)), Struct_2(vec4<u32>(30484u, 0u, 4294967295u, 0u), vec3<u32>(38933u, 1u, 0u), vec2<i32>(-1i, 2147483647i)), Struct_2(vec4<u32>(24046u, 44101u, 13706u, 1u), vec3<u32>(45527u, 17248u, 30264u), vec2<i32>(0i, -9951i)), Struct_2(vec4<u32>(20033u, 26842u, 2728u, 4294967295u), vec3<u32>(4294967295u, 28478u, 25792u), vec2<i32>(42262i, 25053i)), Struct_2(vec4<u32>(0u, 37067u, 0u, 11539u), vec3<u32>(1u, 777u, 71191u), vec2<i32>(0i, -4221i)), Struct_2(vec4<u32>(1u, 109158u, 0u, 38042u), vec3<u32>(96672u, 73888u, 1u), vec2<i32>(i32(-2147483648), 2147483647i)), Struct_2(vec4<u32>(130648u, 5720u, 1u, 0u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec2<i32>(-15315i, -1i)), Struct_2(vec4<u32>(4294967295u, 1u, 21964u, 3280u), vec3<u32>(86483u, 46964u, 4294967295u), vec2<i32>(1i, 8420i)), Struct_2(vec4<u32>(59380u, 1u, 0u, 0u), vec3<u32>(13739u, 21003u, 57373u), vec2<i32>(32222i, 1i)), Struct_2(vec4<u32>(1u, 65302u, 67902u, 39157u), vec3<u32>(0u, 0u, 61367u), vec2<i32>(18180i, 14342i)));

var<private> global3: i32 = 22161i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global1 = _wgslsmith_f_op_f32(min(-731f, arg_0.d));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.e * arg_0.e)));
}

fn func_2(arg_0: Struct_2) -> f32 {
    global1 = -707f;
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 2878u), 15u)];
    let var_1 = !vec4<bool>(false, any(vec4<bool>(true, true, true, true)), (_wgslsmith_f_op_f32(350f - 1338f) == _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(arg_0.b.x, 7u)]))) || true, true);
    var var_2 = vec2<i32>(var_0.c.x, -2147483647i);
    var var_3 = !(!var_1);
    return -112f;
}

fn func_1(arg_0: vec2<i32>) -> vec2<u32> {
    let var_0 = global2[_wgslsmith_index_u32(reverseBits(u_input.b.x), 15u)];
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-677f, -864f), _wgslsmith_f_op_f32(1176f - 256f))))) * -320f), _wgslsmith_f_op_f32(select(1026f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-587f - 2367f), -928f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(48343u, 15u)])), -1000f)), true))));
    global2 = array<Struct_2, 15>();
    let var_2 = (true == any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))) || (_wgslsmith_f_op_f32(func_2(Struct_2(abs(vec4<u32>(1483u, var_0.b.x, 64293u, var_0.b.x)), ~u_input.b, vec2<i32>(3368i, -79457i)))) > -2397f);
    global3 = ~arg_0.x;
    return vec2<u32>(min(_wgslsmith_mod_u32(12050u, var_0.a.x), u_input.b.x) << (_wgslsmith_sub_u32(abs(5646u), _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.b.x, 4294967295u), ~var_0.a.x, 63880u)) % 32u), (_wgslsmith_clamp_u32(1u, _wgslsmith_div_u32(1u, var_0.a.x), _wgslsmith_dot_vec4_u32(var_0.a, vec4<u32>(var_0.b.x, u_input.b.x, var_0.a.x, u_input.b.x))) & 4294967295u) | (_wgslsmith_clamp_u32(_wgslsmith_add_u32(var_0.a.x, 1u), min(46343u, var_0.b.x), 16782u) & reverseBits(_wgslsmith_mod_u32(42845u, u_input.b.x))));
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    global3 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(reverseBits(-27769i), -1i), countOneBits(vec2<i32>(u_input.a, ~u_input.a))), vec2<i32>(_wgslsmith_clamp_i32(u_input.a, _wgslsmith_mod_i32(16003i, u_input.a) & u_input.a, u_input.a), -3857i));
    let var_0 = vec3<bool>(true, all(vec2<bool>(true, true)), !select(u_input.b.x > u_input.b.x, u_input.a != 1i, true));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1086f);
    var var_2 = 52233u;
    let var_3 = global2[_wgslsmith_index_u32(3155u, 15u)];
    return Struct_2(var_3.a | vec4<u32>(arg_0.c.x, var_3.a.x, 66272u, ~u_input.b.x), vec3<u32>(4294967295u, var_3.b.x, 1u), max(var_3.c, firstLeadingBit(_wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.a, -39594i), vec2<i32>(2951i, -28536i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), false))) || !(9258i < ~firstTrailingBit(14163i));
    let var_1 = vec3<bool>(var_0, var_0, true);
    var var_2 = select(true, true, true);
    var_2 = !var_1.x && !var_0;
    var var_3 = !var_1;
    let var_4 = func_4(Struct_1(~vec2<u32>(abs(126780u), ~u_input.b.x), _wgslsmith_mod_u32(~(~u_input.b.x), 80402u), func_1(vec2<i32>(-20011i, 1i & u_input.a)), _wgslsmith_f_op_f32(-418f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-299f - 3301f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(173f, -1000f)), 1000f, true)))));
    var var_5 = Struct_1(vec2<u32>(countOneBits(_wgslsmith_div_u32(var_4.b.x, var_4.a.x)) | 4294967295u, _wgslsmith_mod_u32(10745u, ~0u)), 1u, ~(~u_input.b.zx), -438f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-450f - -430f) + _wgslsmith_f_op_f32(max(-145f, 172f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1572f + -1494f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_5.d, var_5.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.e, 541f)), vec2<bool>(var_0, true))) * vec2<f32>(_wgslsmith_f_op_f32(sign(var_5.d)), _wgslsmith_f_op_f32(ceil(-1000f))))));
}

