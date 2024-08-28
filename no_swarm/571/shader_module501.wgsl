struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: f32,
    d: vec4<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<bool, 4>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = vec4<i32>(i32(-1i) * -global0.e.b.x, max(-u_input.d.x, 2147483647i >> (global0.a.a.x % 32u)) << (25820u % 32u), u_input.b.x, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_div_i32(u_input.e.x, -12935i), ~1i, -45273i), u_input.c.yxw), global0.e.b ^ abs(vec3<i32>(-6163i, 93485i, u_input.e.x))));
    var var_1 = ~(~((global0.a.a.x | 1u) ^ ~(global0.a.a.x & 123358u)));
    global1 = array<bool, 4>();
    var var_2 = global0.e;
    var_2 = Struct_2(global0.a, vec3<i32>(-2147483647i, var_2.b.x, ~min(global0.e.b.x, 51043i) ^ _wgslsmith_clamp_i32(var_2.b.x, _wgslsmith_sub_i32(0i, var_0.x), global0.e.b.x)), global0.e.c, var_2.c, ~var_2.e);
    return _wgslsmith_f_op_f32(-global0.b.x);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec3<bool>, arg_3: bool) -> u32 {
    global1 = array<bool, 4>();
    let var_0 = Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(20873u, _wgslsmith_dot_vec4_u32(~arg_1, arg_1)), vec2<u32>(~abs(45925u), global0.a.a.x)), -(i32(-1i) * -global0.e.b.x) > arg_0.b.x);
    global1 = array<bool, 4>();
    global0 = Struct_4(var_0, vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(select(1003f, _wgslsmith_f_op_f32(-global0.c), global0.e.a.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x * _wgslsmith_f_op_f32(f32(-1f) * -585f)) + _wgslsmith_f_op_f32(-global0.b.x))), global0.d, Struct_2(global0.a, global0.e.b, Struct_1(~(~vec2<u32>(10885u, 0u)), true & !global1[_wgslsmith_index_u32(0u, 4u)]), Struct_1(abs(vec2<u32>(4294967295u, arg_0.a.a.x) & vec2<u32>(5309u, 68440u)), all(!vec4<bool>(global0.e.a.b, false, true, arg_3))), arg_1.yzw));
    let var_1 = -1i;
    return global0.e.a.a.x;
}

