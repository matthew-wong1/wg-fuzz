struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<f32>,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = Struct_2(Struct_1(46322u, 17364i, vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b.ww, abs(u_input.b.zz)), 0u, _wgslsmith_clamp_u32(min(4294967295u, u_input.b.x), ~u_input.d, max(u_input.d, 0u)), u_input.d), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 0u, 26652u, u_input.d))), vec3<u32>(_wgslsmith_add_u32(u_input.b.x, 0u), ~1u, 1u)), ~u_input.b.wwx));
    let var_1 = var_0.a;
    return var_1.a;
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = ~firstLeadingBit(firstTrailingBit(vec3<u32>(u_input.d, u_input.d, 80044u) >> (u_input.b.www % vec3<u32>(32u)))) & _wgslsmith_div_vec3_u32(u_input.b.zxw, u_input.b.zwx);
    var var_1 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1510f, _wgslsmith_f_op_f32(-552f * _wgslsmith_f_op_f32(-1345f + -531f))))));
    var_1 = 1u;
    var_0 = select(~min(vec3<u32>(~0u, _wgslsmith_div_u32(4294967295u, 1u), 1u), vec3<u32>(4294967295u, _wgslsmith_clamp_u32(1u, 4294967295u, u_input.d), ~1u)), _wgslsmith_sub_vec3_u32(~(~abs(vec3<u32>(u_input.d, var_0.x, 0u))), vec3<u32>(u_input.d | 1u, ~var_0.x, ~(~4294967295u))), any(!(!(!vec2<bool>(arg_0, arg_0)))));
    var_0 = abs(u_input.b.yww);
    return Struct_2(Struct_1(countOneBits(reverseBits(func_3(1511f))), select(i32(-1i) * -2147483647i, -22980i, true), u_input.b, vec3<u32>(countOneBits(~var_0.x), _wgslsmith_mult_u32(u_input.b.x, u_input.b.x) << ((97794u & var_0.x) % 32u), 0u & abs(var_0.x)), u_input.b.yxx));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    return select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1826f + -1733f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1653f))), !(426u == arg_1.e.x), true) || true;
}

fn func_1() -> i32 {
    var var_0 = false;
    var_0 = !(!func_4(func_2(any(vec2<bool>(true, true))), func_2(any(vec2<bool>(true, false))).a));
    let var_1 = Struct_1(u_input.b.x, 2147483647i >> (min(u_input.d, ~max(u_input.b.x, 1u)) % 32u), vec4<u32>(u_input.d, u_input.b.x, 0u, u_input.d), ~(~u_input.b.yzz), ~vec3<u32>(1u, 16190u, 35346u));
    var var_2 = _wgslsmith_f_op_f32(select(140f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1284f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(900f)))), !(select(-6324i, 74065i, false) > 32900i))) >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-301f)) - -1568f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(794f)))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1889f))));
    return countOneBits(~(i32(-1i) * -(~var_1.b)));
}

fn func_5(arg_0: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(424f, 309f))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(var_0.x * 263f), _wgslsmith_f_op_f32(-var_0.x))))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, 1000f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1236f, 380f))), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)))))));
    let var_2 = select(vec3<bool>(abs(arg_0) == _wgslsmith_clamp_i32(1i, _wgslsmith_sub_i32(1i, 1i), ~arg_0), !(true | all(vec4<bool>(false, false, true, false))), false), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), vec3<bool>(u_input.d > u_input.b.x, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)), select(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), 4294967295u == u_input.b.x), false)), any(!vec2<bool>(var_1.x < var_0.x, any(vec2<bool>(true, false)))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -225f))));
    return Struct_1(_wgslsmith_mult_u32(~0u, ~17854u | ~(~u_input.b.x)), ~reverseBits(u_input.a), _wgslsmith_add_vec4_u32(u_input.b, u_input.b), vec3<u32>(u_input.d, ~(u_input.d >> (1u % 32u)), _wgslsmith_dot_vec2_u32(u_input.b.zw, u_input.b.ww)) ^ vec3<u32>(~min(14544u, u_input.d), 1u, 1u), ~_wgslsmith_mod_vec3_u32(u_input.b.yxx, (vec3<u32>(4294967295u, u_input.d, 4294967295u) << (vec3<u32>(32778u, u_input.b.x, u_input.d) % vec3<u32>(32u))) | vec3<u32>(u_input.b.x, u_input.d, 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 3345u;
    let var_1 = Struct_2(func_5(func_1() << (~(~32962u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(u_input.b | func_2(any(vec4<bool>(true, true, false, false))).a.c, u_input.b), min(-u_input.a, _wgslsmith_mult_i32(~var_1.a.b, func_1())), 44293i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1041f, 495f, -1396f) * vec3<f32>(-143f, 1257f, 1505f))))))));
}

