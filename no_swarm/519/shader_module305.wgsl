struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: f32,
    d: vec2<u32>,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(Struct_2(Struct_1(vec3<f32>(-1000f, 201f, -446f), vec3<bool>(false, true, true), vec2<i32>(-1i, 1i), 2147483647i)), 9119i), Struct_3(Struct_2(Struct_1(vec3<f32>(-946f, 1507f, -933f), vec3<bool>(true, false, true), vec2<i32>(1i, 2147483647i), -1i)), 0i), Struct_3(Struct_2(Struct_1(vec3<f32>(-318f, 528f, 2214f), vec3<bool>(true, true, false), vec2<i32>(-1i, 2147483647i), -41472i)), 1i), Struct_3(Struct_2(Struct_1(vec3<f32>(644f, -234f, -915f), vec3<bool>(true, true, true), vec2<i32>(-20143i, 18668i), 2147483647i)), 2916i), Struct_3(Struct_2(Struct_1(vec3<f32>(1274f, -1227f, 916f), vec3<bool>(true, true, false), vec2<i32>(27772i, -25625i), i32(-2147483648))), 25125i), Struct_3(Struct_2(Struct_1(vec3<f32>(-1757f, -1270f, 146f), vec3<bool>(false, false, false), vec2<i32>(30131i, 3316i), 58421i)), 26267i), Struct_3(Struct_2(Struct_1(vec3<f32>(766f, 969f, 609f), vec3<bool>(false, true, true), vec2<i32>(52412i, i32(-2147483648)), i32(-2147483648))), 1i), Struct_3(Struct_2(Struct_1(vec3<f32>(-1253f, 891f, -1000f), vec3<bool>(true, true, false), vec2<i32>(-47805i, 47486i), -30634i)), -12481i), Struct_3(Struct_2(Struct_1(vec3<f32>(1080f, -199f, 1119f), vec3<bool>(false, true, false), vec2<i32>(i32(-2147483648), 1i), 0i)), -27256i), Struct_3(Struct_2(Struct_1(vec3<f32>(1000f, -891f, -900f), vec3<bool>(true, true, true), vec2<i32>(i32(-2147483648), 27886i), -2827i)), -12832i), Struct_3(Struct_2(Struct_1(vec3<f32>(-1000f, 2436f, 1580f), vec3<bool>(true, true, true), vec2<i32>(-8445i, 1i), 11031i)), 19819i), Struct_3(Struct_2(Struct_1(vec3<f32>(560f, 570f, -969f), vec3<bool>(true, true, true), vec2<i32>(2147483647i, 1i), 2147483647i)), -3173i), Struct_3(Struct_2(Struct_1(vec3<f32>(1489f, 1000f, -1073f), vec3<bool>(true, true, false), vec2<i32>(-17756i, 1i), -13761i)), -1i), Struct_3(Struct_2(Struct_1(vec3<f32>(1710f, 1582f, -659f), vec3<bool>(false, false, true), vec2<i32>(i32(-2147483648), -36079i), -1i)), i32(-2147483648)), Struct_3(Struct_2(Struct_1(vec3<f32>(-1000f, -551f, -502f), vec3<bool>(false, true, false), vec2<i32>(2147483647i, 26940i), -1713i)), -1i), Struct_3(Struct_2(Struct_1(vec3<f32>(987f, 583f, -285f), vec3<bool>(true, false, true), vec2<i32>(-38793i, -24405i), -20312i)), 1i), Struct_3(Struct_2(Struct_1(vec3<f32>(-1568f, -407f, -650f), vec3<bool>(false, false, true), vec2<i32>(2147483647i, i32(-2147483648)), 33321i)), 1i), Struct_3(Struct_2(Struct_1(vec3<f32>(-180f, -172f, 520f), vec3<bool>(false, false, true), vec2<i32>(0i, -9570i), 0i)), 12659i), Struct_3(Struct_2(Struct_1(vec3<f32>(1056f, -710f, 1000f), vec3<bool>(false, false, true), vec2<i32>(1i, 2147483647i), -20227i)), 0i), Struct_3(Struct_2(Struct_1(vec3<f32>(1427f, 2439f, -305f), vec3<bool>(false, false, true), vec2<i32>(2147483647i, 1i), 55532i)), i32(-2147483648)), Struct_3(Struct_2(Struct_1(vec3<f32>(-423f, 386f, -752f), vec3<bool>(true, true, false), vec2<i32>(-1i, -1i), 0i)), i32(-2147483648)), Struct_3(Struct_2(Struct_1(vec3<f32>(-576f, -115f, 1417f), vec3<bool>(true, false, true), vec2<i32>(-26474i, 2147483647i), -1i)), 7624i), Struct_3(Struct_2(Struct_1(vec3<f32>(-676f, 974f, 1170f), vec3<bool>(true, false, false), vec2<i32>(2147483647i, 46628i), 40198i)), i32(-2147483648)), Struct_3(Struct_2(Struct_1(vec3<f32>(1664f, -1293f, 1427f), vec3<bool>(true, false, false), vec2<i32>(0i, -39590i), 23517i)), 49310i), Struct_3(Struct_2(Struct_1(vec3<f32>(-896f, 103f, 996f), vec3<bool>(true, false, true), vec2<i32>(-1i, i32(-2147483648)), -15615i)), 3147i), Struct_3(Struct_2(Struct_1(vec3<f32>(666f, -417f, 743f), vec3<bool>(false, false, true), vec2<i32>(-35530i, 2147483647i), -2851i)), 1i), Struct_3(Struct_2(Struct_1(vec3<f32>(193f, -482f, -2050f), vec3<bool>(false, false, true), vec2<i32>(1i, -34554i), 43900i)), 112i));

