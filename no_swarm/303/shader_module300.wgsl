struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<bool>,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(Struct_1(-54915i, 1145f, vec3<bool>(false, false, false), vec4<i32>(-1i, 2147483647i, -5277i, i32(-2147483648)), -1205f), Struct_2(1u, 3187u, true)), Struct_3(Struct_1(-1i, -921f, vec3<bool>(true, false, false), vec4<i32>(47430i, 12796i, 11355i, -46852i), 1856f), Struct_2(0u, 26947u, false)));

var<private> global1: bool;

var<private> global2: vec2<i32> = vec2<i32>(-62970i, -12408i);

var<private> global3: vec4<bool>;

var<private> global4: array<f32, 4> = array<f32, 4>(-1030f, -162f, -1513f, -1288f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<bool> {
    var var_0 = ~_wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-26621i, -1i, 54992i), min(vec3<i32>(u_input.a.x, global2.x, -2147483647i), vec3<i32>(0i, global2.x, 30440i))), global2.x), _wgslsmith_div_i32(38489i, 54206i), 7642i);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(2053f, -798f, false)))))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1)) - global4[_wgslsmith_index_u32(u_input.d, 4u)]) + global4[_wgslsmith_index_u32(select(1u, abs(u_input.d), var_1 < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1014f * global4[_wgslsmith_index_u32(u_input.d, 4u)]) - 906f)), 4u)]);
    global0 = array<Struct_3, 2>();
    var var_3 = ~vec2<u32>(min(firstTrailingBit(u_input.d), 37995u), _wgslsmith_clamp_u32(u_input.d, 28754u & (u_input.d | 26673u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 4294967295u, u_input.d), vec3<u32>(u_input.d, u_input.d, u_input.d))));
    return !select(!select(vec4<bool>(false, global3.x, false, true), vec4<bool>(true, global3.x, false, false), false), select(select(select(vec4<bool>(false, global3.x, true, global3.x), vec4<bool>(global3.x, true, true, global3.x), vec4<bool>(global3.x, global3.x, false, false)), vec4<bool>(global3.x, global3.x, true, global3.x), select(vec4<bool>(true, global3.x, true, false), vec4<bool>(global3.x, global3.x, global3.x, global3.x), vec4<bool>(true, true, true, global3.x))), !select(vec4<bool>(true, global3.x, global3.x, false), vec4<bool>(false, true, false, global3.x), vec4<bool>(true, false, global3.x, true)), !vec4<bool>(false, true, global3.x, true)), -global2.x != _wgslsmith_sub_i32(global2.x, global2.x ^ u_input.b));
}

fn func_2(arg_0: u32, arg_1: Struct_3) -> bool {
    global3 = func_3();
    global0 = array<Struct_3, 2>();
    var var_0 = abs(~select(_wgslsmith_mod_vec4_u32(select(vec4<u32>(30311u, arg_1.b.b, 4294967295u, 8916u), vec4<u32>(0u, u_input.d, 0u, 10623u), false), vec4<u32>(112759u, u_input.d, 1u, arg_0)), vec4<u32>(max(3008u, 14167u), _wgslsmith_dot_vec2_u32(vec2<u32>(116346u, u_input.d), vec2<u32>(u_input.d, 0u)), 1u, _wgslsmith_sub_u32(u_input.d, u_input.d)), true));
    var var_1 = arg_1.b;
    let var_2 = vec2<bool>(any(func_3().wzz), ~(i32(-1i) * -2147483647i) >= -_wgslsmith_clamp_i32(global2.x & 2147483647i, min(u_input.a.x, 1i), arg_1.a.d.x));
    return any(select(!arg_1.a.c, global3.yyy, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.a.e))) >= _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1.b.a, arg_1.b.b), 4u)])));
}

fn func_1() -> bool {
    var var_0 = !(!vec2<bool>(all(vec2<bool>(global3.x, global3.x)), func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 8627u, u_input.d, u_input.d), vec4<u32>(1u, 44169u, 1u, 4294967295u)), Struct_3(Struct_1(u_input.a.x, global4[_wgslsmith_index_u32(1u, 4u)], vec3<bool>(false, true, global3.x), vec4<i32>(u_input.c, -1i, u_input.b, 1i), global4[_wgslsmith_index_u32(u_input.d, 4u)]), Struct_2(1u, u_input.d, global3.x)))));
    global2 = ~vec2<i32>(-(~u_input.c), i32(-1i) * -_wgslsmith_clamp_i32(u_input.a.x, global2.x, u_input.c));
    global2 = vec2<i32>(global2.x, _wgslsmith_div_i32(select(_wgslsmith_clamp_i32(firstLeadingBit(2147483647i), -4304i, _wgslsmith_mult_i32(global2.x, 34477i)), 36269i, func_2(u_input.d, Struct_3(Struct_1(-2147483647i, 670f, global3.yzx, vec4<i32>(2147483647i, global2.x, global2.x, u_input.b), global4[_wgslsmith_index_u32(u_input.d, 4u)]), Struct_2(0u, 1u, false)))), _wgslsmith_mod_i32(_wgslsmith_div_i32(10007i, global2.x) | _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, u_input.c), vec3<i32>(0i, u_input.a.x, -2147483647i)), max(7739i, firstTrailingBit(global2.x)))));
    global4 = array<f32, 4>();
    let var_1 = -_wgslsmith_mod_i32(-2147483647i, -1i);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~vec2<i32>(abs(max(max(2147483647i, global2.x), max(-17285i, 11668i))), max(_wgslsmith_mod_i32(u_input.b, 0i), _wgslsmith_mod_i32(-2147483647i, 1i)));
    let var_0 = vec4<u32>(reverseBits(~u_input.d), u_input.d, u_input.d, u_input.d);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -311f) - global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, var_0.x), 4u)]))))));
    let var_2 = u_input.a.x;
    var var_3 = all(vec3<bool>(false == global3.x, global3.x, true && global3.x)) || func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(0u, 4u)])) * -1536f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(var_0.x, 4u)] - -1230f))), var_1), ~var_0.x);
}

