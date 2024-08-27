struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: f32,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_4 = Struct_4(vec2<f32>(-330f, -331f), -1269f, Struct_1(1104f), Struct_3(vec2<bool>(true, false), Struct_1(-438f), vec4<i32>(0i, -12840i, -1i, 4189i)));

var<private> global2: array<bool, 23> = array<bool, 23>(true, true, false, false, false, false, true, true, false, true, true, true, true, true, true, false, false, true, false, true, true, false, false);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.a) - _wgslsmith_f_op_f32(step(global1.a.x, global1.a.x)))))));
    global0 = global2[_wgslsmith_index_u32(~51809u, 23u)];
    var var_1 = Struct_3(global1.d.a, global1.d.b, global1.d.c);
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-217f, 271f));
    let var_3 = vec3<i32>(-1i) * -min(vec3<i32>(u_input.b.x, global1.d.c.x, -global1.d.c.x), ~vec3<i32>(var_1.c.x, global1.d.c.x, 5454i));
    return Struct_4(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global1.d.b.a)))), _wgslsmith_f_op_f32(f32(-1f) * -197f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, 628f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-300f, global1.c.a) - _wgslsmith_f_op_vec2_f32(select(global1.a, global1.a, false)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(133f + 534f)), -1371f)), var_2.x), Struct_1(_wgslsmith_f_op_f32(-global1.d.b.a)), global1.d);
}

fn func_1() -> Struct_4 {
    let var_0 = global1.d;
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-982f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)))), _wgslsmith_f_op_f32(-var_0.b.a), Struct_1(-2928f), global1.d);
    global0 = true;
    let var_2 = -1245f;
    var var_3 = !(!var_0.a);
    return func_2();
}

fn func_3() -> Struct_4 {
    var var_0 = global1.d;
    var var_1 = global1.d;
    var var_2 = func_2().d.b;
    let var_3 = !select(vec3<bool>(false, true, _wgslsmith_f_op_f32(round(var_0.b.a)) > 965f), !select(vec3<bool>(false, var_0.a.x, true), !vec3<bool>(false, global1.d.a.x, true), var_1.a.x), select(true, global2[_wgslsmith_index_u32(41288u, 23u)], global2[_wgslsmith_index_u32(7621u, 23u)] & global1.d.a.x) && func_1().d.a.x);
    global1 = func_2();
    return Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.a, 1000f) + vec2<f32>(var_2.a, var_0.b.a)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(119f, -265f) * global1.a)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(global1.a))))))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -367f)), global1.a.x), -222f)), func_2().c, Struct_3(!var_0.a, func_2().c, var_1.c));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    global1 = func_3();
    let var_0 = global1.d.a.x;
    let var_1 = ~(~min(~min(0u, 86593u), 4294967295u));
    var var_2 = abs(abs(_wgslsmith_mult_vec2_u32(select(vec2<u32>(var_1, var_1), vec2<u32>(var_1, 27794u), global1.d.a), vec2<u32>(var_1, 15697u))) >> (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(-(u_input.b << ((vec2<u32>(1u, 0u) & vec2<u32>(var_1, var_2.x)) % vec2<u32>(32u))), vec2<i32>(~_wgslsmith_clamp_i32(1i, -1i, global1.d.c.x), u_input.c >> (~var_2.x % 32u))), vec2<u32>(90707u, var_1) | select(~countOneBits(vec2<u32>(var_2.x, 1u)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(var_2.x, 20396u), vec2<u32>(31855u, var_2.x)), !vec2<bool>(true, global2[_wgslsmith_index_u32(var_2.x, 23u)])), ~abs(~(vec3<u32>(var_2.x, 16736u, 46206u) ^ vec3<u32>(17419u, var_1, 13023u))), _wgslsmith_mult_vec3_u32(min(vec3<u32>(abs(4294967295u), var_2.x, _wgslsmith_div_u32(var_2.x, var_2.x)), vec3<u32>(var_2.x, var_2.x, var_1)), ~vec3<u32>(_wgslsmith_add_u32(1u, 1u), ~37058u, var_2.x)), ~vec4<u32>(_wgslsmith_clamp_u32(var_2.x >> (47782u % 32u), 1u, select(var_2.x, var_1, global1.d.a.x)), max(1u, var_1) & var_2.x, _wgslsmith_clamp_u32(0u ^ var_1, min(10468u, var_2.x), var_2.x ^ 0u), ~12031u));
}

