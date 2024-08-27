struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: bool,
    d: u32,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: i32,
    d: Struct_3,
    e: vec3<i32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 22>;

var<private> global1: array<u32, 26>;

var<private> global2: array<Struct_3, 7>;

var<private> global3: array<Struct_1, 29>;

var<private> global4: Struct_3 = Struct_3(0u, 811f, false, 12997u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> i32 {
    return 1i;
}

fn func_3() -> vec3<u32> {
    global1 = array<u32, 26>();
    let var_0 = global0[_wgslsmith_index_u32(~89751u, 22u)];
    global2 = array<Struct_3, 7>();
    global0 = array<vec2<bool>, 22>();
    global4 = global2[_wgslsmith_index_u32(firstTrailingBit(abs(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(global4.a, 26u)], global1[_wgslsmith_index_u32(4294967295u, 26u)])) << ((global1[_wgslsmith_index_u32(1u, 26u)] >> (~38838u % 32u)) % 32u)) >> (_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(~min(911u, 40010u) & abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(32215u, 26u)], 26u)] & global1[_wgslsmith_index_u32(global4.d, 26u)]), 26u)], 1u) % 32u), 7u)];
    return countOneBits(_wgslsmith_add_vec3_u32(abs(max(reverseBits(vec3<u32>(14984u, global4.d, global1[_wgslsmith_index_u32(4294967295u, 26u)])), ~vec3<u32>(global1[_wgslsmith_index_u32(3403u, 26u)], 1u, global4.a))), ~select(vec3<u32>(1u, 10973u, 0u), vec3<u32>(global1[_wgslsmith_index_u32(77409u, 26u)], global4.d, 0u), var_0.x)));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: vec3<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(2054f, arg_0))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-897f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1138f, arg_0)) * -549f))));
    let var_1 = 0u;
    let var_2 = Struct_2(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(abs(global4.a | arg_2) << (abs(~_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global4.a, 26u)], global1[_wgslsmith_index_u32(4294967295u, 26u)])) % 32u), 26u)], 29u)], func_3());
    global1 = array<u32, 26>();
    global0 = array<vec2<bool>, 22>();
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(294f)) - 373f);
    var var_1 = vec2<i32>(abs(_wgslsmith_mod_i32(func_1(vec2<i32>(-2147483647i, u_input.a.x), global4.c, global3[_wgslsmith_index_u32(0u, 29u)], 130f) ^ u_input.a.x, _wgslsmith_div_i32(func_2(-2046f, -43793i, global1[_wgslsmith_index_u32(19167u, 26u)], vec3<bool>(global4.c, false, global4.c)), abs(-2147483647i)))), func_1(~vec2<i32>(-168i, -49044i), global4.a <= 0u, Struct_1(_wgslsmith_dot_vec2_i32(u_input.b.zz, vec2<i32>(u_input.a.x, u_input.b.x)), false, min(vec3<i32>(u_input.b.x, u_input.a.x, u_input.b.x), vec3<i32>(0i, u_input.c, u_input.b.x))), -309f) & select(0i, 0i, !any(vec3<bool>(false, false, global4.c))));
    let var_2 = vec3<f32>(global4.b, global4.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(878f - 165f) + 205f)))));
    let var_3 = Struct_5(1u);
    var var_4 = true;
    var var_5 = Struct_2(global3[_wgslsmith_index_u32(max(4294967295u, global1[_wgslsmith_index_u32(~29784u, 26u)]), 29u)], vec3<u32>(var_3.a, _wgslsmith_sub_u32(global4.a | 4294967295u, 0u), var_3.a | var_3.a) & vec3<u32>(1u, global1[_wgslsmith_index_u32(min(~13691u, 1u), 26u)], ~global4.d));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_5.b.x >> (~select(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_3.a, 26u)], 26u)], 80185u, var_5.a.b) % 32u), global1[_wgslsmith_index_u32(var_5.b.x, 26u)]));
}

