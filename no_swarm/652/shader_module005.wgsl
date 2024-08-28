struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: bool,
    d: Struct_1,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 22156u;

var<private> global1: f32;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> bool {
    global0 = u_input.d.x;
    let var_0 = arg_0;
    var var_1 = vec3<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1)) * arg_1), _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(arg_1 + arg_1)));
    var var_2 = arg_0;
    var_2 = var_0;
    return true;
}

fn func_2(arg_0: bool) -> vec2<i32> {
    let var_0 = ~vec4<i32>(-1i, select(~u_input.c.x, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(10785i, 1217i), firstLeadingBit(-1i), -u_input.c.x), func_3(Struct_2(Struct_1(1i, vec4<i32>(26824i, 0i, u_input.c.x, u_input.c.x)), vec3<u32>(7848u, 1u, 82269u), arg_0, Struct_1(-43698i, vec4<i32>(2147483647i, u_input.b, 28167i, u_input.b)), u_input.a), -1628f) || true), 2147483647i, u_input.b);
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -189f)));
    let var_1 = Struct_1(i32(-1i) * -2147483647i, -(~vec4<i32>(-49724i, u_input.b, var_0.x, u_input.b) | -vec4<i32>(var_0.x, u_input.c.x, var_0.x, var_0.x)) ^ -var_0);
    var var_2 = select(~firstTrailingBit(_wgslsmith_sub_i32(var_0.x, 0i)), min(firstLeadingBit(-var_0.x), _wgslsmith_dot_vec2_i32(~var_1.b.zw, vec2<i32>(1i, 0i) >> (u_input.d.ww % vec2<u32>(32u)))), false) << (~27232u % 32u);
    let var_3 = Struct_2(Struct_1(0i, var_0), select(u_input.d.zzz, ~vec3<u32>(~u_input.d.x, 0u & u_input.d.x, u_input.d.x >> (84520u % 32u)), select(vec3<bool>(true, true, -39473i >= var_1.a), vec3<bool>(true, arg_0, true), any(!vec4<bool>(false, arg_0, arg_0, arg_0)))), !(var_0.x != var_0.x), Struct_1(~_wgslsmith_clamp_i32(2147483647i, var_0.x, _wgslsmith_mod_i32(-2147483647i, 1461i)), _wgslsmith_mult_vec4_i32(var_1.b, ~var_0)), u_input.a);
    return _wgslsmith_mult_vec2_i32(var_1.b.xw, vec2<i32>(-1i, _wgslsmith_clamp_i32(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.d.b.x, 18208i, var_0.x, 1i), var_0), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, var_3.d.a, var_1.a, var_0.x), vec4<i32>(2147483647i, -20146i, var_1.b.x, 1i))))) ^ vec2<i32>(-(~_wgslsmith_mult_i32(2147483647i, var_1.a)), ~38443i);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = firstTrailingBit(_wgslsmith_div_i32(u_input.b, arg_2.a));
    var var_1 = 64287i;
    global0 = reverseBits(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_add_u32(0u, arg_1.x)));
    let var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 585f) + vec2<f32>(-870f, 182f)))) + vec2<f32>(-629f, _wgslsmith_f_op_f32(round(480f)))) * vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1681f))), -1000f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -445f)), 285f)));
    var var_3 = ~vec4<i32>(_wgslsmith_div_i32(14883i, ~1i), -2147483647i, ~1i, _wgslsmith_add_i32(64792i, _wgslsmith_mult_i32(arg_2.a, ~2147483647i)));
    return vec4<f32>(_wgslsmith_f_op_f32(max(var_2.x, -1590f)), -143f, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-206f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f - var_2.x)))))));
}

fn func_1() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_4(func_2(false), vec4<u32>(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(0u, 68711u, u_input.a.x, u_input.d.x)), vec4<u32>(1u, u_input.d.x, u_input.d.x, 1u)) << (u_input.a.x % 32u), 1u, ~min(u_input.d.x, ~u_input.a.x), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(42871u, u_input.d.x), min(u_input.a, u_input.d.xy))), Struct_1(u_input.c.x, _wgslsmith_add_vec4_i32(max(~vec4<i32>(u_input.b, 24614i, u_input.c.x, u_input.b), vec4<i32>(u_input.b, -24806i, -1i, 2147483647i)), min(min(vec4<i32>(0i, 25377i, -1i, u_input.c.x), vec4<i32>(u_input.b, 0i, -21832i, -42395i)), vec4<i32>(u_input.b, u_input.b, 27618i, u_input.b) << (u_input.d % vec4<u32>(32u)))))));
    let var_1 = Struct_1(23065i, firstLeadingBit(~select(vec4<i32>(u_input.c.x, u_input.c.x, u_input.b, -2147483647i) << (vec4<u32>(0u, u_input.a.x, u_input.d.x, 58644u) % vec4<u32>(32u)), ~vec4<i32>(u_input.b, -29320i, 1i, -70273i), true)));
    let var_2 = Struct_2(var_1, _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(~u_input.d.yxy, firstTrailingBit(u_input.d.wxy)), firstTrailingBit(firstTrailingBit(u_input.d.xzx))), ~vec3<u32>(4294967295u, _wgslsmith_mod_u32(96786u, 23717u), 40704u & u_input.d.x)), true, Struct_1(u_input.b, var_1.b), (min(u_input.d.wx, u_input.a) >> (vec2<u32>(4294967295u & u_input.d.x, ~u_input.a.x) % vec2<u32>(32u))) << (vec2<u32>(18237u >> (min(55516u, u_input.d.x) % 32u), _wgslsmith_dot_vec4_u32(u_input.d >> (vec4<u32>(1u, u_input.a.x, u_input.d.x, u_input.a.x) % vec4<u32>(32u)), u_input.d)) % vec2<u32>(32u)));
    let var_3 = vec3<bool>(true, !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(163f * 406f) * var_0.x) <= -1000f), var_2.c);
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_div_vec2_i32(-vec2<i32>(u_input.b, 1i), vec2<i32>(u_input.c.x, -3183i)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.e.x, u_input.d.x, u_input.a.x, var_2.b.x), u_input.d, u_input.d) & ~vec4<u32>(0u, var_2.b.x, var_2.e.x, 2591u), var_2.d)).zy));
    return var_3.zz;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-605f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-896f + 347f) + -1266f)))));
    let var_0 = u_input.b;
    let var_1 = !func_1();
    var var_2 = 1i;
    let var_3 = Struct_1(-_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0, u_input.c.x, 28703i, u_input.c.x), -vec4<i32>(var_0, 28382i, u_input.b, u_input.c.x)), -(i32(-1i) * -5032i), -10694i), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(26534i, -u_input.c.x), 9246i), (u_input.b >> (~u_input.a.x % 32u)) << (4294967295u % 32u), var_0 & 2147483647i, countOneBits(~abs(u_input.c.x))));
    var var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-794f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1105f)), _wgslsmith_f_op_f32(trunc(1752f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, 125f, func_1().x)))));
}

