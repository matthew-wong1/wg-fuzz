struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: bool,
    d: vec4<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5>;

var<private> global1: array<Struct_3, 5>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<bool> {
    global1 = array<Struct_3, 5>();
    let var_0 = ~66157u;
    global0 = array<bool, 5>();
    let var_1 = Struct_3(Struct_1(_wgslsmith_sub_vec2_i32(abs(-vec2<i32>(1i, -2i)), firstTrailingBit(~u_input.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1603f, -427f, 189f, -984f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1472f, 1000f, -1911f)))), !vec3<bool>(global0[_wgslsmith_index_u32(min(var_0, var_0), 5u)], global0[_wgslsmith_index_u32(var_0, 5u)] && global0[_wgslsmith_index_u32(var_0, 5u)], !global0[_wgslsmith_index_u32(44749u, 5u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-246f)), _wgslsmith_f_op_f32(max(1314f, -1000f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 612f)), -209f)), Struct_2(Struct_1(select(u_input.a << (vec2<u32>(0u, 27475u) % vec2<u32>(32u)), -vec2<i32>(0i, u_input.a.x), select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)], true), vec2<bool>(true, true), global0[_wgslsmith_index_u32(var_0, 5u)])), vec4<f32>(1f, 1f, 1f, 1f), select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 5u)], false, global0[_wgslsmith_index_u32(1u, 5u)]), !vec3<bool>(false, false, global0[_wgslsmith_index_u32(42672u, 5u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(51967u, 5u)], true, true), vec3<bool>(false, true, global0[_wgslsmith_index_u32(0u, 5u)]), false)), _wgslsmith_f_op_f32(round(-1192f))), Struct_1(_wgslsmith_div_vec2_i32(u_input.a, u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(311f, 177f, -236f, 1421f), vec4<f32>(-1280f, 1141f, -2253f, 1215f))) - vec4<f32>(1400f, -1098f, -1302f, -2541f)), !vec3<bool>(global0[_wgslsmith_index_u32(22479u, 5u)], true, global0[_wgslsmith_index_u32(17846u, 5u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(486f + -577f))), Struct_1(vec2<i32>(22406i | u_input.a.x, u_input.a.x), vec4<f32>(-1467f, _wgslsmith_f_op_f32(sign(-419f)), _wgslsmith_f_op_f32(-959f + 2170f), _wgslsmith_f_op_f32(min(-859f, -577f))), !select(vec3<bool>(true, true, false), vec3<bool>(global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(1u, 5u)], true), false), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1112f)), _wgslsmith_f_op_f32(979f * -1986f))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.c.d * var_1.a.d));
    return vec3<bool>(true, all(vec4<bool>(true, true, true, true)) | ((firstTrailingBit(1i) != 0i) == true), var_1.c.c.c.x);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: i32, arg_3: vec4<bool>) -> Struct_3 {
    global0 = array<bool, 5>();
    global0 = array<bool, 5>();
    return Struct_3(Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, 1i)), arg_2), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-413f))), 240f, arg_1.x, _wgslsmith_f_op_f32(ceil(arg_1.x))), func_3(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1591f)), Struct_2(Struct_1(abs(~vec2<i32>(33689i, 14662i)), vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(1486f * arg_1.x), _wgslsmith_f_op_f32(arg_1.x + arg_1.x), _wgslsmith_f_op_f32(-858f * arg_1.x)), arg_3.xxw, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-arg_1.x)))), Struct_1(~u_input.a, vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(round(arg_1.x)), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-arg_1.x)), vec3<bool>(true, true, false), _wgslsmith_f_op_f32(-arg_1.x)), Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), vec4<f32>(_wgslsmith_f_op_f32(sign(1119f)), -1086f, arg_1.x, _wgslsmith_f_op_f32(-126f + arg_1.x)), func_3(), arg_1.x)));
}

fn func_1(arg_0: vec3<bool>, arg_1: bool, arg_2: vec2<i32>) -> Struct_3 {
    var var_0 = ~(~(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(28697u, 1u), vec2<u32>(20989u, 0u)))));
    return func_2(arg_0.xz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(-314f * -904f))) - vec2<f32>(_wgslsmith_f_op_f32(-394f - -1392f), _wgslsmith_f_op_f32(step(-388f, _wgslsmith_f_op_f32(f32(-1f) * -1191f))))), -2147483647i, vec4<bool>(!arg_1, arg_0.x, true & global0[_wgslsmith_index_u32(64358u, 5u)], all(arg_0.xz)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_dot_vec3_i32(min(reverseBits(vec3<i32>(u_input.a.x, 49388i, 24692i)), vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x)), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.a.x, 0i, u_input.a.x), ~(-4301i)), -13534i, _wgslsmith_dot_vec3_i32(vec3<i32>(25430i, 0i, u_input.a.x), min(vec3<i32>(-31671i, u_input.a.x, u_input.a.x), vec3<i32>(2147483647i, u_input.a.x, 1i)))));
    var var_1 = global1[_wgslsmith_index_u32(~4294967295u, 5u)];
    global1 = array<Struct_3, 5>();
    global0 = array<bool, 5>();
    global1 = array<Struct_3, 5>();
    var_1 = func_1(!select(vec3<bool>(true, !global0[_wgslsmith_index_u32(4294967295u, 5u)], true), !vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 5u)], false), var_1.c.c.c), countOneBits(abs(_wgslsmith_clamp_u32(0u, 49034u, 0u))) != ~0u, var_1.a.a);
    global1 = array<Struct_3, 5>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-var_1.a.b);
    let var_3 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i, ~var_1.c.a.a.x, 2147483647i, u_input.a.x), ~vec4<u32>(countOneBits(28104u), ~(~4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(6028u, 24590u), vec2<u32>(28550u, 1u)), abs(1u)), _wgslsmith_div_vec4_i32(vec4<i32>(var_3.a.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(var_0, var_1.c.a.a.x, var_1.c.a.a.x, var_1.a.a.x), vec4<i32>(var_1.c.a.a.x, var_3.a.x, var_1.a.a.x, 2147483647i)), _wgslsmith_sub_i32(1i, _wgslsmith_div_i32(0i, 2147483647i)), 1i), -(~vec4<i32>(13727i, var_0, var_0, var_0) ^ ~vec4<i32>(var_0, -8818i, 42732i, var_1.c.a.a.x))));
}

