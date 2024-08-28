struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec3<bool>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: vec4<bool>,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
    c: Struct_2,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = ~(-abs(-_wgslsmith_mult_i32(1i, 3689i)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(519f, 913f))), _wgslsmith_f_op_f32(ceil(154f))))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1657f, 1356f)), _wgslsmith_div_vec2_f32(vec2<f32>(1000f, 1880f), vec2<f32>(-1482f, 1263f)), arg_2.b.wy))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1549f, 226f, var_1.x, var_1.x)))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, var_1.x, -204f, var_1.x), vec4<f32>(753f, -1822f, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1026f, -228f, 1069f, -638f) + vec4<f32>(var_1.x, -1090f, -137f, var_1.x))))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - 937f))), var_1.x, var_1.x, 965f)));
    let var_3 = arg_3.c.x;
    var var_4 = true;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(179f))));
}

fn func_2(arg_0: u32, arg_1: bool) -> u32 {
    let var_0 = vec3<i32>((u_input.a | 31394i) << (arg_0 % 32u), ~u_input.a, u_input.a);
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -1817f)) * -717f)))));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(round(-693f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-516f, 883f), 412f, -1427f))), Struct_2(-_wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.a, -1i, 0i), firstLeadingBit(vec4<i32>(u_input.a, -1695i, u_input.a, var_0.x))), ~max(var_0, _wgslsmith_add_vec3_i32(vec3<i32>(348i, var_0.x, var_0.x), vec3<i32>(u_input.a, u_input.a, 1i))), false), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, min(~71756u, _wgslsmith_sub_u32(0u, 0u)), ~firstLeadingBit(1u), arg_0), _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(arg_0, arg_0, arg_0, 9747u)), vec4<u32>(120190u, 1u, firstLeadingBit(4294967295u), 132009u))));
    var var_3 = Struct_4(488f, vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(Struct_1(vec2<u32>(arg_0, 8324u), vec4<bool>(var_2.c.c, var_2.c.c, true, false), vec3<bool>(var_2.c.c, true, arg_1), var_2.c.b.zy, var_0), u_input.a, Struct_1(vec2<u32>(var_2.d.x, 61791u), vec4<bool>(arg_1, arg_1, false, true), vec3<bool>(var_2.c.c, var_2.c.c, true), vec2<i32>(var_2.c.b.x, var_0.x), var_2.c.a.yyx), Struct_1(vec2<u32>(var_2.d.x, 12101u), vec4<bool>(false, var_2.c.c, var_2.c.c, true), vec3<bool>(false, false, false), var_0.yy, vec3<i32>(var_0.x, 62302i, -25388i)))), var_2.b.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1300f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) + _wgslsmith_f_op_f32(-1561f - 763f))), _wgslsmith_f_op_f32(trunc(-1412f))), Struct_2(vec4<i32>(abs(_wgslsmith_mult_i32(u_input.a, var_2.c.a.x)), _wgslsmith_clamp_i32(u_input.a, 2147483647i, ~var_0.x), 2147483647i, (-34456i | var_2.c.b.x) ^ -var_0.x), _wgslsmith_div_vec3_i32(vec3<i32>(max(var_2.c.b.x, var_0.x), i32(-1i) * -2147483647i, _wgslsmith_div_i32(var_2.c.b.x, var_0.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, var_0.x, var_2.c.a.x), var_2.c.a.xzx)), all(!select(vec4<bool>(arg_1, true, arg_1, var_2.c.c), vec4<bool>(false, arg_1, true, false), false))), vec4<u32>(1u, firstTrailingBit(arg_0), _wgslsmith_dot_vec3_u32(var_2.d.wyx, ~(~var_2.d.zwy)), 12173u));
    let var_4 = (reverseBits(min(countOneBits(1u), ~53270u)) & _wgslsmith_dot_vec4_u32(var_2.d, vec4<u32>(0u, var_3.d.x, 1u, arg_0))) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(~14863u, 75425u, reverseBits(0u), 1u), var_2.d) % 32u);
    return ~(~(~4294967295u));
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: vec2<i32>, arg_3: bool) -> vec3<i32> {
    let var_0 = firstLeadingBit(select(min(~vec2<u32>(4294967295u, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(arg_1, 20716u))), vec2<u32>(arg_1, func_2(0u, false)), vec2<bool>(arg_3, !arg_3)) | ~vec2<u32>(~arg_1, arg_1));
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(arg_0.zx))));
    var var_2 = arg_2.x;
    var var_3 = u_input.a;
    let var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))));
    return ~vec3<i32>(9640i, abs(~_wgslsmith_div_i32(arg_2.x, 1i)), arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~func_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(643f, -521f, 1953f, 2445f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-377f, -743f, -1106f, -387f)))), countOneBits(7668u), -(vec2<i32>(u_input.a, 27730i) >> (vec2<u32>(38884u, 59992u) % vec2<u32>(32u))), !any(vec4<bool>(true, false, true, true))));
    let var_1 = Struct_1(~(~vec2<u32>(select(87851u, 9062u, true), 1u)), !vec4<bool>(true, !any(vec2<bool>(true, true)), select(true, true, false) | select(false, true, true), true), select(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false)), !select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true))), true, all(vec4<bool>(true, false, false, true)))), var_0.xz, var_0);
    var var_2 = true;
    var var_3 = Struct_2(abs(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, u_input.a, 0i, 1i), firstTrailingBit(vec4<i32>(var_1.d.x, 0i, -1i, u_input.a)), vec4<i32>(u_input.a, 2147483647i, -66336i, -15850i)), vec4<i32>(var_1.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 19928i), var_0.yy), u_input.a, i32(-1i) * -19717i))), var_0, var_1.b.x);
    let var_4 = ~(~vec4<u32>(_wgslsmith_mult_u32(var_1.a.x, var_1.a.x), ~77265u, firstLeadingBit(43250u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, var_1.a.x, 62052u, var_1.a.x), vec4<u32>(var_1.a.x, 12207u, 1u, 1u))) << ((vec4<u32>(1u, 27921u ^ var_1.a.x, _wgslsmith_dot_vec2_u32(var_1.a, vec2<u32>(var_1.a.x, 0u)), 1u) ^ select(vec4<u32>(14222u, 1151u, var_1.a.x, var_1.a.x), abs(vec4<u32>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x)), true)) % vec4<u32>(32u)));
    let var_5 = true;
    let var_6 = var_1.c.xx;
    let var_7 = 63632u;
    var var_8 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(9859u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(597f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1910f, 288f)), _wgslsmith_f_op_f32(trunc(-1023f)), any(vec3<bool>(true, var_6.x, false)))))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1415f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -491f), _wgslsmith_f_op_f32(sign(1000f))), vec4<f32>(1f, 305f, _wgslsmith_div_f32(1747f, -1242f), 357f))));
}

