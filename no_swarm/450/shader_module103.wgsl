struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<i32>(1i, -62579i), vec4<i32>(-27595i, 19733i, 0i, 0i), true);

var<private> global1: array<u32, 9>;

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(false, true, false, true)));

var<private> global3: array<vec4<f32>, 24> = array<vec4<f32>, 24>(vec4<f32>(-2019f, 612f, 519f, 154f), vec4<f32>(941f, 592f, 1759f, -910f), vec4<f32>(-1970f, 176f, 445f, -339f), vec4<f32>(1255f, -193f, -2084f, 1550f), vec4<f32>(1000f, -1613f, -454f, 510f), vec4<f32>(-583f, -488f, 1516f, -1111f), vec4<f32>(-467f, 876f, 569f, 203f), vec4<f32>(-954f, 1127f, 628f, -435f), vec4<f32>(-258f, 1000f, -543f, 928f), vec4<f32>(-1644f, 277f, 1856f, 1796f), vec4<f32>(1685f, 153f, 209f, 1066f), vec4<f32>(-1000f, -392f, 772f, -442f), vec4<f32>(922f, 1084f, -766f, 1228f), vec4<f32>(695f, -1295f, -740f, 283f), vec4<f32>(-1658f, 1791f, -328f, -1714f), vec4<f32>(1000f, 1904f, -249f, -2316f), vec4<f32>(-798f, -1382f, -2182f, -314f), vec4<f32>(883f, 309f, 850f, -1531f), vec4<f32>(-701f, -1000f, 202f, 766f), vec4<f32>(-885f, -214f, -2324f, -1645f), vec4<f32>(-2004f, 889f, 1196f, -221f), vec4<f32>(-573f, -1952f, 1058f, 1000f), vec4<f32>(1582f, 524f, 730f, -1879f), vec4<f32>(-454f, 1656f, 120f, 380f));

var<private> global4: i32;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_3) -> u32 {
    global1 = array<u32, 9>();
    global2 = array<Struct_1, 29>();
    let var_0 = Struct_1(vec4<bool>(true, true, select(arg_2.c, global0.c, true), arg_2.c));
    var var_1 = true;
    global4 = 2147483647i;
    return arg_0.x;
}

