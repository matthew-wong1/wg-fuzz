struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(1u, 13418u), vec4<u32>(8981u, 24600u, 4294967295u, 4294967295u));

var<private> global1: array<f32, 1>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_4 {
    let var_0 = Struct_1(vec2<u32>(~1978u, 1u), global0.b);
    var var_1 = var_0;
    var var_2 = 1000f;
    global1 = array<f32, 1>();
    let var_3 = _wgslsmith_sub_vec2_u32(vec2<u32>(~_wgslsmith_sub_u32(arg_1, var_0.b.x) << (_wgslsmith_add_u32(u_input.d ^ u_input.a.x, 0u) % 32u), 4294967295u), ~var_1.a);
    return Struct_4(_wgslsmith_sub_vec4_u32(reverseBits(_wgslsmith_add_vec4_u32(var_1.b, abs(u_input.a))), var_1.b));
}

fn func_1(arg_0: vec2<u32>) -> Struct_4 {
    global1 = array<f32, 1>();
    return func_2(abs(4294967295u), 13548u);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: Struct_5) -> Struct_2 {
    var var_0 = ~func_1(vec2<u32>(_wgslsmith_add_u32(1u & arg_1.a.x, ~arg_1.a.x), 4294967295u)).a.wx;
    let var_1 = arg_2.a;
    let var_2 = Struct_2(arg_2.a.b.x, !vec4<bool>(-19478i < _wgslsmith_dot_vec2_i32(u_input.b.wx, vec2<i32>(18381i, 1i)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_1.a.x, 1u)] + -450f) <= global1[_wgslsmith_index_u32(10952u, 1u)], 1u <= firstTrailingBit(1u), all(vec4<bool>(arg_2.b.x, false, arg_2.b.x, arg_2.b.x))), ~(~(~(~var_0.x))));
    let var_3 = ~var_2.a;
    var var_4 = Struct_5(arg_2.a, vec3<bool>(var_2.b.x, var_2.b.x, arg_2.b.x), _wgslsmith_sub_vec2_u32(vec2<u32>(abs(~11047u), 4294967295u), countOneBits(u_input.a.xw)));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(vec2<i32>(reverseBits(u_input.b.x), i32(-1i) * -2147483647i) | ~(-vec2<i32>(u_input.b.x, u_input.b.x))) << (u_input.a.wz % vec2<u32>(32u));
    var var_1 = func_3(vec2<i32>(-var_0.x, -min(_wgslsmith_dot_vec2_i32(u_input.b.zx, u_input.b.xz), countOneBits(var_0.x))), func_1(~vec2<u32>(26577u, 0u) | _wgslsmith_clamp_vec2_u32(max(u_input.a.ww, vec2<u32>(21081u, global0.a.x)), global0.a, ~u_input.a.xw)), Struct_5(Struct_1(~u_input.a.yx, vec4<u32>(global0.b.x, u_input.a.x, ~u_input.a.x, u_input.c.x)), vec3<bool>(true, true, true), ~global0.b.yx & ~(~u_input.a.zy)));
    var var_2 = 1u;
    var var_3 = global1[_wgslsmith_index_u32(u_input.c.x, 1u)];
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.zx & u_input.c, u_input.a.zy), 1u)] + -370f), -658f, all(vec2<bool>(true, var_1.b.x)))));
    var var_5 = Struct_5(Struct_1(~(global0.b.zz ^ (global0.b.yy << (u_input.a.xy % vec2<u32>(32u)))), ~u_input.a), vec3<bool>(!(!func_3(u_input.b.wx, Struct_4(u_input.a), Struct_5(Struct_1(vec2<u32>(u_input.d, var_1.a), vec4<u32>(var_1.a, 0u, u_input.c.x, u_input.a.x)), var_1.b.xwz, u_input.c)).b.x), var_1.b.x, var_1.b.x), _wgslsmith_add_vec2_u32(global0.b.wx ^ (u_input.c | vec2<u32>(1u, global0.b.x)), vec2<u32>(countOneBits(~4294967295u), global0.b.x)));
    let var_6 = Struct_5(var_5.a, select(var_1.b.xwy, var_5.b, !vec3<bool>(var_5.b.x, var_5.b.x, var_5.b.x)), global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(1u), -1390f);
}

