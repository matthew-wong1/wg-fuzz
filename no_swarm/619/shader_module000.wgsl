struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_3;

var<private> global2: array<Struct_1, 1>;

var<private> global3: vec3<bool> = vec3<bool>(true, false, true);

var<private> global4: bool = false;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec3<bool>) -> bool {
    let var_0 = Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.a + vec3<f32>(global0.a.x, global1.a.x, _wgslsmith_f_op_f32(global0.a.x * global1.a.x))), vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(671f))), global0.a.x)), global0.d, ((1u ^ (global0.d.b.b.x << (u_input.b % 32u))) >> (~select(4294967295u, u_input.b, false) % 32u)) & ~50864u, global0.b);
    global2 = array<Struct_1, 1>();
    let var_1 = Struct_1(vec2<bool>(any(vec2<bool>(true, true)) || (-global1.d.d < _wgslsmith_add_i32(-2147483647i, 0i)), false), ~(~(~vec3<u32>(u_input.b, 4294967295u, 0u))));
    global2 = array<Struct_1, 1>();
    global0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-global1.a.x), -1904f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(global0.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(531f * global0.a.x), _wgslsmith_f_op_f32(global1.a.x + global0.a.x))), !(-940f < global1.a.x)))), Struct_2(Struct_1(!arg_0.yx, global0.b.a.b), var_1, Struct_1(var_1.a, global0.d.a.b), -1i), ~(~_wgslsmith_clamp_u32(1u, 14054u, u_input.b) ^ ((var_1.b.x >> (u_input.b % 32u)) & firstLeadingBit(var_1.b.x))), var_0.d);
    return false;
}

fn func_3() -> vec3<u32> {
    return global1.b.b.b;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: i32, arg_3: vec4<bool>) -> i32 {
    var var_0 = arg_3.yyy;
    var var_1 = Struct_2(Struct_1(!vec2<bool>(any(vec2<bool>(false, global3.x)), func_2(vec3<bool>(false, arg_0.c.a.x, false))), arg_0.a.b | func_3()), Struct_1(global1.d.c.a, ~global0.d.c.b), global0.d.b, 12585i);
    var var_2 = -(i32(-1i) * -_wgslsmith_clamp_i32(i32(-1i) * -27055i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.d, 2147483647i, u_input.a, 2147483647i), vec4<i32>(u_input.c.x, 2147483647i, global0.b.d, arg_2)), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.b.d, 1i), u_input.c)));
    var_2 = u_input.a;
    global4 = var_1.b.a.x;
    return _wgslsmith_mod_i32(-6135i, arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_sub_i32(_wgslsmith_sub_i32(1i, 347i), min(~func_1(global1.d, vec4<u32>(56145u, 0u, global1.d.b.b.x, global0.c), u_input.c.x, vec4<bool>(global1.d.a.a.x, false, global3.x, true)), max(func_1(Struct_2(Struct_1(vec2<bool>(false, true), vec3<u32>(global1.b.b.b.x, 2767u, 35128u)), Struct_1(vec2<bool>(global0.b.c.a.x, global1.d.b.a.x), global1.d.c.b), Struct_1(vec2<bool>(true, true), global0.b.a.b), -8242i), vec4<u32>(83260u, 1u, u_input.b, 4294967295u), global0.d.d, vec4<bool>(false, global1.b.c.a.x, true, false)), global0.b.d)));
    var var_1 = global0.b.c;
    let var_2 = _wgslsmith_f_op_vec2_f32(global1.a.zz * global1.a.xy);
    let var_3 = Struct_2(Struct_1(global3.yx, select(vec3<u32>(global1.c, global1.b.c.b.x | 36974u, ~global0.b.c.b.x), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, u_input.b, 0u), vec4<u32>(u_input.b, 39513u, var_1.b.x, global0.d.c.b.x)), 43682u, global1.c), !(!vec3<bool>(global0.b.b.a.x, false, false)))), Struct_1(vec2<bool>(true, var_1.a.x), global1.d.c.b), global1.d.b, reverseBits(~(1i >> (global0.d.a.b.x % 32u))) << (global1.b.a.b.x % 32u));
    let var_4 = Struct_2(Struct_1(var_1.a, ~_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(var_1.b, vec3<u32>(u_input.b, 0u, 4294967295u)), global0.b.b.b)), Struct_1(select(vec2<bool>(select(global0.d.c.a.x, global1.b.a.a.x, var_3.c.a.x), true), vec2<bool>(true, true), vec2<bool>(true, true)), countOneBits(abs(vec3<u32>(global1.b.a.b.x, var_3.a.b.x, global0.c) ^ vec3<u32>(87201u, var_1.b.x, global0.b.c.b.x)))), global1.d.c, _wgslsmith_add_i32(38005i, -min(i32(-1i) * -3894i, ~global0.d.d)));
    global0 = Struct_3(global1.a, var_4, global0.c >> (global1.c % 32u), global0.d);
    global3 = vec3<bool>(!all(var_4.c.a), all(!vec4<bool>(select(false, false, true), true, true, func_2(vec3<bool>(var_3.b.a.x, var_1.a.x, global0.d.c.a.x)))), all(select(vec2<bool>(true, true), vec2<bool>(false, true && global0.d.b.a.x), select(!global1.b.c.a, vec2<bool>(true, true), false))));
    var var_5 = Struct_1(vec2<bool>(global0.b.a.a.x, any(vec3<bool>(!var_1.a.x, var_4.b.a.x || var_3.b.a.x, true))), max(vec3<u32>(~28494u, 9813u, 0u) & ~global0.d.b.b, var_3.a.b));
    let var_6 = global1.b.c;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

