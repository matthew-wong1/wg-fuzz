struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_5 {
    a: f32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> vec3<bool> {
    let var_0 = reverseBits(min(~_wgslsmith_add_u32(global0.d.x, ~u_input.b.x), ~firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(62929u, 0u), vec2<u32>(u_input.a.x, 0u)))));
    global0 = Struct_4(~global0.d, Struct_3(!global0.b.b.x, vec3<bool>(global0.b.b.x, !(global0.c.a.x == global0.c.a.x), true), global0.d), Struct_1(global0.c.a), global0.d);
    var var_1 = global0.c;
    var var_2 = abs(~select(~vec4<u32>(4294967295u, var_0, u_input.a.x, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0, var_0, 1u, u_input.a.x), firstLeadingBit(vec4<u32>(15350u, u_input.a.x, u_input.a.x, 1u)), ~vec4<u32>(global0.a.x, var_0, var_0, 1u)), !(!vec4<bool>(global0.b.a, true, global0.b.b.x, global0.b.b.x))));
    let var_3 = global0.b.b.xx;
    return vec3<bool>(var_3.x, any(vec2<bool>(var_3.x, global0.b.b.x)), global0.b.b.x);
}

fn func_2() -> Struct_3 {
    var var_0 = global0.b;
    global0 = Struct_4(vec2<u32>(61253u, _wgslsmith_div_u32(1u, ~(~u_input.a.x))), Struct_3(false, select(select(global0.b.b, vec3<bool>(global0.b.b.x, true, true), select(global0.b.b, var_0.b, global0.b.b)), vec3<bool>(global0.b.b.x, any(global0.b.b), !global0.b.b.x), func_3()), min(vec2<u32>(~var_0.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, 0u), vec3<u32>(1u, global0.b.c.x, global0.b.c.x))), firstTrailingBit(vec2<u32>(1u, 93573u)))), Struct_1(max(global0.c.a, global0.c.a)), firstTrailingBit(firstLeadingBit(~(vec2<u32>(1u, var_0.c.x) >> (u_input.b % vec2<u32>(32u))))));
    let var_1 = Struct_1(global0.c.a);
    let var_2 = var_1;
    let var_3 = 1u;
    return global0.b;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>) -> Struct_4 {
    let var_0 = !(!select(global0.b.b.zx, select(func_2().b.zx, arg_0.b.yy, vec2<bool>(true, true)), !vec2<bool>(arg_0.b.x, global0.b.b.x)));
    return Struct_4(arg_0.c | ~vec2<u32>(4294967295u, u_input.a.x), global0.b, global0.c, ~_wgslsmith_mod_vec2_u32(~abs(vec2<u32>(0u, u_input.b.x)), ~(~u_input.a)));
}

fn func_1() -> vec2<u32> {
    let var_0 = global0.c.a.x & _wgslsmith_add_i32(max(0i, global0.c.a.x), ~(-1i | global0.c.a.x));
    global0 = func_4(func_2(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
    let var_1 = !select(global0.b.b, select(vec3<bool>(global0.b.b.x, false, all(vec4<bool>(false, false, global0.b.b.x, global0.b.b.x))), !vec3<bool>(true, global0.b.b.x, global0.b.b.x), any(func_4(Struct_3(global0.b.a, global0.b.b, vec2<u32>(0u, global0.b.c.x)), vec3<f32>(-1418f, -121f, 2447f)).b.b)), !(_wgslsmith_f_op_f32(sign(-665f)) > _wgslsmith_f_op_f32(step(602f, 1822f))));
    var var_2 = var_1.x;
    return func_4(Struct_3(true, func_2().b, u_input.a), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-284f, 1455f, 367f))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-370f, 625f, -755f))))), vec3<bool>(any(select(vec4<bool>(true, var_1.x, true, var_1.x), vec4<bool>(false, global0.b.a, false, global0.b.b.x), var_1.x)), false, false)))).a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(func_1(), Struct_3(-331f <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1061f)))), func_4(global0.b, _wgslsmith_div_vec3_f32(vec3<f32>(539f, 1399f, -1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1115f, -1744f, -1339f)))).b.b, ~_wgslsmith_clamp_vec2_u32(~u_input.b, u_input.b, ~vec2<u32>(13663u, 1u))), Struct_1(vec4<i32>(_wgslsmith_sub_i32(399i, -22278i) & global0.c.a.x, _wgslsmith_dot_vec4_i32(global0.c.a, global0.c.a) >> (~u_input.b.x % 32u), global0.c.a.x & -global0.c.a.x, -1i)), ~(~func_2().c));
    global0 = func_4(global0.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1259f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(602f, -2344f) * _wgslsmith_f_op_f32(-303f * -474f)), -859f)));
    var var_0 = Struct_2(Struct_1(_wgslsmith_mult_vec4_i32(min(vec4<i32>(global0.c.a.x, global0.c.a.x, 5202i, global0.c.a.x), global0.c.a), vec4<i32>(-1i) * -vec4<i32>(24569i, global0.c.a.x, global0.c.a.x, 2147483647i))), ~(~(~(~vec4<u32>(0u, u_input.b.x, global0.b.c.x, u_input.a.x)))), countOneBits(-vec4<i32>(-29057i, countOneBits(global0.c.a.x), ~global0.c.a.x, countOneBits(global0.c.a.x))));
    var var_1 = Struct_5(-1392f, select(func_2().b.yx, global0.b.b.xx, func_4(global0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-140f, 245f, 1764f), vec3<f32>(448f, 959f, 777f)) + vec3<f32>(-1798f, 542f, -1104f))).b.b.x));
    let var_2 = Struct_5(var_1.a, !select(select(var_1.b, !var_1.b, true), !vec2<bool>(var_1.b.x, true), any(func_4(global0.b, vec3<f32>(var_1.a, var_1.a, -258f)).b.b.zy)));
    let var_3 = _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.c.x, global0.c.a.x ^ reverseBits(var_0.a.a.x), 1i), vec3<i32>(-1i) * -vec3<i32>(0i, 3265i, 0i)), reverseBits(vec3<i32>(1i, -1i, var_0.c.x)));
    var var_4 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(288f, 509f, -168f)) + vec3<f32>(-262f, -2079f, var_1.a)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, var_1.a, -765f)), _wgslsmith_div_vec3_f32(vec3<f32>(664f, 982f, var_1.a), vec3<f32>(var_1.a, 1769f, var_1.a)), all(var_2.b))))), vec3<bool>(countOneBits(global0.c.a.x) != ~var_3.x, u_input.b.x > global0.d.x, !(406f < var_1.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(1i, abs(countOneBits(_wgslsmith_div_vec3_i32(firstLeadingBit(global0.c.a.xww), reverseBits(var_3)))), vec3<f32>(var_4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(189f))), _wgslsmith_f_op_f32(var_4.x - _wgslsmith_f_op_f32(var_4.x - _wgslsmith_div_f32(var_2.a, -1769f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(236f + _wgslsmith_f_op_f32(step(var_1.a, -110f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1426f) + var_2.a), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1082f), var_1.a))))));
}

