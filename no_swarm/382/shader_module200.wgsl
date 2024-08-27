struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<i32>,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(vec2<f32>(-147f, 1000f), vec3<bool>(true, false, true)), Struct_2(vec2<f32>(-173f, -1000f), vec3<bool>(false, false, true)), Struct_2(vec2<f32>(491f, 733f), vec3<bool>(false, true, true)), Struct_2(vec2<f32>(-1000f, -1000f), vec3<bool>(false, true, true)), Struct_2(vec2<f32>(939f, 693f), vec3<bool>(true, false, true)), Struct_2(vec2<f32>(-911f, -789f), vec3<bool>(true, false, true)), Struct_2(vec2<f32>(-959f, -520f), vec3<bool>(false, false, true)), Struct_2(vec2<f32>(-740f, 1302f), vec3<bool>(true, false, true)), Struct_2(vec2<f32>(794f, 492f), vec3<bool>(true, true, false)));

var<private> global1: bool;

var<private> global2: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global3: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec2<f32>(1624f, 1517f), vec3<bool>(true, true, true)), Struct_2(vec2<f32>(1730f, 714f), vec3<bool>(false, false, true)), Struct_2(vec2<f32>(1113f, 1556f), vec3<bool>(false, true, false)), Struct_2(vec2<f32>(1458f, -358f), vec3<bool>(false, false, true)), Struct_2(vec2<f32>(106f, 571f), vec3<bool>(true, false, false)), Struct_2(vec2<f32>(1343f, 555f), vec3<bool>(true, true, true)), Struct_2(vec2<f32>(-239f, 1622f), vec3<bool>(false, false, false)), Struct_2(vec2<f32>(1079f, 1792f), vec3<bool>(true, false, false)), Struct_2(vec2<f32>(-1162f, -425f), vec3<bool>(true, true, true)), Struct_2(vec2<f32>(1188f, -1542f), vec3<bool>(true, true, false)), Struct_2(vec2<f32>(391f, -991f), vec3<bool>(false, false, true)), Struct_2(vec2<f32>(-2031f, -183f), vec3<bool>(true, true, false)), Struct_2(vec2<f32>(803f, -331f), vec3<bool>(false, true, true)), Struct_2(vec2<f32>(540f, -1182f), vec3<bool>(true, false, false)), Struct_2(vec2<f32>(625f, 976f), vec3<bool>(false, false, true)), Struct_2(vec2<f32>(587f, -1247f), vec3<bool>(false, true, false)), Struct_2(vec2<f32>(-554f, 222f), vec3<bool>(false, true, true)), Struct_2(vec2<f32>(622f, 952f), vec3<bool>(false, true, false)), Struct_2(vec2<f32>(-482f, 1662f), vec3<bool>(false, true, true)), Struct_2(vec2<f32>(-572f, 537f), vec3<bool>(true, true, true)), Struct_2(vec2<f32>(1100f, -1486f), vec3<bool>(true, true, true)), Struct_2(vec2<f32>(782f, -902f), vec3<bool>(false, true, false)), Struct_2(vec2<f32>(-1246f, 715f), vec3<bool>(true, false, true)), Struct_2(vec2<f32>(-472f, -1362f), vec3<bool>(true, false, false)), Struct_2(vec2<f32>(710f, 1463f), vec3<bool>(false, false, false)), Struct_2(vec2<f32>(-1195f, 1000f), vec3<bool>(true, true, true)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = Struct_1(vec2<bool>(true, false), arg_0.e.x, select(_wgslsmith_div_vec3_i32(vec3<i32>(firstLeadingBit(0i), i32(-1i) * -2147483647i, abs(u_input.e.x)), -_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, u_input.e.x, arg_1.c.x), vec3<i32>(-27273i, -2609i, -2147483647i))), min(u_input.e, abs(-u_input.e)), vec3<bool>(!arg_0.a.x & false, !global2.x, true)), ~reverseBits(arg_0.d), vec2<f32>(_wgslsmith_div_f32(-1443f, arg_0.e.x), arg_0.e.x));
    global1 = arg_0.a.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(arg_1.e, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(142f, arg_1.b), _wgslsmith_div_f32(var_0.e.x, arg_0.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(154f, arg_1.b)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_0.e), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, arg_1.b) * vec2<f32>(-2138f, arg_0.b)), !vec2<bool>(arg_1.a.x, false)))) - _wgslsmith_f_op_vec2_f32(-var_0.e))));
    var var_2 = u_input.a;
    var var_3 = 30987u;
    return ~arg_0.c.x;
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = true;
    let var_1 = u_input.e.yz;
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1376f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(874f - 185f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(373f, -387f)) - 292f))))));
    let var_3 = 4294967295u;
    let var_4 = _wgslsmith_sub_vec4_i32(vec4<i32>(-88099i, var_1.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, var_1.x, -44000i, -2147483647i), vec4<i32>(var_1.x, var_1.x, var_1.x, 1i)), ~u_input.b.x), 7411i ^ -var_1.x) & _wgslsmith_mult_vec4_i32(vec4<i32>(func_3(Struct_1(vec2<bool>(true, global2.x), var_2.x, vec3<i32>(1i, -14193i, u_input.c), 63470u, var_2.yy), Struct_1(vec2<bool>(var_0, true), var_2.x, vec3<i32>(var_1.x, 0i, var_1.x), 38993u, var_2.yz)), 0i, 2147483647i, firstLeadingBit(var_1.x)), min(vec4<i32>(-2147483647i, u_input.d, -35368i, -2147483647i), max(vec4<i32>(u_input.b.x, var_1.x, u_input.b.x, 1i), vec4<i32>(u_input.e.x, 0i, u_input.e.x, -11243i)))), countOneBits(firstTrailingBit(~vec4<i32>(3279i, 2147483647i, var_1.x, 0i))) >> (vec4<u32>(46136u, u_input.a, ~17971u, var_3 >> (max(var_3, 91419u) % 32u)) % vec4<u32>(32u)));
    return Struct_1(select(select(!global2.xw, vec2<bool>(any(global2.xzy), true), vec2<bool>(all(global2.zyx), select(true, false, false))), global2.yw, vec2<bool>((arg_0 || global2.x) && true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(ceil(var_2.x)))), vec3<i32>(var_1.x, var_1.x, func_3(Struct_1(!global2.zw, var_2.x, -u_input.e, countOneBits(u_input.a), var_2.xy), Struct_1(global2.yw, 602f, vec3<i32>(u_input.e.x, var_1.x, 61781i), ~0u, vec2<f32>(1326f, -735f)))), 1u, var_2.yz);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_2) -> i32 {
    global0 = array<Struct_2, 9>();
    global3 = array<Struct_2, 26>();
    global3 = array<Struct_2, 26>();
    let var_0 = vec3<u32>(u_input.a, func_2(true).d, 4294967295u);
    let var_1 = select(global2.zww, arg_2.b, !arg_2.b);
    return arg_0.c.x;
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: f32) -> u32 {
    let var_0 = select(global2.zwy, global2.zww, true);
    global1 = false;
    let var_1 = global2.x;
    global1 = arg_1 < -_wgslsmith_mult_i32(arg_1, _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, arg_1, arg_0, -10924i), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 2147483647i, -20318i, arg_0), vec4<i32>(arg_0, -1i, -1i, arg_0))));
    global0 = array<Struct_2, 9>();
    return firstLeadingBit(firstLeadingBit(_wgslsmith_add_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(3685u, u_input.a, 0u, 1u), vec4<u32>(u_input.a, 25202u, 0u, 0u))), 41893u)));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = vec3<u32>(u_input.a | func_5(0i, func_4(func_2(true), vec2<u32>(arg_2.d, arg_2.d), global0[_wgslsmith_index_u32(arg_2.d, 9u)]), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-543f, arg_3.b))), (arg_0 & 73005u) >> ((~arg_1.x ^ ~(~arg_3.d)) % 32u), 64143u);
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_2.e, vec2<f32>(arg_3.e.x, arg_2.b), !(!global2.zx))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(703f + 1690f), arg_3.e.x))), select(select(!select(vec3<bool>(true, false, global2.x), vec3<bool>(true, false, true), true), global2.zzz, arg_2.a.x), global2.zyx, global2.x));
    var var_2 = !(!((select(arg_2.a.x, var_1.b.x, true) | false) && arg_3.a.x));
    var_2 = true;
    let var_3 = global0[_wgslsmith_index_u32(44633u, 9u)];
    return _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-294f * -2236f), -1000f, var_1.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1485f, var_1.a.x)), func_2(arg_3.a.x).b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1f, -1243f, _wgslsmith_f_op_f32(ceil(-883f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(u_input.a, vec2<u32>(1u, 1316u), Struct_1(vec2<bool>(global2.x, global2.x), -549f, vec3<i32>(-2147483647i, -59632i, u_input.b.x), u_input.a, vec2<f32>(1244f, -1594f)), Struct_1(global2.yz, 1700f, vec3<i32>(-18756i, -2147483647i, 51752i), 33062u, vec2<f32>(-122f, 3023f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1044f, 776f, 625f, -1525f) + vec4<f32>(-1402f, -855f, 142f, 210f)) * _wgslsmith_div_vec4_f32(vec4<f32>(763f, 469f, -1436f, -1894f), vec4<f32>(226f, 737f, 1000f, -577f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1462f, -1222f, -968f, -675f))))));
    let var_1 = func_2(global2.x);
    let var_2 = false;
    let var_3 = _wgslsmith_f_op_f32(-576f + _wgslsmith_f_op_f32(var_1.b - -368f));
    let var_4 = -u_input.e.x;
    global2 = vec4<bool>(!(!(~(-2147483647i) != abs(var_4))), false, !(all(select(global2.yzz, global2.zzy, global2.x)) & (all(global2.yxx) | true)), var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_1.e.x, -1041f), select(~vec4<i32>(-u_input.d, i32(-1i) * -2147483647i, 2147483647i, 1i), vec4<i32>(var_1.c.x, _wgslsmith_add_i32(abs(var_1.c.x), firstLeadingBit(35607i)), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, -35467i, u_input.b.x), vec4<i32>(var_4, u_input.e.x, 1i, 36619i)), 1i), -2147483647i), vec4<bool>(false, false, func_2(false).a.x, !(var_4 > var_4))), _wgslsmith_div_vec4_u32(~vec4<u32>(~25074u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_1.d), vec2<u32>(11663u, 1u)), var_1.d ^ u_input.a, u_input.a), max(vec4<u32>(u_input.a >> (u_input.a % 32u), countOneBits(u_input.a), u_input.a, min(4294967295u, u_input.a)), vec4<u32>(4294967295u, 25519u, 0u, 41790u) | max(vec4<u32>(var_1.d, 12655u, var_1.d, 0u), vec4<u32>(var_1.d, u_input.a, u_input.a, u_input.a)))), var_0.x);
}

