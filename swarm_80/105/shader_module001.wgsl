struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec2<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> i32 {
    let var_0 = vec4<i32>(-(u_input.b.x >> (_wgslsmith_add_u32(32229u, 19476u) % 32u)), u_input.b.x, -8052i << (~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 3035u, u_input.d), vec3<u32>(8695u, 13413u, u_input.a)) % 32u), i32(-1i) * -1i) << (~_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(u_input.d, u_input.a, u_input.a, 1u) ^ vec4<u32>(16141u, u_input.c, u_input.d, u_input.d)), vec4<u32>(_wgslsmith_sub_u32(u_input.c, u_input.a), u_input.a, u_input.a, ~u_input.d)) % vec4<u32>(32u));
    let var_1 = vec3<i32>(_wgslsmith_mod_i32(var_0.x, u_input.b.x), var_0.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(~var_0.xwx, select(vec3<i32>(2147483647i, var_0.x, 1i), var_0.zzx, true)), _wgslsmith_mod_vec3_i32(select(u_input.b, vec3<i32>(0i, 28473i, -35000i), vec3<bool>(false, true, true)), vec3<i32>(28957i, -1i, 0i))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, 1i, 1i), vec4<i32>(var_0.x, -26044i, -2147483647i, var_0.x)) >> (20967u % 32u), abs(var_0.x), var_0.x)));
    let var_2 = any(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), false)));
    var var_3 = vec2<u32>(u_input.c, firstLeadingBit(u_input.d));
    var var_4 = Struct_4(Struct_3(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(var_3.x, u_input.a)), ~vec2<u32>(var_3.x, var_3.x)), 1f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-893f, -735f, _wgslsmith_f_op_f32(f32(-1f) * -1893f))), Struct_1(-min(var_1, u_input.b))));
    return _wgslsmith_sub_i32(_wgslsmith_add_i32(-countOneBits(-27460i) | abs(_wgslsmith_dot_vec3_i32(u_input.b, var_4.a.d.a)), -38784i), -38991i);
}

fn func_2(arg_0: i32) -> f32 {
    var var_0 = vec4<i32>(17097i, func_3(), _wgslsmith_dot_vec2_i32(vec2<i32>(-12941i, _wgslsmith_mod_i32(-1i, _wgslsmith_sub_i32(1i, 0i))), reverseBits(reverseBits(u_input.b.zx)) | -vec2<i32>(u_input.b.x, arg_0)), select(-23527i << (_wgslsmith_mult_u32(u_input.a, _wgslsmith_add_u32(u_input.c, u_input.a)) % 32u), abs(u_input.b.x), !any(select(vec2<bool>(true, true), vec2<bool>(true, true), false))));
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(460f, 320f), _wgslsmith_f_op_f32(809f - -1940f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))) - _wgslsmith_f_op_f32(f32(-1f) * -284f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -507f) + _wgslsmith_f_op_f32(885f + 1574f))), -1000f)));
    var var_2 = -6254i;
    let var_3 = Struct_1(~firstTrailingBit(u_input.b));
    var_0 = (-(reverseBits(vec4<i32>(var_3.a.x, var_0.x, var_3.a.x, 30169i)) << (vec4<u32>(1u, u_input.c, u_input.c, u_input.c) % vec4<u32>(32u))) ^ reverseBits(-abs(vec4<i32>(arg_0, u_input.b.x, 0i, u_input.b.x)))) & -_wgslsmith_clamp_vec4_i32(abs(countOneBits(vec4<i32>(-8699i, -14506i, 14478i, arg_0))), vec4<i32>(reverseBits(-1i), _wgslsmith_mod_i32(arg_0, var_3.a.x), ~var_3.a.x, arg_0), firstLeadingBit(vec4<i32>(var_0.x, 2147483647i, u_input.b.x, 10691i)));
    return 264f;
}

