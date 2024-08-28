struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<u32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(arg_2.a)), 0i);
    var var_1 = Struct_4(Struct_3(vec4<bool>(all(vec4<bool>(false, global0.c.x, global0.c.x, true)), false, true, true), Struct_2(~0i, vec3<i32>(_wgslsmith_mult_i32(var_0.b, global0.b.b.x), global0.b.a, _wgslsmith_dot_vec4_i32(global0.b.d, global0.b.d)), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(f32(-1f) * -635f)), select(global0.b.d, vec4<i32>(arg_1.b, arg_1.b, global0.b.a, -20048i), all(vec3<bool>(true, true, global0.c.x))), vec2<u32>(select(5817u, arg_3, false), ~32247u)), vec3<bool>(false, true, (global0.a.x & true) | global0.a.x)), select(!(!vec3<bool>(global0.c.x, global0.a.x, true)), select(!select(vec3<bool>(global0.a.x, global0.a.x, global0.c.x), vec3<bool>(true, global0.a.x, global0.a.x), global0.a.x), vec3<bool>(global0.a.x, !global0.a.x, any(global0.a)), !select(vec3<bool>(global0.c.x, true, global0.a.x), global0.c, global0.c)), select(vec3<bool>(true, true, true), vec3<bool>(global0.c.x, any(vec3<bool>(true, true, false)), global0.c.x), any(vec3<bool>(global0.a.x, global0.a.x, global0.a.x)))), arg_1, _wgslsmith_sub_vec4_u32(select(abs(vec4<u32>(u_input.c, arg_0, arg_0, global0.b.e.x)), min(vec4<u32>(global0.b.e.x, 0u, 4294967295u, 102568u), vec4<u32>(0u, 12272u, 4294967295u, 22638u)), !global0.a) & min(reverseBits(vec4<u32>(global0.b.e.x, 130335u, arg_0, 62820u)), vec4<u32>(arg_3, 21355u, u_input.c, 35695u)), reverseBits(reverseBits(vec4<u32>(45950u, arg_3, u_input.c, arg_3))) | _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(arg_3, global0.b.e.x, u_input.b, global0.b.e.x)), vec4<u32>(1u, arg_3, arg_3, 1u))), ~_wgslsmith_mult_u32(~(~arg_3), ~1u));
    return vec4<bool>(var_1.b.x, global0.b.e.x == 1u, all(var_1.a.c.yz), false);
}

fn func_2(arg_0: vec3<i32>, arg_1: bool) -> vec3<f32> {
    global0 = Struct_3(!(!select(func_3(u_input.d.x, Struct_1(vec3<f32>(-2019f, global0.b.c, global0.b.c), global0.b.a), Struct_1(vec3<f32>(110f, global0.b.c, global0.b.c), global0.b.d.x), 0u), !global0.a, func_3(global0.b.e.x, Struct_1(vec3<f32>(191f, -1081f, -1589f), arg_0.x), Struct_1(vec3<f32>(global0.b.c, -196f, -160f), arg_0.x), global0.b.e.x))), Struct_2(-_wgslsmith_dot_vec4_i32(global0.b.d, vec4<i32>(-1i, arg_0.x, 0i, 7315i)), ~min(global0.b.b, global0.b.b), global0.b.c, reverseBits(vec4<i32>(-27361i, global0.b.d.x, global0.b.a, global0.b.d.x)) & vec4<i32>(_wgslsmith_add_i32(-17161i, 2147483647i), global0.b.d.x, -arg_0.x, _wgslsmith_mod_i32(arg_0.x, global0.b.b.x)), select(abs(global0.b.e ^ vec2<u32>(u_input.c, global0.b.e.x)), _wgslsmith_add_vec2_u32(global0.b.e, ~global0.b.e), func_3(~53872u, Struct_1(vec3<f32>(global0.b.c, global0.b.c, global0.b.c), 0i), Struct_1(vec3<f32>(global0.b.c, -595f, 562f), global0.b.b.x), 55858u).xx)), !vec3<bool>(all(!global0.c.yx), true, !global0.a.x));
    global0 = Struct_3(global0.a, global0.b, !vec3<bool>(true, true, all(vec4<bool>(false, true, arg_1, arg_1))));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.b.c, global0.b.c, _wgslsmith_f_op_f32(f32(-1f) * -1462f)))));
    var var_1 = global0.b.d.xx;
    return vec3<f32>(-371f, 1289f, 1378f);
}

fn func_1() -> Struct_3 {
    var var_0 = global0.b.d;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-462f * _wgslsmith_f_op_f32(sign(global0.b.c))), -1106f, -190f);
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.c, -2255f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-507f * global0.b.c))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.b.c)))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(-682f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.c + var_2.x)), global0.b.c))), _wgslsmith_f_op_f32(max(-339f, -590f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(global0.b.c, var_2.x))))), _wgslsmith_f_op_f32(global0.b.c - 1f)));
    var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, var_0.x, -59760i), vec3<i32>(-28908i, var_0.x, var_0.x)) & ~(var_0.wwx | global0.b.b), true)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.x, -469f, var_1.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, global0.b.c, 639f)) - var_2.zyw)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec3<i32>(-7075i, -2147483647i, 0i), false))))), global0.c.x));
    return Struct_3(func_3(firstTrailingBit(global0.b.e.x), Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_2.xzx))), 2147483647i | var_0.x), Struct_1(var_2.wxx, i32(-1i) * -16231i), firstTrailingBit(global0.b.e.x)), global0.b, global0.a.yzx);
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: vec3<u32>, arg_3: Struct_4) -> Struct_3 {
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.c.x;
    let var_1 = _wgslsmith_f_op_f32(-global0.b.c);
    var var_2 = global0.b.e.x;
    let var_3 = 5459u ^ _wgslsmith_mult_u32(u_input.d.x, ~(u_input.b >> (0u % 32u)));
    global0 = func_4(func_1(), -600f, vec3<u32>(22505u, _wgslsmith_mult_u32(min(var_3, ~4294967295u), ~59718u), _wgslsmith_mod_u32(~33256u, ~0u)), Struct_4(func_1(), select(global0.c, global0.a.zxx, global0.c), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -1114f, 2079f))), 12191i), _wgslsmith_add_vec4_u32(~(~vec4<u32>(u_input.d.x, 27585u, 0u, 1u)), vec4<u32>(~16869u, func_1().b.e.x, 7157u, _wgslsmith_div_u32(4294967295u, 47284u))), 4294967295u));
    let var_4 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1, _wgslsmith_f_op_f32(-141f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.b.c)))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(max(global0.b.c, _wgslsmith_f_op_f32(-global0.b.c)))), global0.b.c)));
    var var_5 = vec2<bool>((_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(17637u, global0.b.e.x)), vec2<u32>(17048u, 4861u)) >= (u_input.d.x & (1u | var_3))) & all(!func_1().a.zx), global0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_i32(10070i, countOneBits(34984i)) << (var_3 % 32u)), ~49949u);
}