var<private> global1: vec2<bool>;

var<private> global2: array<vec2<f32>, 19> = array<vec2<f32>, 19>(vec2<f32>(-769f, -1040f), vec2<f32>(1061f, 1235f), vec2<f32>(-996f, 757f), vec2<f32>(-369f, -512f), vec2<f32>(-365f, 430f), vec2<f32>(295f, 323f), vec2<f32>(-844f, 370f), vec2<f32>(2308f, -565f), vec2<f32>(766f, -286f), vec2<f32>(710f, -1007f), vec2<f32>(1000f, -442f), vec2<f32>(-788f, -269f), vec2<f32>(-680f, -721f), vec2<f32>(1964f, 1434f), vec2<f32>(1989f, 221f), vec2<f32>(-175f, 2050f), vec2<f32>(894f, 1000f), vec2<f32>(614f, 1285f), vec2<f32>(-1310f, -1451f));

var<private> global3: Struct_2 = Struct_2(Struct_1(vec3<f32>(404f, -1000f, 584f), vec3<bool>(false, true, false), vec2<i32>(16249i, 2147483647i), 49386i));

var<private> global4: array<i32, 30>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<i32> {
    var var_0 = Struct_2(Struct_1(global3.a.a, global3.a.b, reverseBits(vec2<i32>(abs(global4[_wgslsmith_index_u32(u_input.a, 30u)]), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global4[_wgslsmith_index_u32(36942u, 30u)], 11267i, 2147483647i), vec4<i32>(global4[_wgslsmith_index_u32(1u, 30u)], global4[_wgslsmith_index_u32(u_input.a, 30u)], global4[_wgslsmith_index_u32(4294967295u, 30u)], 0i)))), _wgslsmith_dot_vec4_i32(-vec4<i32>(-12424i, global4[_wgslsmith_index_u32(u_input.a, 30u)], global3.a.d, -18839i), vec4<i32>(-27858i, 6855i, global3.a.c.x, 41415i)) & ~_wgslsmith_add_i32(-1i, -14828i)));
    global4 = array<i32, 30>();
    let var_1 = -1102f;
    let var_2 = Struct_2(global3.a);
    var var_3 = global3.a.b.x && any(select(select(!vec3<bool>(global1.x, true, true), global3.a.b, !global3.a.b), var_0.a.b, select(select(false, global3.a.b.x, var_0.a.b.x), var_0.a.b.x, !var_0.a.b.x)));
    return max(reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(global3.a.c.x, var_2.a.c.x) ^ var_0.a.c, var_2.a.c | vec2<i32>(var_2.a.d, global4[_wgslsmith_index_u32(u_input.a, 30u)]))) & global3.a.c, ~vec2<i32>(global3.a.c.x, countOneBits(~var_2.a.d)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_4) -> Struct_5 {
    let var_0 = vec4<u32>(1u, arg_3.d.x >> (0u % 32u), 0u, abs(reverseBits(u_input.a)));
    let var_1 = ~vec4<u32>(66634u, 0u, 10190u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(arg_3.d, vec2<u32>(u_input.a, 1u)), ~vec2<u32>(var_0.x, var_0.x)), ~u_input.a));
    var var_2 = global0[_wgslsmith_index_u32(arg_3.d.x, 27u)];
    global1 = vec2<bool>(false, arg_2.a.a.b.x);
    var_2 = Struct_3(var_2.a, -1i);
    return Struct_5(0u, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(arg_3.a.xx, -vec2<i32>(global4[_wgslsmith_index_u32(4294967295u, 30u)], arg_1.c.x)), _wgslsmith_add_vec2_i32(func_3() >> (var_1.zx % vec2<u32>(32u)), arg_3.b.a.c)), u_input.a >> (var_0.x % 32u));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<i32>, arg_2: vec4<u32>) -> Struct_2 {
    global2 = array<vec2<f32>, 19>();
    var var_0 = !vec3<bool>(select(false, select(select(true, true, true), global3.a.b.x, true), (global3.a.a.x != -1369f) || all(vec3<bool>(false, global3.a.b.x, false))), global3.a.b.x, global1.x);
    var var_1 = 0i;
    var var_2 = select(vec4<bool>(!var_0.x, global3.a.b.x, !(reverseBits(1u) > _wgslsmith_dot_vec3_u32(arg_2.xyw, arg_2.wwx)), any(!(!vec4<bool>(true, global1.x, global1.x, false)))), select(vec4<bool>(select(true, !var_0.x, false), abs(u_input.a) >= 0u, true, !all(global3.a.b)), !vec4<bool>(arg_1.x != 7064i, true, global3.a.b.x, true), select(!vec4<bool>(true, true, false, global3.a.b.x), !select(vec4<bool>(global3.a.b.x, global3.a.b.x, global3.a.b.x, var_0.x), vec4<bool>(false, global1.x, true, global3.a.b.x), vec4<bool>(var_0.x, false, global3.a.b.x, global3.a.b.x)), vec4<bool>(global3.a.b.x, 1i != global3.a.d, true, all(vec3<bool>(true, true, true))))), false || global3.a.b.x);
    var_0 = !select(select(!var_2.ywx, select(var_2.xww, select(var_2.zyx, global3.a.b, global3.a.b), !vec3<bool>(false, var_2.x, true)), false), global3.a.b, true);
    return Struct_2(global3.a);
}