fn func_4(arg_0: f32) -> Struct_1 {
    let var_0 = abs(82065u);
    var var_1 = vec3<bool>(true, true, all(vec3<bool>(true, false, any(vec4<bool>(true, true, true, true)))));
    var var_2 = vec4<i32>(1i, 3919i, firstTrailingBit(-u_input.b.x), _wgslsmith_mod_i32(~u_input.b.x, ~(-7528i)));
    var_2 = vec4<i32>(44721i, 1i, u_input.b.x, firstLeadingBit(~0i) | var_2.x);
    var_2 = _wgslsmith_mult_vec4_i32(countOneBits(reverseBits(reverseBits(vec4<i32>(3749i, 1i, 0i, var_2.x) | vec4<i32>(u_input.b.x, 79304i, 0i, var_2.x)))), ~min(min(vec4<i32>(1i, 0i, 20111i, var_2.x), vec4<i32>(1i, var_2.x, var_2.x, 1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-39239i, var_2.x, -21520i, var_2.x), vec4<i32>(26872i, -1i, u_input.b.x, u_input.b.x), vec4<i32>(2147483647i, var_2.x, u_input.b.x, -2147483647i))) ^ ~max(vec4<i32>(var_2.x, var_2.x, u_input.b.x, u_input.b.x) << (vec4<u32>(4294967295u, 68126u, var_0, var_0) % vec4<u32>(32u)), -vec4<i32>(-40006i, u_input.b.x, var_2.x, u_input.b.x)));
    return Struct_1(countOneBits(vec3<i32>(-2147483647i, 9782i, i32(-1i) * -8294i)) & u_input.b);
}

fn func_1() -> Struct_1 {
    let var_0 = true;
    let var_1 = func_4(_wgslsmith_f_op_f32(func_2(~(-1i ^ u_input.b.x) ^ u_input.b.x)));
    var var_2 = Struct_4(Struct_3(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(66026u, 35491u)), vec2<u32>(8277u, u_input.c)), -146f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(536f, -188f, -1033f)) * vec3<f32>(-2749f, _wgslsmith_f_op_f32(f32(-1f) * -126f), _wgslsmith_f_op_f32(-197f + 920f))), Struct_1(vec3<i32>(abs(0i), var_1.a.x, var_1.a.x))));
    let var_3 = Struct_4(Struct_3(vec2<u32>(43423u, min(1u, 1u | var_2.a.a.x)), 788f, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.a.c), var_2.a.c) - _wgslsmith_f_op_vec3_f32(step(var_2.a.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(-236f, 484f, -292f) + vec3<f32>(var_2.a.b, var_2.a.b, var_2.a.c.x))))), func_4(var_2.a.b)));
    let var_4 = ~75855u;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(~firstLeadingBit(_wgslsmith_mod_vec2_u32(select(vec2<u32>(13363u, u_input.a), vec2<u32>(u_input.c, 1u), vec2<bool>(false, false)), ~vec2<u32>(u_input.a, 107480u))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), vec3<f32>(_wgslsmith_f_op_f32(1029f + _wgslsmith_f_op_f32(297f + 1271f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-484f * _wgslsmith_f_op_f32(floor(-789f))))), _wgslsmith_f_op_f32(f32(-1f) * -1199f)), func_1());
    var var_1 = select(vec3<bool>(true, true, true), !vec3<bool>(true, 1i < abs(var_0.d.a.x), ~u_input.b.x > ~32833i), !vec3<bool>(all(vec2<bool>(true, true)), select(true, false, true) && (var_0.d.a.x <= -2147483647i), !(0u != var_0.a.x)));
    var_1 = vec3<bool>(true, all(var_1.zx), true);
    var_1 = select(!(!(!(!vec3<bool>(var_1.x, true, false)))), !select(vec3<bool>(var_1.x || var_1.x, !var_1.x, var_1.x), !(!vec3<bool>(var_1.x, var_1.x, var_1.x)), true), true);
    var var_2 = ~var_0.a;
    var var_3 = min(4294967295u | _wgslsmith_add_u32(~var_2.x, var_2.x), var_0.a.x) << (_wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(9971u, 10508u), var_0.a)) >> (var_0.a % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(4294967295u, 4294967295u, 1u), var_2.x), ~(~var_0.a))) % 32u);
    let var_4 = var_0.d;
    let x = u_input.a;
    s_output = StorageBuffer(-1i, firstTrailingBit(_wgslsmith_add_u32(~(var_2.x << (1u % 32u)), 4294967295u)), var_0.d.a.yz, vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(184f, _wgslsmith_f_op_f32(var_0.b + var_0.b)))), -403f), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(var_0.a.x), 22763u, var_2.x), vec3<u32>(_wgslsmith_sub_u32(41043u, var_2.x), _wgslsmith_dot_vec2_u32(var_0.a, var_0.a), var_2.x >> (var_0.a.x % 32u))), firstLeadingBit(64334u), 28955u, firstTrailingBit(~(1u << (1u % 32u)))));
}

