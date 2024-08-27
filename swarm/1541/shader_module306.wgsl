struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1;

var<private> global2: Struct_2 = Struct_2(vec3<i32>(1i, -21620i, -1i));

var<private> global3: Struct_3 = Struct_3(Struct_1(vec2<i32>(-918i, 4634i), vec2<f32>(-234f, -891f), vec2<f32>(595f, 636f), vec2<bool>(true, true)), Struct_2(vec3<i32>(-1i, 20375i, 1i)));

var<private> global4: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(Struct_1(vec2<i32>(-45225i, i32(-2147483648)), vec2<f32>(-190f, 818f), vec2<f32>(-1122f, -881f), vec2<bool>(false, true)), Struct_2(vec3<i32>(0i, 19078i, -38216i))), Struct_3(Struct_1(vec2<i32>(0i, 0i), vec2<f32>(553f, 1086f), vec2<f32>(1149f, -557f), vec2<bool>(false, false)), Struct_2(vec3<i32>(-20393i, -24505i, 12320i))), Struct_3(Struct_1(vec2<i32>(22287i, i32(-2147483648)), vec2<f32>(-485f, -263f), vec2<f32>(1492f, -1501f), vec2<bool>(true, false)), Struct_2(vec3<i32>(1i, i32(-2147483648), 1018i))), Struct_3(Struct_1(vec2<i32>(-23686i, 19249i), vec2<f32>(1000f, -963f), vec2<f32>(-728f, -1459f), vec2<bool>(false, false)), Struct_2(vec3<i32>(1i, -1i, -1i))), Struct_3(Struct_1(vec2<i32>(0i, -1i), vec2<f32>(-1201f, 946f), vec2<f32>(-270f, 842f), vec2<bool>(false, true)), Struct_2(vec3<i32>(1i, -29897i, -3244i))), Struct_3(Struct_1(vec2<i32>(1i, 22546i), vec2<f32>(-1844f, -807f), vec2<f32>(-830f, -1332f), vec2<bool>(false, false)), Struct_2(vec3<i32>(498i, 2147483647i, 8585i))), Struct_3(Struct_1(vec2<i32>(15816i, 12045i), vec2<f32>(834f, 388f), vec2<f32>(543f, -200f), vec2<bool>(false, false)), Struct_2(vec3<i32>(0i, -8048i, 0i))), Struct_3(Struct_1(vec2<i32>(7512i, -2708i), vec2<f32>(-149f, 926f), vec2<f32>(180f, 1388f), vec2<bool>(false, false)), Struct_2(vec3<i32>(-33102i, -1i, -17666i))), Struct_3(Struct_1(vec2<i32>(47658i, -45976i), vec2<f32>(271f, 1905f), vec2<f32>(1041f, 504f), vec2<bool>(false, true)), Struct_2(vec3<i32>(16237i, 2147483647i, -1i))), Struct_3(Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec2<f32>(676f, -283f), vec2<f32>(547f, -319f), vec2<bool>(true, true)), Struct_2(vec3<i32>(-1i, 3539i, 2147483647i))), Struct_3(Struct_1(vec2<i32>(0i, 0i), vec2<f32>(-347f, -487f), vec2<f32>(1142f, -677f), vec2<bool>(true, true)), Struct_2(vec3<i32>(-20178i, 1i, -3178i))), Struct_3(Struct_1(vec2<i32>(i32(-2147483648), 0i), vec2<f32>(-119f, 203f), vec2<f32>(-213f, 2411f), vec2<bool>(true, true)), Struct_2(vec3<i32>(14016i, i32(-2147483648), 2147483647i))), Struct_3(Struct_1(vec2<i32>(-8725i, -15918i), vec2<f32>(1000f, -427f), vec2<f32>(-2002f, 489f), vec2<bool>(false, true)), Struct_2(vec3<i32>(-10594i, -22599i, 11476i))), Struct_3(Struct_1(vec2<i32>(1i, i32(-2147483648)), vec2<f32>(-509f, 1000f), vec2<f32>(1258f, -898f), vec2<bool>(false, true)), Struct_2(vec3<i32>(-9811i, 21964i, i32(-2147483648)))), Struct_3(Struct_1(vec2<i32>(12401i, -34414i), vec2<f32>(-1731f, -255f), vec2<f32>(-1007f, -1035f), vec2<bool>(true, false)), Struct_2(vec3<i32>(11130i, 7612i, -34494i))), Struct_3(Struct_1(vec2<i32>(2847i, 2147483647i), vec2<f32>(-1836f, 654f), vec2<f32>(1000f, 1521f), vec2<bool>(false, true)), Struct_2(vec3<i32>(22196i, 1i, i32(-2147483648)))), Struct_3(Struct_1(vec2<i32>(0i, -48683i), vec2<f32>(-765f, 1575f), vec2<f32>(247f, -206f), vec2<bool>(true, true)), Struct_2(vec3<i32>(i32(-2147483648), 11140i, 22859i))), Struct_3(Struct_1(vec2<i32>(-1i, 1i), vec2<f32>(759f, -338f), vec2<f32>(-753f, 1296f), vec2<bool>(false, false)), Struct_2(vec3<i32>(-11489i, 0i, 2147483647i))), Struct_3(Struct_1(vec2<i32>(0i, -40141i), vec2<f32>(-545f, -1000f), vec2<f32>(-356f, 922f), vec2<bool>(false, true)), Struct_2(vec3<i32>(2147483647i, 9871i, -48117i))));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec3<i32>) -> f32 {
    var var_0 = _wgslsmith_dot_vec2_u32(u_input.c, firstLeadingBit(vec2<u32>(~2534u, abs(4294967295u))) | _wgslsmith_div_vec2_u32(max(~vec2<u32>(11885u, u_input.c.x), vec2<u32>(38017u, 62539u)), u_input.c));
    var var_1 = vec4<bool>(-9569i <= firstLeadingBit(_wgslsmith_div_i32(_wgslsmith_div_i32(global3.a.a.x, arg_2.x), -2147483647i)), !arg_0.a.d.x, false, false);
    global3 = Struct_3(Struct_1(global2.a.xz | _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(global2.a.xy, vec2<i32>(2147483647i, arg_2.x)), _wgslsmith_clamp_vec2_i32(arg_0.a.a, vec2<i32>(49084i, global3.b.a.x), vec2<i32>(-4561i, global3.a.a.x)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 40507i), global1.a, vec2<i32>(-2147483647i, arg_2.x))), _wgslsmith_f_op_vec2_f32(global1.b - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global3.a.c)))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.c.x, -1890f))), select(vec2<bool>(var_1.x | global3.a.d.x, true), select(!arg_0.a.d, vec2<bool>(true, false), !global3.a.d), select(!var_1.x, global1.d.x, false))), Struct_2(vec3<i32>(-1i) * -abs(arg_2)));
    var var_2 = arg_0.a;
    let var_3 = 995f;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -821f)));
}

