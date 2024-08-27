struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_2;

var<private> global2: vec3<i32>;

var<private> global3: bool;

var<private> global4: f32 = -1519f;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    let var_0 = global0.c;
    let var_1 = Struct_1(countOneBits(~vec3<i32>(global2.x, -1i, global2.x) | global0.b.wwy), ~global0.d.b);
    return global0.e;
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.c, global0.c, arg_0, arg_0))))));
    return !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(true, any(vec3<bool>(true, false, true)), all(vec4<bool>(true, false, false, false)))));
}

fn func_1() -> StorageBuffer {
    global4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1183f)));
    global4 = global0.c;
    var var_0 = Struct_3(1u, firstTrailingBit(global0.b), _wgslsmith_f_op_f32(ceil(-2366f)), Struct_1(vec3<i32>(_wgslsmith_mod_i32(-2147483647i, _wgslsmith_add_i32(-13217i, 15415i)), 0i, _wgslsmith_clamp_i32(select(global2.x, global0.b.x, true), -1i, global2.x)), vec4<u32>(~1u, 3441u, _wgslsmith_sub_u32(global0.a, ~global0.d.b.x), ~u_input.a.x)), global0.e);
    let var_1 = -global0.b.x;
    var var_2 = all(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !func_3(1610f, func_2(var_0.e, Struct_1(vec3<i32>(0i, var_1, 2147483647i), vec4<u32>(global1.a.x, 4294967295u, global1.a.x, 13691u)), var_0.e)), true));
    return StorageBuffer(-980f, max(-reverseBits(vec4<i32>(14367i, 2147483647i, 2147483647i, var_1)), vec4<i32>(44676i, 2147483647i, -(~global0.b.x), global0.b.x)), var_0.d.a.x, var_0.e.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_u32(global0.d.b.wxz, vec3<u32>(u_input.a.x, 0u, (u_input.a.x & ~global0.a) | ~1u));
    var var_1 = Struct_2(_wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(~global1.a.x, u_input.a.x)), max(~vec2<u32>(var_0.x, 76507u), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 76829u), ~global1.a))));
    let var_2 = vec3<bool>(false, 43530u != global1.a.x, true);
    var_1 = global0.e;
    let var_3 = -firstTrailingBit(-global2.x);
    let var_4 = global1.a;
    var var_5 = select(_wgslsmith_mod_vec3_u32(vec3<u32>(max(1u, u_input.a.x), 48342u, ~1u), vec3<u32>(_wgslsmith_mult_u32(~global1.a.x, ~var_4.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 1u, global1.a.x), vec3<u32>(var_4.x, 0u, global1.a.x)) ^ 4294967295u, global0.a)), vec3<u32>(global1.a.x, ~(~40939u), u_input.a.x), true);
    let x = u_input.a;
    s_output = func_1();
}

