struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: bool) -> f32 {
    global0 = arg_0 == ~(-60957i);
    let var_0 = _wgslsmith_sub_i32(arg_0, arg_0);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1693f)))), Struct_1(-(arg_0 >> (reverseBits(u_input.a.x) % 32u)), 962f), Struct_1(~abs(-13568i ^ arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1323f)))), vec4<f32>(-606f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(min(-1557f, 992f)), _wgslsmith_f_op_f32(2277f * 636f)));
    var var_2 = var_1.b;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.d.xww) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.b, 136f, var_1.b.b) + vec3<f32>(var_2.b, -721f, 154f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(448f, 1280f, -504f))))));
    return var_1.d.x;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_mod_i32(~firstLeadingBit(1i), _wgslsmith_sub_i32(abs(20349i), 2147483647i >> (u_input.a.x % 32u))), -15498i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-9883i, false))));
    var var_1 = _wgslsmith_f_op_f32(var_0.b - -217f);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-var_0.b), var_0, Struct_1(abs(min(i32(-1i) * -1i, _wgslsmith_mod_i32(var_0.a, -1i))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(-var_0.b))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-220f, 1164f, _wgslsmith_f_op_f32(step(1520f, _wgslsmith_f_op_f32(step(-1135f, 192f)))), _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(max(var_0.b, 1570f))))));
    var_1 = _wgslsmith_f_op_f32(1232f - _wgslsmith_f_op_f32(f32(-1f) * -550f));
    global0 = true;
    return Struct_2(1195f, Struct_1(~_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(var_2.c.a, var_2.c.a, var_0.a)), -vec3<i32>(5519i, var_2.c.a, var_0.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.d.x), _wgslsmith_f_op_f32(-var_2.c.b))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(var_2.c.a, false)), _wgslsmith_f_op_f32(679f + -1248f))))), var_2.c, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_2.d, var_2.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-339f, var_0.b, 2425f, 380f))), var_2.d)));
}

fn func_1() -> Struct_2 {
    let var_0 = firstTrailingBit(u_input.a);
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_1 {
    global0 = all(!(!vec3<bool>(true, select(false, true, true), u_input.a.x > 1u)));
    var var_0 = min(vec4<u32>(u_input.a.x, ~u_input.b, 10058u, u_input.b), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(select(~vec4<u32>(59678u, u_input.a.x, u_input.b, 1u), abs(vec4<u32>(u_input.b, 4294967295u, 0u, u_input.b)), true), ~select(vec4<u32>(91960u, u_input.b, 0u, 73601u), vec4<u32>(66193u, 55914u, u_input.b, 0u), vec4<bool>(true, true, false, true))), vec4<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), 74901u, 1u, _wgslsmith_sub_u32(1u, max(u_input.a.x, u_input.a.x)))));
    var var_1 = arg_0.b;
    var_0 = firstTrailingBit(select(select(countOneBits(vec4<u32>(24025u, 38358u, 43141u, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(31847u, 28407u, u_input.a.x, var_0.x), vec4<u32>(0u, var_0.x, u_input.a.x, u_input.a.x)), vec4<bool>(true, true, true, true)), ~vec4<u32>(var_0.x, 4306u, 4294967295u, 11363u), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, false, false, false), all(vec4<bool>(true, true, false, true)))) ^ ~(~vec4<u32>(0u, u_input.b, 48618u, 1u) & _wgslsmith_div_vec4_u32(vec4<u32>(2047u, 34885u, u_input.a.x, 0u), vec4<u32>(0u, 1u, 1u, 4294967295u))));
    global0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(1337f, -658f)))), arg_1.b), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1301f)))) >= _wgslsmith_f_op_f32(1430f + _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(1084f, arg_0.b.b), _wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_f32(max(1f, _wgslsmith_div_f32(arg_2.x, 1637f)))));
    return arg_1;
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: vec2<f32>) -> Struct_1 {
    return func_1().b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    var var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -968f), Struct_1(~_wgslsmith_div_i32(1i, 1i << (u_input.b % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1288f))), func_5(~(-28348i), func_4(func_1(), func_1().c, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2015f, -157f))))), _wgslsmith_mod_i32(-25887i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-15598i, 0i, 0i))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -578f), 1617f) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -305f) + vec2<f32>(2466f, 277f)), vec2<f32>(2025f, 1169f), all(vec2<bool>(false, true)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-421f, 956f, 304f, -319f)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1014f, 283f, -628f, -168f)))))));
    var var_1 = var_0.b;
    var_0 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-430f, 1021f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1327f * -190f) - 446f)))), var_0.b, Struct_1(firstLeadingBit(_wgslsmith_mod_i32(2147483647i, ~var_1.a)), 542f), var_0.d);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-var_0.c.b), func_1().b, Struct_1(2147483647i ^ _wgslsmith_div_i32(14575i << (u_input.a.x % 32u), ~var_0.c.a), var_1.b), vec4<f32>(var_1.b, -1312f, _wgslsmith_div_f32(382f, _wgslsmith_f_op_f32(func_3(var_1.a, true))), _wgslsmith_div_f32(392f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -174f))));
    global0 = all(select(vec3<bool>(true, true, any(vec3<bool>(true, true, true))), vec3<bool>(true, true, true), true));
    var var_3 = Struct_2(var_1.b, var_0.c, Struct_1(22417i, var_0.b.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-281f, var_1.b, -1569f, _wgslsmith_f_op_f32(round(1101f))) * _wgslsmith_f_op_vec4_f32(-var_2.d)) + vec4<f32>(var_2.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.b)) + _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(ceil(-509f)), var_1.b)));
    let var_4 = Struct_1(-select(var_3.c.a, 10185i, true), var_3.a);
    var var_5 = func_1().b;
    let x = u_input.a;
    s_output = StorageBuffer(func_4(Struct_2(-723f, func_4(func_2(), var_2.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1855f, var_0.a))), func_4(Struct_2(1041f, var_0.b, Struct_1(var_1.a, var_4.b), var_3.d), func_5(var_5.a, Struct_1(var_1.a, 208f), var_2.b.a, vec2<f32>(var_3.d.x, -1170f)), var_0.d.xz), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3.d) - _wgslsmith_f_op_vec4_f32(min(var_2.d, vec4<f32>(var_4.b, var_0.d.x, 786f, var_3.b.b))))), var_0.b, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1187f) + _wgslsmith_f_op_f32(f32(-1f) * -482f)), func_4(func_1(), var_4, var_2.d.zx).b)).b, firstLeadingBit(_wgslsmith_mult_vec2_u32(~u_input.a.xy, u_input.a.zx)), ~(-_wgslsmith_sub_vec3_i32(vec3<i32>(var_4.a, 0i, var_5.a), -vec3<i32>(var_4.a, -48425i, var_4.a))), vec4<u32>(35183u, 1u, _wgslsmith_div_u32(u_input.b, 60555u), 1u));
}

