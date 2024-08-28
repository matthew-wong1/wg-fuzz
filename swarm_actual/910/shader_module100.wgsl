struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    var var_0 = Struct_1(vec2<bool>(global0.a.x, true), _wgslsmith_clamp_i32(~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-2147483647i, -14855i, global0.b)), vec3<i32>(-17980i, global0.b, global0.b) << (u_input.b % vec3<u32>(32u))), ~45151i, ~5583i), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-575f, arg_0.x)), 558f)), _wgslsmith_f_op_f32(-300f - _wgslsmith_f_op_f32(step(260f, global0.c.x))), -235f, _wgslsmith_f_op_f32(f32(-1f) * -371f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.x, -1438f, 1000f, -650f), vec4<f32>(global0.c.x, arg_0.x, -2386f, arg_0.x))), vec4<f32>(arg_0.x, -259f, arg_0.x, global0.c.x), any(vec2<bool>(global0.a.x, global0.a.x)))) * vec4<f32>(-1000f, _wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(arg_0.x - -783f)))));
    return -482f;
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: bool, arg_3: bool) -> f32 {
    var var_0 = Struct_1(vec2<bool>(!global0.a.x, false), arg_1, vec4<f32>(-554f, _wgslsmith_f_op_f32(func_3(global0.c.ywz)), global0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-232f)) * _wgslsmith_f_op_f32(global0.c.x + 133f))));
    var var_1 = Struct_1(global0.a, ~global0.b, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_0.c.x, var_0.c.x)))), 1074f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x))))));
    var var_2 = ~0i;
    var var_3 = u_input.b.yy;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(283f + global0.c.x));
}

fn func_1() -> Struct_1 {
    global0 = Struct_1(vec2<bool>(all(!(!vec4<bool>(global0.a.x, true, true, global0.a.x))), true), _wgslsmith_div_i32((_wgslsmith_div_i32(u_input.a, u_input.a) >> (u_input.b.x % 32u)) >> (_wgslsmith_sub_u32(~u_input.c, u_input.c) % 32u), global0.b << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 61102u, 4294967295u), u_input.b << (vec3<u32>(67160u, 0u, 0u) % vec3<u32>(32u))) % 32u)), _wgslsmith_f_op_vec4_f32(-global0.c));
    global0 = Struct_1(global0.a, u_input.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(-105f, global0.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec3<bool>(global0.a.x, global0.a.x, false), u_input.a, global0.a.x, global0.a.x)), -2175f), 1000f) * global0.c));
    var var_0 = Struct_1(vec2<bool>(!global0.a.x, any(select(!vec3<bool>(global0.a.x, true, false), !vec3<bool>(false, global0.a.x, global0.a.x), true))), -_wgslsmith_clamp_i32(-33620i, _wgslsmith_div_i32(-2147483647i, u_input.a << (1u % 32u)), -global0.b << (_wgslsmith_add_u32(1u, 0u) % 32u)), _wgslsmith_div_vec4_f32(global0.c, global0.c));
    var_0 = Struct_1(!global0.a, -72603i, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.c.x + _wgslsmith_f_op_f32(-global0.c.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-var_0.c.x), true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.c.x))), _wgslsmith_div_f32(global0.c.x, _wgslsmith_f_op_f32(-global0.c.x))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.c + vec4<f32>(var_0.c.x, var_0.c.x, -129f, -1441f)))))));
    var var_1 = Struct_1(!vec2<bool>(all(select(vec4<bool>(false, false, true, false), vec4<bool>(global0.a.x, false, true, true), vec4<bool>(false, true, true, false))), u_input.b.x < min(1u, u_input.b.x)), global0.b, _wgslsmith_f_op_vec4_f32(-global0.c));
    return Struct_1(select(select(vec2<bool>(all(var_0.a), false), select(!global0.a, vec2<bool>(true, var_0.a.x), select(global0.a, vec2<bool>(var_1.a.x, global0.a.x), false)), select(!var_0.a, select(vec2<bool>(false, false), vec2<bool>(true, false), global0.a), var_0.a)), vec2<bool>(true, var_0.a.x), abs(~35341u) > u_input.b.x), 57803i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.c) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.c * var_0.c), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, 453f, -1000f, 702f))))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-global0.c);
    var var_1 = Struct_1(func_1().a, i32(-1i) * -(arg_2.x & abs(arg_2.x)), vec4<f32>(global0.c.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_0)))), global0.c.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, arg_0) * _wgslsmith_f_op_f32(trunc(310f)))));
    var var_2 = _wgslsmith_f_op_f32(-arg_1.c.x) != _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c.x, 1853f));
    let var_3 = _wgslsmith_dot_vec3_i32(~arg_2, vec3<i32>(-1i) * -(arg_2 << (vec3<u32>(u_input.c, u_input.b.x, 4294967295u) % vec3<u32>(32u))));
    global0 = arg_1;
    return Struct_1(vec2<bool>(true, !(true | !arg_1.a.x)), -(~(-31862i) >> ((20513u | u_input.c) % 32u)) >> (_wgslsmith_mult_u32(~4294967295u, _wgslsmith_clamp_u32(u_input.c, u_input.c, u_input.b.x) << (u_input.b.x % 32u)) % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(global0.c.x, func_1(), -_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(-18341i, global0.b, u_input.d), abs(vec3<i32>(38401i, global0.b, global0.b))), firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, -2147483647i, 325i), vec3<i32>(global0.b, global0.b, global0.b)))));
    let var_1 = !vec3<bool>(global0.a.x, true, ~select(1u, 4294967295u, var_0.a.x) != u_input.b.x);
    let var_2 = Struct_1(func_1().a, 1i, func_4(global0.c.x, Struct_1(vec2<bool>(true, true), _wgslsmith_div_i32(_wgslsmith_mult_i32(0i, var_0.b), _wgslsmith_clamp_i32(var_0.b, -4613i, u_input.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.c * global0.c) - _wgslsmith_div_vec4_f32(vec4<f32>(global0.c.x, 512f, var_0.c.x, 1966f), vec4<f32>(global0.c.x, global0.c.x, global0.c.x, 867f)))), reverseBits(firstLeadingBit(vec3<i32>(var_0.b, 16054i, u_input.a)))).c);
    global0 = Struct_1(func_1().a, -28565i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(global0.c, _wgslsmith_f_op_vec4_f32(var_2.c * var_0.c)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.c.x, var_2.c.x, var_2.c.x, -1128f)))))))));
    let var_3 = abs(u_input.b.yy ^ vec2<u32>(reverseBits(u_input.b.x), u_input.b.x));
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(global0.c.yzy - vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1960f), var_4.c.x)), 2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x)) + _wgslsmith_f_op_f32(var_4.c.x - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.c.x))))));
}

