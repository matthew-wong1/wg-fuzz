struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 10> = array<vec4<i32>, 10>(vec4<i32>(28098i, -1i, -40294i, -26852i), vec4<i32>(63137i, -9603i, -1i, -8820i), vec4<i32>(-42241i, i32(-2147483648), 83011i, 1i), vec4<i32>(13936i, i32(-2147483648), -1i, 2179i), vec4<i32>(2147483647i, 9034i, i32(-2147483648), -6853i), vec4<i32>(i32(-2147483648), 38209i, 1i, -1i), vec4<i32>(2147483647i, 13904i, -34296i, -1i), vec4<i32>(1i, -1i, 2147483647i, 1i), vec4<i32>(31862i, 1i, 0i, -38710i), vec4<i32>(30746i, 0i, 57822i, -11427i));

var<private> global1: vec3<f32>;

var<private> global2: array<vec3<i32>, 13>;

var<private> global3: array<vec3<f32>, 30> = array<vec3<f32>, 30>(vec3<f32>(200f, -258f, -136f), vec3<f32>(-2043f, 1000f, 1110f), vec3<f32>(-227f, 242f, -904f), vec3<f32>(-447f, -354f, -922f), vec3<f32>(585f, -997f, 431f), vec3<f32>(141f, -286f, 538f), vec3<f32>(329f, -681f, -1536f), vec3<f32>(-118f, 1098f, 174f), vec3<f32>(1088f, -810f, -264f), vec3<f32>(838f, -1301f, 445f), vec3<f32>(1795f, 398f, -670f), vec3<f32>(170f, 510f, 1000f), vec3<f32>(-176f, -191f, -684f), vec3<f32>(1600f, 917f, 2066f), vec3<f32>(-117f, -208f, 439f), vec3<f32>(162f, -361f, 1814f), vec3<f32>(-1599f, -2093f, -208f), vec3<f32>(-1404f, -1256f, -937f), vec3<f32>(810f, -1008f, -471f), vec3<f32>(-1000f, 982f, -1882f), vec3<f32>(740f, 1302f, -874f), vec3<f32>(974f, -1000f, -1937f), vec3<f32>(-1113f, -274f, 1000f), vec3<f32>(741f, -490f, 1703f), vec3<f32>(1636f, 1000f, 2656f), vec3<f32>(627f, -1000f, -278f), vec3<f32>(-1576f, 734f, -423f), vec3<f32>(185f, -1629f, -506f), vec3<f32>(1229f, -499f, 425f), vec3<f32>(299f, -190f, -871f));

var<private> global4: array<vec2<bool>, 3>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> i32 {
    return (firstLeadingBit(select(1i, 1i, arg_1.x)) & min(66367i, _wgslsmith_sub_i32(2147483647i << (arg_0.a % 32u), 1i))) ^ 1i;
}

fn func_2() -> Struct_4 {
    return Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1313f, 1253f) + global1.yx)), _wgslsmith_f_op_vec2_f32(trunc(global1.zy)))), Struct_1(reverseBits(u_input.a.x), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(520f, -920f))), any(vec2<bool>(true, false))), Struct_1(~(~81033u), -2147483647i > func_3(Struct_1(4294967295u, false, 625f, true), vec4<bool>(false, true, false, false)), global1.x, !all(vec3<bool>(false, true, false))), vec2<f32>(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-global1.x)), 309f), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 965u, u_input.a.x), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u))), false, _wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_f32(ceil(global1.x)))), true)), _wgslsmith_f_op_f32(f32(-1f) * -495f));
}

fn func_1() -> Struct_3 {
    global4 = array<vec2<bool>, 3>();
    global1 = vec3<f32>(589f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.x, global1.x, any(vec4<bool>(false, false, true, true)))))));
    var var_0 = func_2();
    global1 = global3[_wgslsmith_index_u32(4294967295u, 30u)];
    let var_1 = -16141i;
    return var_0.a;
}

fn func_4(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_3) -> Struct_3 {
    global4 = array<vec2<bool>, 3>();
    let var_0 = arg_2.c.b;
    let var_1 = _wgslsmith_sub_i32(27138i, -36071i);
    let var_2 = arg_2.c;
    global4 = array<vec2<bool>, 3>();
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(-384i >> (u_input.a.x % 32u), _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(1u, 10u)], vec4<i32>(-23106i, 2147483647i, -2147483647i, 20961i)), _wgslsmith_add_i32(-2147483647i, 19873i), ~0i)), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i) >> (vec4<u32>(4221u, 19947u, 67542u, u_input.a.x) % vec4<u32>(32u)), ~max(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], vec4<i32>(1i, -1i, -6116i, -2147483647i)))), 58337u, func_1());
    let var_1 = var_0.c.b;
    global0 = array<vec4<i32>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(262f, 24286i, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1413f + -657f)) * -623f), 580f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(f32(-1f) * -413f)))), -194f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.x, -1000f) - vec2<f32>(global1.x, var_0.d.x)), var_0.a, vec2<bool>(true, true)))) + var_0.a), _wgslsmith_sub_u32(~(~max(var_0.c.a, var_0.b.a)), ~_wgslsmith_mult_u32(~0u, ~4294967295u)));
}

