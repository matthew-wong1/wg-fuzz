struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec2<f32>(935f, -1031f), vec4<f32>(2382f, -1000f, 724f, 1663f)), Struct_1(vec2<f32>(1118f, -981f), vec4<f32>(-756f, 498f, 541f, -969f)), Struct_1(vec2<f32>(1197f, 258f), vec4<f32>(-1000f, 518f, -281f, -893f)), Struct_1(vec2<f32>(1000f, -1733f), vec4<f32>(-1000f, 585f, 1527f, 341f)), Struct_1(vec2<f32>(-1000f, 589f), vec4<f32>(-781f, -129f, 1000f, 1000f)), Struct_1(vec2<f32>(-1018f, 2094f), vec4<f32>(-1770f, -890f, 1000f, 791f)), Struct_1(vec2<f32>(-1993f, 733f), vec4<f32>(-740f, -1391f, 1000f, 1045f)), Struct_1(vec2<f32>(1389f, -576f), vec4<f32>(424f, 441f, -459f, 953f)), Struct_1(vec2<f32>(1286f, 1390f), vec4<f32>(-718f, -1076f, -259f, -941f)), Struct_1(vec2<f32>(-661f, -1301f), vec4<f32>(-211f, -1428f, -515f, 1294f)), Struct_1(vec2<f32>(-327f, -879f), vec4<f32>(-2144f, -676f, 307f, -1000f)), Struct_1(vec2<f32>(-753f, -1409f), vec4<f32>(-192f, 1490f, 1486f, -378f)), Struct_1(vec2<f32>(833f, -357f), vec4<f32>(401f, 875f, -1000f, -466f)), Struct_1(vec2<f32>(656f, 1789f), vec4<f32>(175f, 212f, -1075f, 230f)), Struct_1(vec2<f32>(-745f, 896f), vec4<f32>(467f, -302f, 1097f, -1179f)), Struct_1(vec2<f32>(1433f, -1032f), vec4<f32>(-237f, -656f, -484f, -1337f)), Struct_1(vec2<f32>(499f, -292f), vec4<f32>(1000f, 1321f, 827f, -1619f)));

var<private> global1: array<i32, 30>;

