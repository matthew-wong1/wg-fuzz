struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: u32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25> = array<bool, 25>(true, true, true, false, false, false, false, true, false, false, false, true, false, true, false, true, true, false, true, true, false, false, false, true, true);

var<private> global1: array<vec3<u32>, 27>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1224f, 1f))))));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_1.x)))) * arg_1.x) + arg_1.x);
    let var_1 = vec4<u32>(0u, _wgslsmith_add_u32(abs(countOneBits(_wgslsmith_add_u32(854u, 10719u))), ~74265u), ~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(arg_0.a, arg_0.a)), u_input.c.zy), 0u);
    global1 = array<vec3<u32>, 27>();
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-164f * 1000f))))), _wgslsmith_f_op_f32(-arg_1.x));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(arg_1, vec3<f32>(var_2.x, arg_1.x, arg_1.x)))))))));
    return ~u_input.c;
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: vec2<u32>) -> u32 {
    global0 = array<bool, 25>();
    let var_0 = func_4(Struct_3(~(~(arg_1.c << (26780u % 32u)))), vec3<f32>(975f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-751f, 1488f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-186f + _wgslsmith_f_op_f32(func_3(arg_1.b.zw)))))));
    let var_1 = select(!select(select(vec2<bool>(false, false), vec2<bool>(true, arg_1.b.x), select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 25u)], true), global0[_wgslsmith_index_u32(4294967295u, 25u)])), vec2<bool>(true, true || global0[_wgslsmith_index_u32(17068u, 25u)]), false), arg_1.b.zy, arg_1.b.zx);
    let var_2 = 0i;
    let var_3 = _wgslsmith_sub_vec2_i32(vec2<i32>(reverseBits(_wgslsmith_add_i32(-var_2, 1i)), min(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.b, vec4<i32>(arg_0, 1i, var_2, u_input.b.x)), reverseBits(u_input.b)), arg_0)), vec2<i32>(_wgslsmith_mult_i32(max(var_2 | var_2, _wgslsmith_dot_vec4_i32(u_input.b, u_input.b)), -firstTrailingBit(var_2)), _wgslsmith_div_i32(-18139i, _wgslsmith_dot_vec2_i32(vec2<i32>(-62476i, var_2), u_input.d.xx))));
    return 1u;
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: vec4<bool>, arg_3: f32) -> f32 {
    let var_0 = vec3<i32>(~0i << (1u % 32u), u_input.d.x, -u_input.e.x >> (~func_2(0i, Struct_2(arg_0, arg_2, 43026u), u_input.c.xz) % 32u)) ^ vec3<i32>(0i, _wgslsmith_mult_i32(~(~u_input.b.x), _wgslsmith_clamp_i32(3418i, firstTrailingBit(u_input.d.x), 2010i)), abs(u_input.d.x));
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    global1 = array<vec3<u32>, 27>();
    global0 = array<bool, 25>();
    return -1064f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 27>();
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    let var_0 = vec3<f32>(_wgslsmith_div_f32(-774f, 1f), -1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f + 1248f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1686f)))), _wgslsmith_f_op_f32(func_1(u_input.a, select(vec3<bool>(global0[_wgslsmith_index_u32(28716u, 25u)], true, global0[_wgslsmith_index_u32(u_input.a, 25u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 25u)], true, true), global0[_wgslsmith_index_u32(u_input.c.x, 25u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 25u)], true, global0[_wgslsmith_index_u32(1u, 25u)], true), _wgslsmith_f_op_f32(1297f + -204f))))));
    global0 = array<bool, 25>();
    var var_1 = Struct_2(min(~1u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(abs(u_input.a), firstTrailingBit(33184u)), u_input.c.x)), vec4<bool>(any(vec2<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 25u)], true, true, true)), true)), !global0[_wgslsmith_index_u32(u_input.a, 25u)], any(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 25u)], false)) || !any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 25u)], true, global0[_wgslsmith_index_u32(u_input.a, 25u)])), false), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-422f, 1000f, var_0.x, -294f) + vec4<f32>(897f, var_0.x, var_0.x, var_0.x)) * vec4<f32>(280f, 916f, -2164f, 583f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.x, -339f, -175f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(555f, -1606f, var_0.x, -1895f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 435f, var_0.x, var_0.x) - vec4<f32>(var_0.x, -1924f, var_0.x, 479f)))), !(!var_1.b.x))))), u_input.b.x, _wgslsmith_div_i32(_wgslsmith_div_i32(2147483647i, 1i), countOneBits(u_input.e.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -981f, 664f, 736f) + vec4<f32>(-1835f, 1000f, 1717f, var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 602f, var_0.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1074f, -1504f, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-824f, 1359f, var_0.x, var_0.x)))))));
}

