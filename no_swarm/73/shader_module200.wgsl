struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: u32,
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_3, arg_3: Struct_1) -> i32 {
    let var_0 = Struct_3(any(vec2<bool>(any(vec3<bool>(true, arg_2.a, true)) != arg_2.a, arg_2.a)), arg_3.a.x, abs(firstTrailingBit(~_wgslsmith_add_u32(u_input.a.x, 1u))), _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(3860i, firstLeadingBit(arg_2.e)), 41255i), arg_0.x ^ ~arg_1), ~(-1i));
    var var_1 = true;
    var var_2 = vec2<bool>(false, true);
    let var_3 = -(~vec2<i32>(i32(-1i) * -2147483647i, max(_wgslsmith_mod_i32(-15598i, var_0.b), max(70035i, -1i))));
    var var_4 = var_0.a;
    return -1i;
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> Struct_3 {
    var var_0 = vec3<i32>(_wgslsmith_dot_vec4_i32(arg_0.b.a, vec4<i32>(-36985i, arg_1 << (_wgslsmith_add_u32(1u, 0u) % 32u), -25154i, max(62060i, -4618i))), max(abs(arg_1 >> ((0u << (arg_0.a % 32u)) % 32u)), arg_1), _wgslsmith_mod_i32(reverseBits(~arg_0.c.a.x & min(-14581i, -6436i)), func_3(_wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(2147483647i, 29690i)), _wgslsmith_clamp_vec2_i32(arg_0.c.a.zw, arg_0.b.a.yw, vec2<i32>(arg_1, 0i)), arg_0.b.a.zw & vec2<i32>(1i, -45065i)), u_input.d.x, Struct_3(false, -16479i, ~1u, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.d.x, 0i), arg_0.c.a.zzz), _wgslsmith_add_i32(arg_1, arg_1)), arg_0.b)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(201f, -462f, -436f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-887f, -1000f, -1460f)), false)))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1156f))), -1177f, 1f)) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(372f, 2063f, -317f) * vec3<f32>(-126f, 1171f, -862f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1317f, 578f, 110f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(295f, 425f, -695f) + vec3<f32>(321f, 605f, 1116f)))))));
    let var_2 = arg_0;
    let var_3 = _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.c.a.x, arg_0.c.a.x), firstLeadingBit(firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d.x, 0i), var_0.zy)))), firstTrailingBit(var_2.c.a.x));
    let var_4 = _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(47416u, ~(~0u)), _wgslsmith_mod_vec2_u32(countOneBits(u_input.a), vec2<u32>(54679u, 4294967295u)) | (~u_input.b.yy | reverseBits(vec2<u32>(arg_0.a, var_2.a)))), ~u_input.b.yx, ~min(_wgslsmith_add_vec2_u32(u_input.b.zz, u_input.a) >> (_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(var_2.a, arg_0.a)) % vec2<u32>(32u)), vec2<u32>(~var_2.a, ~36422u)));
    return Struct_3(false, ~_wgslsmith_div_i32(var_2.b.a.x, abs(var_2.c.a.x)), ~arg_0.a, abs(-1i), 2147483647i);
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_1(vec4<i32>(-_wgslsmith_mult_i32(u_input.d.x >> (u_input.c.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.d.x, u_input.d.x, 0i), vec4<i32>(u_input.d.x, 15230i, -10264i, u_input.d.x))), u_input.d.x, -1i, select(u_input.d.x, _wgslsmith_add_i32(u_input.d.x, ~u_input.d.x), true)));
    var var_1 = _wgslsmith_div_vec2_u32(~reverseBits(~abs(vec2<u32>(u_input.a.x, u_input.c.x))), reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(countOneBits(4294967295u), u_input.a.x), _wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, u_input.c.x), vec2<u32>(u_input.b.x, u_input.b.x)))));
    return func_2(Struct_2(u_input.c.x, Struct_1(-var_0.a), Struct_1(var_0.a)), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_2(~(~11307u), Struct_1(abs(min(vec4<i32>(var_0.b, -9728i, var_0.b, 36799i), vec4<i32>(u_input.d.x, -1i, 1891i, u_input.d.x)) << (~vec4<u32>(u_input.a.x, var_0.c, 18488u, var_0.c) % vec4<u32>(32u)))), Struct_1(-firstLeadingBit(vec4<i32>(32272i, var_0.e, var_0.b, var_0.e))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(182f, 1000f, 1329f, -778f)), vec4<f32>(-553f, -433f, -905f, -540f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-881f)), -271f, _wgslsmith_f_op_f32(round(-599f)), -694f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(733f, -743f, -1000f, -869f))))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(2325f * -1000f), _wgslsmith_f_op_f32(floor(465f)), 647f, _wgslsmith_f_op_f32(f32(-1f) * -925f))))));
    var var_3 = !(1000f >= var_2.x);
    let var_4 = vec3<u32>(((_wgslsmith_sub_u32(var_0.c, var_1.a) ^ ~var_1.a) & var_1.a) | 1u, 4294967295u, _wgslsmith_mod_u32(25998u, 57872u));
    let var_5 = Struct_1(var_1.c.a);
    let x = u_input.a;
    s_output = StorageBuffer(-max(abs(-vec3<i32>(34919i, -16399i, u_input.d.x)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-14178i, 0i, 1i), var_5.a.yyw), var_1.c.a.x ^ var_5.a.x, 8869i)), ~(~(~(~var_1.a))), ~_wgslsmith_add_u32(countOneBits(u_input.a.x), reverseBits(4294967295u)), 54232u);
}

