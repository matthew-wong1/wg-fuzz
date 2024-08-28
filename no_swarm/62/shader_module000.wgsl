struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<u32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4>;

var<private> global1: vec3<bool> = vec3<bool>(false, false, true);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_1) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(4136u, 4u)];
    global0 = array<Struct_2, 4>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(~(~4294967295u), u_input.c.x, arg_0.x >> (4294967295u % 32u)), _wgslsmith_mod_u32(_wgslsmith_add_u32(countOneBits(~49278u), arg_2.d), _wgslsmith_sub_u32(arg_0.x, u_input.c.x))), 4u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-118f, _wgslsmith_f_op_f32(trunc(627f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1460f + -947f), -448f), 1000f)) * vec3<f32>(1f, 1f, 1f));
    var var_3 = Struct_2(arg_1.a);
    return true;
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: vec4<bool>) -> bool {
    global0 = array<Struct_2, 4>();
    var var_0 = !vec4<bool>(arg_2.x, ((false || arg_2.x) || arg_1.x) != any(select(arg_2.zz, global1.zy, false)), !arg_1.x, true);
    let var_1 = vec2<i32>(u_input.b.x, u_input.a) ^ vec2<i32>(-1i, 28102i);
    global0 = array<Struct_2, 4>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1475f), _wgslsmith_f_op_f32(-198f - arg_0))));
    return all(select(arg_2, vec4<bool>(true, false, !any(arg_2.xz), true), select(arg_2, select(!arg_2, arg_2, true), false)));
}

fn func_1() -> u32 {
    global1 = select(select(vec3<bool>(1i == u_input.a, true, true), vec3<bool>(global1.x, !func_2(u_input.c, global0[_wgslsmith_index_u32(26089u, 4u)], Struct_1(global1.x, true, u_input.c, u_input.c.x, global1.x)), true), any(vec4<bool>(global1.x, false, global1.x, true))), !select(!(!vec3<bool>(global1.x, false, true)), !select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(true, false, false), vec3<bool>(global1.x, global1.x, global1.x)), select(vec3<bool>(true, true, true), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, global1.x, global1.x))), select(vec3<bool>(func_3(1f, !global1.zx, select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(false, false, global1.x, global1.x), global1.x)), reverseBits(u_input.a) > _wgslsmith_add_i32(u_input.a, 44366i), _wgslsmith_f_op_f32(sign(-122f)) > _wgslsmith_f_op_f32(f32(-1f) * -269f)), !(!select(vec3<bool>(false, global1.x, false), vec3<bool>(false, false, global1.x), vec3<bool>(true, global1.x, false))), !all(vec4<bool>(global1.x, true, true, global1.x))));
    global0 = array<Struct_2, 4>();
    let var_0 = ~(~min(u_input.c.wz >> (u_input.c.wz % vec2<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(45303u, u_input.c.x), u_input.c.zw), ~u_input.c.x)));
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(285f, _wgslsmith_f_op_f32(-2822f + 966f)) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-190f, 418f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(903f, -1282f), vec2<f32>(178f, -1019f)))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -806f) - 287f)));
    return _wgslsmith_div_u32(0u, ~var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(func_1(), 4u)];
    var var_1 = u_input.b;
    var var_2 = global0[_wgslsmith_index_u32(~(func_1() | 1u), 4u)];
    let var_3 = Struct_2(!var_0.a);
    global1 = vec3<bool>(min(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, 1u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 18468u)), u_input.c.x) >= u_input.c.x, !var_0.a.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.xzz, u_input.c.x, -25438i, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~(u_input.c.zz >> (u_input.c.yy % vec2<u32>(32u))), u_input.c.xy), ~u_input.c.yy));
}

