struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10> = array<u32, 10>(1u, 4294967295u, 54795u, 1u, 0u, 1u, 4294967295u, 20359u, 124947u, 38165u);

var<private> global1: array<Struct_1, 20>;

var<private> global2: Struct_1;

var<private> global3: array<u32, 16> = array<u32, 16>(10181u, 121446u, 1u, 0u, 4294967295u, 1u, 38470u, 4294967295u, 4294967295u, 68975u, 0u, 4294967295u, 1u, 11122u, 19982u, 44542u);

var<private> global4: array<bool, 20>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = vec4<bool>(true, !(!all(vec4<bool>(true, global4[_wgslsmith_index_u32(u_input.d, 20u)], global4[_wgslsmith_index_u32(0u, 20u)], false))), false | !global4[_wgslsmith_index_u32(~(41540u >> (0u % 32u)), 20u)], any(!vec4<bool>(false, true, global2.a != global2.a, global4[_wgslsmith_index_u32(countOneBits(global0[_wgslsmith_index_u32(u_input.b, 10u)]), 20u)])));
    let var_1 = global4[_wgslsmith_index_u32(u_input.b, 20u)];
    global4 = array<bool, 20>();
    let var_2 = abs(~min(vec3<u32>(~u_input.b, 1u & u_input.c.x, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, global3[_wgslsmith_index_u32(u_input.b, 16u)]), 10u)]), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 79049u, arg_0.x), vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 16u)], 16521u, arg_0.x) | vec3<u32>(u_input.b, 1u, u_input.b))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-arg_2.a));
    return select((_wgslsmith_div_vec3_i32(arg_1, _wgslsmith_sub_vec3_i32(arg_1, vec3<i32>(arg_1.x, arg_1.x, -41978i))) & countOneBits(arg_1)) << (~arg_0 % vec3<u32>(32u)), vec3<i32>(u_input.a, 31183i, ~((arg_1.x >> (31680u % 32u)) ^ abs(41848i))), var_3.a >= _wgslsmith_f_op_f32(241f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -729f)))));
}

fn func_2(arg_0: i32) -> vec3<f32> {
    let var_0 = select(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(select(~4294967295u, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(32131u, 4294967295u, 4294967295u), 10u)], false), 5835u, global4[_wgslsmith_index_u32(u_input.d, 20u)]), abs(~38112u)), 20u)], global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(~25199u, u_input.d, 0u, u_input.d)) & 4294967295u, 20u)], false);
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.c.xzx), vec3<u32>(~global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(reverseBits(global3[_wgslsmith_index_u32(1u, 16u)]), global0[_wgslsmith_index_u32(65047u, 10u)] << (global3[_wgslsmith_index_u32(4294967295u, 16u)] % 32u)), 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.c.zww, vec3<u32>(global3[_wgslsmith_index_u32(u_input.d, 16u)], 47176u, 0u)), 10u)] ^ _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0[_wgslsmith_index_u32(29637u, 10u)], 0u), _wgslsmith_add_vec3_u32(vec3<u32>(9915u, 0u, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2583u, 10u)], 16u)]), u_input.c.yyx)), 10u)], ~(~u_input.d))), 20u)];
    let var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global2.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.a, global2.a) - global2.a))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(2320f)), -311f))))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a - var_1.a) - _wgslsmith_f_op_f32(global2.a + var_1.a)), var_1.a, global4[_wgslsmith_index_u32(~(26530u & global0[_wgslsmith_index_u32(4294967295u, 10u)]), 20u)]))));
    let var_3 = -abs((func_3(u_input.c.zxz, vec3<i32>(u_input.a, 0i, -22314i), Struct_1(global2.a)) | reverseBits(vec3<i32>(u_input.a, arg_0, -1i))) << (~vec3<u32>(50337u, 0u, 14953u) % vec3<u32>(32u)));
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1871f + -721f), _wgslsmith_f_op_f32(round(var_2.a))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(357f, 348f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2027f - -1159f) + 834f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.a)) * _wgslsmith_f_op_f32(var_2.a * global2.a))) + var_1.a), _wgslsmith_f_op_f32(var_1.a * var_1.a));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec2<u32>) -> Struct_1 {
    global4 = array<bool, 20>();
    var var_0 = vec2<bool>(true, true);
    global1 = array<Struct_1, 20>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(global2.a, global2.a)), 740f, -1545f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-148f, 1114f, -496f)))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a - global2.a)), _wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.a + global2.a), _wgslsmith_f_op_f32(-global2.a)))) - _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_add_i32(select(-2147483647i, -1i, global4[_wgslsmith_index_u32(55056u, 20u)] | arg_1), _wgslsmith_div_i32(-37256i, u_input.a)))));
    global3 = array<u32, 16>();
    return Struct_1(_wgslsmith_f_op_f32(var_1.x * global2.a));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(-216f);
    let var_0 = global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(~((u_input.c.x >> (44876u % 32u)) | ~global3[_wgslsmith_index_u32(1u, 16u)]) ^ ~(~global0[_wgslsmith_index_u32(55253u | u_input.d, 10u)])), 10u)], 20u)];
    var var_1 = firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(~firstLeadingBit(9340u), u_input.c.x, u_input.c.x), u_input.c.zyz));
    let var_2 = global2.a;
    let var_3 = func_1(global4[_wgslsmith_index_u32(~57953u, 20u)], global4[_wgslsmith_index_u32(min(var_1.x, ~(~_wgslsmith_dot_vec3_u32(u_input.c.zwx, u_input.c.www))), 20u)], ~var_1.yx);
    var var_4 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_3.a, global2.a), -1733f), var_3.a), 108f, 838f)));
    let var_5 = countOneBits(_wgslsmith_dot_vec2_u32(~u_input.c.zy, u_input.c.yy));
    let var_6 = -1429f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~(~(~u_input.b)), u_input.d));
}

