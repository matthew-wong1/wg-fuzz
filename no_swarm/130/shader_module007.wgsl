struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<i32>, 13>;

var<private> global2: Struct_3 = Struct_3(10525u, 57803u, 2543u, false);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = select(~0u, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(27563u, 16320u), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, global2.a), global0.c.a.zx)) & 1u, global0.b.x);
    let var_1 = ~(~global0.c.c);
    let var_2 = Struct_3(_wgslsmith_dot_vec3_u32(global0.c.b, select(~(vec3<u32>(3558u, 1u, 45121u) << (global0.c.b % vec3<u32>(32u))), ~vec3<u32>(global0.c.a.x, global2.a, 14304u), global0.b.x)), 0u, 64653u >> (select(1u, firstLeadingBit(global2.a), !any(vec3<bool>(true, false, false))) % 32u), !any(vec2<bool>(!global0.b.x, true)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-934f + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global0.c.d.x, global0.c.d.x)))))) * global0.c.d.x);
    var_0 = abs(countOneBits(~var_2.c));
    return -2147483647i;
}

fn func_2() -> Struct_2 {
    let var_0 = global0.c;
    var var_1 = var_0.d.x;
    let var_2 = Struct_1(var_0.a, ~var_0.b, func_3(), _wgslsmith_f_op_vec4_f32(-var_0.d), select(global0.c.e, abs(~global0.c.e), vec4<bool>(all(select(vec2<bool>(true, global2.d), global0.b, global0.b)), any(vec2<bool>(global0.b.x, global2.d)), any(vec2<bool>(global2.d, true)), 1525f > global0.c.d.x)));
    global1 = array<vec2<i32>, 13>();
    global1 = array<vec2<i32>, 13>();
    return Struct_2(~(~vec2<i32>(1i & global0.a.x, var_2.c)), vec2<bool>(global2.d, all(vec4<bool>(true, true, true, true))), Struct_1(firstTrailingBit(vec3<u32>(138444u, 99774u, u_input.b) | var_0.a), select(_wgslsmith_div_vec3_u32(vec3<u32>(1u, global2.a, 56947u), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.b.x, 4294967295u, 1u), var_2.a, vec3<u32>(var_0.a.x, 1u, 4294967295u))), abs(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.b.x, u_input.b, u_input.b), vec3<u32>(var_0.b.x, 1u, 0u))), select(select(vec3<bool>(global2.d, global0.b.x, false), vec3<bool>(global0.b.x, true, global0.b.x), vec3<bool>(global2.d, global0.b.x, global2.d)), select(vec3<bool>(global2.d, global0.b.x, false), vec3<bool>(global0.b.x, false, global0.b.x), vec3<bool>(global2.d, global0.b.x, true)), vec3<bool>(global2.d, global2.d, global2.d))), -2147483647i, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(global0.c.d - _wgslsmith_f_op_vec4_f32(global0.c.d + global0.c.d)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(465f, global0.c.d.x, -562f, -808f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-625f, -210f, 1297f, 228f) + vec4<f32>(var_2.d.x, var_2.d.x, global0.c.d.x, global0.c.d.x))))), -_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(var_2.e, vec4<i32>(u_input.a.x, u_input.c.x, -10153i, 2147483647i), u_input.a), ~var_2.e, u_input.a)));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_div_vec4_i32(u_input.a, ~firstTrailingBit(firstTrailingBit(global0.c.e)));
    let var_1 = func_2();
    global0 = func_2();
    var var_2 = Struct_4(!(global2.a >= var_1.c.a.x), global0.c.a ^ func_2().c.b);
    let var_3 = func_2();
    return var_0.x & abs(max(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(11430i, -48250i), var_1.a)), ~var_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = vec4<i32>(u_input.c.x, _wgslsmith_div_i32(func_1(), u_input.c.x), global0.c.c, -1i);
    var var_2 = global0.c.d.x;
    var var_3 = global0.c;
    var var_4 = var_3.a.x;
    var var_5 = ~(~vec3<u32>(var_3.b.x, global2.b, 1u));
    var var_6 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_6.d.x, var_3.d.x) - var_6.d.zyw), ~vec4<u32>(1u, var_5.x, countOneBits(var_6.b.x), func_2().c.b.x) ^ ~vec4<u32>(_wgslsmith_mult_u32(8889u, 0u), u_input.d, min(89818u, 4294967295u), ~35314u));
}

