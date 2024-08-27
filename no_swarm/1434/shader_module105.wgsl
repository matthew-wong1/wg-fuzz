struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
    c: vec2<f32>,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<f32>,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 26>;

var<private> global1: Struct_3;

var<private> global2: Struct_4 = Struct_4(vec4<u32>(0u, 13680u, 21339u, 1u), false, vec2<f32>(1619f, -1968f), Struct_3(49837u, -123f, Struct_1(vec4<u32>(1u, 5755u, 3327u, 1u)), vec3<f32>(-1755f, -1389f, -847f)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global2 = Struct_4(vec4<u32>(1u, _wgslsmith_sub_u32(global1.c.a.x, _wgslsmith_mod_u32(14916u, 13798u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(global2.a.x, global2.d.a), ~vec2<u32>(24182u, u_input.b.x)), 4294967295u) ^ ~select(select(global1.c.a, vec4<u32>(global2.d.c.a.x, 57152u, 456u, 18378u), true), vec4<u32>(u_input.c, u_input.c, 4294967295u, 0u), global2.b), false, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global2.d.d.zy))))))), global2.d);
    let var_0 = (u_input.a.x >> (~1u % 32u)) << (4294967295u % 32u);
    var var_1 = _wgslsmith_f_op_f32(step(global2.d.d.x, global2.d.b));
    global2 = Struct_4(~global1.c.a, false, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global1.d.zx))), Struct_3(u_input.b.x, _wgslsmith_f_op_f32(-1000f - global1.b), global2.d.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.b, global1.b, global2.d.d.x)))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b, 930f, -1992f) - global2.d.d))))));
    let var_2 = Struct_2(_wgslsmith_div_vec2_i32(~(~(vec2<i32>(21553i, 0i) << (vec2<u32>(global2.a.x, global1.c.a.x) % vec2<u32>(32u)))), u_input.a), Struct_1(global2.d.c.a), 39441u);
    return firstLeadingBit(global1.c.a.x);
}

fn func_2() -> Struct_1 {
    global2 = Struct_4(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(global2.d.c.a.x, 0u, 0u, 0u), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(global2.a, u_input.b), ~u_input.b), global1.c.a), vec4<u32>(~u_input.c, select(u_input.c, _wgslsmith_add_u32(1u, 12982u), global2.b || false), ~global2.d.a, 4294967295u)), select(!global2.b, true, true) != global2.b, _wgslsmith_f_op_vec2_f32(-global2.d.d.zy), Struct_3(32473u >> (global2.d.c.a.x % 32u), -1790f, Struct_1(vec4<u32>(~global1.c.a.x, 30843u, select(32879u, 39481u, global2.b), 0u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-639f, global1.d.x, 1784f), vec3<f32>(114f, -243f, -376f), vec3<bool>(false, true, false))))))));
    let var_0 = ~(~global2.a.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-143f, 504f, global2.d.d.x, 406f)))));
    var var_2 = vec3<bool>(_wgslsmith_add_u32(~(~var_0), 1u) > (global1.a & func_3()), ~u_input.a.x < u_input.a.x, global2.b);
    global0 = array<Struct_5, 26>();
    return Struct_1(~global2.d.c.a);
}

fn func_1(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: f32, arg_3: f32) -> Struct_2 {
    let var_0 = ~u_input.a.x;
    var var_1 = func_2();
    return Struct_2(-_wgslsmith_mult_vec2_i32(select(-u_input.a, _wgslsmith_clamp_vec2_i32(vec2<i32>(26309i, u_input.a.x), u_input.a, u_input.a), vec2<bool>(true, global2.b)), vec2<i32>(2147483647i, i32(-1i) * -39397i)), Struct_1(arg_0.c.a), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global2.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.x, global1.b, -1188f, 1000f) + vec4<f32>(-1000f, -883f, global1.d.x, global1.d.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1730f, -669f, global2.d.b, global2.d.d.x))))), 1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.x + global1.b)))))));
    let var_1 = -143f;
    var var_2 = -736f;
    global2 = Struct_4(var_0.b.a, _wgslsmith_f_op_f32(exp2(global1.d.x)) >= var_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-global2.d.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -600f), global1.b))), global2.d);
    var var_3 = -_wgslsmith_sub_i32(-45597i, reverseBits(_wgslsmith_div_i32(-17769i, _wgslsmith_sub_i32(1i, u_input.a.x))));
    let var_4 = func_1(global2.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1336f, -1206f, global2.d.d.x, global2.d.b) * vec4<f32>(var_1, -1803f, -1253f, 734f))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-214f, -434f, var_1, -1643f) - vec4<f32>(var_1, -259f, global1.b, -397f))), _wgslsmith_div_vec4_f32(vec4<f32>(-505f, -216f, var_1, -204f), _wgslsmith_div_vec4_f32(vec4<f32>(global1.d.x, 607f, 181f, global1.b), vec4<f32>(287f, 705f, 198f, global1.d.x))))), -1513f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1149f - global1.b))) + var_1)).b;
    var var_5 = 518f;
    let var_6 = ~_wgslsmith_dot_vec2_u32(~firstTrailingBit(global1.c.a.xy), ~vec2<u32>(0u, u_input.b.x));
    var var_7 = select(!vec2<bool>(!any(vec4<bool>(global2.b, false, false, true)), global2.b), vec2<bool>(~_wgslsmith_add_i32(u_input.a.x, var_0.a.x) != ~(27406i ^ var_0.a.x), global2.b), !(!select(!vec2<bool>(global2.b, global2.b), select(vec2<bool>(global2.b, false), vec2<bool>(global2.b, global2.b), vec2<bool>(false, global2.b)), all(vec4<bool>(global2.b, false, false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-1i), _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(var_1 - -910f)));
}

