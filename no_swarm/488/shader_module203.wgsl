struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: bool,
    e: bool,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22>;

var<private> global1: array<Struct_5, 22>;

var<private> global2: array<vec4<i32>, 22>;

var<private> global3: array<Struct_4, 25>;

var<private> global4: vec3<u32> = vec3<u32>(4294967295u, 0u, 11601u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<bool>, arg_1: bool) -> u32 {
    let var_0 = firstTrailingBit(abs(~(~2398u))) < abs(u_input.e.x);
    var var_1 = global1[_wgslsmith_index_u32(0u, 22u)];
    var var_2 = 0u;
    let var_3 = vec3<bool>(any(!arg_0.zzz), arg_1, var_0);
    let var_4 = Struct_2(vec4<u32>(0u, ~global4.x << ((18356u >> (~4294967295u % 32u)) % 32u), var_1.b.a.x, ~u_input.a >> (~u_input.e.x % 32u)));
    return ~var_1.c;
}

fn func_3(arg_0: vec3<i32>) -> vec3<bool> {
    global3 = array<Struct_4, 25>();
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1408f, global0[_wgslsmith_index_u32(global4.x, 22u)], global0[_wgslsmith_index_u32(69916u, 22u)]) * vec3<f32>(1000f, global0[_wgslsmith_index_u32(u_input.a, 22u)], -2235f))))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(u_input.e.x, 22u)], global0[_wgslsmith_index_u32(global4.x, 22u)], global0[_wgslsmith_index_u32(27103u, 22u)]), vec3<f32>(global0[_wgslsmith_index_u32(global4.x, 22u)], global0[_wgslsmith_index_u32(1u, 22u)], 1369f), vec3<bool>(true, true, false)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1209f, global0[_wgslsmith_index_u32(1u, 22u)], -1103f))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 22u)], -266f, 288f)))))))));
    var var_1 = global1[_wgslsmith_index_u32(global4.x, 22u)];
    global2 = array<vec4<i32>, 22>();
    global1 = array<Struct_5, 22>();
    return vec3<bool>(true, false, false);
}

fn func_1(arg_0: vec4<u32>) -> vec3<bool> {
    global4 = firstLeadingBit(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, ~14753u, _wgslsmith_clamp_u32(61544u, 114324u, 0u)), vec3<u32>(global4.x, u_input.d, 6963u) | arg_0.wwz)));
    global0 = array<f32, 22>();
    global4 = reverseBits(select(reverseBits(vec3<u32>(u_input.a, global4.x, func_2(vec4<bool>(true, true, true, false), false))), arg_0.yzy, select(!func_3(vec3<i32>(u_input.c, 0i, -1i)), vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    let var_0 = abs((u_input.e & ~vec2<u32>(32050u, global4.x)) << (vec2<u32>(abs(~arg_0.x), 4294967295u) % vec2<u32>(32u)));
    var var_1 = arg_0.x;
    return !vec3<bool>(true, select(false, !(global0[_wgslsmith_index_u32(var_0.x, 22u)] > global0[_wgslsmith_index_u32(19875u, 22u)]), all(vec3<bool>(true, true, true))), ((global0[_wgslsmith_index_u32(14137u, 22u)] <= -456f) && true) | (u_input.b > (u_input.b & u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_4, 25>();
    var var_0 = ~vec3<i32>(-2147483647i, 1i, 40199i);
    global1 = array<Struct_5, 22>();
    let var_1 = vec4<bool>(!any(func_1(vec4<u32>(u_input.d, global4.x, 33127u, 53495u))), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(countOneBits(global4.x) >> ((global4.x | 3847u) % 32u), 22u)])) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(global4.x, 22u)], 1597f))))), ~var_0.x <= u_input.c, func_3(vec3<i32>(var_0.x, countOneBits(0i), ~(-28658i))).x & true);
    global2 = array<vec4<i32>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec4<u32>(abs(u_input.e.x), _wgslsmith_sub_u32(global4.x, 4294967295u) | _wgslsmith_div_u32(1u, u_input.e.x), global4.x, ~(u_input.d | 4294967295u))), u_input.b);
}

