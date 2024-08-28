struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(-657f, -1000f, 343f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-410f, 850f, 170f) * vec3<f32>(-1933f, 1814f, 600f)))))), min(u_input.d.x, u_input.a) >> (~_wgslsmith_clamp_u32(u_input.e, u_input.c, u_input.e) % 32u));
    let var_1 = false;
    var_0 = Struct_2(var_0.a, u_input.d.x);
    return Struct_2(vec3<f32>(var_0.a.x, -503f, var_0.a.x), _wgslsmith_sub_i32(0i, _wgslsmith_dot_vec2_i32(-vec2<i32>(var_0.b, 9580i) >> (~vec2<u32>(u_input.e, 1u) % vec2<u32>(32u)), max(u_input.d.zz, _wgslsmith_mod_vec2_i32(u_input.d.zz, vec2<i32>(41235i, var_0.b))))));
}

fn func_3() -> f32 {
    var var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(424f)) + _wgslsmith_f_op_f32(654f - -2437f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-689f * 279f))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1626f)), 1678f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-443f - 1000f))))), 33319i);
    let var_1 = ~max(max(vec3<u32>(~24730u, u_input.c, _wgslsmith_sub_u32(13910u, u_input.b)), select(vec3<u32>(13340u, 41686u, u_input.b), firstLeadingBit(vec3<u32>(u_input.b, 4294967295u, u_input.b)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false))), abs(~vec3<u32>(u_input.b, 79236u, 65842u) & vec3<u32>(31283u, u_input.c, 60164u)));
    var_0 = func_2();
    let var_2 = Struct_2(vec3<f32>(_wgslsmith_div_f32(var_0.a.x, var_0.a.x), var_0.a.x, var_0.a.x), u_input.d.x);
    var_0 = func_2();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(232f - 1083f));
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_1, arg_3: vec4<i32>) -> f32 {
    var var_0 = vec3<u32>(u_input.c, 9385u, 1u);
    let var_1 = func_2();
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(var_1.a.x - arg_1), -849f, _wgslsmith_f_op_f32(func_3()));
    var_0 = ~(~vec3<u32>(1u, var_0.x & _wgslsmith_mult_u32(19364u, var_0.x), ~(~38172u)));
    var_0 = vec3<u32>(var_0.x, _wgslsmith_add_u32(u_input.c, _wgslsmith_mod_u32(~var_0.x, 4294967295u)), 37643u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1489f - var_1.a.x) * _wgslsmith_div_f32(var_2.x, -743f)) * _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(floor(arg_1)))), any(vec4<bool>(arg_0.x, all(vec2<bool>(arg_0.x, arg_2.a)), true, arg_0.x)))));
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: f32) -> vec3<bool> {
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(33160u, 1u), vec2<u32>(19050u, 3499u)), countOneBits(firstTrailingBit(vec2<u32>(296u, 15798u)))) < _wgslsmith_mult_u32(46945u, ~(~20587u)), func_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-185f)) * -114f))), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(402f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-278f)) + _wgslsmith_f_op_f32(func_1(vec3<bool>(false, false, true), -1507f, Struct_1(false, vec3<bool>(true, true, false)), vec4<i32>(u_input.d.x, -269i, -9042i, u_input.a)))))));
    let var_1 = Struct_1(!var_0.a, select(var_0.b, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1673f - 1543f) * 797f), select(var_0.b, vec3<bool>(var_0.b.x, false, false), !vec3<bool>(var_0.a, var_0.a, false)), _wgslsmith_f_op_f32(func_3())), false));
    let var_2 = 1312i;
    var var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-17962i, _wgslsmith_mod_i32(var_3.b, u_input.d.x & u_input.a)) & ~(-1i), firstLeadingBit(u_input.d.xx), i32(-1i) * -(~_wgslsmith_clamp_i32(var_2, u_input.a, 0i)));
}

