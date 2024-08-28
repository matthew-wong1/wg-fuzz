struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(-295f, -553f), vec3<u32>(39431u, 1u, 3230u));

var<private> global2: array<f32, 9> = array<f32, 9>(-379f, -248f, 1094f, 1009f, -1079f, 271f, -1000f, 1222f, -209f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec3<bool>) -> vec3<u32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global1.b.x, 9u)] * -1773f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.a, 4294967295u), 9u)] - _wgslsmith_f_op_f32(step(104f, _wgslsmith_f_op_f32(-global1.a.x))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -378f) - global1.a.x))))));
    global2 = array<f32, 9>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.a - global1.a) + var_0.yy)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.yz - var_0.zx)))))), ~countOneBits(~max(global1.b, vec3<u32>(1u, 75827u, global1.b.x))));
    global0 = array<Struct_1, 18>();
    global1 = global0[_wgslsmith_index_u32(abs(1u), 18u)];
    return vec3<u32>(~1u, _wgslsmith_div_u32(u_input.a, 39184u), ~u_input.d);
}

fn func_4(arg_0: Struct_1) -> f32 {
    global0 = array<Struct_1, 18>();
    return -1113f;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(vec2<f32>(global1.a.x, global1.a.x), global1.b);
    var_0 = global0[_wgslsmith_index_u32(global1.b.x, 18u)];
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-896f, _wgslsmith_f_op_f32(var_0.a.x - global2[_wgslsmith_index_u32(0u, 9u)])) + vec2<f32>(186f, 1000f)))), ~global1.b);
    let var_2 = Struct_2(u_input.c.x, _wgslsmith_f_op_f32(func_4(global0[_wgslsmith_index_u32(~1u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(global1.b.x, var_0.b.x, 37999u), func_3(false, false, vec3<bool>(false, false, true))), 18u)])));
    global0 = array<Struct_1, 18>();
    return global0[_wgslsmith_index_u32(4763u, 18u)];
}

fn func_1() -> Struct_2 {
    global2 = array<f32, 9>();
    let var_0 = true;
    let var_1 = func_2();
    var var_2 = Struct_2(2147483647i, func_2().a.x);
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(global1.a - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1110f, 594f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.a.x, global2[_wgslsmith_index_u32(u_input.a, 9u)]), vec2<f32>(790f, global2[_wgslsmith_index_u32(1u, 9u)]))), !vec2<bool>(var_0, var_0))))), ~global1.b);
    return Struct_2(~(-var_2.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-623f)))), -742f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 9>();
    let var_0 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.c.xy, vec2<i32>(-1i, _wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.c.zz), ~u_input.c.zy))), u_input.c.x);
    var var_1 = !(-1i <= u_input.b);
    global1 = Struct_1(global1.a, global1.b << (reverseBits(global1.b) % vec3<u32>(32u)));
    var var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -308f), -694f, global2[_wgslsmith_index_u32(((1u ^ u_input.a) << (~4294967295u % 32u)) ^ ~1u, 9u)]), vec3<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(38402u, global1.b.x, u_input.a), vec3<u32>(u_input.d, global1.b.x, 8645u)), vec3<u32>(41963u, u_input.a, 32315u)), 0u, reverseBits(global1.b.x)), -u_input.c.zx);
}

