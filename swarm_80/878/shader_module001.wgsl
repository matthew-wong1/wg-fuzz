struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_3,
    d: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: Struct_4,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 21>;

var<private> global1: array<vec2<f32>, 1>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<u32>) -> f32 {
    var var_0 = (!any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), true)) || false) | any(vec4<bool>(true, false, any(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), true));
    global1 = array<vec2<f32>, 1>();
    let var_1 = firstTrailingBit(firstLeadingBit(arg_1));
    var_0 = true;
    global1 = array<vec2<f32>, 1>();
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1972f)), _wgslsmith_f_op_f32(858f * -1357f))) * -1770f))));
}

fn func_2(arg_0: f32) -> Struct_1 {
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(reverseBits(~vec4<i32>(u_input.a, u_input.a, 1i, u_input.a)), select(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, 0u, 29385u), vec3<u32>(1u, u_input.b, u_input.c)), vec3<u32>(1u, 8647u, 44887u), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0)))))), false, 119f, select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(!any(vec2<bool>(true, false)), any(vec3<bool>(true, true, false)), true), u_input.c >= ~4294967295u), _wgslsmith_div_i32(2147483647i, countOneBits(-u_input.a)) > _wgslsmith_mod_i32(_wgslsmith_div_i32(-6409i, -40059i), ~u_input.a));
}

fn func_1() -> Struct_3 {
    global1 = array<vec2<f32>, 1>();
    var var_0 = ~select(~(~vec3<u32>(u_input.c, 1u, u_input.b)) ^ _wgslsmith_add_vec3_u32(vec3<u32>(7766u, u_input.b, 45013u), vec3<u32>(35225u, 1u, 0u)), _wgslsmith_mult_vec3_u32(~(vec3<u32>(0u, 1u, u_input.c) ^ vec3<u32>(u_input.d, u_input.b, 15558u)), vec3<u32>(firstTrailingBit(17251u), 55473u, abs(u_input.d))), true);
    let var_1 = Struct_2(vec3<u32>(30987u, 11313u, _wgslsmith_add_u32(countOneBits(~var_0.x), max(abs(u_input.c), 38232u >> (u_input.d % 32u)))), func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1700f - 258f)), _wgslsmith_f_op_f32(-600f + 325f))), Struct_1(_wgslsmith_f_op_f32(select(1f, 1203f, !func_2(3081f).e)), any(vec3<bool>(all(vec4<bool>(false, true, false, false)), true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -952f))), vec3<bool>(true, true, true), !(_wgslsmith_add_u32(var_0.x, 39706u) < firstLeadingBit(u_input.d))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<i32>(u_input.a, u_input.a, u_input.a, -3630i), var_1.a))), 1231f)));
    let var_3 = var_1.c.b;
    return Struct_3(!vec3<bool>(!var_3, !any(vec4<bool>(var_1.c.e, var_3, true, false)), var_1.c.d.x), !(!var_1.b.d), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -785f), select(any(var_1.c.d), any(select(var_1.b.d.zz, var_1.c.d.zx, var_1.b.b)), all(select(vec4<bool>(var_1.b.e, false, false, var_1.c.d.x), vec4<bool>(var_1.c.d.x, false, var_3, true), vec4<bool>(var_1.b.b, false, false, false)))), -403f, func_2(_wgslsmith_f_op_f32(min(-1354f, _wgslsmith_f_op_f32(f32(-1f) * -1490f)))).d, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.c.c, 1800f, _wgslsmith_f_op_f32(-var_0.c.a))))), -vec3<i32>(reverseBits(_wgslsmith_add_i32(-2147483647i, 2147483647i)), 1i, -(~u_input.a)));
}

