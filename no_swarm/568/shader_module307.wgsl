struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 11> = array<vec4<f32>, 11>(vec4<f32>(754f, -1247f, -1579f, 285f), vec4<f32>(-119f, -544f, -1698f, 658f), vec4<f32>(-1302f, 1000f, -100f, -839f), vec4<f32>(-725f, 1000f, 538f, 1058f), vec4<f32>(-345f, 573f, 475f, -1410f), vec4<f32>(914f, 158f, 1000f, 281f), vec4<f32>(2050f, -1595f, -1145f, 1000f), vec4<f32>(-1026f, -320f, -1212f, 1176f), vec4<f32>(1184f, -439f, -747f, -1505f), vec4<f32>(1000f, -1000f, -1000f, 171f), vec4<f32>(1145f, -687f, 1000f, 1350f));

var<private> global1: array<i32, 2> = array<i32, 2>(-28073i, 2147483647i);

var<private> global2: array<vec4<f32>, 16> = array<vec4<f32>, 16>(vec4<f32>(338f, -153f, 129f, 502f), vec4<f32>(-1070f, -1451f, -1261f, -564f), vec4<f32>(108f, -433f, 1239f, 149f), vec4<f32>(-290f, 1894f, 2172f, 952f), vec4<f32>(-363f, 888f, -702f, 606f), vec4<f32>(758f, 723f, 604f, 219f), vec4<f32>(2287f, -998f, 628f, 388f), vec4<f32>(931f, 1000f, 161f, -246f), vec4<f32>(-1663f, 1000f, -1000f, -504f), vec4<f32>(-836f, -117f, -299f, 2513f), vec4<f32>(-303f, -307f, -1207f, -351f), vec4<f32>(-1885f, 795f, 149f, -343f), vec4<f32>(-654f, -380f, 1000f, -335f), vec4<f32>(-926f, -1181f, 1009f, -741f), vec4<f32>(-1517f, -285f, -300f, -547f), vec4<f32>(1000f, -1470f, -1104f, -897f));

var<private> global3: array<vec2<f32>, 28>;

var<private> global4: i32 = 1i;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: f32, arg_1: vec2<i32>) -> bool {
    return false & !(false | all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
}

fn func_1() -> Struct_4 {
    var var_0 = vec4<bool>(any(vec2<bool>(all(vec3<bool>(false, false, false)) && false, true)), any(vec4<bool>(true, true, true, true)), !(!func_2(-744f, _wgslsmith_sub_vec2_i32(vec2<i32>(1442i, global1[_wgslsmith_index_u32(u_input.a.x, 2u)]), vec2<i32>(0i, global1[_wgslsmith_index_u32(u_input.a.x, 2u)])))), !any(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), true)));
    let var_1 = !var_0.www;
    let var_2 = global1[_wgslsmith_index_u32(u_input.a.x, 2u)];
    global3 = array<vec2<f32>, 28>();
    var var_3 = var_1.x;
    return Struct_4(_wgslsmith_sub_u32(abs(~u_input.a.x), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-962f, 599f, -581f))) - vec3<f32>(331f, 557f, -1520f)), vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-487f + -2126f), 2390f, 825f))), Struct_2(0i <= global1[_wgslsmith_index_u32(~u_input.a.x, 2u)], true), -25840i);
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: u32) -> vec2<u32> {
    global4 = arg_0.d;
    var var_0 = _wgslsmith_clamp_u32(firstTrailingBit(~_wgslsmith_mult_u32(9668u, ~arg_2)), _wgslsmith_dot_vec3_u32(~abs(vec3<u32>(4294967295u, 31147u, 4294967295u)), vec3<u32>(_wgslsmith_div_u32(u_input.a.x, 4294967295u), arg_0.a ^ u_input.a.x, arg_2)) | (73681u >> (~(~arg_2) % 32u)), _wgslsmith_sub_u32(~arg_2, ~(~(~arg_0.a))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.b * arg_0.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, -1631f, -1560f) - arg_0.b), arg_0.b))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -931f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-494f)) - arg_0.b.x))));
    let var_2 = select(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, arg_0.a), _wgslsmith_sub_vec2_u32(vec2<u32>(~4294967295u, u_input.a.x), _wgslsmith_clamp_vec2_u32(u_input.a.wx, vec2<u32>(12686u, 22542u), vec2<u32>(0u, arg_0.a)))), vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.a, firstLeadingBit(vec4<u32>(56771u, 0u, 4294967295u, 1u))), 16894u) >> ((u_input.a.zy >> (min(u_input.a.yw, vec2<u32>(u_input.a.x, 4294967295u)) % vec2<u32>(32u))) % vec2<u32>(32u)), true);
    var var_3 = arg_0;
    return ~_wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, 1u)), var_2);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 2>();
    let var_0 = Struct_2(false || (!any(vec2<bool>(true, false)) | false), (~global1[_wgslsmith_index_u32(~u_input.a.x, 2u)] == countOneBits(global1[_wgslsmith_index_u32(u_input.a.x, 2u)] & global1[_wgslsmith_index_u32(u_input.a.x, 2u)])) || ((~global1[_wgslsmith_index_u32(52548u, 2u)] << (~4294967295u % 32u)) != (_wgslsmith_mult_i32(28231i, global1[_wgslsmith_index_u32(u_input.a.x, 2u)]) ^ -global1[_wgslsmith_index_u32(4294967295u, 2u)])));
    global3 = array<vec2<f32>, 28>();
    global4 = global1[_wgslsmith_index_u32(u_input.a.x, 2u)];
    global1 = array<i32, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_mult_vec2_u32(func_3(func_1(), -499f, _wgslsmith_dot_vec2_u32(u_input.a.xy, u_input.a.xx)), ~(~vec2<u32>(71913u, 18274u)))), _wgslsmith_f_op_f32(f32(-1f) * -386f), func_1().b.x, -490f, _wgslsmith_mult_vec2_i32(~(-(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 2u)], global1[_wgslsmith_index_u32(u_input.a.x, 2u)]) >> (u_input.a.wx % vec2<u32>(32u)))), vec2<i32>(~39211i ^ ~global1[_wgslsmith_index_u32(u_input.a.x, 2u)], _wgslsmith_mod_i32(1i, global1[_wgslsmith_index_u32(~u_input.a.x, 2u)]))));
}

