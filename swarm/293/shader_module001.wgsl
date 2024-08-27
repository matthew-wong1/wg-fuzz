struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
    c: vec3<bool>,
    d: vec2<f32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(-1687f, 1587f, -878f), vec3<f32>(-153f, 189f, 926f), vec3<f32>(1667f, 752f, 200f), vec3<f32>(1805f, -152f, -1000f), vec3<f32>(225f, 1000f, 552f), vec3<f32>(922f, -1000f, -337f), vec3<f32>(1815f, 236f, 1000f), vec3<f32>(1464f, 359f, 961f), vec3<f32>(-455f, -909f, 2406f), vec3<f32>(-464f, -387f, 1018f), vec3<f32>(-496f, -823f, -215f), vec3<f32>(-1492f, -281f, -1798f), vec3<f32>(874f, 257f, -1492f), vec3<f32>(-1000f, -406f, 990f), vec3<f32>(-1000f, 926f, 1233f), vec3<f32>(1112f, 372f, -1368f), vec3<f32>(411f, 1000f, 1594f), vec3<f32>(1000f, 1000f, 2080f), vec3<f32>(273f, -579f, -440f), vec3<f32>(-643f, -643f, 2260f), vec3<f32>(1051f, -475f, -925f));

var<private> global1: f32 = -1729f;

var<private> global2: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(false, vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec2<f32>(-727f, -547f), vec4<u32>(71380u, 25566u, 60321u, 1u)), Struct_4(false, vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec2<f32>(-622f, 2261f), vec4<u32>(4294967295u, 4294967295u, 10130u, 26413u)), Struct_4(true, vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec2<f32>(1488f, 534f), vec4<u32>(4294967295u, 34047u, 44079u, 41278u)), Struct_4(true, vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec2<f32>(331f, -2138f), vec4<u32>(11234u, 0u, 0u, 3912u)), Struct_4(true, vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec2<f32>(-825f, -1000f), vec4<u32>(0u, 4623u, 29342u, 4294967295u)), Struct_4(false, vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec2<f32>(-1232f, -1113f), vec4<u32>(57924u, 1u, 4294967295u, 4294967295u)), Struct_4(false, vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec2<f32>(-988f, -1637f), vec4<u32>(33393u, 1u, 39377u, 10725u)), Struct_4(true, vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec2<f32>(-1802f, -708f), vec4<u32>(23056u, 3495u, 1u, 1u)), Struct_4(true, vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec2<f32>(1283f, 1569f), vec4<u32>(1270u, 0u, 4294967295u, 0u)), Struct_4(false, vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec2<f32>(-416f, 1507f), vec4<u32>(23044u, 72773u, 0u, 4294967295u)), Struct_4(true, vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec2<f32>(438f, 1000f), vec4<u32>(6586u, 4294967295u, 1u, 16970u)), Struct_4(false, vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec2<f32>(-1003f, 1266f), vec4<u32>(0u, 59096u, 4294967295u, 1u)), Struct_4(true, vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec2<f32>(-596f, -1000f), vec4<u32>(4294967295u, 12640u, 72398u, 1u)), Struct_4(false, vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec2<f32>(-748f, -126f), vec4<u32>(4294967295u, 1u, 29583u, 4294967295u)), Struct_4(true, vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec2<f32>(345f, 1233f), vec4<u32>(6651u, 72636u, 96168u, 0u)), Struct_4(false, vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec2<f32>(1120f, -712f), vec4<u32>(4294967295u, 1u, 4294967295u, 11229u)), Struct_4(true, vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec2<f32>(-1000f, -972f), vec4<u32>(4294967295u, 28494u, 66535u, 1u)));

var<private> global3: i32;

