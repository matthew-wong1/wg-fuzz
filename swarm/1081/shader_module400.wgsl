struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<bool>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: i32,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: vec2<f32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_3) -> i32 {
    var var_0 = select(~arg_2.e.b.x, arg_1, all(!select(!vec4<bool>(false, false, arg_0.a.c.x, true), !vec4<bool>(arg_2.b.c.x, arg_0.a.c.x, true, arg_0.a.c.x), select(vec4<bool>(true, true, arg_0.c.c.x, arg_2.b.c.x), vec4<bool>(false, arg_0.a.c.x, true, arg_0.c.c.x), true))));
    var var_1 = Struct_4(arg_2, ~_wgslsmith_clamp_vec3_i32(~u_input.b, vec3<i32>(-u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b.yz, u_input.b.zz), -7708i), arg_2.b.a.yxy & select(vec3<i32>(arg_2.b.a.x, 0i, 36097i), vec3<i32>(arg_2.e.a.x, arg_0.a.a.x, -36344i), vec3<bool>(false, arg_2.e.c.x, true))), vec2<f32>(_wgslsmith_f_op_f32(-arg_2.e.d), 812f), _wgslsmith_sub_u32(~7808u, u_input.c));
    let var_2 = var_1.a;
    var_1 = Struct_4(Struct_3(vec3<f32>(var_2.e.d, var_1.a.e.d, arg_2.e.d), arg_0.c, _wgslsmith_add_i32(1i, -2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.e.d + arg_2.a.x) - var_1.a.b.d), arg_0.c), arg_0.a.a.zyx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-566f, _wgslsmith_f_op_f32(sign(arg_2.e.d))))), countOneBits(~(~1u)) >> (_wgslsmith_dot_vec2_u32(arg_0.c.e.zx, ~vec2<u32>(64855u, arg_0.c.e.x)) % 32u));
    let var_3 = 4294967295u;
    return _wgslsmith_mod_i32(~arg_2.c, abs(arg_2.c));
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = arg_0 < -142f;
    var var_1 = -firstTrailingBit(select(vec4<i32>(-1537i, 72027i, select(27184i, u_input.b.x, false), 2147483647i), vec4<i32>(u_input.b.x, -1i, 1i, ~14959i), vec4<bool>(true, true, u_input.b.x >= u_input.b.x, u_input.e > 1u)));
    global0 = array<Struct_2, 18>();
    var_1 = vec4<i32>(~(-var_1.x), ~abs(func_3(Struct_2(Struct_1(vec4<i32>(0i, 0i, 3371i, var_1.x), vec4<u32>(0u, 1u, 38446u, u_input.e), vec3<bool>(var_0, var_0, true), arg_0, vec4<u32>(u_input.a, 20496u, 1u, u_input.c)), arg_0, Struct_1(vec4<i32>(u_input.b.x, -20401i, u_input.b.x, -7462i), vec4<u32>(23719u, 35192u, 48307u, 0u), vec3<bool>(false, true, false), 425f, vec4<u32>(1u, u_input.d.x, u_input.a, 1u))), u_input.e, Struct_3(vec3<f32>(arg_0, arg_0, arg_0), Struct_1(vec4<i32>(-9933i, var_1.x, var_1.x, -46109i), vec4<u32>(34208u, 1u, 0u, u_input.a), vec3<bool>(var_0, var_0, var_0), -409f, vec4<u32>(u_input.e, 1u, u_input.c, u_input.e)), u_input.b.x, arg_0, Struct_1(vec4<i32>(var_1.x, -169i, 11976i, var_1.x), vec4<u32>(u_input.d.x, u_input.e, u_input.c, 1840u), vec3<bool>(var_0, var_0, var_0), arg_0, vec4<u32>(u_input.d.x, u_input.e, u_input.e, 1u))))), 2147483647i, abs(_wgslsmith_add_i32(25840i, _wgslsmith_mod_i32(-1i, var_1.x)))) << (max(~select(min(vec4<u32>(25392u, 39977u, u_input.a, u_input.c), vec4<u32>(u_input.c, u_input.c, 1u, u_input.d.x)), reverseBits(vec4<u32>(u_input.d.x, u_input.a, 33820u, 1u)), var_0), vec4<u32>(~(~u_input.a), ~0u, 15868u, u_input.a)) % vec4<u32>(32u));
    global0 = array<Struct_2, 18>();
    return _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -130f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0 + -665f)))), true));
}

