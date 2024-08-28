struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: vec4<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14>;

var<private> global1: Struct_1;

var<private> global2: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    global2 = vec2<bool>(global2.x, global2.x);
    let var_0 = Struct_1(global1.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(global1.b, global1.a.x, false)))), _wgslsmith_f_op_vec4_f32(-global1.c));
    global0 = array<i32, 14>();
    global0 = array<i32, 14>();
    var var_1 = vec3<bool>(any(select(vec2<bool>(true, true), select(vec2<bool>(global2.x, true), vec2<bool>(global2.x, false), vec2<bool>(false, global2.x)), any(vec3<bool>(false, true, global2.x)))) & (global2.x || true), global2.x, -9125i > global0[_wgslsmith_index_u32(u_input.b.x, 14u)]);
    return (~(~u_input.a.x) >> ((_wgslsmith_clamp_u32(~0u, firstTrailingBit(1u), _wgslsmith_add_u32(u_input.a.x, u_input.a.x)) ^ 21805u) % 32u)) ^ ~(~u_input.b.x);
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: i32, arg_3: u32) -> vec2<bool> {
    var var_0 = -(((vec2<i32>(-1i) * -vec2<i32>(2147483647i, -2147483647i)) >> (_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_3, arg_3), u_input.a.zx), u_input.a.wy >> (u_input.a.yx % vec2<u32>(32u))) % vec2<u32>(32u))) ^ ~firstTrailingBit(vec2<i32>(arg_0, arg_2)));
    let var_1 = global1.a.x;
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(global1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-440f, _wgslsmith_div_f32(-903f, _wgslsmith_f_op_f32(step(-940f, global1.a.x))))) * global1.a.x), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.b, _wgslsmith_div_f32(-593f, 983f), global1.a.x, _wgslsmith_f_op_f32(global1.a.x * -1152f)))))));
    global1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.c.x))))), -869f), _wgslsmith_f_op_f32(728f + global1.b), vec4<f32>(_wgslsmith_f_op_f32(global1.c.x - _wgslsmith_div_f32(-1636f, _wgslsmith_f_op_f32(-global1.b))), _wgslsmith_f_op_f32(max(-343f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1281f, global1.b)))), global1.a.x, -446f));
    global0 = array<i32, 14>();
    return select(!select(vec2<bool>(false, true && arg_1), vec2<bool>(true, arg_1), vec2<bool>(18456u == u_input.b.x, global2.x)), select(select(vec2<bool>(all(vec2<bool>(false, true)), false), vec2<bool>(all(vec4<bool>(arg_1, false, true, true)), global0[_wgslsmith_index_u32(14863u, 14u)] == arg_0), select(vec2<bool>(global2.x, false), select(vec2<bool>(false, true), vec2<bool>(arg_1, true), vec2<bool>(arg_1, arg_1)), select(vec2<bool>(false, arg_1), vec2<bool>(false, global2.x), global2.x))), !vec2<bool>(true, global2.x), !vec2<bool>(any(vec4<bool>(true, true, global2.x, global2.x)), arg_1)), true || global2.x);
}

