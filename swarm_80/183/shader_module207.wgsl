struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 27635i;

var<private> global1: vec3<f32> = vec3<f32>(1045f, 508f, -1151f);

var<private> global2: array<vec4<u32>, 16> = array<vec4<u32>, 16>(vec4<u32>(0u, 0u, 34121u, 81430u), vec4<u32>(0u, 0u, 41441u, 0u), vec4<u32>(1u, 22945u, 4294967295u, 8350u), vec4<u32>(17272u, 70126u, 16453u, 0u), vec4<u32>(4294967295u, 22164u, 0u, 37164u), vec4<u32>(17780u, 346u, 31147u, 63467u), vec4<u32>(4294967295u, 4294967295u, 14861u, 29065u), vec4<u32>(9842u, 59120u, 1u, 26359u), vec4<u32>(1u, 4294967295u, 47421u, 9403u), vec4<u32>(76129u, 4294967295u, 31297u, 4294967295u), vec4<u32>(52790u, 4294967295u, 4294967295u, 56371u), vec4<u32>(4294967295u, 0u, 5835u, 4294967295u), vec4<u32>(32989u, 35095u, 39729u, 23718u), vec4<u32>(78036u, 1u, 0u, 72578u), vec4<u32>(102337u, 77923u, 41179u, 27083u), vec4<u32>(1u, 57433u, 1u, 95818u));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: Struct_3) -> u32 {
    return u_input.b.x;
}

fn func_3(arg_0: vec2<i32>) -> vec2<u32> {
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1035f, -426f)))), global1.x, -1000f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, 462f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, global1.x, -576f), vec3<f32>(global1.x, global1.x, -1637f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -1220f, global1.x)))))));
    var var_0 = u_input.d;
    global2 = array<vec4<u32>, 16>();
    global2 = array<vec4<u32>, 16>();
    return u_input.a.zy;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>) -> StorageBuffer {
    var var_0 = 5844i;
    let var_1 = true;
    var var_2 = _wgslsmith_mult_vec2_u32(u_input.b.zy, min(max(u_input.e.xz, ~vec2<u32>(arg_1.x, 22030u)), u_input.e.zz));
    var_2 = func_3(firstTrailingBit(firstLeadingBit(select(_wgslsmith_mult_vec2_i32(vec2<i32>(26299i, arg_0.a), vec2<i32>(u_input.d, -57117i)), ~vec2<i32>(u_input.d, u_input.d), vec2<bool>(true, true)))));
    let var_3 = var_1;
    return StorageBuffer(~_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.d, arg_0.a), _wgslsmith_mult_i32(-u_input.d, 2147483647i)), vec3<u32>(var_2.x, arg_1.x, _wgslsmith_mod_u32(var_2.x, ~(~var_2.x))), firstLeadingBit(-abs(select(vec4<i32>(arg_0.a, 1073i, u_input.d, arg_0.a), vec4<i32>(11217i, -2147483647i, arg_0.a, u_input.d), vec4<bool>(false, var_1, var_1, var_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(u_input.a.x, countOneBits(u_input.e.x), 47000u & abs(~u_input.a.x), _wgslsmith_mod_u32(_wgslsmith_mod_u32(func_1(Struct_3(true, 25935u, -1i, u_input.d, 1u)), 1u), 4294967295u));
    var_0 = ~_wgslsmith_mult_vec4_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(var_0.yzw, vec3<u32>(var_0.x, var_0.x, 0u)), ~select(vec3<u32>(u_input.b.x, 4294967295u, 552u), var_0.zzy, false)), 16u)], ~global2[_wgslsmith_index_u32(4294967295u, 16u)]);
    let var_1 = 0i;
    let var_2 = -2147483647i;
    let x = u_input.a;
    s_output = func_2(Struct_1(firstTrailingBit(i32(-1i) * -69900i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, -1570f, -856f) + vec4<f32>(global1.x, global1.x, global1.x, global1.x)) + vec4<f32>(1000f, 117f, 1303f, global1.x)))), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(0u, ~u_input.b.x), 46337u), 1u, u_input.e.x, 4294967295u));
}

