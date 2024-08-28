struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(180f, Struct_3(Struct_2(vec2<f32>(-494f, 805f), Struct_1(4294967295u, vec3<bool>(false, true, true))), Struct_2(vec2<f32>(-784f, -307f), Struct_1(36687u, vec3<bool>(false, true, false))), vec4<bool>(false, true, false, false), Struct_2(vec2<f32>(-1946f, 730f), Struct_1(4294967295u, vec3<bool>(false, false, false)))));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: Struct_4) -> Struct_2 {
    let var_0 = !(!vec4<bool>(true, (arg_1.x >= 4294967295u) | true, true, false));
    let var_1 = Struct_1(global0.b.d.b.a, select(!(!var_0.wyy), global0.b.a.b.b, !var_0.zwx));
    let var_2 = global0.b.a;
    let var_3 = Struct_1(u_input.a.x, var_0.www);
    global0 = arg_3;
    return arg_3.b.b;
}

fn func_3() -> vec2<f32> {
    let var_0 = abs(_wgslsmith_dot_vec3_i32((vec3<i32>(24026i, u_input.b.x, u_input.b.x) >> (vec3<u32>(4294967295u, 4294967295u, global0.b.b.b.a) % vec3<u32>(32u))) & vec3<i32>(u_input.b.x >> (global0.b.d.b.a % 32u), u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, _wgslsmith_sub_i32(-17177i, -51790i >> (u_input.a.x % 32u)))));
    var var_1 = vec2<u32>(global0.b.a.b.a, u_input.a.x);
    let var_2 = global0.b;
    var_1 = vec2<u32>(var_1.x, var_2.d.b.a);
    var_1 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(50894u, _wgslsmith_add_u32(~42875u, 40140u), abs(_wgslsmith_mod_u32(var_1.x, 36736u))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 10582u), ~vec3<u32>(4294967295u, 25077u, var_1.x))), _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_mod_u32(0u ^ u_input.a.x, global0.b.d.b.a)), var_2.a.b.a));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.d.a.x, _wgslsmith_f_op_f32(round(1753f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.d.a))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<f32>) -> vec4<bool> {
    let var_0 = Struct_1(global0.b.a.b.a, vec3<bool>(any(global0.b.d.b.b.xx), all(select(!global0.b.c.wy, select(global0.b.d.b.b.xx, vec2<bool>(global0.b.b.b.b.x, global0.b.b.b.b.x), global0.b.c.x), global0.b.d.b.b.xx)), all(select(!global0.b.c, vec4<bool>(true, global0.b.d.b.b.x, true, false), true))));
    let var_1 = 0i;
    return vec4<bool>(true, true | global0.b.a.b.b.x, false, any(vec4<bool>(!global0.b.d.b.b.x, false, u_input.b.x >= 0i, global0.b.b.b.b.x | true)) | var_0.b.x);
}