fn func_5(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_2) -> Struct_4 {
    let var_0 = global3.a.b.x;
    global3 = arg_3;
    var var_1 = _wgslsmith_dot_vec2_i32(firstLeadingBit(global3.a.c), max(global3.a.c, (func_3() ^ firstTrailingBit(vec2<i32>(1i, global3.a.d))) << (arg_0.zx % vec2<u32>(32u))));
    var var_2 = Struct_3(func_4(Struct_5(arg_0.x, 0i, _wgslsmith_mult_u32(1u, ~u_input.a)), _wgslsmith_add_vec3_i32(vec3<i32>(1i, -6971i, firstTrailingBit(-1i)), vec3<i32>(min(global3.a.d, arg_2), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.a.c.x, arg_2, global3.a.c.x), vec3<i32>(-18154i, arg_2, arg_2)), func_4(Struct_5(4294967295u, arg_2, 0u), vec3<i32>(3096i, 8088i, 21237i), vec4<u32>(arg_0.x, 1u, arg_0.x, 10549u)).a.c.x)), arg_0), ~global3.a.d);
    let var_3 = Struct_4(countOneBits(vec3<i32>(~2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.a.d, -11370i, arg_2, var_2.a.a.c.x), vec4<i32>(-1i, global4[_wgslsmith_index_u32(4294967295u, 30u)], global3.a.c.x, arg_2)), -22007i)), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(arg_3.a.a * vec3<f32>(var_2.a.a.a.x, 938f, arg_3.a.a.x)), !vec3<bool>(false, arg_3.a.b.x, false), select(_wgslsmith_mod_vec2_i32(arg_3.a.c, vec2<i32>(24432i, arg_2)), ~global3.a.c, select(vec2<bool>(true, arg_3.a.b.x), global3.a.b.xx, vec2<bool>(var_2.a.a.b.x, false))), _wgslsmith_mult_i32(0i << (u_input.a % 32u), ~0i))), _wgslsmith_f_op_f32(f32(-1f) * -184f), ~min(arg_0.zy, _wgslsmith_sub_vec2_u32(arg_0.yw, arg_0.zx)));
    return Struct_4(var_3.a, Struct_2(global3.a), func_4(func_2(arg_3, func_4(Struct_5(1u, 7426i, 61397u), var_3.a, vec4<u32>(4294967295u, arg_0.x, 30210u, u_input.a)).a, Struct_3(Struct_2(arg_3.a), ~global3.a.d), var_3), -(~(-var_3.a)), countOneBits(~min(vec4<u32>(107484u, u_input.a, 0u, 49627u), vec4<u32>(u_input.a, arg_0.x, u_input.a, arg_0.x)))).a.a.x, arg_0.xz | var_3.d);
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: vec4<f32>) -> Struct_4 {
    var var_0 = -vec3<i32>(~0i, -global3.a.d, -36959i);
    let var_1 = all(!(!vec4<bool>(global1.x, true, any(arg_1.b.a.b.zx), true)));
    global2 = array<vec2<f32>, 19>();
    global0 = array<Struct_3, 27>();
    let var_2 = _wgslsmith_sub_i32(~(_wgslsmith_sub_i32(arg_1.a.x ^ global4[_wgslsmith_index_u32(arg_1.d.x, 30u)], global4[_wgslsmith_index_u32(max(u_input.a, arg_1.d.x), 30u)]) & -2147483647i), -1i);
    return func_5(~abs(vec4<u32>(35846u, u_input.a, arg_0.x << (1876u % 32u), ~0u)), global3.a.b, _wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(-20383i), _wgslsmith_div_i32(-51567i, global3.a.c.x), var_2, global4[_wgslsmith_index_u32(_wgslsmith_add_u32(15070u, arg_1.d.x), 30u)]) & (vec4<i32>(-27674i, 45647i, global3.a.d, 42963i) << (vec4<u32>(arg_1.d.x, arg_0.x, u_input.a, 24806u) % vec4<u32>(32u))), select(~vec4<i32>(1343i, -2147483647i, var_2, arg_1.a.x), vec4<i32>(arg_1.a.x, 2147483647i, 0i, var_2) >> (vec4<u32>(arg_0.x, arg_0.x, 4294967295u, 26130u) % vec4<u32>(32u)), all(vec2<bool>(true, var_1))) | _wgslsmith_add_vec4_i32(-vec4<i32>(2147483647i, arg_1.a.x, 0i, 1i), firstTrailingBit(vec4<i32>(global4[_wgslsmith_index_u32(u_input.a, 30u)], -2147483647i, 0i, arg_1.b.a.d)))), arg_1.b);
}

