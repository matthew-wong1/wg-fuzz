struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1>;

var<private> global1: bool;

var<private> global2: i32;

var<private> global3: array<i32, 25> = array<i32, 25>(2147483647i, i32(-2147483648), 23029i, 0i, -4603i, i32(-2147483648), -1i, 13558i, -1i, -5906i, 0i, -1i, 3276i, -1i, -7240i, -24778i, 2147483647i, 1250i, -9088i, 57074i, -34918i, 25634i, 1i, 2147483647i, 0i);

var<private> global4: array<i32, 31> = array<i32, 31>(47097i, 2147483647i, 1i, -2010i, -90965i, -1i, 4399i, -1i, -3614i, 22944i, 54017i, 14719i, i32(-2147483648), 63073i, -1i, -39814i, -2230i, 15008i, 2147483647i, 0i, 54302i, 0i, -1i, -9454i, 2623i, 2147483647i, 0i, 4285i, 1i, 29957i, 2147483647i);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> u32 {
    let var_0 = Struct_1(global0[_wgslsmith_index_u32(60854u, 1u)], _wgslsmith_f_op_f32(f32(-1f) * -1000f), vec4<u32>(u_input.d.x, u_input.d.x, _wgslsmith_add_u32(~_wgslsmith_add_u32(u_input.d.x, u_input.d.x), _wgslsmith_mult_u32(4294967295u, u_input.d.x)), 1u));
    global3 = array<i32, 25>();
    global0 = array<bool, 1>();
    global2 = ~u_input.e;
    let var_1 = !(_wgslsmith_f_op_f32(210f * var_0.b) > _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-var_0.b)))));
    return _wgslsmith_mult_u32(~select(_wgslsmith_div_u32(~var_0.c.x, min(4294967295u, 591u)), ~var_0.c.x, all(select(vec4<bool>(false, var_0.a, global0[_wgslsmith_index_u32(u_input.d.x, 1u)], true), vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(1u, 1u)]), vec4<bool>(var_0.a, false, true, var_1)))), 50887u);
}