fn func_1(arg_0: vec2<i32>) -> vec4<bool> {
    var var_0 = Struct_4(1433f, Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-2055f, global0.a))), global0.b.b.b), func_2(_wgslsmith_dot_vec2_i32(u_input.b ^ u_input.b, u_input.b), _wgslsmith_sub_vec4_u32(~vec4<u32>(global0.b.a.b.a, 37507u, 75035u, u_input.a.x), vec4<u32>(u_input.a.x, global0.b.a.b.a, u_input.a.x, global0.b.b.b.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1614f, global0.b.d.a.x, global0.b.a.a.x, global0.b.b.a.x)), Struct_4(global0.a, Struct_3(Struct_2(vec2<f32>(1063f, global0.a), Struct_1(4294967295u, global0.b.b.b.b)), Struct_2(global0.b.a.a, global0.b.b.b), vec4<bool>(global0.b.a.b.b.x, false, global0.b.a.b.b.x, global0.b.c.x), global0.b.a))), global0.b.c, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(851f, global0.a))), Struct_1(~global0.b.d.b.a, vec3<bool>(false, true, global0.b.d.b.b.x)))));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-global0.a), global0.b);
    var_1 = Struct_4(1500f, var_1.b);
    let var_2 = Struct_1(var_1.b.a.b.a, vec3<bool>(true, -abs(u_input.b.x) != -32082i, !all(global0.b.c)));
    var var_3 = ~vec2<i32>(u_input.b.x, reverseBits(u_input.b.x));
    return select(select(select(select(select(global0.b.c, vec4<bool>(var_0.b.c.x, false, false, var_0.b.b.b.b.x), var_1.b.a.b.b.x), vec4<bool>(var_1.b.b.b.b.x, global0.b.a.b.b.x, global0.b.a.b.b.x, true), true), var_1.b.c, select(vec4<bool>(global0.b.b.b.b.x, var_0.b.b.b.b.x, var_2.b.x, var_0.b.c.x), global0.b.c, true)), var_1.b.c, select(!global0.b.c, vec4<bool>(any(global0.b.d.b.b), true, var_1.b.d.b.b.x & var_1.b.d.b.b.x, true), var_0.b.c.x)), func_4(~reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, global0.b.a.b.a, global0.b.b.b.a), vec3<u32>(var_2.a, 26554u, global0.b.b.b.a))), _wgslsmith_f_op_vec2_f32(func_3())), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-205f, global0.a))) * _wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(step(-1961f, _wgslsmith_f_op_f32(f32(-1f) * -484f))))), Struct_3(global0.b.b, Struct_2(global0.b.d.a, Struct_1(1u, select(vec3<bool>(global0.b.b.b.b.x, global0.b.c.x, global0.b.b.b.b.x), vec3<bool>(global0.b.b.b.b.x, global0.b.c.x, global0.b.b.b.b.x), true))), select(func_1(-u_input.b), vec4<bool>(any(global0.b.c), -823f >= global0.b.a.a.x, false, global0.b.a.b.b.x), global0.b.c.x), func_2(max(-12096i ^ u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x)), firstLeadingBit(vec4<u32>(4294967295u, u_input.a.x, 35678u, u_input.a.x)), vec4<f32>(global0.b.b.a.x, global0.b.b.a.x, global0.b.a.a.x, _wgslsmith_f_op_f32(783f + global0.a)), Struct_4(-1000f, Struct_3(Struct_2(global0.b.d.a, Struct_1(u_input.a.x, vec3<bool>(global0.b.c.x, global0.b.b.b.b.x, global0.b.a.b.b.x))), Struct_2(global0.b.d.a, Struct_1(u_input.a.x, global0.b.b.b.b)), vec4<bool>(true, global0.b.d.b.b.x, true, global0.b.b.b.b.x), global0.b.a)))));
    let var_0 = u_input.a;
    let var_1 = global0.b.a.b.b.x;
    global0 = Struct_4(1675f, Struct_3(Struct_2(global0.b.d.a, global0.b.a.b), func_2(_wgslsmith_sub_i32(-1i >> (global0.b.a.b.a % 32u), ~u_input.b.x), vec4<u32>(4455u, 49863u, global0.b.a.b.a, 4294967295u) | vec4<u32>(21578u, 4294967295u, global0.b.d.b.a, 0u), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-606f, global0.a, global0.a, 214f))), Struct_4(_wgslsmith_f_op_f32(-global0.b.b.a.x), global0.b)), select(global0.b.c, global0.b.c, true && global0.b.a.b.b.x), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())), func_2(~u_input.b.x, abs(vec4<u32>(1u, 34029u, global0.b.a.b.a, 4294967295u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, -1248f, -138f, -816f)), Struct_4(global0.a, Struct_3(Struct_2(global0.b.b.a, Struct_1(0u, vec3<bool>(global0.b.d.b.b.x, true, false))), Struct_2(vec2<f32>(899f, global0.b.b.a.x), Struct_1(1u, vec3<bool>(global0.b.b.b.b.x, false, false))), global0.b.c, Struct_2(vec2<f32>(global0.a, global0.b.b.a.x), Struct_1(u_input.a.x, global0.b.c.yxz))))).b)));
    let var_2 = global0.b;
    let var_3 = func_2(~(~(-min(u_input.b.x, -2147483647i))), abs(vec4<u32>(abs(1u), ~var_2.d.b.a >> (_wgslsmith_dot_vec2_u32(var_0, u_input.a) % 32u), 1028u, _wgslsmith_add_u32(1u, _wgslsmith_add_u32(global0.b.b.b.a, u_input.a.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1f, global0.b.d.a.x, global0.a)) - vec4<f32>(var_2.b.a.x, 1977f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1522f + -1184f) * 821f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.b.a.a.x)) + -144f))), Struct_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1539f + global0.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.a))), all(global0.b.c.yzy))), global0.b));
    global0 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(-var_2.d.a.x)))), var_3.a.x), Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_3.a * vec2<f32>(var_3.a.x, var_3.a.x)))), global0.b.a.b), func_2(abs(-16319i), abs(firstTrailingBit(vec4<u32>(var_2.b.b.a, 0u, 4294967295u, 19956u))), vec4<f32>(_wgslsmith_f_op_f32(var_2.b.a.x - var_3.a.x), _wgslsmith_f_op_f32(879f - var_2.b.a.x), var_3.a.x, 954f), Struct_4(var_3.a.x, global0.b)), !var_2.c, var_2.b));
    global0 = Struct_4(_wgslsmith_f_op_f32(exp2(var_2.d.a.x)), Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(global0.b.a.a)))), Struct_1(~var_3.b.a, var_3.b.b)), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.a) - var_2.d.a), Struct_1(var_2.a.b.a, vec3<bool>(true, var_3.b.b.x, global0.b.b.b.b.x))), !global0.b.c, func_2(u_input.b.x, vec4<u32>(reverseBits(4294967295u), var_0.x, _wgslsmith_div_u32(1u, 1u), 51531u), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.a.a.x, -224f, -891f, 457f))), Struct_4(_wgslsmith_div_f32(var_3.a.x, -1534f), global0.b))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~(~vec4<u32>(u_input.a.x, 1794u, 12077u, 1u))), vec4<u32>(~0u, _wgslsmith_mod_u32(global0.b.b.b.a ^ var_3.b.a, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 30559u), vec3<u32>(var_3.b.a, 0u, 45782u))), 1u, _wgslsmith_mult_u32(0u << (var_2.b.b.a % 32u), ~global0.b.d.b.a)), true), -13858i);
}

