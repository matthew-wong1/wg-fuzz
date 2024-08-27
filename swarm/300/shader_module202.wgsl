struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: f32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> vec2<f32> {
    var var_0 = abs(-u_input.d.zxw);
    var_0 = vec3<i32>(-28530i, firstLeadingBit(var_0.x), select(2147483647i, 0i, select(all(vec2<bool>(true, true)), true, false)));
    var_0 = vec3<i32>(-37042i, ~2147483647i, var_0.x);
    global0 = vec2<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-210f * -1452f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - global0.x) * 1657f)) * global0.x));
    return _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1326f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -461f)))));
}

fn func_2() -> Struct_2 {
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -190f) * vec2<f32>(global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.x, global0.x), vec2<f32>(-312f, 1442f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-686f, -626f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(238f, global0.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(959f, 851f) - _wgslsmith_f_op_vec2_f32(func_3(1u))))), vec2<bool>(all(!select(vec2<bool>(false, false), vec2<bool>(true, true), true)), true)));
    var var_0 = Struct_3(u_input.d.x, vec2<bool>(false, !any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)))), Struct_2(Struct_1(u_input.d.x, vec2<bool>(true, true))), Struct_1(u_input.e.x, vec2<bool>(true, true)), global0.x);
    let var_1 = vec2<bool>(all(vec3<bool>(!(!var_0.d.b.x), true, var_0.e < _wgslsmith_div_f32(-1432f, var_0.e))), false);
    let var_2 = u_input.c;
    var var_3 = global0.x;
    return var_0.c;
}

fn func_4(arg_0: Struct_2) -> f32 {
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(269f, global0.x) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1347f, global0.x))))), vec2<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -2445f)));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-444f - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0.x, global0.x)))), _wgslsmith_f_op_f32(select(-3163f, global0.x, arg_0.a.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.x)) + _wgslsmith_f_op_f32(-global0.x)));
    var var_0 = abs(max(u_input.d, _wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.e.x, 2147483647i, arg_0.a.a), vec4<i32>(2147483647i, 38862i, u_input.d.x, -53004i)) >> (select(vec4<u32>(1u, 1u, 1u, 0u), vec4<u32>(u_input.a.x, u_input.c.x, u_input.b, 1u), vec4<bool>(true, true, arg_0.a.b.x, false)) % vec4<u32>(32u)))) << (~(~(~vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.a.x))) % vec4<u32>(32u));
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, _wgslsmith_f_op_f32(abs(-1377f))));
    var var_1 = !any(select(!vec2<bool>(true, arg_0.a.b.x), vec2<bool>(all(vec4<bool>(true, arg_0.a.b.x, true, arg_0.a.b.x)), false), _wgslsmith_f_op_f32(-global0.x) != _wgslsmith_f_op_f32(-1673f * global0.x)));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-560f - _wgslsmith_f_op_f32(trunc(global0.x)))))), global0.x, !any(func_2().a.b) || (_wgslsmith_dot_vec4_i32(u_input.d, u_input.d) <= u_input.e.x)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_5) -> f32 {
    let var_0 = !(!(!select(!arg_0.b, arg_0.b, arg_0.b)));
    global0 = vec2<f32>(arg_1.a, _wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(-global0.x)));
    var var_1 = arg_1.b.x;
    var var_2 = all(select(!vec4<bool>(!var_0.x, arg_1.a >= arg_1.a, false, var_0.x), !vec4<bool>(true, false, !var_0.x, false), !(arg_0.b.x | arg_0.b.x) & any(!vec4<bool>(arg_0.b.x, var_0.x, var_0.x, true))));
    var_1 = max(~arg_1.b.x, u_input.b);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(func_2())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1809f, global0.x)) * _wgslsmith_f_op_f32(max(-930f, arg_1.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-236f, -727f)))) * vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-294f + global0.x))), _wgslsmith_f_op_f32(func_1(Struct_1(-7922i, vec2<bool>(false, false)), Struct_5(global0.x, vec3<u32>(15748u, u_input.b, 4294967295u), u_input.e))))));
    var var_0 = func_2().a;
    var_0 = Struct_1(_wgslsmith_sub_i32(var_0.a, _wgslsmith_mult_i32(abs(_wgslsmith_clamp_i32(var_0.a, 48146i, -10818i)), -11710i)), var_0.b);
    var var_1 = func_2().a;
    var_1 = Struct_1(var_0.a, vec2<bool>(var_1.b.x, !func_2().a.b.x));
    let var_2 = ~vec3<u32>(53900u, select(select(u_input.a.x, _wgslsmith_sub_u32(33029u, u_input.c.x), global0.x > -138f), _wgslsmith_sub_u32(u_input.b, u_input.a.x), var_1.b.x), ~0u >> (_wgslsmith_sub_u32(u_input.c.x, 4294967295u >> (u_input.a.x % 32u)) % 32u));
    var_0 = Struct_1(var_1.a, func_2().a.b);
    let x = u_input.a;
    s_output = StorageBuffer(-(vec3<i32>(~57147i, -13487i & var_0.a, max(var_0.a, -1i)) ^ firstTrailingBit(vec3<i32>(var_0.a, var_0.a, var_0.a))), abs(0u), var_1.a, var_2.x, var_2.x);
}

