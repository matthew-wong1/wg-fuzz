struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: vec2<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> bool {
    let var_0 = Struct_1(min(_wgslsmith_dot_vec2_i32(reverseBits(u_input.c), max(~u_input.d.yx, vec2<i32>(arg_0.a, 1i))), _wgslsmith_add_i32(arg_0.a, -abs(-13841i))), arg_0.b, -2147483647i >= abs(_wgslsmith_dot_vec4_i32(~u_input.d, u_input.d | vec4<i32>(1i, 0i, arg_0.a, u_input.d.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.d, arg_1.d), arg_1.d) + arg_0.d), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d)))))));
    let var_1 = vec2<u32>(40659u | _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, u_input.b), ~vec2<u32>(u_input.b, 54924u) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(14809u, 0u)) % vec2<u32>(32u))), _wgslsmith_div_u32(firstTrailingBit(u_input.b), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 99u, 31226u, 1u) & vec4<u32>(u_input.b, 4294967295u, u_input.b, 1u), vec4<u32>(u_input.b, 0u, u_input.b, u_input.b))));
    var var_2 = Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(arg_0.a, var_0.a, arg_0.a), u_input.d.zxx), _wgslsmith_mult_vec3_i32(vec3<i32>(28758i, -1i, arg_0.a), u_input.d.xwy)), max(~(~vec3<i32>(-1i, 61435i, -4126i)), ~firstTrailingBit(u_input.d.wzz))), false, arg_1.c || (~u_input.b >= _wgslsmith_div_u32(1u, select(4294967295u, var_1.x, arg_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_3)) - 410f))));
    let var_3 = Struct_1(arg_1.a, true, all(select(select(select(vec4<bool>(false, var_2.b, false, true), vec4<bool>(arg_0.b, true, false, arg_0.b), var_2.c), vec4<bool>(var_2.b, false, false, arg_0.c), select(vec4<bool>(var_0.c, var_2.c, arg_2.b, false), vec4<bool>(arg_2.c, arg_1.b, false, arg_0.b), vec4<bool>(true, true, arg_2.b, false))), !select(vec4<bool>(var_0.b, true, var_0.b, true), vec4<bool>(arg_2.b, arg_0.b, arg_0.c, false), vec4<bool>(var_0.c, false, arg_1.b, var_2.b)), any(vec3<bool>(false, true, var_2.c)))), arg_2.d);
    var var_4 = var_2.d;
    return true;
}

fn func_2() -> u32 {
    var var_0 = Struct_1(~_wgslsmith_dot_vec4_i32(u_input.d, u_input.d), !(firstTrailingBit(~u_input.a) <= _wgslsmith_dot_vec4_i32(u_input.d | u_input.d, countOneBits(u_input.d))), all(vec4<bool>(func_3(Struct_1(-1072i, false, true, global0[_wgslsmith_index_u32(u_input.b, 31u)]), Struct_1(39018i, false, false, 1000f), Struct_1(u_input.c.x, true, true, 1093f), global0[_wgslsmith_index_u32(4294967295u, 31u)]) && true, true, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 31u)]) <= _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 31u)]), -392f <= _wgslsmith_div_f32(global0[_wgslsmith_index_u32(53154u, 31u)], 1003f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(336f, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, u_input.b), 31u)])) + 485f));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 160f);
    var var_2 = Struct_1(1i >> ((~4294967295u & ~u_input.b) % 32u), any(select(!(!vec3<bool>(var_0.c, var_0.c, var_0.b)), select(vec3<bool>(var_0.b, false, false), !vec3<bool>(var_0.c, var_0.b, true), true), vec3<bool>(true, true, true))), -_wgslsmith_add_i32(u_input.d.x, -1i) <= _wgslsmith_dot_vec2_i32(u_input.d.zz, _wgslsmith_mod_vec2_i32(vec2<i32>(1485i, -1i), vec2<i32>(45396i, -62980i)) ^ u_input.d.wx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(511f, -1231f))) * -135f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.d)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-695f, var_2.d, -1325f, var_2.d)))))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(var_2.d + 1000f), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.b, 31u)])), _wgslsmith_f_op_f32(min(var_2.d, var_2.d)), -2014f)))))));
    var var_4 = -_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -(-1i ^ var_2.a)), _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.d.wx ^ u_input.d.yw, u_input.d.wy), u_input.c | u_input.d.wx, _wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.c.x, var_0.a), vec2<i32>(u_input.d.x, var_2.a))));
    return ~u_input.b;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: f32, arg_3: u32) -> vec4<i32> {
    var var_0 = Struct_1(u_input.a, !any(!vec3<bool>(false, true, arg_1)), select(true || arg_1, any(select(vec2<bool>(arg_1, false), select(vec2<bool>(arg_1, true), vec2<bool>(true, true), arg_1), false || arg_1)), any(vec3<bool>(!arg_1, !arg_1, arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2)) + 567f));
    var_0 = Struct_1(var_0.a, !(~1u != arg_0), arg_1, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 31u)], 1500f));
    global0 = array<f32, 31>();
    var var_1 = Struct_1(0i, true, any(select(vec4<bool>(var_0.b & var_0.b, false, var_0.b && arg_1, true), !vec4<bool>(true, arg_1, arg_1, false), !vec4<bool>(false, false, arg_1, var_0.c))), global0[_wgslsmith_index_u32(~(~(~arg_0 ^ 4294967295u)), 31u)]);
    var var_2 = vec2<bool>(all(select(vec2<bool>(true, var_1.a > -7059i), select(!vec2<bool>(arg_1, var_1.b), !vec2<bool>(var_0.c, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, arg_1))), any(select(vec4<bool>(var_1.b, false, var_0.c, arg_1), vec4<bool>(true, arg_1, var_1.c, false), true)))), var_1.b);
    return u_input.d;
}