var<private> global2: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(Struct_1(vec2<f32>(-584f, -754f), vec4<f32>(-282f, -132f, 1000f, 2104f)), vec4<i32>(2147483647i, 6773i, 1i, 2682i)), Struct_2(Struct_1(vec2<f32>(544f, 424f), vec4<f32>(-2255f, -178f, -1704f, 2095f)), vec4<i32>(-65571i, 1i, i32(-2147483648), 2147483647i)), Struct_2(Struct_1(vec2<f32>(723f, -918f), vec4<f32>(362f, -1000f, 1333f, 179f)), vec4<i32>(0i, -34469i, 2147483647i, 72131i)), Struct_2(Struct_1(vec2<f32>(-783f, -891f), vec4<f32>(-1000f, -404f, -1000f, -170f)), vec4<i32>(33256i, 36853i, 2147483647i, 0i)), Struct_2(Struct_1(vec2<f32>(1000f, 512f), vec4<f32>(1176f, -407f, 1416f, -994f)), vec4<i32>(2147483647i, -26691i, 40337i, 53652i)), Struct_2(Struct_1(vec2<f32>(-454f, 1909f), vec4<f32>(-1000f, 2169f, -591f, 886f)), vec4<i32>(-16920i, -14243i, i32(-2147483648), 11775i)), Struct_2(Struct_1(vec2<f32>(-630f, 320f), vec4<f32>(-235f, 1000f, -889f, -653f)), vec4<i32>(46055i, 0i, -6557i, -3296i)), Struct_2(Struct_1(vec2<f32>(1053f, 1354f), vec4<f32>(609f, 623f, -887f, 593f)), vec4<i32>(-51400i, 0i, -42228i, i32(-2147483648))), Struct_2(Struct_1(vec2<f32>(723f, 914f), vec4<f32>(-783f, 653f, 444f, 1000f)), vec4<i32>(-46069i, 0i, -3488i, -19581i)), Struct_2(Struct_1(vec2<f32>(1000f, 1385f), vec4<f32>(-1719f, -1499f, -1000f, -2234f)), vec4<i32>(1i, 2147483647i, -6558i, 1i)), Struct_2(Struct_1(vec2<f32>(1000f, 789f), vec4<f32>(1558f, 1000f, 229f, -1036f)), vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 6368i)), Struct_2(Struct_1(vec2<f32>(-413f, -1337f), vec4<f32>(-574f, -1422f, -797f, -145f)), vec4<i32>(31599i, -1i, 36402i, -6950i)), Struct_2(Struct_1(vec2<f32>(-1355f, -309f), vec4<f32>(-421f, -397f, -1914f, -526f)), vec4<i32>(0i, i32(-2147483648), -22962i, 27682i)), Struct_2(Struct_1(vec2<f32>(2153f, 993f), vec4<f32>(1217f, 694f, -1000f, -1174f)), vec4<i32>(-25092i, 0i, 1i, -1i)), Struct_2(Struct_1(vec2<f32>(-817f, 922f), vec4<f32>(1000f, 1505f, -230f, -540f)), vec4<i32>(29801i, -16834i, 2147483647i, 17795i)), Struct_2(Struct_1(vec2<f32>(752f, -1000f), vec4<f32>(741f, 578f, -1000f, 601f)), vec4<i32>(8191i, 0i, -8372i, -4206i)), Struct_2(Struct_1(vec2<f32>(775f, -1011f), vec4<f32>(-144f, 575f, -849f, 1000f)), vec4<i32>(-20273i, i32(-2147483648), -1i, -33621i)), Struct_2(Struct_1(vec2<f32>(-1485f, 2123f), vec4<f32>(-1101f, -1239f, -1382f, -1248f)), vec4<i32>(-1i, 2147483647i, 16490i, 0i)), Struct_2(Struct_1(vec2<f32>(997f, -2365f), vec4<f32>(-1578f, 1655f, -183f, 1000f)), vec4<i32>(i32(-2147483648), 19007i, 0i, 2147483647i)), Struct_2(Struct_1(vec2<f32>(-1725f, -309f), vec4<f32>(1043f, 661f, -797f, 847f)), vec4<i32>(-21198i, 58003i, 0i, i32(-2147483648))), Struct_2(Struct_1(vec2<f32>(1062f, -193f), vec4<f32>(923f, 175f, 724f, 1908f)), vec4<i32>(-6428i, 47415i, 0i, 2147483647i)), Struct_2(Struct_1(vec2<f32>(426f, -251f), vec4<f32>(-1367f, 892f, 431f, 685f)), vec4<i32>(2147483647i, -17634i, 2147483647i, -14481i)), Struct_2(Struct_1(vec2<f32>(339f, 855f), vec4<f32>(583f, 295f, 881f, 251f)), vec4<i32>(38675i, 25659i, -1i, 2147483647i)), Struct_2(Struct_1(vec2<f32>(-1601f, 1315f), vec4<f32>(-759f, 1019f, 784f, 1486f)), vec4<i32>(-5078i, 14698i, -26076i, -1i)), Struct_2(Struct_1(vec2<f32>(1382f, 198f), vec4<f32>(253f, 560f, 1994f, -1358f)), vec4<i32>(0i, 8569i, 0i, 44257i)), Struct_2(Struct_1(vec2<f32>(-1424f, -990f), vec4<f32>(398f, 638f, 1725f, -469f)), vec4<i32>(0i, 6745i, -9244i, 75058i)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global2 = array<Struct_2, 26>();
    global2 = array<Struct_2, 26>();
    var var_0 = !(!(!any(select(vec2<bool>(true, true), vec2<bool>(false, false), true))));
    global1 = array<i32, 30>();
    global1 = array<i32, 30>();
    return ~(~u_input.a.x);
}

