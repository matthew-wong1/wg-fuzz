struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
    d: vec2<f32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec4<f32>) -> vec2<f32> {
    let var_0 = Struct_2(Struct_1(any(vec2<bool>(select(false, true, true), true)), _wgslsmith_div_vec2_f32(arg_0.xy, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(445f, 271f), vec2<f32>(538f, arg_0.x))), arg_0.zx))), vec4<i32>(-65342i, _wgslsmith_div_i32(40630i, u_input.c.x) | firstLeadingBit(u_input.b), u_input.c.x, min(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 1i, -2147483647i, u_input.a.x), vec4<i32>(5936i, u_input.a.x, -25325i, 2147483647i))))), -u_input.a.xzy, arg_0.x, ~(~abs(vec2<u32>(1u, 37452u)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))));
    let var_1 = var_0;
    let var_2 = ~min(vec2<i32>(-78926i, u_input.b), _wgslsmith_div_vec2_i32(var_0.a.c.yw, var_1.b.zx));
    var var_3 = var_0.a.a;
    let var_4 = var_1.a;
    return var_4.b;
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_2) -> vec2<f32> {
    var var_0 = arg_2.x & ~arg_3.d.x;
    var var_1 = arg_3.c;
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-279f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.b.x - 1f))), arg_3.c);
    var var_2 = min(_wgslsmith_div_vec3_u32(~(vec3<u32>(4294967295u, 4294967295u, arg_3.d.x) | vec3<u32>(arg_0.x, 0u, arg_0.x)) | (~vec3<u32>(arg_0.x, arg_3.d.x, 78989u) | firstTrailingBit(vec3<u32>(4294967295u, 15830u, 1u))), select(~(~vec3<u32>(0u, arg_2.x, arg_0.x)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 19472u, 1u), vec3<u32>(arg_3.d.x, 4294967295u, arg_0.x)), true)), _wgslsmith_mod_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 0u, arg_0.x) >> (vec3<u32>(arg_2.x, 4294967295u, arg_3.d.x) % vec3<u32>(32u)), vec3<u32>(arg_2.x, 61579u, 16150u)), vec3<u32>(1u, 4294967295u, 1u)));
    let var_3 = arg_3.a;
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -562f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3.b.x))))), -1295f);
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: vec3<u32>, arg_3: i32) -> bool {
    let var_0 = ~arg_3 == arg_3;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-717f, -1293f) + vec2<f32>(254f, -582f)), _wgslsmith_f_op_vec2_f32(func_2(vec4<f32>(1049f, 443f, 1206f, -1000f)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1329f, -169f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1693f))))));
    let var_2 = -abs(~u_input.a);
    let var_3 = Struct_1(false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_add_vec2_u32(~arg_0.zx, _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.x, 1u), vec2<u32>(7695u, 4294967295u), arg_0.zz)), (i32(-1i) * -41534i) & firstTrailingBit(-28544i), reverseBits(~arg_2.zx), Struct_2(Struct_1(false, vec2<f32>(var_1.x, var_1.x), vec4<i32>(1i, 1i, -30428i, arg_3)), ~u_input.a.xyx, _wgslsmith_f_op_f32(sign(-1136f)), select(vec2<u32>(4294967295u, arg_0.x), vec2<u32>(arg_2.x, 4294967295u), vec2<bool>(true, var_0)))))), abs(_wgslsmith_add_vec4_i32(u_input.a, select(vec4<i32>(u_input.a.x, -1i, -27894i, 74023i), u_input.a, !vec4<bool>(var_0, var_0, var_0, var_0)))));
    let var_4 = ~_wgslsmith_clamp_vec3_u32(countOneBits(_wgslsmith_mult_vec3_u32(arg_0, vec3<u32>(arg_1, arg_1, arg_2.x))), arg_2, ~_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(1u, arg_2.x, arg_0.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.x, 0u, 54706u), vec3<u32>(0u, 5013u, arg_0.x)), vec3<u32>(1u, arg_1, 58911u)));
    return all(vec4<bool>(true, false, any(select(vec4<bool>(true, var_3.a, true, false), select(vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(false, var_3.a, true, var_0), vec4<bool>(var_3.a, false, var_0, var_0)), vec4<bool>(false, var_3.a, true, true))), !(_wgslsmith_f_op_vec2_f32(func_3(vec2<u32>(59818u, 41720u), arg_3, arg_2.zz, Struct_2(var_3, vec3<i32>(var_3.c.x, 41817i, u_input.c.x), var_3.b.x, arg_2.yx))).x == _wgslsmith_f_op_f32(var_1.x - var_3.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(all(vec3<bool>(func_1(vec3<u32>(0u, 1u, 0u), 1u, vec3<u32>(0u, 4294967295u, 0u), 0i), any(vec2<bool>(false, true)), true)) == false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-804f + 655f), _wgslsmith_f_op_f32(929f * 1440f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-360f, -354f) - vec2<f32>(1791f, -1495f)) + vec2<f32>(-399f, -1377f)), u_input.b < ~u_input.b))), reverseBits(-_wgslsmith_mult_vec4_i32(u_input.a, u_input.a)));
    let var_1 = var_0.b.x;
    let var_2 = abs(reverseBits(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(12955u, 63733u, 1u, 21323u), vec4<u32>(35897u, 45475u, 1u, 4825u)), vec4<u32>(26289u, 0u, 0u, 63306u)), min(1u, 78403u))));
    let var_3 = Struct_1(var_0.a || var_0.a, vec2<f32>(-998f, var_0.b.x), select(-countOneBits(u_input.a), _wgslsmith_mult_vec4_i32(vec4<i32>(abs(0i), -var_0.c.x, -u_input.a.x, ~2147483647i), _wgslsmith_mult_vec4_i32(var_0.c, firstTrailingBit(vec4<i32>(u_input.b, 1i, -28595i, 48789i)))), !func_1(~vec3<u32>(var_2, 60889u, 4294967295u), ~0u, _wgslsmith_mod_vec3_u32(vec3<u32>(22905u, var_2, 37231u), vec3<u32>(26185u, var_2, 34294u)), 1i)));
    var var_4 = var_3;
    var var_5 = 1166f;
    let var_6 = select(!select(select(vec3<bool>(var_4.a, var_4.a, var_0.a), !vec3<bool>(false, var_3.a, true), vec3<bool>(var_3.a, false, var_4.a)), !vec3<bool>(false, var_3.a, var_4.a), select(vec3<bool>(var_3.a, var_0.a, var_0.a), vec3<bool>(var_0.a, var_3.a, var_0.a), !var_3.a)), !vec3<bool>(true, true, any(select(vec3<bool>(var_4.a, true, true), vec3<bool>(var_4.a, var_4.a, false), var_3.a))), select(!vec3<bool>(var_4.a, true, false), select(select(vec3<bool>(var_4.a, true, true), select(vec3<bool>(var_3.a, true, var_4.a), vec3<bool>(true, true, var_3.a), vec3<bool>(var_3.a, var_4.a, var_3.a)), vec3<bool>(var_4.a, false, var_0.a)), !vec3<bool>(var_4.a, true, false), true), any(!vec4<bool>(true, var_4.a, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, var_0.b.x, var_4.b.x, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(94890u, 615u), vec2<u32>(~4294967295u, var_2), reverseBits(vec2<u32>(var_2, var_2) & vec2<u32>(var_2, 1u))));
}