fn func_5(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: vec4<i32>, arg_3: u32) -> Struct_1 {
    return Struct_1(-50601i << (u_input.b % 32u), any(!select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), false), vec4<bool>(true, true, true, true), all(vec2<bool>(false, false)))), !(22988u < (_wgslsmith_clamp_u32(arg_3, 1u, u_input.b) >> (~arg_3 % 32u))), _wgslsmith_div_f32(-695f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.b, 31u)], 1535f))) * -633f)));
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = array<f32, 31>();
    global0 = array<f32, 31>();
    global0 = array<f32, 31>();
    global0 = array<f32, 31>();
    global0 = array<f32, 31>();
    return arg_2;
}

fn func_1() -> vec4<bool> {
    var var_0 = func_6(any(vec4<bool>(!all(vec2<bool>(true, false)), any(vec2<bool>(true, true)), true, (283f > global0[_wgslsmith_index_u32(1u, 31u)]) != all(vec2<bool>(false, true)))), Struct_1(reverseBits(-2147483647i), true, false, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.b, 31u)])), func_5(func_4(func_2(), all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false))), -781f, 56322u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1964f, global0[_wgslsmith_index_u32(0u, 31u)]), vec2<f32>(192f, 1461f), vec2<bool>(true, false)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(834f, 286f) * vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 31u)], global0[_wgslsmith_index_u32(u_input.b, 31u)])), vec2<f32>(1118f, global0[_wgslsmith_index_u32(u_input.b, 31u)]), vec2<bool>(false, true)))), u_input.d ^ _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.c.x, 1i, 39605i), _wgslsmith_div_vec4_i32(vec4<i32>(-26200i, u_input.d.x, -36277i, -2147483647i), u_input.d)), u_input.b));
    let var_1 = vec3<bool>(any(vec3<bool>(all(select(vec2<bool>(true, false), vec2<bool>(var_0.c, var_0.c), true)), var_0.c, true)), !any(!vec4<bool>(var_0.b, var_0.c, false, var_0.c)), var_0.c);
    global0 = array<f32, 31>();
    let var_2 = vec2<i32>(var_0.a, var_0.a) >> (reverseBits(vec2<u32>(~(85590u ^ u_input.b), u_input.b)) % vec2<u32>(32u));
    var var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(func_6(var_0.b, Struct_1(var_2.x, false, var_0.c, global0[_wgslsmith_index_u32(0u, 31u)]), Struct_1(var_2.x, var_0.c, true, var_0.d)).d, _wgslsmith_f_op_f32(-387f * global0[_wgslsmith_index_u32(35138u, 31u)])))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -422f) - -273f), var_0.d) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(72311u, 31u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(48628u, 31u)] + var_0.d))))));
    return !vec4<bool>(true, var_0.b, false, false);
}

