struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12>;

var<private> global1: bool;

var<private> global2: array<vec3<i32>, 23>;

var<private> global3: Struct_2 = Struct_2(vec2<bool>(false, false), vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 1i));

var<private> global4: array<bool, 26>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2() -> vec3<bool> {
    global2 = array<vec3<i32>, 23>();
    global4 = array<bool, 26>();
    let var_0 = 41032i;
    return vec3<bool>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(_wgslsmith_mult_u32(~11136u, _wgslsmith_add_u32(u_input.c, u_input.c)) ^ (1u & _wgslsmith_dot_vec2_u32(vec2<u32>(24664u, u_input.c), vec2<u32>(global0[_wgslsmith_index_u32(u_input.c, 12u)], 4294967295u)))), 12u)], 26u)], global3.a.x, !(!global3.a.x));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: bool) -> bool {
    let var_0 = func_2();
    let var_1 = _wgslsmith_sub_vec3_i32(global2[_wgslsmith_index_u32(~firstTrailingBit(abs(global0[_wgslsmith_index_u32(arg_1.d.a, 12u)] | 4294967295u)), 23u)], ~u_input.a);
    global1 = !(false || arg_2);
    var var_2 = u_input.c;
    let var_3 = !all(vec4<bool>(_wgslsmith_mod_i32(u_input.b, 33267i) != abs(u_input.a.x), true, any(!arg_0), true));
    return any(!var_0);
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.c, ~firstTrailingBit(1u)), _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(54109u, global0[_wgslsmith_index_u32(u_input.c, 12u)], global0[_wgslsmith_index_u32(u_input.c, 12u)], 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 9885u, u_input.c, 40907u), vec4<u32>(38846u, u_input.c, global0[_wgslsmith_index_u32(1u, 12u)], 4294967295u))), ~_wgslsmith_div_u32(~41215u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(28323u, 12u)], 28258u), vec2<u32>(4294967295u, 1u)))));
    global0 = array<u32, 12>();
    global1 = all(global3.a);
    let var_1 = _wgslsmith_mult_vec3_u32(~firstTrailingBit(max(~vec3<u32>(38845u, global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)]), reverseBits(vec3<u32>(global0[_wgslsmith_index_u32(0u, 12u)], var_0, u_input.c)))), reverseBits(~_wgslsmith_mult_vec3_u32(vec3<u32>(8208u, 30237u, 0u), vec3<u32>(1u, u_input.c, 4294967295u)) | _wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, 29178u, 5603u), vec3<u32>(u_input.c, 4294967295u, 1u) | vec3<u32>(var_0, 28944u, global0[_wgslsmith_index_u32(var_0, 12u)]), vec3<u32>(31294u, 10380u, 1u))));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(-344f + -398f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(313f - -995f)))), _wgslsmith_f_op_f32(round(-920f)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-820f, 367f))), 584f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(max(905f, -1246f))), -342f))), Struct_1(firstLeadingBit(~var_0), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(868f, 483f)), -140f)), 1295f));
    return _wgslsmith_mult_i32(global3.b.x, ~global3.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = false;
    global4 = array<bool, 26>();
    var var_0 = !select(vec3<bool>(any(vec3<bool>(true, true, true)), false | all(global3.a), global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 12u)], 12u)], 26u)]), vec3<bool>(!global4[_wgslsmith_index_u32(u_input.c, 26u)], true, false), true);
    var var_1 = i32(-1i) * -40744i;
    let var_2 = select(!var_0.xx, vec2<bool>(global4[_wgslsmith_index_u32(32743u, 26u)], func_1(var_0.yx, Struct_4(_wgslsmith_f_op_f32(1232f - -317f), 2332f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1000f, 674f, -534f)), Struct_1(u_input.c, 1283f, 380f)), true)), vec2<bool>(select(!global4[_wgslsmith_index_u32(firstTrailingBit(41848u), 26u)], global4[_wgslsmith_index_u32(~abs(4294967295u), 26u)], global3.a.x), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i, 2147483647i, _wgslsmith_mult_i32(-firstLeadingBit(global3.b.x), func_3() >> (u_input.c % 32u))), vec4<i32>(select(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.a.x, 13138i), ~vec3<i32>(1i, 23790i, u_input.b)), global4[_wgslsmith_index_u32(reverseBits(51107u), 26u)]), -(~(-1i)), u_input.a.x, ~max(1944i, global3.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 796f))) * 1725f), 1199f, 1i);
}

