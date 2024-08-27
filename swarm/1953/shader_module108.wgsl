struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec3<u32>) -> f32 {
    var var_0 = 44952i;
    var_0 = _wgslsmith_mod_i32(abs(arg_2) << (0u % 32u), 2147483647i);
    let var_1 = Struct_1(~(~abs(~arg_1.c)), _wgslsmith_f_op_f32(step(-488f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_1.b, -1509f)), _wgslsmith_f_op_f32(select(-1664f, -2156f, false)))) - arg_0.b))), ~_wgslsmith_dot_vec3_u32(max(abs(vec3<u32>(30324u, arg_0.c, 60703u)), ~vec3<u32>(15923u, 60856u, u_input.a.x)), abs(max(arg_3, vec3<u32>(108178u, 2236u, arg_3.x)))));
    var var_2 = arg_1.b;
    var var_3 = arg_0;
    return arg_1.b;
}

fn func_2() -> u32 {
    let var_0 = Struct_2(Struct_1(reverseBits(~(28148u | u_input.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1301f, 487f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(557f * -222f))), firstTrailingBit(abs(u_input.d.x) | (u_input.d.x & u_input.c))), Struct_1(~abs(u_input.a.x), _wgslsmith_f_op_f32(func_3(Struct_1(select(0u, 80436u, true), _wgslsmith_f_op_f32(f32(-1f) * -1651f), firstLeadingBit(u_input.c)), Struct_1(~43999u, -204f, u_input.a.x), ~u_input.e, u_input.a)), ~max(~0u, ~u_input.d.x)), Struct_1(~1u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(421f, -522f))), -1797f), abs(~(28250u ^ u_input.d.x))), Struct_1(u_input.d.x, -1686f, 4294967295u), ~(abs(firstTrailingBit(vec2<u32>(22534u, u_input.a.x))) ^ countOneBits(_wgslsmith_sub_vec2_u32(u_input.a.xx, vec2<u32>(u_input.c, 0u)))));
    let var_1 = vec3<bool>(true, true, true);
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-var_0.d.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(622f)))))));
    var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.b, _wgslsmith_f_op_f32(var_0.b.b - 757f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2.x, var_2.x), vec2<f32>(1123f, -1026f))) * vec2<f32>(var_2.x, -1777f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-838f, 220f), vec2<f32>(-432f, 648f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.b, -513f))))));
    let var_3 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.d.xx, u_input.a.xz), var_0.e << (vec2<u32>(var_0.b.a, var_0.a.a) % vec2<u32>(32u))), ~1u, 1991u, max(20867u, var_0.a.c) & u_input.a.x), ~_wgslsmith_mult_vec4_u32(vec4<u32>(17128u, u_input.c, u_input.a.x, u_input.a.x), select(vec4<u32>(var_0.b.a, var_0.d.c, 24638u, var_0.b.a), vec4<u32>(16177u, 75465u, 14051u, var_0.c.a), vec4<bool>(var_1.x, var_1.x, true, var_1.x))));
    return var_0.e.x;
}

fn func_1() -> u32 {
    let var_0 = select(_wgslsmith_mod_u32(func_2(), 1u), _wgslsmith_div_u32(firstTrailingBit(34469u), firstLeadingBit(_wgslsmith_sub_u32(u_input.d.x, u_input.c))), all(vec3<bool>(true, _wgslsmith_f_op_f32(max(-1478f, 826f)) != _wgslsmith_f_op_f32(ceil(-819f)), !all(vec3<bool>(true, false, false)))));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_2 = 8596u == u_input.d.x;
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-536f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-810f)), _wgslsmith_f_op_f32(max(1447f, 857f)))))))));
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f)));
    return countOneBits(~1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(0u, u_input.a.x);
    let var_1 = ~select(func_1(), ~(~abs(var_0)), true);
    let var_2 = Struct_2(Struct_1(32146u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-401f - _wgslsmith_div_f32(1205f, -2136f))), 44787u), Struct_1(_wgslsmith_div_u32(~4294967295u, ~(~var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -611f), _wgslsmith_f_op_f32(func_3(Struct_1(var_0, -1325f, 0u), Struct_1(var_0, 402f, 0u), 0i, vec3<u32>(4294967295u, 22233u, var_0))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-789f, -194f)))), _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(12177u, u_input.d.x), var_0 & 23967u), ~4294967295u)), Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(var_1, 55334u, 4294967295u, u_input.c), ~vec4<u32>(4294967295u, 4294967295u, 0u, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(var_1, var_1, var_1, var_1), firstLeadingBit(vec4<u32>(u_input.c, 3115u, 11005u, u_input.c)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1634f, 1358f) + _wgslsmith_f_op_f32(round(-1429f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2154f)))), abs(u_input.a.x)), Struct_1(var_0, -1021f, var_1), ~u_input.d.xz);
    let var_3 = 448f;
    let var_4 = var_2.e;
    var var_5 = u_input.b;
    var var_6 = vec2<i32>(1i, ~(u_input.b >> (~var_2.a.c % 32u))) & (reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(u_input.e, -2147483647i), vec2<i32>(u_input.b, 40711i)) << (reverseBits(var_2.e) % vec2<u32>(32u))) << (vec2<u32>(var_4.x, var_2.c.c) % vec2<u32>(32u)));
    var var_7 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(16606u, ~1814u), select(firstTrailingBit(_wgslsmith_add_u32(78705u, func_2())), 1u, true), abs(_wgslsmith_sub_vec3_i32(~select(vec3<i32>(u_input.b, -2147483647i, u_input.b), vec3<i32>(-2147483647i, var_6.x, var_6.x), true), abs(vec3<i32>(var_6.x, var_6.x, -7776i)))), func_1());
}