fn func_2(arg_0: vec2<f32>, arg_1: f32, arg_2: u32, arg_3: i32) -> vec3<i32> {
    global1 = array<i32, 30>();
    let var_0 = !vec4<bool>(false, func_3() < 1u, true, any(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true)));
    global0 = array<Struct_1, 17>();
    let var_1 = _wgslsmith_sub_u32(abs(select(u_input.a.x & arg_2, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 55837u, arg_2, 42507u), vec4<u32>(56882u, 1u, 0u, 0u), vec4<u32>(22188u, arg_2, u_input.a.x, u_input.a.x)), abs(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 1u))), var_0.x)), u_input.a.x);
    global1 = array<i32, 30>();
    return vec3<i32>(_wgslsmith_add_i32(~global1[_wgslsmith_index_u32(func_3(), 30u)], -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_3, global1[_wgslsmith_index_u32(var_1, 30u)]), vec2<i32>(-25383i, -1i))), _wgslsmith_mult_i32(firstLeadingBit(min(~arg_3, ~55577i)), 19062i), 21812i);
}

fn func_1() -> vec3<i32> {
    var var_0 = !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(u_input.a.x <= u_input.a.x, true), vec2<bool>(true, true)), true);
    let var_1 = global2[_wgslsmith_index_u32(49381u, 26u)];
    var_0 = vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1338f) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.b.x, -902f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-743f - -1000f), _wgslsmith_f_op_f32(f32(-1f) * -2504f), true)))), false);
    global1 = array<i32, 30>();
    let var_2 = var_1.a.b;
    return vec3<i32>(global1[_wgslsmith_index_u32(select(u_input.a.x, select(reverseBits(3667u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(45991u, 29359u, u_input.a.x, 25794u)), true), !(!var_0.x)), 30u)], -firstLeadingBit(abs(var_1.b.x)), 1i) & _wgslsmith_add_vec3_i32(var_1.b.xzw, _wgslsmith_clamp_vec3_i32(func_2(vec2<f32>(var_2.x, var_2.x), -435f, 26562u, global1[_wgslsmith_index_u32(1u, 30u)]) | ~vec3<i32>(2147483647i, var_1.b.x, -14875i), var_1.b.wwy, ~(var_1.b.xzw >> (vec3<u32>(u_input.a.x, 64613u, 63037u) % vec3<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 17>();
    var var_0 = -(~min(_wgslsmith_mod_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 30u)], global1[_wgslsmith_index_u32(1u, 30u)], -24217i), func_1()), countOneBits(-vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 30u)], 25162i, global1[_wgslsmith_index_u32(u_input.a.x, 30u)]))));
    var var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 17u)];
    var var_2 = Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], _wgslsmith_sub_vec4_i32(select(firstTrailingBit(~vec4<i32>(1i, global1[_wgslsmith_index_u32(u_input.a.x, 30u)], var_0.x, -15251i)), vec4<i32>(-1i) * -vec4<i32>(21584i, 2180i, -2147483647i, 1i), select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), false), true)), select(firstLeadingBit(~vec4<i32>(-4538i, var_0.x, global1[_wgslsmith_index_u32(u_input.a.x, 30u)], -24971i)), -_wgslsmith_mod_vec4_i32(vec4<i32>(-48085i, 2147483647i, var_0.x, 0i), vec4<i32>(-47316i, 17066i, global1[_wgslsmith_index_u32(6401u, 30u)], var_0.x)), all(vec3<bool>(false, false, true)))));
    var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(1i, 36514i, countOneBits(~(~var_2.b.x))), abs(vec3<i32>(~0i, -2147483647i, max(-1i, _wgslsmith_mod_i32(var_0.x, var_2.b.x)))));
    let var_3 = global2[_wgslsmith_index_u32(abs(0u), 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(11665u, countOneBits(abs(~6822u)), 1687u, ~firstLeadingBit(reverseBits(u_input.a.x))), min(~_wgslsmith_dot_vec2_u32(u_input.a, ~vec2<u32>(26780u, u_input.a.x)), 0u), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_3.a.a.x, var_2.a.b.x, var_2.a.a.x))), _wgslsmith_f_op_vec3_f32(trunc(var_1.b.xxy)))));
}

