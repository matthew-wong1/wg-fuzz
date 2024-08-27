struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: Struct_2,
    d: Struct_3,
    e: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 8>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = Struct_2(-14028i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f))));
    return Struct_2(u_input.d.x, var_0.b);
}

fn func_3(arg_0: bool, arg_1: vec2<f32>) -> bool {
    var var_0 = Struct_3(false, Struct_2(u_input.d.x, arg_1.x), Struct_2(u_input.b.x, _wgslsmith_f_op_f32(-arg_1.x)));
    global0 = array<vec2<i32>, 8>();
    var var_1 = -34144i;
    var var_2 = all(vec4<bool>(any(!select(vec4<bool>(true, arg_0, false, var_0.a), vec4<bool>(false, true, arg_0, arg_0), vec4<bool>(arg_0, true, arg_0, var_0.a))), var_0.a, all(select(select(vec4<bool>(var_0.a, true, var_0.a, true), vec4<bool>(arg_0, arg_0, var_0.a, false), vec4<bool>(arg_0, true, true, false)), vec4<bool>(true, true, true, true), true)), true));
    var var_3 = Struct_5(Struct_3(!all(select(vec3<bool>(true, var_0.a, var_0.a), vec3<bool>(var_0.a, true, var_0.a), var_0.a)), var_0.b, func_2(arg_1.x)), Struct_3(var_0.a, Struct_2(-8544i, -1103f), Struct_2(_wgslsmith_sub_i32(0i, select(21752i, var_0.b.a, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * var_0.c.b))), var_0.a, _wgslsmith_mod_i32(~_wgslsmith_sub_i32(-1i, firstLeadingBit(u_input.c)), _wgslsmith_dot_vec3_i32(min(vec3<i32>(5151i, u_input.a.x, var_0.b.a), vec3<i32>(1i, var_0.c.a, var_0.c.a)) ^ _wgslsmith_mult_vec3_i32(u_input.b, vec3<i32>(var_0.c.a, u_input.b.x, var_0.c.a)), (u_input.b << (vec3<u32>(u_input.e, 19032u, 21464u) % vec3<u32>(32u))) ^ vec3<i32>(0i, -44950i, 2147483647i))));
    return false;
}

fn func_1(arg_0: u32, arg_1: u32) -> Struct_1 {
    global0 = array<vec2<i32>, 8>();
    var var_0 = firstLeadingBit(u_input.b);
    let var_1 = Struct_4(0u, -547f, func_2(698f), Struct_3(func_3(any(vec4<bool>(false, true, true, true)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(929f, -318f), vec2<f32>(896f, -469f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(919f, 1313f)), true))), Struct_2(-2147483647i, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1640f, 131f)))), func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -329f), -238f, all(vec2<bool>(true, true)))))), var_0.x);
    global0 = array<vec2<i32>, 8>();
    var_0 = -(~min(select(vec3<i32>(var_0.x, u_input.d.x, 1i), -vec3<i32>(var_1.c.a, 2147483647i, -2147483647i), vec3<bool>(true, var_1.d.a, var_1.d.a)), vec3<i32>(u_input.c, var_1.e | var_1.e, -1i)));
    return Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(691f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1196f)))), var_1.d.c.b, var_1.c.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(170f, var_1.d.c.b, -647f, var_1.b)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.d.b.b, var_1.c.b, var_1.d.b.b, -1965f)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b, var_1.d.c.b, var_1.c.b, 441f), vec4<f32>(var_1.b, 2024f, 128f, var_1.c.b))))), select(vec4<bool>(true, true && var_1.d.a, true, false), vec4<bool>(any(vec2<bool>(var_1.d.a, true)), true, true, true), select(select(vec4<bool>(var_1.d.a, true, var_1.d.a, false), vec4<bool>(var_1.d.a, true, true, true), true), !vec4<bool>(var_1.d.a, true, var_1.d.a, var_1.d.a), select(vec4<bool>(false, var_1.d.a, var_1.d.a, var_1.d.a), vec4<bool>(true, true, false, var_1.d.a), vec4<bool>(true, false, var_1.d.a, true)))))), ~u_input.e ^ 1u, 1f, -_wgslsmith_div_vec3_i32(-abs(u_input.b), vec3<i32>(var_0.x, _wgslsmith_dot_vec3_i32(u_input.b, u_input.b), reverseBits(var_0.x))), var_1.c.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.e, u_input.e);
    var var_1 = Struct_3(var_0.c < _wgslsmith_f_op_f32(1000f - 1319f), func_2(func_1(func_1(29817u, var_0.b).b, var_0.b).c), Struct_2(firstTrailingBit(35175i), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-var_0.e))));
    let var_2 = countOneBits(abs(~_wgslsmith_div_vec2_u32(~vec2<u32>(0u, var_0.b), ~vec2<u32>(29789u, 1u))));
    let var_3 = Struct_5(Struct_3(true, Struct_2(u_input.d.x, _wgslsmith_f_op_f32(675f + _wgslsmith_f_op_f32(exp2(var_1.c.b)))), Struct_2(-var_1.b.a >> ((0u << (var_0.b % 32u)) % 32u), _wgslsmith_f_op_f32(203f + _wgslsmith_f_op_f32(-var_0.e)))), Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.c.b))) <= _wgslsmith_f_op_f32(-695f - -693f), Struct_2(-10626i, 385f), var_1.b), _wgslsmith_f_op_f32(-var_0.c) > _wgslsmith_f_op_f32(abs(936f)), _wgslsmith_sub_i32(var_1.c.a, func_1(~1u, u_input.e).d.x));
    let var_4 = Struct_3(all(vec2<bool>(var_3.c, true)), func_2(2324f), var_1.c);
    var_1 = var_4;
    var var_5 = !vec4<bool>(var_4.a, !(any(vec3<bool>(true, false, false)) || true), any(!vec3<bool>(false, false, var_3.a.a)), all(select(vec4<bool>(false, var_3.c, true, var_4.a), vec4<bool>(var_1.a, true, true, true), vec4<bool>(var_4.a, false, false, var_1.a))));
    var var_6 = Struct_4(var_0.b, _wgslsmith_f_op_f32(-var_0.c), var_1.b, Struct_3(var_3.a.a, Struct_2(-19670i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.b.b))), func_2(var_0.a.x)), _wgslsmith_div_i32(abs(_wgslsmith_add_i32(_wgslsmith_div_i32(var_0.d.x, 1i), -33616i)), u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~var_0.d.x, _wgslsmith_mult_i32(_wgslsmith_sub_i32(var_4.b.a, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, u_input.a.x), u_input.b)), _wgslsmith_add_i32(-1i, _wgslsmith_div_i32(u_input.b.x, u_input.a.x)))), 26878i, ~firstLeadingBit(~vec3<u32>(var_6.a, 1u, var_0.b)));
}

