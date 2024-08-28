struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: u32,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-19107i, 2147483647i, -67943i, 230i);

var<private> global1: Struct_3 = Struct_3(44224u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: bool) -> vec3<u32> {
    let var_0 = Struct_1(~55099u);
    var var_1 = true;
    let var_2 = Struct_4(Struct_3(4971u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-292f, _wgslsmith_f_op_f32(floor(-853f)))))) * 159f), ~0u, var_0, vec3<u32>(_wgslsmith_mod_u32(firstTrailingBit(~4240u), global1.a), var_0.a << (23881u % 32u), abs(firstLeadingBit(global1.a)) & abs(~72015u)));
    var_1 = all(select(select(vec3<bool>(true, true, true), !select(vec3<bool>(arg_0, false, arg_2), vec3<bool>(false, arg_2, true), arg_2), select(select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(false, true, false), true), vec3<bool>(false, arg_0, arg_2), all(vec4<bool>(false, arg_0, arg_0, true)))), vec3<bool>(true, any(!vec2<bool>(arg_2, arg_2)), true), !(!(!arg_0))));
    let var_3 = !(!(!(3207u >= (11436u & global1.a))));
    return _wgslsmith_clamp_vec3_u32(countOneBits(max(var_2.e >> (vec3<u32>(4294967295u, 4294967295u, 64217u) % vec3<u32>(32u)), var_2.e)), _wgslsmith_add_vec3_u32(var_2.e, ~(~var_2.e)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_2.d.a, u_input.c, reverseBits(global1.a)), vec3<u32>(_wgslsmith_add_u32(var_0.a, var_0.a), _wgslsmith_div_u32(global1.a, 4294967295u), _wgslsmith_dot_vec3_u32(var_2.e, vec3<u32>(var_0.a, 4294967295u, 46179u))))) ^ var_2.e;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(Struct_1(58259u));
    var var_1 = _wgslsmith_mult_i32(-(~global0.x), -31112i);
    let var_2 = Struct_4(Struct_3(global1.a | u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(502f)) * -1643f)), 78671u, var_0.a, _wgslsmith_mod_vec3_u32(func_3(true != all(vec4<bool>(false, true, true, false)), u_input.b.xwx, true), vec3<u32>(~(~var_0.a.a), 0u, 744u)));
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_2.b, -593f), _wgslsmith_f_op_f32(238f - var_2.b)))))));
    global0 = -vec4<i32>(i32(-1i) * -(~1i), -(~global0.x) & 0i, -u_input.b.x, -1i);
    return Struct_2(var_0.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> Struct_2 {
    let var_0 = Struct_3(arg_1.a.a);
    var var_1 = ~1u;
    var var_2 = Struct_4(Struct_3(u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-144f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-594f, 158f, false)) - _wgslsmith_f_op_f32(trunc(1578f))))), ~4294967295u, func_2().a, vec3<u32>(arg_1.a.a | (reverseBits(0u) >> (_wgslsmith_sub_u32(1u, arg_1.a.a) % 32u)), func_3(any(vec4<bool>(true, false, false, false)), _wgslsmith_add_vec3_i32(global0.zzx, vec3<i32>(arg_2, 26035i, -2147483647i)), arg_2 <= arg_2).x | ~1u, arg_1.a.a));
    let var_3 = vec4<i32>(_wgslsmith_sub_i32(~arg_2, 2147483647i), firstTrailingBit(u_input.b.x), 35713i, 12979i);
    global0 = vec4<i32>(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(global0.x, 7406i), u_input.b.x), _wgslsmith_mult_vec2_i32(vec2<i32>(20932i, var_3.x), -var_3.xw))), abs(~(-6876i)), arg_2, arg_2);
    return func_2();
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    let var_0 = arg_0.a;
    var var_1 = Struct_3(var_0.a);
    var_1 = Struct_3(~arg_0.a.a);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(-798f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-979f))), 610f, _wgslsmith_f_op_f32(ceil(1000f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))));
    var var_3 = Struct_4(Struct_3(41046u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(min(var_2.x, _wgslsmith_f_op_f32(482f + 1000f)))))), 1u, Struct_1(100195u), ~vec3<u32>(select(950u, ~global1.a, select(true, false, false)), arg_0.a.a >> (~global1.a % 32u), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(global1.a, u_input.c)), vec2<u32>(var_0.a, 3607u) | vec2<u32>(0u, 67031u))));
    return func_4(arg_0, Struct_2(Struct_1(_wgslsmith_sub_u32(_wgslsmith_div_u32(1u, 23351u), firstTrailingBit(u_input.c)))), 1i).a;
}

