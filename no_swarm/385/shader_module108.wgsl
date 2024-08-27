struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
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

var<private> global0: array<Struct_2, 11>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<f32>(1042f, -773f, 951f), 1832u, vec3<u32>(0u, 1u, 0u), 4294967295u), vec4<u32>(4294967295u, 4294967295u, 23892u, 0u), vec2<i32>(i32(-2147483648), 2147483647i), false);

var<private> global2: array<vec3<u32>, 19>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_2) -> u32 {
    let var_0 = ~global1.a.b;
    global0 = array<Struct_2, 11>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-689f, _wgslsmith_f_op_f32(ceil(312f)), global1.a.a.x)) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.a.a + vec3<f32>(arg_2.a.a.x, -631f, -634f)))))), reverseBits(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, var_0) >> (arg_2.b.wy % vec2<u32>(32u)), min(vec2<u32>(global1.a.d, global1.b.x), vec2<u32>(var_0, 4294967295u))))), ~vec3<u32>(19131u, u_input.b, ~1u), abs(_wgslsmith_dot_vec4_u32(~max(arg_2.b, arg_2.b), global1.b)));
    let var_2 = global1.c.x;
    let var_3 = -1025f;
    return global1.a.b;
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_2, 11>();
    global2 = array<vec3<u32>, 19>();
    var var_0 = u_input.a.x;
    let var_1 = reverseBits(vec2<u32>(min(0u, global1.b.x & 4294967295u), global1.b.x) | ~(~vec2<u32>(global1.b.x, u_input.b)));
    var var_2 = -1i;
    return global1.a;
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> u32 {
    global1 = global0[_wgslsmith_index_u32(global1.b.x, 11u)];
    let var_0 = 2147483647i;
    var var_1 = _wgslsmith_f_op_f32(-arg_1.a.x);
    let var_2 = abs(global1.b);
    return ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(235f, global1.a.a.x, _wgslsmith_f_op_f32(round(1343f)))))), func_1(!global1.d, vec2<bool>((false & global1.d) == (-1653f == global1.a.a.x), all(select(vec4<bool>(true, false, true, global1.d), vec4<bool>(false, global1.d, false, true), true))), global0[_wgslsmith_index_u32(~reverseBits(global1.b.x), 11u)]), vec3<u32>(abs(global1.b.x), ~u_input.b, _wgslsmith_add_u32(max(0u, u_input.b), reverseBits(27745u))), func_3(-1014f, func_2()));
    global0 = array<Struct_2, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(_wgslsmith_mult_i32(global1.c.x, _wgslsmith_mod_i32(-68144i, -2147483647i)), firstLeadingBit(_wgslsmith_div_i32(u_input.a.x, 33112i))));
}

