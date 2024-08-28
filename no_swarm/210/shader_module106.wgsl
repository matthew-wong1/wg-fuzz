struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: vec2<f32>,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: vec2<bool>,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: Struct_3) -> vec4<bool> {
    let var_0 = !all(vec2<bool>(all(vec2<bool>(true, true)), any(vec2<bool>(false, true))));
    var var_1 = _wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.a))) - -460f))));
    var var_2 = ~arg_1 >> (select(arg_1 | arg_1, _wgslsmith_mult_u32(u_input.e, 47568u), !(any(vec3<bool>(false, var_0, true)) && true)) % 32u);
    var_2 = _wgslsmith_clamp_u32(abs(arg_1), u_input.e, arg_1);
    let var_3 = -1i;
    return !select(!vec4<bool>(true && var_0, any(vec4<bool>(var_0, true, var_0, true)), 1u == u_input.b.x, all(vec2<bool>(var_0, var_0))), select(!select(vec4<bool>(var_0, true, false, false), vec4<bool>(true, true, true, true), var_0), select(select(vec4<bool>(var_0, false, var_0, true), vec4<bool>(true, false, true, var_0), var_0), select(vec4<bool>(true, var_0, false, var_0), vec4<bool>(var_0, true, false, var_0), false), !var_0), select(select(vec4<bool>(var_0, false, var_0, true), vec4<bool>(var_0, false, false, true), false), !vec4<bool>(false, var_0, var_0, true), !vec4<bool>(var_0, true, var_0, var_0))), any(!(!vec2<bool>(var_0, false))));
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = ~_wgslsmith_add_vec3_i32(select(-_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, arg_0, -1i), vec3<i32>(arg_0, -63058i, arg_0)), -select(vec3<i32>(arg_0, arg_0, u_input.a), vec3<i32>(-12136i, arg_0, arg_0), vec3<bool>(true, false, false)), true), vec3<i32>(~(i32(-1i) * -43050i), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2147483647i, -1i), vec3<i32>(arg_0, 34414i, 1i))), -2147483647i));
    let var_1 = false;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-214f * 917f) - -225f))) * -490f));
    let var_3 = 0u;
    let var_4 = !func_3(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1458f)), var_3, Struct_3(var_2.a));
    return var_3;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: Struct_5) -> f32 {
    var var_0 = func_2(arg_2.b);
    let var_1 = !arg_2.c.x;
    let var_2 = Struct_2(arg_2.a >= -392f);
    var_0 = reverseBits(0u);
    var var_3 = arg_2.c;
    return 1183f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -1349f) + 1151f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-196f, -1170f)) - _wgslsmith_f_op_f32(func_1(u_input.b.xw, vec4<f32>(-696f, -376f, 1000f, 382f), Struct_5(2225f, -66248i, vec2<bool>(true, false), u_input.b.x, -2147483647i)))))))));
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 1216f) + _wgslsmith_f_op_f32(349f * 663f))))));
    var var_1 = true;
    let var_2 = u_input.d;
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b.yx, u_input.b.wy), u_input.b.x), vec4<f32>(787f, _wgslsmith_f_op_f32(abs(-264f)), -327f, _wgslsmith_f_op_f32(f32(-1f) * -1411f)), Struct_5(-118f, _wgslsmith_sub_i32(var_2, u_input.a), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), u_input.e, -42411i)))));
    var var_4 = Struct_4(~((~u_input.c ^ (u_input.b.x & 40549u)) ^ countOneBits(u_input.e)), reverseBits(firstLeadingBit(i32(-1i) * -var_2)), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_3.a, -685f))), _wgslsmith_f_op_f32(sign(-812f))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_4.b | -_wgslsmith_div_i32(var_4.b, reverseBits(1i)), -1i);
}

