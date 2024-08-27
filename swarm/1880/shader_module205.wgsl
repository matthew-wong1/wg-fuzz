struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, true, true), vec3<u32>(4294967295u, 4294967295u, 27709u), vec2<f32>(273f, 582f), true);

var<private> global1: i32;

var<private> global2: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec3<bool>) -> vec3<u32> {
    var var_0 = global2.c.x;
    global2 = Struct_1(select(!global0.a, arg_0.a, global2.a), vec3<u32>(_wgslsmith_dot_vec4_u32(select(~vec4<u32>(4294967295u, 0u, 10052u, u_input.a), vec4<u32>(arg_0.b.x, 45811u, 0u, 0u), !arg_3.x), vec4<u32>(_wgslsmith_add_u32(1u, arg_2.b.x), global0.b.x, _wgslsmith_mult_u32(arg_0.b.x, u_input.a), arg_2.b.x)), _wgslsmith_div_u32(_wgslsmith_mod_u32(abs(11891u), 1u << (u_input.a % 32u)), 55062u), ~global0.b.x), vec2<f32>(global0.c.x, global0.c.x), all(select(select(vec3<bool>(false, arg_2.a.x, global2.a.x), vec3<bool>(arg_0.a.x, arg_0.a.x, true), true), vec3<bool>(global0.d, !global0.d, true), vec3<bool>(global0.a.x, false, true))));
    var_0 = -1066f;
    var var_1 = false;
    global0 = arg_0;
    return abs(~arg_2.b);
}

fn func_2() -> Struct_1 {
    return Struct_1(global0.a, global0.b << (~_wgslsmith_sub_vec3_u32(func_3(Struct_1(vec3<bool>(false, global2.d, global0.a.x), vec3<u32>(u_input.a, global0.b.x, global2.b.x), global0.c, true), -1000f, Struct_1(global0.a, vec3<u32>(0u, 1u, global2.b.x), vec2<f32>(-1000f, global2.c.x), false), vec3<bool>(global0.d, global0.d, true)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 33316u, global0.b.x), global0.b)) % vec3<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(238f + _wgslsmith_f_op_f32(ceil(global2.c.x))), global0.c.x), !global2.d);
}

fn func_1(arg_0: u32) -> Struct_1 {
    global0 = func_2();
    var var_0 = vec3<u32>(~0u, _wgslsmith_mult_u32(_wgslsmith_sub_u32((u_input.a >> (15889u % 32u)) >> (~global0.b.x % 32u), 43518u), 0u), 4294967295u);
    let var_1 = _wgslsmith_f_op_vec2_f32(-global2.c);
    var var_2 = -774f;
    let var_3 = -790f;
    return Struct_1(global0.a, vec3<u32>(~31597u, ~(~0u), 0u >> (var_0.x % 32u)), global0.c, true);
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    global0 = func_1(u_input.a);
    var var_0 = arg_1;
    var_0 = Struct_1(vec3<bool>(global2.d, false, !(var_0.a.x & true)), _wgslsmith_clamp_vec3_u32(var_0.b, vec3<u32>(firstTrailingBit(1u), ~u_input.a, ~u_input.a), global0.b), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(arg_1.c, arg_1.c)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_1.c)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2.c.x, global2.c.x), arg_1.c)))), global2.c)), true);
    var var_1 = !vec3<bool>(true, true, arg_1.d);
    var var_2 = Struct_1(select(func_2().a, vec3<bool>(var_0.b.x <= ~global0.b.x, true, global0.d), select(global2.a, func_1(global0.b.x | 1u).a, true)), (~(var_0.b | var_0.b) & global2.b) | global0.b, _wgslsmith_f_op_vec2_f32(arg_1.c - func_1(1u).c), true);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(-2147483647i, func_1(_wgslsmith_mod_u32(10140u, global0.b.x)));
    global2 = func_2();
    var var_1 = _wgslsmith_sub_vec3_i32(abs(-vec3<i32>(-54360i, 1i, 18162i)), vec3<i32>(1i, 1i, 1i)) ^ select(-(~(-vec3<i32>(1i, -2147483647i, 0i))), vec3<i32>(select(1i, ~(-11005i), global2.c.x == var_0.c.x), _wgslsmith_div_i32(~(-13285i), 5562i), ~(~(-35025i))), var_0.a);
    var var_2 = false;
    global0 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(0u, vec4<f32>(_wgslsmith_div_f32(-1529f, -227f), _wgslsmith_f_op_f32(ceil(var_0.c.x)), global0.c.x, -402f), abs(-abs(firstTrailingBit(var_1.xx))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, 103f, global0.c.x, 1032f) * vec4<f32>(global0.c.x, 1045f, 1000f, -308f))))))));
}

