struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: u32,
    c: Struct_2,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 29> = array<vec2<f32>, 29>(vec2<f32>(-482f, -897f), vec2<f32>(-444f, -336f), vec2<f32>(956f, 952f), vec2<f32>(369f, -630f), vec2<f32>(-520f, 1000f), vec2<f32>(-570f, -738f), vec2<f32>(1187f, 2043f), vec2<f32>(1000f, 218f), vec2<f32>(-1178f, 241f), vec2<f32>(2056f, 1468f), vec2<f32>(317f, -2498f), vec2<f32>(1000f, -1598f), vec2<f32>(-183f, -323f), vec2<f32>(1000f, 399f), vec2<f32>(1000f, 318f), vec2<f32>(-1000f, 930f), vec2<f32>(-309f, 803f), vec2<f32>(-354f, 203f), vec2<f32>(1104f, 460f), vec2<f32>(-537f, -431f), vec2<f32>(856f, -1000f), vec2<f32>(2273f, 1052f), vec2<f32>(-1000f, -490f), vec2<f32>(1260f, -1150f), vec2<f32>(-766f, -1289f), vec2<f32>(798f, -452f), vec2<f32>(-1287f, 558f), vec2<f32>(600f, -1090f), vec2<f32>(-1072f, 156f));

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(1u, vec2<u32>(0u, 11011u), 0u, vec3<i32>(i32(-2147483648), -7656i, 0i), vec4<f32>(-187f, 938f, 1000f, -416f)), Struct_1(31408u, vec2<u32>(5659u, 1u), 51016u, vec3<i32>(0i, i32(-2147483648), -73693i), vec4<f32>(429f, 1268f, 417f, -569f)), Struct_1(1u, vec2<u32>(37621u, 0u), 50434u, vec3<i32>(-36678i, 0i, 0i), vec4<f32>(1607f, 132f, -1000f, -1239f)), Struct_1(1u, vec2<u32>(25571u, 10764u), 11822u, vec3<i32>(1i, 2147483647i, i32(-2147483648)), vec4<f32>(-730f, -1000f, -1261f, 831f)), Struct_1(37508u, vec2<u32>(38101u, 32411u), 50741u, vec3<i32>(0i, 21883i, 29680i), vec4<f32>(-2298f, 972f, 1107f, -1060f)), Struct_1(24766u, vec2<u32>(11138u, 9697u), 25229u, vec3<i32>(1i, 3779i, -1i), vec4<f32>(-1000f, -506f, 1170f, 879f)), Struct_1(4294967295u, vec2<u32>(0u, 0u), 1u, vec3<i32>(-21812i, -9558i, i32(-2147483648)), vec4<f32>(-182f, 169f, 111f, 1000f)), Struct_1(34394u, vec2<u32>(4294967295u, 40739u), 4294967295u, vec3<i32>(-32228i, 0i, 0i), vec4<f32>(-2214f, 120f, -125f, 1263f)), Struct_1(1u, vec2<u32>(18991u, 49888u), 4294967295u, vec3<i32>(0i, 50090i, -29030i), vec4<f32>(1636f, -574f, 181f, -163f)), Struct_1(15067u, vec2<u32>(1u, 0u), 0u, vec3<i32>(-556i, -1i, 0i), vec4<f32>(-1019f, 825f, -1524f, -1000f)), Struct_1(1u, vec2<u32>(47007u, 11025u), 4294967295u, vec3<i32>(50991i, 1i, -49983i), vec4<f32>(-305f, -1000f, 146f, 362f)), Struct_1(4294967295u, vec2<u32>(1u, 6197u), 4294967295u, vec3<i32>(11412i, 1i, 0i), vec4<f32>(818f, -255f, 712f, 1000f)), Struct_1(4294967295u, vec2<u32>(1u, 6588u), 1u, vec3<i32>(-11665i, 2147483647i, -22961i), vec4<f32>(-361f, 1247f, 1000f, -223f)), Struct_1(1690u, vec2<u32>(3347u, 0u), 77391u, vec3<i32>(-1i, 2147483647i, 9144i), vec4<f32>(-1199f, 110f, 970f, 1071f)), Struct_1(40549u, vec2<u32>(4294967295u, 4294967295u), 41926u, vec3<i32>(45338i, -8918i, 7376i), vec4<f32>(-387f, 389f, 924f, -1667f)), Struct_1(0u, vec2<u32>(0u, 88928u), 0u, vec3<i32>(-23487i, 41192i, -7953i), vec4<f32>(861f, 1249f, -1052f, 1133f)), Struct_1(1u, vec2<u32>(5074u, 0u), 0u, vec3<i32>(-32083i, 2147483647i, 0i), vec4<f32>(-1000f, -1000f, 686f, 1147f)));

