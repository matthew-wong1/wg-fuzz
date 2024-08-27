struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec2<bool>;

var<private> global2: array<bool, 23>;

var<private> global3: array<Struct_4, 21> = array<Struct_4, 21>(Struct_4(vec2<f32>(358f, -505f), Struct_1(vec4<bool>(false, false, false, true), vec3<u32>(0u, 51177u, 4294967295u), vec2<u32>(30953u, 1u), vec2<i32>(i32(-2147483648), 2147483647i)), 773f), Struct_4(vec2<f32>(-1121f, 251f), Struct_1(vec4<bool>(true, false, true, false), vec3<u32>(1u, 1u, 66862u), vec2<u32>(45000u, 0u), vec2<i32>(1i, -14548i)), -107f), Struct_4(vec2<f32>(-435f, 1748f), Struct_1(vec4<bool>(false, false, false, false), vec3<u32>(65865u, 40855u, 4294967295u), vec2<u32>(0u, 39086u), vec2<i32>(-36661i, -1i)), -1394f), Struct_4(vec2<f32>(-1211f, -588f), Struct_1(vec4<bool>(true, true, true, true), vec3<u32>(4294967295u, 60655u, 4294967295u), vec2<u32>(32190u, 0u), vec2<i32>(-1736i, 0i)), 1988f), Struct_4(vec2<f32>(-305f, 1292f), Struct_1(vec4<bool>(true, true, false, false), vec3<u32>(1u, 34363u, 8572u), vec2<u32>(11056u, 13310u), vec2<i32>(1i, -23326i)), -167f), Struct_4(vec2<f32>(889f, -1304f), Struct_1(vec4<bool>(true, false, false, false), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec2<u32>(8228u, 20131u), vec2<i32>(1i, 11482i)), -1139f), Struct_4(vec2<f32>(-891f, 2072f), Struct_1(vec4<bool>(true, true, true, false), vec3<u32>(29341u, 22237u, 832u), vec2<u32>(6303u, 1u), vec2<i32>(i32(-2147483648), 0i)), 652f), Struct_4(vec2<f32>(-315f, 344f), Struct_1(vec4<bool>(false, false, false, false), vec3<u32>(99396u, 1u, 1u), vec2<u32>(20770u, 58446u), vec2<i32>(-4114i, 0i)), 151f), Struct_4(vec2<f32>(-564f, -466f), Struct_1(vec4<bool>(false, true, false, true), vec3<u32>(4414u, 1u, 51994u), vec2<u32>(3815u, 9944u), vec2<i32>(-8613i, -15462i)), -403f), Struct_4(vec2<f32>(1046f, -422f), Struct_1(vec4<bool>(false, false, true, true), vec3<u32>(36813u, 30930u, 33445u), vec2<u32>(10565u, 3434u), vec2<i32>(2147483647i, 1i)), -1450f), Struct_4(vec2<f32>(-1981f, -1000f), Struct_1(vec4<bool>(true, false, false, true), vec3<u32>(0u, 1u, 16087u), vec2<u32>(0u, 4294967295u), vec2<i32>(i32(-2147483648), 1i)), -1198f), Struct_4(vec2<f32>(1054f, -265f), Struct_1(vec4<bool>(true, false, false, false), vec3<u32>(4294967295u, 76797u, 626u), vec2<u32>(37817u, 4294967295u), vec2<i32>(2147483647i, 1i)), 1975f), Struct_4(vec2<f32>(-355f, -2245f), Struct_1(vec4<bool>(false, true, true, false), vec3<u32>(0u, 42888u, 4294967295u), vec2<u32>(1u, 0u), vec2<i32>(12796i, 1i)), -1992f), Struct_4(vec2<f32>(-595f, 873f), Struct_1(vec4<bool>(false, true, true, false), vec3<u32>(27016u, 20928u, 0u), vec2<u32>(1u, 14183u), vec2<i32>(-14648i, 1i)), -474f), Struct_4(vec2<f32>(-159f, 511f), Struct_1(vec4<bool>(false, false, true, false), vec3<u32>(0u, 1u, 0u), vec2<u32>(1u, 0u), vec2<i32>(17984i, 22284i)), 1705f), Struct_4(vec2<f32>(-539f, -600f), Struct_1(vec4<bool>(false, true, true, false), vec3<u32>(30759u, 24158u, 4294967295u), vec2<u32>(20151u, 0u), vec2<i32>(64819i, 53717i)), -1708f), Struct_4(vec2<f32>(791f, 239f), Struct_1(vec4<bool>(true, true, false, true), vec3<u32>(113964u, 0u, 21413u), vec2<u32>(0u, 82634u), vec2<i32>(i32(-2147483648), 1i)), 2148f), Struct_4(vec2<f32>(667f, 335f), Struct_1(vec4<bool>(false, false, false, false), vec3<u32>(19727u, 0u, 12684u), vec2<u32>(1u, 4294967295u), vec2<i32>(-57717i, 0i)), 140f), Struct_4(vec2<f32>(693f, 1000f), Struct_1(vec4<bool>(true, false, false, true), vec3<u32>(1u, 5748u, 1u), vec2<u32>(13617u, 2000u), vec2<i32>(2147483647i, 4033i)), 1232f), Struct_4(vec2<f32>(727f, -596f), Struct_1(vec4<bool>(false, false, false, false), vec3<u32>(74280u, 52923u, 45563u), vec2<u32>(57813u, 757u), vec2<i32>(2147483647i, -882i)), -575f), Struct_4(vec2<f32>(289f, -349f), Struct_1(vec4<bool>(false, true, false, false), vec3<u32>(19325u, 1u, 1u), vec2<u32>(6808u, 0u), vec2<i32>(2147483647i, i32(-2147483648))), -193f));

