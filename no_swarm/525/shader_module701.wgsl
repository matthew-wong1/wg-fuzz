struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: bool) -> i32 {
    return 23738i;
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = Struct_2(vec3<i32>(func_3(select(vec4<u32>(4294967295u, 4294967295u, u_input.d, 35812u), abs(vec4<u32>(u_input.a, u_input.d, 1u, 7190u)), select(vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(false, false, true, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0))), 1i, arg_0), _wgslsmith_div_i32(-1175i, _wgslsmith_dot_vec4_i32(~vec4<i32>(-73827i, 0i, 1i, -54261i), abs(vec4<i32>(-7710i, -65924i, 9780i, -31098i)))), _wgslsmith_clamp_i32(_wgslsmith_div_i32(0i, ~1i), -1i, 1i)), -_wgslsmith_add_vec3_i32(vec3<i32>(1i, _wgslsmith_sub_i32(-40361i, 1i), firstTrailingBit(2147483647i)), _wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(-36239i, -68595i, -28070i)), vec3<i32>(1i, 1i, 1i))), -min(~vec3<i32>(1i, 1i, 1i), vec3<i32>(abs(2147483647i), -7149i, 2147483647i)), Struct_1(-1i, _wgslsmith_div_u32(~(~u_input.c), u_input.a)));
    let var_1 = Struct_2(var_0.b, select(min(~var_0.c, ~vec3<i32>(16720i, var_0.b.x, -1i)), var_0.c, select(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, arg_0, arg_0)), vec3<bool>(arg_0, arg_0, arg_0), true)) ^ (var_0.b << (((vec3<u32>(u_input.b.x, var_0.d.b, var_0.d.b) ^ vec3<u32>(14259u, 0u, var_0.d.b)) | ~vec3<u32>(37415u, var_0.d.b, u_input.b.x)) % vec3<u32>(32u))), var_0.c, var_0.d);
    let var_2 = !vec3<bool>(!(!arg_0), any(!select(vec4<bool>(true, false, false, arg_0), vec4<bool>(false, arg_0, arg_0, arg_0), arg_0)), arg_0);
    var var_3 = Struct_3(select(firstLeadingBit(var_1.d.b), u_input.b.x, !all(vec4<bool>(arg_0, true, arg_0, true))) | 4294967295u);
    var_3 = Struct_3(u_input.a);
    return var_0.d;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> bool {
    return true == arg_0;
}

fn func_5(arg_0: vec2<f32>, arg_1: bool) -> vec3<i32> {
    let var_0 = firstTrailingBit(_wgslsmith_mult_vec2_u32(abs(~_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 0u), u_input.b)), countOneBits(reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 13064u), u_input.b, u_input.b)))));
    var var_1 = func_2(true);
    var var_2 = Struct_3(abs(~(u_input.b.x >> (var_0.x % 32u))));
    var_2 = Struct_3(4294967295u);
    var var_3 = vec4<i32>(_wgslsmith_mult_i32(20177i, max(24235i, var_1.a) ^ var_1.a), 1i, -var_1.a, var_1.a);
    return var_3.xzw;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: i32) -> Struct_2 {
    var var_0 = ~vec3<u32>(1u & reverseBits(~u_input.a), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a, 1u)), abs(u_input.b)) ^ _wgslsmith_div_u32(~u_input.d, 1u), 43074u);
    return Struct_2(arg_1.wzx, arg_1.yxy | vec3<i32>(0i, ~arg_1.x | arg_2, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2702i, arg_1.x), arg_1.yz), 17729i)), func_5(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(arg_0.yz - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.x, arg_0.x), arg_0.xz, vec2<bool>(false, false)))))), func_4(false, func_2(true), arg_2, arg_2)), func_2(func_4(~8235u <= max(u_input.b.x, 16280u), Struct_1(-arg_2, 1u), (arg_1.x >> (u_input.a % 32u)) | reverseBits(arg_1.x), _wgslsmith_mult_i32(arg_1.x << (24229u % 32u), ~arg_2))));
}

fn func_6(arg_0: Struct_2, arg_1: u32) -> Struct_2 {
    var var_0 = Struct_3(837u);
    var_0 = Struct_3(0u);
    var var_1 = true;
    var_1 = true;
    var_1 = true;
    return Struct_2(vec3<i32>(abs(countOneBits(func_2(false).a)), _wgslsmith_add_i32(arg_0.a.x, abs(~arg_0.b.x)), abs(_wgslsmith_add_i32(_wgslsmith_mod_i32(0i, 32386i), func_5(vec2<f32>(-533f, 1989f), false).x))), select(countOneBits(arg_0.a), vec3<i32>(arg_0.d.a, -arg_0.a.x, func_1(vec3<f32>(-476f, 1541f, 181f), abs(vec4<i32>(arg_0.d.a, 9743i, 21725i, 0i)), ~2147483647i).c.x), false), vec3<i32>(firstLeadingBit(arg_0.d.a), -arg_0.c.x ^ _wgslsmith_div_i32(arg_0.c.x, ~0i), abs(arg_0.a.x)), func_1(vec3<f32>(1f, _wgslsmith_f_op_f32(ceil(-2796f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2287f * -276f), -852f))), _wgslsmith_div_vec4_i32(vec4<i32>(firstTrailingBit(-69360i), _wgslsmith_mult_i32(-74207i, arg_0.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b.x, -56902i), arg_0.b.yx), firstTrailingBit(-42410i)), countOneBits(reverseBits(vec4<i32>(arg_0.b.x, arg_0.b.x, 33418i, 0i)))), arg_0.c.x | -2147483647i).d);
}