fn func_2(arg_0: f32) -> Struct_1 {
    global0 = array<i32, 14>();
    let var_0 = !func_4(~(-countOneBits(2147483647i)), any(vec2<bool>(global2.x, true)), global0[_wgslsmith_index_u32(u_input.b.x, 14u)], func_3() & ~(~u_input.a.x));
    global0 = array<i32, 14>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-global1.c.zy), global1.c.x, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.b))), global1.b, 251f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(global1.c, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-410f, 1878f, -517f, arg_0), global1.c)))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global1.c)))))));
    global1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.c.zx), vec2<f32>(_wgslsmith_f_op_f32(abs(400f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(var_1.c.x * -1210f), any(var_0))))), _wgslsmith_f_op_f32(global1.a.x + _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.b, -225f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-255f)), _wgslsmith_f_op_f32(f32(-1f) * -259f), !global2.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(var_1.c, vec4<f32>(1337f, var_1.a.x, var_1.c.x, 345f), vec4<bool>(true, var_0.x, var_0.x, false)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1755f, arg_0, global1.a.x, arg_0), vec4<f32>(arg_0, 712f, global1.b, global1.c.x), true)))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.b, arg_0, arg_0, var_1.b))))));
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1970f), global1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.a.x, 1000f, var_0.x)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(abs(1382f)), 250f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), -315f), _wgslsmith_div_f32(global1.c.x, _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, 1000f, 1007f, var_1.c.x), vec4<f32>(global1.a.x, arg_0, 664f, 1593f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, -572f, -473f, var_1.b))))))));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_1 {
    global1 = func_2(arg_2.b);
    let var_0 = Struct_1(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b * -1058f)), global1.c);
    global1 = arg_2;
    var var_1 = abs(-_wgslsmith_add_vec2_i32(~vec2<i32>(global0[_wgslsmith_index_u32(arg_3.x, 14u)], -27996i), -vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.b.x, 14u)]))) ^ vec2<i32>(firstTrailingBit(firstLeadingBit(global0[_wgslsmith_index_u32(u_input.b.x, 14u)]) << (~1u % 32u)), _wgslsmith_add_i32(_wgslsmith_clamp_i32(i32(-1i) * -40181i, firstTrailingBit(2147483647i), 1i), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(arg_3.x, arg_3.x, u_input.b.x, 8583u)), 8790u), 14u)]));
    global0 = array<i32, 14>();
    return func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(arg_0).a.x)) + _wgslsmith_f_op_f32(-arg_0)));
}

fn func_1(arg_0: bool) -> f32 {
    global0 = array<i32, 14>();
    let var_0 = func_5(-145f, func_2(global1.c.x), func_2(-1006f), reverseBits(_wgslsmith_sub_vec3_u32(u_input.b.xxx, u_input.b.zww)));
    var var_1 = var_0;
    let var_2 = 0i;
    global2 = select(!vec2<bool>(!arg_0, select(!arg_0, true, true)), vec2<bool>(true | all(select(vec3<bool>(false, global2.x, global2.x), vec3<bool>(arg_0, global2.x, global2.x), vec3<bool>(global2.x, global2.x, global2.x))), arg_0), vec2<bool>(!(arg_0 || true), global2.x));
    return -140f;
}

