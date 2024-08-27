struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec2<i32>(27147i, 3489i), vec3<i32>(0i, -1i, -1i)));

var<private> global1: Struct_1 = Struct_1(vec2<i32>(1i, -30889i), vec3<i32>(-1i, 27875i, 3826i));

var<private> global2: array<vec2<i32>, 5> = array<vec2<i32>, 5>(vec2<i32>(1i, 29040i), vec2<i32>(1i, 1887i), vec2<i32>(-28765i, 2147483647i), vec2<i32>(-36813i, -66540i), vec2<i32>(-1i, -775i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = -select(~(-11803i) ^ select(2147483647i, _wgslsmith_dot_vec3_i32(arg_1.b, vec3<i32>(global1.a.x, arg_1.a.x, u_input.a)), true), global1.b.x ^ ~_wgslsmith_div_i32(-2147483647i, u_input.a), any(vec4<bool>(false, true, true, false)) || true);
    global1 = Struct_1(vec2<i32>(reverseBits(_wgslsmith_div_i32(0i, -u_input.a)), global1.a.x), _wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.a, -6984i, u_input.a), ~global1.b) ^ countOneBits(vec3<i32>(arg_1.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 33829i, global1.b.x), global1.b), firstTrailingBit(-2147483647i))));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-544f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -532f)))), -471f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-949f * -498f)))), 2146f) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-815f, -1000f, 950f, 1000f)))))));
    let var_2 = 259f;
    var var_3 = global0[_wgslsmith_index_u32(1144u, 1u)];
    return Struct_1(vec2<i32>(0i, var_3.a.x), ~(-vec3<i32>(u_input.a & arg_1.a.x, -u_input.a, u_input.a)));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: bool) -> vec4<u32> {
    global0 = array<Struct_1, 1>();
    global2 = array<vec2<i32>, 5>();
    let var_0 = select(abs(~abs(vec4<u32>(0u, u_input.b, 64605u, u_input.b))), ~(~vec4<u32>(1u, 48462u, 4294967295u, u_input.b)), arg_2) << (abs(min(_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, u_input.b, 47849u, u_input.b), abs(vec4<u32>(0u, 1u, u_input.b, 59909u))), reverseBits(countOneBits(vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b))))) % vec4<u32>(32u));
    global2 = array<vec2<i32>, 5>();
    var var_1 = false;
    return var_0;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    return ~func_3(vec2<f32>(-1529f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -668f) * _wgslsmith_f_op_f32(ceil(1303f)))), -2030f, false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    var var_0 = -262f;
    global0 = array<Struct_1, 1>();
    let var_1 = ~_wgslsmith_dot_vec4_u32(func_2(abs(vec2<u32>(1u, u_input.b)), Struct_1(vec2<i32>(37935i, 24651i), vec3<i32>(-1i, -1i, u_input.a)), func_1(vec4<u32>(0u, u_input.b, 0u, u_input.b), global0[_wgslsmith_index_u32(4294967295u, 1u)])) & _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b), vec4<u32>(39228u, 6645u, u_input.b, 3126u)), ~(~vec4<u32>(4294967295u, 66248u, 0u, 4294967295u) >> (~vec4<u32>(64278u, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u))));
    let var_2 = _wgslsmith_dot_vec3_u32(abs(_wgslsmith_div_vec3_u32(select(vec3<u32>(1u, 13902u, u_input.b), vec3<u32>(var_1, var_1, var_1), vec3<bool>(true, false, false)), vec3<u32>(u_input.b, var_1, var_1)) ^ vec3<u32>(1u, ~var_1, _wgslsmith_dot_vec2_u32(vec2<u32>(20759u, u_input.b), vec2<u32>(var_1, var_1)))), ~max(reverseBits(~vec3<u32>(var_1, 7328u, u_input.b)), max(select(vec3<u32>(u_input.b, 1u, var_1), vec3<u32>(4294967295u, var_1, 5169u), vec3<bool>(false, false, false)), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 4294967295u, var_1), vec3<u32>(var_1, u_input.b, var_1)))));
    let x = u_input.a;
    s_output = StorageBuffer(-332f, var_1, global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1490f)));
}

