struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<i32>) -> vec2<u32> {
    let var_0 = !vec3<bool>(true, any(vec3<bool>(true, -1560i == u_input.a, true)), !all(vec2<bool>(true, false)));
    let var_1 = vec3<i32>(arg_0.x, 9427i, 2147483647i);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(floor(-690f)), _wgslsmith_div_f32(-804f, -425f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-723f - 151f))))));
    var_2 = vec3<f32>(var_2.x, -748f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.x - var_2.x))))));
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.x, var_2.x, var_2.x), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-786f, 1000f, -732f), vec3<f32>(var_2.x, -531f, var_2.x))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(783f, -613f, 905f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -220f, 1283f) - vec3<f32>(_wgslsmith_f_op_f32(-2121f + -1103f), _wgslsmith_f_op_f32(sign(var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -119f) + _wgslsmith_f_op_f32(abs(1000f))))));
    return ((vec2<u32>(_wgslsmith_add_u32(u_input.b.x, u_input.c), u_input.b.x) << (_wgslsmith_clamp_vec2_u32(~u_input.b.xz, u_input.b.xz ^ vec2<u32>(1u, u_input.c), u_input.b.xz) % vec2<u32>(32u))) >> (((_wgslsmith_add_vec2_u32(u_input.b.xx, vec2<u32>(50600u, 0u)) | ~u_input.b.zz) >> (vec2<u32>(~u_input.c, u_input.b.x) % vec2<u32>(32u))) % vec2<u32>(32u))) >> (~vec2<u32>(u_input.b.x, _wgslsmith_div_u32(u_input.b.x & u_input.c, ~u_input.b.x)) % vec2<u32>(32u));
}

fn func_2() -> f32 {
    let var_0 = Struct_2(u_input.a, ~(vec2<u32>(13560u, abs(u_input.c)) | ~_wgslsmith_mult_vec2_u32(vec2<u32>(13055u, 4294967295u), vec2<u32>(u_input.b.x, u_input.c))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -238f))), _wgslsmith_f_op_f32(round(-149f))));
    let var_1 = _wgslsmith_dot_vec2_u32(countOneBits(~func_3(abs(vec4<i32>(1i, var_0.a, u_input.a, 8865i)))), firstLeadingBit(_wgslsmith_sub_vec2_u32(u_input.b.zy >> (_wgslsmith_mult_vec2_u32(u_input.b.yx, vec2<u32>(var_0.b.x, 14715u)) % vec2<u32>(32u)), ~vec2<u32>(u_input.b.x, 9327u))));
    var var_2 = var_0.c.x;
    var_2 = _wgslsmith_f_op_f32(step(-1000f, var_0.c.x));
    var var_3 = var_0;
    return -1080f;
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1473f))), _wgslsmith_f_op_f32(func_2()), 1151f, _wgslsmith_f_op_f32(round(679f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(103f, -136f, -472f, 522f))))), select(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 23238u, 1u, u_input.c), countOneBits(vec4<u32>(u_input.c, u_input.c, 73706u, 11183u))) > min(1u, _wgslsmith_mult_u32(4294967295u, u_input.b.x)), false, true), _wgslsmith_f_op_f32(max(943f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-785f + _wgslsmith_f_op_f32(trunc(-718f)))))));
    var var_1 = _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.c, min(abs(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x)), u_input.c)), _wgslsmith_mult_u32(u_input.c, u_input.b.x));
    var var_2 = 2288f;
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, -626f, _wgslsmith_f_op_f32(1000f * 1390f)));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + var_3.x));
    return Struct_2(u_input.a, func_3(vec4<i32>(1i, u_input.a, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -10378i, u_input.a, 32493i), vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i)), u_input.a << (u_input.b.x % 32u)), -(i32(-1i) * -217i))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_0.a.x, var_3.x), 722f) + _wgslsmith_div_vec2_f32(var_0.a.xy, vec2<f32>(var_0.c, _wgslsmith_f_op_f32(floor(519f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(false, true, false, true);
    var var_1 = 1u;
    let var_2 = _wgslsmith_clamp_vec2_i32(~_wgslsmith_clamp_vec2_i32(select(vec2<i32>(44652i, 62585i), _wgslsmith_div_vec2_i32(vec2<i32>(0i, -14239i), vec2<i32>(u_input.a, 11454i)), var_0.xx), vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -59952i << (u_input.b.x % 32u))), vec2<i32>(-30468i, u_input.a), vec2<i32>(_wgslsmith_mult_i32(abs(~1i), -47726i), firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a, 1i), max(-34163i, u_input.a)))));
    var_1 = abs(_wgslsmith_sub_u32(~abs(3017u), _wgslsmith_div_u32(33566u, 1u)));
    var var_3 = func_1();
    var_3 = func_1();
    var_3 = Struct_2(u_input.a, vec2<u32>(var_3.b.x, ~u_input.b.x ^ _wgslsmith_div_u32(var_3.b.x, var_3.b.x)), vec2<f32>(var_3.c.x, var_3.c.x));
    var var_4 = ~(~var_3.b.x >> (~(~37173u) % 32u));
    var var_5 = vec3<f32>(_wgslsmith_f_op_f32(var_3.c.x - _wgslsmith_f_op_f32(min(769f, 1f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1287f + 1509f), _wgslsmith_f_op_f32(-1184f + _wgslsmith_div_f32(1286f, var_3.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(var_5.x)));
}

