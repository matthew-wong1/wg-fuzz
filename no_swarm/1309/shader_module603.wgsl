struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-34745i);

var<private> global1: array<Struct_1, 21>;

var<private> global2: array<vec2<f32>, 20> = array<vec2<f32>, 20>(vec2<f32>(1000f, 1235f), vec2<f32>(159f, 614f), vec2<f32>(-2150f, 293f), vec2<f32>(-157f, -650f), vec2<f32>(349f, -904f), vec2<f32>(-255f, 1155f), vec2<f32>(-477f, 244f), vec2<f32>(-1171f, -2461f), vec2<f32>(-665f, -638f), vec2<f32>(-2165f, 248f), vec2<f32>(1000f, -832f), vec2<f32>(1501f, 1000f), vec2<f32>(704f, 1313f), vec2<f32>(-1551f, 721f), vec2<f32>(-2056f, 328f), vec2<f32>(563f, 602f), vec2<f32>(379f, -1419f), vec2<f32>(-503f, 1000f), vec2<f32>(972f, 1000f), vec2<f32>(-2015f, -370f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: bool) -> vec3<bool> {
    var var_0 = Struct_1(~reverseBits(35116i));
    global1 = array<Struct_1, 21>();
    return !select(vec3<bool>(!arg_0, all(select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(true, false, true, false))), false), vec3<bool>(!(!arg_0), any(vec3<bool>(arg_0, false, arg_0)), false), true);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> u32 {
    global1 = array<Struct_1, 21>();
    let var_0 = Struct_1(arg_1.a);
    global1 = array<Struct_1, 21>();
    global0 = arg_1;
    global2 = array<vec2<f32>, 20>();
    return ~8811u;
}

fn func_2() -> vec3<u32> {
    let var_0 = ~_wgslsmith_mult_u32(u_input.b.x, (u_input.c.x | u_input.c.x) ^ func_3(_wgslsmith_sub_vec2_u32(u_input.c.yy, u_input.c.yw), Struct_1(u_input.a.x)));
    let var_1 = _wgslsmith_f_op_f32(ceil(-496f));
    var var_2 = ~(~firstTrailingBit(~vec4<u32>(var_0, 62544u, u_input.b.x, 4294967295u)));
    let var_3 = global1[_wgslsmith_index_u32(u_input.c.x, 21u)];
    global0 = global1[_wgslsmith_index_u32(~(u_input.c.x ^ var_2.x), 21u)];
    return vec3<u32>(0u, reverseBits(60880u), reverseBits(1u)) ^ u_input.c.wyz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = abs(min(_wgslsmith_add_vec4_u32(u_input.b, u_input.c), vec4<u32>(1u, _wgslsmith_mult_u32(68743u, 3992u), ~u_input.c.x, ~_wgslsmith_dot_vec2_u32(u_input.c.xx, vec2<u32>(101429u, u_input.b.x)))));
    global2 = array<vec2<f32>, 20>();
    let var_2 = !all(func_1(var_0));
    let var_3 = Struct_1(global0.a ^ global0.a);
    var var_4 = ~func_2() | _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, _wgslsmith_div_u32(4294967295u & var_1.x, 8370u), 11544u), vec3<u32>(_wgslsmith_div_u32(~var_1.x, ~u_input.b.x), 796u, ~(var_1.x | u_input.c.x)), ~(~(~vec3<u32>(4294967295u, 4294967295u, 28910u))));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<i32>(1i, var_3.a ^ 25280i, ~global0.a, ~0i) ^ vec4<i32>(~52583i, _wgslsmith_dot_vec2_i32(u_input.a, u_input.a), -var_3.a, _wgslsmith_clamp_i32(-2147483647i, u_input.a.x, 16278i)), ~vec4<i32>(var_3.a, -global0.a, i32(-1i) * -55747i, global0.a)), -1i);
}

