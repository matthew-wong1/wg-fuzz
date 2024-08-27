struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 23> = array<vec4<u32>, 23>(vec4<u32>(1u, 4294967295u, 78634u, 4294967295u), vec4<u32>(1u, 0u, 1u, 1u), vec4<u32>(37392u, 49218u, 36960u, 40322u), vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), vec4<u32>(0u, 151200u, 93761u, 8809u), vec4<u32>(0u, 65029u, 21548u, 27843u), vec4<u32>(11443u, 1u, 21377u, 4294967295u), vec4<u32>(0u, 60307u, 30198u, 4294967295u), vec4<u32>(0u, 1u, 4294967295u, 38686u), vec4<u32>(11399u, 1u, 71012u, 36985u), vec4<u32>(0u, 37526u, 54898u, 29000u), vec4<u32>(969u, 45175u, 24620u, 37804u), vec4<u32>(3639u, 23546u, 72836u, 26684u), vec4<u32>(4294967295u, 4294967295u, 27916u, 38003u), vec4<u32>(4294967295u, 4294967295u, 0u, 21911u), vec4<u32>(64087u, 28082u, 1u, 0u), vec4<u32>(2476u, 42590u, 4294967295u, 36824u), vec4<u32>(5245u, 1u, 5057u, 0u), vec4<u32>(44675u, 64541u, 5861u, 4294967295u), vec4<u32>(2530u, 22938u, 79068u, 0u), vec4<u32>(1455u, 19781u, 55727u, 52146u), vec4<u32>(4294967295u, 4294967295u, 43990u, 0u), vec4<u32>(34549u, 0u, 49455u, 1u));

var<private> global1: array<i32, 28>;

var<private> global2: array<vec2<i32>, 15> = array<vec2<i32>, 15>(vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(14099i, 26178i), vec2<i32>(1i, 2147483647i), vec2<i32>(-11062i, i32(-2147483648)), vec2<i32>(-59224i, -1i), vec2<i32>(-21339i, -1i), vec2<i32>(45410i, -1i), vec2<i32>(-1i, 0i), vec2<i32>(-35464i, 2147483647i), vec2<i32>(-32760i, 1i), vec2<i32>(-5866i, 0i), vec2<i32>(2147483647i, 67600i), vec2<i32>(-1692i, 1i), vec2<i32>(-36102i, -2631i), vec2<i32>(i32(-2147483648), 0i));

var<private> global3: Struct_1 = Struct_1(vec2<u32>(1u, 0u), -1i, true);

var<private> global4: array<i32, 3>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    return Struct_2(global3.c, arg_0);
}

