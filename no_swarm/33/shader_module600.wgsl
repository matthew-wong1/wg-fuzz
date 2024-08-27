struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec2<f32>, 2>;

var<private> global2: f32;

var<private> global3: Struct_1;

var<private> global4: array<vec3<bool>, 4>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    global0 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-30631i, u_input.a), u_input.e)), global0.x, 21977i, firstTrailingBit(-global3.b.x)), firstTrailingBit(arg_0.b)), u_input.e.x);
    global1 = array<vec2<f32>, 2>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_0.a - _wgslsmith_f_op_vec4_f32(vec4<f32>(1064f, global3.a.x, global3.a.x, global3.a.x) * vec4<f32>(463f, 169f, 421f, arg_0.a.x))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.x, arg_0.a.x, global3.a.x, 446f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.x, 1000f, global3.a.x, global3.a.x) - global3.a)), vec4<bool>(4294967295u <= u_input.d.x, any(vec2<bool>(false, true)), true, true))) + vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(576f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -210f))))), arg_0.b);
    global4 = array<vec3<bool>, 4>();
    global4 = array<vec3<bool>, 4>();
    return abs(u_input.d);
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_add_vec2_u32(reverseBits(u_input.d), func_3(Struct_1(arg_0.a, arg_0.b)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.a)) * vec4<f32>(arg_0.a.x, arg_0.a.x, 455f, arg_0.a.x));
    let var_2 = arg_0;
    let var_3 = ~vec3<u32>(var_0.x, 0u, 4294967295u);
    let var_4 = var_3;
    return 338f;
}

fn func_1() -> i32 {
    global3 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3.a.x * -909f), _wgslsmith_f_op_f32(-global3.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(vec4<f32>(global3.a.x, 482f, global3.a.x, -118f), vec4<i32>(0i, 2147483647i, global0.x, u_input.e.x))))), _wgslsmith_f_op_f32(f32(-1f) * -2223f), _wgslsmith_f_op_f32(1000f - -1504f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(552f, global3.a.x, 394f, 696f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(2618f, global3.a.x, 1690f, global3.a.x) + vec4<f32>(global3.a.x, global3.a.x, global3.a.x, 1000f))))), ((~vec4<i32>(global3.b.x, -16688i, global3.b.x, 2147483647i) >> (~vec4<u32>(32290u, u_input.b, 33821u, 4294967295u) % vec4<u32>(32u))) | global3.b) >> (vec4<u32>(~(~1u), 0u, abs(u_input.d.x), _wgslsmith_dot_vec2_u32(u_input.d, u_input.d)) % vec4<u32>(32u)));
    let var_0 = Struct_1(vec4<f32>(global3.a.x, _wgslsmith_div_f32(-871f, -821f), global3.a.x, global3.a.x), firstTrailingBit(firstLeadingBit(~vec4<i32>(-28357i, u_input.e.x, 0i, 0i))));
    global1 = array<vec2<f32>, 2>();
    global4 = array<vec3<bool>, 4>();
    global0 = vec2<i32>(4827i, abs(0i));
    return ~(~4821i);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec3<bool>, 4>();
    var var_0 = func_1();
    global1 = array<vec2<f32>, 2>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-588f, _wgslsmith_f_op_f32(-1223f - global3.a.x), -1000f, _wgslsmith_div_f32(996f, _wgslsmith_f_op_f32(f32(-1f) * -205f))) - vec4<f32>(1067f, _wgslsmith_div_f32(global3.a.x, global3.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1752f, global3.a.x)), _wgslsmith_f_op_f32(trunc(global3.a.x))), 785f)), _wgslsmith_mult_vec4_i32(~(~(-global3.b)), global3.b));
    var var_2 = var_1;
    var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.b));
}

