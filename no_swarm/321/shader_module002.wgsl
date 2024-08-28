struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: u32,
    d: vec4<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
    c: vec4<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<u32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(true, false, false, true, true, true, true, true, true, false, true, false, false, true, true);

var<private> global1: f32;

var<private> global2: vec4<i32>;

var<private> global3: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(vec3<u32>(5304u, 62504u, 1u), Struct_3(vec4<f32>(354f, -1016f, -618f, -301f), vec4<bool>(false, true, false, true), 0u, vec4<i32>(-1i, i32(-2147483648), 34688i, i32(-2147483648)), Struct_2(vec3<i32>(-33271i, 61271i, -15218i), 890f, Struct_1(false, vec4<u32>(30206u, 9380u, 0u, 31691u), vec3<bool>(true, false, false)))), vec4<f32>(134f, -1009f, -2141f, 171f)), Struct_4(vec3<u32>(1u, 1u, 11710u), Struct_3(vec4<f32>(1438f, 560f, 1000f, -955f), vec4<bool>(true, false, false, true), 4294967295u, vec4<i32>(1i, 2147483647i, 4824i, -28193i), Struct_2(vec3<i32>(-36255i, i32(-2147483648), 833i), 2605f, Struct_1(true, vec4<u32>(23453u, 74125u, 0u, 47148u), vec3<bool>(true, true, false)))), vec4<f32>(853f, -376f, 289f, 147f)), Struct_4(vec3<u32>(107609u, 25033u, 39456u), Struct_3(vec4<f32>(1144f, 716f, -123f, 1672f), vec4<bool>(true, false, false, true), 4294967295u, vec4<i32>(38247i, -1i, 4390i, -35834i), Struct_2(vec3<i32>(4397i, 1i, -25334i), 371f, Struct_1(false, vec4<u32>(1103u, 1u, 1u, 6099u), vec3<bool>(true, false, true)))), vec4<f32>(185f, 994f, 1000f, -373f)), Struct_4(vec3<u32>(1u, 1u, 48575u), Struct_3(vec4<f32>(-1123f, -157f, -184f, 710f), vec4<bool>(true, false, true, true), 6774u, vec4<i32>(27651i, 1i, 1i, -8608i), Struct_2(vec3<i32>(2147483647i, -28775i, 2147483647i), 578f, Struct_1(false, vec4<u32>(1u, 3602u, 1u, 17845u), vec3<bool>(true, true, false)))), vec4<f32>(1000f, 244f, -978f, 1228f)), Struct_4(vec3<u32>(0u, 4294967295u, 4294967295u), Struct_3(vec4<f32>(-801f, -858f, -891f, 213f), vec4<bool>(false, true, true, false), 0u, vec4<i32>(0i, -1i, 0i, 1i), Struct_2(vec3<i32>(-55145i, 1i, -9009i), -410f, Struct_1(true, vec4<u32>(19212u, 1u, 3282u, 48269u), vec3<bool>(false, true, false)))), vec4<f32>(-1620f, -2442f, 943f, -113f)), Struct_4(vec3<u32>(34259u, 1u, 33236u), Struct_3(vec4<f32>(778f, -1667f, -798f, -862f), vec4<bool>(false, true, false, false), 1u, vec4<i32>(-1i, -1i, -30523i, 2147483647i), Struct_2(vec3<i32>(31176i, -1i, 2147483647i), -1700f, Struct_1(true, vec4<u32>(0u, 0u, 1u, 1u), vec3<bool>(true, true, false)))), vec4<f32>(239f, -387f, -2264f, -1446f)), Struct_4(vec3<u32>(4023u, 0u, 0u), Struct_3(vec4<f32>(-1000f, 2020f, 697f, -1352f), vec4<bool>(true, false, false, true), 1u, vec4<i32>(0i, -1i, 80204i, -36953i), Struct_2(vec3<i32>(-10689i, 2147483647i, 1i), -984f, Struct_1(false, vec4<u32>(35997u, 1u, 51559u, 32830u), vec3<bool>(false, true, false)))), vec4<f32>(1083f, -1469f, -242f, 664f)), Struct_4(vec3<u32>(74186u, 1u, 0u), Struct_3(vec4<f32>(2098f, 1986f, 501f, 295f), vec4<bool>(false, true, false, true), 1u, vec4<i32>(0i, -1i, 2147483647i, 2147483647i), Struct_2(vec3<i32>(2147483647i, -27258i, 8479i), -757f, Struct_1(true, vec4<u32>(0u, 42902u, 1u, 0u), vec3<bool>(false, false, false)))), vec4<f32>(-1000f, 492f, -808f, -110f)), Struct_4(vec3<u32>(1u, 1u, 76560u), Struct_3(vec4<f32>(-849f, 279f, 1038f, -971f), vec4<bool>(false, false, false, true), 92065u, vec4<i32>(-1i, 12404i, 15235i, 0i), Struct_2(vec3<i32>(-42822i, 2147483647i, 25527i), 1299f, Struct_1(false, vec4<u32>(1u, 20435u, 17993u, 33296u), vec3<bool>(true, true, true)))), vec4<f32>(772f, 308f, 1860f, -560f)), Struct_4(vec3<u32>(4294967295u, 0u, 3187u), Struct_3(vec4<f32>(509f, -172f, 107f, -1254f), vec4<bool>(true, false, false, true), 1u, vec4<i32>(i32(-2147483648), 0i, -9491i, 14987i), Struct_2(vec3<i32>(-1i, 30877i, -53529i), 1058f, Struct_1(true, vec4<u32>(4294967295u, 69557u, 0u, 1u), vec3<bool>(true, false, false)))), vec4<f32>(950f, -1026f, -429f, 197f)), Struct_4(vec3<u32>(24303u, 0u, 0u), Struct_3(vec4<f32>(384f, 214f, 187f, -1000f), vec4<bool>(true, false, false, true), 1u, vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), -22262i), Struct_2(vec3<i32>(-19850i, -1i, 2147483647i), -805f, Struct_1(false, vec4<u32>(84423u, 52905u, 10053u, 82191u), vec3<bool>(false, false, true)))), vec4<f32>(-120f, 333f, -380f, 1988f)), Struct_4(vec3<u32>(0u, 54073u, 54346u), Struct_3(vec4<f32>(-286f, -903f, 2600f, 1441f), vec4<bool>(false, true, true, true), 1u, vec4<i32>(0i, 1i, -1i, i32(-2147483648)), Struct_2(vec3<i32>(9199i, -1i, i32(-2147483648)), 432f, Struct_1(false, vec4<u32>(1u, 5363u, 46837u, 4294967295u), vec3<bool>(true, true, false)))), vec4<f32>(-1204f, -612f, 580f, 1434f)), Struct_4(vec3<u32>(10090u, 1600u, 0u), Struct_3(vec4<f32>(539f, 408f, 1112f, -1202f), vec4<bool>(false, true, true, true), 1u, vec4<i32>(0i, i32(-2147483648), 12479i, -27307i), Struct_2(vec3<i32>(1i, -4119i, -1i), 458f, Struct_1(false, vec4<u32>(132880u, 0u, 0u, 0u), vec3<bool>(false, false, true)))), vec4<f32>(1343f, 381f, 1000f, 779f)), Struct_4(vec3<u32>(3161u, 4294967295u, 38963u), Struct_3(vec4<f32>(361f, 2639f, 502f, 1000f), vec4<bool>(true, true, true, false), 9238u, vec4<i32>(2147483647i, -1i, 15468i, 62064i), Struct_2(vec3<i32>(i32(-2147483648), -11668i, 2147483647i), 177f, Struct_1(false, vec4<u32>(19846u, 26857u, 49623u, 4294967295u), vec3<bool>(true, true, false)))), vec4<f32>(304f, 1000f, 696f, -828f)), Struct_4(vec3<u32>(1u, 5071u, 1u), Struct_3(vec4<f32>(-326f, 430f, -1814f, -514f), vec4<bool>(true, false, true, false), 8509u, vec4<i32>(-1i, -30725i, i32(-2147483648), -52850i), Struct_2(vec3<i32>(10966i, 1i, 7305i), -1282f, Struct_1(true, vec4<u32>(13643u, 30250u, 4294967295u, 15144u), vec3<bool>(false, false, true)))), vec4<f32>(-339f, -1260f, -1039f, 1177f)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: u32) -> vec3<i32> {
    global2 = -select(_wgslsmith_mod_vec4_i32(-(vec4<i32>(global2.x, -1i, -2147483647i, arg_0) | vec4<i32>(arg_1, -1i, 2147483647i, arg_1)), vec4<i32>(2147483647i, 56776i, arg_0, arg_0) >> (countOneBits(vec4<u32>(arg_2, u_input.a, arg_2, arg_2)) % vec4<u32>(32u))), select(abs(vec4<i32>(global2.x, arg_1, -25605i, global2.x)), firstTrailingBit(-vec4<i32>(2147483647i, arg_0, -50655i, -2396i)), vec4<bool>(global0[_wgslsmith_index_u32(1u, 15u)], false, true, true)), select(vec4<bool>(all(vec3<bool>(true, false, false)), true, any(vec3<bool>(global0[_wgslsmith_index_u32(321u, 15u)], true, global0[_wgslsmith_index_u32(13117u, 15u)])), any(vec4<bool>(global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(u_input.a, 15u)], false, global0[_wgslsmith_index_u32(arg_2, 15u)]))), vec4<bool>(global0[_wgslsmith_index_u32(arg_2 & 54659u, 15u)], true, all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 15u)], global0[_wgslsmith_index_u32(48682u, 15u)])), true), true));
    global3 = array<Struct_4, 15>();
    var var_0 = _wgslsmith_mult_vec2_i32(~firstTrailingBit(abs(global2.wz)) ^ vec2<i32>(~0i, _wgslsmith_mod_i32(global2.x, firstTrailingBit(arg_1))), ~min(global2.zy, _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, arg_0), ~global2.xx)));
    let var_1 = ~max(~vec3<i32>(64907i, var_0.x >> (u_input.a % 32u), -47794i), global2.wzz);
    let var_2 = vec4<i32>(_wgslsmith_sub_i32(reverseBits(var_0.x), i32(-1i) * -var_1.x), 2771i, _wgslsmith_sub_i32(-2147483647i, firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -50995i, 23267i), vec3<i32>(arg_1, arg_1, 4592i)) | 0i)), firstTrailingBit(min(var_1.x, arg_1)));
    return firstTrailingBit(var_1);
}

