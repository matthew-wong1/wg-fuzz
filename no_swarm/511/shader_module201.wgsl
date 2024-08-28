struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 51597u;

var<private> global1: Struct_2;

var<private> global2: array<Struct_4, 3>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<u32>(9961u, 0u, _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(u_input.c, u_input.c), countOneBits(1u)));
    let var_1 = Struct_3(global1.e.b.wyx, global1.e, global1.c);
    global0 = 4294967295u;
    global0 = 4201u;
    var var_2 = vec4<u32>(45362u >> (abs(abs(var_0.x)) % 32u), ~(~6232u), u_input.c.x & ~(~1u), 4294967295u) & u_input.d;
    return global1.a;
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> i32 {
    global2 = array<Struct_4, 3>();
    let var_0 = u_input.b;
    let var_1 = Struct_4(Struct_2(func_2(), any(select(vec3<bool>(arg_2.b.x, true, true), vec3<bool>(true, true, true), select(true, global1.b, false))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-588f * _wgslsmith_f_op_f32(-global1.e.a)))), vec3<i32>(var_0, var_0, 1i), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -1541f)), select(global1.e.b, arg_2.b, global1.e.b.x))));
    let var_2 = var_1.a.d.x;
    global2 = array<Struct_4, 3>();
    return -1i;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_5) -> u32 {
    let var_0 = false;
    var var_1 = u_input.c;
    var var_2 = global2[_wgslsmith_index_u32(arg_2.b.x, 3u)];
    let var_3 = arg_2.d.a.a;
    global1 = Struct_2(var_3, !arg_1.a.e.b.x, -1093f, vec3<i32>(var_2.a.d.x, arg_1.a.d.x, _wgslsmith_add_i32(-2147483647i ^ abs(arg_0.a.d.x), i32(-1i) * -global1.d.x)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(832f + _wgslsmith_f_op_f32(step(arg_0.a.e.a, var_2.a.e.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.c))), vec4<bool>((global1.d.x << (var_1.x % 32u)) <= -arg_0.a.d.x, true, arg_1.a.a.b.x, var_2.a.b)));
    return ~986u >> (_wgslsmith_div_u32(1u, var_1.x) % 32u);
}

fn func_1(arg_0: bool, arg_1: i32) -> vec2<bool> {
    let var_0 = func_4(Struct_4(Struct_2(func_2(), _wgslsmith_sub_u32(u_input.c.x, u_input.a) <= (u_input.c.x ^ 19771u), -334f, ~global1.d, Struct_1(_wgslsmith_f_op_f32(exp2(global1.c)), global1.a.b))), Struct_4(Struct_2(func_2(), !all(vec4<bool>(true, false, arg_0, true)), _wgslsmith_f_op_f32(-global1.e.a), vec3<i32>(min(20009i, global1.d.x), ~u_input.b, func_3(-1179f, arg_1, global1.e)), func_2())), Struct_5(arg_0, max(~(~u_input.c), ~(~u_input.d.yy)), Struct_2(global1.e, any(vec3<bool>(global1.e.b.x, global1.a.b.x, global1.b)), _wgslsmith_f_op_f32(f32(-1f) * -423f), global1.d ^ (global1.d | vec3<i32>(-2147483647i, 31485i, -1i)), func_2()), global2[_wgslsmith_index_u32(u_input.c.x, 3u)]));
    global2 = array<Struct_4, 3>();
    var var_1 = global1.a;
    global1 = Struct_2(global1.e, !any(global1.a.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(978f, -1257f), var_1.a)) + _wgslsmith_f_op_f32(round(-989f)))), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(-12053i, arg_1 >> (u_input.c.x % 32u)), select(_wgslsmith_mult_i32(arg_1, 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), global1.d.xx), !global1.b)), -6859i, i32(-1i) * -52132i), global1.a);
    let var_2 = global1.a;
    return vec2<bool>((true == (3371u > firstTrailingBit(u_input.a))) & any(global1.e.b.xzw), arg_0);
}

fn func_5(arg_0: u32, arg_1: vec2<bool>, arg_2: f32) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -407f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.a)))));
    let var_1 = all(!func_2().b.yxw);
    var var_2 = Struct_5(select(true, any(select(vec3<bool>(arg_1.x, global1.e.b.x, true), vec3<bool>(arg_1.x, true, arg_1.x), false)), true), ~max(u_input.c, u_input.d.zz), Struct_2(func_2(), ~65926u != ~arg_0, global1.a.a, global1.d, global1.a), Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1297f), select(vec4<bool>(var_1, true, false, arg_1.x), vec4<bool>(var_1, var_1, arg_1.x, false), var_1)), true, _wgslsmith_f_op_f32(-1048f + var_0), ~(~vec3<i32>(u_input.b, -7370i, global1.d.x)), func_2())));
    return StorageBuffer(-595i, vec3<f32>(_wgslsmith_f_op_f32(356f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(global1.c, -653f)), _wgslsmith_f_op_f32(floor(-908f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(floor(var_0))) + var_0), _wgslsmith_f_op_f32(555f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - 657f) - _wgslsmith_div_f32(var_0, 695f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(~(~(~abs(u_input.a))), select(global1.a.b.xw, select(select(!vec2<bool>(false, global1.e.b.x), global1.a.b.zz, global1.a.b.yx), !vec2<bool>(global1.e.b.x, global1.a.b.x), select(func_1(true, 0i), vec2<bool>(global1.a.b.x, global1.a.b.x), select(true, true, false))), any(global1.a.b)), -954f);
}

