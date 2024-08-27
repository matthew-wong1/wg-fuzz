struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(8487u, vec4<bool>(false, false, true, false), true);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<f32>) -> bool {
    let var_0 = Struct_2(-831f);
    let var_1 = Struct_1(_wgslsmith_add_u32(abs(~_wgslsmith_dot_vec3_u32(u_input.c.wwz, u_input.c.zyx)), _wgslsmith_add_u32(42755u, max(_wgslsmith_div_u32(global0.a, global0.a), 1u))), !arg_0, all(!select(!arg_0, vec4<bool>(arg_0.x, global0.c, arg_0.x, true), vec4<bool>(global0.c, false, false, true))));
    global0 = Struct_1(u_input.b, vec4<bool>(true, !(var_1.a > global0.a), 49485i < (abs(u_input.a) ^ -u_input.a), all(!arg_0.zw)), true & (true | (max(var_1.a, 6447u) > 42177u)));
    global0 = var_1;
    var var_2 = var_1;
    return any(select(select(!select(var_2.b, vec4<bool>(false, arg_0.x, global0.c, false), var_2.b), select(var_1.b, !vec4<bool>(arg_0.x, false, var_1.c, true), vec4<bool>(true, true, arg_0.x, global0.b.x)), true), vec4<bool>(true, false, abs(103950u) > (27177u & u_input.c.x), false), select(arg_0, var_1.b, select(false, all(var_1.b.yzw), false))));
}

fn func_2(arg_0: u32) -> Struct_4 {
    let var_0 = any(select(vec4<bool>(all(global0.b), false, false, any(select(vec4<bool>(global0.b.x, global0.b.x, false, true), vec4<bool>(global0.b.x, global0.c, global0.c, global0.c), vec4<bool>(false, global0.c, false, true)))), vec4<bool>(global0.b.x, true, !(global0.b.x || false), !global0.b.x), vec4<bool>(global0.b.x, !func_3(global0.b, vec2<f32>(1073f, -829f)), !global0.b.x, (true || global0.c) | all(vec4<bool>(false, global0.b.x, global0.b.x, false)))));
    let var_1 = !vec4<bool>(true, !any(!global0.b.wz), var_0, !global0.b.x);
    global0 = Struct_1(arg_0, select(vec4<bool>(global0.b.x, !var_1.x && !var_0, 520f == _wgslsmith_f_op_f32(round(-314f)), any(vec3<bool>(true, var_0, false))), !var_1, !(all(global0.b.wy) & true)), all(global0.b.yyx));
    global0 = Struct_1(~1u, var_1, !var_0);
    global0 = Struct_1(global0.a, select(select(!vec4<bool>(var_1.x, var_0, var_1.x, true), !select(global0.b, var_1, vec4<bool>(false, var_1.x, true, var_0)), global0.b.x), var_1, global0.b), select(!(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-18339i, -3536i)) != ~u_input.a), var_0, 1608f <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-398f)), _wgslsmith_f_op_f32(1000f - 1133f))));
    return Struct_4(Struct_1(_wgslsmith_mod_u32(41678u, 38479u) & (~u_input.c.x & 39539u), vec4<bool>(any(!var_1), !var_0, var_1.x, var_0), true), Struct_1(~_wgslsmith_div_u32(~0u, ~arg_0), vec4<bool>(var_0, false, !(true & global0.b.x), var_1.x), select(!var_1.x, all(vec2<bool>(false, true)), any(vec4<bool>(false, global0.c, var_1.x, true)))));
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: Struct_4) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-695f * -1276f)), _wgslsmith_f_op_f32(trunc(-923f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-111f, 2057f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-522f - -603f)))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-var_0.a.x));
    var var_2 = vec4<u32>(14911u, global0.a, 4294967295u, ~arg_1.b.a);
    var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(var_0.a)))));
    let var_3 = !arg_2.b.b.xz;
    return func_2(44413u).b;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1) -> Struct_4 {
    global0 = func_4(reverseBits(select(_wgslsmith_sub_i32(u_input.a, 0i), -1i, global0.c)) >= -(u_input.a >> ((u_input.b & arg_0.a.a) % 32u)), func_2(arg_1.a), arg_0);
    var var_0 = 399f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1032f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(507f, 149f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1908f + 362f) - -1116f) + _wgslsmith_div_f32(-654f, -1733f))));
    let var_1 = ~vec2<u32>(func_4(global0.b.x, Struct_4(func_2(u_input.b).b, arg_0.b), func_2(~global0.a)).a, _wgslsmith_div_u32(_wgslsmith_mult_u32(arg_1.a, ~1u), _wgslsmith_add_u32(_wgslsmith_add_u32(global0.a, u_input.b), 3236u)));
    var var_2 = ~_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(-1i, u_input.a, u_input.a)), -(min(vec3<i32>(u_input.a, 36558i, u_input.a), vec3<i32>(4407i, u_input.a, 1i)) & (vec3<i32>(0i, -8689i, u_input.a) ^ vec3<i32>(u_input.a, -1i, u_input.a))));
    return Struct_4(arg_0.a, Struct_1(~(~arg_0.b.a), !func_4(!arg_1.c, func_2(arg_0.a.a), Struct_4(arg_0.a, Struct_1(1u, vec4<bool>(arg_0.a.b.x, false, global0.b.x, arg_0.b.c), arg_1.c))).b, true));
}

fn func_5(arg_0: bool, arg_1: Struct_4) -> u32 {
    global0 = Struct_1(func_2(0u).a.a, global0.b, func_4(false, arg_1, func_2(abs(~arg_1.a.a))).c);
    global0 = Struct_1(~4294967295u, !(!global0.b), true);
    global0 = arg_1.b;
    var var_0 = u_input.a;
    let var_1 = ~19544i;
    return u_input.b;
}

fn func_6(arg_0: u32, arg_1: i32) -> f32 {
    var var_0 = false;
    let var_1 = ~1u;
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(274f, -776f, -437f, -1000f)))));
    let var_3 = _wgslsmith_mod_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, abs(arg_1), -abs(reverseBits(arg_1))), vec3<i32>((_wgslsmith_div_i32(18063i, u_input.a) ^ arg_1) << (~0u % 32u), -u_input.a, -countOneBits(2147483647i)));
    var_0 = all(vec4<bool>(true, global0.c, !global0.c, func_3(func_2(var_1).a.b, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(var_2.a.zz, vec2<f32>(var_2.a.x, -439f), vec2<bool>(true, global0.b.x))), _wgslsmith_f_op_vec2_f32(var_2.a.xz + var_2.a.wx))))));
    return var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, u_input.c.x, vec3<f32>(_wgslsmith_f_op_f32(func_6(func_5(global0.a != global0.a, func_1(Struct_4(Struct_1(72186u, vec4<bool>(global0.c, global0.c, global0.c, global0.c), global0.b.x), Struct_1(1u, vec4<bool>(false, false, true, false), global0.c)), Struct_1(u_input.b, vec4<bool>(global0.b.x, false, global0.b.x, global0.b.x), false))), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, -1i), vec3<i32>(12183i, -4037i, u_input.a)), -vec3<i32>(1i, u_input.a, u_input.a)))), 1328f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1238f * -636f) - 989f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -794f)))), 447f, u_input.a);
}

