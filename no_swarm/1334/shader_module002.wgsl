struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: vec4<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec3<f32>;

var<private> global2: Struct_3 = Struct_3(vec2<i32>(1i, -1i), -232f, vec4<i32>(41801i, 2147483647i, -1i, 0i), Struct_2(true));

var<private> global3: bool = false;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> f32 {
    return global2.b;
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> f32 {
    var var_0 = ~firstLeadingBit(u_input.b.x);
    var_0 = 109480u;
    let var_1 = Struct_3(global2.c.zz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1074f * global2.b))), vec4<i32>(~(~6230i), -abs(1i), ~2147483647i, 1i) & ~reverseBits(vec4<i32>(-6356i, global2.c.x, global2.a.x, 0i)), Struct_2(true));
    var var_2 = select(select(arg_1.c.zx, arg_1.c.yx, false), !vec2<bool>(abs(arg_1.a.x) < arg_1.a.x, !(true != var_1.d.a)), arg_0.xx);
    let var_3 = any(select(select(arg_0.wzx, !arg_0.zzy, global2.d.a), select(select(arg_1.c, arg_0.yzx, true), select(vec3<bool>(arg_0.x, var_2.x, arg_0.x), vec3<bool>(var_2.x, global2.d.a, false), false), true), !((11811u == u_input.e.x) & var_1.d.a)));
    return _wgslsmith_f_op_f32(sign(global2.b));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(func_2());
    var var_1 = !all(vec2<bool>(global2.d.a, select(true, all(vec2<bool>(true, global2.d.a)), any(vec4<bool>(global2.d.a, global2.d.a, global2.d.a, global2.d.a)))));
    global1 = vec3<f32>(global1.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(!vec4<bool>(global2.d.a, true, global2.d.a, global2.d.a), Struct_1(vec4<u32>(u_input.e.x, u_input.e.x, 0u, u_input.b.x), true, vec3<bool>(global2.d.a, true, false)))), global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.b))))), 1147f);
    global1 = vec3<f32>(_wgslsmith_div_f32(1000f, -302f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x + 524f), _wgslsmith_f_op_f32(-1927f + 324f)))), global1.x);
    var var_2 = reverseBits(_wgslsmith_mod_u32(27728u, ~(u_input.d >> (u_input.e.x % 32u))) & 49146u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(exp2(var_0)))) + -921f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(338f * global2.b), _wgslsmith_f_op_f32(func_1())), global1.x, _wgslsmith_f_op_f32(-global1.x), 1f);
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(~(global2.a.x << (var_0 % 32u)), min(0i, -19498i), _wgslsmith_div_i32(abs(-353i), u_input.a.x)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(abs(4306i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, global2.c.x), global2.c.zz), 16840i, 11095i), global2.c, vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.c, -5289i), global2.c.www), _wgslsmith_add_i32(1i, 2609i), u_input.a.x, -2147483647i)), _wgslsmith_clamp_u32(26656u >> (var_0 % 32u), (max(var_0, u_input.b.x) & 69669u) | ~(var_0 | var_0), max(11755u, var_0)), countOneBits(-(~global2.c.x)) & reverseBits(~(-60633i)), u_input.b.x);
}

