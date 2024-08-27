struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17>;

var<private> global1: array<bool, 7>;

var<private> global2: array<vec3<bool>, 17>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> i32 {
    var var_0 = Struct_3(Struct_2(!select(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], false, true, true), vec4<bool>(false, true, global1[_wgslsmith_index_u32(86490u, 7u)], true), true), vec4<bool>(false, true, true, true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.e, 7u)], true, global1[_wgslsmith_index_u32(u_input.e, 7u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], 7u)])), -(-u_input.c >> (u_input.a % vec4<u32>(32u))), (u_input.d.x < ~(-2147483647i)) | true, Struct_1(u_input.c, _wgslsmith_sub_vec4_i32(firstTrailingBit(u_input.c), vec4<i32>(2147483647i, u_input.b.x, -90672i, u_input.b.x)), 1f, firstTrailingBit(-1i))), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_add_u32(firstLeadingBit(0u), ~u_input.a.x), ~u_input.e & _wgslsmith_clamp_u32(u_input.e, 4294967295u, 1809u)), _wgslsmith_clamp_vec2_u32(u_input.a.yx << (vec2<u32>(0u, 29068u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(u_input.a.yy, vec2<u32>(60811u, 1u), u_input.a.yz), u_input.a.zy & u_input.a.zz) & ((vec2<u32>(u_input.a.x, 17620u) | vec2<u32>(25120u, u_input.e)) >> (u_input.a.yw % vec2<u32>(32u)))), _wgslsmith_div_f32(-118f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1717f + -574f))))));
    global1 = array<bool, 7>();
    let var_1 = ~u_input.c;
    global2 = array<vec3<bool>, 17>();
    var var_2 = 29468u;
    return -u_input.b.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec4<f32>) -> vec3<u32> {
    var var_0 = arg_1.a.d;
    let var_1 = false;
    var_0 = Struct_1(arg_1.a.d.b, firstLeadingBit(arg_1.a.d.b), arg_2.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(-u_input.c.yy, firstLeadingBit(u_input.c.xw)), arg_1.a.b.x | firstTrailingBit(var_0.a.x)) & func_3());
    let var_2 = u_input.a.xxy;
    let var_3 = Struct_3(arg_1.a, _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(min(vec2<u32>(arg_1.b.x, 0u), u_input.a.yz) >> (_wgslsmith_mult_vec2_u32(var_2.xy, u_input.a.wz) % vec2<u32>(32u)), arg_1.b), ~reverseBits(~var_2.zy)), _wgslsmith_f_op_f32(-var_0.c));
    return ~select(_wgslsmith_clamp_vec3_u32(min(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], 0u, 0u), u_input.a.zwz), u_input.a.xwz, var_2), ~countOneBits(countOneBits(var_2)), select(!select(vec3<bool>(false, arg_0.x, var_3.a.c), vec3<bool>(arg_0.x, false, arg_1.a.a.x), false), vec3<bool>(true, !global1[_wgslsmith_index_u32(31521u, 7u)], true), select(var_3.a.a.wzz, vec3<bool>(var_1, false, var_3.a.c), false)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> vec2<f32> {
    var var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32(~(~u_input.a.ywx), u_input.a.wxx), ~20949u, ~12211u);
    let var_1 = -1000f;
    var var_2 = firstTrailingBit(~_wgslsmith_mult_vec3_u32(func_2(arg_3.a, Struct_3(arg_3, vec2<u32>(18162u, 17534u), var_1), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, 1000f, 900f, -492f), vec4<f32>(-308f, 955f, -1014f, arg_2.d.c))), ~(~vec3<u32>(4289u, 4294967295u, var_0.x))));
    global0 = array<u32, 17>();
    var var_3 = Struct_2(arg_0.a, firstLeadingBit(arg_2.b) | ~min(u_input.c << (vec4<u32>(var_2.x, 8761u, 1u, 62571u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(9062i, u_input.c.x, -1198i, arg_3.b.x), vec4<i32>(arg_1.b.x, -2147483647i, arg_2.d.a.x, -37867i))), false, arg_3.d);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.d.c, var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 17>();
    global2 = array<vec3<bool>, 17>();
    global2 = array<vec3<bool>, 17>();
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(-428f, -139f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1503f, -686f) * vec2<f32>(-456f, 157f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-360f, 1422f) - vec2<f32>(-1153f, -815f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-660f, 791f) * vec2<f32>(-2440f, -1000f)) + vec2<f32>(1f, 1f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(Struct_2(vec4<bool>(true, global1[_wgslsmith_index_u32(17684u, 7u)], true, global1[_wgslsmith_index_u32(10579u, 7u)]), vec4<i32>(-1i, -2147483647i, u_input.d.x, u_input.c.x), false, Struct_1(vec4<i32>(u_input.d.x, -6424i, 2147483647i, -63980i), u_input.c, -352f, u_input.d.x)), Struct_1(u_input.c, vec4<i32>(-2147483647i, -4334i, 30822i, u_input.b.x), 1200f, -38573i), Struct_2(vec4<bool>(false, true, global1[_wgslsmith_index_u32(15286u, 7u)], global1[_wgslsmith_index_u32(31644u, 7u)]), u_input.c, true, Struct_1(vec4<i32>(-2147483647i, u_input.b.x, 2147483647i, 2147483647i), u_input.c, 1000f, u_input.d.x)), Struct_2(vec4<bool>(true, true, false, true), vec4<i32>(-2147483647i, u_input.b.x, u_input.c.x, u_input.b.x), global1[_wgslsmith_index_u32(0u, 7u)], Struct_1(vec4<i32>(u_input.b.x, 1i, u_input.b.x, -1i), u_input.c, 270f, u_input.d.x)))), vec2<f32>(-403f, -1732f)))));
    global2 = array<vec3<bool>, 17>();
    global1 = array<bool, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(~(countOneBits(u_input.d.x) | _wgslsmith_mult_i32(-u_input.c.x, countOneBits(2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(334f + _wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_f32(1131f - _wgslsmith_div_f32(var_0.x, var_0.x))) + var_0.x), 769f, _wgslsmith_add_i32(_wgslsmith_div_i32(-3550i, ~(-50427i)), -2767i));
}