fn func_3() -> Struct_1 {
    let var_0 = Struct_3(Struct_1(global3.a, global3.b, false), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-414f, _wgslsmith_f_op_f32(1513f * -235f))) - _wgslsmith_f_op_f32(-280f + _wgslsmith_f_op_f32(322f * 583f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(706f)), _wgslsmith_div_f32(-701f, 796f)))), _wgslsmith_f_op_f32(max(-1187f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1311f)))))), Struct_1(vec2<u32>(~1u, abs(abs(global3.a.x))), _wgslsmith_div_i32(select(2147483647i, -global3.b, all(vec4<bool>(global3.c, global3.c, true, global3.c))), 2147483647i), any(vec4<bool>(u_input.c != 0u, global3.c, !global3.c, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1472f, 136f) * vec2<f32>(-517f, -1522f))))))));
    var var_1 = true;
    let var_2 = Struct_3(var_0.a, _wgslsmith_f_op_vec3_f32(floor(var_0.b)), Struct_1(~vec2<u32>(var_0.a.a.x, _wgslsmith_dot_vec2_u32(var_0.c.a, vec2<u32>(global3.a.x, 0u))), _wgslsmith_clamp_i32(var_0.a.b, _wgslsmith_add_i32(~global4[_wgslsmith_index_u32(4294967295u, 3u)], -34640i), global1[_wgslsmith_index_u32(select(14830u, 0u, true), 28u)]), !global3.c), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1691f)), var_0.d)));
    let var_3 = Struct_3(func_2(Struct_1(max(_wgslsmith_add_vec2_u32(vec2<u32>(global3.a.x, 1u), vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(1u, global3.a.x)), global4[_wgslsmith_index_u32(47084u, 3u)], false), func_2(func_2(Struct_1(vec2<u32>(391u, u_input.c), 2147483647i, var_2.c.c), func_2(var_0.c, Struct_1(global3.a, global3.b, true)).b).b, Struct_1(~vec2<u32>(0u, 60u), 56481i, var_2.a.c)).b).b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.b * var_0.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, var_2.d.x, var_0.b.x) + var_2.b))), var_0.b, select(vec3<bool>(global3.c | var_2.c.c, global1[_wgslsmith_index_u32(global3.a.x, 28u)] > global4[_wgslsmith_index_u32(4471u, 3u)], !var_2.c.c), select(!vec3<bool>(global3.c, false, false), select(vec3<bool>(false, global3.c, var_2.c.c), vec3<bool>(var_0.a.c, true, true), true), any(vec3<bool>(var_0.a.c, false, false))), vec3<bool>(-1194f > var_0.b.x, any(vec2<bool>(true, false)), var_0.b.x > -530f)))), Struct_1(func_2(func_2(func_2(var_2.a, var_2.c).b, func_2(Struct_1(global3.a, 23318i, true), Struct_1(vec2<u32>(74430u, u_input.c), var_2.a.b, false)).b).b, var_0.c).b.a, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, var_2.a.a.x, var_2.a.a.x), vec3<u32>(55550u, global3.a.x, 4294967295u), vec3<u32>(13106u, u_input.c, global3.a.x)), vec3<u32>(101083u, reverseBits(global3.a.x), ~var_2.a.a.x)), 3u)], false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1212f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1064f, var_2.d.x)))));
    global0 = array<vec4<u32>, 23>();
    return var_0.a;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = func_2(arg_1, Struct_1(select(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global3.a.x, 4294967295u), arg_1.a), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.a.x, arg_1.a.x), global3.a)), vec2<u32>(~4294967295u, 6929u), vec2<bool>(select(true, false, global3.c), arg_1.c)), ~(-countOneBits(global1[_wgslsmith_index_u32(arg_1.a.x, 28u)])), true));
    let var_1 = global3.a.x;
    var var_2 = Struct_2(global3.c, func_3());
    let var_3 = vec2<f32>(arg_0, -127f);
    global1 = array<i32, 28>();
    return func_2(Struct_1(arg_1.a, -_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(global1[_wgslsmith_index_u32(var_2.b.a.x, 28u)], u_input.a, 38410i, 0i)) | -countOneBits(-1i), all(!(!vec3<bool>(global3.c, true, var_2.b.c)))), Struct_1(arg_1.a, var_0.b.b, var_2.a)).b;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec4<u32>) -> Struct_1 {
    global1 = array<i32, 28>();
    let var_0 = global3.c;
    global1 = array<i32, 28>();
    var var_1 = !(!vec4<bool>(arg_0.c.c, false, arg_0.a.c, false));
    var var_2 = arg_0.a;
    return func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -397f))), arg_0.c);
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = global3.c;
    var var_1 = (select(reverseBits(~vec3<u32>(u_input.c, 0u, arg_0.a.a.x)), vec3<u32>(8464u, 6873u, _wgslsmith_mod_u32(global3.a.x, 34630u)), !global3.c) & (_wgslsmith_div_vec3_u32(~vec3<u32>(global3.a.x, u_input.c, arg_0.c.a.x), select(vec3<u32>(arg_0.a.a.x, 30940u, u_input.c), vec3<u32>(1u, 1u, 50392u), vec3<bool>(false, arg_0.c.c, false))) | max(select(vec3<u32>(global3.a.x, arg_0.c.a.x, global3.a.x), vec3<u32>(1u, 66117u, 35781u), vec3<bool>(true, false, global3.c)), _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.c.a.x, 0u, 1u), vec3<u32>(1u, u_input.c, arg_0.c.a.x))))) >> (vec3<u32>(u_input.c, 82402u, 8705u) % vec3<u32>(32u));
    var_0 = true;
    var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(25889u, _wgslsmith_div_u32(1u, func_2(Struct_1(arg_0.c.a, global4[_wgslsmith_index_u32(1u, 3u)], global3.c), Struct_1(arg_0.c.a, -10681i, arg_0.c.c)).b.a.x) << (~(~36176u) % 32u), func_2(func_1(arg_0.d.x, arg_0.a), arg_0.c).b.a.x | countOneBits(_wgslsmith_clamp_u32(32636u, 44092u, global3.a.x))), select(vec3<u32>(arg_0.c.a.x, _wgslsmith_mod_u32(~41086u, ~var_1.x), arg_0.c.a.x), select(_wgslsmith_sub_vec3_u32(vec3<u32>(7373u, 0u, 2514u) << (vec3<u32>(u_input.c, 26012u, u_input.c) % vec3<u32>(32u)), ~vec3<u32>(var_1.x, u_input.c, arg_0.c.a.x)), ~(~vec3<u32>(var_1.x, 11943u, arg_0.c.a.x)), !(global3.c && false)), true));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.x, 972f, -1358f)))) - arg_0.b));
    return func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.d.x, _wgslsmith_f_op_f32(-var_2.x), func_3().c))), Struct_1(_wgslsmith_mult_vec2_u32(max(select(global3.a, vec2<u32>(u_input.c, 55585u), vec2<bool>(false, arg_0.a.c)), func_1(var_2.x, arg_0.c).a), countOneBits(vec2<u32>(140171u, global3.a.x))), global4[_wgslsmith_index_u32(4294967295u, 3u)], false));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_5(Struct_3(Struct_1(global3.a, 1718i, global3.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(1137f, -2023f, 912f), vec3<f32>(-121f, 604f, 638f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1202f, -1730f, 1738f))))), func_4(Struct_3(func_1(113f, Struct_1(global3.a, global3.b, global3.c)), vec3<f32>(-2394f, 1877f, -462f), Struct_1(global3.a, u_input.a, global3.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -341f))), vec2<u32>(1u, 109535u), ~global0[_wgslsmith_index_u32(~1u, 23u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1869f, -2042f) - vec2<f32>(-1189f, 615f))) - vec2<f32>(_wgslsmith_f_op_f32(abs(-307f)), _wgslsmith_f_op_f32(select(453f, -1164f, true))))), 299f, u_input.d.zyy);
    global4 = array<i32, 3>();
    var var_0 = Struct_3(Struct_1(vec2<u32>(1u, ~func_1(-1383f, Struct_1(global3.a, global1[_wgslsmith_index_u32(4294967295u, 28u)], true)).a.x), -39903i, !select(!global3.c, any(vec2<bool>(false, global3.c)), global3.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(823f, -1798f, -726f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-627f, -1987f, -817f), vec3<f32>(-467f, 1283f, -1308f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-918f, 1590f, 602f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(350f, -303f, -121f))), !vec3<bool>(global3.c, true, false))))), func_3(), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(448f, -964f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(582f, -212f))))))));
    global1 = array<i32, 28>();
    var var_1 = Struct_3(var_0.c, var_0.b, var_0.a, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(409f, 1000f), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-3112f - 1000f), _wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.d.x, var_0.d.x)) - -520f)))));
    global4 = array<i32, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(-1i, firstTrailingBit(max(global3.a.x, _wgslsmith_div_u32(86850u, var_0.a.a.x))) >> (~func_1(-235f, Struct_1(var_1.c.a, global3.b, var_0.a.c)).a.x % 32u), countOneBits(reverseBits(global3.a.x >> (max(4294967295u, var_0.a.a.x) % 32u))), _wgslsmith_add_i32(8116i, global3.b) >> (func_5(Struct_3(func_4(Struct_3(var_0.a, vec3<f32>(var_1.b.x, var_0.d.x, 1804f), var_1.c, var_0.d), var_0.a.a, vec4<u32>(0u, 4294967295u, 43379u, 43906u)), vec3<f32>(var_0.b.x, var_0.b.x, -1812f), var_0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1418f, var_0.d.x))), _wgslsmith_f_op_f32(f32(-1f) * -1709f), u_input.d.zyz).a.x % 32u));
}

