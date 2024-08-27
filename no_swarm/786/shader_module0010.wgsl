struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec2<i32>(-30544i, -19853i), 0u, vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(vec2<i32>(31148i, 1i), 1u, vec2<i32>(i32(-2147483648), -6881i)), Struct_1(vec2<i32>(2147483647i, -29296i), 8677u, vec2<i32>(-20672i, i32(-2147483648))), Struct_1(vec2<i32>(0i, 38232i), 4294967295u, vec2<i32>(2147483647i, 0i)), Struct_1(vec2<i32>(2147483647i, 64372i), 1u, vec2<i32>(i32(-2147483648), 24142i)));

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(vec4<u32>(43525u, 4294967295u, 738u, 16029u), 2147483647i), Struct_3(vec4<u32>(1237u, 0u, 51144u, 40808u), -994i), Struct_3(vec4<u32>(30150u, 1u, 4294967295u, 10716u), -57890i), Struct_3(vec4<u32>(0u, 100242u, 15762u, 56959u), -54289i), Struct_3(vec4<u32>(4294967295u, 43673u, 4294967295u, 39936u), 50913i), Struct_3(vec4<u32>(4294967295u, 57367u, 29745u, 1u), -1i), Struct_3(vec4<u32>(26770u, 46272u, 4294967295u, 4294967295u), 1i), Struct_3(vec4<u32>(61945u, 0u, 95463u, 1u), -1i), Struct_3(vec4<u32>(0u, 4294967295u, 2887u, 85387u), 1i), Struct_3(vec4<u32>(1u, 44950u, 4294967295u, 1u), 1i), Struct_3(vec4<u32>(4294967295u, 24000u, 4294967295u, 4294967295u), 26161i), Struct_3(vec4<u32>(14807u, 29375u, 1u, 18319u), i32(-2147483648)), Struct_3(vec4<u32>(40021u, 11134u, 94006u, 4294967295u), 7858i), Struct_3(vec4<u32>(1u, 22371u, 0u, 4294967295u), -8688i), Struct_3(vec4<u32>(0u, 31956u, 0u, 47341u), -9243i), Struct_3(vec4<u32>(3514u, 45513u, 0u, 1u), 1i), Struct_3(vec4<u32>(0u, 73348u, 24522u, 1u), i32(-2147483648)), Struct_3(vec4<u32>(0u, 23333u, 1u, 3062u), 40700i), Struct_3(vec4<u32>(4294967295u, 1u, 6079u, 0u), i32(-2147483648)), Struct_3(vec4<u32>(10093u, 48718u, 73047u, 0u), 2147483647i), Struct_3(vec4<u32>(80841u, 0u, 1u, 4294967295u), 1i), Struct_3(vec4<u32>(40310u, 91793u, 27010u, 24378u), 1i), Struct_3(vec4<u32>(1u, 1u, 8356u, 0u), -66906i), Struct_3(vec4<u32>(26414u, 1u, 4294967295u, 1u), 2147483647i), Struct_3(vec4<u32>(25006u, 1u, 10938u, 1u), 0i));

var<private> global3: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(vec4<u32>(4294967295u, 7479u, 24501u, 88018u), -1i), Struct_3(vec4<u32>(4294967295u, 75007u, 67699u, 0u), -1i), Struct_3(vec4<u32>(1u, 4294967295u, 33802u, 9124u), 19591i), Struct_3(vec4<u32>(4294967295u, 52267u, 100753u, 57722u), 15315i), Struct_3(vec4<u32>(74852u, 0u, 6215u, 4294967295u), 18257i), Struct_3(vec4<u32>(1u, 69689u, 24749u, 0u), 1i), Struct_3(vec4<u32>(4651u, 42461u, 0u, 4294967295u), 12501i), Struct_3(vec4<u32>(0u, 5388u, 0u, 0u), -1i), Struct_3(vec4<u32>(37160u, 4294967295u, 60848u, 64965u), -40045i), Struct_3(vec4<u32>(4294967295u, 0u, 4294967295u, 1u), -1i), Struct_3(vec4<u32>(0u, 5737u, 89049u, 68783u), i32(-2147483648)), Struct_3(vec4<u32>(0u, 0u, 45578u, 62609u), 52444i), Struct_3(vec4<u32>(0u, 8439u, 0u, 42304u), 0i), Struct_3(vec4<u32>(1u, 1u, 78164u, 45473u), -23573i), Struct_3(vec4<u32>(6932u, 4294967295u, 25721u, 89384u), -52694i), Struct_3(vec4<u32>(4294967295u, 61197u, 1u, 30868u), -13020i), Struct_3(vec4<u32>(28391u, 1u, 67781u, 81747u), 2909i), Struct_3(vec4<u32>(0u, 4294967295u, 0u, 4294967295u), i32(-2147483648)), Struct_3(vec4<u32>(0u, 0u, 65265u, 27239u), 0i), Struct_3(vec4<u32>(1u, 27338u, 4294967295u, 1u), 2147483647i), Struct_3(vec4<u32>(28613u, 74441u, 49087u, 0u), 1i), Struct_3(vec4<u32>(38121u, 4294967295u, 1918u, 0u), i32(-2147483648)), Struct_3(vec4<u32>(4294967295u, 42352u, 24920u, 16404u), 37202i), Struct_3(vec4<u32>(0u, 0u, 0u, 24943u), 0i), Struct_3(vec4<u32>(1u, 1u, 6795u, 5025u), 6081i), Struct_3(vec4<u32>(41837u, 0u, 4294967295u, 10368u), -18039i), Struct_3(vec4<u32>(40420u, 4294967295u, 11983u, 24773u), i32(-2147483648)), Struct_3(vec4<u32>(24664u, 41260u, 43908u, 29088u), 2773i), Struct_3(vec4<u32>(4294967295u, 7680u, 4294967295u, 0u), 1i), Struct_3(vec4<u32>(1u, 1u, 0u, 4294967295u), -6289i), Struct_3(vec4<u32>(59899u, 11881u, 4294967295u, 0u), -1i), Struct_3(vec4<u32>(0u, 31536u, 983u, 1u), -1i));