fn func_7(arg_0: Struct_2, arg_1: Struct_4) -> Struct_1 {
    var var_0 = func_4(Struct_5(~u_input.a, _wgslsmith_add_i32(1i, ~0i), select(firstTrailingBit(94345u), countOneBits(~arg_1.d.x), true)), -vec3<i32>(_wgslsmith_mult_i32(countOneBits(arg_1.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.x, arg_0.a.d, global3.a.d, global4[_wgslsmith_index_u32(u_input.a, 30u)]), vec4<i32>(-1i, arg_1.a.x, arg_0.a.d, -2147483647i))), -global3.a.c.x, abs(arg_1.b.a.d)), vec4<u32>(67518u, max(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.d.x, 311u, 20236u), vec3<u32>(u_input.a, arg_1.d.x, u_input.a))), _wgslsmith_add_u32(9911u, arg_1.d.x)), _wgslsmith_sub_u32(_wgslsmith_div_u32(52105u, func_2(Struct_2(arg_1.b.a), global3.a, global0[_wgslsmith_index_u32(u_input.a, 27u)], Struct_4(vec3<i32>(global3.a.d, 14121i, 1i), arg_1.b, -327f, vec2<u32>(21249u, 5533u))).c), ~1u), ~(~(~u_input.a)))).a;
    let var_1 = arg_1.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global3.a.a.x, arg_1.b.a.a.x, arg_1.c), vec3<f32>(1084f, arg_0.a.a.x, 262f)))) * global3.a.a));
    return var_1.a;
}

