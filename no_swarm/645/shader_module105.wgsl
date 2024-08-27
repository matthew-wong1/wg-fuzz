struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16>;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, false, false), false);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: u32) -> u32 {
    var var_0 = Struct_1(arg_2.a, global1.a.x);
    var_0 = arg_2;
    var var_1 = arg_2;
    var_0 = Struct_1(var_1.a, global1.a.x);
    var var_2 = -17053i;
    return arg_3;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: vec4<u32>, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~arg_2.x, func_3(countOneBits(vec4<u32>(arg_2.x, 75677u, ~arg_2.x, 96458u)), ~vec3<u32>(18754u, ~13734u, arg_2.x), arg_3, arg_2.x)), 16u)];
    var var_1 = arg_2.x;
    let var_2 = Struct_1(select(vec3<bool>(arg_1.x, _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(arg_2.x, 16u)])) > _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_2.x, 16u)]), false), vec3<bool>(!(global0[_wgslsmith_index_u32(arg_2.x, 16u)] < -460f), true, select(true, arg_3.a.x, true | arg_1.x)), select(!select(vec3<bool>(true, true, false), arg_3.a, global1.a.x), select(vec3<bool>(false, true, arg_3.b), arg_3.a, global1.a.x || false), !select(arg_1.zzz, arg_3.a, true))), any(!vec2<bool>(true, arg_3.b)));
    let var_3 = arg_2.x;
    var var_4 = _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(0u, 16u)]));
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(1u, 16u)], -1955f, 1099f) - vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)], 282f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(var_3, 16u)], global0[_wgslsmith_index_u32(arg_2.x, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)])))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(var_3, 16u)], -1380f, global0[_wgslsmith_index_u32(var_3, 16u)]) - vec3<f32>(global0[_wgslsmith_index_u32(var_3, 16u)], global0[_wgslsmith_index_u32(arg_2.x, 16u)], -452f)), vec3<f32>(global0[_wgslsmith_index_u32(45644u, 16u)], global0[_wgslsmith_index_u32(2198u, 16u)], -532f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(arg_2.x, 16u)], _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(var_3, 16u)], global0[_wgslsmith_index_u32(arg_2.x, 16u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(30906u, 16u)]))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(824f, global0[_wgslsmith_index_u32(~arg_2.x, 16u)], global0[_wgslsmith_index_u32(max(var_3, 42761u), 16u)])))), vec3<bool>(!any(!arg_3.a), true, true)));
}

fn func_2(arg_0: i32, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_1(global1.a, global1.b);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(firstTrailingBit(18877u), 16u)] * global0[_wgslsmith_index_u32(4294967295u, 16u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 16u)] * global0[_wgslsmith_index_u32(1725u, 16u)]), _wgslsmith_f_op_f32(sign(-685f))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1578f, -2311f))))) - _wgslsmith_f_op_vec3_f32(func_4(~_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, u_input.d, arg_0, u_input.d), vec4<i32>(-79869i, -29486i, arg_1.x, arg_1.x)), -vec4<i32>(u_input.c, 5154i, 48273i, 36172i)), select(!select(vec4<bool>(false, var_0.b, false, false), vec4<bool>(false, var_0.b, var_0.a.x, true), vec4<bool>(false, var_0.a.x, var_0.b, var_0.a.x)), select(vec4<bool>(global1.a.x, var_0.a.x, false, global1.b), vec4<bool>(true, false, false, false), true), select(!vec4<bool>(var_0.a.x, global1.b, global1.a.x, false), vec4<bool>(global1.b, false, global1.b, global1.a.x), true)), vec4<u32>(47777u, ~1u, func_3(vec4<u32>(1u, 35302u, 20281u, 4294967295u), vec3<u32>(4294967295u, 0u, 36241u), var_0, 42861u), reverseBits(31626u)) << (~(~vec4<u32>(4294967295u, 17193u, 129451u, 1u)) % vec4<u32>(32u)), var_0)));
    let var_2 = var_0;
    var var_3 = Struct_1(!select(vec3<bool>(true, !var_0.b, true), select(!vec3<bool>(false, global1.a.x, true), select(vec3<bool>(false, false, true), global1.a, false), global1.a), !(!var_2.a)), true);
    var_3 = var_2;
    return Struct_1(select(vec3<bool>(true, abs(arg_0) == -1i, (arg_1.x ^ -41673i) >= abs(-2675i)), vec3<bool>(all(select(vec3<bool>(false, global1.a.x, global1.b), var_0.a, true)), false, any(vec3<bool>(false, var_0.b, global1.a.x)) & true), vec3<bool>(var_3.b, false, true)), !(!any(!vec4<bool>(true, false, var_3.a.x, true))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global1 = Struct_1(select(!func_2(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 29756i), vec2<i32>(1i, -15758i)), -vec3<i32>(u_input.a, -1i, u_input.d)).a, vec3<bool>(true, true, true), arg_2.a), false);
    var var_0 = ~102868u;
    var var_1 = vec3<i32>(u_input.c, -16356i, u_input.a) | vec3<i32>(_wgslsmith_sub_i32(i32(-1i) * -19650i, u_input.a) ^ _wgslsmith_dot_vec3_i32(-vec3<i32>(-44203i, u_input.a, -50303i), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, 17344i, u_input.c), vec3<i32>(u_input.b, -45138i, -1i))), ~(~u_input.d) & -2147483647i, firstLeadingBit(9996i));
    global1 = arg_0;
    var_0 = abs(~21647u);
    return Struct_1(global1.a, true);
}

