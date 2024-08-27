struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: vec4<bool>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: bool,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 14> = array<Struct_5, 14>(Struct_5(Struct_4(Struct_3(vec2<i32>(1i, -35549i), vec4<bool>(true, true, false, false), true, vec3<f32>(1915f, 374f, 1042f), vec3<f32>(732f, 282f, -311f)))), Struct_5(Struct_4(Struct_3(vec2<i32>(2147483647i, i32(-2147483648)), vec4<bool>(false, true, false, false), true, vec3<f32>(1690f, -1995f, -339f), vec3<f32>(-542f, 322f, 510f)))), Struct_5(Struct_4(Struct_3(vec2<i32>(-24231i, -18521i), vec4<bool>(false, false, true, false), false, vec3<f32>(146f, 259f, -841f), vec3<f32>(-1140f, 1000f, 1014f)))), Struct_5(Struct_4(Struct_3(vec2<i32>(6613i, -1i), vec4<bool>(true, false, false, false), true, vec3<f32>(-224f, 489f, 2089f), vec3<f32>(-1059f, -590f, 1197f)))), Struct_5(Struct_4(Struct_3(vec2<i32>(0i, 35619i), vec4<bool>(true, false, true, false), true, vec3<f32>(1141f, 504f, 607f), vec3<f32>(948f, -782f, 1000f)))), Struct_5(Struct_4(Struct_3(vec2<i32>(-1i, 1i), vec4<bool>(false, false, true, true), false, vec3<f32>(-445f, -686f, -780f), vec3<f32>(-477f, 789f, -1525f)))), Struct_5(Struct_4(Struct_3(vec2<i32>(1i, -1i), vec4<bool>(false, true, true, false), true, vec3<f32>(-865f, 470f, -1967f), vec3<f32>(466f, 1375f, 241f)))), Struct_5(Struct_4(Struct_3(vec2<i32>(0i, 2147483647i), vec4<bool>(false, false, true, false), false, vec3<f32>(690f, 690f, 415f), vec3<f32>(965f, -350f, 357f)))), Struct_5(Struct_4(Struct_3(vec2<i32>(-1i, -1i), vec4<bool>(false, false, false, false), true, vec3<f32>(-1579f, 1000f, -1402f), vec3<f32>(1000f, -831f, 157f)))), Struct_5(Struct_4(Struct_3(vec2<i32>(-23206i, 1896i), vec4<bool>(true, true, true, true), false, vec3<f32>(532f, -1370f, 1441f), vec3<f32>(-1091f, -1000f, 1181f)))), Struct_5(Struct_4(Struct_3(vec2<i32>(i32(-2147483648), -1i), vec4<bool>(true, true, false, false), false, vec3<f32>(-522f, 1577f, -727f), vec3<f32>(553f, -2270f, -337f)))), Struct_5(Struct_4(Struct_3(vec2<i32>(0i, 18620i), vec4<bool>(false, true, true, true), false, vec3<f32>(1674f, 1667f, 1007f), vec3<f32>(-579f, 136f, 1000f)))), Struct_5(Struct_4(Struct_3(vec2<i32>(-9642i, -50389i), vec4<bool>(true, false, true, true), false, vec3<f32>(767f, -279f, -294f), vec3<f32>(1163f, 789f, 2797f)))), Struct_5(Struct_4(Struct_3(vec2<i32>(i32(-2147483648), 34418i), vec4<bool>(true, true, false, true), false, vec3<f32>(1199f, 949f, -1245f), vec3<f32>(-1725f, -1582f, -103f)))));

var<private> global1: array<vec2<u32>, 4>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec2<u32>) -> u32 {
    global1 = array<vec2<u32>, 4>();
    var var_0 = Struct_5(Struct_4(Struct_3(_wgslsmith_mod_vec2_i32(vec2<i32>(-17584i, u_input.b.x) << (vec2<u32>(arg_0.x, 0u) % vec2<u32>(32u)), vec2<i32>(-1i, -32087i)), vec4<bool>(true, true, true, true), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 1u, arg_0.x, arg_0.x), vec4<u32>(53507u, 0u, arg_0.x, arg_0.x)) < 4294967295u, vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1284f, -1987f, 2334f)))))));
    return 8733u;
}

