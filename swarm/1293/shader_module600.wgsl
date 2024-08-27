struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2;

var<private> global2: Struct_2 = Struct_2(vec4<i32>(1i, -31618i, 561i, -29581i), 2319f, Struct_1(1563f), Struct_1(-919f));

var<private> global3: array<vec4<u32>, 9>;

var<private> global4: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(vec4<i32>(-1i, -51457i, 91645i, 0i), 837f, Struct_1(546f), Struct_1(2037f)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec2<bool> {
    var var_0 = global0.a.xw;
    var var_1 = ~u_input.c.x;
    var var_2 = _wgslsmith_sub_u32(0u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(abs(u_input.a.yxy ^ vec3<u32>(26774u, 47706u, u_input.a.x)), firstLeadingBit(u_input.c.xyx)), min(~u_input.a.x, u_input.c.x)));
    var var_3 = vec4<u32>(5388u, abs(firstLeadingBit(58157u)), u_input.c.x, 0u);
    return vec2<bool>(true, false);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: Struct_2) -> bool {
    var var_0 = select(select(select(func_3(), select(arg_1, select(vec2<bool>(false, arg_1.x), vec2<bool>(arg_1.x, true), vec2<bool>(arg_1.x, false)), select(arg_1, vec2<bool>(false, true), false)), !func_3()), !arg_1, arg_1), vec2<bool>(all(vec2<bool>(select(arg_1.x, arg_1.x, true), true)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1148f + arg_3.b)) - global0.d.a) <= global1.d.a);
    global3 = array<vec4<u32>, 9>();
    var_0 = !arg_1;
    let var_1 = Struct_1(-1000f);
    var var_2 = arg_1.x;
    return true;
}

fn func_1(arg_0: f32, arg_1: u32) -> Struct_2 {
    var var_0 = 0u;
    var var_1 = select(select(!vec4<bool>(672f == global2.c.a, select(false, true, true), false, true), select(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, all(vec4<bool>(true, false, true, false)), true, true), all(vec2<bool>(true, true))), func_2(reverseBits(vec4<i32>(global2.a.x, u_input.b, 0i, global1.a.x)), vec2<bool>(true, true), reverseBits(u_input.a.xxx), Struct_2(global2.a, -159f, Struct_1(arg_0), Struct_1(global2.b))) && true), vec4<bool>(true, true, true, true), true);
    var_0 = u_input.a.x;
    let var_2 = Struct_1(global1.d.a);
    var var_3 = abs(vec2<u32>(~_wgslsmith_div_u32(45895u, u_input.c.x), 1u));
    return Struct_2(~(-_wgslsmith_add_vec4_i32(global0.a, vec4<i32>(global1.a.x, 2147483647i, -48007i, -24092i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_2.a, arg_0)))), var_2, global1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -firstLeadingBit(u_input.b);
    let var_1 = func_1(global2.b, 7520u);
    let var_2 = Struct_2(-(~abs(global1.a)) & var_1.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1454f)))), global2.d, global2.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b, 365f, 695f) - vec3<f32>(_wgslsmith_f_op_f32(global2.b + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1169f), _wgslsmith_f_op_f32(var_1.d.a - 2033f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-413f, global0.d.a, -274f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.a, var_1.c.a, global1.d.a) + vec3<f32>(global1.d.a, 1457f, -404f))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1f), global0.d.a)), 60988u, ~global2.a, _wgslsmith_div_i32(min(_wgslsmith_mult_i32(u_input.b, u_input.b), var_2.a.x), firstLeadingBit(2147483647i >> (u_input.a.x % 32u))) & 0i);
}

