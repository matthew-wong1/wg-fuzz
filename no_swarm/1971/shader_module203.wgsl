struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -177f;

var<private> global1: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(Struct_1(vec4<f32>(105f, 1278f, 1044f, -938f), vec2<i32>(1i, 0i), vec2<f32>(-1000f, -130f))), Struct_2(Struct_1(vec4<f32>(425f, -193f, -1744f, -322f), vec2<i32>(36752i, 1i), vec2<f32>(-1134f, -776f))), Struct_2(Struct_1(vec4<f32>(258f, 1000f, 1421f, 208f), vec2<i32>(-44i, i32(-2147483648)), vec2<f32>(1346f, 291f))), Struct_2(Struct_1(vec4<f32>(150f, -311f, 577f, -1155f), vec2<i32>(-23179i, 1i), vec2<f32>(-611f, 491f))), Struct_2(Struct_1(vec4<f32>(151f, 264f, -239f, -2347f), vec2<i32>(-1i, 2767i), vec2<f32>(-470f, -469f))), Struct_2(Struct_1(vec4<f32>(-2232f, 146f, 319f, 1288f), vec2<i32>(-1i, 48033i), vec2<f32>(-692f, -328f))), Struct_2(Struct_1(vec4<f32>(292f, -272f, 1268f, 347f), vec2<i32>(2147483647i, -55712i), vec2<f32>(478f, -238f))), Struct_2(Struct_1(vec4<f32>(440f, -2093f, -1000f, -1295f), vec2<i32>(2147483647i, -19774i), vec2<f32>(2514f, 612f))), Struct_2(Struct_1(vec4<f32>(761f, 759f, -274f, -568f), vec2<i32>(1i, 2147483647i), vec2<f32>(931f, 1265f))), Struct_2(Struct_1(vec4<f32>(1772f, 1913f, 598f, 772f), vec2<i32>(-37059i, 62875i), vec2<f32>(-778f, -423f))), Struct_2(Struct_1(vec4<f32>(-167f, -188f, -464f, 1117f), vec2<i32>(2147483647i, 1297i), vec2<f32>(-181f, -395f))), Struct_2(Struct_1(vec4<f32>(-2000f, -1000f, 139f, 511f), vec2<i32>(1i, -31643i), vec2<f32>(1000f, -713f))), Struct_2(Struct_1(vec4<f32>(-439f, 1000f, 406f, -742f), vec2<i32>(-1i, 31100i), vec2<f32>(-1232f, 280f))), Struct_2(Struct_1(vec4<f32>(-1012f, 126f, 2698f, 578f), vec2<i32>(0i, i32(-2147483648)), vec2<f32>(299f, -1157f))), Struct_2(Struct_1(vec4<f32>(-1905f, 1068f, -1225f, 1978f), vec2<i32>(i32(-2147483648), -1i), vec2<f32>(910f, 304f))), Struct_2(Struct_1(vec4<f32>(-1247f, 1000f, 2024f, 1000f), vec2<i32>(1i, 29512i), vec2<f32>(-1068f, 1298f))), Struct_2(Struct_1(vec4<f32>(1025f, 908f, -121f, 1298f), vec2<i32>(1i, -51909i), vec2<f32>(1000f, -355f))), Struct_2(Struct_1(vec4<f32>(781f, -430f, 1462f, 1000f), vec2<i32>(i32(-2147483648), 0i), vec2<f32>(235f, -2415f))), Struct_2(Struct_1(vec4<f32>(1000f, -1000f, -179f, 717f), vec2<i32>(823i, -253i), vec2<f32>(2640f, -1382f))), Struct_2(Struct_1(vec4<f32>(783f, 1525f, 1644f, 1000f), vec2<i32>(2147483647i, 67170i), vec2<f32>(200f, -806f))), Struct_2(Struct_1(vec4<f32>(1182f, -100f, 225f, 761f), vec2<i32>(2147483647i, -1592i), vec2<f32>(451f, 392f))), Struct_2(Struct_1(vec4<f32>(-497f, 221f, 2328f, -185f), vec2<i32>(41148i, -24895i), vec2<f32>(1278f, 654f))), Struct_2(Struct_1(vec4<f32>(-1153f, 1000f, -396f, 345f), vec2<i32>(-60988i, -26374i), vec2<f32>(672f, 1205f))), Struct_2(Struct_1(vec4<f32>(-105f, -645f, -871f, 263f), vec2<i32>(-1i, 2147483647i), vec2<f32>(-562f, 1397f))));

var<private> global2: Struct_2;

var<private> global3: array<vec4<bool>, 7>;

