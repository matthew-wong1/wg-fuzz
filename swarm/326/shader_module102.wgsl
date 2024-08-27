struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: f32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18> = array<bool, 18>(false, false, false, false, true, false, false, false, true, true, true, true, false, true, false, true, false, true);

var<private> global1: vec3<u32>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: f32) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1323f + _wgslsmith_f_op_f32(arg_0 - arg_0)))) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-383f, 110f, global0[_wgslsmith_index_u32(77543u, 18u)])), -834f));
    var var_1 = global0[_wgslsmith_index_u32(min(4294967295u, 7303u), 18u)];
    global1 = vec3<u32>(4294967295u, 1u, global1.x);
    global0 = array<bool, 18>();
    let var_2 = -104f;
    return StorageBuffer(global1.x, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1297f, _wgslsmith_f_op_f32(floor(1572f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1028f)))))));
    let var_1 = Struct_1(vec4<i32>(-1i, ~u_input.d.x, ~(-15921i), _wgslsmith_dot_vec4_i32(~(-vec4<i32>(-2147483647i, 2147483647i, -1i, u_input.b)), vec4<i32>(countOneBits(u_input.a), 1i, 0i, select(62287i, -48574i, global0[_wgslsmith_index_u32(0u, 18u)])))), countOneBits(~(vec4<i32>(u_input.d.x, u_input.a, u_input.d.x, u_input.a) | vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.d.x))) ^ _wgslsmith_mod_vec4_i32(~vec4<i32>(1i, 40996i, u_input.a, -1i), ~vec4<i32>(-4538i, 0i, u_input.a, u_input.b) & max(vec4<i32>(0i, 2147483647i, -17892i, u_input.b), vec4<i32>(u_input.a, 21123i, 1i, -2147483647i))), 1323f, u_input.e, vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(0i, u_input.d.x), -u_input.d.x), reverseBits(firstTrailingBit(u_input.a))), u_input.a, 1819i));
    var var_2 = true;
    let var_3 = true;
    var_2 = !(!(true | (_wgslsmith_sub_u32(1u, var_1.d.x) == ~u_input.e.x)));
    let x = u_input.a;
    s_output = func_1(var_0.x);
}

