struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec3<u32>,
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

var<private> global0: Struct_1 = Struct_1(vec3<i32>(i32(-2147483648), -10079i, 11278i), vec4<f32>(2025f, 1263f, 536f, -130f), -1000f);

var<private> global1: f32;

var<private> global2: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec3<i32>(-1i, -53616i, 24048i), vec4<f32>(-987f, 2960f, -1000f, -1133f), 396f), Struct_1(vec3<i32>(-1i, 26260i, i32(-2147483648)), vec4<f32>(1388f, -570f, 1549f, 662f), -1189f), Struct_1(vec3<i32>(3240i, -6899i, 2147483647i), vec4<f32>(-158f, -247f, 539f, 1105f), 1000f), Struct_1(vec3<i32>(22090i, 0i, 1i), vec4<f32>(-4067f, -1895f, -2048f, -1499f), -555f), Struct_1(vec3<i32>(1i, 38709i, 3217i), vec4<f32>(632f, -1631f, -179f, 1000f), -1218f), Struct_1(vec3<i32>(1i, 2147483647i, i32(-2147483648)), vec4<f32>(374f, -1106f, -773f, -167f), 634f), Struct_1(vec3<i32>(-40388i, 79488i, -69811i), vec4<f32>(110f, -658f, 347f, 697f), 1761f), Struct_1(vec3<i32>(2147483647i, -62740i, -54959i), vec4<f32>(-1050f, 1330f, -1288f, 1000f), 351f), Struct_1(vec3<i32>(8714i, -1i, 15211i), vec4<f32>(-792f, -102f, -288f, -1029f), -1110f), Struct_1(vec3<i32>(1i, -19029i, 3044i), vec4<f32>(-678f, 395f, 602f, -771f), -909f), Struct_1(vec3<i32>(-6608i, 37740i, 35286i), vec4<f32>(719f, -487f, 510f, -1033f), 391f), Struct_1(vec3<i32>(2147483647i, -3257i, -10003i), vec4<f32>(1238f, 871f, 567f, 1014f), 715f), Struct_1(vec3<i32>(-15233i, 1i, -1i), vec4<f32>(-313f, -438f, 456f, -1578f), 696f), Struct_1(vec3<i32>(11284i, -1i, 0i), vec4<f32>(-1154f, -238f, 731f, -160f), 934f), Struct_1(vec3<i32>(-3403i, 0i, -17641i), vec4<f32>(-1000f, -170f, 274f, 241f), -734f), Struct_1(vec3<i32>(-46801i, i32(-2147483648), 0i), vec4<f32>(976f, 398f, 610f, -293f), -329f), Struct_1(vec3<i32>(-4950i, 1i, 66708i), vec4<f32>(1448f, 371f, -715f, 1604f), 1600f), Struct_1(vec3<i32>(1i, 1i, 1197i), vec4<f32>(-1421f, 371f, -530f, 157f), 1143f), Struct_1(vec3<i32>(2147483647i, -24025i, i32(-2147483648)), vec4<f32>(1898f, 1072f, 1000f, 757f), 758f), Struct_1(vec3<i32>(0i, 966i, -1i), vec4<f32>(2185f, 1433f, -396f, 1366f), -428f), Struct_1(vec3<i32>(-22063i, 44445i, 0i), vec4<f32>(282f, -1000f, 834f, 2266f), 1398f), Struct_1(vec3<i32>(-18313i, i32(-2147483648), -8397i), vec4<f32>(218f, -573f, 300f, -539f), 507f), Struct_1(vec3<i32>(-1i, -1i, 0i), vec4<f32>(-1000f, 2872f, 1111f, -113f), 219f), Struct_1(vec3<i32>(-1i, 13138i, 0i), vec4<f32>(-1908f, 288f, 732f, 302f), 1195f), Struct_1(vec3<i32>(0i, 1i, 0i), vec4<f32>(-977f, 408f, 1576f, 265f), 1315f), Struct_1(vec3<i32>(-1i, -53572i, -18842i), vec4<f32>(-769f, 413f, -645f, -182f), 1248f), Struct_1(vec3<i32>(-16149i, -20493i, 17643i), vec4<f32>(250f, 1401f, 908f, 354f), 872f), Struct_1(vec3<i32>(34151i, -56267i, -735i), vec4<f32>(-1213f, -1626f, -2001f, -441f), -1126f));

var<private> global3: vec3<f32> = vec3<f32>(-1913f, -145f, -1015f);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>) -> bool {
    var var_0 = global0.a.x;
    let var_1 = Struct_2(vec4<bool>(all(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), true, true, u_input.d.x > ~abs(u_input.e.x)), _wgslsmith_f_op_f32(global0.b.x * 1000f) < 123f, global2[_wgslsmith_index_u32(u_input.b, 28u)]);
    var var_2 = var_1.c.a;
    var var_3 = -var_1.c.a.x;
    var var_4 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0.b.x, _wgslsmith_div_f32(-1369f, global3.x)), var_1.c.b.x)), -147f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(300f + -2580f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, -988f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(700f - global0.c)))))));
    return true;
}

