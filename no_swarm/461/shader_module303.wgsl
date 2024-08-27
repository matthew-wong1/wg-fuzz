struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<i32>,
    d: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 25> = array<vec2<i32>, 25>(vec2<i32>(-2492i, 65438i), vec2<i32>(-19292i, 1i), vec2<i32>(1i, 18121i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-44658i, 14183i), vec2<i32>(0i, 2147483647i), vec2<i32>(15151i, i32(-2147483648)), vec2<i32>(-1i, -1916i), vec2<i32>(0i, 0i), vec2<i32>(-1i, 34728i), vec2<i32>(-45462i, 49027i), vec2<i32>(0i, 1i), vec2<i32>(0i, -1i), vec2<i32>(48379i, 0i), vec2<i32>(0i, 2147483647i), vec2<i32>(1i, 9676i), vec2<i32>(-36516i, -1i), vec2<i32>(-1i, 0i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(10816i, i32(-2147483648)), vec2<i32>(-13691i, 3927i), vec2<i32>(0i, 2147483647i), vec2<i32>(-58772i, 14121i), vec2<i32>(-29256i, 40857i));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> vec4<u32> {
    global0 = array<vec2<i32>, 25>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(arg_0.a)), vec4<u32>(firstTrailingBit(max(47475u, 20826u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.b.x, arg_0.b.x, arg_0.b.x), firstLeadingBit(arg_0.b.zwz)), _wgslsmith_div_u32(arg_0.b.x, arg_0.b.x) >> (1u % 32u), _wgslsmith_add_u32(~28260u, _wgslsmith_dot_vec2_u32(arg_0.b.xx, arg_0.b.yw))) ^ min(_wgslsmith_mult_vec4_u32(arg_0.b >> (arg_0.b % vec4<u32>(32u)), arg_0.b), arg_0.b));
    var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(arg_0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-arg_0.a))))), ~vec4<u32>(54903u & countOneBits(var_0.b.x), _wgslsmith_div_u32(var_0.b.x, firstTrailingBit(10398u)), _wgslsmith_mod_u32(var_0.b.x, 4294967295u), _wgslsmith_sub_u32(arg_0.b.x & var_0.b.x, reverseBits(arg_0.b.x))));
    var var_1 = ~abs(_wgslsmith_clamp_i32(2147483647i, ~(-14909i), (-2147483647i ^ arg_1.b) >> (var_0.b.x % 32u)));
    let var_2 = select(select(!arg_1.a, vec2<bool>((var_0.b.x ^ 1u) > 64594u, !(arg_1.b <= 0i)), vec2<bool>(arg_1.a.x, _wgslsmith_div_f32(arg_0.a.x, arg_0.a.x) < -604f)), select(arg_1.a, select(!(!vec2<bool>(arg_1.a.x, true)), vec2<bool>(arg_1.a.x, false), arg_1.a), vec2<bool>(any(select(vec4<bool>(arg_1.a.x, true, arg_1.a.x, false), vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x), false)), arg_1.a.x)), arg_1.a);
    return vec4<u32>(_wgslsmith_dot_vec3_u32(arg_0.b.yzx, arg_0.b.wxy), var_0.b.x, _wgslsmith_clamp_u32(var_0.b.x, arg_0.b.x, ~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, 4294967295u, 90517u, arg_0.b.x)), ~arg_0.b)), 0u);
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = ~(u_input.a << (vec4<u32>(_wgslsmith_add_u32(1u, ~67861u), _wgslsmith_clamp_u32(1u, 1u, ~4294967295u), abs(64565u), 1u) % vec4<u32>(32u)));
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1327f, _wgslsmith_f_op_f32(select(683f, -364f, true)), false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -234f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-427f, 1530f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-371f))))), abs(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(1u, 0u, 34962u, 66825u)), func_3(Struct_1(vec4<f32>(312f, -519f, 875f, -654f), vec4<u32>(4294967295u, 30993u, 0u, 1u)), Struct_3(vec2<bool>(true, true), arg_0, vec3<f32>(209f, 310f, -1000f))))));
    var var_2 = vec2<u32>(~var_1.b.x, ~var_1.b.x);
    let var_3 = !(!vec3<bool>(true, all(vec2<bool>(false, false)) || true, all(vec4<bool>(false, true, true, true))));
    var_2 = var_1.b.wy;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(752f, var_1.a.x, var_1.a.x, var_1.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(254f, 1000f, -681f, 1523f) + var_1.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-393f, -457f, var_1.a.x, var_1.a.x)) + _wgslsmith_f_op_vec4_f32(var_1.a + var_1.a)))), vec4<u32>(4294967295u, ~var_1.b.x, firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.x, 23783u, 0u, var_1.b.x), var_1.b)), _wgslsmith_mod_u32(var_2.x, countOneBits(22331u))) & var_1.b);
}

