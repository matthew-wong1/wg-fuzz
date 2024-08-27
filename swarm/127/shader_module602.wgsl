struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
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

var<private> global0: vec3<i32> = vec3<i32>(1i, 3269i, 1012i);

var<private> global1: array<bool, 6> = array<bool, 6>(false, true, false, false, true, true);

var<private> global2: Struct_1 = Struct_1(2147483647i);

var<private> global3: array<Struct_1, 5>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    global0 = firstTrailingBit(u_input.b);
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, 27700u | _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(u_input.c.yyz, vec3<u32>(4294967295u, 4294967295u, 35342u)), vec3<u32>(firstTrailingBit(u_input.c.x), u_input.c.x & u_input.c.x, u_input.c.x))), 5u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-358f, -198f, -2202f)))))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-835f, -1000f, -1680f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-179f, -348f, -1331f)))))))));
    global2 = arg_0;
    var var_2 = arg_0;
    return abs(-abs(firstLeadingBit(vec4<i32>(var_2.a, global0.x, 16330i, -2147483647i))));
}

fn func_2(arg_0: u32) -> f32 {
    global3 = array<Struct_1, 5>();
    var var_0 = reverseBits(-(func_3(global3[_wgslsmith_index_u32(~arg_0, 5u)]) & vec4<i32>(25888i, 1i, global2.a, ~global0.x)));
    global1 = array<bool, 6>();
    global2 = Struct_1(global0.x);
    global3 = array<Struct_1, 5>();
    return _wgslsmith_f_op_f32(-1f);
}

fn func_1(arg_0: u32) -> Struct_1 {
    global3 = array<Struct_1, 5>();
    let var_0 = global1[_wgslsmith_index_u32(0u, 6u)];
    global2 = global3[_wgslsmith_index_u32(53480u, 5u)];
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(874f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(289f, 1417f)))) * _wgslsmith_f_op_f32(func_2(~(~1u))))));
    return global3[_wgslsmith_index_u32(u_input.c.x, 5u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~(~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.c.x), vec3<u32>(2886u, u_input.c.x, u_input.c.x)), ~vec3<u32>(u_input.c.x, 87236u, u_input.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(~abs(vec2<u32>(57881u, u_input.c.x)), max(~u_input.c.yw, _wgslsmith_div_vec2_u32(u_input.c.zx, u_input.c.zz))) >> (14042u % 32u));
}