fn func_1() -> vec4<f32> {
    var var_0 = vec4<u32>(firstLeadingBit(~(~0u)), firstLeadingBit(~(~4294967295u)), 45895u, 80295u);
    global1 = array<vec2<u32>, 4>();
    var_0 = ~vec4<u32>(_wgslsmith_add_u32(func_2(vec2<u32>(var_0.x, 10126u) | global1[_wgslsmith_index_u32(var_0.x, 4u)]), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.x, var_0.x, var_0.x), vec4<u32>(16585u, 1u, var_0.x, 0u))), max(var_0.x, 4294967295u), _wgslsmith_add_u32(0u, ~1u), _wgslsmith_dot_vec3_u32(var_0.zww & ~var_0.xyx, var_0.yzw));
    var var_1 = Struct_5(Struct_4(Struct_3(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(1i, u_input.d)), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true)), -2147483647i == -u_input.c, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -867f), 374f, _wgslsmith_f_op_f32(f32(-1f) * -302f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1228f, 554f, -373f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(288f, 693f, 948f) * vec3<f32>(450f, 167f, 391f))))));
    var var_2 = vec2<i32>(u_input.d, -46792i);
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-507f)), _wgslsmith_f_op_f32(trunc(var_1.a.a.e.x)), var_1.a.a.e.x, 1288f)) + vec4<f32>(-513f, -395f, -1172f, _wgslsmith_f_op_f32(f32(-1f) * -252f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 2628f, -1000f, 600f), var_1.a.a.b.x));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: Struct_3) -> Struct_1 {
    let var_0 = reverseBits(~(50037i | ~arg_0.x));
    var var_1 = select(select(!vec3<bool>(true & arg_2.c, !arg_2.b.x, all(vec4<bool>(arg_2.c, false, arg_2.c, arg_2.c))), !(!arg_2.b.xzx), !arg_2.b.zzx), select(vec3<bool>(!any(vec4<bool>(false, false, false, false)), arg_2.b.x || !arg_2.b.x, any(!vec3<bool>(arg_2.c, true, arg_2.c))), !select(select(vec3<bool>(arg_2.b.x, false, arg_2.b.x), vec3<bool>(arg_2.b.x, false, false), false), select(arg_2.b.yxw, vec3<bool>(arg_2.b.x, true, arg_2.b.x), false), vec3<bool>(false, arg_2.c, true)), arg_2.b.ywz), !select(any(arg_2.b.wzy), true, all(vec3<bool>(false, arg_2.c, arg_2.b.x)) || all(vec3<bool>(false, arg_2.c, false))));
    var var_2 = firstLeadingBit(countOneBits(-24881i));
    let var_3 = var_1.x;
    var_1 = vec3<bool>(var_1.x, !all(!select(var_1.zy, arg_2.b.xx, false)), true);
    return Struct_1(-1i, 1576f, arg_1.x, _wgslsmith_add_u32(95715u, ~1u & (firstTrailingBit(4991u) >> (1u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(select(_wgslsmith_dot_vec4_u32(vec4<u32>(~(~31516u), ~(~1u), ~firstTrailingBit(78908u), 27829u), select(max(~vec4<u32>(0u, 0u, 1u, 37776u), ~vec4<u32>(4294967295u, 21247u, 74286u, 22215u)), ~countOneBits(vec4<u32>(4294967295u, 98u, 1u, 48705u)), vec4<bool>(true, true, false, all(vec4<bool>(true, true, true, true))))), 1u & _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), countOneBits(abs(vec3<u32>(45833u, 103722u, 1u)))), _wgslsmith_mod_u32(firstTrailingBit(1u), _wgslsmith_mult_u32(~0u, 1u)) > ~(~(~4294967295u))), 14u)];
    let var_1 = func_3(u_input.b, _wgslsmith_f_op_vec4_f32(func_1()), var_0.a.a);
    var var_2 = var_0.a;
    var var_3 = -vec4<i32>(~(-func_3(u_input.b, vec4<f32>(816f, var_2.a.e.x, 1262f, 1206f), var_0.a.a).a), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-27943i, -1i, var_0.a.a.a.x)), u_input.b), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.a.a.x, 2147483647i, var_1.a) >> (vec3<u32>(0u, 0u, var_1.d) % vec3<u32>(32u)), u_input.b, vec3<i32>(var_0.a.a.a.x, 9884i, var_0.a.a.a.x)), vec3<i32>(-1i, 46777i, 1i) << (_wgslsmith_mult_vec3_u32(vec3<u32>(11302u, var_1.d, 1610u), vec3<u32>(var_1.d, 4294967295u, 76487u)) % vec3<u32>(32u))), ~firstTrailingBit(u_input.b.x));
    global1 = array<vec2<u32>, 4>();
    var_2 = Struct_4(Struct_3(~var_2.a.a, var_2.a.b, var_2.a.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(-300f, _wgslsmith_div_f32(1491f, 186f), _wgslsmith_f_op_f32(677f - var_0.a.a.d.x)) - var_0.a.a.d), var_0.a.a.e));
    var_2 = var_0.a;
    var var_4 = any(!select(vec4<bool>(false, var_2.a.b.x, any(var_0.a.a.b.yx), var_0.a.a.b.x), !var_0.a.a.b, !select(vec4<bool>(var_2.a.c, var_2.a.b.x, var_0.a.a.b.x, var_0.a.a.c), vec4<bool>(var_2.a.b.x, var_2.a.b.x, false, false), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1073f, -1000f, 177f, var_0.a.a.d.x))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.a.a.d.x, 646f, 477f, var_0.a.a.d.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.c, -896f, -1797f, 1032f), vec4<f32>(var_0.a.a.e.x, var_2.a.d.x, 507f, var_0.a.a.e.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a.d.x, var_1.c, var_0.a.a.d.x, var_0.a.a.e.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.a.e.x, 278f, -416f, 450f), vec4<f32>(var_2.a.d.x, var_2.a.e.x, -1182f, var_0.a.a.d.x), vec4<bool>(var_2.a.c, true, true, var_0.a.a.c))) - vec4<f32>(var_2.a.d.x, var_2.a.e.x, var_2.a.d.x, var_1.c))))), ~(-(~vec2<i32>(32269i, var_3.x))), global1[_wgslsmith_index_u32(~var_1.d, 4u)]);
}