fn func_2() -> f32 {
    global0 = array<bool, 15>();
    var var_0 = _wgslsmith_div_u32(~u_input.a, firstTrailingBit(u_input.a));
    var var_1 = _wgslsmith_mult_vec3_i32(-vec3<i32>(-2147483647i, global2.x, -(~global2.x)), -func_3(i32(-1i) * -52700i, 1i, u_input.a));
    global3 = array<Struct_4, 15>();
    var var_2 = vec3<u32>(abs(u_input.a), u_input.a | u_input.a, min(~u_input.a, u_input.a));
    return 1f;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: i32) -> Struct_2 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-474f + -1145f) - _wgslsmith_f_op_f32(arg_0.x - -287f))) - _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(abs(arg_1.b)))));
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1007f, _wgslsmith_f_op_f32(floor(2032f)), 1f, _wgslsmith_f_op_f32(f32(-1f) * -199f)))))), vec4<bool>(arg_1.c.a, false, false, any(select(vec4<bool>(global0[_wgslsmith_index_u32(3799u, 15u)], global0[_wgslsmith_index_u32(7011u, 15u)], false, arg_1.c.c.x), vec4<bool>(true, global0[_wgslsmith_index_u32(41743u, 15u)], global0[_wgslsmith_index_u32(78280u, 15u)], global0[_wgslsmith_index_u32(arg_1.c.b.x, 15u)]), all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 15u)], true))))), arg_1.c.b.x, vec4<i32>(1i, 2147483647i, arg_2, select(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -9384i), vec2<i32>(1i, -55922i)), arg_1.c.c.x) & min(arg_2 | -2147483647i, abs(-34433i))), arg_1);
    global3 = array<Struct_4, 15>();
    let var_1 = global3[_wgslsmith_index_u32(~(~1u), 15u)];
    var var_2 = Struct_5(var_1.b, ~_wgslsmith_add_vec4_u32(var_0.e.c.b, ~(~var_0.e.c.b)), global3[_wgslsmith_index_u32(var_1.b.e.c.b.x, 15u)]);
    return var_1.b.e;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>) -> Struct_4 {
    global0 = array<bool, 15>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-810f + _wgslsmith_f_op_f32(sign(155f))), -885f, arg_0.b, _wgslsmith_f_op_f32(-arg_0.b)) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, 670f, arg_0.b, arg_0.b) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, arg_0.b, -1049f, arg_0.b)))))), select(vec4<bool>(arg_0.c.c.x, true, !arg_0.c.c.x, true), vec4<bool>(!global0[_wgslsmith_index_u32(abs(arg_0.c.b.x), 15u)], any(!vec4<bool>(false, true, global0[_wgslsmith_index_u32(1301u, 15u)], true)), false, all(arg_0.c.c) & func_4(vec3<f32>(-404f, 1202f, 387f), Struct_2(vec3<i32>(-19470i, -2147483647i, -35000i), -327f, arg_0.c), arg_0.a.x).c.a), all(!(!vec4<bool>(arg_0.c.a, global0[_wgslsmith_index_u32(arg_0.c.b.x, 15u)], true, arg_1.x)))), 4294967295u, vec4<i32>(global2.x, func_3(global2.x << (4294967295u % 32u), arg_0.a.x, 26878u).x, ~9882i, _wgslsmith_mult_i32(global2.x | 0i, reverseBits(global2.x))) & _wgslsmith_mod_vec4_i32(abs(vec4<i32>(-2147483647i, global2.x, 0i, 19982i)), firstLeadingBit(firstTrailingBit(vec4<i32>(global2.x, arg_0.a.x, -1i, 1i)))), arg_0);
    let var_1 = select(true || arg_0.c.a, global0[_wgslsmith_index_u32(var_0.e.c.b.x, 15u)], true);
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.b, 1000f, -268f, 1000f), _wgslsmith_f_op_vec4_f32(var_0.a - _wgslsmith_f_op_vec4_f32(-vec4<f32>(346f, 1357f, var_0.a.x, 2367f))), var_0.b))), !(!var_0.b), ~(u_input.a >> (~countOneBits(arg_0.c.b.x) % 32u)), var_0.d, var_0.e);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-556f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_0.a.x)), 672f))))), _wgslsmith_f_op_f32(409f * -1000f), -1000f);
    return Struct_4(_wgslsmith_div_vec3_u32(~arg_0.c.b.yyw, vec3<u32>(reverseBits(69306u), _wgslsmith_add_u32(func_4(vec3<f32>(305f, -608f, -402f), Struct_2(vec3<i32>(-23405i, global2.x, var_2.e.a.x), -1426f, var_0.e.c), var_0.e.a.x).c.b.x, arg_0.c.b.x), var_0.c)), Struct_3(_wgslsmith_f_op_vec4_f32(-var_0.a), var_2.b, 27931u, abs(vec4<i32>(func_3(2147483647i, -9315i, arg_0.c.b.x).x, var_2.d.x, max(2147483647i, -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.d.x, var_2.d.x), vec2<i32>(-38597i, arg_0.a.x)))), func_4(vec3<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_div_f32(var_3.x, arg_0.b), -1904f), func_4(_wgslsmith_f_op_vec3_f32(-var_2.a.yxw), Struct_2(vec3<i32>(arg_0.a.x, global2.x, global2.x), 1220f, var_2.e.c), select(var_0.e.a.x, 45810i, var_0.e.c.a)), var_2.e.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_2.a, vec4<f32>(-605f, arg_0.b, var_3.x, -1879f))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.a.x, var_3.x, arg_0.b, -1568f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, -617f, -1000f, -242f)) - vec4<f32>(_wgslsmith_f_op_f32(526f + var_2.e.b), var_3.x, _wgslsmith_f_op_f32(ceil(1931f)), -1175f))));
}