fn func_3() -> f32 {
    global3 = array<i32, 25>();
    global3 = array<i32, 25>();
    var var_0 = select(!(!vec2<bool>(global0[_wgslsmith_index_u32(8036u | u_input.d.x, 1u)], all(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 1u)], true, true)))), !(!select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 1u)], global0[_wgslsmith_index_u32(18557u, 1u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 1u)], true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 1u)], global0[_wgslsmith_index_u32(u_input.d.x, 1u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 1u)], true)), any(vec3<bool>(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(u_input.d.x, 1u)], global0[_wgslsmith_index_u32(u_input.d.x, 1u)])))), u_input.d.x >= _wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, 45242u, u_input.d.x), ~u_input.d.zxz, select(vec3<bool>(global0[_wgslsmith_index_u32(21897u, 1u)], global0[_wgslsmith_index_u32(u_input.d.x, 1u)], false), vec3<bool>(false, global0[_wgslsmith_index_u32(9929u, 1u)], false), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 1u)], true))), u_input.d.zzz));
    var var_1 = !vec2<bool>(~abs(u_input.d.x) < ~u_input.d.x, true);
    let var_2 = Struct_1(!(!(!all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 1u)], global0[_wgslsmith_index_u32(u_input.d.x, 1u)], var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -250f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -389f) - 797f)), min(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.d.x, 3816u, u_input.d.x, 1u) ^ vec4<u32>(u_input.d.x, u_input.d.x, 4294967295u, u_input.d.x)), ~_wgslsmith_mod_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, 4294967295u, 39589u, 99450u))), u_input.d));
    return -208f;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec3<f32>) -> bool {
    global1 = ~_wgslsmith_div_u32(0u, _wgslsmith_mod_u32(min(0u, 1u), _wgslsmith_mult_u32(42327u, arg_2.c.x))) != ~(~_wgslsmith_div_u32(u_input.d.x, 0u & u_input.d.x));
    var var_0 = min(1u, 44721u);
    let var_1 = arg_2;
    global1 = !any(select(select(!vec2<bool>(global0[_wgslsmith_index_u32(arg_2.c.x, 1u)], true), !vec2<bool>(global0[_wgslsmith_index_u32(var_1.c.x, 1u)], true), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 1u)], true)), vec2<bool>(true, true), !select(vec2<bool>(true, var_1.a), vec2<bool>(false, true), arg_2.a)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-935f + arg_2.b));
    return (~_wgslsmith_clamp_i32(i32(-1i) * -5989i, u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -5177i, 1i), vec3<i32>(0i, global3[_wgslsmith_index_u32(1u, 25u)], 2147483647i))) & ~(-_wgslsmith_mod_i32(u_input.c.x, 2147483647i))) > 57689i;
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_2 {
    global4 = array<i32, 31>();
    global4 = array<i32, 31>();
    global3 = array<i32, 25>();
    let var_0 = func_2();
    let var_1 = func_4(_wgslsmith_sub_vec4_i32(select(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(arg_0.c.x, 31u)], 17001i, u_input.e, 2147483647i), vec4<i32>(u_input.c.x, 0i, 2147483647i, -1i)), vec4<i32>(2147483647i, -1i, 1i, 39153i)), select(~vec4<i32>(-1912i, global3[_wgslsmith_index_u32(62153u, 25u)], 2147483647i, 2147483647i), ~vec4<i32>(67196i, global3[_wgslsmith_index_u32(0u, 25u)], global3[_wgslsmith_index_u32(17033u, 25u)], -5529i), !vec4<bool>(true, arg_0.a, true, false)), true), vec4<i32>(-_wgslsmith_clamp_i32(0i, global4[_wgslsmith_index_u32(0u, 31u)], -1i), i32(-1i) * -7701i, 1i, 1i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1631f, arg_0.b, arg_0.b))), vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(arg_0.b - arg_0.b), _wgslsmith_f_op_f32(-1989f * -1000f)))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(arg_0.b + 612f), arg_0.b, _wgslsmith_f_op_f32(min(895f, 703f)))))), arg_0, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, 438f, 1046f) + vec3<f32>(388f, arg_0.b, arg_0.b)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, -1000f, -640f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(2816f, -794f, -1897f), vec3<f32>(-1056f, 817f, arg_0.b)))))));
    return Struct_2(var_0, select(~u_input.d, ~_wgslsmith_div_vec4_u32(arg_0.c, u_input.d) & vec4<u32>(arg_0.c.x ^ var_0, u_input.d.x, max(arg_0.c.x, u_input.d.x), ~13236u), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) * -992f), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(global0[_wgslsmith_index_u32(u_input.d.x, 1u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -129f))))), ~(u_input.d << (vec4<u32>(u_input.d.x, 73114u, u_input.d.x, u_input.d.x) % vec4<u32>(32u)))), true);
    global1 = select(select(!func_4(vec4<i32>(global4[_wgslsmith_index_u32(var_0.b.x, 31u)], -36813i, u_input.a.x, global3[_wgslsmith_index_u32(4294967295u, 25u)]), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.d.b, 162f, var_0.c))), func_1(var_0.d, global0[_wgslsmith_index_u32(31086u, 1u)]).d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1361f, 852f, -508f))), var_0.d.a, false || !global0[_wgslsmith_index_u32(var_0.a << (78285u % 32u), 1u)]), func_1(Struct_1(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.d.x, u_input.d.x), 1u)], _wgslsmith_f_op_f32(max(var_0.c, -1917f)), var_0.b), var_0.d.a).d.a, func_1(Struct_1(!global0[_wgslsmith_index_u32(u_input.d.x, 1u)], _wgslsmith_f_op_f32(f32(-1f) * -379f), _wgslsmith_div_vec4_u32(~u_input.d, ~vec4<u32>(var_0.d.c.x, var_0.b.x, 4294967295u, 1u))), true).d.a);
    let var_1 = var_0;
    var var_2 = var_0.d;
    var var_3 = func_1(Struct_1(!var_0.d.a, var_0.d.b, countOneBits(var_1.d.c)), func_4(vec4<i32>(select(u_input.a.x, 28922i, true) << (13137u % 32u), _wgslsmith_sub_i32(1i, 39752i), global3[_wgslsmith_index_u32(u_input.d.x, 25u)], -global3[_wgslsmith_index_u32(33760u, 25u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.b, var_2.b, func_1(var_1.d, true).d.b) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b, -1000f, 400f) + vec3<f32>(-662f, var_1.c, -547f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.b, var_1.c, var_1.d.b) * vec3<f32>(440f, -1053f, var_0.c)))), Struct_1(var_0.d.a, _wgslsmith_f_op_f32(step(559f, func_1(Struct_1(true, var_2.b, vec4<u32>(32481u, u_input.d.x, var_2.c.x, 4294967295u)), false).c)), ~firstLeadingBit(vec4<u32>(8796u, var_2.c.x, 1u, var_0.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.d.b, var_1.d.b, -1000f), vec3<f32>(-467f, var_1.c, var_2.b))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(683f, -320f, -1117f)))))));
    let var_4 = Struct_1(all(!(!vec4<bool>(var_3.d.a, var_3.d.a, false, true))), var_0.d.b, var_3.d.c);
    var var_5 = select(vec4<bool>(abs(0u) != _wgslsmith_mult_u32(var_4.c.x, _wgslsmith_dot_vec3_u32(u_input.d.ywx, vec3<u32>(4294967295u, 4294967295u, var_2.c.x))), var_3.d.a, _wgslsmith_f_op_f32(max(239f, var_4.b)) >= _wgslsmith_f_op_f32(max(-657f, var_0.d.b)), _wgslsmith_f_op_f32(var_3.d.b + -1304f) == _wgslsmith_f_op_f32(386f * _wgslsmith_f_op_f32(f32(-1f) * -1253f))), !select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(var_3.a, 1u)], var_3.d.a, var_4.a, true), vec4<bool>(var_2.a, var_1.d.a, var_3.d.a, true), var_3.d.a), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 1u)], var_4.a, var_2.a, var_0.d.a), true), !(!vec4<bool>(true, false, var_1.d.a, var_1.d.a)), !vec4<bool>(var_4.a, true, false, global0[_wgslsmith_index_u32(1u, 1u)])), !(1u <= (min(5078u, var_0.b.x) ^ 65915u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(select(~(~var_2.c), min(var_1.b, _wgslsmith_mod_vec4_u32(var_3.b, vec4<u32>(var_1.d.c.x, var_3.d.c.x, var_3.a, 3260u))), all(select(vec2<bool>(false, true), vec2<bool>(var_4.a, var_4.a), vec2<bool>(global0[_wgslsmith_index_u32(5428u, 1u)], true)))), vec4<u32>(1u, ~(u_input.d.x & 0u), firstTrailingBit(1u), 4294967295u)));
}

