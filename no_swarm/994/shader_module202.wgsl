struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: f32,
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

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> vec4<u32> {
    return countOneBits(firstLeadingBit(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 58485u))) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(40737u, 1u, 0u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 44422u, 21876u)), u_input.b.x ^ u_input.b.x, ~u_input.b.x, u_input.b.x) ^ ~min(u_input.b, vec4<u32>(54418u, u_input.b.x, 7037u, 0u)), vec4<u32>(~max(u_input.b.x, 89253u), ~(~97981u), ~(~u_input.b.x), ~(~1u))) % vec4<u32>(32u));
}

fn func_3(arg_0: vec3<i32>) -> vec4<bool> {
    var var_0 = !((1i <= arg_0.x) & true);
    var_0 = true;
    var var_1 = Struct_2(vec3<bool>(true, true, true), vec3<u32>(_wgslsmith_div_u32(u_input.b.x, _wgslsmith_mult_u32(38918u, ~u_input.b.x)), _wgslsmith_add_u32(1u, abs(3999u << (u_input.b.x % 32u))), u_input.b.x), Struct_1(1i, -arg_0.x, !(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false))), vec4<i32>(2147483647i, arg_0.x, _wgslsmith_mult_i32(-u_input.d.x, ~(-25102i)), abs(~33936i))));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(209f)))))))));
    var_0 = true;
    return vec4<bool>(!all(select(var_1.c.c.yy, select(var_1.c.c.yz, vec2<bool>(var_1.a.x, var_1.c.c.x), true), true)), false, true && select(var_1.a.x, true, all(!var_1.a)), -1i >= var_1.c.d.x);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 380f, 581f) - vec3<f32>(-127f, -1000f, -2660f)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1028f, -771f, -932f) * vec3<f32>(743f, -440f, 1161f)), vec3<f32>(-1910f, 1249f, 562f)))))));
    let var_1 = arg_1;
    var var_2 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.b.x | u_input.b.x, 40221u), u_input.b.x, _wgslsmith_clamp_u32(4294967295u, 9553u, u_input.b.x) >> (max(4294967295u, ~(~u_input.b.x)) % 32u));
    var_2 = 1u;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, 1759f, -1000f, var_0.x))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-521f, var_0.x, var_0.x, 1306f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, 1003f, -272f, var_0.x), vec4<f32>(var_0.x, -1010f, var_0.x, var_0.x), arg_1.c.x)))))));
    return arg_1;
}

fn func_1(arg_0: vec4<u32>) -> bool {
    let var_0 = ~(~(~u_input.b.x));
    let var_1 = all(vec2<bool>(true, false));
    let var_2 = func_4(~vec4<i32>(firstLeadingBit(-30456i), 25956i, 2147483647i, u_input.d.x) >> (_wgslsmith_mult_vec4_u32(~func_2(), ~(~u_input.b)) % vec4<u32>(32u)), Struct_1(u_input.a, u_input.a, select(select(func_3(u_input.d), !vec4<bool>(var_1, false, false, var_1), var_1 || var_1), select(select(vec4<bool>(true, var_1, false, true), vec4<bool>(false, var_1, var_1, false), vec4<bool>(var_1, false, true, var_1)), !vec4<bool>(var_1, var_1, var_1, var_1), false), select(!vec4<bool>(true, true, true, var_1), !vec4<bool>(true, var_1, false, var_1), false)), -countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.d.x, -1i, u_input.d.x), vec4<i32>(-14775i, u_input.a, 0i, 0i)))), ~(~(u_input.c | min(u_input.c, -2147483647i))));
    return !var_2.c.x;
}