var<private> global4: Struct_2 = Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec3<u32>(42677u, 4294967295u, 37386u), vec2<u32>(54900u, 8461u), vec2<i32>(i32(-2147483648), -15186i)));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<i32> {
    var var_0 = Struct_3(global4.a.a.zy, Struct_2(Struct_1(!select(global4.a.a, global4.a.a, global1.x), countOneBits(_wgslsmith_div_vec3_u32(global4.a.b, vec3<u32>(15661u, 20780u, u_input.b))), global4.a.c, ~(-vec2<i32>(u_input.a.x, -2147483647i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1201f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-416f * -280f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global0.x)))))));
    global4 = var_0.b;
    let var_1 = _wgslsmith_add_vec2_i32(u_input.a.zx, _wgslsmith_sub_vec2_i32(vec2<i32>(34648i, i32(-1i) * -var_0.b.a.d.x), _wgslsmith_add_vec2_i32(var_0.b.a.d, var_0.b.a.d)));
    global2 = array<bool, 23>();
    var var_2 = var_0.b.a.a.zy;
    return var_0.b.a.d;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: bool, arg_3: bool) -> vec2<bool> {
    global4 = Struct_2(Struct_1(arg_1, ~reverseBits(~global4.a.b), (global4.a.c | vec2<u32>(global4.a.b.x, 1u)) << (abs(global4.a.c) % vec2<u32>(32u)), func_3() >> (select(vec2<u32>(u_input.b, 18600u), vec2<u32>(7520u, 34731u) | global4.a.b.xy, vec2<bool>(global2[_wgslsmith_index_u32(46471u, 23u)], true)) % vec2<u32>(32u))));
    var var_0 = global4.a.d;
    var var_1 = select(!(!arg_1), vec4<bool>(any(!global4.a.a), reverseBits(reverseBits(global4.a.d.x)) == _wgslsmith_mult_i32(u_input.a.x, _wgslsmith_clamp_i32(global4.a.d.x, -6598i, var_0.x)), !(_wgslsmith_mod_i32(global4.a.d.x, -2147483647i) >= ~global4.a.d.x), any(vec4<bool>(global4.a.b.x >= global4.a.b.x, arg_2, arg_3, arg_3))), select(!vec4<bool>(true, true, true, global1.x | false), !(!vec4<bool>(false, false, arg_3, false)), global4.a.a));
    global3 = array<Struct_4, 21>();
    global2 = array<bool, 23>();
    return select(select(select(vec2<bool>(all(var_1.yzx), any(var_1.wx)), vec2<bool>(global0.x < arg_0.x, !global2[_wgslsmith_index_u32(global4.a.b.x, 23u)]), var_1.xy), select(vec2<bool>(true, true), select(select(var_1.xx, vec2<bool>(arg_3, arg_2), global4.a.a.wy), global4.a.a.wx, vec2<bool>(true, true)), var_1.zy), all(!select(arg_1.zy, arg_1.zz, arg_1.x))), select(select(select(select(global4.a.a.xw, arg_1.wx, false), !arg_1.xx, vec2<bool>(arg_2, false)), select(vec2<bool>(arg_1.x, global4.a.a.x), vec2<bool>(arg_3, global1.x), !vec2<bool>(false, var_1.x)), !select(arg_1.wy, var_1.yx, false)), vec2<bool>(arg_0.x <= _wgslsmith_f_op_f32(f32(-1f) * -1427f), all(arg_1)), select(vec2<bool>(u_input.b <= 4294967295u, arg_2 | global1.x), vec2<bool>(any(arg_1.zwy), var_1.x), select(global4.a.a.zw, !vec2<bool>(var_1.x, global2[_wgslsmith_index_u32(global4.a.c.x, 23u)]), select(var_1.zy, vec2<bool>(arg_3, false), arg_1.zz)))), select(select(global4.a.a.zx, !(!arg_1.xw), select(vec2<bool>(false, global2[_wgslsmith_index_u32(global4.a.b.x, 23u)]), select(arg_1.zw, var_1.wz, true), !global4.a.a.zx)), !vec2<bool>(var_1.x, any(global4.a.a)), false));
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> Struct_4 {
    global3 = array<Struct_4, 21>();
    global2 = array<bool, 23>();
    var var_0 = _wgslsmith_add_i32(global4.a.d.x, countOneBits((max(45336i, u_input.a.x) ^ u_input.a.x) << (u_input.b % 32u)));
    return global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(~(select(80721u, arg_1.b.a.c.x, true) >> (u_input.b % 32u)), 43890u), 21u)];
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec2<f32>) -> vec3<u32> {
    let var_0 = global4.a.b.x;
    let var_1 = global4.a.b;
    global1 = select(!global4.a.a.wz, vec2<bool>(false, true), true);
    var var_2 = all(select(!(!global4.a.a.wy), !(!select(arg_2.b.a.ww, global4.a.a.zx, global4.a.a.x)), all(arg_2.b.a.wy)));
    let var_3 = func_4(true, Struct_3(!func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-955f, global0.x, 2444f, arg_2.a.x)), vec4<bool>(global1.x, global1.x, arg_2.b.a.x, arg_1.a.x), !global2[_wgslsmith_index_u32(global4.a.b.x, 23u)], false), Struct_2(arg_1), _wgslsmith_f_op_f32(-arg_2.a.x)));
    return firstTrailingBit(arg_1.b);
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = ~(-(vec4<i32>(-2788i, global4.a.d.x, -2147483647i, 8754i) ^ vec4<i32>(global4.a.d.x, 2147483647i, u_input.a.x, global4.a.d.x)) >> (_wgslsmith_mult_vec4_u32(abs(vec4<u32>(arg_0, 44619u, arg_0, 6921u)), ~vec4<u32>(92793u, 1u, 3735u, u_input.b)) % vec4<u32>(32u))) >> (abs(vec4<u32>(~16787u, abs(arg_0), 21242u, countOneBits(0u)) >> (vec4<u32>(select(u_input.b, 9909u, arg_1.a.x), 111002u, 35200u, _wgslsmith_mult_u32(global4.a.c.x, u_input.b)) % vec4<u32>(32u))) % vec4<u32>(32u));
    global3 = array<Struct_4, 21>();
    let var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(global0.zx, vec2<f32>(global0.x, global0.x))), _wgslsmith_div_vec2_f32(global0.xw, vec2<f32>(global0.x, -701f)))))), Struct_1(func_4(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1003f, 145f, -112f)), vec4<bool>(global4.a.a.x, false, true, global4.a.a.x), all(vec2<bool>(false, false)), false && global4.a.a.x).x, Struct_3(!global4.a.a.zw, Struct_2(arg_1), _wgslsmith_f_op_f32(floor(global0.x)))).b.a, reverseBits(min(~arg_1.b, arg_1.b)), vec2<u32>(u_input.b, global4.a.b.x), abs(_wgslsmith_add_vec2_i32(arg_1.d >> (arg_1.c % vec2<u32>(32u)), u_input.a.zx))), func_4(global1.x, Struct_3(vec2<bool>(select(global1.x, true, false), true), Struct_2(Struct_1(vec4<bool>(false, global4.a.a.x, global1.x, global1.x), arg_1.b, global4.a.c, vec2<i32>(arg_1.d.x, -5166i))), _wgslsmith_f_op_f32(f32(-1f) * -156f))).c);
    let var_2 = func_4(any(vec4<bool>(true, arg_1.a.x | true, true, !(0u == var_1.b.c.x))), Struct_3(!select(func_2(vec4<f32>(1291f, var_1.a.x, 1535f, 106f), global4.a.a, false, false), !vec2<bool>(arg_1.a.x, false), arg_1.a.yx), Struct_2(var_1.b), var_1.c)).b;
    let var_3 = i32(-1i) * -var_1.b.d.x;
    return func_4(!global4.a.a.x, Struct_3(vec2<bool>(true, false), Struct_2(var_1.b), global0.x)).b;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_4, 21>();
    var var_0 = firstTrailingBit(~52847u);
    var_0 = 4294967295u;
    let var_1 = global4.a.a.yz;
    global4 = Struct_2(func_5(~global4.a.b.x ^ (4294967295u >> (min(global4.a.b.x, global4.a.c.x) % 32u)), Struct_1(select(global4.a.a, !vec4<bool>(false, false, global2[_wgslsmith_index_u32(u_input.b, 23u)], var_1.x), var_1.x), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 1552u, 0u), vec3<u32>(u_input.b, u_input.b, u_input.b)), func_1(u_input.b, Struct_1(global4.a.a, vec3<u32>(32924u, 0u, global4.a.c.x), vec2<u32>(0u, 0u), vec2<i32>(47660i, 44208i)), Struct_4(vec2<f32>(248f, global0.x), global4.a, global0.x), vec2<f32>(global0.x, -289f))), select(vec2<u32>(u_input.b, u_input.b) & global4.a.c, global4.a.b.yy, global4.a.a.x != true), vec2<i32>(func_3().x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, global4.a.d.x, global4.a.d.x), vec3<i32>(u_input.a.x, global4.a.d.x, u_input.a.x))))));
    global2 = array<bool, 23>();
    var var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 1407f) * _wgslsmith_f_op_vec2_f32(-global0.zw)))), global4.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(868f + _wgslsmith_f_op_f32(f32(-1f) * -268f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + 521f) + -838f))));
    global3 = array<Struct_4, 21>();
    global1 = !vec2<bool>(select(!(!global4.a.a.x), any(vec2<bool>(global4.a.a.x, var_1.x)), false), !all(global4.a.a.yxz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -1i, u_input.a.x), u_input.a) & firstTrailingBit(-9454i), 0i, 11942i, ~var_2.b.d.x), vec4<i32>(func_3().x, u_input.a.x, -24270i, global4.a.d.x & func_3().x)), ~global4.a.d.x, -22140i, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_2.a.x, _wgslsmith_f_op_f32(max(global0.x, 560f)))), _wgslsmith_f_op_f32(376f - 606f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(ceil(2352f)))), _wgslsmith_f_op_f32(-2522f + _wgslsmith_f_op_f32(select(global0.x, var_2.c, global1.x)))), _wgslsmith_f_op_f32(sign(1537f))));
}