fn func_4(arg_0: u32, arg_1: Struct_4) -> Struct_1 {
    let var_0 = vec3<f32>(global0.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * arg_1.c))), arg_1.d.x);
    global1 = array<bool, 4>();
    var var_1 = Struct_4(Struct_1(~arg_1.a.a, any(select(!vec4<bool>(false, false, arg_1.a.b, true), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(66203u, 4u)], global0.e.c.b, arg_1.e.c.b), true))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-364f, -160f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1359f, 1168f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d.x, arg_1.b.x) * var_0.yx))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.c, global0.b.x, arg_1.a.b))), _wgslsmith_f_op_f32(-global0.d.x)))), _wgslsmith_f_op_vec4_f32(floor(arg_1.d)), Struct_2(Struct_1(~(~vec2<u32>(global0.e.e.x, global0.e.c.a.x)), ~arg_0 <= 1u), vec3<i32>(select(_wgslsmith_div_i32(arg_1.e.b.x, arg_1.e.b.x), abs(-38866i), all(vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 4u)], true, global0.a.b))), _wgslsmith_dot_vec4_i32(-u_input.c, vec4<i32>(arg_1.e.b.x, u_input.d.x, u_input.e.x, global0.e.b.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, 0i, arg_1.e.b.x, 64899i), vec4<i32>(0i, -38797i, 1i, -2147483647i))), Struct_1(firstTrailingBit(vec2<u32>(4294967295u, arg_1.a.a.x) & vec2<u32>(11963u, 175450u)), any(vec4<bool>(false, global1[_wgslsmith_index_u32(global0.e.a.a.x, 4u)], false, global0.e.d.b))), Struct_1(_wgslsmith_mod_vec2_u32(arg_1.e.d.a, vec2<u32>(arg_1.a.a.x, global0.e.e.x)), false), (~vec3<u32>(arg_1.a.a.x, global0.a.a.x, arg_0) >> (arg_1.e.e % vec3<u32>(32u))) | vec3<u32>(1u, select(arg_0, global0.e.d.a.x, global0.a.b), _wgslsmith_div_u32(arg_1.a.a.x, 54968u))));
    let var_2 = false;
    let var_3 = global0.e.b.x;
    return Struct_1(_wgslsmith_sub_vec2_u32(~(~arg_1.e.c.a) << (vec2<u32>(_wgslsmith_mod_u32(arg_0, global0.e.a.a.x), 22331u) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(var_1.e.d.a.x, global0.a.a.x), abs(vec2<u32>(1u, 5477u) >> (global0.a.a % vec2<u32>(32u))))), all(select(vec3<bool>(any(vec2<bool>(true, false)), all(vec4<bool>(false, false, var_2, global1[_wgslsmith_index_u32(var_1.a.a.x, 4u)])), any(vec3<bool>(false, false, var_1.e.d.b))), vec3<bool>(var_1.a.b && true, false, true), arg_1.a.b)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: vec4<f32>) -> Struct_1 {
    global1 = array<bool, 4>();
    let var_0 = firstLeadingBit(vec4<u32>(global0.a.a.x, 10589u, global0.e.e.x, _wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec3_u32(global0.e.e, _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 1u, 1u), vec3<u32>(global0.a.a.x, global0.a.a.x, global0.a.a.x))))));
    var var_1 = _wgslsmith_div_vec4_u32(var_0, vec4<u32>(global0.a.a.x, 61508u, min(~9404u, 1u), 4294967295u) >> (~(~(~vec4<u32>(0u, 27181u, var_0.x, global0.e.e.x))) % vec4<u32>(32u)));
    var var_2 = abs(~(~(~vec2<u32>(global0.e.c.a.x, var_0.x))));
    var var_3 = global0.e.d.a.x;
    return func_4(countOneBits(firstTrailingBit(min(func_2(Struct_2(global0.a, vec3<i32>(u_input.d.x, 2147483647i, u_input.a.x), global0.e.a, Struct_1(vec2<u32>(9623u, 0u), false), vec3<u32>(0u, var_2.x, 83997u)), vec4<u32>(var_0.x, var_1.x, var_0.x, 0u), vec3<bool>(true, arg_1.x, global0.a.b), true), ~1u))), Struct_4(global0.a, vec2<f32>(887f, arg_0.x), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_vec4_f32(trunc(arg_2)), global0.e));
}

fn func_5(arg_0: Struct_4) -> Struct_3 {
    global0 = arg_0;
    var var_0 = reverseBits(min(_wgslsmith_clamp_vec4_i32(vec4<i32>(24350i, _wgslsmith_div_i32(36822i, u_input.c.x), global0.e.b.x, -1i), vec4<i32>(1i, -global0.e.b.x, _wgslsmith_mult_i32(u_input.e.x, u_input.e.x), reverseBits(-1i)), _wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(global0.e.b.x, u_input.e.x, u_input.d.x, arg_0.e.b.x)), u_input.c)), firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.e, u_input.c), u_input.c.x, 20459i, 29075i))));
    var var_1 = !vec4<bool>(arg_0.e.c.b, true, any(!vec3<bool>(global0.a.b, true, true)), global0.a.b);
    var var_2 = arg_0.e;
    let var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(-global0.d.wzy), Struct_2(var_2.c, _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x ^ arg_0.e.b.x, ~u_input.c.x, 0i), var_0.xxz >> (reverseBits(vec3<u32>(arg_0.e.e.x, global0.e.d.a.x, 24975u)) % vec3<u32>(32u))), Struct_1(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(global0.a.a, vec2<u32>(2748u, 1u)), arg_0.a.a | arg_0.e.e.zy), var_1.x), arg_0.e.c, vec3<u32>(global0.a.a.x, ~arg_0.a.a.x, firstTrailingBit(81749u))));
    return Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-1524f - global0.d.x), _wgslsmith_f_op_f32(f32(-1f) * -487f), global0.d.x)))), Struct_2(var_3.b.a, arg_0.e.b, var_3.b.c, Struct_1(func_4(0u, Struct_4(var_3.b.d, arg_0.b, 1475f, vec4<f32>(var_3.a.x, global0.c, -795f, -1146f), var_3.b)).a, true), countOneBits(~(vec3<u32>(global0.a.a.x, var_2.d.a.x, arg_0.a.a.x) << (vec3<u32>(4294967295u, 25681u, arg_0.a.a.x) % vec3<u32>(32u))))));
}