var<private> global4: array<Struct_3, 20>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: Struct_2) -> vec4<f32> {
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 5u)];
    var var_1 = 2147483647i;
    var var_2 = ~(-vec3<i32>(~(-1i), max(-1i | arg_3.c.a.x, arg_1.c.c.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, 1i, var_0.c.x, -1i), abs(vec4<i32>(arg_1.d.x, arg_1.d.x, var_0.c.x, -65159i)))));
    var_1 = _wgslsmith_clamp_i32(arg_3.c.c.x, 1i, _wgslsmith_dot_vec2_i32(var_0.c, ~_wgslsmith_div_vec2_i32(vec2<i32>(arg_1.c.a.x, var_0.a.x), arg_3.d))) << ((arg_3.c.b >> (~28145u % 32u)) % 32u);
    global3 = array<Struct_3, 32>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_3.a, arg_3.b, -1387f, arg_1.a), _wgslsmith_div_vec4_f32(vec4<f32>(arg_3.a, 382f, 1423f, arg_1.b), vec4<f32>(-958f, arg_1.a, 1794f, arg_1.a)), !vec4<bool>(global1.x, false, false, true))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: u32) -> u32 {
    global1 = !(!select(vec4<bool>(false && global1.x, arg_3 <= 74395u, global1.x, true), vec4<bool>(global1.x, any(vec4<bool>(true, true, false, false)), global1.x, false), select(!vec4<bool>(global1.x, global1.x, true, false), select(vec4<bool>(true, true, global1.x, true), vec4<bool>(true, true, global1.x, false), false), all(vec4<bool>(false, false, true, false)))));
    global2 = array<Struct_3, 25>();
    global3 = array<Struct_3, 32>();
    let var_0 = vec3<u32>(reverseBits(1369u), ~4294967295u, _wgslsmith_add_u32(arg_3, arg_3));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x))))), Struct_1(arg_2.zz, _wgslsmith_div_u32(0u, arg_3), -arg_2.zz), _wgslsmith_add_vec2_i32(min(vec2<i32>(arg_1.x, arg_2.x), vec2<i32>(arg_1.x, u_input.a >> (4294967295u % 32u))), ~reverseBits(vec2<i32>(-56062i, 1i)) | ~_wgslsmith_sub_vec2_i32(arg_2.zz, vec2<i32>(arg_1.x, u_input.a))));
    return reverseBits(~(~2741u));
}

