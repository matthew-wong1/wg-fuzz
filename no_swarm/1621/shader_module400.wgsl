struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: u32 = 0u;

var<private> global2: Struct_4;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32) -> Struct_1 {
    return global2.a.c;
}

fn func_3(arg_0: bool) -> vec2<u32> {
    return ~global0.c.xx;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_4, arg_3: Struct_4) -> f32 {
    var var_0 = u_input.a.yx;
    let var_1 = func_2(13900i);
    var_0 = (vec2<u32>(~5536u, var_0.x) >> (vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), u_input.a), 90776u) % vec2<u32>(32u))) & max(~countOneBits(func_3(global0.d)), u_input.a.zz);
    global2 = arg_0;
    var var_2 = arg_3;
    return -833f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a ^ global0.a;
    let var_1 = global2.a.c.d & (true || (-295f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_4(global2.a), global2.a, Struct_4(global2.a), Struct_4(global2.a))))));
    let var_2 = Struct_4(Struct_2(select(global2.a.a, select(vec2<bool>(global2.a.b, false), global2.a.a, !var_1), !(!var_1)), global2.a.a.x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - 333f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.a.c.b) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(755f, global2.a.c.c, global2.a.c.b.x), global2.a.c.b, vec3<bool>(global0.d, global0.d, false)))), global2.a.c.c, true, vec2<f32>(global2.a.c.b.x, -760f))));
    global0 = Struct_3(~min(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(global0.a, var_0), ~vec3<i32>(-2147483647i, var_0.x, var_0.x), firstTrailingBit(var_0)), -firstTrailingBit(vec3<i32>(-29013i, 3835i, var_0.x))), u_input.a, _wgslsmith_clamp_vec4_u32(reverseBits(~global0.c), vec4<u32>(global0.c.x, 75580u, ~countOneBits(1u), 1u), _wgslsmith_mod_vec4_u32(global0.c, ~vec4<u32>(4294967295u, global0.c.x, 24679u, global0.b.x) & global0.c)), global2.a.a.x);
    global2 = Struct_4(var_2.a);
    let var_3 = global2.a;
    var var_4 = _wgslsmith_clamp_i32(firstLeadingBit(-2147483647i), var_0.x, global0.a.x);
    global0 = Struct_3(~var_0, vec3<u32>(global0.b.x, ~1u, u_input.b), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4294967295u, global0.b.x, ~(~u_input.d)), vec4<u32>(4294967295u, ~u_input.b, _wgslsmith_clamp_u32(abs(u_input.d), firstTrailingBit(32075u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 0u, global0.b.x, global0.b.x), vec4<u32>(u_input.b, 3574u, 18638u, u_input.d))), _wgslsmith_mod_u32(~global0.c.x, firstTrailingBit(2661u)))), all(select(!select(vec3<bool>(global0.d, var_2.a.c.d, var_3.b), vec3<bool>(false, global0.d, true), vec3<bool>(var_2.a.c.d, true, false)), vec3<bool>(var_3.b != global2.a.a.x, false, false), select(vec3<bool>(var_3.b, false, var_2.a.b), vec3<bool>(var_2.a.c.d, false, true), true))));
    let x = u_input.a;
    s_output = StorageBuffer(428f);
}