fn func_1() -> Struct_3 {
    global0 = array<Struct_2, 18>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-173f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-127f * -708f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(1525f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(579f - 2450f)), 661f, true))));
    global0 = array<Struct_2, 18>();
    var var_1 = Struct_1(~vec4<i32>(-select(-5185i, 28954i, true), _wgslsmith_dot_vec3_i32(u_input.b, u_input.b), 51600i, ~_wgslsmith_mod_i32(u_input.b.x, -18869i)), vec4<u32>(u_input.d.x, firstLeadingBit(abs(abs(65101u))), u_input.d.x, 1u), vec3<bool>(true, true, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 1u, 71146u, u_input.d.x), ~vec4<u32>(4294967295u, 2528u, u_input.c, 39187u)) >= (0u | u_input.e)), _wgslsmith_div_f32(-801f, -393f), _wgslsmith_mult_vec4_u32(~reverseBits(~vec4<u32>(1u, u_input.c, 4294967295u, 32710u)), ~(~vec4<u32>(u_input.e, 0u, u_input.c, 1u))));
    var var_2 = ~(~firstTrailingBit(~abs(4294967295u)));
    return Struct_3(var_0.zxz, Struct_1(_wgslsmith_clamp_vec4_i32(-vec4<i32>(var_1.a.x, u_input.b.x, var_1.a.x, var_1.a.x), vec4<i32>(_wgslsmith_mult_i32(var_1.a.x, u_input.b.x), _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, -6860i), var_1.a.x | u_input.b.x, -4515i), vec4<i32>(1i, func_3(global0[_wgslsmith_index_u32(u_input.d.x, 18u)], 1u, Struct_3(vec3<f32>(770f, -421f, var_1.d), Struct_1(vec4<i32>(0i, u_input.b.x, u_input.b.x, 1i), var_1.e, var_1.c, 147f, var_1.e), var_1.a.x, -100f, Struct_1(var_1.a, vec4<u32>(var_1.e.x, 31928u, 1u, 64055u), var_1.c, var_0.x, var_1.e))), _wgslsmith_dot_vec2_i32(var_1.a.zy, u_input.b.xz), ~1i)), reverseBits(~max(var_1.e, var_1.e)), select(!var_1.c, var_1.c, var_0.x != _wgslsmith_f_op_f32(var_1.d + 1172f)), _wgslsmith_div_f32(-541f, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(1135f + var_1.d))), var_1.e), -(-5600i ^ -u_input.b.x), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d + var_1.d))))), Struct_1(~(firstLeadingBit(var_1.a) ^ var_1.a), ~var_1.e, !vec3<bool>(all(vec4<bool>(true, true, var_1.c.x, var_1.c.x)), all(var_1.c), var_1.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1115f, -286f))) + _wgslsmith_f_op_f32(var_1.d + var_1.d)), var_1.e));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: vec4<f32>) -> Struct_2 {
    global0 = array<Struct_2, 18>();
    var var_0 = func_1();
    let var_1 = select(select(!(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, var_0.b.c.x)), select(vec4<bool>(true, var_0.b.c.x, var_0.b.c.x || arg_0.x, arg_0.x), vec4<bool>(!arg_0.x, all(var_0.b.c), false, arg_0.x), false), arg_1.a.e.c.x), select(select(select(!vec4<bool>(var_0.b.c.x, true, arg_1.a.b.c.x, var_0.b.c.x), !vec4<bool>(var_0.e.c.x, var_0.e.c.x, var_0.b.c.x, arg_0.x), var_0.b.c.x != var_0.b.c.x), !vec4<bool>(false, false, false, arg_0.x), false), !(!select(vec4<bool>(false, true, true, arg_1.a.e.c.x), vec4<bool>(true, arg_0.x, arg_1.a.e.c.x, true), vec4<bool>(true, arg_1.a.e.c.x, true, true))), !((1312f > var_0.e.d) || (arg_1.a.b.c.x | false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.x * -865f))) > 946f);
    let var_2 = true;
    let var_3 = arg_2.x;
    return Struct_2(var_0.b, 1000f, var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(!select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, false), true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), Struct_4(func_1(), u_input.b, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1068f), _wgslsmith_f_op_f32(-215f - -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -438f)), 43774u), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(533f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(432f))))), 544f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1689f)), _wgslsmith_f_op_f32(ceil(186f)))), _wgslsmith_f_op_f32(f32(-1f) * -998f)));
    var var_1 = func_4(!var_0.c.c, Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.d, 1000f, var_0.b) + vec3<f32>(var_0.a.d, 1327f, var_0.b))), var_0.a, -24300i, 851f, func_4(var_0.a.c, Struct_4(Struct_3(vec3<f32>(515f, 617f, -1843f), var_0.a, 66893i, -1000f, Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, var_0.a.a.x), vec4<u32>(var_0.c.e.x, 47204u, 61191u, u_input.a), var_0.c.c, var_0.a.d, vec4<u32>(u_input.d.x, var_0.c.e.x, 49663u, var_0.a.b.x))), u_input.b, vec2<f32>(1252f, 516f), 0u), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, -1169f, -974f, -1000f) - vec4<f32>(-143f, var_0.c.d, 1840f, var_0.c.d))).a), func_1().e.a.wwy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-728f, 569f)))) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.b, var_0.a.d)))), 4294967295u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-318f, var_0.b, -1343f, var_0.a.d))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, -1000f, -127f, -2141f) - vec4<f32>(var_0.b, var_0.c.d, 857f, 318f))))));
    var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(func_1().e.b.x, ~countOneBits(max(u_input.c, var_1.a.e.x))), 18u)];
    var var_2 = var_1.c.b;
    let var_3 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(func_4(!(!vec3<bool>(var_0.a.c.x, var_0.c.c.x, false)), Struct_4(func_1(), var_0.c.a.ywx, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(305f, var_1.b))), var_1.a.e.x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.c.d, var_0.a.d, var_0.a.d, var_0.c.d)))).a.d, var_0.a.d, -974f, -2164f), select(-(~max(vec4<i32>(u_input.b.x, var_1.c.a.x, -6406i, u_input.b.x), vec4<i32>(-40543i, var_3, 57635i, var_3))), -countOneBits(_wgslsmith_mult_vec4_i32(var_1.c.a, vec4<i32>(var_3, var_3, var_3, var_0.c.a.x))), !(!(!vec4<bool>(false, false, var_1.a.c.x, var_1.a.c.x)))), abs(20412u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -133f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(trunc(150f)))) + 1397f)));
}