fn func_6(arg_0: Struct_3) -> Struct_1 {
    let var_0 = u_input.a.x;
    let var_1 = arg_0.b.a.a;
    global0 = Struct_4(func_1(vec2<f32>(1000f, _wgslsmith_f_op_f32(-arg_0.a.x)), !(!select(vec2<bool>(global0.a.b, global0.a.b), vec2<bool>(false, false), vec2<bool>(true, false))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(select(arg_0.a.x, global0.d.x, global1[_wgslsmith_index_u32(49184u, 4u)])), _wgslsmith_f_op_f32(max(-674f, global0.c)), _wgslsmith_f_op_f32(global0.c * -230f))))), arg_0.a.yx, _wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(sign(global0.d.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-761f, global0.b.x, -1840f, -708f))) + vec4<f32>(-1000f, -194f, 1623f, -1529f)))) + _wgslsmith_f_op_vec4_f32(global0.d - vec4<f32>(-705f, _wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x), -1189f, arg_0.a.x))), global0.e);
    var var_2 = ~select(reverseBits(u_input.e.xz), select(arg_0.b.b.xz, vec2<i32>(-1i, var_0) >> (arg_0.b.a.a % vec2<u32>(32u)), select(vec2<bool>(global0.e.a.b, false), vec2<bool>(global1[_wgslsmith_index_u32(global0.e.c.a.x, 4u)], arg_0.b.d.b), vec2<bool>(true, global0.e.a.b))) ^ _wgslsmith_div_vec2_i32(max(global0.e.b.yz, vec2<i32>(-2147483647i, var_0)), select(global0.e.b.zz, vec2<i32>(global0.e.b.x, global0.e.b.x), arg_0.b.d.b)), select(vec2<bool>(u_input.d.x <= u_input.a.x, global1[_wgslsmith_index_u32(27486u, 4u)] == global0.a.b), select(vec2<bool>(global1[_wgslsmith_index_u32(var_1.x, 4u)], false), vec2<bool>(true, true), !vec2<bool>(global0.e.c.b, true)), select(!global1[_wgslsmith_index_u32(var_1.x, 4u)], true, true)));
    global0 = Struct_4(func_4(~global0.a.a.x, Struct_4(Struct_1(~global0.a.a, true), _wgslsmith_div_vec2_f32(global0.b, global0.b), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global0.c)))), vec4<f32>(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(arg_0.a.x - -1203f), 1017f, _wgslsmith_f_op_f32(step(-712f, 1087f))), global0.e)), _wgslsmith_f_op_vec2_f32(-arg_0.a.zx), _wgslsmith_f_op_f32(global0.b.x * _wgslsmith_f_op_f32(f32(-1f) * -198f)), _wgslsmith_f_op_vec4_f32(-global0.d), Struct_2(Struct_1(vec2<u32>(max(1u, 10077u), 53613u), true), _wgslsmith_div_vec3_i32(vec3<i32>(11364i, countOneBits(var_0), u_input.a.x), global0.e.b), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, -191f)), !select(vec2<bool>(global1[_wgslsmith_index_u32(arg_0.b.c.a.x, 4u)], global0.a.b), vec2<bool>(true, global1[_wgslsmith_index_u32(75176u, 4u)]), false), global0.d), Struct_1(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, -882f)), select(vec2<bool>(true, true), vec2<bool>(false, global1[_wgslsmith_index_u32(34414u, 4u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(93771u, 4u)])), vec4<f32>(global0.d.x, global0.d.x, global0.c, arg_0.a.x)).a, !all(vec2<bool>(true, false))), global0.e.e));
    return Struct_1(vec2<u32>(max(_wgslsmith_sub_u32(24410u, ~arg_0.b.e.x), arg_0.b.d.a.x), 41494u), arg_0.b.c.b | (arg_0.b.d.b && arg_0.b.a.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1581f;
    global0 = Struct_4(func_6(func_5(Struct_4(func_1(global0.b, vec2<bool>(global1[_wgslsmith_index_u32(55033u, 4u)], false), global0.d), global0.d.zx, -572f, vec4<f32>(118f, global0.c, 722f, global0.b.x), Struct_2(Struct_1(global0.e.a.a, false), global0.e.b, Struct_1(global0.a.a, true), global0.a, vec3<u32>(global0.e.e.x, 45840u, global0.e.d.a.x))))), global0.b, _wgslsmith_f_op_f32(floor(func_5(Struct_4(func_5(Struct_4(global0.a, global0.b, global0.d.x, vec4<f32>(global0.c, 223f, 839f, -156f), Struct_2(global0.a, vec3<i32>(u_input.c.x, u_input.a.x, 0i), Struct_1(vec2<u32>(global0.e.c.a.x, 4294967295u), false), global0.a, global0.e.e))).b.d, _wgslsmith_f_op_vec2_f32(-global0.d.xy), -2051f, _wgslsmith_f_op_vec4_f32(select(global0.d, vec4<f32>(global0.b.x, 164f, global0.d.x, 682f), vec4<bool>(false, global1[_wgslsmith_index_u32(global0.a.a.x, 4u)], true, global0.a.b))), Struct_2(Struct_1(global0.e.a.a, true), vec3<i32>(u_input.e.x, u_input.e.x, u_input.d.x), global0.e.a, global0.e.c, global0.e.e))).a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, -1891f, -998f, global0.d.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.x, global0.c, 330f, -1000f) * vec4<f32>(1695f, 161f, global0.c, 1667f))))), Struct_2(Struct_1(~_wgslsmith_sub_vec2_u32(global0.a.a, vec2<u32>(48203u, 17312u)), false), global0.e.b, global0.a, func_4(1u, Struct_4(func_5(Struct_4(global0.a, vec2<f32>(-2806f, global0.c), global0.d.x, global0.d, Struct_2(Struct_1(global0.a.a, false), vec3<i32>(2147483647i, global0.e.b.x, -2147483647i), global0.e.a, global0.a, vec3<u32>(global0.e.a.a.x, global0.a.a.x, 0u)))).b.c, _wgslsmith_f_op_vec2_f32(-global0.b), global0.b.x, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-617f, 428f, 288f, global0.b.x))), func_5(Struct_4(global0.a, vec2<f32>(global0.c, global0.b.x), global0.d.x, vec4<f32>(683f, global0.b.x, -361f, -1000f), Struct_2(global0.e.a, vec3<i32>(global0.e.b.x, -2147483647i, u_input.a.x), global0.a, global0.e.c, global0.e.e))).b)), global0.e.e));
    var_0 = 549f;
    global0 = Struct_4(func_4(~25777u, Struct_4(func_5(Struct_4(Struct_1(global0.a.a, global1[_wgslsmith_index_u32(4294967295u, 4u)]), vec2<f32>(-198f, global0.d.x), 248f, global0.d, global0.e)).b.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d.x, global0.b.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(1718f)), _wgslsmith_div_f32(global0.d.x, global0.d.x))), global0.d, global0.e)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-852f, global0.b.x))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global0.d.x, global0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(select(422f, global0.c, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(global0.d)) * vec4<f32>(636f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d.x), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1438f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -828f)))), Struct_2(global0.a, -vec3<i32>(countOneBits(15181i), _wgslsmith_mod_i32(global0.e.b.x, -7792i), -17737i), func_5(Struct_4(func_1(global0.b, vec2<bool>(true, true), vec4<f32>(global0.c, -1301f, 797f, global0.c)), _wgslsmith_div_vec2_f32(global0.b, global0.b), _wgslsmith_f_op_f32(ceil(global0.d.x)), vec4<f32>(401f, global0.b.x, -2206f, global0.b.x), global0.e)).b.c, Struct_1(global0.a.a, !global0.e.c.b), vec3<u32>(16814u, ~4294967295u, ~global0.e.d.a.x)));
    let var_1 = select(select(!(!vec4<bool>(false, global1[_wgslsmith_index_u32(127778u, 4u)], true, true)), !select(!vec4<bool>(global1[_wgslsmith_index_u32(9640u, 4u)], true, global1[_wgslsmith_index_u32(global0.e.c.a.x, 4u)], true), vec4<bool>(global1[_wgslsmith_index_u32(1u, 4u)], false, true, global0.a.b), !vec4<bool>(true, global1[_wgslsmith_index_u32(global0.a.a.x, 4u)], false, global1[_wgslsmith_index_u32(global0.e.c.a.x, 4u)])), vec4<bool>(global1[_wgslsmith_index_u32(global0.e.e.x, 4u)], global0.e.a.b, ~global0.a.a.x >= global0.e.e.x, ~global0.e.b.x != _wgslsmith_div_i32(global0.e.b.x, 0i))), vec4<bool>(any(!vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(70942u, 4u)])), true, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(global0.e.e, global0.e.e), 72082u), 4u)], global0.a.b), select(vec4<bool>(global0.e.a.b, !(!global0.a.b), global0.a.b, global0.e.a.b || (global0.e.c.b | global1[_wgslsmith_index_u32(0u, 4u)])), !vec4<bool>(!global1[_wgslsmith_index_u32(global0.a.a.x, 4u)], !global0.e.c.b, any(vec2<bool>(global1[_wgslsmith_index_u32(global0.e.c.a.x, 4u)], global0.e.a.b)), false), true));
    global0 = Struct_4(Struct_1(~(~(~vec2<u32>(86464u, global0.e.a.a.x))), func_4(global0.e.e.x, Struct_4(global0.e.d, vec2<f32>(global0.b.x, 936f), _wgslsmith_f_op_f32(global0.b.x * global0.b.x), vec4<f32>(global0.b.x, global0.d.x, 330f, global0.b.x), func_5(Struct_4(Struct_1(global0.e.e.xy, var_1.x), global0.b, global0.c, global0.d, Struct_2(Struct_1(global0.e.d.a, var_1.x), global0.e.b, global0.a, Struct_1(vec2<u32>(global0.a.a.x, 61353u), var_1.x), vec3<u32>(global0.e.a.a.x, global0.a.a.x, 1u)))).b)).b), vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.b.x - global0.c))), _wgslsmith_f_op_f32(global0.d.x + global0.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_div_f32(-591f, global0.d.x), global0.d.x), _wgslsmith_f_op_f32(select(-1097f, -461f, global1[_wgslsmith_index_u32(4294967295u, 4u)] || false))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(global0.c, -604f)))), -1334f, _wgslsmith_f_op_f32(-global0.d.x), 456f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, -881f, global0.b.x, -340f)) * global0.d)), global0.e);
    let x = u_input.a;
    s_output = StorageBuffer(~global0.e.e.yx, ~select(global0.e.a.a, ~reverseBits(vec2<u32>(global0.e.d.a.x, global0.e.d.a.x)), ~1u >= (global0.e.d.a.x | 67356u)), _wgslsmith_f_op_f32(step(global0.c, global0.b.x)), u_input.c);
}