fn func_1(arg_0: f32) -> Struct_1 {
    return func_5(func_2(i32(-1i) * -2545i, _wgslsmith_mult_vec3_i32(select(vec3<i32>(28890i, u_input.d, -55464i), vec3<i32>(1i, u_input.b, u_input.b), any(vec4<bool>(false, true, global1.b, global1.b))), ~vec3<i32>(u_input.a, u_input.a, 23839i))), Struct_1(select(vec3<bool>(true, global1.a.x, global1.b), vec3<bool>(true, select(global1.b, global1.a.x, global1.b), global1.a.x), all(vec3<bool>(global1.b, global1.a.x, false))), global1.b), func_2(-1i ^ u_input.a, vec3<i32>(abs(-1i), 2147483647i, _wgslsmith_mod_i32(u_input.d, firstTrailingBit(-1i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(1069f);
    global1 = Struct_1(func_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(~18932u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)])))).a, !(!global1.b));
    var var_1 = u_input.a;
    global0 = array<f32, 16>();
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(0u, 0u), ~4294967295u, 1u), ~(~vec3<u32>(4294967295u, 33771u, 13272u))), 16u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_4(vec4<i32>(u_input.d, u_input.c, u_input.a, -5407i) >> (vec4<u32>(36751u, 4294967295u, 70748u, 50051u) % vec4<u32>(32u)), !vec4<bool>(false, var_0.b, var_0.a.x, true), vec4<u32>(1u, 1u, 1u, 1u), func_5(Struct_1(vec3<bool>(true, global1.b, true), false), var_0, var_0))).x + global0[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(0u), _wgslsmith_sub_u32(4294967295u, 75836u)), 16u)]), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(51033u, 16u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.c, _wgslsmith_mod_i32(1i, -55133i) | (u_input.b | -25497i), countOneBits(-2147483647i)), vec4<i32>(1i, 17548i, 21973i, u_input.a)), ~vec4<u32>(func_3(min(vec4<u32>(50540u, 37885u, 71019u, 19684u), vec4<u32>(25457u, 39811u, 4294967295u, 3415u)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(1u, 0u, 0u)), Struct_1(vec3<bool>(var_0.b, true, var_0.b), false), _wgslsmith_clamp_u32(1u, 0u, 12951u)), select(1u, ~40124u, global1.a.x), 0u, _wgslsmith_sub_u32(~42425u, 72008u)), min(u_input.a, firstTrailingBit(reverseBits(u_input.c)) & (i32(-1i) * -14143i)));
}

