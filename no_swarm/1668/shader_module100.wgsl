struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: vec4<f32>,
    d: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(true, false, vec4<i32>(40415i, -23934i, 0i, 26421i), 1u, -5321i), Struct_1(false, true, vec4<i32>(7480i, i32(-2147483648), -9451i, 1i), 4294967295u, i32(-2147483648)), Struct_1(false, false, vec4<i32>(-1i, 0i, 1i, 1i), 47238u, 2489i), Struct_1(false, false, vec4<i32>(1i, -38698i, 46752i, 8302i), 0u, -1i), Struct_1(false, true, vec4<i32>(-34150i, i32(-2147483648), 17925i, i32(-2147483648)), 4294967295u, i32(-2147483648)), Struct_1(true, false, vec4<i32>(-29643i, -15623i, 1386i, -1i), 1u, -22898i), Struct_1(true, true, vec4<i32>(6813i, 28983i, 48151i, 2147483647i), 63251u, i32(-2147483648)), Struct_1(false, true, vec4<i32>(1i, -1i, 1767i, 2147483647i), 12587u, 58233i), Struct_1(true, true, vec4<i32>(2147483647i, 27878i, 2147483647i, -38087i), 21978u, 16705i), Struct_1(false, true, vec4<i32>(-9807i, 1i, 1i, -1790i), 1u, 53572i), Struct_1(false, false, vec4<i32>(0i, -59318i, -1i, 1i), 108421u, 37889i), Struct_1(true, true, vec4<i32>(-1280i, -7934i, 1i, i32(-2147483648)), 35422u, -23452i), Struct_1(false, true, vec4<i32>(16638i, -13835i, 1i, -15855i), 16292u, -31664i), Struct_1(false, true, vec4<i32>(0i, 1i, i32(-2147483648), -48183i), 26975u, i32(-2147483648)), Struct_1(false, true, vec4<i32>(0i, 2147483647i, 0i, 24822i), 1u, 19819i), Struct_1(false, true, vec4<i32>(-14396i, 1i, 2147483647i, 1i), 5997u, i32(-2147483648)), Struct_1(true, true, vec4<i32>(0i, -13699i, i32(-2147483648), -60893i), 4294967295u, -23944i), Struct_1(true, false, vec4<i32>(-25261i, 2147483647i, -6375i, 26333i), 1u, -3693i), Struct_1(true, true, vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), i32(-2147483648)), 32130u, -22596i), Struct_1(false, true, vec4<i32>(-1i, 0i, 2147483647i, -10374i), 4294967295u, 7427i), Struct_1(true, false, vec4<i32>(77063i, 2147483647i, -1i, 2147483647i), 1u, -15846i), Struct_1(false, true, vec4<i32>(-15260i, 96591i, -10904i, 6861i), 0u, -35838i), Struct_1(true, true, vec4<i32>(0i, 37072i, -26002i, 76566i), 67818u, -1i), Struct_1(true, true, vec4<i32>(-28682i, 0i, -29134i, -18507i), 37794u, 1i), Struct_1(false, false, vec4<i32>(17346i, 49753i, i32(-2147483648), 56631i), 34941u, i32(-2147483648)));

