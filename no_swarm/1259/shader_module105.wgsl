struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: vec4<bool>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(Struct_1(-680f, vec3<u32>(19395u, 86708u, 46710u), 0u, vec4<u32>(4294967295u, 1u, 4294967295u, 13914u), 41586u), 0u, vec4<bool>(false, true, false, false), 1u), Struct_4(Struct_1(-1520f, vec3<u32>(25343u, 4294967295u, 1u), 0u, vec4<u32>(78096u, 66269u, 113908u, 0u), 86465u), 0u, vec4<bool>(true, true, false, false), 51842u), Struct_4(Struct_1(468f, vec3<u32>(4294967295u, 0u, 30859u), 0u, vec4<u32>(0u, 1u, 1u, 55035u), 1u), 0u, vec4<bool>(true, false, false, false), 7060u), Struct_4(Struct_1(684f, vec3<u32>(70460u, 0u, 28646u), 35846u, vec4<u32>(0u, 2535u, 73849u, 52378u), 35474u), 4294967295u, vec4<bool>(true, true, true, true), 1u), Struct_4(Struct_1(228f, vec3<u32>(54715u, 0u, 4294967295u), 4294967295u, vec4<u32>(0u, 1u, 5467u, 27703u), 31549u), 4294967295u, vec4<bool>(true, false, false, false), 12888u), Struct_4(Struct_1(1289f, vec3<u32>(25743u, 0u, 4294967295u), 9193u, vec4<u32>(104592u, 0u, 23578u, 1u), 41640u), 0u, vec4<bool>(false, false, true, true), 23219u), Struct_4(Struct_1(-179f, vec3<u32>(1u, 1u, 0u), 34686u, vec4<u32>(0u, 1u, 2311u, 10505u), 65523u), 1387u, vec4<bool>(false, false, true, true), 1u), Struct_4(Struct_1(132f, vec3<u32>(19448u, 4294967295u, 1u), 27646u, vec4<u32>(8010u, 1722u, 53576u, 4294967295u), 31533u), 4294967295u, vec4<bool>(false, false, false, true), 1u), Struct_4(Struct_1(1000f, vec3<u32>(32358u, 8636u, 4294967295u), 4294967295u, vec4<u32>(37667u, 30244u, 1u, 15849u), 23351u), 41198u, vec4<bool>(true, true, false, false), 1u), Struct_4(Struct_1(319f, vec3<u32>(0u, 1u, 3375u), 4294967295u, vec4<u32>(0u, 1u, 99317u, 0u), 19281u), 6261u, vec4<bool>(false, true, false, true), 0u), Struct_4(Struct_1(1788f, vec3<u32>(51006u, 4294967295u, 0u), 10770u, vec4<u32>(38454u, 0u, 1u, 4294967295u), 5144u), 4294967295u, vec4<bool>(true, false, true, true), 1u), Struct_4(Struct_1(-1248f, vec3<u32>(0u, 4294967295u, 61569u), 1u, vec4<u32>(0u, 1u, 4294967295u, 0u), 4294967295u), 14390u, vec4<bool>(true, true, true, true), 1u), Struct_4(Struct_1(510f, vec3<u32>(49434u, 6416u, 0u), 0u, vec4<u32>(53589u, 60346u, 1u, 1u), 4294967295u), 0u, vec4<bool>(false, true, false, false), 0u), Struct_4(Struct_1(-1566f, vec3<u32>(74342u, 4294967295u, 1u), 46452u, vec4<u32>(22845u, 4294967295u, 22866u, 62718u), 4294967295u), 11919u, vec4<bool>(false, false, true, false), 28298u), Struct_4(Struct_1(553f, vec3<u32>(40872u, 23987u, 78231u), 37622u, vec4<u32>(1u, 55544u, 9507u, 19014u), 30385u), 41793u, vec4<bool>(true, false, true, false), 0u), Struct_4(Struct_1(-682f, vec3<u32>(20705u, 101545u, 7555u), 39272u, vec4<u32>(0u, 4294967295u, 16026u, 4294967295u), 4294967295u), 9335u, vec4<bool>(true, true, true, true), 1u), Struct_4(Struct_1(454f, vec3<u32>(54161u, 57749u, 0u), 0u, vec4<u32>(4294967295u, 18224u, 4294967295u, 37195u), 50924u), 51544u, vec4<bool>(true, false, true, false), 27484u), Struct_4(Struct_1(645f, vec3<u32>(4294967295u, 7402u, 0u), 10018u, vec4<u32>(1u, 26436u, 50310u, 4294967295u), 35778u), 0u, vec4<bool>(false, false, false, true), 4294967295u), Struct_4(Struct_1(-340f, vec3<u32>(69977u, 0u, 1u), 13408u, vec4<u32>(96550u, 105833u, 11219u, 20871u), 55011u), 76540u, vec4<bool>(true, false, true, false), 1u), Struct_4(Struct_1(-598f, vec3<u32>(21804u, 4294967295u, 71226u), 4294967295u, vec4<u32>(25668u, 19718u, 4294967295u, 54014u), 1u), 24519u, vec4<bool>(true, true, true, false), 1u), Struct_4(Struct_1(1657f, vec3<u32>(1u, 0u, 16031u), 1u, vec4<u32>(4294967295u, 4294967295u, 20753u, 54632u), 37340u), 1u, vec4<bool>(false, true, false, true), 3145u), Struct_4(Struct_1(561f, vec3<u32>(85935u, 24813u, 0u), 0u, vec4<u32>(1737u, 0u, 1u, 1u), 2807u), 1u, vec4<bool>(false, false, false, true), 1u), Struct_4(Struct_1(1018f, vec3<u32>(58867u, 1u, 58423u), 0u, vec4<u32>(1u, 4294967295u, 1u, 0u), 32789u), 104206u, vec4<bool>(false, false, true, false), 16625u), Struct_4(Struct_1(-395f, vec3<u32>(1103u, 0u, 1u), 65067u, vec4<u32>(1u, 13434u, 1u, 4294967295u), 0u), 54685u, vec4<bool>(true, false, false, false), 4294967295u), Struct_4(Struct_1(-235f, vec3<u32>(3362u, 4294967295u, 4695u), 9073u, vec4<u32>(1u, 4294967295u, 36428u, 1u), 24392u), 1u, vec4<bool>(false, true, true, true), 4294967295u));

