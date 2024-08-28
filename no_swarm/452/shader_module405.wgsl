struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec4<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec4<bool>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
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

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec2<f32>, arg_3: u32) -> bool {
    var var_0 = ~arg_1.a.a.d;
    var var_1 = _wgslsmith_mod_i32(~(~0i), ~(-1i | arg_1.a.b.x));
    let var_2 = -1049f;
    var var_3 = vec2<f32>(939f, _wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(-arg_2.x)));
    var_1 = -20739i;
    return true;
}

fn func_3(arg_0: vec2<u32>, arg_1: bool) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(743f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-236f, 525f))), _wgslsmith_f_op_f32(ceil(1347f)), _wgslsmith_f_op_f32(-196f + _wgslsmith_f_op_f32(floor(-1000f)))) * vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -861f))), -252f, 1550f, 518f)), vec4<f32>(_wgslsmith_f_op_f32(ceil(-539f)), 1f, -197f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-746f)), -476f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -988f) * -1603f))), true));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(194f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_f32(select(2035f, var_0.x, arg_1 && true)))), _wgslsmith_f_op_f32(var_0.x + var_0.x), 520f, -1236f);
    var var_1 = ~min(max(0u, _wgslsmith_sub_u32(u_input.b, u_input.b)) | select(u_input.b >> (1u % 32u), u_input.b & 36384u, true), max(~1u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, 1u, u_input.b), ~u_input.b)));
    var var_2 = vec4<i32>(u_input.c.x, max(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-48137i, u_input.c.x << (38200u % 32u), u_input.c.x, u_input.a.x >> (1929u % 32u)), ~u_input.c)), u_input.a.x, -2147483647i ^ u_input.c.x);
    let var_3 = _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(round(var_0.x)));
    return select(select(!select(!vec2<bool>(arg_1, true), vec2<bool>(true, false), vec2<bool>(false, true)), select(!(!vec2<bool>(true, arg_1)), select(vec2<bool>(true, arg_1), !vec2<bool>(true, arg_1), !arg_1), select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false), arg_1), !vec2<bool>(false, arg_1), select(vec2<bool>(false, arg_1), vec2<bool>(true, arg_1), true))), select(select(vec2<bool>(true, true), vec2<bool>(false, arg_1), any(vec3<bool>(arg_1, false, true))), select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, true), arg_1), select(vec2<bool>(true, arg_1), vec2<bool>(true, false), vec2<bool>(arg_1, false)), true), vec2<bool>(true, true))), select(vec2<bool>(!any(vec2<bool>(false, true)), -var_2.x >= 42211i), !vec2<bool>(any(vec2<bool>(arg_1, false)), true), select(!(!vec2<bool>(arg_1, true)), !vec2<bool>(arg_1, arg_1), select(!vec2<bool>(arg_1, false), vec2<bool>(arg_1, true), vec2<bool>(true, false)))), !select(select(!vec2<bool>(arg_1, arg_1), select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, true), false), vec2<bool>(arg_1, arg_1)), select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, true), any(vec4<bool>(arg_1, false, false, arg_1))), select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(false, false), arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(false, true))));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_0.a.c.zyx, arg_0.a.c.wyx)));
    let var_1 = select(func_3(~vec2<u32>(arg_0.d.x, 47142u) & _wgslsmith_div_vec2_u32(abs(arg_0.a.d.yy), _wgslsmith_mod_vec2_u32(arg_0.a.d.zx, arg_0.a.d.yx)), any(vec4<bool>(false && arg_0.c.x, func_2(Struct_4(Struct_2(arg_0.a, u_input.a.zz, arg_0.c, vec2<u32>(4294967295u, 12739u))), Struct_4(Struct_2(Struct_1(vec2<f32>(-1240f, var_0.x), true, arg_0.a.c, arg_0.a.d), arg_0.b, vec4<bool>(true, arg_0.c.x, arg_0.a.b, arg_0.c.x), arg_0.d)), vec2<f32>(455f, 250f), arg_0.d.x), arg_0.c.x, all(vec4<bool>(false, arg_0.a.b, true, true))))), select(arg_0.c.wz, vec2<bool>(all(func_3(arg_0.d, true)), (arg_0.a.d.x << (u_input.b % 32u)) != _wgslsmith_clamp_u32(u_input.b, arg_0.d.x, 4294967295u)), vec2<bool>(!(!arg_0.c.x), true)), arg_0.c.zx);
    var var_2 = vec2<u32>(reverseBits(firstLeadingBit(65812u) ^ select(arg_0.d.x, ~4294967295u, all(arg_0.c))), abs(arg_0.a.d.x));
    var var_3 = arg_0.c.ywy;
    let var_4 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(arg_0.a.a - vec2<f32>(arg_0.a.a.x, _wgslsmith_f_op_f32(step(802f, -939f)))), !(u_input.a.x < arg_1.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(arg_0.a.c))) - arg_0.a.c), select(vec3<u32>(~var_2.x, var_2.x, ~var_2.x), vec3<u32>(var_2.x, 1u, 4294967295u), false & func_3(vec2<u32>(0u, arg_0.a.d.x), var_1.x).x)), arg_0, min(_wgslsmith_clamp_vec2_i32(arg_1.yz, select(vec2<i32>(arg_1.x, arg_1.x) << (arg_0.a.d.yx % vec2<u32>(32u)), arg_1.yx, false), _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.b.x, 1i), arg_1.yx), select(arg_1.zx, arg_0.b, arg_0.c.wx), firstLeadingBit(vec2<i32>(arg_0.b.x, 0i)))), max(u_input.c.yz, max(u_input.a.xx & vec2<i32>(-1i, u_input.c.x), _wgslsmith_sub_vec2_i32(u_input.c.zy, vec2<i32>(u_input.a.x, arg_1.x))))), arg_0);
    return firstLeadingBit(vec2<u32>(0u, _wgslsmith_dot_vec2_u32(firstTrailingBit(~var_4.b.a.d.xy), vec2<u32>(0u, 1u))));
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_2.c.yy;
    let var_1 = any(select(arg_2.c.xz, arg_2.c.zx, func_3(abs(vec2<u32>(arg_0, 43616u)), arg_2.a.b)));
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(arg_2.a.c.xw - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2.a.a.x, -1024f)))))), true, vec4<f32>(1384f, _wgslsmith_f_op_f32(-arg_2.a.a.x), -112f, arg_2.a.a.x), _wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, 1u, 0u)), arg_2.a.d, arg_2.a.d)), Struct_2(arg_2.a, vec2<i32>(-68693i, arg_2.b.x), arg_2.c, vec2<u32>(~5844u, abs(arg_0)) << (arg_2.d % vec2<u32>(32u))), -_wgslsmith_add_vec2_i32(min(vec2<i32>(0i, -12514i), arg_2.b), select(arg_2.b << (vec2<u32>(37555u, 91858u) % vec2<u32>(32u)), arg_1.xy, arg_2.c.ww)), Struct_2(arg_2.a, vec2<i32>(arg_2.b.x, _wgslsmith_mod_i32(_wgslsmith_add_i32(arg_2.b.x, arg_1.x), abs(4291i))), arg_2.c, arg_2.a.d.yx));
    var_2 = Struct_3(Struct_1(arg_2.a.c.xy, !(var_0.x || (var_0.x & false)), _wgslsmith_f_op_vec4_f32(-var_2.d.a.c), _wgslsmith_div_vec3_u32(reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 0u, 4294967295u), vec3<u32>(43217u, arg_2.d.x, arg_0), var_2.d.a.d)), vec3<u32>(~49571u, ~1u, var_2.d.a.d.x))), Struct_2(var_2.a, arg_1.yw, select(vec4<bool>(true, var_1, !var_0.x, arg_2.a.b), select(!arg_2.c, vec4<bool>(var_1, false, false, arg_2.a.b), !var_0.x), var_2.d.a.b), reverseBits(var_2.a.d.zz)), max(arg_1.zw, abs(min(min(var_2.d.b, u_input.a.xz), min(arg_1.zz, var_2.b.b)))), var_2.d);
    let var_3 = all(select(select(vec3<bool>(false, true, all(var_2.d.c)), vec3<bool>(any(var_2.d.c.yzy), arg_2.a.b, func_2(Struct_4(var_2.b), Struct_4(Struct_2(arg_2.a, vec2<i32>(u_input.c.x, -1i), arg_2.c, vec2<u32>(11519u, arg_0))), arg_2.a.c.zw, 2147u)), var_2.b.c.wxz), vec3<bool>(false, false, all(func_3(vec2<u32>(4294967295u, 4294967295u), true))), vec3<bool>(!func_2(Struct_4(arg_2), Struct_4(Struct_2(Struct_1(vec2<f32>(arg_2.a.a.x, var_2.d.a.c.x), arg_2.c.x, arg_2.a.c, var_2.b.a.d), arg_2.b, var_2.d.c, var_2.d.a.d.zy)), vec2<f32>(var_2.d.a.c.x, arg_2.a.a.x), u_input.b), !arg_2.c.x || !var_2.b.a.b, true)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.a.c.wx)), vec2<f32>(-197f, _wgslsmith_f_op_f32(-var_2.b.a.a.x)))), all(vec4<bool>(var_0.x, !(!arg_2.c.x), arg_2.a.b, true)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(arg_2.a.c, vec4<f32>(_wgslsmith_f_op_f32(var_2.a.a.x + -151f), _wgslsmith_f_op_f32(round(-1948f)), _wgslsmith_f_op_f32(arg_2.a.a.x * var_2.d.a.a.x), arg_2.a.a.x)), vec4<f32>(1308f, 1f, arg_2.a.c.x, arg_2.a.a.x), vec4<bool>(true, var_1, true, !select(false, false, true)))), vec3<u32>(~0u, countOneBits(1u), 4294967295u << (((4294967295u & u_input.b) | _wgslsmith_add_u32(24062u, var_2.d.a.d.x)) % 32u)));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_3) -> Struct_2 {
    let var_0 = -2147483647i;
    let var_1 = arg_2.d;
    let var_2 = var_1.c.zy;
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(1i, Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(394f, -1493f)))))), true, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-543f)), _wgslsmith_f_op_f32(f32(-1f) * -1571f), _wgslsmith_f_op_f32(min(2277f, -599f)), 949f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-735f, -1000f, 386f, 2331f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1709f, 766f, 1323f, 761f)))), _wgslsmith_clamp_vec3_u32(reverseBits(~vec3<u32>(u_input.b, 4294967295u, 56034u)), ~(~vec3<u32>(u_input.b, 1u, 1u)), _wgslsmith_sub_vec3_u32(max(vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<u32>(u_input.b, 4294967295u, u_input.b)), vec3<u32>(0u, 2899u, u_input.b)))), Struct_3(func_4(max(_wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b), u_input.b), vec4<i32>(1i, 2147483647i, _wgslsmith_sub_i32(u_input.a.x, -1i), firstLeadingBit(u_input.a.x)), Struct_2(Struct_1(vec2<f32>(856f, 184f), true, vec4<f32>(231f, 629f, 1817f, 1793f), vec3<u32>(u_input.b, u_input.b, 1u)), abs(vec2<i32>(u_input.a.x, u_input.a.x)), vec4<bool>(true, false, true, true), func_1(Struct_2(Struct_1(vec2<f32>(1000f, 233f), true, vec4<f32>(-209f, -582f, -1406f, 481f), vec3<u32>(1u, 63692u, 1u)), u_input.a.yy, vec4<bool>(true, false, false, true), vec2<u32>(u_input.b, u_input.b)), u_input.a))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1118f, 544f)), false, vec4<f32>(-2182f, -349f, -161f, -195f), ~vec3<u32>(u_input.b, u_input.b, 1u)), min(_wgslsmith_mult_vec2_i32(vec2<i32>(-32632i, -24990i), vec2<i32>(u_input.a.x, u_input.c.x)), reverseBits(vec2<i32>(-2164i, -1i))), select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true)), true), ~vec2<u32>(16265u, u_input.b) | vec2<u32>(0u, u_input.b)), firstLeadingBit(_wgslsmith_add_vec2_i32(abs(vec2<i32>(u_input.a.x, 1i)), ~u_input.a.xz)), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1110f, 238f) + vec2<f32>(2273f, 332f)), true, _wgslsmith_f_op_vec4_f32(vec4<f32>(230f, -1035f, 205f, -704f) - vec4<f32>(-330f, 1496f, 500f, 201f)), abs(vec3<u32>(1u, 87039u, u_input.b))), vec2<i32>(_wgslsmith_add_i32(-1684i, u_input.a.x), -u_input.a.x), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), true), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(50348u, u_input.b)))));
    let var_1 = func_2(Struct_4(Struct_2(var_0.a, u_input.a.xz, var_0.c, firstTrailingBit(var_0.d))), Struct_4(Struct_2(Struct_1(vec2<f32>(-1000f, var_0.a.a.x), var_0.a.b, vec4<f32>(1000f, var_0.a.a.x, var_0.a.a.x, 908f), var_0.a.d), -var_0.b, var_0.c, var_0.d)), _wgslsmith_f_op_vec2_f32(var_0.a.a * var_0.a.a), u_input.b) && var_0.a.b;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(func_4(u_input.b, _wgslsmith_mult_vec4_i32(u_input.c, u_input.c), var_0).a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1073f, var_0.a.c.x) - vec2<f32>(var_0.a.a.x, 2032f)))))) * func_4(u_input.b, firstTrailingBit(~u_input.c) ^ (-vec4<i32>(var_0.b.x, u_input.a.x, var_0.b.x, -25273i) >> ((vec4<u32>(var_0.d.x, 4294967295u, var_0.a.d.x, var_0.d.x) & vec4<u32>(1u, u_input.b, 1u, 103715u)) % vec4<u32>(32u))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.c.x, -1011f) + vec2<f32>(var_0.a.c.x, var_0.a.a.x)), all(var_0.c), vec4<f32>(var_0.a.a.x, var_0.a.c.x, var_0.a.c.x, 593f), ~vec3<u32>(var_0.d.x, 1u, var_0.d.x)), -vec2<i32>(var_0.b.x, 13097i), !select(var_0.c, var_0.c, var_0.c.x), var_0.d)).a);
    var var_3 = -(var_0.b ^ -var_0.b);
    var var_4 = false;
    var_4 = func_4(abs(~42592u), vec4<i32>(-1i) * -(reverseBits(vec4<i32>(var_3.x, u_input.c.x, 1i, -6711i)) >> (vec4<u32>(24440u, 0u, 64092u, var_0.a.d.x) % vec4<u32>(32u))), Struct_2(var_0.a, _wgslsmith_sub_vec2_i32(func_5(48919i, var_0.a, Struct_3(var_0.a, var_0, var_0.b, var_0)).b, _wgslsmith_div_vec2_i32(vec2<i32>(var_0.b.x, -33818i), vec2<i32>(-54074i, -2147483647i))) << (countOneBits(var_0.a.d.xy) % vec2<u32>(32u)), select(var_0.c, vec4<bool>(-1942f >= var_0.a.c.x, var_1, var_1, true), !var_1 | true), var_0.a.d.zz)).b;
    let var_5 = func_5(-42923i, var_0.a, Struct_3(var_0.a, func_5(1i, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, 813f) * vec2<f32>(1000f, -225f)), !var_0.c.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(-397f, var_2.x, 764f, var_0.a.c.x) * vec4<f32>(var_2.x, var_0.a.a.x, 1349f, var_2.x)), vec3<u32>(u_input.b, var_0.d.x, 4294967295u)), Struct_3(func_4(var_0.d.x, u_input.c, Struct_2(var_0.a, var_0.b, var_0.c, var_0.a.d.xz)), Struct_2(var_0.a, var_0.b, var_0.c, var_0.a.d.zz), vec2<i32>(1i, var_0.b.x) & u_input.c.yz, func_5(var_0.b.x, var_0.a, Struct_3(Struct_1(var_2, var_0.c.x, vec4<f32>(var_2.x, var_2.x, var_0.a.a.x, 1071f), var_0.a.d), var_0, vec2<i32>(var_0.b.x, 2147483647i), var_0)))), var_0.b, Struct_2(Struct_1(var_2, var_1, var_0.a.c, abs(var_0.a.d)), min(var_0.b, vec2<i32>(1i, -22156i)), select(var_0.c, var_0.c, select(vec4<bool>(var_0.c.x, var_0.c.x, false, var_0.a.b), vec4<bool>(true, var_1, var_1, false), var_0.c)), var_0.a.d.zx))).a;
    var var_6 = var_0.a.c.zwz;
    let var_7 = !select(func_5(_wgslsmith_clamp_i32(40781i, 1i, max(-32665i, 1i)), var_5, Struct_3(func_4(var_5.d.x, u_input.c, var_0), Struct_2(var_5, var_0.b, var_0.c, vec2<u32>(u_input.b, 0u)), _wgslsmith_sub_vec2_i32(u_input.a.yx, vec2<i32>(-3723i, 2147483647i)), func_5(var_0.b.x, var_5, Struct_3(var_5, var_0, u_input.c.xy, Struct_2(Struct_1(var_0.a.c.xz, true, var_5.c, var_0.a.d), vec2<i32>(-34177i, var_0.b.x), var_0.c, vec2<u32>(0u, var_5.d.x)))))).c, vec4<bool>(any(!vec3<bool>(var_0.c.x, var_0.c.x, var_5.b)), var_0.c.x, true, var_5.c.x > _wgslsmith_f_op_f32(var_2.x * var_2.x)), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(~1u, var_5.d.x));
}

