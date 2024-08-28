struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec4<bool>,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 28>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_2(!vec2<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(false, true), true))), vec4<u32>(~57701u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 49749u, 45800u, 727u), vec4<bool>(true, true, true, true)), vec4<u32>(1u, 17828u, 1u, 1u) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(49150u, 4294967295u, 1u, 18325u)), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(4294967295u, 0u, 31396u, 1u)), ~vec4<u32>(14129u, 0u, 59315u, 42721u))), 1u >> (_wgslsmith_mult_u32(select(1u, 38566u, true), ~0u) % 32u)), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-143f * 122f), -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-937f, 356f))))), u_input.a.x, vec4<u32>(~1u, ~(~7021u), _wgslsmith_mult_u32(28113u, 1u), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(59115u, 10550u, 26144u), vec3<u32>(71458u, 4294967295u, 1u)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-120f, 119f, false)), _wgslsmith_f_op_f32(ceil(-1305f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1435f)) + _wgslsmith_f_op_f32(sign(277f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(232f - -786f) - _wgslsmith_f_op_f32(-262f + 2777f)), 857f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-254f, -1491f, -242f) * vec3<f32>(1000f, 1079f, -1025f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(259f, 381f, 1144f) - vec3<f32>(-1418f, -731f, 1000f)))))), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(839f)))))), ~(i32(-1i) * -1i), abs(vec4<u32>(1u, ~8481u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 109370u, 54886u), vec3<u32>(0u, 4294967295u, 10016u)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(878f, 592f, true))), 561f, all(vec4<bool>(false, true, false, true)) != true))));
    global0 = array<Struct_5, 28>();
    let var_1 = !all(vec4<bool>(1u > _wgslsmith_sub_u32(28107u, var_0.b.x), false, var_0.a.x, (var_0.a.x || var_0.a.x) | !var_0.a.x));
    global0 = array<Struct_5, 28>();
    var var_2 = _wgslsmith_f_op_vec2_f32(var_0.d.zy * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_0.d.xx), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(var_0.d.yx, var_0.d.zz), _wgslsmith_f_op_vec2_f32(select(var_0.d.yx, _wgslsmith_f_op_vec2_f32(-var_0.d.yz), !var_1)))))));
    return var_0.e.c >> (select(~(var_0.c.c ^ vec4<u32>(0u, var_0.e.c.x, var_0.b.x, var_0.c.c.x)), _wgslsmith_mod_vec4_u32(~(var_0.c.c ^ var_0.b), var_0.c.c), select(!select(vec4<bool>(true, true, true, var_1), vec4<bool>(false, var_1, var_0.a.x, var_0.a.x), vec4<bool>(true, false, false, true)), !select(vec4<bool>(true, var_1, var_1, var_1), vec4<bool>(false, var_0.a.x, var_0.a.x, var_1), vec4<bool>(true, var_0.a.x, false, true)), false)) % vec4<u32>(32u));
}

fn func_2(arg_0: f32, arg_1: Struct_4) -> Struct_2 {
    var var_0 = -2147483647i;
    var var_1 = Struct_1(-1164f, -1i, abs(firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)) << ((vec4<u32>(1u, 1u, 1u, 1u) & func_3()) % vec4<u32>(32u))), arg_0);
    let var_2 = ~_wgslsmith_sub_u32(var_1.c.x, func_3().x);
    var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(var_1.a)), _wgslsmith_div_i32(-61653i, var_1.b) << (_wgslsmith_div_u32(25263u, 1u) % 32u), vec4<u32>(var_2, 1u, 54008u, _wgslsmith_mod_u32(~(~var_1.c.x), _wgslsmith_div_u32(var_1.c.x, var_2))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1611f * 572f), 1f)));
    var var_3 = false;
    return Struct_2(vec2<bool>(arg_1.a, true), select(vec4<u32>(~var_2, countOneBits(~var_2), _wgslsmith_dot_vec4_u32(var_1.c, vec4<u32>(1u, 1u, 18941u, var_2) | vec4<u32>(0u, 113u, var_2, var_2)), (var_2 >> (76888u % 32u)) >> ((var_1.c.x & 4294967295u) % 32u)), var_1.c, select(select(!vec4<bool>(false, false, arg_1.a, arg_1.a), !vec4<bool>(true, false, arg_1.a, arg_1.a), false), select(!vec4<bool>(arg_1.a, arg_1.a, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(arg_1.a, false, true, arg_1.a), vec4<bool>(arg_1.a, arg_1.a, arg_1.a, arg_1.a)), false), vec4<bool>(all(vec2<bool>(arg_1.a, arg_1.a)), arg_1.a, any(vec3<bool>(arg_1.a, arg_1.a, false)), true))), Struct_1(514f, countOneBits(2147483647i), _wgslsmith_clamp_vec4_u32(var_1.c, vec4<u32>(64059u, 19813u, countOneBits(var_1.c.x), var_1.c.x), vec4<u32>(var_1.c.x, ~var_2, 34866u, 211u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(984f)), _wgslsmith_f_op_f32(530f + arg_0)))), vec3<f32>(_wgslsmith_f_op_f32(max(2455f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-522f)) - -1380f))), var_1.a, arg_0), Struct_1(-132f, 0i, ~(~var_1.c), _wgslsmith_div_f32(-827f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-773f + -1000f)))));
}

fn func_1(arg_0: i32) -> Struct_2 {
    global0 = array<Struct_5, 28>();
    var var_0 = Struct_4(true);
    var var_1 = Struct_4(all(vec3<bool>(all(vec4<bool>(var_0.a, var_0.a, true, var_0.a)), true, var_0.a)));
    var var_2 = func_2(1939f, Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1469f)) - _wgslsmith_f_op_f32(-291f + -978f)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(2468f, -289f)), _wgslsmith_f_op_f32(select(527f, -588f, true)))));
    var var_3 = Struct_4(var_1.a);
    return func_2(978f, Struct_4(!var_2.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(true);
    global0 = array<Struct_5, 28>();
    let var_1 = var_0.a;
    let var_2 = Struct_3(func_1(u_input.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(495f, -1209f)))) - vec2<f32>(482f, _wgslsmith_f_op_f32(-1346f + _wgslsmith_f_op_f32(f32(-1f) * -334f)))));
    let var_3 = var_2.a;
    global0 = array<Struct_5, 28>();
    let var_4 = var_3.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(1i << (var_3.e.c.x % 32u), firstTrailingBit(var_2.a.e.b), vec3<u32>(var_3.b.x & var_2.a.b.x, 1u, _wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(var_2.a.c.c.xzx, vec3<u32>(var_2.a.c.c.x, 64932u, var_2.a.e.c.x)), ~var_3.e.c.x), var_2.a.e.c.x)), 0u, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-285f, var_3.d.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-273f, -1000f))))));
}