var<private> global1: f32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: u32) -> u32 {
    var var_0 = !vec2<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), true);
    global0 = array<Struct_1, 25>();
    var var_1 = vec3<bool>(true, all(select(vec3<bool>(true, false, any(vec3<bool>(true, false, var_0.x))), select(select(vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, true, var_0.x), var_0.x), select(vec3<bool>(true, true, true), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, var_0.x, true)), select(vec3<bool>(false, var_0.x, true), vec3<bool>(var_0.x, var_0.x, var_0.x), false)), vec3<bool>(false, all(vec3<bool>(var_0.x, false, var_0.x)), false))), var_0.x);
    var var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(~(i32(-1i) * -u_input.a.x), 1i), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), select(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, -2147483647i), !var_1.yx)) << (_wgslsmith_mod_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(0u, arg_1.x)), arg_1) % vec2<u32>(32u)));
    let var_3 = Struct_3(max(~(i32(-1i) * -u_input.a.x), _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(5079i, 9666i, u_input.b.x, var_2.x) & vec4<i32>(7198i, var_2.x, 12372i, u_input.a.x)) & var_2.x), Struct_1(var_1.x, (_wgslsmith_f_op_f32(-arg_0.x) <= 1176f) || false, min(vec4<i32>(min(u_input.b.x, 2147483647i), u_input.b.x, u_input.b.x, 13038i), vec4<i32>(_wgslsmith_mod_i32(-1i, var_2.x), 27316i, ~2147483647i, 23190i << (arg_2 % 32u))), arg_1.x, u_input.a.x), global0[_wgslsmith_index_u32(57252u, 25u)], vec2<f32>(arg_0.x, arg_0.x));
    return _wgslsmith_sub_u32(arg_1.x, arg_2);
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: i32, arg_3: u32) -> vec2<f32> {
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    return vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2432f), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(714f, -406f)))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_3) -> f32 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1468f, arg_0.x))) * arg_0.x) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_1.d.x))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * arg_0.x));
    let var_0 = Struct_1(arg_1.c.a, select(true & arg_1.c.b, true & any(vec4<bool>(true, arg_1.b.a, arg_1.c.b, false)), arg_1.c.a), -(vec4<i32>(_wgslsmith_mult_i32(u_input.b.x, 38488i), _wgslsmith_div_i32(1i, 11502i), i32(-1i) * -1i, 1i) >> (firstTrailingBit(firstLeadingBit(vec4<u32>(0u, 6336u, 10492u, arg_1.b.d))) % vec4<u32>(32u))), arg_1.c.d, firstTrailingBit(-2147483647i));
    let var_1 = 4294967295u;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, -1470f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(734f, _wgslsmith_f_op_f32(floor(arg_1.d.x)))));
    var var_2 = ~(~vec3<u32>(~4294967295u, abs(~var_0.d), _wgslsmith_sub_u32(arg_1.c.d, var_0.d)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.x)));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec3<bool>) -> vec2<u32> {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2524f)) - _wgslsmith_f_op_f32(742f - -339f)) + _wgslsmith_f_op_f32(f32(-1f) * -945f))));
    var var_0 = global0[_wgslsmith_index_u32(firstTrailingBit(0u), 25u)];
    let var_1 = abs(abs(49621i));
    var var_2 = -2121f;
    var_2 = _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(431f, -673f, 2170f), vec3<f32>(1610f, -843f, -1372f)))), vec3<f32>(-927f, -869f, _wgslsmith_f_op_f32(floor(424f))), select(vec3<bool>(var_0.b, var_0.b, false), arg_2, vec3<bool>(true, var_0.a, false))))), Struct_3(-2450i, Struct_1(false, var_0.b, vec4<i32>(-1i) * -vec4<i32>(-58903i, var_1, var_0.c.x, 32821i), ~arg_0 << (~var_0.d % 32u), i32(-1i) * -u_input.a.x), Struct_1(var_0.a, any(!vec2<bool>(var_0.a, var_0.a)), vec4<i32>(-u_input.b.x, 1i, 1i, ~(-16954i)), var_0.d, _wgslsmith_mod_i32(arg_1 & var_0.e, -u_input.b.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1576f, -579f) - _wgslsmith_f_op_vec2_f32(func_4(var_0.d >> (964u % 32u), select(true, true, false), 1i << (1u % 32u), func_3(vec2<f32>(-566f, -704f), vec2<u32>(arg_0, 13579u), var_0.d)))))));
    return vec2<u32>(max(28655u, abs(var_0.d)), var_0.d);
}

fn func_1(arg_0: bool) -> bool {
    var var_0 = min(vec2<u32>(60374u, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(25569u, 15443u), _wgslsmith_div_vec2_u32(vec2<u32>(36850u, 13035u), vec2<u32>(1u, 2405u))))), max(~countOneBits(func_2(14337u, 0i, vec3<bool>(true, arg_0, arg_0))), vec2<u32>(~4294967295u << (1u % 32u), 10464u)));
    var var_1 = vec3<i32>(u_input.a.x | -_wgslsmith_dot_vec2_i32(u_input.b.zz, _wgslsmith_add_vec2_i32(u_input.b.wz, u_input.a)), _wgslsmith_div_i32(1237i, ~min(u_input.b.x, u_input.a.x)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(u_input.b, ~_wgslsmith_add_vec4_i32(u_input.b, vec4<i32>(0i, u_input.b.x, u_input.a.x, u_input.a.x))), firstTrailingBit(-u_input.b.x), _wgslsmith_mult_i32(u_input.b.x, u_input.a.x)));
    var var_2 = !(!vec4<bool>(true, countOneBits(var_0.x) >= 1u, !any(vec2<bool>(arg_0, arg_0)), (1u >> (var_0.x % 32u)) > 71457u));
    let var_3 = countOneBits(u_input.a.x);
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2328f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1583f, _wgslsmith_f_op_f32(ceil(-508f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1405f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-967f - -1374f) - 1323f)))));
    return all(select(var_2.xxx, !(!(!var_2.yyy)), all(vec3<bool>(false || var_2.x, var_2.x, var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(!(!select(false, true, true)), true == all(vec3<bool>(true, true, true)), false, false), vec4<bool>(true, true, true, true), !any(vec4<bool>(true, all(vec2<bool>(true, false)), func_1(true), true)));
    let var_1 = global0[_wgslsmith_index_u32(abs(~35660u), 25u)];
    global0 = array<Struct_1, 25>();
    var var_2 = false;
    var_2 = any(vec3<bool>(true, !(func_1(var_0.x) & all(var_0.zw)), select(false, all(var_0.yxx), !var_1.b)));
    var_2 = all(vec3<bool>(true, !(!var_0.x), all(var_0.wx))) == var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-2701f, 183f, var_1.b)), -1612f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -631f))), -166f), 914f, reverseBits(_wgslsmith_div_i32(var_1.e, -var_1.e)), ~abs(countOneBits(var_1.e)) << (~var_1.d % 32u), var_1.d);
}

