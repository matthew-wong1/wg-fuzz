struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: bool,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 42554i;

var<private> global1: array<vec4<f32>, 19> = array<vec4<f32>, 19>(vec4<f32>(889f, 223f, 1502f, 235f), vec4<f32>(2083f, -389f, 2620f, 1000f), vec4<f32>(-666f, -910f, 243f, -1368f), vec4<f32>(-3380f, 844f, -1630f, -120f), vec4<f32>(365f, -1331f, 997f, -522f), vec4<f32>(1000f, 320f, 1600f, -175f), vec4<f32>(-240f, 1000f, -159f, 784f), vec4<f32>(636f, -290f, -230f, -364f), vec4<f32>(1136f, -237f, -720f, -122f), vec4<f32>(1709f, -1381f, 1222f, -275f), vec4<f32>(-1042f, -692f, -1577f, 426f), vec4<f32>(-529f, -1713f, -200f, -158f), vec4<f32>(-1804f, 906f, -1292f, 1350f), vec4<f32>(957f, -1863f, -1161f, -702f), vec4<f32>(252f, 830f, -1971f, 748f), vec4<f32>(-483f, 1089f, -935f, 548f), vec4<f32>(-636f, 228f, -179f, 780f), vec4<f32>(-1862f, 224f, 1000f, 309f), vec4<f32>(1000f, 965f, -407f, 556f));

var<private> global2: Struct_3 = Struct_3(10034u, vec4<bool>(true, true, false, true), false, Struct_2(Struct_1(true, vec4<u32>(167425u, 0u, 45219u, 1738u)), true, vec4<f32>(145f, -382f, -295f, 1000f)), Struct_2(Struct_1(false, vec4<u32>(20565u, 0u, 0u, 20255u)), false, vec4<f32>(735f, 202f, -336f, 1226f)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> f32 {
    let var_0 = global2.e;
    let var_1 = _wgslsmith_f_op_vec2_f32(-var_0.c.zz);
    let var_2 = -_wgslsmith_div_i32(~1i << (1u % 32u), min(_wgslsmith_add_i32(-1i, ~1i), ~_wgslsmith_sub_i32(-48261i, 24990i)));
    let var_3 = ~var_2 & -37216i;
    var var_4 = false;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_2) -> vec2<bool> {
    return vec2<bool>(true, true);
}

fn func_2(arg_0: Struct_2) -> u32 {
    let var_0 = arg_0.a;
    global2 = Struct_3(~0u, global2.b, true, arg_0, Struct_2(Struct_1(true, vec4<u32>(global2.a, ~u_input.a, var_0.b.x, ~0u)), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2995f, arg_0.c.x, -1097f, global2.d.c.x))))));
    let var_1 = _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(arg_0.a.b.wxz, global2.d.a.b.wwy) & min(vec3<u32>(4294967295u, 49679u, 4294967295u), arg_0.a.b.www), global2.e.a.b.zyz) ^ abs(u_input.a), 11778u);
    global2 = Struct_3(_wgslsmith_add_u32(min(abs(u_input.a), var_0.b.x), global2.e.a.b.x), select(!global2.b, vec4<bool>(true, any(func_3(false, vec2<f32>(446f, arg_0.c.x), Struct_2(var_0, false, arg_0.c))), var_0.a, all(!vec3<bool>(global2.b.x, false, global2.d.a.a))), vec4<bool>(arg_0.b, true | !var_0.a, true, true)), false, arg_0, Struct_2(arg_0.a, false, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-624f)) - _wgslsmith_f_op_f32(arg_0.c.x + arg_0.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.e.c.x + global2.e.c.x), global2.d.c.x), -139f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.c.x)) - 1000f))));
    global2 = Struct_3(u_input.a, vec4<bool>(false, !all(!vec3<bool>(true, global2.e.b, false)), all(!select(global2.b, global2.b, true)), select(~0i, 1i, arg_0.a.a) <= _wgslsmith_div_i32(2147483647i << (var_1 % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-21409i, 44538i, 1i), vec3<i32>(-2147483647i, -7389i, -73564i)))), -335f == _wgslsmith_f_op_f32(round(global2.e.c.x)), arg_0, arg_0);
    return 74643u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -_wgslsmith_mod_i32(~2147483647i, 1i);
    var var_0 = global2.e.c.wx;
    let var_1 = func_2(Struct_2(Struct_1(0i <= _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(11376i, 3546i)), global2.d.a.b), (2306f != var_0.x) & true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, -1786f, var_0.x, 357f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2068f, -296f, var_0.x, 833f))), vec4<bool>(global2.c, false, false, global2.c))) + vec4<f32>(_wgslsmith_f_op_f32(func_1(global2.e.a, global2.c)), _wgslsmith_div_f32(-851f, -510f), _wgslsmith_f_op_f32(sign(-1000f)), -496f))));
    let var_2 = ~abs(firstTrailingBit(~(~(-54538i))));
    var_0 = global2.d.c.yz;
    let var_3 = global2.e.a;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(_wgslsmith_div_u32(~var_1, 17454u), ~u_input.a, var_1, 40496u));
}

