struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: vec3<i32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 158u;

var<private> global1: array<i32, 22> = array<i32, 22>(-12066i, 2147483647i, 1i, 36463i, 25201i, 43327i, 2147483647i, -36564i, 2147483647i, 1i, -1i, 1i, -39185i, -12357i, 1i, 0i, -22747i, 15247i, 32923i, 0i, -1i, 0i);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1() -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-613f + _wgslsmith_f_op_f32(f32(-1f) * -1894f)))))));
    var var_1 = true;
    var var_2 = u_input.e.x;
    let var_3 = u_input.e.wxy;
    global0 = abs(3285u);
    return ~vec4<i32>(firstLeadingBit(-38977i), -50452i & _wgslsmith_add_i32(reverseBits(u_input.c.x), i32(-1i) * -2147483647i), u_input.a.x, -8261i);
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))))), 0u, Struct_1(vec3<u32>(u_input.b, min(_wgslsmith_mult_u32(1u, 24878u), 1u), _wgslsmith_clamp_u32(23723u, u_input.b ^ 77849u, abs(1u))), -1237f), true);
    var var_1 = ~countOneBits(u_input.a.x);
    global0 = 1u;
    var var_2 = u_input.c;
    let var_3 = Struct_4(Struct_1(vec3<u32>(u_input.b, 35260u, min(0u ^ u_input.e.x, var_0.b)), var_0.a), _wgslsmith_f_op_f32(-var_0.c.b), all(!select(vec4<bool>(var_0.d, true, false, true), !vec4<bool>(false, arg_0, arg_0, var_0.d), !arg_0)), vec3<i32>(_wgslsmith_sub_i32(reverseBits(select(u_input.c.x, global1[_wgslsmith_index_u32(u_input.b, 22u)], false)), reverseBits(_wgslsmith_sub_i32(37881i, 1i))), ~firstTrailingBit(1i), _wgslsmith_add_i32(-(~var_2.x), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(5020u, _wgslsmith_mult_u32(var_0.b, 1u)), 22u)])));
    return select(0i, 20508i, arg_0);
}

fn func_4(arg_0: i32) -> bool {
    return true;
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: f32) -> Struct_5 {
    var var_0 = vec3<u32>(u_input.e.x, ~(arg_0 | 49577u), ~arg_0);
    let var_1 = _wgslsmith_f_op_f32(select(arg_2, -310f, !func_4(func_3(true))));
    var var_2 = min(39492u, ~(~(u_input.e.x ^ u_input.e.x)) | select(u_input.e.x, var_0.x, true));
    let var_3 = Struct_5(Struct_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1563f, arg_2, arg_2) + vec3<f32>(var_1, 304f, arg_2)))), vec3<f32>(arg_2, _wgslsmith_f_op_f32(max(arg_2, -939f)), _wgslsmith_f_op_f32(ceil(-465f)))))));
    var var_4 = !select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false)), true);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = any(!(!vec3<bool>(select(false, true, false), all(vec3<bool>(false, true, false)), true)));
    global1 = array<i32, 22>();
    let var_2 = func_2(_wgslsmith_dot_vec2_u32(u_input.e.zw, _wgslsmith_mult_vec2_u32(u_input.e.zz, ~_wgslsmith_mult_vec2_u32(u_input.e.yx, vec2<u32>(0u, u_input.e.x)))), _wgslsmith_sub_vec4_i32(u_input.c, -countOneBits(func_1())), -570f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.yy, 9959u);
}

