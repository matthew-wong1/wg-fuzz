struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
    d: i32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: vec4<f32>, arg_2: bool) -> vec2<bool> {
    var var_0 = Struct_2(any(select(select(vec2<bool>(arg_0.b.x, false), arg_0.b, !vec2<bool>(false, arg_2)), arg_0.b, vec2<bool>(arg_0.b.x, arg_0.b.x))), _wgslsmith_f_op_vec3_f32(arg_1.wyx + vec3<f32>(_wgslsmith_div_f32(arg_1.x, arg_1.x), arg_0.a.a.x, 1f)), arg_0.a, 0i, _wgslsmith_div_vec3_i32(u_input.a, select(-vec3<i32>(u_input.a.x, 53306i, -2147483647i), u_input.a >> (vec3<u32>(82423u, 3276u, 4894u) % vec3<u32>(32u)), false)) | ~abs(~u_input.a));
    var_0 = Struct_2(any(arg_0.b), var_0.b, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.a.a, vec2<f32>(-1452f, -121f)))), -var_0.d, u_input.a);
    var_0 = Struct_2(all(arg_0.b), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -412f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_0.c.a.x, 497f)))), var_0.a)), _wgslsmith_f_op_f32(step(var_0.c.a.x, _wgslsmith_f_op_f32(-arg_0.a.a.x))), _wgslsmith_f_op_f32(-1348f - arg_1.x)), arg_0.a, ~(~(-5106i)), -vec3<i32>(min(_wgslsmith_mult_i32(-21644i, 1i), _wgslsmith_add_i32(1084i, u_input.a.x)), ~var_0.e.x, _wgslsmith_mod_i32(-var_0.d, ~31483i)));
    var_0 = Struct_2(arg_0.b.x, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(-727f, -1035f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2403f) + -1000f), 1164f), _wgslsmith_f_op_vec3_f32(min(var_0.b, _wgslsmith_f_op_vec3_f32(floor(var_0.b))))), Struct_1(vec2<f32>(311f, _wgslsmith_f_op_f32(step(-155f, _wgslsmith_f_op_f32(abs(1000f)))))), var_0.e.x, u_input.a);
    var var_1 = var_0.c;
    return select(!vec2<bool>(all(select(vec3<bool>(arg_0.b.x, true, true), vec3<bool>(false, arg_0.b.x, true), var_0.a)), true), arg_0.b, false);
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_mod_i32(1i, min(u_input.a.x, u_input.a.x)) != (countOneBits(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-1i, u_input.a.x)), u_input.a.xz ^ vec2<i32>(u_input.a.x, u_input.a.x))) >> (~u_input.c % 32u));
    var var_1 = true;
    var var_2 = Struct_5(Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(442f, -1260f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -277f), -284f), any(vec3<bool>(true, true, true)) || true))), func_3(Struct_5(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(669f, 966f) - vec2<f32>(250f, -1042f))), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, -157f, -608f, -1047f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-253f, -954f, 138f, -1255f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(196f, -802f, -892f, -341f), vec4<f32>(-521f, -994f, 657f, -1165f))) * vec4<f32>(1f, 1f, 1f, 1f))), any(vec2<bool>(true, true))));
    var var_3 = -u_input.a.x;
    var var_4 = i32(-1i) * -abs(u_input.a.x);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.a.x) - 212f), var_2.a.a.x)) * var_2.a.a.x)));
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<i32>(u_input.a.x, u_input.a.x, -u_input.a.x);
    var var_1 = abs(vec4<u32>(1u, abs(_wgslsmith_clamp_u32(firstTrailingBit(116127u), _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(u_input.c, u_input.d.x, 35408u)), 1u)), u_input.b, _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.b << (1u % 32u), ~4294967295u), ~4294967295u)));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -650f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1178f - _wgslsmith_f_op_f32(-520f * 893f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-870f - -1170f), _wgslsmith_f_op_f32(f32(-1f) * -1360f))) * _wgslsmith_f_op_f32(func_2())));
    let var_3 = var_0.x;
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1222f, 582f) - vec2<f32>(-617f, 280f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-895f, -317f)))))));
    return var_4;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec3<i32>) -> vec3<f32> {
    var var_0 = firstTrailingBit(vec4<u32>(min(u_input.c, u_input.b), 18566u, 4294967295u, ~max(min(15140u, u_input.b), ~4294967295u)));
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(var_1.b.x + _wgslsmith_f_op_f32(func_2()));
    var_0 = vec4<u32>(var_0.x, abs(var_0.x), ~((var_0.x & u_input.d.x) | 78329u), 89001u) >> (vec4<u32>(~reverseBits(u_input.b), _wgslsmith_clamp_u32(13567u, u_input.b, select(u_input.c, ~var_0.x, var_1.a)), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, u_input.d.x, 45099u, 1u), vec4<u32>(25355u, 0u, 71600u, u_input.b)), _wgslsmith_mult_u32(var_0.x, countOneBits(u_input.c))), 1u) % vec4<u32>(32u));
    var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.c.a.x), arg_1.a.x)))))));
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_4(Struct_2(true, vec3<f32>(370f, -351f, -516f), Struct_1(vec2<f32>(-1021f, 1374f)), -38103i, vec3<i32>(1i, u_input.a.x, -32920i)), func_1(), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1223f, -146f, 813f))), _wgslsmith_sub_vec3_i32(u_input.a, vec3<i32>(-1127i, u_input.a.x, -1i)))))) * vec3<f32>(-1013f, 791f, 500f)), Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -855f), func_1().a.x)))), _wgslsmith_add_i32(_wgslsmith_sub_i32(-2147483647i, u_input.a.x), 0i), firstTrailingBit(select(vec3<i32>(_wgslsmith_div_i32(-30396i, u_input.a.x), u_input.a.x | u_input.a.x, -u_input.a.x), u_input.a, any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true)))));
    var var_1 = true;
    let var_2 = -1i;
    let var_3 = func_1();
    var var_4 = vec2<i32>(u_input.a.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a.yx, vec2<i32>(0i, u_input.a.x), firstTrailingBit(var_0.e.yy)), countOneBits(u_input.a.xy) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 20504u), vec2<u32>(u_input.b, u_input.b), u_input.d.yz) % vec2<u32>(32u))), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(select(var_0.e.xx, var_0.e.zy, vec2<bool>(var_0.a, var_0.a)), -u_input.a.xx), vec2<i32>(_wgslsmith_div_i32(12926i, var_0.e.x), _wgslsmith_add_i32(u_input.a.x, var_0.d)))));
    let var_5 = var_0.e.zz;
    var_1 = true;
    var var_6 = ~u_input.b << (_wgslsmith_add_u32(0u, ~4294967295u) % 32u);
    let var_7 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b.yz)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(754f, var_0.b.x))) + var_3.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec3_i32(~min(var_0.e, u_input.a), vec3<i32>(~(-1209i), ~(-23782i), var_5.x)), u_input.c, _wgslsmith_mult_vec3_u32(max(vec3<u32>(_wgslsmith_clamp_u32(1u, u_input.d.x, 0u), u_input.c, u_input.d.x), max(_wgslsmith_mod_vec3_u32(u_input.d, vec3<u32>(1u, 4875u, 27977u)), vec3<u32>(u_input.b, u_input.d.x, u_input.b))), u_input.d), ~0u);
}

