struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: array<f32, 32> = array<f32, 32>(1052f, 2477f, -636f, 232f, -364f, 567f, -778f, -2197f, 2270f, 1507f, 1118f, 771f, 1516f, 1796f, -545f, 1242f, 310f, -617f, 2065f, 112f, -175f, 319f, 738f, -1000f, -429f, -880f, -111f, -621f, 981f, -943f, 600f, -324f);

var<private> global2: Struct_1;

var<private> global3: array<bool, 10> = array<bool, 10>(true, true, true, true, false, false, false, true, false, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1() -> f32 {
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(907f))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<i32>) -> vec4<bool> {
    global0 = array<Struct_1, 31>();
    global1 = array<f32, 32>();
    global3 = array<bool, 10>();
    global3 = array<bool, 10>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.d, u_input.d), _wgslsmith_dot_vec3_u32(u_input.b, abs(u_input.b))), 31u)];
    return !vec4<bool>(true, arg_1.b, false, select(true, true, false));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: bool, arg_3: u32) -> vec3<i32> {
    var var_0 = !vec4<bool>(false, any(select(vec4<bool>(true, arg_2, true, arg_2), !vec4<bool>(false, global2.b, false, false), !vec4<bool>(arg_2, true, false, true))), all(!vec4<bool>(arg_1, arg_1, arg_2, global2.b)) == !all(vec3<bool>(false, false, arg_1)), ~(~arg_3) > u_input.b.x);
    var_0 = select(vec4<bool>(!(_wgslsmith_f_op_f32(-global2.a.x) > _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 32u)])), false, true, true), select(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1493f, 310f, global2.a.x, 857f) + vec4<f32>(global2.a.x, 219f, 930f, global2.a.x))), global0[_wgslsmith_index_u32(0u, 31u)], vec2<i32>(u_input.c & u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 2147483647i, 0i), vec3<i32>(u_input.c, -2147483647i, u_input.c)))), select(select(vec4<bool>(false, global2.b, false, global3[_wgslsmith_index_u32(u_input.d, 10u)]), vec4<bool>(arg_2, true, false, false), func_3(vec4<f32>(global2.a.x, global2.a.x, global2.a.x, 430f), global0[_wgslsmith_index_u32(arg_0, 31u)], vec2<i32>(u_input.c, 13904i))), !vec4<bool>(true, global2.b, arg_2, global2.b), !vec4<bool>(global2.b, false, arg_2, arg_1)), !global2.b), !vec4<bool>(select(false, !arg_2, false), global3[_wgslsmith_index_u32(1u ^ (arg_0 ^ arg_3), 10u)], !(!global2.b), var_0.x));
    global1 = array<f32, 32>();
    var var_1 = global0[_wgslsmith_index_u32(arg_0, 31u)];
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-418f * 171f) + _wgslsmith_f_op_f32(trunc(555f))))) * _wgslsmith_f_op_f32(global2.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 32u)]))))));
    return _wgslsmith_mult_vec3_i32(select(-vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(u_input.c, u_input.c, 20975i), any(vec2<bool>(false, true))) ^ vec3<i32>(~0i, abs(u_input.c), 2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-8956i, -47958i), -u_input.c, ~0i), _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(u_input.c, -1i, -1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(-33857i, 2147483647i, -1i), vec3<i32>(u_input.c, u_input.c, u_input.c))))) | firstTrailingBit(~(~abs(vec3<i32>(2147483647i, 272i, u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(-1i);
    global0 = array<Struct_1, 31>();
    let var_1 = global1[_wgslsmith_index_u32(select(0u, u_input.d, !((global2.b && all(vec4<bool>(global2.b, true, global2.b, global2.b))) || !global3[_wgslsmith_index_u32(1u, 10u)])), 32u)];
    global3 = array<bool, 10>();
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~36909u, 32u)] - _wgslsmith_f_op_f32(func_1()))))));
    let var_3 = func_2(~(~(~u_input.b.x) << (countOneBits(u_input.a.x >> (38257u % 32u)) % 32u)), !((_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(123949u, 32u)]) != _wgslsmith_f_op_f32(select(global2.a.x, -449f, false))) | !any(vec2<bool>(false, global2.b))), any(!select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 10u)], global2.b, true, true), vec4<bool>(false, false, global2.b, global3[_wgslsmith_index_u32(22011u, 10u)]), false)) || false, ~(~u_input.a.x));
    global0 = array<Struct_1, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(select(var_3, min(_wgslsmith_clamp_vec3_i32(select(var_3, var_3, global3[_wgslsmith_index_u32(u_input.b.x, 10u)]), -var_3, ~vec3<i32>(var_3.x, 7006i, u_input.c)), ~vec3<i32>(2147483647i, -1i, var_3.x)), all(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.d, 32u)], global1[_wgslsmith_index_u32(22069u, 32u)], var_2, global2.a.x)), global0[_wgslsmith_index_u32(u_input.a.x, 31u)], var_3.zy & vec2<i32>(u_input.c, 6622i)).wx)), -232f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(182f, -319f) * global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d, u_input.d), 32u)])) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.a.x)))));
}

