struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
    d: vec4<f32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_4,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(vec3<f32>(483f, 579f, 867f), Struct_1(true, vec4<f32>(-2381f, 509f, -178f, 195f), vec4<i32>(1i, -19573i, 0i, 1i)), vec3<bool>(true, false, false), Struct_4(Struct_3(vec2<u32>(1u, 90120u))), 7339u);

var<private> global1: array<Struct_4, 3>;

var<private> global2: vec4<bool>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<bool> {
    var var_0 = ~(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(77703u, 13224u, 15566u, 0u) & vec4<u32>(58389u, u_input.a, global0.e, 0u), ~vec4<u32>(u_input.a, 0u, u_input.a, global0.e))) & ~abs(select(vec4<u32>(4294967295u, 2317u, global0.e, u_input.a), vec4<u32>(8601u, 1u, 0u, 20975u), vec4<bool>(global0.c.x, global2.x, false, global0.c.x))));
    let var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(global0.a)))), Struct_1(any(global2.xx), _wgslsmith_f_op_vec4_f32(-global0.b.b), vec4<i32>(~global0.b.c.x, -(global0.b.c.x & global0.b.c.x), 11291i, 1i)), global0.c, Struct_4(Struct_3(var_0.yz)), global0.d.a.a.x);
    var var_2 = !(!(!vec4<bool>(false, true, false, global2.x)));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.b.b.wyy * vec3<f32>(-1319f, var_1.b.b.x, -221f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_1.a), vec3<f32>(var_1.a.x, -1000f, global0.b.b.x))), true)))));
    global0 = var_1;
    return var_2.xyz;
}

fn func_4(arg_0: vec3<bool>, arg_1: f32) -> f32 {
    global2 = !select(vec4<bool>(any(vec2<bool>(global0.c.x, true)), false, all(vec4<bool>(true, global0.b.a, global0.b.a, false)), global2.x), !(!select(vec4<bool>(arg_0.x, global2.x, false, true), vec4<bool>(global0.c.x, global2.x, false, true), global0.b.a)), !(!(!vec4<bool>(true, false, false, global0.c.x))));
    var var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(global0.e, u_input.a), vec2<u32>(u_input.a, u_input.a)) >> (global0.d.a.a % vec2<u32>(32u));
    global0 = Struct_5(_wgslsmith_f_op_vec3_f32(global0.b.b.wxw - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-911f, global0.b.b.x, -2005f) + vec3<f32>(-1298f, global0.a.x, arg_1))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, arg_1, arg_1), vec3<f32>(global0.a.x, 430f, global0.b.b.x), arg_0.x)) - vec3<f32>(-676f, 792f, global0.a.x)))), Struct_1(global0.b.a, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(260f - arg_1)), 121f, global0.a.x, arg_1), vec4<i32>(i32(-1i) * -global0.b.c.x, -60100i, -8793i, _wgslsmith_mult_i32(global0.b.c.x, -36951i))), arg_0, Struct_4(Struct_3(~(global0.d.a.a & global0.d.a.a))), var_0.x);
    global2 = !select(vec4<bool>(global0.b.a && (638f < arg_1), all(select(vec3<bool>(false, global2.x, global2.x), arg_0, vec3<bool>(true, false, arg_0.x))), arg_0.x, !arg_0.x & false), select(vec4<bool>(global2.x, true, true, all(vec4<bool>(false, global2.x, global2.x, global2.x))), select(!vec4<bool>(global0.c.x, true, true, global2.x), select(vec4<bool>(global0.c.x, true, false, true), vec4<bool>(false, true, global2.x, global2.x), vec4<bool>(global0.b.a, true, false, false)), true), true), global2.x);
    var_0 = vec2<u32>(4294967295u, var_0.x);
    return arg_1;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<f32>) -> f32 {
    var var_0 = global0.d.a;
    var var_1 = global0.d;
    global0 = Struct_5(arg_1, global0.b, vec3<bool>(abs(u_input.a) == global0.d.a.a.x, _wgslsmith_f_op_f32(func_4(func_3(), -107f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - 201f) + global0.b.b.x), select(true, all(select(global0.c, vec3<bool>(false, global2.x, global0.b.a), global2.zww)), true)), Struct_4(var_1.a), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), var_1.a.a)));
    var_1 = Struct_4(Struct_3(vec2<u32>(11806u, 1u & min(u_input.a, u_input.a))));
    let var_2 = global0.d;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.b.b.x), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(873f, -159f))), false)) + _wgslsmith_f_op_f32(round(arg_1.x)));
}

fn func_1(arg_0: u32, arg_1: f32) -> vec4<u32> {
    global0 = Struct_5(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(func_2(vec2<bool>(true, false), vec3<f32>(1143f, -1000f, arg_1))), arg_1, 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.a - vec3<f32>(global0.a.x, arg_1, global0.a.x)) * global0.b.b.xyy), global0.c.x)))), Struct_1(global0.b.c.x <= 1i, vec4<f32>(731f, arg_1, _wgslsmith_f_op_f32(global0.b.b.x * global0.b.b.x), arg_1), global0.b.c), select(select(select(!global2.yzw, !global0.c, !vec3<bool>(true, false, global0.b.a)), func_3(), vec3<bool>(false, global2.x, false)), vec3<bool>(!any(vec3<bool>(global2.x, true, global2.x)), false, false), !any(global0.c)), Struct_4(global0.d.a), _wgslsmith_mult_u32(~global0.d.a.a.x, arg_0));
    global0 = Struct_5(global0.b.b.yyw, global0.b, vec3<bool>(global0.c.x, !global0.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(212f, global0.a.x), _wgslsmith_f_op_f32(min(-1000f, 817f)))) <= global0.a.x), global0.d, reverseBits(4294967295u));
    global1 = array<Struct_4, 3>();
    var var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1219f, -1208f, arg_1))), vec3<f32>(-482f, _wgslsmith_f_op_f32(floor(global0.b.b.x)), arg_1))))), Struct_1(true, global0.b.b, abs(vec4<i32>(global0.b.c.x, global0.b.c.x >> (0u % 32u), _wgslsmith_sub_i32(1i, 2096i), _wgslsmith_mod_i32(global0.b.c.x, 2147483647i)))), global2.xxy, Struct_4(Struct_3(_wgslsmith_add_vec2_u32(~global0.d.a.a, vec2<u32>(4294967295u, 1u)))), global0.d.a.a.x);
    return firstTrailingBit(vec4<u32>(21619u, _wgslsmith_div_u32(~global0.e, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 15577u, 4294967295u), vec3<u32>(global0.e, var_0.e, 4294967295u))), select(~14297u, 4294967295u, !(global2.x & global0.c.x)), 22778u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~(func_1(u_input.a, global0.b.b.x) >> (vec4<u32>(select(global0.e, 1u, global0.b.a), u_input.a, ~1u, u_input.a) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(7998u, ~1u), 64390u ^ max(func_1(abs(u_input.a), -896f).x, u_input.a));
}

