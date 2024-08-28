struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(46019i, -10673i, i32(-2147483648)));

var<private> global1: array<Struct_1, 32>;

var<private> global2: array<bool, 18>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-793f, 669f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-262f, 1653f) - vec2<f32>(-778f, -616f))))));
    let var_1 = var_0.x;
    return global0.a.x;
}

fn func_2(arg_0: Struct_2) -> u32 {
    let var_0 = ~u_input.a.x;
    global0 = Struct_1(abs(firstLeadingBit(global0.a)));
    return firstTrailingBit(23735u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> u32 {
    var var_0 = _wgslsmith_sub_vec4_u32(~(~u_input.a), vec4<u32>(reverseBits(u_input.d), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.a.x, u_input.a.x, 27149u), u_input.a) << (_wgslsmith_dot_vec2_u32(abs(u_input.c.yy), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.c.x), vec2<u32>(0u, u_input.a.x))) % 32u), u_input.d, firstTrailingBit(u_input.a.x) >> (37274u % 32u)));
    var var_1 = arg_2;
    global2 = array<bool, 18>();
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<i32>(~min(u_input.e.x, _wgslsmith_div_i32(u_input.b, 2147483647i)), func_1(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x) ^ _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(13129u, u_input.c.x, 2781u, 46847u)), 32u)]), 2147483647i));
    let var_1 = Struct_2(vec3<i32>(-2147483647i, -2147483647i, 0i ^ -global0.a.x) >> (vec3<u32>(u_input.a.x, _wgslsmith_sub_u32(func_2(Struct_2(u_input.e.xyw, var_0, u_input.e.xw)), countOneBits(16150u)), select(u_input.a.x | 4294967295u, u_input.c.x >> (4294967295u % 32u), true)) % vec3<u32>(32u)), global1[_wgslsmith_index_u32(1u, 32u)], min(global0.a.xz, vec2<i32>(0i, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.e.x, var_0.a.x)), -vec2<i32>(0i, 36688i)))));
    global1 = array<Struct_1, 32>();
    var var_2 = !vec2<bool>(!global2[_wgslsmith_index_u32(func_3(Struct_2(vec3<i32>(var_1.b.a.x, var_1.a.x, var_1.a.x), global1[_wgslsmith_index_u32(u_input.c.x, 32u)], var_1.c), Struct_1(vec3<i32>(3168i, -2147483647i, 1i)), var_1, 275f) & abs(u_input.c.x), 18u)], global2[_wgslsmith_index_u32(~func_3(Struct_2(vec3<i32>(u_input.e.x, 2147483647i, global0.a.x), var_0, vec2<i32>(26979i, global0.a.x)), global1[_wgslsmith_index_u32(42182u, 32u)], Struct_2(vec3<i32>(global0.a.x, 0i, 1i), var_1.b, var_1.a.xx), -1638f), 18u)]);
    global2 = array<bool, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-2147483647i, global0.a.x));
}