fn func_2(arg_0: f32) -> Struct_4 {
    let var_0 = Struct_2(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(countOneBits(-1048i), global3.b.a.x, ~(-20806i)), _wgslsmith_mod_vec3_i32(vec3<i32>(40126i, global1.a.x, 0i), -global3.b.a)), global3.b.a));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3.a.b.x, _wgslsmith_f_op_f32(func_3(Struct_3(global3.a, Struct_2(var_0.a)), vec4<i32>(-5479i, 40783i, 0i, global3.a.a.x), vec3<i32>(global1.a.x, 0i, global2.a.x))), 375f, _wgslsmith_f_op_f32(round(global1.b.x)))))));
    global3 = global4[_wgslsmith_index_u32(14358u, 19u)];
    let var_2 = -firstTrailingBit(reverseBits(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(3922i, 77237i, global1.a.x, global3.a.a.x), vec4<i32>(1i, -36493i, -2147483647i, 22661i)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global1.b * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.c.x, global1.c.x)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.zx - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, 1000f), vec2<f32>(-1000f, global3.a.c.x), global1.d)))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.b - global1.c)))))));
    return Struct_4(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(25573u, u_input.a) ^ vec2<u32>(4294967295u, 1u)), firstLeadingBit(u_input.c)), 61531u), global3.a, vec3<i32>(max(~_wgslsmith_dot_vec4_i32(vec4<i32>(41000i, global1.a.x, global2.a.x, 2147483647i), var_2), 22624i), ~0i, ~global2.a.x));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: Struct_4) -> Struct_1 {
    let var_0 = arg_1.b;
    let var_1 = arg_1;
    var var_2 = func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.c.x)), _wgslsmith_f_op_f32(ceil(1575f)), !(true && var_1.b.d.x))), _wgslsmith_f_op_f32(global1.b.x - func_2(var_0.b.x).b.b.x))));
    global1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.c.x - global1.c.x)) - arg_2.b.b.x))).b;
    let var_3 = Struct_3(arg_1.b, Struct_2(_wgslsmith_div_vec3_i32(vec3<i32>(global1.a.x, 0i, i32(-1i) * -2147483647i), -vec3<i32>(var_1.c.x, 0i, global3.a.a.x))));
    return var_0;
}