fn func_7(arg_0: vec4<bool>) -> vec4<f32> {
    global0 = array<f32, 31>();
    var var_0 = vec2<u32>(_wgslsmith_div_u32(select(~(~u_input.b), 75906u, any(!vec4<bool>(arg_0.x, true, true, true))), ~u_input.b >> (4294967295u % 32u)), 78645u);
    var var_1 = Struct_1(-2147483647i, !arg_0.x, func_6(min(1i, func_4(u_input.b, arg_0.x, -2554f, u_input.b).x) > firstLeadingBit(2147483647i), func_6(true, func_5(firstLeadingBit(vec4<i32>(-2147483647i, u_input.a, u_input.a, -4361i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-743f, global0[_wgslsmith_index_u32(var_0.x, 31u)]) * vec2<f32>(global0[_wgslsmith_index_u32(76241u, 31u)], 341f)), _wgslsmith_sub_vec4_i32(u_input.d, vec4<i32>(2147483647i, 14127i, u_input.c.x, u_input.a)), 11743u), func_6(func_3(Struct_1(u_input.d.x, arg_0.x, true, 1674f), Struct_1(-1i, false, false, 311f), Struct_1(2147483647i, arg_0.x, arg_0.x, global0[_wgslsmith_index_u32(111556u, 31u)]), global0[_wgslsmith_index_u32(104666u, 31u)]), func_6(true, Struct_1(1499i, true, true, 2447f), Struct_1(-1i, arg_0.x, arg_0.x, global0[_wgslsmith_index_u32(19169u, 31u)])), Struct_1(u_input.c.x, false, arg_0.x, 871f))), func_5(vec4<i32>(max(-1i, -31551i), _wgslsmith_sub_i32(u_input.a, 1i), -u_input.a, 2147483647i), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], 195f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global0[_wgslsmith_index_u32(56360u, 31u)])), true || arg_0.x)), vec4<i32>(u_input.d.x, _wgslsmith_mod_i32(-1025i, 23006i), _wgslsmith_mult_i32(0i, 29283i), 1i), 0u)).b, _wgslsmith_f_op_f32(f32(-1f) * -1174f));
    var_0 = countOneBits(vec2<u32>(u_input.b ^ _wgslsmith_mod_u32(0u ^ u_input.b, 74865u), u_input.b));
    var_1 = Struct_1(reverseBits(~select(3865i, var_1.a, !arg_0.x)), any(vec2<bool>(select(var_1.c, var_1.c, false), all(arg_0.zx))) | !(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, 1u), 31u)] >= _wgslsmith_f_op_f32(-1771f + -762f)), all(vec4<bool>(false, false, arg_0.x, any(arg_0.yx))), _wgslsmith_f_op_f32(f32(-1f) * -354f));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(var_0.x, 31u)], global0[_wgslsmith_index_u32(~u_input.b, 31u)], _wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(1u, 31u)], 688f, true)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(662f, var_1.d, var_1.d, global0[_wgslsmith_index_u32(u_input.b, 31u)]) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.d, -156f, var_1.d, var_1.d)))))))) * vec4<f32>(global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.b, var_0.x), vec2<u32>(4294967295u, var_0.x), arg_0.ww), min(vec2<u32>(16625u, 1u), vec2<u32>(u_input.b, u_input.b)))), 31u)], 437f, func_6(true, Struct_1(var_1.a, arg_0.x & false, !var_1.c, _wgslsmith_f_op_f32(abs(215f))), Struct_1(_wgslsmith_mult_i32(75377i, 7497i), true, all(vec3<bool>(var_1.c, false, false)), _wgslsmith_div_f32(var_1.d, 201f))).d, 1289f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(30453u, 31u)], -685f) - vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(1u, 31u)])) + _wgslsmith_f_op_vec2_f32(vec2<f32>(959f, global0[_wgslsmith_index_u32(19389u, 31u)]) + vec2<f32>(global0[_wgslsmith_index_u32(0u, 31u)], 1579f))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 31u)], global0[_wgslsmith_index_u32(~u_input.b, 31u)]) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -392f)), 226f)));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-683f, var_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(248f, -464f)), vec2<bool>(true, true)))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, global0[_wgslsmith_index_u32(8884u, 31u)]) + vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(48905u, 31u)])))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(890f, 732f))))));
    var var_1 = -652f;
    var_1 = global0[_wgslsmith_index_u32(abs(abs(~1u)) ^ u_input.b, 31u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(func_7(func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -649f)), u_input.d.xz, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -1607f)), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 0u) >> (vec2<u32>(u_input.b, 82355u) % vec2<u32>(32u)), max(~vec2<u32>(u_input.b, u_input.b), abs(vec2<u32>(u_input.b, u_input.b))), ~vec2<u32>(0u, u_input.b)), ~vec2<u32>(1u | u_input.b, 0u)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x << (4294967295u % 32u), _wgslsmith_dot_vec4_i32(u_input.d, u_input.d)), u_input.c), u_input.d.x ^ (i32(-1i) * -18123i), _wgslsmith_sub_i32(func_5(vec4<i32>(-24287i, -2147483647i, u_input.a, 1i), var_2.wx, u_input.d, 25725u).a, u_input.a) | u_input.c.x));
}

