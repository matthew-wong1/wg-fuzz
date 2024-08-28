struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21>;

var<private> global1: i32 = i32(-2147483648);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: bool) -> vec3<u32> {
    global1 = ~(-64661i);
    var var_0 = -_wgslsmith_dot_vec2_i32(vec2<i32>(-10548i, 0i), firstTrailingBit(vec2<i32>(2147483647i, -9069i))) >> (4294967295u % 32u);
    let var_1 = select(!vec2<bool>(true, arg_1), select(select(select(!vec2<bool>(true, arg_1), select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, arg_1), arg_1), 1u != u_input.a), vec2<bool>(select(false, arg_1, arg_1), arg_1), true), !select(vec2<bool>(true, arg_1), vec2<bool>(true, true), u_input.a == u_input.a), vec2<bool>(all(vec3<bool>(arg_1, arg_1, false)), arg_1)), vec2<bool>(true, any(vec3<bool>(true, arg_1, all(vec3<bool>(false, arg_1, arg_1))))));
    let var_2 = _wgslsmith_f_op_f32(trunc(-1357f));
    let var_3 = false;
    return ~(~countOneBits(firstTrailingBit(vec3<u32>(72939u, u_input.a, arg_0)) ^ max(vec3<u32>(1u, u_input.a, 17041u), vec3<u32>(u_input.a, u_input.a, 4294967295u))));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: i32) -> bool {
    let var_0 = _wgslsmith_add_vec3_u32(select(~vec3<u32>(u_input.a, u_input.a, u_input.a & u_input.a), select(~func_3(57842u, false), _wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(u_input.a, u_input.a, 47679u)), vec3<u32>(0u, 4294967295u, u_input.a) & vec3<u32>(3558u, 67538u, u_input.a)), !any(vec2<bool>(false, false))), arg_0 <= _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-1i, arg_0, arg_3)), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_3, -19662i, arg_3), vec3<i32>(arg_0, arg_3, -3218i)))), countOneBits(vec3<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(20364u, u_input.a), vec2<u32>(u_input.a, u_input.a)), u_input.a)) << ((vec3<u32>(u_input.a, u_input.a << (27739u % 32u), 0u) >> ((vec3<u32>(1u, 5277u, u_input.a) << (select(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(4294967295u, 64014u, 4294967295u), true) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(step(325f, global0[_wgslsmith_index_u32(u_input.a, 21u)])));
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: u32, arg_3: vec2<u32>) -> Struct_1 {
    global0 = array<f32, 21>();
    var var_0 = global0[_wgslsmith_index_u32(3315u, 21u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(291f + global0[_wgslsmith_index_u32(arg_2, 21u)]))))));
    var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-726f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(4294967295u, 21u)], -1866f, true)) + -2523f)), var_1.x) * vec2<f32>(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(f32(-1f) * -2077f)), _wgslsmith_f_op_f32(-arg_0.a)));
    var var_2 = vec4<f32>(_wgslsmith_div_f32(-1000f, 493f), _wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a, var_1.x) + -124f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))))), 496f);
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec3<i32> {
    let var_0 = func_4(arg_0, vec3<bool>(false, !(func_2(11834i, -662f, Struct_1(770f), 71876i) || select(false, true, true)), ~countOneBits(50377i) < _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-1750i, 42592i, 61289i, 0i)), vec4<i32>(1i, 0i, 14041i, 13642i) >> (vec4<u32>(19769u, u_input.a, u_input.a, 44673u) % vec4<u32>(32u)))), u_input.a, _wgslsmith_sub_vec2_u32(func_3(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), vec4<u32>(u_input.a, u_input.a, 10954u, 1u)), false).yy, abs(~select(vec2<u32>(0u, u_input.a), vec2<u32>(1u, u_input.a), vec2<bool>(false, true)))));
    global0 = array<f32, 21>();
    let var_1 = countOneBits(vec3<i32>(_wgslsmith_mod_i32(12623i, ~2147483647i) << (_wgslsmith_div_u32(~u_input.a, u_input.a >> (46473u % 32u)) % 32u), firstTrailingBit(-_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 19658i), vec2<i32>(11224i, -34227i))), -_wgslsmith_add_i32(1i, -24571i)));
    let var_2 = var_0;
    let var_3 = var_2;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(max(u_input.a, u_input.a), 21u)] + _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.a, 21u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 21u)])))) - _wgslsmith_f_op_f32(min(150f, global0[_wgslsmith_index_u32(u_input.a, 21u)]))), _wgslsmith_f_op_f32(step(635f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-791f, global0[_wgslsmith_index_u32(0u, 21u)], false)))))))));
    global0 = array<f32, 21>();
    var var_1 = -6033i;
    var var_2 = all(!select(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, u_input.a <= 1u, true), vec3<bool>(u_input.a < u_input.a, true, false)));
    let var_3 = countOneBits(~(~min(vec3<i32>(0i, -40090i, 2892i), vec3<i32>(2147483647i, 35949i, -32551i)))) | ~(~(vec3<i32>(-2147483647i, 1i, 0i) | func_1(Struct_1(global0[_wgslsmith_index_u32(29078u, 21u)]), Struct_1(-658f))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(602f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(u_input.a, 21u)])) - _wgslsmith_div_f32(692f, global0[_wgslsmith_index_u32(49734u, 21u)]))), false)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(func_4(Struct_1(-755f), vec3<bool>(true, false, false), u_input.a, vec2<u32>(u_input.a, 26488u)).a)), -2864f, ~0u != u_input.a)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(countOneBits(33352u) ^ firstTrailingBit(0u), ~_wgslsmith_mult_u32(u_input.a, 4294967295u)), 21u)]));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1312f, 687f), global0[_wgslsmith_index_u32(43245u, 21u)])), global0[_wgslsmith_index_u32(77388u, 21u)]));
    global0 = array<f32, 21>();
    var var_5 = Struct_1(var_4);
    let x = u_input.a;
    s_output = StorageBuffer(max(vec2<i32>(-var_3.x >> (u_input.a % 32u), ~func_1(Struct_1(-1000f), Struct_1(-1000f)).x), func_1(func_4(Struct_1(-511f), vec3<bool>(true, true, true), 4294967295u << (u_input.a % 32u), ~vec2<u32>(u_input.a, u_input.a)), Struct_1(_wgslsmith_f_op_f32(var_5.a + global0[_wgslsmith_index_u32(u_input.a, 21u)]))).yz), 122859u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0[_wgslsmith_index_u32(78049u, 21u)], var_5.a, var_4)))), vec3<f32>(937f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(0u, 21u)])))), -1075f)));
}

