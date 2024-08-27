struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: i32,
    c: vec4<bool>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: Struct_3;

var<private> global2: array<u32, 13>;

var<private> global3: array<f32, 25>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1() -> vec2<u32> {
    global2 = array<u32, 13>();
    return global1.a;
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec4<bool> {
    global1 = Struct_3(abs(vec2<u32>(~arg_0.b, ~53116u)), select(u_input.d, vec2<i32>(-4669i, _wgslsmith_dot_vec2_i32(global1.b, global1.b) << ((1u >> (0u % 32u)) % 32u)), !vec2<bool>(arg_0.a, all(vec2<bool>(arg_1, global0.x)))), global1.c);
    let var_0 = arg_0.c.x;
    let var_1 = 5539i;
    global3 = array<f32, 25>();
    global2 = array<u32, 13>();
    return !select(select(!select(vec4<bool>(arg_0.c.x, false, false, false), vec4<bool>(false, true, global1.c.c.x, true), true), select(vec4<bool>(true, true, arg_0.a, true), !vec4<bool>(false, false, true, var_0), !arg_0.a), vec4<bool>(any(vec2<bool>(false, true)), false, false, global1.c.a)), select(vec4<bool>(arg_0.c.x | false, arg_0.a || true, 2147483647i != u_input.c, global0.x), !vec4<bool>(true, true, true, arg_1), arg_1), select(select(vec4<bool>(arg_0.a, false, true, global0.x), vec4<bool>(true, true, true, global0.x), vec4<bool>(false, false, false, var_0)), !(!vec4<bool>(false, var_0, var_0, arg_0.a)), vec4<bool>(!arg_0.c.x, false, all(vec2<bool>(arg_1, true)), true)));
}

fn func_2() -> Struct_2 {
    let var_0 = vec4<bool>(!(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-11691i, u_input.c), -1i) != _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, -32139i, -53994i, u_input.d.x), vec4<i32>(-83668i, global1.b.x, global1.b.x, 13718i)), u_input.c)), !(!global1.c.c.x), all(func_3(Struct_1(all(vec2<bool>(global0.x, false)), reverseBits(u_input.a), select(global1.c.c, global1.c.c, global1.c.c), vec2<f32>(global1.c.d.x, global3[_wgslsmith_index_u32(u_input.b, 25u)])), true)), u_input.d.x < 0i);
    var var_1 = Struct_2(Struct_1(global0.x, ~63520u, select(!(!vec2<bool>(var_0.x, global0.x)), var_0.yx, global1.c.c), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global1.c.d - global1.c.d))), global1.c.d, select(select(var_0.ww, var_0.zx, global0.x), vec2<bool>(true, global1.c.c.x), true & global1.c.c.x)))), global1.c, global1.c.d);
    global2 = array<u32, 13>();
    let var_2 = _wgslsmith_div_i32(1i, ~(~_wgslsmith_mult_i32(u_input.c, ~global1.b.x)));
    let var_3 = ~(~u_input.b);
    return Struct_2(Struct_1(false, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, var_1.b.b, global1.c.b), vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(1u, 13u)], u_input.e))), vec2<bool>(true, !(!var_1.b.c.x)), var_1.b.d), Struct_1(all(vec3<bool>(!var_1.a.a, false, var_0.x)), firstLeadingBit(32534u), !select(var_1.a.c, vec2<bool>(false, var_1.a.a), select(vec2<bool>(var_0.x, true), vec2<bool>(true, global1.c.a), vec2<bool>(var_1.a.a, var_0.x))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.c.x)) + 356f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(970f, global1.c.d.x) - _wgslsmith_f_op_f32(var_1.a.d.x - global1.c.d.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, global1.c.d.x)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>) -> vec2<u32> {
    global0 = vec2<bool>(true, arg_0.b.a);
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.x, arg_0.c.x, arg_0.b.d.x, 129f))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(2513f, arg_0.a.d.x, 791f, 1005f), vec4<f32>(global3[_wgslsmith_index_u32(arg_0.b.b, 25u)], 197f, -1188f, -187f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.d.x, global1.c.d.x, arg_1.x, arg_0.a.d.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(17729u, 25u)], global1.c.d.x, 1478f, 1816f) + vec4<f32>(global3[_wgslsmith_index_u32(global1.a.x, 25u)], arg_1.x, arg_0.b.d.x, 897f))))));
    global2 = array<u32, 13>();
    var var_1 = func_2().a;
    return _wgslsmith_add_vec2_u32(abs(vec2<u32>(max(arg_0.b.b, 0u), arg_0.a.b)) & ~vec2<u32>(~var_1.b, ~1u), ~abs(global1.a));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<f32, 25>();
    let var_0 = _wgslsmith_f_op_f32(641f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 25u)]))));
    var var_1 = true;
    global1 = Struct_3(vec2<u32>(18800u, _wgslsmith_add_u32(global1.a.x, ~0u)), vec2<i32>(-46676i, _wgslsmith_dot_vec3_i32(vec3<i32>(max(0i, global1.b.x), ~u_input.d.x, firstLeadingBit(-22476i)), ~vec3<i32>(-1099i, global1.b.x, u_input.d.x))), global1.c);
    var var_2 = Struct_3(global1.a, global1.b, global1.c);
    let x = u_input.a;
    s_output = StorageBuffer(global1.c.d, _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 75494u, 24746u, 1u), vec4<u32>(u_input.a, u_input.e, global2[_wgslsmith_index_u32(36519u, 13u)], 4294967295u))), 25u)])), _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(var_2.a, ~func_1()), func_4(func_2(), _wgslsmith_div_vec3_f32(vec3<f32>(global1.c.d.x, var_2.c.d.x, -193f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, global1.c.d.x, 1000f) * vec3<f32>(var_2.c.d.x, global3[_wgslsmith_index_u32(1u, 25u)], global3[_wgslsmith_index_u32(1u, 25u)]))))));
}