fn func_2() -> f32 {
    let var_0 = firstLeadingBit(select(vec2<u32>(firstLeadingBit(_wgslsmith_div_u32(1u, 35921u)), ~func_3(u_input.a, false, Struct_3(vec2<i32>(6000i, 19217i), global0.b, global0.c))), vec2<u32>(~(~54594u), u_input.a.x), select(!(!vec2<bool>(true, global0.c)), vec2<bool>(!global0.c, global0.c), all(!vec4<bool>(true, global0.c, global0.c, global0.c)))));
    var var_1 = select(select(vec3<bool>(all(select(vec3<bool>(global0.c, true, global0.c), vec3<bool>(global0.c, true, false), vec3<bool>(global0.c, true, global0.c))), true, !(!global0.c)), vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, global0.c), true)), true, true), select(!(!vec3<bool>(global0.c, global0.c, false)), vec3<bool>(!global0.c, true, global0.c), vec3<bool>(true, true, true))), vec3<bool>(all(vec2<bool>(true, true)), any(vec3<bool>(true, global0.c, false)), false), all(!select(!vec4<bool>(true, false, global0.c, true), select(vec4<bool>(global0.c, true, global0.c, global0.c), vec4<bool>(true, global0.c, false, false), true), all(vec4<bool>(global0.c, global0.c, global0.c, global0.c)))));
    let var_2 = vec2<u32>(24632u, 61738u) ^ (_wgslsmith_mod_vec2_u32(firstTrailingBit(u_input.a.yx), _wgslsmith_mod_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(1u, 9u)], u_input.a.x) ^ u_input.a.xx, reverseBits(u_input.a.xx))) & ~u_input.a.zz);
    let var_3 = select(vec2<bool>(true, any(select(!vec4<bool>(true, var_1.x, false, global0.c), vec4<bool>(global0.c, false, var_1.x, var_1.x), true))), !vec2<bool>(global0.c, any(vec3<bool>(true, true, true)) || true), false);
    var_1 = vec3<bool>(global0.c || !var_1.x, !var_3.x, true);
    return 1245f;
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: i32, arg_3: vec2<f32>) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0)) + _wgslsmith_f_op_f32(817f + _wgslsmith_f_op_f32(func_2())));
    let var_1 = Struct_3(global0.a, vec4<i32>(-_wgslsmith_dot_vec4_i32(global0.b, global0.b), _wgslsmith_clamp_i32(global0.a.x, ~global0.b.x, 1i), -_wgslsmith_clamp_i32(global0.b.x << (1u % 32u), arg_2 << (71334u % 32u), select(arg_2, 0i, true)), ~global0.a.x), any(select(!select(vec3<bool>(global0.c, global0.c, false), vec3<bool>(global0.c, global0.c, true), vec3<bool>(false, false, global0.c)), !select(vec3<bool>(false, false, true), vec3<bool>(true, global0.c, global0.c), global0.c), !global0.c)));
    let var_2 = Struct_1(vec4<bool>(!(!global0.c), global1[_wgslsmith_index_u32(38330u, 9u)] < abs(41287u), !((global0.c | true) != !global0.c), (true & var_1.c) & true));
    let var_3 = _wgslsmith_f_op_f32(step(arg_0, arg_0));
    global2 = array<Struct_1, 29>();
    return global3[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(54938u << (~u_input.a.x % 32u), ~arg_1 & _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(arg_1, 9u)], 0u, 4294967295u), vec3<u32>(arg_1, arg_1, global1[_wgslsmith_index_u32(arg_1, 9u)])))), 24u)];
}

@compute
@workgroup_size(1)
fn main() {
    global4 = -5363i;
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(-1f), _wgslsmith_mod_u32(reverseBits(1u), _wgslsmith_add_u32(49831u, _wgslsmith_add_u32(1u, u_input.a.x))), -(i32(-1i) * -2147483647i), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(178f, 504f))) - _wgslsmith_div_vec2_f32(vec2<f32>(407f, -774f), vec2<f32>(1043f, -554f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(161f, -543f) - vec2<f32>(1000f, 260f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(152f, -437f) * vec2<f32>(-474f, -638f)), global0.c != global0.c)))))));
    var_0 = true;
    global0 = Struct_3(vec2<i32>((_wgslsmith_div_i32(global0.b.x, 46469i) >> (~u_input.a.x % 32u)) | global0.a.x, 24753i ^ global0.a.x), _wgslsmith_sub_vec4_i32(global0.b >> ((min(vec4<u32>(1u, global1[_wgslsmith_index_u32(u_input.a.x, 9u)], 4294967295u, 19834u), vec4<u32>(28839u, 30387u, 0u, 0u)) ^ ~vec4<u32>(39473u, 54066u, u_input.a.x, global1[_wgslsmith_index_u32(20803u, 9u)])) % vec4<u32>(32u)), global0.b), ~firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 9u)]), u_input.a)) < countOneBits(52086u));
    global0 = Struct_3(-global0.a, global0.b, true);
    global2 = array<Struct_1, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_div_vec4_u32(min(vec4<u32>(u_input.a.x, 23103u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 9u)], 1u), vec4<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 9u)], 9u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22524u, 9u)], 9u)], 9u)], 9u)], 1u)) ^ ~vec4<u32>(64783u, 1u, global1[_wgslsmith_index_u32(23985u, 9u)], u_input.a.x), ~countOneBits(vec4<u32>(1u, 30698u, 24782u, 1u)))), u_input.a.zz >> (abs(vec2<u32>(~global1[_wgslsmith_index_u32(97207u, 9u)], u_input.a.x)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.x))) - _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(915f, var_1.x))), global0.c))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -407f), _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(f32(-1f) * -494f)))))));
}