fn func_5(arg_0: vec2<i32>, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_1(max(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(749i, u_input.c, 1i) | vec3<i32>(30037i, u_input.d.x, -39920i), u_input.d), (vec3<i32>(u_input.a, 0i, 0i) ^ vec3<i32>(arg_0.x, 1i, u_input.a)) >> (_wgslsmith_mult_vec3_u32(u_input.b.wyx, u_input.b.xwx) % vec3<u32>(32u))), _wgslsmith_mult_i32(u_input.d.x, countOneBits(-1i ^ u_input.a))), _wgslsmith_mod_i32(arg_0.x & (i32(-1i) * -5601i), -1i), select(select(!vec4<bool>(false, false, false, arg_1.x), !select(vec4<bool>(false, true, arg_1.x, true), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), vec4<bool>(false, true, true, arg_1.x)), !vec4<bool>(false, arg_1.x, false, arg_1.x)), func_4(vec4<i32>(u_input.c, u_input.a, u_input.a, u_input.e.x) << (select(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(61510u, u_input.b.x, 0u, 0u), vec4<bool>(true, false, arg_1.x, arg_1.x)) % vec4<u32>(32u)), Struct_1(arg_0.x, func_4(vec4<i32>(13889i, arg_0.x, 2147483647i, 0i), Struct_1(u_input.e.x, u_input.d.x, vec4<bool>(false, arg_1.x, true, false), vec4<i32>(-13200i, arg_0.x, u_input.a, arg_0.x)), u_input.d.x).b, !vec4<bool>(arg_1.x, true, false, false), select(vec4<i32>(22757i, 0i, -3015i, -1i), vec4<i32>(9110i, u_input.a, 9722i, -15793i), vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x))), -func_4(vec4<i32>(u_input.e.x, 18562i, 45807i, arg_0.x), Struct_1(-25711i, u_input.e.x, vec4<bool>(false, false, arg_1.x, false), vec4<i32>(u_input.a, u_input.a, 1i, arg_0.x)), 11560i).a).c, true), ~((~vec4<i32>(u_input.e.x, -58465i, u_input.c, arg_0.x) | func_4(vec4<i32>(-29614i, u_input.e.x, 2147483647i, arg_0.x), Struct_1(1i, u_input.a, vec4<bool>(false, false, arg_1.x, true), vec4<i32>(arg_0.x, arg_0.x, 4650i, arg_0.x)), 1i).d) >> (~_wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 11012u, 53885u, 13888u)) % vec4<u32>(32u))));
    var_0 = func_4(~_wgslsmith_mult_vec4_i32(reverseBits(var_0.d), ~(~var_0.d)), Struct_1(1i, ~var_0.a, vec4<bool>(var_0.c.x, u_input.a >= -5754i, false, true), vec4<i32>(10082i, _wgslsmith_mult_i32(var_0.a, 28043i), countOneBits(var_0.b), ~0i) >> (u_input.b % vec4<u32>(32u))), firstLeadingBit(var_0.d.x));
    let var_1 = Struct_2(vec3<bool>(true, !(!var_0.c.x), !(!arg_1.x)), vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(1u, 53448u), u_input.b.x), ~firstLeadingBit(4294967295u), 1u ^ firstTrailingBit(86366u)), func_4(-abs(var_0.d), Struct_1(arg_0.x ^ -7255i, -(31398i ^ u_input.c), var_0.c, min(vec4<i32>(arg_0.x, u_input.d.x, 23857i, arg_0.x), vec4<i32>(-112216i, -16915i, 2147483647i, arg_0.x))), -2147483647i));
    var var_2 = -firstTrailingBit(reverseBits(firstTrailingBit(abs(vec3<i32>(arg_0.x, var_0.b, -37978i)))));
    var var_3 = vec3<u32>(1u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 24100u, 0u), u_input.b.zzz ^ u_input.b.ywx), func_2().zxy), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~u_input.b, ~u_input.b), u_input.b)), abs(0u));
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(u_input.d.zx >> (vec2<u32>(1u, ~1u) % vec2<u32>(32u)), select(vec3<bool>(true, func_1(u_input.b), all(vec3<bool>(true, true, false))), !vec3<bool>(all(vec2<bool>(true, true)), true, true), vec3<bool>(true, u_input.b.x <= 1u, true)));
    let var_1 = _wgslsmith_div_i32((2147483647i | _wgslsmith_dot_vec3_i32(var_0.d.xwx, _wgslsmith_div_vec3_i32(var_0.d.yzz, vec3<i32>(14111i, u_input.c, -19857i)))) ^ (select(58524i, _wgslsmith_mod_i32(2147483647i, 1i), !var_0.c.x) & var_0.b), _wgslsmith_mult_i32(22547i, var_0.d.x));
    let var_2 = !var_0.c.x;
    var var_3 = func_5((u_input.e.yy | ~(~vec2<i32>(u_input.e.x, 4193i))) | reverseBits(~(vec2<i32>(-10984i, -2147483647i) << (u_input.b.yz % vec2<u32>(32u)))), vec3<bool>(u_input.b.x > ~1u, true, false | all(select(var_0.c.yww, var_0.c.wxy, var_2))));
    var_3 = func_5(u_input.e.yz, vec3<bool>(any(var_0.c), any(func_3(var_3.d.xwz | var_0.d.wyw)), !var_2));
    var var_4 = !func_4(-min(var_0.d, abs(var_0.d)), Struct_1(u_input.c, -1i, vec4<bool>(!var_0.c.x, true, false, true || var_3.c.x), vec4<i32>(-79904i, _wgslsmith_sub_i32(6010i, 3663i), firstLeadingBit(2147483647i), var_0.b >> (u_input.b.x % 32u))), 1i).c.wx;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(select(_wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 13372u)), ~u_input.b, any(var_3.c.yw))), _wgslsmith_mod_vec4_i32(-vec4<i32>(0i, -8624i, _wgslsmith_dot_vec4_i32(vec4<i32>(-9040i, var_3.a, var_0.b, -11631i), vec4<i32>(var_0.b, -18400i, -32849i, 6394i)), 0i), ~(-_wgslsmith_sub_vec4_i32(vec4<i32>(-16576i, var_1, var_1, 1i), var_3.d))), vec3<f32>(252f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1336f, _wgslsmith_f_op_f32(trunc(-610f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - -2023f), _wgslsmith_f_op_f32(f32(-1f) * -466f)), !func_1(u_input.b)))), vec4<i32>(min(u_input.a, var_1), ~var_0.b, i32(-1i) * -(~0i), ~1i), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-582f * 346f))))));
}