var<private> global4: vec4<bool> = vec4<bool>(true, true, true, false);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> f32 {
    let var_0 = ~vec2<i32>(arg_0.b.x, ~max(arg_0.b.x, 24361i)) ^ ~global2.a.b;
    var var_1 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(13869i, global2.a.b.x), countOneBits(vec2<i32>(1i, global2.a.b.x))), -21988i), vec3<i32>(select(-1i >> (u_input.a.x % 32u), -35544i, arg_1), ~(-53676i), global2.a.b.x)), -45938i);
    var var_2 = arg_0.c.x;
    var var_3 = Struct_5(0u, Struct_2(global2.a), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1121f, arg_0.a.x, -1262f, arg_0.a.x) + _wgslsmith_f_op_vec4_f32(ceil(arg_0.a))), vec2<i32>(0i, 0i), arg_0.a.wz)), 18283u);
    var var_4 = true;
    return arg_0.c.x;
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2) -> vec3<u32> {
    let var_0 = vec3<f32>(640f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global2.a, global4.x)) * _wgslsmith_f_op_f32(-arg_1.a.a.a.x)))), -1000f);
    var var_1 = 171f;
    let var_2 = _wgslsmith_clamp_i32(select(_wgslsmith_dot_vec3_i32(-vec3<i32>(-69681i, arg_1.a.a.b.x, arg_2.a.b.x), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-19638i, global2.a.b.x, 1987i), vec3<i32>(-2147483647i, arg_1.a.a.b.x, 1i)), arg_2.a.b.x, arg_1.a.a.b.x << (0u % 32u))), reverseBits(8331i), true), arg_2.a.b.x, -(_wgslsmith_mult_i32(-1i, -4380i << (1u % 32u)) | (_wgslsmith_mult_i32(-9356i, arg_2.a.b.x) ^ _wgslsmith_mult_i32(23278i, arg_1.a.a.b.x))));
    let var_3 = -952f;
    var var_4 = Struct_4(_wgslsmith_f_op_f32(-440f - arg_2.a.a.x), _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(~vec4<u32>(0u, 47419u, u_input.b.x, u_input.a.x), ~vec4<u32>(4294967295u, u_input.a.x, u_input.b.x, 1u)), u_input.a), vec3<i32>(arg_1.a.a.b.x | -1i, ~firstLeadingBit(7192i), 40477i), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -142f, var_3, -399f) + vec4<f32>(arg_2.a.a.x, arg_1.a.a.c.x, arg_1.a.a.a.x, arg_2.a.c.x)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(481f, var_0.x, arg_2.a.a.x, arg_1.a.a.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.a.a.a)), true)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.c.x, arg_2.a.a.x, _wgslsmith_f_op_f32(trunc(arg_2.a.a.x))) + arg_2.a.a.xzx));
    return ~u_input.a.zwz;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: vec3<u32>) -> i32 {
    global4 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~firstTrailingBit(109928u) | ~u_input.b.x, abs(4294967295u)) << (max(1421u, func_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<f32>(1421f, arg_2.a.c.x, global2.a.c.x, -711f), arg_2.a.b, arg_2.a.a.yz), global4.x)))), Struct_3(Struct_2(global2.a)), Struct_2(Struct_1(vec4<f32>(-414f, global2.a.c.x, 405f, arg_2.a.c.x), global2.a.b, vec2<f32>(global2.a.c.x, -1149f)))).x) % 32u), 7u)];
    var var_0 = max(61518i, ~global2.a.b.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -881f)), _wgslsmith_f_op_f32(-355f * _wgslsmith_f_op_f32(exp2(arg_2.a.c.x))), global2.a.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1484f)) * 690f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_2.a.a.x)), 1280f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.a.c.x * -569f))), -1705f)));
    let var_2 = !global4.xy;
    var var_3 = countOneBits(global2.a.b.x) | _wgslsmith_add_i32(~global2.a.b.x, arg_2.a.b.x);
    return 3134i;
}

fn func_5(arg_0: i32, arg_1: vec3<i32>) -> Struct_2 {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(_wgslsmith_add_u32(u_input.b.x, 0u), u_input.a.x)), u_input.a.wz) | ~(~u_input.a.x), 7u)];
    var var_1 = ~(~(0u | u_input.a.x));
    var var_2 = !(!global4.wzy);
    global1 = array<Struct_2, 24>();
    global0 = _wgslsmith_f_op_f32(-780f + global2.a.a.x);
    return global1[_wgslsmith_index_u32(u_input.a.x, 24u)];
}