fn func_1() -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1022f, 371f) - vec2<f32>(-100f, 1136f)))))));
    let var_1 = true;
    global0 = array<bool, 15>();
    return func_5(func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_2()), -903f, _wgslsmith_f_op_f32(min(var_0.x, 2015f))) + vec3<f32>(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x + 864f))), Struct_2(vec3<i32>(-1i & global2.x, func_3(-21333i, -57072i, 4294967295u).x, -6917i), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_0.x)))), Struct_1(false, _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 19427u, u_input.a, u_input.a), vec4<u32>(1u, u_input.a, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, 1u, 1u)), vec3<bool>(true, true, true))), global2.x), vec2<bool>(any(func_4(vec3<f32>(var_0.x, var_0.x, var_0.x), Struct_2(vec3<i32>(2147483647i, -2147483647i, global2.x), 1782f, Struct_1(global0[_wgslsmith_index_u32(u_input.a, 15u)], vec4<u32>(u_input.a, u_input.a, u_input.a, 52903u), vec3<bool>(global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(u_input.a, 15u)], true))), -1i).c.c) & global0[_wgslsmith_index_u32(8795u, 15u)], false));
}

fn func_6(arg_0: Struct_4, arg_1: i32, arg_2: vec3<i32>) -> Struct_2 {
    var var_0 = Struct_5(Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b.a)), !select(!vec4<bool>(arg_0.b.e.c.c.x, arg_0.b.e.c.a, global0[_wgslsmith_index_u32(1u, 15u)], false), !arg_0.b.b, func_1().b.b), ~_wgslsmith_div_u32(82808u, ~arg_0.b.e.c.b.x), arg_0.b.d, arg_0.b.e), ~(~(~select(vec4<u32>(0u, u_input.a, 4294967295u, 1u), arg_0.b.e.c.b, false))), arg_0);
    var var_1 = _wgslsmith_mod_vec2_u32(abs(~_wgslsmith_mult_vec2_u32(select(var_0.a.e.c.b.yw, var_0.b.yz, true), vec2<u32>(arg_0.b.c, var_0.a.c))), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, abs(_wgslsmith_add_u32(var_0.b.x, var_0.a.e.c.b.x))), reverseBits(firstLeadingBit(vec2<u32>(4294967295u, 20390u)))));
    var var_2 = arg_0.b.e.c.b.zz;
    var var_3 = _wgslsmith_dot_vec3_u32(arg_0.b.e.c.b.zwz, ~arg_0.a);
    var var_4 = select(func_1().b.b.xww, func_4(_wgslsmith_f_op_vec3_f32(var_0.c.c.wxz * arg_0.b.a.zxx), func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.c.xwz + vec3<f32>(var_0.c.b.a.x, -872f, 470f)), vec3<f32>(-114f, -408f, arg_0.c.x)), func_5(arg_0.b.e, arg_0.b.b.ww).b.e, -37979i), -1i).c.c, select(!(!(!arg_0.b.b.yzw)), select(select(arg_0.b.b.xyy, func_4(vec3<f32>(-168f, arg_0.c.x, var_0.a.a.x), Struct_2(arg_0.b.e.a, var_0.a.a.x, var_0.c.b.e.c), 0i).c.c, arg_0.b.d.x == -22565i), !func_4(arg_0.c.yyz, arg_0.b.e, arg_2.x).c.c, vec3<bool>(func_5(arg_0.b.e, var_0.c.b.e.c.c.xy).b.b.x, true, false)), func_1().b.e.c.c));
    return func_5(var_0.c.b.e, !(!vec2<bool>(true, !var_0.c.b.b.x))).b.e;
}