fn func_1() -> Struct_2 {
    let var_0 = func_5(func_4(func_2(), Struct_2(func_2().a), firstTrailingBit(_wgslsmith_mult_i32(max(global0.x, u_input.b.x), i32(-1i) * -24802i))));
    var var_1 = Struct_1(1u);
    global1 = Struct_3(_wgslsmith_div_u32(min(var_0.a, u_input.c), _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.c, ~var_1.a), ~abs(var_0.a))));
    var var_2 = ~_wgslsmith_add_vec2_u32(~(~vec2<u32>(var_1.a, 94272u)) | (~vec2<u32>(var_0.a, var_1.a) >> ((vec2<u32>(34160u, var_1.a) >> (vec2<u32>(global1.a, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u))), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(18722u, u_input.c), _wgslsmith_mult_u32(global1.a, u_input.c)), ~vec2<u32>(18976u, 3494u)));
    let var_3 = Struct_2(func_5(func_4(Struct_2(var_0), func_2(), u_input.b.x)));
    return func_2();
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_4(Struct_3(4948u), arg_2.x, global1.a, Struct_1(~select(u_input.c, min(arg_0.a.a, 106745u), -2147483647i <= global0.x)), ~select(_wgslsmith_mult_vec3_u32(vec3<u32>(6602u, 0u, 4294967295u), vec3<u32>(global1.a, arg_0.a.a, 4294967295u)) & select(vec3<u32>(u_input.c, 1u, u_input.c), vec3<u32>(u_input.c, 4294967295u, 1u), false), vec3<u32>(global1.a, ~4045u, 24648u), all(vec4<bool>(true, true, true, true))));
    global1 = Struct_3(92881u);
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(-arg_2.x);
    var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1587f)), _wgslsmith_f_op_f32(2315f - _wgslsmith_f_op_f32(-var_0.b)))), -286f));
    return Struct_1(_wgslsmith_mod_u32(arg_0.a.a, _wgslsmith_mult_u32(~(~global1.a), 22882u)));
}

