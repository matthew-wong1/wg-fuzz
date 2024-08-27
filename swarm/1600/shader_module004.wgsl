struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<bool>) -> vec2<i32> {
    let var_0 = u_input.c < u_input.d;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1171f);
    let var_2 = arg_0;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.c.x), -2500f)), _wgslsmith_f_op_f32(var_2.c.x - -991f)))) + -774f);
    var var_3 = var_2;
    return var_2.b.zx;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: i32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(floor(1f));
    var var_1 = _wgslsmith_div_vec3_i32(abs(~(vec3<i32>(-2147483647i, 2147483647i, arg_2) & vec3<i32>(2147483647i, arg_2, arg_2))), abs(vec3<i32>(-u_input.b, ~u_input.b, abs(u_input.b)))) & reverseBits(vec3<i32>(-2147483647i, u_input.b, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.b, 24652i, arg_2), i32(-1i) * -1i)));
    var_0 = -509f;
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-659f, -1012f, 1102f) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1290f, -903f, -658f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(163f, 106f, -585f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-623f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-621f, 1204f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1760f - 234f))), -403f), arg_1.x));
    var var_3 = firstLeadingBit(min(vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(var_1.x, -11911i, 7106i), var_1.x, var_1.x), 2147483647i), -_wgslsmith_add_vec2_i32(func_2(Struct_1(arg_1.x, vec3<i32>(7902i, arg_2, 2147483647i), var_2), -2211f, vec2<bool>(arg_1.x, arg_1.x)), _wgslsmith_mod_vec2_i32(var_1.yz, vec2<i32>(var_1.x, arg_2)))));
    return arg_1.x;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec2<f32>, arg_3: bool) -> vec3<i32> {
    var var_0 = Struct_1(false, vec3<i32>(~(_wgslsmith_mult_i32(u_input.b, 27978i) & u_input.b), ~_wgslsmith_mod_i32(arg_0.b.x & 1i, 1i), -1i), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(round(arg_0.c.x)))) - 1772f), _wgslsmith_f_op_f32(sign(-843f)), -119f));
    var_0 = Struct_1(true, -arg_0.b, var_0.c);
    let var_1 = vec2<f32>(1021f, -677f);
    var_0 = Struct_1(!all(!vec4<bool>(arg_1, arg_0.a, true, var_0.a)), vec3<i32>(_wgslsmith_mod_i32((u_input.b ^ -1i) & ~arg_0.b.x, var_0.b.x), i32(-1i) * -37454i, -(~6882i) >> ((~u_input.d | ~u_input.e.x) % 32u)), var_0.c);
    let var_2 = Struct_1(true, vec3<i32>(firstLeadingBit(arg_0.b.x), (countOneBits(var_0.b.x) ^ 6698i) >> (_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 1u, 41417u, u_input.c), vec4<u32>(u_input.d, 70523u, u_input.d, u_input.c)), ~u_input.d) % 32u), 26256i & _wgslsmith_mod_i32(-23349i, select(-21280i, -43344i, false))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) + var_0.c))))))));
    return var_2.b;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<i32>) -> f32 {
    let var_0 = vec3<bool>(true, true || !all(vec3<bool>(true, true, true)), true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -216f), 1283f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1145f, _wgslsmith_f_op_f32(max(195f, 1276f)))))));
    var var_1 = vec4<bool>(any(vec2<bool>(true, true)), any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true)) && !func_1(~u_input.e, select(vec2<bool>(true, false), vec2<bool>(true, true), true), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -18159i, u_input.b, u_input.b), vec4<i32>(-43223i, u_input.b, 88010i, u_input.b))), !(false & (max(30543u, u_input.c) != 20252u)), true);
    let var_2 = i32(-1i) * -8195i;
    var_0 = _wgslsmith_f_op_f32(func_4(vec3<u32>(63990u ^ ~u_input.d, u_input.a, _wgslsmith_add_u32((u_input.a | 27049u) >> (firstLeadingBit(u_input.e.x) % 32u), u_input.c ^ (u_input.a << (u_input.e.x % 32u)))), _wgslsmith_mod_vec3_i32(vec3<i32>(16585i, _wgslsmith_mod_i32(1i, i32(-1i) * -1i), _wgslsmith_div_i32(-2147483647i, -2147483647i)), abs(_wgslsmith_mult_vec3_i32(func_3(Struct_1(false, vec3<i32>(-19350i, u_input.b, var_2), vec3<f32>(483f, 147f, -1000f)), true, vec2<f32>(1050f, -1356f), false), vec3<i32>(var_2, 2147483647i, -8702i))))));
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2405f) + _wgslsmith_f_op_f32(f32(-1f) * -500f)), -419f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1073f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(778f * -603f), 731f) - _wgslsmith_f_op_f32(f32(-1f) * -145f)))));
    var var_3 = 586f;
    var var_4 = Struct_1(var_1.x, -abs(min(vec3<i32>(u_input.b, -7215i, var_2), vec3<i32>(var_2, u_input.b, var_2))) & vec3<i32>(func_2(Struct_1(var_1.x, vec3<i32>(u_input.b, 27043i, u_input.b), vec3<f32>(-1000f, -105f, -1064f)), _wgslsmith_f_op_f32(select(990f, -1038f, var_1.x)), var_1.yx).x, min(11574i, var_2), var_2), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
    var_3 = var_4.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(30136u, reverseBits(min(~vec3<u32>(0u, u_input.d, u_input.a), min(vec3<u32>(u_input.c, u_input.a, 1u) >> (vec3<u32>(4294967295u, 0u, 1u) % vec3<u32>(32u)), max(vec3<u32>(4294967295u, u_input.a, 15609u), vec3<u32>(u_input.d, 4294967295u, u_input.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1310f)) * 897f));
}

