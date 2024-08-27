struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-2008f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1444f, 693f))), _wgslsmith_f_op_f32(sign(-1640f)))));
    var var_1 = Struct_3(Struct_2(vec4<i32>(arg_2.x, arg_0.x, 1i, abs(-u_input.b.x)), Struct_1(!select(arg_1.a, vec2<bool>(true, true), false), u_input.c.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(1322u, 4294967295u, 68991u), ~u_input.c)), -18598i & _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-20218i, -1094i, -13619i), vec3<i32>(-12519i, -2147483647i, arg_0.x)), _wgslsmith_mod_i32(arg_0.x, -112i), select(arg_2.x, arg_0.x, true)), Struct_1(arg_1.a, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 10044u, arg_1.c, 0u), vec4<u32>(4294967295u, 13368u, arg_1.c, 29543u)), ~1u), _wgslsmith_mod_i32(-15778i, arg_0.x)));
    let var_2 = !select(select(vec4<bool>(true, true, any(vec4<bool>(true, var_1.a.b.a.x, false, true)), !var_1.a.d.a.x), vec4<bool>(select(true, var_1.a.d.a.x, true), select(false, false, var_1.a.d.a.x), false, 1i > var_1.a.a.x), false), !select(!vec4<bool>(arg_1.a.x, var_1.a.d.a.x, true, true), vec4<bool>(true, var_1.a.b.a.x, false, var_1.a.d.a.x), arg_1.a.x || false), select(!vec4<bool>(true, true, var_1.a.d.a.x, false), vec4<bool>(var_1.a.b.a.x, arg_1.a.x, arg_1.a.x, all(vec4<bool>(false, false, false, false))), vec4<bool>(true, var_1.a.d.c == 5961u, all(vec3<bool>(var_1.a.d.a.x, true, arg_1.a.x)), arg_1.a.x)));
    var_1 = Struct_3(var_1.a);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, var_0.x, var_0.x))))), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) + _wgslsmith_f_op_f32(1363f + 437f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))))));
    return arg_1.a.x;
}

fn func_2() -> vec2<u32> {
    let var_0 = Struct_3(Struct_2(vec4<i32>(-2147483647i | _wgslsmith_sub_i32(u_input.b.x, 38643i), _wgslsmith_div_i32(12690i, u_input.b.x), -7739i, 21451i), Struct_1(vec2<bool>(true, true), _wgslsmith_div_u32(~u_input.c.x, _wgslsmith_mult_u32(4294967295u, u_input.c.x)), max(select(1u, u_input.c.x, false), 34141u)), -1i, Struct_1(vec2<bool>(true, all(vec4<bool>(false, false, false, true))), ~(0u >> (u_input.c.x % 32u)), u_input.c.x), 1i));
    let var_1 = vec4<bool>(select(true, var_0.a.b.a.x, true), !(!(!var_0.a.b.a.x)), !var_0.a.d.a.x, !(!func_3(u_input.a << (u_input.c.xz % vec2<u32>(32u)), var_0.a.d, ~vec2<i32>(6481i, 0i))));
    var var_2 = var_0.a.e & 23628i;
    var var_3 = var_0.a;
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(1266f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-164f, _wgslsmith_f_op_f32(-2034f * -1081f), var_1.x)) - _wgslsmith_f_op_f32(-1512f - _wgslsmith_f_op_f32(-1348f - -620f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1362f, -544f)), _wgslsmith_f_op_f32(2345f - 256f))))));
    return ~select(vec2<u32>(~var_0.a.d.c, abs(var_0.a.b.c)), u_input.c.zz, all(vec4<bool>(true, false, var_0.a.b.a.x, true)));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<bool>) -> i32 {
    let var_0 = 3692i;
    let var_1 = arg_1;
    let var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~(~vec2<u32>(1u, u_input.c.x)), vec2<u32>(u_input.c.x, ~(~arg_0.x))), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(32112u, 1u), u_input.c.xy), (u_input.c.yx | (vec2<u32>(40541u, 0u) >> (u_input.c.yx % vec2<u32>(32u)))) & ~func_2()));
    var var_3 = select(vec2<bool>(true, true), select(select(select(select(vec2<bool>(arg_1.x, true), arg_1.zy, true), vec2<bool>(true, var_1.x), vec2<bool>(arg_1.x, true)), !select(arg_1.zz, vec2<bool>(false, true), true), !arg_1.x), arg_1.zx, true), arg_1.x);
    var_3 = vec2<bool>(false, -1153f == _wgslsmith_f_op_f32(round(-235f)));
    return abs(0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(19768u, ~_wgslsmith_mult_u32(u_input.c.x, _wgslsmith_clamp_u32(4294967295u, u_input.c.x, u_input.c.x)), ~4294967295u, 1u) | ~select(~vec4<u32>(17428u, 11779u, u_input.c.x, 25310u) | ~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 41675u), ~(~vec4<u32>(0u, u_input.c.x, 1u, 33657u)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true)), any(vec2<bool>(true, false))));
    let var_1 = _wgslsmith_mod_vec2_u32(~(vec2<u32>(u_input.c.x, var_0.x) << (u_input.c.yx % vec2<u32>(32u))), vec2<u32>(1u, 0u));
    var var_2 = -vec3<i32>(func_1(~select(var_0.zzy, var_0.zzz, false), vec3<bool>(false, true, false)), -u_input.a.x, -2050i);
    var var_3 = Struct_3(Struct_2(countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(-15416i, -1815i, u_input.b.x, -2147483647i), vec4<i32>(-27418i, u_input.b.x, u_input.a.x, 54484i))), Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), false)), var_0.x, _wgslsmith_sub_u32(0u, u_input.c.x)), -(~reverseBits(2147483647i)), Struct_1(vec2<bool>(true, true), _wgslsmith_clamp_u32(firstTrailingBit(0u), var_0.x, 1u), 55603u), var_2.x));
    var var_4 = min(vec4<i32>(u_input.a.x, var_2.x, -44611i, abs(~var_3.a.c)), vec4<i32>(_wgslsmith_div_i32(var_2.x, 12061i), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(25534i, 2147483647i, u_input.a.x, 11690i), vec4<i32>(u_input.a.x, 2012i, -23900i, var_3.a.a.x)), var_3.a.a | vec4<i32>(u_input.b.x, 1i, 14347i, var_2.x)) | ~(i32(-1i) * -5577i), -abs(~(-2147483647i)), -1i));
    let x = u_input.a;
    s_output = StorageBuffer(~func_2().x, _wgslsmith_mult_i32(abs(-u_input.a.x), var_4.x), var_3.a.b.c, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-559f, 333f)))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2057f, 1000f)))))), vec2<f32>(_wgslsmith_f_op_f32(step(-1254f, _wgslsmith_f_op_f32(trunc(-111f)))), 292f))));
}