fn func_1() -> bool {
    var var_0 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(-417f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1329f))), _wgslsmith_f_op_f32(max(661f, _wgslsmith_f_op_f32(f32(-1f) * -1182f))), -1878f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -722f, 288f, -1000f), vec4<f32>(-582f, 766f, 304f, -170f), true)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-765f, -345f, 112f, -564f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2129f, -443f, -1900f, -2404f))))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), ~(~vec4<u32>(60114u, 80715u, 1u, 57404u))));
    var_0 = func_2(0i);
    var var_1 = vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2600f * -560f))))), _wgslsmith_f_op_f32(round(var_0.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1677f)))));
    var var_2 = vec2<u32>(func_2(select(u_input.a.x, u_input.a.x, false)).b.x ^ 4294967295u, ~(~_wgslsmith_div_u32(var_0.b.x, var_0.b.x))) << (var_0.b.xx % vec2<u32>(32u));
    var var_3 = _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(~(-vec3<i32>(u_input.a.x, u_input.a.x, -4096i)), vec3<i32>(~u_input.a.x, u_input.a.x, _wgslsmith_div_i32(1i ^ u_input.a.x, 1i))), u_input.a.yyx ^ ~firstTrailingBit(u_input.a.wzy));
    return !(!all(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), vec3<bool>(false, false, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false))));
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: u32) -> f32 {
    let var_0 = ~(i32(-1i) * -3953i);
    global0 = array<vec2<i32>, 25>();
    global0 = array<vec2<i32>, 25>();
    global0 = array<vec2<i32>, 25>();
    let var_1 = 0u;
    return arg_2.a.x;
}

fn func_5(arg_0: vec2<i32>, arg_1: f32) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, -1886f)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1431f, arg_1, arg_1, arg_1)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1308f, 384f, arg_1, -1048f)))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(449f * 1752f), _wgslsmith_div_f32(arg_1, -121f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(arg_1 - arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_div_f32(-320f, -778f)), arg_1), vec4<bool>(true, true, true, true))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_1)))), _wgslsmith_f_op_f32(f32(-1f) * -3321f), _wgslsmith_f_op_f32(round(arg_1))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-895f, 815f, arg_1, _wgslsmith_f_op_f32(f32(-1f) * -534f))))));
    var var_1 = var_0.x;
    let var_2 = arg_0.x;
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -216f, 1f) + _wgslsmith_f_op_vec3_f32(-var_0.xzz)), Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + 487f), _wgslsmith_div_f32(var_0.x, -458f)), _wgslsmith_f_op_f32(-754f - _wgslsmith_f_op_f32(max(1005f, var_0.x))), arg_1, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1 + -606f)))), ~vec4<u32>(1u, 1u, 1u, 1u)), vec4<i32>(-countOneBits(_wgslsmith_mod_i32(67927i, 2147483647i)), -1i, arg_0.x, reverseBits(arg_0.x)), _wgslsmith_sub_i32(min(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), _wgslsmith_dot_vec4_i32(u_input.a, u_input.a)), ~(-var_2)) != u_input.a.x);
    var_1 = var_3.a.x;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1111f), 13843i, _wgslsmith_f_op_vec4_f32(func_5(vec2<i32>(~_wgslsmith_mod_i32(u_input.a.x, 0i), _wgslsmith_add_i32(_wgslsmith_add_i32(-1340i, u_input.a.x), u_input.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -147f)), _wgslsmith_f_op_f32(func_4(func_1(), vec3<bool>(true, true, true), Struct_1(vec4<f32>(154f, -605f, 820f, 1540f), vec4<u32>(4294967295u, 3664u, 43962u, 4294967295u)), 13011u))))), ~(-1i));
}