fn func_7(arg_0: Struct_2) -> u32 {
    var var_0 = arg_0.b != -821f;
    global0 = array<bool, 15>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b, -1927f) * _wgslsmith_f_op_f32(arg_0.b * arg_0.b)))));
    var var_2 = -995f;
    let var_3 = Struct_2(global2.yxw, -848f, arg_0.c);
    return _wgslsmith_mod_u32(_wgslsmith_mult_u32(func_5(func_6(Struct_4(arg_0.c.b.wzz, Struct_3(vec4<f32>(var_3.b, var_3.b, 722f, arg_0.b), vec4<bool>(arg_0.c.c.x, false, var_3.c.c.x, true), var_3.c.b.x, vec4<i32>(global2.x, arg_0.a.x, arg_0.a.x, 14588i), arg_0), vec4<f32>(arg_0.b, 538f, arg_0.b, 345f)), global2.x >> (1u % 32u), func_6(global3[_wgslsmith_index_u32(18546u, 15u)], 1i, vec3<i32>(1i, -1i, -2147483647i)).a), vec2<bool>(u_input.a < 487u, arg_0.a.x >= -248i)).a.x, u_input.a), arg_0.c.b.x);
}

fn func_8(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: vec2<u32>, arg_3: Struct_5) -> StorageBuffer {
    global3 = array<Struct_4, 15>();
    let var_0 = func_4(vec3<f32>(_wgslsmith_f_op_f32(sign(698f)), _wgslsmith_f_op_f32(ceil(1987f)), _wgslsmith_f_op_f32(arg_3.a.a.x - _wgslsmith_f_op_f32(250f + _wgslsmith_f_op_f32(abs(-168f))))), arg_3.a.e, func_1().b.e.a.x).c.c;
    var var_1 = abs(_wgslsmith_add_vec3_u32(arg_1, vec3<u32>(arg_3.c.b.e.c.b.x, 12989u, arg_1.x))) >> (~(~_wgslsmith_add_vec3_u32(abs(vec3<u32>(1u, arg_1.x, 4294967295u)), ~vec3<u32>(56330u, 10976u, u_input.a))) % vec3<u32>(32u));
    var var_2 = abs(abs(vec3<i32>(max(i32(-1i) * -21279i, abs(51978i)), -57929i, abs(func_3(arg_0.x, 18031i, arg_3.a.e.c.b.x).x))));
    let var_3 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(29940u, u_input.a), 15u)];
    return StorageBuffer(-1126f, global2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1000f;
    let var_1 = !vec4<bool>(0i > (30959i | _wgslsmith_add_i32(global2.x, 1i)), global0[_wgslsmith_index_u32(firstLeadingBit(min(29012u, u_input.a)), 15u)], global0[_wgslsmith_index_u32(1288u, 15u)], global0[_wgslsmith_index_u32(1u, 15u)]);
    let x = u_input.a;
    s_output = func_8(global2.xx ^ ~global2.zx, vec3<u32>(_wgslsmith_clamp_u32(reverseBits(1u), 0u, 6384u), func_7(func_6(func_1(), global2.x, ~global2.yzx)), abs(0u) ^ ~u_input.a), ~(~(vec2<u32>(u_input.a, 17542u) | vec2<u32>(14737u, 0u))) & reverseBits(~firstLeadingBit(vec2<u32>(u_input.a, 4294967295u))), Struct_5(func_1().b, select(~vec4<u32>(43753u, 1u, u_input.a, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(35431u, 67459u, 4294967295u, u_input.a), vec4<u32>(0u, u_input.a, u_input.a, 50974u)), var_1.x && var_1.x) << (vec4<u32>(0u, ~u_input.a, func_4(vec3<f32>(-788f, 723f, 173f), Struct_2(vec3<i32>(global2.x, -38046i, 1i), 1610f, Struct_1(false, vec4<u32>(0u, 8124u, 1u, 0u), var_1.xwz)), global2.x).c.b.x, min(4294967295u, u_input.a)) % vec4<u32>(32u)), func_5(Struct_2(global2.zzz, 775f, Struct_1(true, vec4<u32>(u_input.a, u_input.a, 27592u, u_input.a), vec3<bool>(false, var_1.x, true))), vec2<bool>(true, true))));
}

