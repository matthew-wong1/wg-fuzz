struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_2,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global1: Struct_4 = Struct_4(vec3<f32>(683f, 208f, -204f), 633f, -156f, Struct_3(Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u), -1297f, false, vec2<u32>(0u, 71663u))), Struct_1(vec3<u32>(1u, 92478u, 637u), -416f, false, vec2<u32>(4294967295u, 4294967295u)), vec4<bool>(true, true, true, true), Struct_2(Struct_1(vec3<u32>(0u, 30019u, 24904u), 1115f, true, vec2<u32>(29769u, 4294967295u))), vec2<f32>(-893f, -833f)), Struct_1(vec3<u32>(1u, 9792u, 38027u), -1048f, false, vec2<u32>(1u, 0u)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> vec4<bool> {
    let var_0 = !(!global1.d.c);
    global1 = Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -215f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1865f))))) - global1.a), 2097f, global1.b, Struct_3(Struct_2(global1.e), global1.e, vec4<bool>(global1.e.c, var_0.x, arg_0, !(!global0.x)), global1.d.d, _wgslsmith_f_op_vec2_f32(global1.a.yx * global1.a.yx)), global1.d.a.a);
    global1 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(1658f - 1032f), var_0.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.e.b), -2142f))), 198f), global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1000f))))), Struct_3(global1.d.d, global1.d.b, select(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, global0.x, false, false), false), !(!var_0), true), global1.d.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global1.a.zy, global1.d.e))))), Struct_1(global1.e.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.b, 621f)))), true, firstLeadingBit(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, 1u), global1.e.d))));
    var var_1 = vec2<u32>(_wgslsmith_div_u32(global1.d.d.a.d.x, (0u << (u_input.b % 32u)) & global1.d.d.a.a.x), countOneBits(max(u_input.d, ~u_input.b))) ^ min(vec2<u32>(45069u, max(0u, ~global1.d.b.a.x)), global1.d.b.d);
    global1 = Struct_4(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(769f, global1.e.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-989f)) + _wgslsmith_f_op_f32(f32(-1f) * -1921f)), _wgslsmith_f_op_f32(-global1.d.b.b)))), global1.e.b, 610f, global1.d, global1.e);
    return global1.d.c;
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_2) -> bool {
    global0 = func_3(!global0.x);
    global0 = vec4<bool>(any(global1.d.c), ~arg_2.a.a.x <= _wgslsmith_dot_vec3_u32(firstTrailingBit(~global1.e.a), ~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, global1.e.a.x, 4294967295u), arg_2.a.a)), (global1.e.d.x != ~_wgslsmith_add_u32(arg_0, 26147u)) || false, false);
    var var_0 = u_input.a.x;
    var var_1 = min(vec3<i32>(firstTrailingBit(0i), _wgslsmith_mult_i32(u_input.a.x, -13855i) << (u_input.d % 32u), u_input.a.x), -u_input.a);
    var var_2 = u_input.a;
    return global1.e.c;
}

fn func_1() -> vec2<bool> {
    global0 = vec4<bool>(global1.d.a.a.c, global0.x, (-1723f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.e.b)))) || (!global0.x && !func_2(1u, vec4<f32>(2005f, global1.d.b.b, 501f, global1.b), global1.d.a)), global1.e.c);
    let var_0 = u_input.c.x;
    global0 = global1.d.c;
    global0 = global1.d.c;
    global0 = select(!vec4<bool>(global0.x, all(select(vec3<bool>(false, false, false), vec3<bool>(global1.d.a.a.c, global1.d.b.c, global1.e.c), global0.x)), true, all(global1.d.c.wzz)), vec4<bool>(any(func_3(false & global1.d.c.x)), global0.x, any(vec3<bool>(global0.x, global1.d.c.x, global1.e.c)), false), global1.d.c.x);
    return select(func_3(true).zw, global1.d.c.zw, vec2<bool>(all(!global0.xww), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(all(select(select(global1.d.c.wy, global1.d.c.xx, global0.wx), func_1(), true)), all(func_3(!global0.x | true)), true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xz, 42220i, _wgslsmith_div_f32(1322f, global1.d.b.b), _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.c.x, -2147483647i, -2147483647i, 2147483647i) ^ abs(vec4<i32>(u_input.a.x, u_input.c.x, 32256i, 12901i)), vec4<i32>(u_input.c.x, u_input.a.x | 2147483647i, ~1i, min(u_input.c.x, -1i)), select(global1.d.c, vec4<bool>(false, global1.d.a.a.c, false, var_0), !vec4<bool>(global1.e.c, var_0, global0.x, var_0))), vec4<i32>(u_input.c.x, -select(-7009i, u_input.c.x, global1.e.c), -u_input.c.x ^ ~(-15859i), -1i)));
}