var<private> global2: vec2<u32> = vec2<u32>(0u, 6601u);

var<private> global3: i32;

var<private> global4: Struct_2;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: u32, arg_3: Struct_2) -> i32 {
    let var_0 = select(false | (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(816f + arg_0.a.e.x)) < _wgslsmith_f_op_f32(-243f + arg_1.e.e.x)), all(select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), true), true), vec4<bool>(true, true, all(vec4<bool>(true, false, false, true)), true), vec4<bool>(true, true, true, true))), all(!select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))));
    var var_1 = global4.a.d.x;
    var var_2 = arg_1.e.e.ywy;
    var var_3 = abs(vec3<i32>(select(~arg_1.c.a.d.x << (firstLeadingBit(arg_2) % 32u), u_input.c, !(true == var_0)), select(_wgslsmith_clamp_i32(-1i, -35809i, u_input.c), arg_3.a.d.x, true) & _wgslsmith_sub_i32(arg_0.a.d.x, -2147483647i), select(-1i, reverseBits(arg_0.a.d.x), true)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - arg_1.c.a.e.x)));
    return max(-(~(-74949i) >> (arg_1.e.b.x % 32u)), -(arg_3.a.d.x | -86271i));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: vec2<bool>) -> Struct_2 {
    var var_0 = global4.a;
    let var_1 = Struct_4(max(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-37015i, global4.a.d.x, -2147483647i, u_input.c), ~vec4<i32>(global4.a.d.x, global4.a.d.x, 1i, var_0.d.x)), vec4<i32>(-2147483647i, global4.a.d.x, i32(-1i) * -38386i, countOneBits(1876i))), vec4<i32>(func_3(Struct_2(global4.a, var_0.b.x, vec2<f32>(444f, 1283f)), Struct_4(vec4<i32>(var_0.d.x, global4.a.d.x, -2147483647i, u_input.c), 11313u, Struct_2(Struct_1(21794u, vec2<u32>(1u, 1u), 15096u, global4.a.d, global4.a.e), global2.x, var_0.e.wy), 55455u, Struct_1(u_input.d, vec2<u32>(1u, u_input.a), 1u, vec3<i32>(-14791i, global4.a.d.x, var_0.d.x), vec4<f32>(-498f, 170f, arg_0.x, arg_1))), 4294967295u, Struct_2(global4.a, global2.x, vec2<f32>(173f, 458f))), u_input.c, _wgslsmith_mult_i32(~1i, -var_0.d.x), firstLeadingBit(_wgslsmith_sub_i32(2147483647i, 2147483647i)))), 27802u, Struct_2(global1[_wgslsmith_index_u32(~var_0.a, 17u)], _wgslsmith_add_u32(80567u, 1u), _wgslsmith_f_op_vec2_f32(-global4.c)), u_input.a, Struct_1(~_wgslsmith_mod_u32(u_input.d | global2.x, countOneBits(global2.x)), ~(select(vec2<u32>(37142u, 0u), vec2<u32>(global4.b, 1u), true) & reverseBits(global4.a.b)), 4294967295u, -var_0.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-371f, arg_1, _wgslsmith_f_op_f32(f32(-1f) * -610f), _wgslsmith_f_op_f32(floor(544f))))));
    var var_2 = Struct_1(reverseBits(firstTrailingBit(1u)), _wgslsmith_sub_vec2_u32(~(select(u_input.b.zx, u_input.b.zy, false) >> (~var_1.c.a.b % vec2<u32>(32u))), var_0.b), 37390u, firstTrailingBit(~vec3<i32>(-17292i, -39032i, var_1.a.x)), _wgslsmith_f_op_vec4_f32(exp2(var_0.e)));
    let var_3 = Struct_2(var_1.e, ~select(~_wgslsmith_div_u32(4294967295u, global4.a.a), _wgslsmith_dot_vec4_u32(~vec4<u32>(global4.b, var_1.e.c, global4.a.a, 4294967295u), vec4<u32>(1u, 15452u, 0u, 23750u)), true), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1544f - _wgslsmith_f_op_f32(trunc(arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1749f))), -254f));
    global0 = array<vec2<f32>, 29>();
    return Struct_2(Struct_1(1u ^ ~_wgslsmith_sub_u32(4294967295u, u_input.a), vec2<u32>(global4.a.c, 51293u), var_3.b, select(-global4.a.d, min(vec3<i32>(global4.a.d.x, var_1.e.d.x, 1i) << (u_input.b.yxz % vec3<u32>(32u)), vec3<i32>(var_3.a.d.x, var_0.d.x, var_0.d.x)), false), _wgslsmith_f_op_vec4_f32(var_2.e + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1, global4.c.x, arg_1, var_3.a.e.x)))))), _wgslsmith_mod_u32(~firstLeadingBit(~0u), var_3.b), _wgslsmith_f_op_vec2_f32(var_3.a.e.yy * var_3.c));
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.a.e.yzy) + arg_0.e.zzx), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global4.a.e.x))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f * 574f)))))), vec2<bool>(true, global4.c.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.x))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(347f, var_0.a.e.x, 1000f) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -423f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a.e.x) - func_2(vec3<f32>(-338f, global4.a.e.x, arg_0.e.x), var_0.a.e.x, vec2<bool>(true, true)).a.e.x), global4.c.x)));
    var var_2 = 0u;
    let var_3 = Struct_2(global4.a, global4.a.c, global0[_wgslsmith_index_u32(4294967295u, 29u)]);
    global1 = array<Struct_1, 17>();
    return -289f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(global4.a)), global4.c.x))), func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.a.e.x, global4.c.x, global4.a.e.x) + vec3<f32>(global4.c.x, -1395f, 438f)), _wgslsmith_div_vec3_f32(vec3<f32>(-300f, global4.c.x, global4.a.e.x), global4.a.e.zxy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.c.x - global4.a.e.x)), vec2<bool>(any(vec2<bool>(false, true)), 42761u == global2.x)).a.e.x) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(353f, global4.a.e.x))));
    global1 = array<Struct_1, 17>();
    var var_1 = _wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.ywz, min(u_input.b.yxz, ~vec3<u32>(u_input.d, global4.b, 12353u))), 17u)]));
    let var_2 = ~0u;
    global0 = array<vec2<f32>, 29>();
    var var_3 = vec2<bool>(any(vec3<bool>(true, any(vec2<bool>(true, true)) || select(false, true, false), true || (global4.a.d.x >= global4.a.d.x))), false);
    let var_4 = global4.a.b;
    global3 = min(1i, -14351i);
    var var_5 = ~_wgslsmith_mod_u32(max((var_4.x | 1u) & _wgslsmith_add_u32(global4.a.c, global2.x), ~0u), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(global4.a.d << (u_input.b.yzy % vec3<u32>(32u)), abs(global4.a.d)), abs(0i)), u_input.c));
}

