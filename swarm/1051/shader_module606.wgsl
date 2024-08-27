struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_3,
    e: vec4<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec2<u32>(0u, 1452u), -1377f, -175f), Struct_1(vec2<u32>(0u, 4294967295u), 442f, -1410f), Struct_1(vec2<u32>(6548u, 3648u), -1076f, 340f), Struct_1(vec2<u32>(1u, 4294967295u), 858f, -153f), Struct_1(vec2<u32>(1u, 84795u), -1000f, -702f), Struct_1(vec2<u32>(14709u, 0u), -1602f, -603f), Struct_1(vec2<u32>(4294967295u, 17776u), -967f, 560f), Struct_1(vec2<u32>(0u, 22055u), 196f, 780f), Struct_1(vec2<u32>(28915u, 1u), -1565f, -290f), Struct_1(vec2<u32>(4294967295u, 1u), 1365f, -891f), Struct_1(vec2<u32>(104600u, 4294967295u), 320f, -485f), Struct_1(vec2<u32>(25692u, 17446u), 690f, 1111f), Struct_1(vec2<u32>(4294967295u, 11612u), 456f, 670f), Struct_1(vec2<u32>(46529u, 1u), -1539f, 951f), Struct_1(vec2<u32>(1u, 0u), -2258f, 314f), Struct_1(vec2<u32>(1u, 53280u), 122f, -1790f), Struct_1(vec2<u32>(1u, 3552u), -570f, 266f), Struct_1(vec2<u32>(59677u, 11084u), 800f, -1811f), Struct_1(vec2<u32>(4294967295u, 30829u), 764f, 904f), Struct_1(vec2<u32>(4294967295u, 1u), -570f, -1000f), Struct_1(vec2<u32>(32042u, 18786u), -419f, 1124f), Struct_1(vec2<u32>(51749u, 3651u), 1346f, -534f), Struct_1(vec2<u32>(1u, 37312u), -2078f, -997f), Struct_1(vec2<u32>(13436u, 0u), 1381f, -1697f));

var<private> global1: array<i32, 28> = array<i32, 28>(-11166i, 56841i, 17048i, 11934i, 2147483647i, 2147483647i, 0i, 5309i, i32(-2147483648), -1i, 32967i, 28655i, i32(-2147483648), 2147483647i, 78517i, 2147483647i, 11254i, -1i, -51944i, -81638i, 16225i, 0i, -10011i, 30410i, 2147483647i, 0i, 2147483647i, 54837i);

var<private> global2: array<bool, 1>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: f32) -> vec2<u32> {
    return vec2<u32>(~(~arg_0), min(arg_0, 47996u));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: f32) -> vec2<u32> {
    global0 = array<Struct_1, 24>();
    global0 = array<Struct_1, 24>();
    var var_0 = Struct_5(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(17179u, arg_2.c), 24u)], Struct_2(global0[_wgslsmith_index_u32(~(~4294967295u), 24u)], -(~(-vec2<i32>(1i, -2147483647i))), ~_wgslsmith_clamp_u32(arg_2.c ^ 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(46155u, arg_2.a.a.x), arg_2.a.a), _wgslsmith_add_u32(0u, 1u))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + -245f) - arg_2.a.c), -1000f, _wgslsmith_f_op_f32(369f - _wgslsmith_f_op_f32(-1552f + 477f))))));
    var var_1 = vec2<u32>(~0u, countOneBits(51229u));
    global0 = array<Struct_1, 24>();
    return _wgslsmith_mult_vec2_u32(~_wgslsmith_add_vec2_u32(~arg_2.a.a, vec2<u32>(arg_2.c, countOneBits(arg_2.c))), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(func_2(510u, vec3<i32>(u_input.a.x, -18129i, global1[_wgslsmith_index_u32(36712u, 28u)]), vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(0u, 28u)], -249i), var_0.c.x) >> (~var_0.a.a % vec2<u32>(32u)), vec2<u32>(var_1.x, var_0.a.a.x)), var_0.a.a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    var var_0 = Struct_3(293f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(796f, -939f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1005f, arg_0.b) - vec2<f32>(-1000f, 1211f))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, -1153f)))))));
    var var_1 = Struct_5(Struct_1(_wgslsmith_clamp_vec2_u32(countOneBits(max(vec2<u32>(arg_1.a.x, arg_1.a.x), arg_0.a)), arg_1.a, vec2<u32>(93067u, 43450u)), var_0.b.x, 358f), Struct_2(arg_1, ~(~(~u_input.a.zy)), arg_1.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-102f, _wgslsmith_div_f32(var_0.c.x, var_0.c.x), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(arg_0.c - -2969f)) - vec4<f32>(_wgslsmith_f_op_f32(floor(-337f)), _wgslsmith_f_op_f32(-837f * arg_0.c), _wgslsmith_f_op_f32(trunc(1369f)), -903f))));
    var var_2 = Struct_1(vec2<u32>(var_1.a.a.x, _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.b.a.a.x, arg_0.a.x, var_1.b.a.a.x, 0u), ~vec4<u32>(66493u, 1u, arg_1.a.x, var_1.a.a.x)))), _wgslsmith_f_op_f32(select(arg_1.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1771f, var_0.a)))), global1[_wgslsmith_index_u32(4294967295u, 28u)] >= -1i)), arg_0.b);
    var_2 = Struct_1(var_2.a, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1.a.c, arg_1.c), _wgslsmith_f_op_f32(-arg_0.c))), -358f);
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.b, _wgslsmith_f_op_f32(ceil(var_1.a.b)), -506f, var_2.b), var_1.c)), vec4<f32>(-945f, _wgslsmith_f_op_f32(1378f + _wgslsmith_f_op_f32(min(var_2.c, 850f))), arg_1.c, arg_0.b))), var_1.c, false));
    return Struct_2(var_1.b.a, abs(~vec2<i32>(~(-59009i), global1[_wgslsmith_index_u32(~0u, 28u)])), var_1.a.a.x);
}