fn func_1(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: i32) -> Struct_3 {
    let var_0 = firstTrailingBit(1u);
    var var_1 = Struct_3(func_5(func_4(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(25565u, 1u, arg_0.b), vec3<u32>(u_input.a.x, u_input.b.x, u_input.b.x)), ~vec3<u32>(var_0, arg_0.b, 54619u)), vec4<i32>(arg_2 >> (4294967295u % 32u), -arg_2, -84497i, arg_0.c.x), Struct_2(global2.a), (u_input.a.zxz << (vec3<u32>(4294967295u, 4294967295u, 37602u) % vec3<u32>(32u))) | func_2(arg_0.d.x, Struct_3(global1[_wgslsmith_index_u32(94995u, 24u)]), Struct_2(Struct_1(arg_0.d, arg_0.c.yx, vec2<f32>(global2.a.c.x, -1000f))))), arg_1 >> (~vec3<u32>(var_0, 1243u, 45494u) % vec3<u32>(32u))));
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.a.c.x, _wgslsmith_f_op_f32(-1965f - -683f))) - 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.a.x)))));
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-392f - _wgslsmith_f_op_f32(var_1.a.a.a.x - arg_0.d.x)))), arg_0.d.x));
    let var_2 = global2.a.a.zxx;
    return Struct_3(func_5(-_wgslsmith_mult_i32(4075i, 1i), _wgslsmith_sub_vec3_i32(-(~vec3<i32>(var_1.a.a.b.x, arg_0.c.x, arg_0.c.x)), -arg_0.c)));
}