var<private> global4: array<u32, 7> = array<u32, 7>(28124u, 0u, 74701u, 19256u, 36685u, 41652u, 0u);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: bool) -> Struct_1 {
    global3 = u_input.c;
    global2 = array<Struct_4, 17>();
    let var_0 = true;
    return Struct_1(vec4<i32>(-33622i, u_input.c, ~17466i, -1i));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = -arg_2.a.wwy;
    var var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - -1758f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1156f + -652f))), arg_0.x)), _wgslsmith_f_op_f32(floor(464f)), _wgslsmith_f_op_f32(arg_0.x + arg_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -201f, arg_0.x, arg_0.x) + vec4<f32>(281f, -791f, arg_0.x, -449f))))), vec4<bool>(false, true, false, all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + var_1.x);
    global2 = array<Struct_4, 17>();
    let var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(var_1.yzz, vec3<f32>(168f, var_1.x, arg_0.x))))))))));
    return select(select(select(vec2<bool>(all(vec3<bool>(true, false, false)), true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), false), select(true, false, true)), vec2<bool>(true, true), all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))) | true), select(select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(false, false), true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, any(vec4<bool>(false, true, false, true))), vec2<bool>(true, true)), true), false);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = func_2(global2[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(~50357u, 7u)], _wgslsmith_dot_vec3_u32(vec3<u32>(27810u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(38003u, 7u)], 7u)], 7u)], 0u), vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 7u)], 7u)], 7u)], global4[_wgslsmith_index_u32(1u, 7u)], 30021u)), _wgslsmith_dot_vec2_u32(vec2<u32>(70895u, 4294967295u), vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 7u)], 7u)], 54813u)), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 7u)], 7u)] | global4[_wgslsmith_index_u32(1u, 7u)]), select(_wgslsmith_mod_vec4_u32(vec4<u32>(2823u, 15784u, 0u, 1u), vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(2741u, 7u)], 7u)], 48915u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)], 7u)], 0u)), select(vec4<u32>(global4[_wgslsmith_index_u32(0u, 7u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(52565u, 7u)], 7u)], 1u, 4294967295u), vec4<u32>(global4[_wgslsmith_index_u32(1u, 7u)], 12141u, 1u, 0u), true), vec4<bool>(arg_1.a.x, false, arg_1.a.x, false))), 7u)], 17u)], vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -482f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1821f)))), _wgslsmith_f_op_f32(-736f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(arg_0.x + arg_0.x)), arg_1.a.x);
    var var_1 = vec4<bool>(arg_1.a.x, true, any(func_3(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(round(arg_0.x)), -395f), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 2762u, global4[_wgslsmith_index_u32(23331u, 7u)], 1u), vec4<u32>(35160u, 8477u, 1u, global4[_wgslsmith_index_u32(1u, 7u)])), vec4<u32>(global4[_wgslsmith_index_u32(27945u, 7u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(17586u, 7u)], 7u)], 7u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)], 33590u) >> (vec4<u32>(62931u, 16570u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 7u)], 7u)], global4[_wgslsmith_index_u32(0u, 7u)]) % vec4<u32>(32u))), Struct_1(-u_input.a))), !all(select(vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, false), !vec4<bool>(arg_1.a.x, arg_1.a.x, false, arg_1.a.x), arg_1.a.x)));
    return Struct_1(min(~_wgslsmith_mult_vec4_i32(-vec4<i32>(var_0.a.x, 2147483647i, u_input.b.x, var_0.a.x), -u_input.b), func_2(Struct_4(true, vec3<bool>(false, var_1.x, arg_1.a.x), vec3<bool>(var_1.x, var_1.x, false), arg_0.yz, vec4<u32>(global4[_wgslsmith_index_u32(44763u, 7u)], 76546u, 0u, 24584u)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-994f, 769f, 163f, arg_0.x))), false).a ^ _wgslsmith_mult_vec4_i32(~u_input.a, vec4<i32>(var_0.a.x, 59321i, u_input.c, -32218i))));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> Struct_3 {
    global0 = array<vec3<f32>, 21>();
    global3 = i32(-1i) * -2147483647i;
    let var_0 = Struct_3(vec4<bool>((global4[_wgslsmith_index_u32(abs(117215u), 7u)] & ~49118u) <= global4[_wgslsmith_index_u32(1u, 7u)], true | any(vec2<bool>(true, true)), all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), 2147483647i != u_input.b.x)), true), _wgslsmith_mod_u32(21230u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(74945u, 7u)], 7u)])), vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 9696u)), ~(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 7u)], 7u)]))), arg_2, vec4<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false)) & false, false, !((global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(55119u, 7u)], 7u)] <= global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], 7u)], 7u)], 7u)], 7u)]) & false), true));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-858f, -1047f, _wgslsmith_f_op_f32(abs(737f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1)) + arg_1)))));
    global1 = arg_1;
    return var_0;
}

