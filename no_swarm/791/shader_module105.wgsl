struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: Struct_1 = Struct_1(259f);

var<private> global2: i32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    return arg_0.x >> (~_wgslsmith_div_u32(firstTrailingBit(58871u), 31365u) % 32u);
}

fn func_2(arg_0: vec3<bool>) -> i32 {
    let var_0 = min(select(vec2<i32>(-1i, u_input.b), -abs(select(vec2<i32>(-25096i, u_input.b), vec2<i32>(u_input.b, 84240i), false)), !arg_0.x), _wgslsmith_clamp_vec2_i32(~vec2<i32>(40879i, 11732i), vec2<i32>(0i, _wgslsmith_mod_i32(27063i, u_input.b)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-3761i, u_input.b, -1i), vec3<i32>(u_input.b, -18908i, u_input.b)), firstTrailingBit(u_input.b))) ^ vec2<i32>(func_3(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(-2147483647i, 318i, u_input.b), vec3<i32>(u_input.b, -20608i, -35123i))), -44306i));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.a, _wgslsmith_f_op_f32(-global1.a), false))), global1.a, -var_0.x > (_wgslsmith_sub_i32(1i, u_input.b) | (u_input.b ^ u_input.b)))));
    global1 = Struct_1(global1.a);
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~47661u, 1u), 30u)];
    global2 = u_input.b;
    return -u_input.b;
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<i32>(func_2(vec3<bool>(true, false, true)) >> (1u % 32u), min(-(~u_input.b), 9960i));
    global1 = Struct_1(_wgslsmith_f_op_f32(-global1.a));
    global1 = Struct_1(217f);
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_mod_i32(firstLeadingBit(-2147483647i), select(u_input.b, u_input.b, true)), min(-48334i, 2147483647i), func_2(vec3<bool>(false, true, all(vec3<bool>(true, true, false)))) & _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(var_0.x, u_input.b, 39071i)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, 0i), vec3<i32>(0i, var_0.x, 15870i)), 0i ^ u_input.b, 0i)));
    global0 = array<Struct_1, 30>();
    return global0[_wgslsmith_index_u32(47012u, 30u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(483f);
    var var_1 = var_0.a;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) - var_0.a))));
    let var_2 = 621f;
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-var_2)), 1f)));
    global1 = func_1();
    let var_4 = true;
    var var_5 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1607f, _wgslsmith_f_op_f32(-var_0.a), var_4))), 309f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)), -565f);
    global1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.a.x >> ((~u_input.a.x << (~u_input.a.x % 32u)) % 32u)), _wgslsmith_f_op_f32(-var_5.x), ~reverseBits(select(vec4<i32>(u_input.b, u_input.b, -3694i, u_input.b), vec4<i32>(0i, 0i, u_input.b, u_input.b), var_4)), vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, u_input.b, u_input.b) >> (vec3<u32>(1u, u_input.a.x, 60107u) % vec3<u32>(32u)), -vec3<i32>(u_input.b, u_input.b, u_input.b)), 6495i));
}