fn func_6(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: Struct_5) -> Struct_2 {
    let var_0 = arg_2.c.a;
    var var_1 = -arg_2.c.a.b;
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(arg_0.a.a.c.x))));
    var var_2 = ~(-(~(-(33316i & var_0.b.x))));
    global4 = vec4<bool>(any(!global3[_wgslsmith_index_u32(arg_2.a, 7u)]), global4.x, !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-710f, 1661f, global4.x)) - var_0.a.x) > -198f), ~arg_1.x == (max(~u_input.a.x, arg_1.x) << (arg_1.x % 32u)));
    return func_1(Struct_4(arg_0.a.a.a.x, abs(min(u_input.a.x, 15458u) | 1u), select(-vec3<i32>(arg_0.a.a.b.x, 22633i, -35924i), firstTrailingBit(vec3<i32>(-53842i, 1i, arg_2.c.a.b.x)), select(select(vec3<bool>(false, global4.x, global4.x), global4.yzx, true), select(global4.ywx, global4.yxz, global4.x), global4.xyw)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.a.a.x, 3073f, 111f, 196f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a.c.x)), global2.a.a.x, arg_0.a.a.c.x)), vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(0i, arg_0.a.a.b.x, -14918i), vec3<i32>(-2147483647i, -2147483647i, var_0.b.x)), vec3<i32>(0i, var_0.b.x, arg_0.a.a.b.x) >> (vec3<u32>(arg_2.a, 1u, 19383u) % vec3<u32>(32u))), min(-var_1.x, arg_0.a.a.b.x), global2.a.b.x) & firstLeadingBit(-vec3<i32>(var_0.b.x, arg_0.a.a.b.x, var_0.b.x)), -(i32(-1i) * -44530i)).a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_6(func_1(Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global2.a.a.x)), 1000f)), u_input.a.x, vec3<i32>(select(global2.a.b.x, -48069i, global4.x), global2.a.b.x, 1i), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-470f, global2.a.c.x, global2.a.a.x, 761f), vec4<f32>(global2.a.a.x, global2.a.a.x, global2.a.c.x, 797f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.c.x, global2.a.a.x, 213f)))), -(~(vec3<i32>(11281i, global2.a.b.x, global2.a.b.x) | vec3<i32>(0i, global2.a.b.x, -2147483647i))), select(-_wgslsmith_clamp_i32(-2147483647i, 44885i, -1i), ~(global2.a.b.x >> (0u % 32u)), all(select(vec2<bool>(global4.x, true), global4.wx, vec2<bool>(false, global4.x))))), vec4<u32>(~(~(~42156u)), 26745u >> (_wgslsmith_mult_u32(~0u, _wgslsmith_clamp_u32(1u, 0u, 60042u)) % 32u), u_input.a.x, 1u), Struct_5(select(~1u, reverseBits(~20661u), global4.x), global1[_wgslsmith_index_u32(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(349f, 1509f)), _wgslsmith_f_op_f32(-global2.a.c.x)), func_1(Struct_4(676f, 0u, vec3<i32>(global2.a.b.x, global2.a.b.x, -3673i), vec4<f32>(global2.a.a.x, global2.a.a.x, global2.a.c.x, 1000f), global2.a.a.xzw), abs(vec3<i32>(global2.a.b.x, global2.a.b.x, global2.a.b.x)), global2.a.b.x ^ -1i), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(1u, 48266u, global4.x), 4294967295u), 24u)]).x, 24u)], Struct_2(global2.a), _wgslsmith_div_u32(countOneBits(_wgslsmith_mult_u32(40681u, u_input.a.x)), 28545u)));
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.a.a.x)));
    var var_0 = global2.a.a.zwx;
    let var_1 = global1[_wgslsmith_index_u32((((min(0u, u_input.a.x) << (u_input.a.x % 32u)) >> (~(~u_input.a.x) % 32u)) | _wgslsmith_sub_u32(56752u, ~abs(u_input.a.x))) ^ (firstLeadingBit(_wgslsmith_clamp_u32(u_input.b.x, firstTrailingBit(16696u), ~u_input.a.x)) << (abs(min(firstLeadingBit(u_input.b.x), 13079u)) % 32u)), 24u)];
    global1 = array<Struct_2, 24>();
    global0 = _wgslsmith_div_f32(func_1(Struct_4(-1000f, u_input.a.x, max(~vec3<i32>(var_1.a.b.x, 1i, var_1.a.b.x), reverseBits(vec3<i32>(var_1.a.b.x, var_1.a.b.x, var_1.a.b.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global2.a.a), _wgslsmith_div_vec4_f32(vec4<f32>(global2.a.c.x, global2.a.a.x, -137f, var_0.x), var_1.a.a), all(global4.yx))), func_5(-2147483647i, vec3<i32>(global2.a.b.x, var_1.a.b.x, global2.a.b.x)).a.a.wyw), abs(~vec3<i32>(-51031i, var_1.a.b.x, 2147483647i)), 37098i | (_wgslsmith_div_i32(2147483647i, global2.a.b.x) ^ global2.a.b.x)).a.a.a.x, var_0.x);
    var var_2 = select(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.b.x, ~0u ^ ~(8702u & u_input.b.x)), 7u)], !global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, 1u, 7089u), u_input.a), 7u)], !vec4<bool>(true, !select(false, true, false), _wgslsmith_f_op_f32(1000f - var_1.a.a.x) >= _wgslsmith_f_op_f32(trunc(1836f)), !(global4.x & global4.x)));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.a.a.x, var_1.a.c.x)) - _wgslsmith_f_op_f32(select(global2.a.a.x, -577f, global4.x))), func_1(Struct_4(func_1(Struct_4(-864f, 12924u, vec3<i32>(var_1.a.b.x, global2.a.b.x, var_1.a.b.x), var_1.a.a, var_1.a.a.yxz), select(vec3<i32>(var_1.a.b.x, var_1.a.b.x, global2.a.b.x), vec3<i32>(global2.a.b.x, 2147483647i, var_1.a.b.x), true), _wgslsmith_div_i32(-1i, -1i)).a.a.c.x, u_input.a.x, _wgslsmith_clamp_vec3_i32(vec3<i32>(-17766i, -9241i, 1i), vec3<i32>(1i, global2.a.b.x, 5034i), vec3<i32>(82344i, global2.a.b.x, -7679i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.a.x, global2.a.a.x, 162f, var_1.a.a.x) * vec4<f32>(-1828f, var_1.a.c.x, -526f, global2.a.c.x))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(826f, -325f, var_1.a.a.x), var_1.a.a.ywz, true))), select(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-21901i, 23148i, var_1.a.b.x, -9288i), vec4<i32>(-19556i, var_1.a.b.x, 20745i, 0i)), func_4(vec3<u32>(u_input.b.x, 59332u, u_input.a.x), vec4<i32>(var_1.a.b.x, 23477i, 17837i, -1i), global1[_wgslsmith_index_u32(1u, 24u)], u_input.a.yxw), ~global2.a.b.x), vec3<i32>(var_1.a.b.x, var_1.a.b.x, 0i) >> (min(vec3<u32>(u_input.b.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.b.x, u_input.b.x, 25419u)) % vec3<u32>(32u)), all(global3[_wgslsmith_index_u32(~4294967295u, 7u)])), i32(-1i) * -55607i).a.a.a.x, -212f);
    let x = u_input.a;
    s_output = StorageBuffer(82800u & min(u_input.a.x, u_input.b.x & ~4294967295u), vec2<i32>(var_1.a.b.x, -34633i), u_input.a.x << (_wgslsmith_add_u32(u_input.a.x, 4294967295u) % 32u), -min(global2.a.b ^ firstTrailingBit(vec2<i32>(var_1.a.b.x, global2.a.b.x)), firstLeadingBit(-vec2<i32>(-2147483647i, global2.a.b.x))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.a.a.x, -674f))));
}