fn func_4(arg_0: Struct_4, arg_1: vec4<u32>) -> Struct_2 {
    let var_0 = Struct_5(Struct_1(vec2<u32>(~min(8120u, 4294967295u), (97507u >> (arg_1.x % 32u)) >> (~4294967295u % 32u)), 397f, -1000f), arg_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.c.x, _wgslsmith_div_f32(-356f, arg_0.a), arg_0.a, arg_0.d.c.x))));
    var var_1 = ~select(global1[_wgslsmith_index_u32(10486u, 28u)], 1i, any(!vec2<bool>(global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(arg_0.c.a.a.x, 1u)])));
    var_1 = _wgslsmith_dot_vec2_i32(~select(arg_0.c.b | vec2<i32>(var_0.b.b.x, var_0.b.b.x), vec2<i32>(_wgslsmith_mod_i32(var_0.b.b.x, arg_0.c.b.x), global1[_wgslsmith_index_u32(arg_0.b.x, 28u)]), select(!vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 1u)]), !vec2<bool>(global2[_wgslsmith_index_u32(0u, 1u)], false), any(vec3<bool>(global2[_wgslsmith_index_u32(36610u, 1u)], true, false)))), ~max(_wgslsmith_sub_vec2_i32(~u_input.a.yx, vec2<i32>(-2147483647i, -42896i)), min(arg_0.c.b ^ vec2<i32>(u_input.a.x, 1i), select(u_input.a.wz, var_0.b.b, true))));
    var_1 = i32(-1i) * -2147483647i;
    let var_2 = max(abs(_wgslsmith_clamp_vec4_u32(arg_0.b, _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x, 27459u, arg_0.c.a.a.x, arg_0.b.x), arg_1), ~vec4<u32>(0u, arg_1.x, 34589u, 18546u), vec4<u32>(10155u, 39989u, 4294967295u, 8851u) >> (arg_1 % vec4<u32>(32u))), abs(firstLeadingBit(vec4<u32>(69575u, arg_1.x, 0u, var_0.a.a.x))))), ~arg_1);
    return func_3(global0[_wgslsmith_index_u32(var_2.x, 24u)], global0[_wgslsmith_index_u32(~15123u, 24u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 24>();
    global1 = array<i32, 28>();
    global1 = array<i32, 28>();
    var var_0 = true;
    global0 = array<Struct_1, 24>();
    var var_1 = func_4(Struct_4(-395f, ~vec4<u32>(51661u, 16942u, 25078u, 14088u) >> (min(select(vec4<u32>(4294967295u, 26812u, 52798u, 10362u), vec4<u32>(13865u, 471u, 4294967295u, 0u), vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 1u)], global2[_wgslsmith_index_u32(61613u, 1u)], true)), vec4<u32>(14743u, 45366u, 55381u, 4294967295u)) % vec4<u32>(32u)), func_3(Struct_1(func_1(vec2<bool>(true, false), vec2<f32>(1000f, 349f), Struct_2(global0[_wgslsmith_index_u32(58329u, 24u)], vec2<i32>(u_input.a.x, global1[_wgslsmith_index_u32(0u, 28u)]), 1u), 748f), _wgslsmith_f_op_f32(f32(-1f) * -635f), -315f), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(vec3<u32>(0u, 4489u, 29051u), vec3<u32>(70763u, 1u, 1u)), vec3<u32>(1u, 1u, 1u)), 24u)]), Struct_3(367f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(718f, 1145f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-624f, 180f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1109f, -1000f) + vec2<f32>(-794f, 945f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), ~(~(vec4<u32>(1u, 1u, 1u, 1u) & firstTrailingBit(vec4<u32>(0u, 4294967295u, 20123u, 4294967295u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(vec3<i32>(-global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.c, var_1.a.a.x), 28u)], _wgslsmith_mod_i32(2147483647i, -var_1.b.x), var_1.b.x), ~vec3<i32>(13483i, -2147483647i, -2147483647i)));
}