fn func_4(arg_0: bool) -> vec2<i32> {
    var var_0 = ~select(~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.e.x, 0u, u_input.b, 4294967295u), select(vec4<u32>(13964u, u_input.a.x, u_input.e.x, u_input.d.x), vec4<u32>(u_input.e.x, u_input.e.x, u_input.d.x, 0u), false)), vec4<u32>(_wgslsmith_clamp_u32(u_input.b, ~u_input.d.x, _wgslsmith_mod_u32(33495u, u_input.b)), 4294967295u, u_input.a.x, min(u_input.a.x, _wgslsmith_div_u32(21491u, u_input.a.x))), !select(!vec4<bool>(false, arg_0, arg_0, false), select(vec4<bool>(arg_0, arg_0, true, false), vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(arg_0, arg_0, false, arg_0)), any(vec4<bool>(arg_0, false, arg_0, arg_0))));
    global1 = 1514f;
    global2 = array<Struct_1, 28>();
    let var_1 = _wgslsmith_mult_vec4_u32(reverseBits(countOneBits(~(~vec4<u32>(4294967295u, 16237u, 0u, var_0.x)))), _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(46073u, ~12011u, u_input.b, abs(1u))), abs(vec4<u32>(u_input.e.x, u_input.b, ~12961u, 4294967295u)), ~_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(30887u, var_0.x, 21413u, 35288u), vec4<u32>(u_input.b, u_input.b, 35237u, 15697u)), countOneBits(vec4<u32>(35659u, var_0.x, 4294967295u, var_0.x)))));
    global3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + 1346f)))) * 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x - _wgslsmith_f_op_f32(max(global3.x, global3.x))))));
    return min(select(vec2<i32>(1i, -global0.a.x ^ global0.a.x), vec2<i32>(global0.a.x, ~u_input.c.x), arg_0), global0.a.yx);
}

fn func_2() -> vec2<bool> {
    let var_0 = countOneBits(-2147483647i);
    global1 = _wgslsmith_f_op_f32(-1575f + 769f);
    let var_1 = _wgslsmith_f_op_f32(abs(global0.c));
    global1 = global0.b.x;
    let var_2 = firstLeadingBit(vec4<i32>(-414i & ((20727i | var_0) | u_input.c.x), 1i, _wgslsmith_dot_vec2_i32(func_4(func_3(vec4<i32>(global0.a.x, -1i, u_input.c.x, var_0))), u_input.c.zz), firstTrailingBit(-8737i)));
    return vec2<bool>(true, false);
}

fn func_1(arg_0: vec3<bool>, arg_1: bool, arg_2: u32) -> vec4<bool> {
    var var_0 = 122853u;
    let var_1 = Struct_2(!(!(!select(vec4<bool>(false, false, arg_1, arg_0.x), vec4<bool>(arg_1, true, false, true), arg_1))), all(select(select(!vec4<bool>(true, arg_0.x, arg_1, false), !vec4<bool>(true, true, true, arg_1), u_input.a.x > 4294967295u), select(select(vec4<bool>(arg_1, false, arg_0.x, arg_0.x), vec4<bool>(arg_1, true, false, arg_0.x), arg_1), !vec4<bool>(true, arg_0.x, false, arg_1), arg_0.x), select(!vec4<bool>(arg_1, true, false, arg_1), vec4<bool>(true, true, true, true), select(vec4<bool>(arg_0.x, false, arg_0.x, true), vec4<bool>(arg_1, true, arg_0.x, false), vec4<bool>(arg_0.x, arg_1, false, arg_1))))), Struct_1(~u_input.c.yyy, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.b + _wgslsmith_f_op_vec4_f32(global0.b - global0.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(411f, global3.x, -177f, 1254f)) - vec4<f32>(global3.x, 1143f, -1826f, 645f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_2 = vec2<u32>(36600u, ~(~0u) >> (abs(firstLeadingBit(49939u) << (~arg_2 % 32u)) % 32u));
    global1 = _wgslsmith_f_op_f32(266f - -802f);
    var var_3 = global0.b;
    return select(!select(var_1.a, vec4<bool>(all(vec4<bool>(var_1.a.x, var_1.a.x, true, true)), arg_1 | false, u_input.e.x >= arg_2, true), true), vec4<bool>(all(var_1.a), !all(func_2()), true, var_1.a.x), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, _wgslsmith_f_op_f32(-global3.x), -561f, global0.b.x)) - _wgslsmith_f_op_vec4_f32(-global0.b))));
    var var_1 = _wgslsmith_f_op_f32(min(global0.b.x, 853f));
    global0 = global2[_wgslsmith_index_u32(~max(u_input.d.x, ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(0u, 2947u), _wgslsmith_mod_u32(5037u, 25527u))), 28u)];
    let var_2 = false | all(select(!func_1(vec3<bool>(false, true, false), true, u_input.e.x), select(vec4<bool>(true, true, true, true), func_1(vec3<bool>(true, false, false), true, 64980u), vec4<bool>(true, true, true, true)), true));
    global0 = global2[_wgslsmith_index_u32(u_input.a.x, 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(vec2<i32>(50967i, select(1i, 0i, var_2))));
}

