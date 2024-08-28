struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(847f + 1111f));
    let var_1 = Struct_3(_wgslsmith_clamp_u32(u_input.c, 4294967295u, min(110054u, reverseBits(arg_0.c.a))), vec4<u32>(arg_0.c.a, (~u_input.c & min(3653u, 27385u)) << (~u_input.c % 32u), u_input.d, ~firstTrailingBit(4294967295u)), vec4<u32>(22981u ^ ~arg_0.a.a, 4294967295u, arg_0.a.a, 1u ^ _wgslsmith_mult_u32(firstTrailingBit(arg_0.c.a), 1u)));
    var_0 = 501f;
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-644f - 498f)) * arg_0.b.x))));
    var var_2 = arg_0.b;
    return min(var_1.a, _wgslsmith_mult_u32(u_input.c, u_input.c));
}

fn func_2(arg_0: bool, arg_1: vec4<bool>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-215f, _wgslsmith_f_op_f32(select(153f, -1481f, false)), -2490f, -1000f) - vec4<f32>(838f, -1000f, -1000f, _wgslsmith_div_f32(485f, 944f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(399f, 454f, -436f, -1380f) * vec4<f32>(-821f, -951f, 2551f, 1000f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(122f, -635f, -577f, 760f))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(var_0.zx));
    let var_2 = Struct_3(1u, abs(vec4<u32>(u_input.d, u_input.c, abs(74078u), ~u_input.d)), select(vec4<u32>(u_input.c, select(~3699u, ~u_input.d, arg_0), u_input.d, ~func_3(Struct_2(Struct_1(4294967295u, arg_1.xxx, arg_0), vec3<f32>(var_0.x, -1143f, 451f), Struct_1(22979u, vec3<bool>(arg_0, arg_0, true), arg_0)))), _wgslsmith_add_vec4_u32(vec4<u32>(~u_input.d, 1u, u_input.c, 40589u), ~vec4<u32>(31507u, 4294967295u, 1u, u_input.c) & firstLeadingBit(vec4<u32>(12979u, u_input.d, u_input.d, u_input.d))), !(!arg_1)));
    let var_3 = Struct_1(~13572u, arg_1.zyw, any(select(vec2<bool>(arg_1.x, arg_1.x), arg_1.ww, arg_0)));
    let var_4 = Struct_2(Struct_1(25448u, vec3<bool>(false, any(arg_1.xzz) & arg_1.x, all(arg_1) | (3015u == var_2.a)), any(vec2<bool>(false, any(var_3.b.zx)))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), 547f, var_1.x), Struct_1(~var_2.b.x, vec3<bool>(true, true, true), var_3.c));
    return arg_1.xyx;
}

fn func_1(arg_0: vec3<bool>) -> Struct_3 {
    var var_0 = Struct_1(84519u, arg_0, all(func_2(true, !vec4<bool>(true, arg_0.x, true, arg_0.x))));
    let var_1 = Struct_2(Struct_1(abs(var_0.a), !arg_0, arg_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 477f, 1207f), vec3<f32>(-627f, -922f, 785f))))), Struct_1(4294967295u, vec3<bool>(var_0.c, arg_0.x, arg_0.x), abs(_wgslsmith_mult_i32(u_input.b.x, 2147483647i)) != reverseBits(-1i)));
    var var_2 = u_input.b.x;
    var var_3 = arg_0.x;
    var var_4 = -553f;
    return Struct_3(_wgslsmith_add_u32(var_0.a, ~var_0.a), ~vec4<u32>(57525u, ~4294967295u & _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, var_1.c.a), vec2<u32>(var_1.a.a, var_0.a)), ~(~14641u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c.a, 54480u, 0u), max(vec3<u32>(var_1.c.a, 0u, var_1.a.a), vec3<u32>(u_input.c, 4294967295u, var_0.a)))), min(~max(vec4<u32>(5455u, var_0.a, u_input.c, var_1.c.a), firstTrailingBit(vec4<u32>(var_0.a, var_1.a.a, 41734u, var_0.a))), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(57980u, 23862u, var_0.a, 7809u), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a, 0u, 9228u, var_0.a), vec4<u32>(4294967295u, var_0.a, 4294967295u, 13867u))), ~vec4<u32>(u_input.c, var_0.a, 1u, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<bool>(~(~u_input.c) < ~u_input.c, all(vec4<bool>(true, false, select(true, false, false), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-551f))) < _wgslsmith_f_op_f32(1044f - _wgslsmith_f_op_f32(sign(-1049f)))));
    var var_1 = Struct_2(Struct_1(~(~73789u) & func_3(Struct_2(Struct_1(u_input.d, vec3<bool>(false, false, false), true), vec3<f32>(583f, 501f, -729f), Struct_1(1u, vec3<bool>(true, false, true), false))), vec3<bool>(!any(vec2<bool>(true, false)), false, (var_0.b.x > 4294967295u) | false), false & (func_2(true, vec4<bool>(true, false, false, false)).x || true)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-355f, 605f, 1922f) * vec3<f32>(117f, 264f, -606f)))))))), Struct_1(~4294967295u, !vec3<bool>(all(vec4<bool>(false, false, false, true)), false, any(vec2<bool>(true, true))), all(vec4<bool>(true, true, true, true)) || any(vec2<bool>(true, true))));
    let var_2 = ~vec3<i32>(-u_input.b.x, u_input.a.x, _wgslsmith_div_i32(_wgslsmith_div_i32(16180i, firstTrailingBit(u_input.b.x)), -10367i));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(664f, -617f) * _wgslsmith_div_f32(369f, var_1.b.x))))));
    var var_4 = func_1(var_1.c.b);
    let var_5 = Struct_3(_wgslsmith_add_u32(u_input.d, 4347u), ~var_4.b, var_4.c);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(u_input.a.x, -u_input.b.x, ~(u_input.b.x | var_2.x), 2147483647i));
}