fn func_7(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = ~(~_wgslsmith_mult_vec3_u32((vec3<u32>(6749u, arg_2.d.b, 0u) >> (vec3<u32>(u_input.b.x, arg_2.d.b, 0u) % vec3<u32>(32u))) >> (vec3<u32>(arg_2.d.b, u_input.b.x, u_input.d) % vec3<u32>(32u)), select(~vec3<u32>(arg_2.d.b, 1u, arg_2.d.b), vec3<u32>(u_input.d, u_input.d, u_input.c), arg_0.x && arg_0.x)));
    var var_1 = vec4<f32>(_wgslsmith_div_f32(-1881f, -1675f), _wgslsmith_f_op_f32(f32(-1f) * -247f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-116f)) * _wgslsmith_f_op_f32(-2020f - _wgslsmith_f_op_f32(f32(-1f) * -1570f))))), -546f);
    let var_2 = !(!select(arg_0.x, all(arg_0), false));
    let var_3 = vec2<i32>(firstLeadingBit(_wgslsmith_add_i32(~arg_1, _wgslsmith_clamp_i32(arg_2.d.a, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.c.x, arg_1), arg_2.a.yz), 7079i))), arg_1);
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1917f, var_1.x, var_1.x)))))), func_4(false, Struct_1(arg_1, 34395u), ~23985i, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(arg_2.a, arg_2.a), firstTrailingBit(var_3.x))))) * var_1.zzx);
    return arg_2.d;
}

fn func_8(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_3) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(710f + 1422f), _wgslsmith_f_op_f32(-154f + -716f), true))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1829f))) * _wgslsmith_div_f32(-592f, _wgslsmith_f_op_f32(f32(-1f) * -1803f))), _wgslsmith_f_op_f32(step(-1154f, _wgslsmith_f_op_f32(f32(-1f) * -833f))))));
    var_0 = _wgslsmith_f_op_f32(-189f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-756f * -974f)))));
    var var_1 = Struct_2(vec3<i32>(max(arg_0.a, arg_0.a), arg_0.a, ~1i) ^ ~(-vec3<i32>(-42625i, arg_0.a, 61588i) | firstLeadingBit(vec3<i32>(17857i, arg_0.a, arg_0.a))), vec3<i32>(func_7(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), true), 15915i, func_6(func_1(vec3<f32>(1526f, 780f, 1096f), vec4<i32>(1i, 9816i, arg_0.a, 0i), -30290i), select(arg_1.x, 4294967295u, false))).a, -1i, 0i), ~vec3<i32>(_wgslsmith_add_i32(-1412i, arg_0.a) << (arg_2.a % 32u), arg_0.a, arg_0.a), arg_0);
    let var_2 = vec2<i32>(arg_0.a, -60576i);
    let var_3 = vec2<u32>(73309u, arg_1.x);
    return vec4<i32>(var_1.b.x | (i32(-1i) * -arg_0.a), -41698i, -27598i, 0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_8(func_7(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), -(13347i >> (u_input.b.x % 32u)), func_6(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1501f, 224f, 228f) + vec3<f32>(831f, 100f, -1738f)), ~vec4<i32>(24050i, -14484i, 37347i, -2147483647i), ~1i), 3993u)), vec4<u32>(abs(u_input.b.x), 0u, 44715u, u_input.a), Struct_3(min(~(~u_input.a), u_input.b.x)));
    let var_1 = vec2<i32>(var_0.x, var_0.x);
    let var_2 = u_input.b;
    let var_3 = func_6(func_6(func_6(func_1(vec3<f32>(-943f, 209f, -1175f), var_0, var_1.x), 4294967295u), ~(_wgslsmith_mult_u32(u_input.d, var_2.x) & u_input.b.x)), ~_wgslsmith_add_u32(firstTrailingBit(1u), reverseBits(~20449u)));
    let var_4 = Struct_2(var_3.b, ~firstLeadingBit(-vec3<i32>(-45677i, var_0.x, 2147483647i)), (~func_5(vec2<f32>(-798f, 178f), false) << (vec3<u32>(func_7(vec2<bool>(true, true), var_1.x, Struct_2(var_0.ywz, vec3<i32>(-9772i, 52157i, 2147483647i), vec3<i32>(var_0.x, var_0.x, -56888i), var_3.d)).b, select(30088u, u_input.b.x, true), var_2.x) % vec3<u32>(32u))) << (vec3<u32>(~var_2.x, _wgslsmith_clamp_u32(var_3.d.b, _wgslsmith_add_u32(var_3.d.b, 4294967295u), ~4294967295u), 20858u) % vec3<u32>(32u)), Struct_1(_wgslsmith_sub_i32(var_3.c.x & _wgslsmith_mult_i32(-1i, var_0.x), _wgslsmith_add_i32(var_3.a.x, var_0.x)), max(_wgslsmith_mult_u32(var_3.d.b | 71720u, 0u), _wgslsmith_sub_u32(58748u, ~var_2.x))));
    let var_5 = var_2.x;
    var var_6 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-274f, -1792f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-337f + 1197f))), -836f, 142f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(592f, -148f, 1000f, -523f), vec4<f32>(1000f, -452f, -729f, -240f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))))), max(select(max(_wgslsmith_add_vec2_i32(vec2<i32>(44704i, 2147483647i), var_0.xx), vec2<i32>(28620i, 1i)), ~(-var_4.b.zy), all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true)))), var_4.c.xx), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1105f, 797f) * -190f), _wgslsmith_f_op_f32(round(-323f)), -237f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1230f, 1482f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(277f, -1220f, false)) - -828f))));
}