fn func_7(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: Struct_4) -> Struct_3 {
    var var_0 = Struct_1(8767u);
    var var_1 = global1.a;
    let var_2 = Struct_4(arg_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(-arg_0.x))) - arg_0.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_2.d.a), vec2<u32>(var_0.a, u_input.c) >> ((vec2<u32>(u_input.c, var_0.a) ^ arg_2.e.yz) % vec2<u32>(32u))), Struct_1(var_0.a), min(min(min(vec3<u32>(arg_2.e.x, 11404u, global1.a), arg_2.e), abs(arg_2.e)), arg_2.e) | (firstTrailingBit(abs(arg_2.e)) << (vec3<u32>(var_0.a, _wgslsmith_add_u32(1u, u_input.c), ~var_0.a) % vec3<u32>(32u))));
    let var_3 = vec2<bool>(-(min(u_input.a, global0.x) & global0.x) == global0.x, false);
    var_1 = var_2.c;
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(~(~global1.a));
    global1 = func_7(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(387f + 1092f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-228f, -879f))), 1342f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-132f * -1000f)))))), vec3<f32>(_wgslsmith_f_op_f32(860f + 2435f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1116f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-869f + -826f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1041f, 1522f)) - _wgslsmith_f_op_f32(f32(-1f) * -262f)))), Struct_4(var_0, _wgslsmith_f_op_f32(sign(609f)), 0u, func_6(func_1(), func_2().a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-430f, -1000f, -1557f))) * vec3<f32>(262f, -421f, -1179f))), func_3(false, u_input.b.wzx, true) | vec3<u32>(6577u >> (global1.a % 32u), 18882u, 1u)));
    global1 = var_0;
    global0 = vec4<i32>(_wgslsmith_add_i32(u_input.b.x >> ((40357u >> ((u_input.c & global1.a) % 32u)) % 32u), _wgslsmith_dot_vec4_i32(-u_input.b, -u_input.b)), reverseBits(_wgslsmith_add_i32(u_input.b.x, ~_wgslsmith_mod_i32(u_input.a, -52420i))), u_input.a, global0.x);
    global1 = func_7(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-474f, 152f, false))), -864f, -784f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(660f, 1540f, false))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-675f)))), _wgslsmith_f_op_f32(abs(960f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -956f))), 1f), Struct_4(func_7(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-855f, 1340f, 1000f, -906f), vec4<f32>(-1181f, -250f, -503f, -1144f)))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1503f, 1000f, -543f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1359f, -715f, -1880f) * vec3<f32>(586f, 1848f, 1026f)))), Struct_4(func_7(vec4<f32>(1000f, -894f, 1029f, -773f), vec3<f32>(-306f, 319f, -1478f), Struct_4(var_0, -492f, var_0.a, Struct_1(64883u), vec3<u32>(34886u, 34283u, var_0.a))), 1f, global1.a, Struct_1(var_0.a), ~vec3<u32>(95057u, global1.a, 1u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 56390u, 1u, 42152u), ~vec4<u32>(26133u, var_0.a, global1.a, u_input.c)), func_5(Struct_2(func_4(Struct_2(Struct_1(u_input.c)), Struct_2(Struct_1(40243u)), 0i).a)), ~(~vec3<u32>(global1.a, global1.a, u_input.c))));
    global1 = func_7(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -952f), -927f, -862f, -484f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1039f, 127f, 2029f, -1237f), vec4<f32>(1668f, 627f, -1144f, 175f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-346f, _wgslsmith_f_op_f32(trunc(-1036f)), _wgslsmith_div_f32(1629f, -1076f))))), Struct_4(func_7(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-273f, 518f, 353f)) * vec3<f32>(1412f, -715f, 178f)), Struct_4(Struct_3(54143u), _wgslsmith_f_op_f32(trunc(-347f)), func_6(Struct_2(Struct_1(46987u)), Struct_1(global1.a), vec3<f32>(-1000f, -1572f, 222f)).a, Struct_1(global1.a), vec3<u32>(global1.a, var_0.a, 503u))), _wgslsmith_f_op_f32(f32(-1f) * -698f), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_0.a), _wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(var_0.a, 1u)), ~vec2<u32>(0u, 4294967295u))), func_4(func_4(func_1(), Struct_2(Struct_1(12803u)), ~22546i), Struct_2(func_4(Struct_2(Struct_1(var_0.a)), Struct_2(Struct_1(u_input.c)), u_input.a).a), -select(u_input.b.x, -2250i, true)).a, vec3<u32>(~54718u, ~reverseBits(39790u), _wgslsmith_mod_u32(~var_0.a, 81625u << (global1.a % 32u)))));
    var var_1 = Struct_4(Struct_3(~_wgslsmith_add_u32(u_input.c | var_0.a, global1.a)), -710f, 125452u, Struct_1(~(_wgslsmith_mult_u32(1044u, global1.a) << (select(var_0.a, var_0.a, true) % 32u))), max(vec3<u32>(global1.a, _wgslsmith_mult_u32(_wgslsmith_div_u32(var_0.a, 1u), _wgslsmith_sub_u32(28455u, 19520u)), ~(~66778u)), vec3<u32>(~(u_input.c ^ 9586u), func_7(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-310f, -522f, 867f, 101f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-660f, -651f, -1369f), vec3<f32>(421f, -665f, 1903f))), Struct_4(var_0, 1000f, 63203u, Struct_1(u_input.c), vec3<u32>(4294967295u, global1.a, var_0.a))).a, 25647u)));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~vec4<u32>(var_0.a, global1.a, global1.a, u_input.c)) | ((~vec4<u32>(var_1.a.a, var_1.a.a, 48113u, global1.a) ^ ~vec4<u32>(var_1.e.x, 1u, 98501u, 95790u)) << (select(abs(vec4<u32>(0u, u_input.c, u_input.c, var_1.d.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(32610u, var_0.a, u_input.c, 4592u), vec4<u32>(0u, global1.a, global1.a, 69477u)), true) % vec4<u32>(32u))), _wgslsmith_div_u32(var_1.d.a, var_0.a ^ abs(u_input.c)), -_wgslsmith_sub_vec3_i32(min(vec3<i32>(65694i, u_input.a, global0.x), vec3<i32>(global0.x, 40836i, 81216i) << (var_1.e % vec3<u32>(32u))), vec3<i32>(countOneBits(u_input.a), _wgslsmith_add_i32(19854i, u_input.b.x), _wgslsmith_mult_i32(2147483647i, global0.x))));
}

