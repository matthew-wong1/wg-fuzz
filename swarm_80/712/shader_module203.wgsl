struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_2, 8>;

var<private> global2: Struct_2;

var<private> global3: Struct_2;

var<private> global4: array<bool, 13>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> bool {
    var var_0 = arg_2;
    var var_1 = arg_2.b;
    let var_2 = arg_3;
    var_1 = Struct_1(any(select(select(!vec3<bool>(global3.b.a, true, false), !vec3<bool>(arg_1.a, global2.b.a, true), !var_2.b.a), select(select(vec3<bool>(var_0.b.a, var_1.a, global4[_wgslsmith_index_u32(4294967295u, 13u)]), vec3<bool>(true, arg_2.b.a, true), vec3<bool>(global3.b.a, arg_3.b.a, false)), !vec3<bool>(var_2.b.a, var_2.b.a, arg_2.b.a), all(vec3<bool>(true, var_2.b.a, false))), all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(global3.c + -198f));
    let var_3 = global3.a.x;
    return global2.b.a | true;
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(_wgslsmith_add_u32(1u, 57540u), ~global3.d)), ~4294967295u, firstTrailingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(global2.d, global0.x), countOneBits(firstTrailingBit(vec2<u32>(0u, 4294967295u))))));
    global3 = global1[_wgslsmith_index_u32(global3.d, 8u)];
    var var_1 = global1[_wgslsmith_index_u32(u_input.a, 8u)];
    let var_2 = vec3<u32>(~global2.d, 44463u, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(~1u, var_1.d & 4294967295u, 26279u)), ~vec3<u32>(0u, ~global3.d, _wgslsmith_add_u32(25756u, global0.x))));
    var var_3 = select(vec2<bool>(!(!all(vec3<bool>(global2.b.a, false, true))), func_3(_wgslsmith_f_op_f32(-var_1.b.b), var_1.b, Struct_2(var_1.a | global3.a, global2.b, -331f, _wgslsmith_sub_u32(global0.x, 51156u)), Struct_2(vec4<i32>(global3.a.x, u_input.b, 44488i, u_input.b) ^ global3.a, global2.b, _wgslsmith_f_op_f32(select(1000f, 929f, false)), min(4294967295u, var_0)))), vec2<bool>(func_3(_wgslsmith_f_op_f32(-global2.b.b), global2.b, Struct_2(vec4<i32>(u_input.b, 0i, 1i, global2.a.x), global2.b, var_1.c, 85326u), Struct_2(global2.a, Struct_1(global4[_wgslsmith_index_u32(global2.d, 13u)], global3.b.b), -1625f, _wgslsmith_mod_u32(u_input.a, 56658u))), all(vec3<bool>(global3.b.a, !var_1.b.a, true))), false);
    return ~abs(0u);
}

fn func_1(arg_0: vec3<bool>) -> vec2<u32> {
    global2 = global1[_wgslsmith_index_u32(abs(abs(~abs(4294967295u) | u_input.a)), 8u)];
    global4 = array<bool, 13>();
    let var_0 = 1u;
    let var_1 = false;
    global2 = global1[_wgslsmith_index_u32(func_2(), 8u)];
    return _wgslsmith_mult_vec2_u32(vec2<u32>(0u, ~global0.x), min(select(vec2<u32>(0u, 1u) | (vec2<u32>(0u, 19011u) & vec2<u32>(global0.x, global0.x)), select(_wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(4294967295u, global2.d)), ~vec2<u32>(global0.x, var_0), true), arg_0.yz), vec2<u32>(37185u, var_0)));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<bool>) -> Struct_1 {
    global3 = global1[_wgslsmith_index_u32(abs(~(min(~global0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 4294967295u, 0u), vec3<u32>(9955u, u_input.a, 1u))) | firstTrailingBit(0u))), 8u)];
    let var_0 = arg_1.x;
    var var_1 = global2.d;
    global3 = global1[_wgslsmith_index_u32(~global2.d, 8u)];
    global0 = arg_0;
    return global3.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i;
    var var_1 = global2.a.xzy;
    let var_2 = 0u;
    let var_3 = Struct_2(~(-(~global2.a)), global3.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1360f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -968f))))), _wgslsmith_mult_u32(~global3.d, 42191u));
    let var_4 = Struct_2(~_wgslsmith_mod_vec4_i32((vec4<i32>(var_3.a.x, u_input.b, 0i, var_1.x) | vec4<i32>(-2147483647i, u_input.b, u_input.b, var_1.x)) | -var_3.a, vec4<i32>(var_1.x, firstLeadingBit(1i), -13290i, _wgslsmith_div_i32(var_3.a.x, var_3.a.x))), func_4(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(4294967295u, 1u)), func_1(vec3<bool>(global4[_wgslsmith_index_u32(global0.x, 13u)], var_3.b.a, false)) | vec2<u32>(18472u, 4294967295u)), select(!select(vec3<bool>(true, global2.b.a, true), vec3<bool>(false, global2.b.a, global4[_wgslsmith_index_u32(global2.d, 13u)]), true), !select(vec3<bool>(true, var_3.b.a, true), vec3<bool>(true, global3.b.a, true), global3.b.a), !vec3<bool>(global3.b.a, global2.b.a, true))), var_3.c, global0.x);
    global4 = array<bool, 13>();
    var var_5 = max(~(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 94389u, var_3.d, 26898u), vec4<u32>(global3.d, var_3.d, 1u, 1u))) ^ ~((vec4<u32>(0u, 122374u, global3.d, 6529u) ^ vec4<u32>(u_input.a, 4294967295u, 30266u, 26346u)) ^ (vec4<u32>(14785u, var_4.d, 145883u, global0.x) & vec4<u32>(var_2, 1u, global3.d, var_2))), vec4<u32>(~firstTrailingBit(_wgslsmith_clamp_u32(global2.d, u_input.a, var_4.d)), var_4.d, 1u, u_input.a));
    global1 = array<Struct_2, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-103f * global2.c)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1154f - 1384f)))))), 1014f, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-351f, _wgslsmith_f_op_f32(1099f - _wgslsmith_f_op_f32(-global3.b.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.c, -362f, true)))))));
}

