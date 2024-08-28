struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
    d: vec2<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: vec4<bool>) -> bool {
    global0 = arg_0.e;
    global0 = arg_0.e;
    let var_0 = Struct_4(vec3<bool>(!(-23697i > u_input.c), true, !(!global0.c.x)), vec3<bool>(all(vec3<bool>(arg_0.d.x <= 416f, any(vec3<bool>(false, arg_0.c, global0.a.x)), arg_2.x)), any(vec4<bool>(false, u_input.c == u_input.c, true, arg_2.x)), any(vec3<bool>(select(global0.b.x, true, false), !arg_2.x, all(arg_0.e.a)))));
    let var_1 = Struct_4(var_0.b, !(!select(vec3<bool>(true, true, true), global0.a.yyz, false)));
    var var_2 = -1000f;
    return !arg_0.c;
}

fn func_2(arg_0: vec2<u32>) -> u32 {
    global0 = Struct_2(!global0.a, vec3<bool>(!func_3(Struct_3(u_input.b.wyw, Struct_1(vec2<u32>(arg_0.x, 54238u), vec2<bool>(global0.a.x, global0.a.x), vec2<f32>(-388f, -915f)), global0.a.x, vec2<f32>(309f, 251f), Struct_2(global0.c, global0.a.zzy, global0.c)), vec3<u32>(arg_0.x, 19608u, arg_0.x), vec4<bool>(global0.b.x, true, global0.b.x, false)), true, func_3(Struct_3(~u_input.a, Struct_1(u_input.a.xx, global0.a.yz, vec2<f32>(758f, 196f)), !global0.a.x, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(2681f, 1239f), vec2<f32>(334f, 392f))), Struct_2(global0.a, global0.a.zzy, vec4<bool>(false, true, false, global0.b.x))), u_input.a, !vec4<bool>(global0.c.x, global0.c.x, global0.c.x, global0.b.x))), vec4<bool>(!select(!global0.c.x, global0.c.x, !global0.b.x), !(max(u_input.c, u_input.c) > ~(-39448i)), all(select(global0.b.zz, global0.c.zy, global0.c.yx)), false));
    let var_0 = !(!vec3<bool>(any(vec3<bool>(global0.c.x, true, false)), global0.b.x, false));
    global0 = Struct_2(global0.c, !(!vec3<bool>(func_3(Struct_3(u_input.a, Struct_1(vec2<u32>(0u, 22342u), vec2<bool>(global0.b.x, false), vec2<f32>(-349f, -383f)), var_0.x, vec2<f32>(-341f, 610f), Struct_2(global0.c, vec3<bool>(false, var_0.x, global0.c.x), vec4<bool>(false, true, var_0.x, global0.b.x))), u_input.b.xyz, vec4<bool>(var_0.x, false, global0.c.x, false)), true == global0.b.x, var_0.x)), vec4<bool>(false, true, var_0.x, -2147483647i == u_input.c));
    let var_1 = Struct_3(vec3<u32>(arg_0.x, min(arg_0.x, _wgslsmith_mult_u32(~arg_0.x, ~arg_0.x)), u_input.a.x), Struct_1(arg_0, select(!vec2<bool>(global0.a.x, var_0.x), vec2<bool>(global0.a.x, true), vec2<bool>(true, var_0.x)), vec2<f32>(1f, 1f)), true, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(403f, -744f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1518f, 148f), vec2<f32>(678f, 209f))), var_0.x)))))), Struct_2(global0.c, select(!var_0, !vec3<bool>(false, global0.b.x, true), var_0), select(global0.a, select(vec4<bool>(false, var_0.x, global0.c.x, var_0.x), global0.a, var_0.x || false), global0.c)));
    let var_2 = Struct_4(!vec3<bool>(all(vec4<bool>(false, var_1.c, false, var_1.b.b.x)), func_3(Struct_3(vec3<u32>(92988u, arg_0.x, arg_0.x), Struct_1(vec2<u32>(var_1.a.x, 4294967295u), var_0.yy, vec2<f32>(443f, var_1.d.x)), true, var_1.b.c, Struct_2(var_1.e.c, vec3<bool>(var_1.b.b.x, true, global0.c.x), vec4<bool>(global0.c.x, true, false, var_0.x))), _wgslsmith_sub_vec3_u32(u_input.b.www, vec3<u32>(arg_0.x, 18587u, arg_0.x)), global0.a), any(vec2<bool>(var_1.c, var_0.x))), !(!vec3<bool>(var_1.b.b.x, var_1.b.c.x <= var_1.d.x, any(global0.a))));
    return var_1.b.a.x;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_3, arg_3: u32) -> i32 {
    var var_0 = vec4<u32>(arg_3, ~u_input.b.x, _wgslsmith_sub_u32(~(~1u & u_input.a.x), func_2(_wgslsmith_add_vec2_u32(~u_input.b.zw, ~arg_1.a))), select(~17260u, 65069u, !((u_input.c != 2147483647i) | (arg_2.b.c.x <= -1000f))));
    global0 = arg_2.e;
    var var_1 = Struct_1(~vec2<u32>(_wgslsmith_div_u32(~16346u, 94581u), 0u), vec2<bool>(true, all(global0.a)), arg_1.c);
    let var_2 = (abs(max(1i, _wgslsmith_add_i32(8311i, u_input.c))) ^ select(u_input.c, reverseBits(_wgslsmith_clamp_i32(-1i, u_input.c, u_input.c)), !any(arg_2.e.c))) << (_wgslsmith_clamp_u32(_wgslsmith_mod_u32(18729u, 1u), ~686u & reverseBits(_wgslsmith_div_u32(var_1.a.x, var_0.x)), ~select(~arg_2.b.a.x, var_1.a.x, true)) % 32u);
    var var_3 = false;
    return ~abs(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.c, var_2), vec3<i32>(-2147483647i, 0i, 0i)), _wgslsmith_mult_i32(22286i, u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a.x & global0.c.x;
    let var_1 = max(~vec3<i32>(-34747i, -1i, _wgslsmith_mult_i32(u_input.c, func_1(false, Struct_1(vec2<u32>(u_input.a.x, u_input.b.x), vec2<bool>(false, false), vec2<f32>(1000f, 632f)), Struct_3(vec3<u32>(51596u, u_input.b.x, 4294967295u), Struct_1(vec2<u32>(1u, u_input.a.x), global0.c.xw, vec2<f32>(-108f, -2243f)), true, vec2<f32>(-1087f, -1612f), Struct_2(global0.c, vec3<bool>(var_0, true, var_0), global0.a)), 0u))), firstLeadingBit(vec3<i32>(~max(u_input.c, 2147483647i), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.c, u_input.c)), vec2<i32>(u_input.c, u_input.c) >> (vec2<u32>(u_input.b.x, u_input.a.x) % vec2<u32>(32u))), ~0i)));
    global0 = Struct_2(global0.c, select(select(global0.a.wyw, global0.b, select(global0.a.x, true, true) && (var_0 | global0.a.x)), select(!select(vec3<bool>(global0.b.x, false, var_0), global0.b, var_0), select(vec3<bool>(global0.b.x, global0.b.x, global0.b.x), select(vec3<bool>(global0.b.x, global0.a.x, false), vec3<bool>(false, true, global0.a.x), global0.c.zww), global0.b.x), var_0), all(select(select(global0.b, vec3<bool>(global0.b.x, false, false), vec3<bool>(var_0, global0.b.x, false)), vec3<bool>(false, false, false), true))), vec4<bool>(any(!(!vec4<bool>(var_0, false, global0.c.x, global0.c.x))), global0.c.x, !all(vec2<bool>(var_0, true)) || false, _wgslsmith_f_op_f32(f32(-1f) * -585f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(743f)))));
    let var_2 = var_1;
    let var_3 = Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(~(u_input.a.x ^ 0u), u_input.a.x << (~4294967295u % 32u)), ~u_input.b.zx), !select(vec2<bool>(!var_0, true), select(!vec2<bool>(global0.c.x, false), global0.c.xy, select(global0.b.zx, global0.a.xw, global0.a.zw)), true), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -246f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1093f) + _wgslsmith_div_f32(-224f, 924f)))));
    global0 = Struct_2(vec4<bool>(global0.b.x, any(vec2<bool>(var_3.b.x, any(global0.a))), all(!vec4<bool>(true, false, var_3.b.x, false)), true), select(global0.c.wzy, select(global0.a.yxz, select(vec3<bool>(global0.a.x, global0.b.x, var_3.b.x), vec3<bool>(true, true, true), func_3(Struct_3(u_input.b.wxw, var_3, true, vec2<f32>(var_3.c.x, 579f), Struct_2(vec4<bool>(var_3.b.x, false, false, var_0), vec3<bool>(false, true, var_3.b.x), global0.a)), vec3<u32>(37323u, 10176u, 87073u), vec4<bool>(true, false, var_0, var_0))), global0.b), false), select(!(!global0.c), vec4<bool>(any(select(global0.c.wzw, vec3<bool>(true, false, global0.b.x), vec3<bool>(var_0, var_3.b.x, var_0))), true, !(u_input.b.x == 4294967295u), true), !(!vec4<bool>(true, global0.c.x, global0.a.x, var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(1f, vec4<f32>(_wgslsmith_f_op_f32(-var_3.c.x), 1f, 1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1145f)), var_3.c.x))), u_input.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_3.c.x))), _wgslsmith_sub_u32(~23318u, ~(u_input.b.x >> (~4294967295u % 32u))));
}