fn func_2() -> vec4<bool> {
    let var_0 = i32(-1i) * -_wgslsmith_sub_i32(_wgslsmith_div_i32(43669i, ~13100i), u_input.a);
    let var_1 = vec4<u32>(~_wgslsmith_mult_u32(0u, select(1u, 1u, true)), 1u << (0u % 32u), 88945u, _wgslsmith_add_u32(_wgslsmith_mod_u32(~_wgslsmith_mult_u32(35976u, 110117u), ~countOneBits(2621u)), func_4(_wgslsmith_f_op_vec4_f32(func_3(var_0, Struct_2(-1104f, -1396f, Struct_1(vec2<i32>(-2147483647i, 35139i), 0u, vec2<i32>(5726i, -2401i)), vec2<i32>(43231i, -2147483647i)), vec3<u32>(0u, 4294967295u, 4294967295u), Struct_2(1233f, -125f, Struct_1(vec2<i32>(u_input.a, 1i), 8450u, vec2<i32>(var_0, var_0)), vec2<i32>(var_0, 59131i)))), countOneBits(vec4<i32>(var_0, -14433i, 33227i, 1i)), vec3<i32>(firstTrailingBit(5184i), select(var_0, 3375i, global1.x), -30300i), 49087u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(239f, _wgslsmith_f_op_f32(438f + 1019f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(850f, 1870f), vec2<f32>(-1094f, 324f))))), vec2<bool>(!(u_input.a > var_0), !all(vec3<bool>(true, false, global1.x)))))));
    global1 = !select(vec4<bool>(true, global1.x && !global1.x, global1.x, !global1.x), select(select(vec4<bool>(false, global1.x, false, false), select(vec4<bool>(global1.x, global1.x, global1.x, false), vec4<bool>(true, false, global1.x, global1.x), vec4<bool>(global1.x, global1.x, true, global1.x)), global1.x), !vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(global1.x, global1.x | global1.x, global1.x, !global1.x)), select(vec4<bool>(true, true, true, true), select(!vec4<bool>(true, global1.x, true, global1.x), select(vec4<bool>(true, global1.x, global1.x, false), vec4<bool>(true, true, true, global1.x), false), !vec4<bool>(global1.x, true, false, global1.x)), select(select(vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(global1.x, true, false, false), vec4<bool>(global1.x, global1.x, false, false)), !vec4<bool>(global1.x, global1.x, true, true), global1.x)));
    var var_3 = global4[_wgslsmith_index_u32(var_1.x, 20u)];
    return select(!(!vec4<bool>(all(vec3<bool>(true, global1.x, true)), true, all(vec2<bool>(true, global1.x)), global1.x)), select(vec4<bool>(global1.x, any(!global1.zwx), global1.x, !global1.x), vec4<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, var_3.b), vec2<i32>(-8505i, -8725i)) <= _wgslsmith_dot_vec2_i32(vec2<i32>(-14206i, var_0), vec2<i32>(var_0, -260i)), true, true, global1.x & true), vec4<bool>(true, !all(vec3<bool>(false, global1.x, global1.x)), global1.x, global1.x)), true);
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> i32 {
    global1 = select(!vec4<bool>(true, true, !select(false, true, false), true), func_2(), -614f == _wgslsmith_f_op_vec4_f32(func_3(abs(-u_input.a), Struct_2(-920f, 3128f, global0[_wgslsmith_index_u32(~arg_0.b, 5u)], arg_0.c), vec3<u32>(arg_0.b, firstTrailingBit(19428u), 44659u), Struct_2(202f, _wgslsmith_f_op_f32(f32(-1f) * -766f), global0[_wgslsmith_index_u32(arg_0.b, 5u)], vec2<i32>(arg_0.c.x, 60833i)))).x);
    var var_0 = _wgslsmith_clamp_i32(_wgslsmith_sub_i32(min(_wgslsmith_sub_i32(-19354i, 8702i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.x, -2147483647i, arg_0.a.x, arg_0.c.x), vec4<i32>(41833i, 0i, arg_0.c.x, arg_0.c.x))), arg_0.a.x), abs(1i), ~_wgslsmith_mod_i32(abs(0i), countOneBits(u_input.a)) & arg_0.a.x);
    global3 = array<Struct_3, 32>();
    var var_1 = arg_1;
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-896f, -125f)), _wgslsmith_f_op_f32(select(-145f, _wgslsmith_div_f32(-267f, -411f), true))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(932f, 909f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1782f, 207f), vec2<f32>(-1885f, 1112f), false)), !arg_1)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(485f * 1237f), _wgslsmith_f_op_f32(trunc(-1195f))) - vec2<f32>(-1000f, _wgslsmith_div_f32(1033f, 295f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1262f, 339f)))))));
    return arg_0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec2_i32(abs(vec2<i32>(_wgslsmith_mult_i32(2147483647i, u_input.a), _wgslsmith_mod_i32(u_input.a, -52868i)) | _wgslsmith_add_vec2_i32(vec2<i32>(31322i, u_input.a), -vec2<i32>(62878i, -1312i))), vec2<i32>(func_1(Struct_1(vec2<i32>(-1i, u_input.a) ^ vec2<i32>(-2147483647i, 2147483647i), 50324u, vec2<i32>(u_input.a, -15334i)), global1.x), u_input.a));
    var_0 = 2147483647i;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1182f, 1000f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2133f))))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-782f, 759f), vec2<f32>(-1000f, -1367f), true)), vec2<f32>(263f, -1022f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -723f)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-280f, -822f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1011f, _wgslsmith_f_op_f32(ceil(-3106f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-129f, 461f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-189f, 146f), vec2<f32>(-282f, -1019f), vec2<bool>(false, global1.x))))), !global1.yw)));
    global4 = array<Struct_3, 20>();
    global1 = vec4<bool>(!(!global1.x), global1.x, u_input.a >= u_input.a, false);
    global2 = array<Struct_3, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(1u), var_1.x);
}

