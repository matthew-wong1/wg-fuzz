struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(29918u, 4294967295u, 1u);

var<private> global1: Struct_1 = Struct_1(vec4<f32>(-341f, -1418f, 1310f, 185f), 8101u, vec3<i32>(-1i, -31132i, 0i));

var<private> global2: array<f32, 15>;

var<private> global3: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec4<f32>(-1021f, -1000f, -1852f, -1926f), 0u, vec3<i32>(-24607i, -1437i, i32(-2147483648))), Struct_1(vec4<f32>(1000f, -2233f, -412f, 100f), 62253u, vec3<i32>(-1i, 7854i, 2147483647i)));

var<private> global4: i32 = 35553i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: bool) -> vec4<f32> {
    var var_0 = -vec4<i32>(13608i, global1.c.x, -17510i, u_input.b);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global1.a, vec4<f32>(1565f, global1.a.x, -862f, global1.a.x), arg_0))))) + _wgslsmith_f_op_vec4_f32(trunc(global1.a))));
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(903f * global1.a.x)), global1.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-372f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1416f))))), ~global0.x, vec3<i32>(u_input.b, arg_0.x, ~_wgslsmith_add_i32(_wgslsmith_div_i32(1i, u_input.b), -2147483647i)));
    global0 = ~abs(countOneBits(~vec3<u32>(var_0.b, 1u, var_0.b))) ^ reverseBits(abs(~(vec3<u32>(var_0.b, 1u, 4294967295u) >> (vec3<u32>(18984u, var_0.b, 74202u) % vec3<u32>(32u)))));
    var var_1 = global3[_wgslsmith_index_u32((15508u & ~global1.b) << (abs(global0.x) % 32u), 2u)];
    let var_2 = ~(~_wgslsmith_clamp_i32(min(reverseBits(arg_0.x), u_input.b), 1i, ~0i));
    let var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1234f + _wgslsmith_f_op_f32(var_0.a.x - var_1.a.x)) - _wgslsmith_f_op_f32(select(global1.a.x, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_0.b, 15u)] * global1.a.x), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -891f), var_0.a.x)) * _wgslsmith_f_op_vec4_f32(func_1(true)).x), var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), global1.b, ~vec3<i32>(abs(0i), i32(-1i) * -arg_0.x, 1i));
    return -1000f;
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> f32 {
    var var_0 = vec3<bool>(all(vec4<bool>(~arg_0.c.x > arg_0.c.x, any(!vec3<bool>(arg_1, arg_1, arg_1)), !(true && arg_1), false)), false, arg_1);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(global1.a)), ~4294967295u, _wgslsmith_mult_vec3_i32(vec3<i32>(select(-1i, _wgslsmith_clamp_i32(2147483647i, 28816i, global1.c.x), any(var_0.zy)), -arg_0.c.x, _wgslsmith_sub_i32(firstTrailingBit(global1.c.x), _wgslsmith_clamp_i32(-1i, arg_0.c.x, global1.c.x))), global1.c));
    var var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(1u, 15u)], arg_0.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -599f)), -1270f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.a.x)))), ~(arg_0.b & 66163u), vec3<i32>(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(39102i, -2147483647i))), global1.c.x, -20278i));
    var var_3 = 2147483647i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<i32>(1i, 1963i, u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 2>();
    global1 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(global1.b, 15u)], 327f, global2[_wgslsmith_index_u32(41127u, 15u)], global2[_wgslsmith_index_u32(global1.b, 15u)]))), _wgslsmith_f_op_vec4_f32(func_1(all(vec4<bool>(false, true, true, false))))), select(~(~global1.b), global0.x | ((global0.x << (4294967295u % 32u)) ^ global1.b), true), _wgslsmith_div_vec3_i32(vec3<i32>(-_wgslsmith_mod_i32(2147483647i, u_input.b), u_input.b, -1i), vec3<i32>(2147483647i, global1.c.x, -select(43922i, 24404i, false))));
    global2 = array<f32, 15>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(vec4<f32>(global2[_wgslsmith_index_u32(global1.b, 15u)], 1000f, -297f, global1.a.x), global1.b, vec3<i32>(1i, u_input.b, 37245i)), true)), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(global0.x, 15u)], global2[_wgslsmith_index_u32(global1.b, 15u)]), _wgslsmith_div_f32(-1871f, -1262f), global1.a.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(global1.a))))), _wgslsmith_mod_u32(global1.b, _wgslsmith_sub_u32(~0u << (global0.x % 32u), ~global1.b)), ~global1.c);
    global3 = array<Struct_1, 2>();
    var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global1.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.a) - _wgslsmith_f_op_vec4_f32(var_0.a * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1354f, global1.a.x, -2011f, global2[_wgslsmith_index_u32(global0.x, 15u)]))))), max(~(~var_0.b), ~49646u), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, _wgslsmith_sub_i32(13616i, select(55627i, -30738i, true)), ~(var_0.c.x ^ 18584i)), vec3<i32>(_wgslsmith_dot_vec2_i32(global1.c.yx, _wgslsmith_sub_vec2_i32(vec2<i32>(0i, -3168i), vec2<i32>(-40574i, 1i))), ~(-1i), global1.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-769f, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, var_0.b, 35140u, global0.x), vec4<u32>(var_0.b, 74475u, global1.b, global0.x)), vec4<u32>(global0.x, ~1u, global1.b | var_0.b, 0u)), select(max(vec4<u32>(global0.x, global1.b, global0.x, global0.x), vec4<u32>(48149u, global1.b, 4294967295u, global1.b) >> (vec4<u32>(82518u, global0.x, global0.x, var_0.b) % vec4<u32>(32u))), vec4<u32>(abs(global0.x), global1.b, reverseBits(global0.x), ~4294967295u), vec4<bool>(true, true, true, true))));
}