fn func_6(arg_0: bool, arg_1: vec3<f32>) -> StorageBuffer {
    global2 = select(vec2<bool>(all(vec4<bool>(arg_0, true, global0[_wgslsmith_index_u32(4294967295u, 14u)] == -2147483647i, !arg_0)), true), vec2<bool>(true, func_4(-_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(37097u, 14u)], -25655i), all(!vec3<bool>(global2.x, global2.x, true)), _wgslsmith_sub_i32(-global0[_wgslsmith_index_u32(105768u, 14u)], global0[_wgslsmith_index_u32(u_input.b.x, 14u)]), 4294967295u << (~u_input.a.x % 32u)).x), func_4(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, 1i), -vec2<i32>(-26420i, global0[_wgslsmith_index_u32(u_input.a.x, 14u)])), vec2<i32>(-82168i, global0[_wgslsmith_index_u32(u_input.b.x, 14u)])), all(vec2<bool>(any(vec4<bool>(true, false, true, arg_0)), !arg_0)), i32(-1i) * -1i, 14010u & ~_wgslsmith_sub_u32(u_input.a.x, 1u)));
    global2 = select(!(!(!func_4(-2147483647i, arg_0, -1058i, 25713u))), !vec2<bool>(false, all(vec4<bool>(true, arg_0, arg_0, global2.x))), all(!vec4<bool>(!arg_0, global1.b == -367f, global2.x | arg_0, all(vec3<bool>(false, arg_0, global2.x)))));
    let var_0 = global1.a.x;
    var var_1 = vec4<f32>(_wgslsmith_div_f32(arg_1.x, arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -874f), arg_1.x, _wgslsmith_f_op_f32(global1.b - _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2320f)))));
    let var_2 = func_5(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(global1.b * _wgslsmith_f_op_f32(f32(-1f) * -1686f)), true))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_1.x)), -297f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-390f)), 869f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(global1.c))))), func_5(arg_1.x, func_5(_wgslsmith_f_op_f32(1088f + _wgslsmith_f_op_f32(-1198f - var_1.x)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(902f, arg_1.x) * vec2<f32>(-1198f, var_1.x)), -912f, _wgslsmith_f_op_vec4_f32(global1.c - global1.c)), Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-276f, global1.c.x))), _wgslsmith_f_op_f32(select(687f, var_1.x, true)), _wgslsmith_f_op_vec4_f32(trunc(global1.c))), ~(~vec3<u32>(u_input.a.x, 4294967295u, 0u))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -473f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -217f) * global1.b), vec4<f32>(1f, _wgslsmith_f_op_f32(step(1459f, 1167f)), _wgslsmith_f_op_f32(-832f - global1.c.x), 1004f)), max(vec3<u32>(1u, 25224u, u_input.a.x) ^ u_input.b.wyw, _wgslsmith_mod_vec3_u32(~u_input.a.wyw, vec3<u32>(0u, u_input.a.x, 50427u)))), vec3<u32>(23147u, u_input.a.x, countOneBits(1u)));
    return StorageBuffer(_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(2147483647i, 0i, global0[_wgslsmith_index_u32(17154u, 14u)], global0[_wgslsmith_index_u32(u_input.b.x, 14u)])), ~_wgslsmith_mult_vec4_i32(vec4<i32>(-46225i, global0[_wgslsmith_index_u32(u_input.b.x, 14u)], 24106i, -2147483647i), vec4<i32>(-2147483647i, 0i, -1i, 0i))) & _wgslsmith_mult_vec4_i32(abs(vec4<i32>(-2147483647i, 28146i, -1i, 16661i)) >> (~u_input.b % vec4<u32>(32u)), vec4<i32>(global0[_wgslsmith_index_u32(countOneBits(4294967295u), 14u)], 1i, 1i, -global0[_wgslsmith_index_u32(37445u, 14u)])), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(func_2(_wgslsmith_f_op_f32(-1619f + 1000f)).b, _wgslsmith_f_op_f32(-152f - var_2.a.x), !any(vec3<bool>(global2.x, arg_0, false)))))), -1i, _wgslsmith_div_vec4_i32(~firstLeadingBit(vec4<i32>(global0[_wgslsmith_index_u32(41894u, 14u)], global0[_wgslsmith_index_u32(u_input.b.x, 14u)], global0[_wgslsmith_index_u32(u_input.b.x, 14u)], 1i) | vec4<i32>(1i, -1i, 0i, 55435i)), vec4<i32>(global0[_wgslsmith_index_u32(~(1u >> (u_input.b.x % 32u)), 14u)], ~global0[_wgslsmith_index_u32(u_input.a.x, 14u)], _wgslsmith_dot_vec2_i32(~vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], 0i), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], -2147483647i) | vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], global0[_wgslsmith_index_u32(u_input.a.x, 14u)])), -1i)), vec2<f32>(global1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(trunc(1000f)), global2.x)), -1487f)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !vec2<bool>(_wgslsmith_div_u32(~u_input.b.x, ~12786u) > firstTrailingBit(u_input.b.x), global2.x);
    let var_0 = Struct_1(vec2<f32>(224f, _wgslsmith_f_op_f32(global1.b * global1.a.x)), global1.b, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-global1.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.x, -1000f, -1871f, global1.c.x) - _wgslsmith_f_op_vec4_f32(abs(global1.c))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2283f, 1812f, -1279f, global1.c.x), vec4<f32>(global1.b, global1.a.x, global1.b, global1.a.x)))))))));
    global1 = Struct_1(vec2<f32>(-416f, -121f), -621f, global1.c);
    let var_1 = _wgslsmith_div_i32(1i, _wgslsmith_mult_i32(~global0[_wgslsmith_index_u32(abs(4500u), 14u)] >> (18855u % 32u), -global0[_wgslsmith_index_u32(0u, 14u)]));
    let var_2 = any(vec4<bool>(global2.x, false, true, false));
    var var_3 = !global2.x;
    let x = u_input.a;
    s_output = func_6(true, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x + 110f) - _wgslsmith_f_op_f32(-var_0.a.x))), 1f, _wgslsmith_f_op_f32(func_1(all(vec3<bool>(true, global2.x, true))))));
}