var<private> global1: i32;

var<private> global2: Struct_2;

var<private> global3: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(vec2<f32>(-711f, 1419f)), Struct_3(vec2<f32>(580f, 296f)), Struct_3(vec2<f32>(-365f, 1030f)), Struct_3(vec2<f32>(912f, 1587f)), Struct_3(vec2<f32>(1435f, 1000f)), Struct_3(vec2<f32>(-134f, -943f)), Struct_3(vec2<f32>(-1118f, 348f)), Struct_3(vec2<f32>(-436f, 1040f)), Struct_3(vec2<f32>(1170f, 1000f)), Struct_3(vec2<f32>(-499f, -2039f)), Struct_3(vec2<f32>(-147f, -2361f)), Struct_3(vec2<f32>(187f, -126f)), Struct_3(vec2<f32>(851f, 1811f)), Struct_3(vec2<f32>(-978f, -1000f)), Struct_3(vec2<f32>(794f, -882f)), Struct_3(vec2<f32>(-1128f, -800f)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-459f, global2.a.a))), ~firstLeadingBit(vec3<u32>(_wgslsmith_mod_u32(global2.b.b.x, 4294967295u), ~41705u, _wgslsmith_div_u32(global2.a.e, 1u))), ~_wgslsmith_dot_vec2_u32(u_input.e.yz, ~_wgslsmith_sub_vec2_u32(global2.a.b.zx, global2.d.wy)), ~_wgslsmith_add_vec4_u32(u_input.e, firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(global2.d.x, 1u, u_input.e.x, 0u), u_input.e))), u_input.e.x);
    global0 = array<Struct_4, 25>();
    var var_1 = -select(abs(max(24515i, max(39668i, u_input.b))), -_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 0i), vec2<i32>(1i, -2147483647i)), vec2<i32>(u_input.c, -4615i)), global2.c);
    var var_2 = select(reverseBits(_wgslsmith_dot_vec2_u32(var_0.b.zz, _wgslsmith_sub_vec2_u32(global2.d.wy, vec2<u32>(0u, 0u)))) >> (0u % 32u), 4294967295u, all(vec4<bool>(u_input.d < (u_input.d & u_input.d), global2.c, true, global2.c)));
    let var_3 = global3[_wgslsmith_index_u32(u_input.e.x, 16u)];
    return ~(~min(global2.b.e, ~var_0.d.x));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    global1 = u_input.a;
    global2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -587f), ~vec3<u32>(func_3(), select(1u, 44009u, false), min(16252u, global2.a.b.x)), 0u, vec4<u32>(arg_1.e, ~4294967295u, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(arg_1.d.x, 1u, 4294967295u, global2.a.e)), arg_2.d), ~(~arg_2.e)), arg_1.c), arg_2, arg_3.x, countOneBits(countOneBits(~firstLeadingBit(vec4<u32>(global2.a.d.x, global2.b.b.x, u_input.e.x, u_input.e.x)))));
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -374f), _wgslsmith_f_op_f32(select(global2.a.a, -853f, true)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_2.a) - vec2<f32>(2091f, -1000f)))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_0)))), arg_1.a)), _wgslsmith_div_vec3_u32(global2.a.d.yzw, vec3<u32>(1u, countOneBits(11226u), arg_1.c)), u_input.e.x, u_input.e, arg_2.c), global2.b, true, arg_2.d);
    var var_2 = !(!arg_3.x);
    return global2.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_4, arg_3: u32) -> u32 {
    var var_0 = Struct_2(global2.a, Struct_1(_wgslsmith_div_f32(-292f, _wgslsmith_f_op_f32(global2.a.a - _wgslsmith_f_op_f32(ceil(-1454f)))), select(select(countOneBits(vec3<u32>(arg_1.e, 0u, arg_0.c)), reverseBits(arg_1.d.yxz), arg_2.c.zww), min(arg_0.b, select(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(1u, 4294967295u, global2.a.e), vec3<bool>(global2.c, true, true))), any(!arg_2.c.zxy)), max(~u_input.e.x, ~1u) & 1u, select(reverseBits(arg_1.d), select(vec4<u32>(arg_1.b.x, 0u, 88729u, 12973u), ~u_input.e, vec4<bool>(arg_2.c.x, arg_2.c.x, global2.c, arg_2.c.x)), vec4<bool>(true, arg_2.c.x, false, -456f > arg_2.a.a)), ~0u), !arg_2.c.x, vec4<u32>(abs(~(~19392u)), countOneBits(u_input.e.x) << (arg_2.b % 32u), arg_2.d, 1u));
    global3 = array<Struct_3, 16>();
    let var_1 = vec2<bool>(_wgslsmith_mult_i32(select(~(-55402i), u_input.d & u_input.d, var_0.c), select(1i, -2147483647i >> (u_input.e.x % 32u), var_0.c)) >= _wgslsmith_clamp_i32(u_input.a, u_input.b, u_input.c), (arg_2.a.b.x & ~2963u) > 1u);
    let var_2 = Struct_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.a) * -1406f), _wgslsmith_add_vec3_u32(global2.d.yxy | _wgslsmith_add_vec3_u32(arg_1.d.yzx, vec3<u32>(1u, 57281u, global2.a.e)), global2.a.d.zzy), 4294967295u, ~vec4<u32>(0u, arg_3, select(0u, var_0.d.x, true), 0u), 27825u), arg_1.e, vec4<bool>(any(vec4<bool>(select(global2.c, var_1.x, false), true, false, !global2.c)), true | (_wgslsmith_div_u32(arg_0.e, u_input.e.x) > _wgslsmith_mod_u32(1u, 8812u)), false, global2.a.a <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1371f + 620f))), ~arg_1.c);
    global3 = array<Struct_3, 16>();
    return ~min(arg_3, select(_wgslsmith_sub_u32(_wgslsmith_mult_u32(59066u, 39973u), arg_1.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(44807u, 6812u, 4294967295u), select(var_2.a.d.yxw, vec3<u32>(u_input.e.x, arg_2.d, 1u), vec3<bool>(false, var_0.c, false))), global2.c));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: i32, arg_3: bool) -> vec2<i32> {
    global2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(-arg_1.a.x)))), vec3<u32>(global2.a.c, global2.a.b.x, abs(26798u)) << ((~vec3<u32>(157u, 16362u, global2.a.c) & ~global2.a.d.wxy) % vec3<u32>(32u)), global2.a.e, _wgslsmith_mult_vec4_u32(abs(u_input.e), firstLeadingBit(global2.a.d ^ u_input.e)), ~(global2.a.e >> (0u % 32u)) & 304u), global2.b, true, _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.e, vec4<u32>(u_input.e.x | 0u, 4294967295u, _wgslsmith_mult_u32(global2.b.c, global2.a.c), 0u)), vec4<u32>(~(~global2.b.d.x), 8869u, func_4(global2.b, func_2(474f, global2.a, Struct_1(arg_0.x, vec3<u32>(1u, global2.a.d.x, global2.b.c), 65409u, vec4<u32>(1u, 21039u, u_input.e.x, 4294967295u), 1u), vec4<bool>(true, true, false, false)), Struct_4(global2.b, u_input.e.x, vec4<bool>(true, global2.c, false, global2.c), 1u), u_input.e.x), firstLeadingBit(0u))));
    var var_0 = global2.b;
    var var_1 = ~var_0.d;
    global2 = Struct_2(global2.a, func_2(112f, Struct_1(251f, vec3<u32>(var_1.x, ~1u, var_1.x), 4294967295u, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, global2.d.x, 520u, 20555u), global2.d, vec4<u32>(global2.d.x, 26984u, 40738u, var_1.x)), ~global2.a.c), func_2(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)), global2.a, func_2(func_2(arg_1.a.x, Struct_1(var_0.a, global2.b.b, u_input.e.x, global2.a.d, u_input.e.x), global2.a, vec4<bool>(arg_3, false, arg_3, global2.c)).a, Struct_1(1463f, var_0.b, 4294967295u, vec4<u32>(u_input.e.x, 4294967295u, 39846u, 3422u), 15622u), global2.b, !vec4<bool>(global2.c, arg_3, false, arg_3)), vec4<bool>(any(vec3<bool>(false, false, true)), arg_3, all(vec4<bool>(false, true, arg_3, global2.c)), arg_3)), vec4<bool>(!(global2.c || false), all(!vec2<bool>(global2.c, global2.c)), arg_3, u_input.a <= u_input.c)), arg_3 | true, ~(~vec4<u32>(_wgslsmith_mod_u32(1u, var_0.e), ~global2.a.d.x, _wgslsmith_dot_vec3_u32(u_input.e.xxw, vec3<u32>(1u, var_1.x, 1u)), firstLeadingBit(1u))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-2319f * 974f), var_0.d.xxx, ~global2.d.x, _wgslsmith_mod_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec2_u32(var_1.yy, u_input.e.yw), ~59282u, u_input.e.x, var_0.d.x), u_input.e | var_0.d), 9734u);
    return vec2<i32>(countOneBits(u_input.b), firstLeadingBit(1i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 1i;
    var var_0 = ~(-_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.b), vec2<i32>(u_input.a, u_input.a)) | ~vec2<i32>(8750i, u_input.a), select(vec2<i32>(-12895i, -42649i) | vec2<i32>(u_input.b, 31834i), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, u_input.a), vec2<i32>(u_input.d, u_input.b)), true)));
    var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_clamp_i32(u_input.c, 46750i, -21559i), var_0.x), vec2<i32>(reverseBits(var_0.x), -22042i));
    var_0 = func_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1673f, 2151f) * vec2<f32>(global2.b.a, 855f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b.a, 582f) - vec2<f32>(764f, 1288f))))))), global3[_wgslsmith_index_u32(~u_input.e.x, 16u)], 2147483647i, !global2.c);
    let var_1 = global2.b;
    var var_2 = func_2(var_1.a, Struct_1(_wgslsmith_f_op_f32(round(-369f)), firstTrailingBit(vec3<u32>(~global2.d.x, ~u_input.e.x, ~u_input.e.x)), u_input.e.x, _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e.x, 50600u, 21449u, var_1.b.x), func_2(-1598f, Struct_1(global2.a.a, vec3<u32>(34631u, 4509u, 0u), var_1.d.x, u_input.e, 0u), global2.a, vec4<bool>(global2.c, global2.c, global2.c, global2.c)).d, vec4<u32>(22476u, 93260u, 60343u, u_input.e.x) >> (vec4<u32>(var_1.d.x, 4294967295u, 35559u, 0u) % vec4<u32>(32u))), firstLeadingBit(global2.b.d)), u_input.e.x), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a))), -1056f), _wgslsmith_div_vec3_u32(~firstLeadingBit(u_input.e.zzw), ~global2.d.xzz), var_1.e, _wgslsmith_sub_vec4_u32(var_1.d, u_input.e), ~_wgslsmith_mod_u32(u_input.e.x, _wgslsmith_add_u32(var_1.d.x, u_input.e.x))), vec4<bool>(all(vec2<bool>(-125f >= global2.a.a, true)), global2.c, global2.c, all(!vec4<bool>(true, false, global2.c, false))));
    var var_3 = ~countOneBits(~_wgslsmith_div_vec3_i32(max(vec3<i32>(var_0.x, -27938i, u_input.c), vec3<i32>(var_0.x, 1180i, u_input.d)), vec3<i32>(87550i, var_0.x, var_0.x) << (var_2.b % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(471f, var_1.a, -2560f))))))), ~select(var_1.d, global2.b.d, global2.c), var_1.d.zy);
}

