struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: u32,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool) -> i32 {
    var var_0 = _wgslsmith_div_i32(u_input.e.x, 25850i);
    var var_1 = u_input.d.zww;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1609f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-662f * _wgslsmith_f_op_f32(ceil(158f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1372f)) + 562f))));
    return -1i;
}

fn func_2() -> vec4<bool> {
    let var_0 = all(!(!vec4<bool>(true, 1i >= u_input.e.x, true, true)));
    let var_1 = Struct_3(vec4<i32>(func_3(false), u_input.e.x << (54853u % 32u), firstLeadingBit(-(i32(-1i) * -17476i)), ~(-min(2147483647i, 2147483647i))), Struct_1(var_0, _wgslsmith_mod_i32(u_input.e.x, _wgslsmith_dot_vec2_i32(u_input.e, u_input.e & vec2<i32>(17830i, 0i))), u_input.d, ~(i32(-1i) * -u_input.e.x), u_input.e.x), ~(~(~(30958u & u_input.c))), Struct_2(Struct_1(false, _wgslsmith_dot_vec3_i32(vec3<i32>(24711i, u_input.e.x, 2147483647i) | vec3<i32>(-2147483647i, u_input.e.x, u_input.e.x), -vec3<i32>(-9283i, u_input.e.x, u_input.e.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.a, u_input.d.x, u_input.b), ~u_input.d), select(1i, ~u_input.e.x, var_0 && false), ~u_input.e.x)), _wgslsmith_sub_u32(u_input.b, 4294967295u));
    let var_2 = var_1.b;
    let var_3 = var_1.a.wy;
    let var_4 = 103860u;
    return !select(select(vec4<bool>(true, !var_2.a, true, false), vec4<bool>(any(vec2<bool>(var_1.d.a.a, var_0)), true, false, false), true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, var_1.d.a.a, var_1.d.a.a), vec4<bool>(false, false, var_2.a, var_0), vec4<bool>(var_2.a, false, false, true)), true), vec4<bool>(var_2.a, var_2.a, !(var_2.a | var_1.d.a.a), any(!vec3<bool>(false, var_2.a, var_2.a))));
}

fn func_1() -> u32 {
    let var_0 = !(!vec4<bool>((u_input.b >= u_input.d.x) && any(vec4<bool>(true, false, true, false)), all(func_2()), _wgslsmith_div_i32(u_input.e.x, -14744i) <= -1i, any(vec3<bool>(true, false, false))));
    var var_1 = Struct_3(select(min(vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x), vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x)), -firstTrailingBit(vec4<i32>(0i, u_input.e.x, u_input.e.x, -847i)), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), !var_0, vec4<bool>(true, var_0.x, false, var_0.x))) & -(-vec4<i32>(u_input.e.x, -45502i, -14981i, u_input.e.x) | vec4<i32>(0i, u_input.e.x, u_input.e.x, u_input.e.x)), Struct_1(any(select(!var_0.zw, !var_0.xx, true)), ~(-u_input.e.x), select(abs(~u_input.d), vec4<u32>(~8851u, u_input.c, u_input.d.x & 4294967295u, u_input.d.x ^ u_input.b), select(vec4<bool>(var_0.x, true, false, var_0.x), var_0, select(var_0, var_0, false))), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.e.x), u_input.e ^ u_input.e)), -func_3(var_0.x)), select(firstTrailingBit(_wgslsmith_clamp_u32(abs(u_input.a), 137671u, 52384u)), ~abs(~47815u), !(_wgslsmith_f_op_f32(step(-125f, 884f)) >= _wgslsmith_f_op_f32(abs(-1000f)))), Struct_2(Struct_1(true, u_input.e.x, ~firstLeadingBit(u_input.d), _wgslsmith_add_i32(2147483647i >> (u_input.c % 32u), 12128i), -62257i)), 16093u);
    let var_2 = -17942i;
    let var_3 = -423f;
    var_1 = Struct_3(-var_1.a, Struct_1(var_1.d.a.a, 25440i, max(~(~vec4<u32>(u_input.a, 17435u, 7031u, 51699u)), vec4<u32>(11992u, 4294967295u, 4294967295u << (var_1.b.c.x % 32u), ~u_input.c)), -2147483647i, -_wgslsmith_mod_i32(i32(-1i) * -44355i, min(1i, var_1.d.a.d))), abs(firstLeadingBit(4294967295u)), var_1.d, max(~4294967295u, _wgslsmith_dot_vec3_u32(~u_input.d.wzy, ~(var_1.b.c.wxz & vec3<u32>(76679u, 4294967295u, 0u)))));
    return ~_wgslsmith_div_u32(0u, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.d.x, _wgslsmith_sub_u32(u_input.d.x, u_input.a)), func_1());
    let var_1 = ~u_input.d.yy;
    var var_2 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-411f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1316f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(712f, 256f), vec2<f32>(264f, 1570f), true)))))));
    var var_3 = Struct_2(Struct_1(!(4294967295u >= u_input.d.x) | false, _wgslsmith_clamp_i32(u_input.e.x, -u_input.e.x, abs(_wgslsmith_mult_i32(1710i, u_input.e.x))), reverseBits(~(u_input.d << (u_input.d % vec4<u32>(32u)))), 44043i, 11178i));
    var var_4 = vec3<i32>(~(-_wgslsmith_mod_i32(-u_input.e.x, max(19101i, -34607i))), _wgslsmith_sub_i32(~var_3.a.b, u_input.e.x), var_3.a.b);
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_2.x, var_2.x)), -1044f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_2.x)), -558f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - 336f)), _wgslsmith_f_op_f32(ceil(-860f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)));
    var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.x, var_5)))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(663f, -475f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(888f, var_5)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1196f, var_5), vec2<f32>(var_5, var_5)))))), var_3.a.a));
    let var_6 = -(~(-_wgslsmith_mult_vec4_i32(vec4<i32>(var_3.a.d, var_3.a.b, var_4.x, -4425i), vec4<i32>(-51634i, -11434i, u_input.e.x, var_4.x))) ^ abs(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_3.a.e, var_3.a.e, u_input.e.x, 16903i), vec4<i32>(var_3.a.e, u_input.e.x, -1i, 37590i)), -vec4<i32>(u_input.e.x, -1i, var_4.x, u_input.e.x))));
    let x = u_input.a;
    s_output = StorageBuffer(9183u, 704f, -231f);
}

