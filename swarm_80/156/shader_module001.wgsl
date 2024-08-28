struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<u32, 4> = array<u32, 4>(18198u, 0u, 1u, 4294967295u);

var<private> global2: array<vec3<f32>, 29> = array<vec3<f32>, 29>(vec3<f32>(-481f, 1162f, -254f), vec3<f32>(626f, 965f, 1191f), vec3<f32>(1036f, -1638f, -350f), vec3<f32>(1000f, -1078f, 1286f), vec3<f32>(1748f, -1000f, 2272f), vec3<f32>(-378f, 1038f, 756f), vec3<f32>(286f, -833f, -254f), vec3<f32>(455f, -509f, -534f), vec3<f32>(1352f, -1000f, -330f), vec3<f32>(-438f, -1000f, -207f), vec3<f32>(-1047f, -1227f, 989f), vec3<f32>(-387f, -1521f, -3464f), vec3<f32>(-1426f, 1357f, 1274f), vec3<f32>(250f, -949f, 896f), vec3<f32>(1428f, 1955f, 310f), vec3<f32>(1487f, -941f, -1281f), vec3<f32>(1000f, 1000f, -1010f), vec3<f32>(-1000f, -549f, 331f), vec3<f32>(845f, 419f, 271f), vec3<f32>(689f, -527f, -1151f), vec3<f32>(1000f, -860f, -781f), vec3<f32>(-1115f, 1063f, -317f), vec3<f32>(163f, 829f, -1073f), vec3<f32>(-1080f, -508f, 290f), vec3<f32>(-296f, 889f, 610f), vec3<f32>(1419f, 222f, -271f), vec3<f32>(715f, 331f, 170f), vec3<f32>(207f, -393f, -2798f), vec3<f32>(-709f, 355f, 1633f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_1(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2621u, 4u)], 4u)]), u_input.c.x, abs(arg_1.a)), vec3<u32>(~global0.x, 1u | u_input.d, ~127054u)), 6118u), select(max(arg_1.b >> (~u_input.c.zwy % vec3<u32>(32u)), -max(vec3<i32>(u_input.a, arg_1.b.x, u_input.a), vec3<i32>(arg_1.b.x, u_input.b, arg_1.b.x))), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(arg_1.b, arg_1.b ^ vec3<i32>(arg_1.b.x, u_input.a, -38784i)), countOneBits(_wgslsmith_add_vec3_i32(arg_1.b, vec3<i32>(arg_1.b.x, 1i, -2147483647i)))), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_0)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c.x, arg_0.x) * vec2<f32>(-739f, -1000f))))));
    global1 = array<u32, 4>();
    let var_1 = Struct_1(~(~reverseBits(firstTrailingBit(u_input.c.x))), _wgslsmith_mult_vec3_i32(vec3<i32>(i32(-1i) * -u_input.a, arg_1.b.x, reverseBits(-1290i)), select(vec3<i32>(-10434i, 2692i, arg_1.b.x) & var_0.b, arg_1.b | vec3<i32>(arg_1.b.x, arg_1.b.x, arg_1.b.x), false) >> (u_input.c.xwx % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -474f), _wgslsmith_f_op_f32(min(arg_0.x, arg_1.c.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c - arg_0))))));
    let var_2 = ~(u_input.c.yz ^ ~max(~vec2<u32>(0u, u_input.d), u_input.c.zx & u_input.c.xy));
    global1 = array<u32, 4>();
    return -u_input.b;
}

fn func_2() -> vec2<f32> {
    var var_0 = u_input.a;
    var var_1 = ~u_input.a;
    let var_2 = any(vec4<bool>(true, true, true, true));
    var var_3 = Struct_1(_wgslsmith_add_u32(~max(_wgslsmith_clamp_u32(global0.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 4u)], 4u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.x, 4u)], 4u)], 4u)]), global1[_wgslsmith_index_u32(18904u, 4u)] ^ 0u), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, global0.x, global1[_wgslsmith_index_u32(4294967295u, 4u)], 71716u), vec4<u32>(global1[_wgslsmith_index_u32(0u, 4u)], global0.x, u_input.c.x, global0.x))), 4u)]), vec3<i32>(func_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-824f, -2019f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-291f, -304f) - vec2<f32>(-961f, -182f))), Struct_1(3800u & u_input.c.x, vec3<i32>(u_input.b, -22530i, u_input.a) & vec3<i32>(u_input.a, u_input.b, u_input.a), vec2<f32>(284f, -220f))), u_input.a, ~(-1i)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1965f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-548f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-264f, 878f)) * 922f))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1319f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1606f + _wgslsmith_f_op_f32(max(-126f, _wgslsmith_div_f32(var_3.c.x, -448f)))), var_3.c.x));
    return _wgslsmith_f_op_vec2_f32(round(var_3.c));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec4<u32>) -> vec3<i32> {
    global0 = ~u_input.c.zwy;
    let var_0 = !vec3<bool>(true, true, any(vec4<bool>(true, true, true, true)));
    let var_1 = Struct_1(~1u, arg_1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2())));
    var var_2 = var_1.c.x;
    return -var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_i32(func_1(vec2<i32>(~u_input.a, -_wgslsmith_add_i32(35342i, u_input.b)), Struct_1(0u, vec3<i32>(1i, ~u_input.a, 2694i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1132f, 1000f), vec2<f32>(-1293f, 1519f), vec2<bool>(true, false))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1196f, 831f), vec2<f32>(-523f, 754f))))), global2[_wgslsmith_index_u32(global0.x, 29u)], u_input.c), vec3<i32>(min(1i, u_input.b), ~_wgslsmith_div_i32(u_input.b ^ u_input.b, -2147483647i ^ u_input.b), ~_wgslsmith_add_i32(-u_input.b, u_input.a)));
    global1 = array<u32, 4>();
    var var_1 = select(select(~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 10719i), vec2<i32>(var_0, var_0)), vec2<i32>(-14371i, u_input.a) ^ abs(vec2<i32>(0i, -2147483647i)), !select(vec2<bool>(false, false), vec2<bool>(false, true), true)) | vec2<i32>(~0i, select(-4518i, 2513i, all(vec4<bool>(true, false, false, false)))), ~_wgslsmith_add_vec2_i32(-vec2<i32>(var_0, var_0), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, var_0), vec2<i32>(2147483647i, u_input.b))) & ~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, 1i), func_1(vec2<i32>(u_input.b, var_0), Struct_1(u_input.d, vec3<i32>(15641i, u_input.b, -1i), vec2<f32>(1000f, -169f)), vec3<f32>(468f, 1533f, 120f), u_input.c).xy), !select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), true), any(vec3<bool>(true, true, false))), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), true), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(169f + 285f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2867f, _wgslsmith_f_op_f32(500f - 1386f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1718f), 1449f));
}