fn func_5(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: bool) -> Struct_2 {
    var var_0 = _wgslsmith_add_vec4_i32(u_input.a, _wgslsmith_mult_vec4_i32(vec4<i32>(39718i, func_2(Struct_4(arg_2, arg_0.d.xxx, arg_0.d.yzx, vec2<f32>(332f, -2535f), vec4<u32>(global4[_wgslsmith_index_u32(1145u, 7u)], 24394u, arg_0.b, 1u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1080f, -545f, -684f, 2722f)), true).a.x, countOneBits(896i), arg_0.c.a.x), ~u_input.a));
    var var_1 = global2[_wgslsmith_index_u32(arg_0.b, 17u)];
    let var_2 = _wgslsmith_sub_vec4_u32(var_1.e, var_1.e);
    var var_3 = Struct_2(select(arg_0.a.zxx, !select(var_1.b, func_4(arg_1.x, -956f, Struct_1(u_input.b)).a.yww, true), false));
    var var_4 = Struct_4(true, vec3<bool>(true || func_3(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.d.x, 724f, var_1.d.x), global0[_wgslsmith_index_u32(var_2.x, 21u)])), vec4<u32>(0u, global4[_wgslsmith_index_u32(21779u, 7u)], var_2.x, var_1.e.x), arg_0.c).x, true, select(true, _wgslsmith_f_op_f32(-var_1.d.x) >= _wgslsmith_f_op_f32(round(908f)), !(var_1.d.x >= var_1.d.x))), !(!vec3<bool>(false, false, var_1.d.x > 1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_1.d, var_1.d)))) * var_1.d), vec4<u32>(1u, _wgslsmith_clamp_u32(8838u, ~global4[_wgslsmith_index_u32(var_2.x, 7u)] ^ _wgslsmith_dot_vec3_u32(var_2.xyw, var_2.wwy), func_4(-u_input.b.x, var_1.d.x, func_2(global2[_wgslsmith_index_u32(var_1.e.x, 17u)], vec4<f32>(var_1.d.x, var_1.d.x, var_1.d.x, -414f), arg_0.d.x)).b), 35960u, var_1.e.x));
    return Struct_2(!vec3<bool>(true, var_4.c.x, true));
}

fn func_6(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_3) -> f32 {
    var var_0 = vec2<i32>(29100i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(~(-20359i), firstLeadingBit(-28308i)) & ~(u_input.b.x | arg_0.x), -_wgslsmith_sub_i32(39054i, arg_0.x)));
    var var_1 = Struct_2(vec3<bool>(true, arg_3.d.x || true, true));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-676f, _wgslsmith_f_op_f32(124f * _wgslsmith_f_op_f32(trunc(-254f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-490f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(111f, 449f) + _wgslsmith_f_op_f32(f32(-1f) * -248f))))));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-131f + 1070f), _wgslsmith_f_op_f32(floor(-1585f)))) + _wgslsmith_f_op_f32(select(-362f, -272f, true))), _wgslsmith_f_op_f32(func_6(vec2<i32>(firstTrailingBit(~15364i), u_input.c), true, func_5(func_4(-1i, _wgslsmith_f_op_f32(trunc(-1456f)), func_1(vec4<f32>(1052f, -488f, 964f, -975f), Struct_2(vec3<bool>(true, false, false)))), u_input.b.wy | (u_input.a.zz >> (vec2<u32>(global4[_wgslsmith_index_u32(76122u, 7u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(51146u, 7u)], 7u)], 7u)], 7u)]) % vec2<u32>(32u))), any(vec4<bool>(true, true, true, true))), func_4(-2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1290f - 770f)), Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(-41734i, -29095i, u_input.c, u_input.b.x), vec4<i32>(30672i, -1i, 32633i, -18012i)))))), func_5(func_4(u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(266f, 2457f)), Struct_1(u_input.b)), u_input.a.zz, false).a.x));
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-858f - _wgslsmith_f_op_f32(ceil(169f)))), _wgslsmith_f_op_f32(round(-580f))))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -561f) * _wgslsmith_f_op_f32(-448f + 565f)))));
    let var_1 = ~(_wgslsmith_mod_i32(-func_2(global2[_wgslsmith_index_u32(4294967295u, 17u)], vec4<f32>(1000f, 563f, -450f, -1829f), true).a.x, ~_wgslsmith_sub_i32(25781i, -7827i)) ^ func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -523f, -956f, -220f) + vec4<f32>(-1495f, -1000f, 1656f, 392f))), func_5(Struct_3(vec4<bool>(true, true, false, false), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 7u)], 7u)], Struct_1(vec4<i32>(u_input.c, 23981i, u_input.a.x, -1i)), vec4<bool>(false, false, false, false)), _wgslsmith_mult_vec2_i32(vec2<i32>(8706i, u_input.c), u_input.b.xx), false)).a.x);
    var_0 = -553f;
    let x = u_input.a;
    s_output = StorageBuffer(func_2(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(50003u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 7u)], 7u)]), vec2<u32>(748u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(2572u, 7u)], 7u)], 7u)], 7u)], 7u)])) & ~1u, ~_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], global4[_wgslsmith_index_u32(22495u, 7u)])), 17u)], _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -844f), 418f, _wgslsmith_f_op_f32(f32(-1f) * -1408f), _wgslsmith_f_op_f32(max(765f, 394f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-604f, 624f, -297f, 1687f)))), false).a.x);
}

