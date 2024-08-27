struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: vec4<i32>, arg_3: f32) -> u32 {
    let var_0 = Struct_1(~(~(~reverseBits(global0.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.d, 760f)))), arg_3, _wgslsmith_f_op_f32(min(1f, global0.b)), !global0.e);
    global0 = Struct_1(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(arg_2.x, ~2147483647i), _wgslsmith_mod_i32(u_input.c.x, _wgslsmith_dot_vec3_i32(arg_2.zxx, arg_2.zwx))), -var_0.a.x), 350f, -107f, 176f, true);
    global0 = Struct_1(var_0.a, _wgslsmith_f_op_f32(-999f + _wgslsmith_f_op_f32(floor(var_0.d))), 1261f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -669f) * 1000f), any(vec2<bool>(_wgslsmith_div_f32(global0.b, arg_3) > _wgslsmith_div_f32(524f, var_0.c), arg_0.x)));
    global0 = var_0;
    let var_1 = var_0;
    return u_input.e;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = 46868i;
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(106f, global0.c, -666f) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, -180f, 1870f)) + vec3<f32>(_wgslsmith_f_op_f32(-arg_0.d), global0.d, _wgslsmith_f_op_f32(-871f - -157f))))));
    var var_2 = ~func_3(!(!(!vec2<bool>(global0.e, true))), true && all(vec3<bool>(arg_0.e, arg_0.e, global0.e)), vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(var_0, 3389i)), -19407i, 29464i, ~(~2147483647i)), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-423f)) + -1234f)));
    global0 = Struct_1(abs(select(global0.a, _wgslsmith_div_vec2_i32(-arg_0.a, _wgslsmith_sub_vec2_i32(vec2<i32>(2478i, -2147483647i), vec2<i32>(-2147483647i, global0.a.x))), vec2<bool>(true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -485f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-816f + -1102f), _wgslsmith_f_op_f32(-arg_0.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.x, global0.b)) + _wgslsmith_f_op_f32(-1601f - 298f)))), -1409f, false);
    var var_3 = u_input.e;
    return arg_0;
}

fn func_1() -> Struct_1 {
    global0 = func_2(Struct_1(vec2<i32>(i32(-1i) * -9788i, 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), _wgslsmith_f_op_f32(1481f + _wgslsmith_f_op_f32(trunc(236f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2387f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c), -566f)), true));
    var var_0 = Struct_2(!vec4<bool>(u_input.a.x > _wgslsmith_mult_u32(u_input.a.x, 1u), global0.e, true, true), !(!func_2(Struct_1(vec2<i32>(global0.a.x, u_input.c.x), 1323f, global0.c, global0.b, false)).e), Struct_1(~select(-u_input.c, vec2<i32>(u_input.c.x, 0i) ^ vec2<i32>(global0.a.x, u_input.c.x), !global0.e), global0.d, global0.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -614f))), true), Struct_1(vec2<i32>(33693i, (global0.a.x & -1i) | global0.a.x), global0.d, _wgslsmith_f_op_f32(sign(-258f)), global0.b, !all(vec4<bool>(global0.e, global0.e, global0.e, true))));
    let var_1 = u_input.d.x;
    var var_2 = var_1;
    var_2 = reverseBits(~_wgslsmith_div_u32(max(31686u, var_1), ~var_1) & 60200u);
    return Struct_1(~global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_0.c.d)))) * _wgslsmith_div_f32(_wgslsmith_div_f32(global0.d, 256f), _wgslsmith_f_op_f32(var_0.d.b * 1541f))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global0.c, 335f))))))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(floor(global0.b))), var_0.c.c, false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) - -1085f))) + _wgslsmith_f_op_f32(1123f + -704f));
    var var_1 = Struct_2(vec4<bool>(global0.e, u_input.c.x == ~2147483647i, any(select(!vec3<bool>(false, global0.e, true), select(vec3<bool>(true, true, false), vec3<bool>(global0.e, false, global0.e), true), !vec3<bool>(global0.e, global0.e, false))), !func_2(func_1()).e), true, func_1(), func_2(func_1()));
    global0 = func_1();
    var var_2 = Struct_2(vec4<bool>(func_2(func_1()).e, any(var_1.a.xw), all(!var_1.a.wy), global0.e), var_1.a.x, Struct_1(-var_1.c.a, var_1.d.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0)) + _wgslsmith_f_op_f32(sign(var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1335f)) * _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(global0.d * 405f))), !func_2(func_2(Struct_1(vec2<i32>(-11268i, u_input.c.x), -663f, var_1.c.d, 1051f, var_1.d.e))).e), var_1.d);
    let var_3 = Struct_2(vec4<bool>(all(var_1.a.zx) && (global0.b >= _wgslsmith_f_op_f32(-330f * var_1.c.c)), -func_2(Struct_1(vec2<i32>(var_1.d.a.x, var_1.d.a.x), 1218f, 607f, var_1.d.c, true)).a.x > abs(_wgslsmith_mod_i32(2147483647i, -1i)), !any(!var_2.a.zx), true), 1u != (u_input.e & _wgslsmith_mult_u32(~u_input.a.x, 4043u)), var_2.d, func_2(func_2(var_1.c)));
    var var_4 = firstLeadingBit(0i & ~var_1.c.a.x);
    let var_5 = vec3<i32>(_wgslsmith_mult_i32(reverseBits(u_input.c.x), ~(-2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(10410i, -56104i), vec2<i32>(1i, -2147483647i)) & var_3.d.a.x, 0i) & firstTrailingBit(-select(~vec3<i32>(u_input.c.x, -5148i, global0.a.x), vec3<i32>(16817i, u_input.c.x, global0.a.x), var_2.b));
    var var_6 = Struct_4(select(var_2.a.yzy, !(!var_3.a.xyy), var_1.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(select(func_1().a, ~global0.a, global0.e)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_3.d.d * -651f)))))), vec4<i32>(2147483647i, global0.a.x, var_5.x, var_2.d.a.x) | firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec3_i32(var_5, vec3<i32>(2147483647i, u_input.c.x, u_input.c.x)), var_2.c.a.x | global0.a.x, var_2.d.a.x, 21787i | global0.a.x)), ~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(16427u, 0u, 11182u), vec3<u32>(101524u, 50850u, 4430u)), ~firstLeadingBit(4294967295u)));
}

