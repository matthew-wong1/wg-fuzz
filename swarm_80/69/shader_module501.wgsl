struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(66396i, vec3<bool>(true, false, true), false, Struct_1(1i, 1i, vec4<i32>(-36845i, -44102i, -1i, -1129i)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: i32, arg_1: f32) -> vec3<bool> {
    global0 = Struct_2(u_input.c, vec3<bool>(!(!all(vec3<bool>(global0.c, global0.b.x, false))), global0.c, global0.b.x & all(select(vec4<bool>(true, false, global0.b.x, false), vec4<bool>(true, true, global0.b.x, global0.c), vec4<bool>(global0.b.x, global0.c, false, global0.b.x)))), false, Struct_1(-27913i, select(0i, countOneBits(u_input.b.x) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(24978u, u_input.a.x, 67475u), vec3<u32>(u_input.a.x, 38934u, u_input.a.x)) % 32u), global0.b.x), global0.d.c));
    var var_0 = u_input.b.x;
    let var_1 = Struct_1(countOneBits(_wgslsmith_mod_i32(7303i, -32503i)), arg_0, -max(~(-global0.d.c), ~select(vec4<i32>(u_input.b.x, arg_0, arg_0, 0i), global0.d.c, vec4<bool>(global0.b.x, global0.c, true, global0.c))));
    var var_2 = Struct_2(-40125i, global0.b, global0.c, var_1);
    var var_3 = false;
    return var_2.b;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_2 {
    let var_0 = ~(~u_input.a);
    global0 = Struct_2(arg_1.x, func_3(global0.d.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(111f + -1000f))), u_input.a.x <= ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, var_0.x), ~vec3<u32>(var_0.x, u_input.a.x, 39649u)), Struct_1(arg_0.b, firstLeadingBit(1i), vec4<i32>(countOneBits(arg_0.c.x ^ 0i), arg_1.x, abs(-arg_1.x), min(2147483647i, countOneBits(17603i)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1291f, -583f, _wgslsmith_f_op_f32(max(-858f, -1041f)), _wgslsmith_f_op_f32(f32(-1f) * -228f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-228f, 140f, -801f, -463f) * _wgslsmith_div_vec4_f32(vec4<f32>(264f, -1000f, -1683f, 555f), vec4<f32>(-1096f, 335f, -269f, 1318f))) + vec4<f32>(-214f, -591f, 2207f, _wgslsmith_f_op_f32(trunc(382f))))));
    let var_2 = select(!vec4<bool>(true, any(!global0.b.zx), false, all(select(vec3<bool>(global0.b.x, true, global0.c), global0.b, global0.b))), select(vec4<bool>(_wgslsmith_add_i32(global0.d.c.x, arg_1.x) == 2147483647i, true, select(false, var_1.x >= var_1.x, all(vec4<bool>(true, global0.c, global0.c, global0.c))), all(!global0.b)), vec4<bool>(true, any(!vec4<bool>(true, global0.b.x, global0.c, global0.b.x)), global0.b.x, !global0.c), !select(vec4<bool>(global0.c, false, global0.c, true), select(vec4<bool>(false, global0.c, false, global0.b.x), vec4<bool>(false, true, true, global0.b.x), true), vec4<bool>(global0.c, global0.b.x, true, global0.b.x))), vec4<bool>(select(false, firstTrailingBit(u_input.a.x) >= (var_0.x ^ u_input.a.x), true || all(vec2<bool>(global0.b.x, true))), global0.c, true, global0.b.x));
    global0 = Struct_2(arg_1.x ^ max(1i, abs(u_input.b.x)), var_2.wxw, (-abs(global0.d.c.x) & -60930i) == -11134i, global0.d);
    return Struct_2(arg_1.x, !func_3(arg_0.c.x, _wgslsmith_f_op_f32(abs(-844f))), var_2.x, arg_0);
}

fn func_1(arg_0: u32, arg_1: f32) -> u32 {
    var var_0 = func_2(Struct_1(-(~u_input.b.x), -(~u_input.c), vec4<i32>(-1i) * -vec4<i32>(-37978i, global0.a, u_input.b.x, 6314i)), vec3<i32>(-1i, -2147483647i, u_input.b.x | u_input.b.x));
    global0 = func_2(Struct_1(var_0.d.c.x, _wgslsmith_mult_i32(func_2(global0.d, _wgslsmith_add_vec3_i32(vec3<i32>(var_0.a, global0.a, 2147483647i), vec3<i32>(u_input.c, var_0.a, -2147483647i))).d.a, abs(-37384i)), vec4<i32>(firstLeadingBit(global0.a), reverseBits(i32(-1i) * -71602i), ~(-4803i), u_input.c)), abs(vec3<i32>(_wgslsmith_mod_i32(1i, -2147483647i) >> (firstTrailingBit(47200u) % 32u), var_0.d.b, _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.b.x, 0i, 69182i), -42341i >> (arg_0 % 32u)))));
    var_0 = Struct_2(-32836i, select(var_0.b, !vec3<bool>(true, !var_0.c, all(global0.b.xy)), global0.b), 1617u > ~u_input.a.x, Struct_1(firstLeadingBit(max(u_input.b.x, 14653i) ^ var_0.a), countOneBits(2147483647i), -var_0.d.c & select(var_0.d.c, var_0.d.c, all(var_0.b))));
    var var_1 = global0.b.x;
    var var_2 = select(func_3(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * 325f)))).zx, vec2<bool>(!func_3(-4483i, _wgslsmith_f_op_f32(arg_1 + arg_1)).x, !(arg_0 > arg_0)), arg_1 == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - -1217f)));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 7975u;
    let var_1 = firstLeadingBit(global0.d.a) >> (_wgslsmith_div_u32(func_1(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 591f), u_input.a.x) % 32u);
    let var_2 = func_2(func_2(global0.d, -_wgslsmith_add_vec3_i32(global0.d.c.zwz, global0.d.c.wxz)).d, vec3<i32>(_wgslsmith_mod_i32(u_input.b.x, 0i), ~(-2147483647i), _wgslsmith_clamp_i32(u_input.c, ~2147483647i << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), u_input.a.ww) % 32u), _wgslsmith_sub_i32(-u_input.b.x, ~1i))));
    var_0 = ~u_input.a.x;
    let var_3 = -(~(-((-2147483647i << (u_input.a.x % 32u)) << (u_input.a.x % 32u))));
    global0 = func_2(var_2.d, vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, var_3), vec2<i32>(22339i, u_input.b.x)), vec2<i32>(2147483647i, 5453i)), u_input.b ^ -vec2<i32>(u_input.c, u_input.b.x)), 7777i, 15129i));
    global0 = func_2(var_2.d, -abs(vec3<i32>(2147483647i, 5188i, var_2.d.c.x) | _wgslsmith_mult_vec3_i32(global0.d.c.xwz, global0.d.c.yyx)));
    let var_4 = -1i;
    var var_5 = global0.d;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_u32(u_input.a.x, ~_wgslsmith_add_u32(u_input.a.x, 1u)), vec2<i32>(-25973i, u_input.c), ~_wgslsmith_mult_u32(~141223u, ~_wgslsmith_sub_u32(u_input.a.x, 25824u)), _wgslsmith_f_op_f32(834f - -304f));
}