fn func_1() -> Struct_5 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.a.a) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1332f, 342f, 402f))))), !global3.a.b, ~(-global3.a.c & ~countOneBits(vec2<i32>(-2147483647i, global3.a.d))), 27983i);
    var var_1 = func_7(Struct_2(global3.a), func_6(vec3<u32>(4294967295u, ~countOneBits(u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, u_input.a)) ^ reverseBits(u_input.a)), func_5(abs(countOneBits(vec4<u32>(8176u, u_input.a, u_input.a, 4294967295u))), var_0.b, -_wgslsmith_div_i32(-2147483647i, global3.a.c.x), func_4(func_2(Struct_2(global3.a), global3.a, Struct_3(Struct_2(Struct_1(vec3<f32>(global3.a.a.x, -554f, var_0.a.x), var_0.b, global3.a.c, 35690i)), -2147483647i), Struct_4(vec3<i32>(global3.a.c.x, -15874i, global4[_wgslsmith_index_u32(u_input.a, 30u)]), Struct_2(global3.a), 106f, vec2<u32>(u_input.a, 0u))), vec3<i32>(2147483647i, 2147483647i, global3.a.c.x) << (vec3<u32>(u_input.a, 4294967295u, u_input.a) % vec3<u32>(32u)), min(vec4<u32>(1u, 22380u, u_input.a, 4294967295u), vec4<u32>(u_input.a, 49255u, u_input.a, 12065u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-390f, var_0.a.x, var_0.a.x, global3.a.a.x)))));
    global0 = array<Struct_3, 27>();
    let var_2 = reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a >> (3989u % 32u), u_input.a, ~(~4294967295u)), vec3<u32>(u_input.a, _wgslsmith_div_u32(u_input.a, 4294967295u) & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 50849u), vec2<u32>(u_input.a, u_input.a)), u_input.a ^ 4294967295u)));
    let var_3 = firstLeadingBit(~func_5(vec4<u32>(106u, u_input.a, ~var_2.x, var_2.x), var_0.b, func_4(func_2(Struct_2(global3.a), global3.a, global0[_wgslsmith_index_u32(u_input.a, 27u)], Struct_4(vec3<i32>(-1i, 0i, 1i), Struct_2(global3.a), 1163f, vec2<u32>(58039u, var_2.x))), vec3<i32>(var_0.c.x, global4[_wgslsmith_index_u32(u_input.a, 30u)], var_0.d), select(vec4<u32>(u_input.a, u_input.a, 1u, 0u), vec4<u32>(71645u, 0u, var_2.x, 4294967295u), vec4<bool>(var_1.b.x, var_1.b.x, var_0.b.x, var_1.b.x))).a.c.x, func_5(_wgslsmith_mult_vec4_u32(vec4<u32>(1450u, 7900u, u_input.a, 14197u), vec4<u32>(var_2.x, 34306u, var_2.x, u_input.a)), var_0.b, _wgslsmith_mult_i32(global4[_wgslsmith_index_u32(var_2.x, 30u)], var_0.d), Struct_2(global3.a)).b).a.zz);
    return func_2(func_4(Struct_5(36544u, -1i, var_2.x), vec3<i32>(var_3.x, _wgslsmith_add_i32(var_0.d, 1i) >> (max(60211u, 31237u) % 32u), var_0.c.x), ~reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.x, 1u, 1u, var_2.x), vec4<u32>(var_2.x, var_2.x, 2260u, u_input.a)))), Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, 1480f, var_1.a.x) - vec3<f32>(289f, 867f, var_1.a.x)), _wgslsmith_f_op_vec3_f32(global3.a.a - vec3<f32>(1000f, 1047f, global3.a.a.x))), vec3<f32>(func_6(vec3<u32>(4294967295u, u_input.a, 4294967295u), Struct_4(vec3<i32>(-20018i, 0i, -2147483647i), Struct_2(Struct_1(global3.a.a, vec3<bool>(false, false, global1.x), vec2<i32>(var_0.c.x, global4[_wgslsmith_index_u32(88521u, 30u)]), global4[_wgslsmith_index_u32(0u, 30u)])), global3.a.a.x, var_2.zx), vec4<f32>(var_0.a.x, var_1.a.x, -962f, -210f)).b.a.a.x, var_1.a.x, var_1.a.x))), vec3<bool>(false, false, true), max(abs(var_1.c), global3.a.c), -1i), Struct_3(func_5(select(_wgslsmith_mult_vec4_u32(vec4<u32>(30682u, var_2.x, var_2.x, var_2.x), vec4<u32>(65223u, 43037u, u_input.a, u_input.a)), vec4<u32>(0u, 0u, 0u, 112u) & vec4<u32>(27715u, u_input.a, var_2.x, var_2.x), select(vec4<bool>(true, true, var_1.b.x, var_0.b.x), vec4<bool>(false, global1.x, var_0.b.x, var_1.b.x), global3.a.b.x)), vec3<bool>(true, var_1.b.x | true, true), func_6(~vec3<u32>(u_input.a, 54819u, 4294967295u), func_6(vec3<u32>(u_input.a, 0u, var_2.x), Struct_4(vec3<i32>(18514i, -2147483647i, -1i), Struct_2(Struct_1(vec3<f32>(global3.a.a.x, -1020f, var_0.a.x), global3.a.b, vec2<i32>(1919i, var_0.c.x), var_3.x)), var_1.a.x, var_2.xx), vec4<f32>(var_0.a.x, global3.a.a.x, global3.a.a.x, var_1.a.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, var_1.a.x, var_1.a.x, var_1.a.x), vec4<f32>(-684f, -1208f, 1041f, -3212f), global1.x))).b.a.d, func_6(vec3<u32>(var_2.x, u_input.a, 4294967295u), Struct_4(vec3<i32>(global3.a.c.x, var_1.d, 0i), Struct_2(Struct_1(vec3<f32>(-286f, -348f, 962f), vec3<bool>(false, false, global3.a.b.x), vec2<i32>(var_1.d, global4[_wgslsmith_index_u32(1u, 30u)]), var_1.d)), global3.a.a.x, var_2.yy), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_1.a.x, -551f, var_1.a.x))).b).b, -(~var_3.x)), Struct_4(~(-(~vec3<i32>(10547i, -37195i, 2147483647i))), func_6(~countOneBits(var_2), func_6(vec3<u32>(0u, 42971u, u_input.a) << (vec3<u32>(var_2.x, var_2.x, 0u) % vec3<u32>(32u)), func_5(vec4<u32>(1u, u_input.a, var_2.x, 23595u), var_1.b, 9142i, Struct_2(Struct_1(vec3<f32>(var_1.a.x, -781f, var_1.a.x), var_0.b, var_0.c, global4[_wgslsmith_index_u32(var_2.x, 30u)]))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_1.a.x, global3.a.a.x, var_1.a.x) + vec4<f32>(-985f, global3.a.a.x, -940f, -300f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.a.x, -498f, global3.a.a.x, -661f)) * vec4<f32>(var_1.a.x, var_1.a.x, var_0.a.x, var_1.a.x))).b, _wgslsmith_f_op_f32(sign(-701f)), var_2.zx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global3.a);
    let var_1 = func_1();
    var var_2 = ~_wgslsmith_add_i32(func_7(Struct_2(func_6(vec3<u32>(var_1.c, u_input.a, 4294967295u), Struct_4(vec3<i32>(2147483647i, var_1.b, global4[_wgslsmith_index_u32(17827u, 30u)]), Struct_2(global3.a), var_0.a.a.x, vec2<u32>(4294967295u, var_1.c)), vec4<f32>(var_0.a.a.x, global3.a.a.x, 973f, global3.a.a.x)).b.a), Struct_4(func_6(vec3<u32>(37747u, 4294967295u, 34620u), Struct_4(vec3<i32>(var_1.b, global3.a.d, -25168i), var_0, global3.a.a.x, vec2<u32>(1u, 4228u)), vec4<f32>(143f, -1023f, global3.a.a.x, -643f)).a, Struct_2(global3.a), _wgslsmith_f_op_f32(f32(-1f) * -491f), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(96160u, 43432u)))).c.x, global3.a.d ^ _wgslsmith_mod_i32(~19189i, -14478i));
    let var_3 = vec3<f32>(-324f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(global3.a.a.x, global3.a.a.x), _wgslsmith_f_op_f32(var_0.a.a.x * 1708f)) - -237f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1000f, var_0.a.a.x))) - -405f)), var_0.a.a.x);
    let var_4 = var_1;
    var var_5 = global3.a.d;
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.c);
}