fn func_1(arg_0: bool) -> i32 {
    var var_0 = Struct_3(func_4(_wgslsmith_mod_vec3_i32(countOneBits(abs(vec3<i32>(0i, -1i, global2.a.x))), global2.a), Struct_4(_wgslsmith_add_u32(61586u, _wgslsmith_div_u32(u_input.c.x, 61497u)), global3.a, _wgslsmith_sub_vec3_i32(vec3<i32>(global3.a.a.x, 2147483647i, global2.a.x), max(vec3<i32>(global1.a.x, global1.a.x, 1i), global2.a))), func_2(-1532f)), global3.b);
    var var_1 = vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(i32(-1i) * -1i, (global3.a.a.x << (u_input.a % 32u)) ^ ~global1.a.x), _wgslsmith_clamp_i32(2147483647i, -1i, i32(-1i) * -13678i)), var_0.a.a.x, global3.b.a.x);
    var_0 = Struct_3(func_4(vec3<i32>(-1i) * -vec3<i32>(var_1.x, -3085i, global2.a.x), func_2(_wgslsmith_div_f32(1082f, 1224f)), func_2(116f)), Struct_2(vec3<i32>(-1i) * -vec3<i32>(global3.b.a.x, -2147483647i, 7405i)));
    let var_2 = 24668u | ~(~u_input.c.x);
    let var_3 = var_2 >= firstTrailingBit(1u);
    return _wgslsmith_sub_i32(~var_1.x, -_wgslsmith_mult_i32(-func_2(-199f).b.a.x, ~20939i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -func_1(global3.a.d.x) >= ~abs(_wgslsmith_div_i32(~global3.b.a.x, global1.a.x));
    let var_0 = Struct_3(Struct_1(~_wgslsmith_sub_vec2_i32(-vec2<i32>(global1.a.x, global3.b.a.x), global1.a), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.c.x, func_2(407f).b.c.x), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-134f, -1202f))))), _wgslsmith_f_op_vec2_f32(-global3.a.c), select(global1.d, !func_2(global1.b.x).b.d, ~u_input.b <= select(94677u, u_input.a, global3.a.d.x))), global3.b);
    global2 = var_0.b;
    let var_1 = Struct_2(select(reverseBits((vec3<i32>(global1.a.x, 1464i, var_0.b.a.x) >> (vec3<u32>(1u, u_input.b, u_input.a) % vec3<u32>(32u))) ^ global3.b.a), var_0.b.a, !vec3<bool>(all(vec2<bool>(true, false)), false, true)));
    global2 = Struct_2(select(min(select(~vec3<i32>(0i, 0i, -2147483647i), vec3<i32>(15258i, global2.a.x, global2.a.x) ^ global3.b.a, select(global3.a.d.x, global3.a.d.x, var_0.a.d.x)), max(_wgslsmith_sub_vec3_i32(vec3<i32>(global3.b.a.x, global2.a.x, global2.a.x), global3.b.a), var_1.a)), global3.b.a & (var_1.a & -global2.a), all(!(!vec3<bool>(global3.a.d.x, false, true)))));
    let var_2 = _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(global3.b.a, _wgslsmith_mod_vec3_i32(var_0.b.a, vec3<i32>(0i, global2.a.x, global3.a.a.x))), _wgslsmith_div_vec3_i32(~vec3<i32>(-1i, global3.a.a.x, 1i), vec3<i32>(-1i) * -global2.a)) >> (max(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.b, 21157u, 23950u), vec3<u32>(u_input.c.x, ~u_input.a, _wgslsmith_add_u32(u_input.c.x, u_input.a))), ~(vec3<u32>(u_input.b, 1u, 17232u) | abs(vec3<u32>(45608u, u_input.a, u_input.b)))) % vec3<u32>(32u));
    let var_3 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(max(~_wgslsmith_mult_u32(127u, u_input.b), _wgslsmith_sub_u32(func_2(global1.c.x).a, ~53905u)), u_input.c.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, _wgslsmith_mult_u32(u_input.a, u_input.c.x)), ~(~u_input.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.c.x, _wgslsmith_f_op_f32(-238f - _wgslsmith_f_op_f32(sign(-1015f))))), vec4<f32>(-206f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3.a.c.x)) + global1.b.x))));
}

