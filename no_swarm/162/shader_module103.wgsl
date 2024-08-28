struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec4<u32>) -> bool {
    return true;
}

fn func_3() -> vec2<f32> {
    let var_0 = Struct_3(Struct_2(true, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2153f, -386f))), ~max(vec4<u32>(u_input.a, u_input.c, u_input.c, u_input.a), vec4<u32>(u_input.a, u_input.c, u_input.c, 0u)), ~reverseBits(vec2<u32>(23467u, u_input.c)), _wgslsmith_f_op_f32(f32(-1f) * -288f)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(518f, 1029f)), vec4<u32>(4294967295u, _wgslsmith_sub_u32(77995u, u_input.a), u_input.c, ~u_input.c), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, 1u) ^ vec2<u32>(38938u, 4294967295u), ~vec2<u32>(41139u, u_input.c)), -339f)), ~(~32760u), Struct_2(false, Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(449f, -365f), _wgslsmith_div_vec2_f32(vec2<f32>(-233f, -754f), vec2<f32>(-1950f, 515f))), ~select(vec4<u32>(u_input.a, u_input.c, 68753u, u_input.a), vec4<u32>(4294967295u, 61701u, u_input.a, 42738u), vec4<bool>(false, false, true, true)), ~(~vec2<u32>(u_input.a, u_input.c)), 876f), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-559f, -639f) + vec2<f32>(331f, -1660f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1782f, 1279f), vec2<f32>(718f, -1017f)))), firstTrailingBit(firstTrailingBit(vec4<u32>(16030u, u_input.a, u_input.c, 1u))), ~vec2<u32>(u_input.a, 64788u), 293f)), true);
    var var_1 = ~68221u;
    var var_2 = Struct_2(any(!vec2<bool>(var_0.c.a, !var_0.c.a)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.c.d * var_0.a.b.d)), _wgslsmith_f_op_f32(trunc(654f))), ~(~countOneBits(vec4<u32>(4294967295u, 1u, 34665u, u_input.c))), vec2<u32>(_wgslsmith_mult_u32(0u, ~var_0.b), var_0.c.c.b.x), _wgslsmith_f_op_f32(select(-1450f, -631f, ~16684u < u_input.c))), var_0.c.c);
    var_2 = Struct_2(u_input.b.x <= _wgslsmith_sub_i32(-1i, 1i << (~var_0.b % 32u)), var_0.c.c, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(589f)), var_0.a.b.d)), var_2.b.b, var_2.b.b.xz, _wgslsmith_f_op_f32(var_2.c.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(559f, var_2.c.d)) + -1038f))));
    var_2 = var_0.a;
    return var_0.c.b.a;
}

fn func_2() -> Struct_1 {
    var var_0 = any(vec2<bool>(any(vec3<bool>(true, true, true)) || (max(u_input.a, 4294967295u) < 12519u), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1654f * -313f) + _wgslsmith_div_f32(796f, 485f)), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(-1136f, -1375f), vec2<f32>(-1000f, 368f)), select(vec4<u32>(1u, u_input.c, u_input.a, 46540u), vec4<u32>(u_input.c, u_input.a, 8853u, 6528u), vec4<bool>(true, false, true, false)), min(vec2<u32>(u_input.c, u_input.a), vec2<u32>(0u, u_input.a)), -257f), ~(vec4<u32>(23528u, 8909u, 67190u, u_input.c) ^ vec4<u32>(u_input.a, 17298u, 1u, 1u)))));
    var var_1 = Struct_3(Struct_2(!all(vec3<bool>(true, true, false)) && false, Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(722f, 278f), vec2<f32>(-1153f, 2753f), vec2<bool>(false, true)))), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(u_input.c, 49901u, 0u, 0u), vec4<u32>(u_input.c, 63241u, u_input.c, 35379u), false), _wgslsmith_mult_vec4_u32(vec4<u32>(34703u, 4294967295u, 0u, 4294967295u), vec4<u32>(u_input.c, u_input.a, 1u, 1u)), firstTrailingBit(vec4<u32>(u_input.a, u_input.c, u_input.a, 4472u))), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.c) & vec2<u32>(u_input.a, u_input.a), _wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(46302u, 18099u))), -129f), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -291f), _wgslsmith_div_f32(-793f, -260f)), firstLeadingBit(~vec4<u32>(u_input.c, u_input.a, u_input.a, 4294967295u)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 34053u), _wgslsmith_mult_vec2_u32(vec2<u32>(45265u, 0u), vec2<u32>(3448u, u_input.c))), _wgslsmith_f_op_f32(f32(-1f) * -1746f))), min(u_input.c, u_input.a), Struct_2(false, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1952f, 150f), vec2<f32>(1798f, -160f))) - vec2<f32>(444f, -701f)), ~vec4<u32>(4294967295u, 5911u, 42239u, u_input.c), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 14368u) >> (vec2<u32>(1u, u_input.c) % vec2<u32>(32u)), vec2<u32>(u_input.a, 49856u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1269f)))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1679f, -106f)), vec4<u32>(_wgslsmith_mult_u32(36959u, 53421u), reverseBits(u_input.c), u_input.a | u_input.a, u_input.c), ~(vec2<u32>(0u, u_input.a) << (vec2<u32>(11374u, 4294967295u) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))))), ((func_1(-808f, Struct_1(vec2<f32>(-811f, 277f), vec4<u32>(u_input.c, u_input.c, u_input.c, 0u), vec2<u32>(1u, u_input.c), 537f), vec4<u32>(59374u, u_input.c, u_input.c, u_input.a)) & true) && true) == true);
    let var_2 = var_1.c.b;
    var var_3 = var_1.a;
    var_1 = Struct_3(var_1.c, 0u, var_1.a, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.c.b.d))), var_1.a.c, vec4<u32>(var_1.a.c.b.x, ~17410u, u_input.a, min(_wgslsmith_dot_vec4_u32(var_1.c.c.b, var_3.b.b), ~var_3.c.c.x))));
    return var_1.c.c;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: u32) -> Struct_2 {
    var var_0 = arg_2.c.x;
    var var_1 = vec3<bool>(false, true, arg_0.a);
    var var_2 = Struct_3(arg_0, arg_2.b.x << (min(~1u, arg_1.x) % 32u), Struct_2(arg_0.a, arg_2, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.c.a + arg_0.c.a) - arg_0.b.a), arg_2.b, vec2<u32>(~arg_3, firstTrailingBit(arg_0.b.c.x)), func_2().d)), all(vec2<bool>(true, true)));
    let var_3 = vec4<i32>(31140i, u_input.b.x, u_input.b.x, firstTrailingBit(u_input.b.x << ((~1u & arg_1.x) % 32u)));
    var_1 = !(!select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true), select(!vec3<bool>(var_2.c.a, arg_0.a, false), !vec3<bool>(var_1.x, var_2.a.a, false), !arg_0.a), var_1.x));
    return arg_0;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: Struct_2) -> vec2<f32> {
    let var_0 = Struct_2(true, arg_1.b, arg_3.b);
    let var_1 = Struct_3(arg_3, 1u, Struct_2(!arg_3.a, func_2(), Struct_1(vec2<f32>(func_4(Struct_2(false, Struct_1(vec2<f32>(arg_3.b.a.x, arg_3.c.a.x), arg_1.b.b, vec2<u32>(62506u, 4294967295u), 308f), Struct_1(var_0.b.a, var_0.c.b, vec2<u32>(arg_1.b.c.x, u_input.a), -2482f)), vec4<u32>(arg_3.c.b.x, var_0.b.b.x, u_input.a, arg_1.b.c.x), Struct_1(vec2<f32>(534f, -1417f), var_0.c.b, vec2<u32>(var_0.b.b.x, arg_1.b.c.x), var_0.b.d), arg_1.c.c.x).c.d, _wgslsmith_f_op_f32(select(517f, 686f, arg_1.a))), (vec4<u32>(6198u, arg_3.b.c.x, 6669u, 11364u) ^ vec4<u32>(24799u, arg_3.b.c.x, var_0.c.b.x, var_0.c.b.x)) | abs(vec4<u32>(arg_1.b.b.x, 30038u, arg_1.c.b.x, 1u)), ~abs(vec2<u32>(arg_3.c.b.x, 1u)), _wgslsmith_f_op_f32(arg_1.c.a.x + _wgslsmith_f_op_f32(-var_0.b.a.x)))), select(!(!(!arg_1.a)), arg_3.a, false | !(false && arg_1.a)));
    var var_2 = select(select(!vec4<bool>(true, var_1.d, all(vec4<bool>(false, false, false, arg_1.a)), func_1(173f, arg_3.c, vec4<u32>(4294967295u, var_1.b, 81297u, arg_1.b.c.x))), !vec4<bool>(func_4(arg_1, vec4<u32>(0u, arg_1.b.b.x, 1u, arg_3.c.b.x), Struct_1(arg_1.c.a, vec4<u32>(4294967295u, arg_1.c.c.x, u_input.a, 67856u), var_0.b.c, arg_1.b.d), 22683u).a, true, true, var_1.a.a), !(!vec4<bool>(arg_1.a, true, var_0.a, var_1.a.a))), !(!vec4<bool>(false, true, arg_1.a && arg_3.a, true)), !var_1.d);
    let var_3 = ~(~_wgslsmith_mult_vec3_u32(var_0.c.b.yxx >> (vec3<u32>(14338u, var_1.a.b.b.x, 15520u) % vec3<u32>(32u)), var_0.b.b.wyx)) & _wgslsmith_mod_vec3_u32(~firstTrailingBit(~var_1.a.b.b.xxz), arg_3.c.b.wyz);
    var_2 = !vec4<bool>(!select(false, var_2.x, false), true, true, !(!(arg_2.x < -2147483647i)));
    return _wgslsmith_f_op_vec2_f32(max(var_0.b.a, arg_1.b.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(any(vec2<bool>(false, any(vec2<bool>(false, true)))), false), vec2<bool>(func_1(118f, Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(269f, 154f), vec2<f32>(905f, -365f)), vec4<u32>(683u, u_input.c, u_input.c, 0u), ~vec2<u32>(u_input.a, 4294967295u), _wgslsmith_f_op_f32(f32(-1f) * -1003f)), ~vec4<u32>(0u, u_input.a, 8026u, 77169u)), !(!any(vec3<bool>(true, true, false)))), !vec2<bool>(true, u_input.c >= _wgslsmith_mod_u32(1u, 31148u)));
    let var_1 = 1601f;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5(firstTrailingBit(abs(vec4<i32>(-38394i, u_input.b.x, -1i, u_input.b.x))), Struct_2(false | var_0.x, Struct_1(vec2<f32>(var_1, var_1), vec4<u32>(7331u, 70597u, 4294967295u, 20295u), vec2<u32>(4558u, 17397u), -1592f), Struct_1(vec2<f32>(var_1, var_1), vec4<u32>(4294967295u, 21885u, u_input.c, 65393u), vec2<u32>(u_input.a, 16295u), 850f)), u_input.b, func_4(Struct_2(var_0.x, Struct_1(vec2<f32>(var_1, var_1), vec4<u32>(u_input.a, 0u, 4294967295u, u_input.c), vec2<u32>(u_input.a, 0u), var_1), Struct_1(vec2<f32>(var_1, var_1), vec4<u32>(u_input.c, u_input.a, 8915u, 61776u), vec2<u32>(4294967295u, u_input.a), 1393f)), countOneBits(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)), func_2(), 1855u))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(func_4(Struct_2(var_0.x, Struct_1(vec2<f32>(var_1, var_1), vec4<u32>(u_input.c, 4294967295u, u_input.a, u_input.a), vec2<u32>(1u, u_input.c), var_1), Struct_1(vec2<f32>(1050f, var_1), vec4<u32>(4294967295u, 0u, 4294967295u, 12306u), vec2<u32>(u_input.a, 33403u), var_1)), vec4<u32>(1u, u_input.a, 14450u, u_input.c), Struct_1(vec2<f32>(var_1, 456f), vec4<u32>(u_input.a, u_input.a, u_input.a, 43174u), vec2<u32>(17422u, u_input.a), -1007f), 1u).c.a)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-2128f, var_1))))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) + vec2<f32>(-389f, _wgslsmith_f_op_vec2_f32(func_5(vec4<i32>(u_input.b.x, u_input.b.x, 21889i, 32727i), Struct_2(var_0.x, Struct_1(vec2<f32>(1039f, 592f), vec4<u32>(u_input.c, 4294967295u, u_input.a, 0u), vec2<u32>(4294967295u, u_input.c), 246f), Struct_1(vec2<f32>(644f, 584f), vec4<u32>(4294967295u, u_input.a, u_input.a, 24862u), vec2<u32>(u_input.c, u_input.a), var_1)), u_input.b, Struct_2(false, Struct_1(vec2<f32>(var_1, 939f), vec4<u32>(1u, u_input.a, 0u, 55366u), vec2<u32>(u_input.a, 29049u), 417f), Struct_1(vec2<f32>(var_1, 1000f), vec4<u32>(6738u, u_input.c, 4294967295u, 1u), vec2<u32>(u_input.a, u_input.c), var_1)))).x)))));
    var var_3 = func_2();
    var var_4 = _wgslsmith_mod_vec4_u32(var_3.b, var_3.b & var_3.b);
    var var_5 = func_2();
    var var_6 = Struct_2(var_0.x, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(var_5.a))))), ~vec4<u32>(_wgslsmith_mod_u32(1u, u_input.c), _wgslsmith_mult_u32(var_5.b.x, u_input.a), func_4(Struct_2(var_0.x, Struct_1(vec2<f32>(1000f, -273f), vec4<u32>(5810u, var_5.b.x, var_5.c.x, var_4.x), vec2<u32>(0u, 79766u), var_3.a.x), Struct_1(var_2, var_3.b, var_3.c, 678f)), vec4<u32>(u_input.a, u_input.c, 4294967295u, var_4.x), Struct_1(var_5.a, vec4<u32>(58854u, 0u, u_input.c, 51919u), vec2<u32>(3589u, 1u), var_3.a.x), var_5.c.x).c.b.x, var_5.b.x), vec2<u32>(0u, ~_wgslsmith_clamp_u32(1u, 60737u, var_5.c.x)), func_4(func_4(Struct_2(var_0.x, Struct_1(var_2, var_3.b, vec2<u32>(1u, 1u), 737f), Struct_1(vec2<f32>(-496f, var_3.d), vec4<u32>(4294967295u, var_3.c.x, 37542u, 54128u), var_4.xz, var_2.x)), _wgslsmith_clamp_vec4_u32(var_3.b, var_5.b, var_5.b), Struct_1(var_3.a, var_5.b, vec2<u32>(var_4.x, 1u), 166f), ~var_5.c.x), firstLeadingBit(~var_5.b), Struct_1(var_2, ~vec4<u32>(23891u, var_3.c.x, var_4.x, u_input.c), firstTrailingBit(var_4.zy), var_1), _wgslsmith_clamp_u32(~u_input.c, var_3.c.x, func_4(Struct_2(false, Struct_1(vec2<f32>(var_3.d, -336f), vec4<u32>(4294967295u, 31447u, u_input.c, var_3.b.x), vec2<u32>(1u, var_5.c.x), 2076f), Struct_1(var_2, vec4<u32>(var_4.x, var_3.c.x, 46930u, 63872u), var_5.b.zx, var_3.d)), vec4<u32>(21322u, var_5.b.x, 27386u, var_3.b.x), Struct_1(var_2, var_5.b, var_5.b.wx, -149f), var_4.x).b.b.x)).b.d), Struct_1(_wgslsmith_f_op_vec2_f32(sign(var_5.a)), vec4<u32>(var_3.b.x, ~(~var_4.x), var_4.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.b.x, var_5.b.x, 6810u), vec3<u32>(111699u, var_3.b.x, 4294967295u)), ~var_5.b.x)), ~vec2<u32>(var_4.x, 24333u), -394f));
    var_4 = func_2().b | ~(var_6.c.b ^ var_3.b);
    var_6 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(906f + -642f) * func_2().a.x) >= _wgslsmith_f_op_f32(step(-111f, func_4(Struct_2(false, var_6.b, Struct_1(vec2<f32>(var_6.b.a.x, var_2.x), vec4<u32>(15224u, 4294967295u, var_6.b.b.x, 0u), var_3.b.ww, var_5.a.x)), select(vec4<u32>(40539u, 4294967295u, 0u, var_6.c.c.x), var_5.b, vec4<bool>(false, false, false, false)), var_6.b, var_6.b.c.x).c.d)), var_6.b, func_2());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(u_input.b, vec2<i32>(-1i) * -(~vec2<i32>(-31476i, u_input.b.x)), u_input.b & (abs(vec2<i32>(-35056i, u_input.b.x)) & u_input.b)), firstLeadingBit(1i), -1683f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1096f, var_3.a.x, var_1, -270f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_6.c.d, 224f, var_2.x, var_2.x))) + vec4<f32>(var_6.c.a.x, var_5.d, -302f, _wgslsmith_f_op_f32(var_1 * var_3.a.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_3.a.x, var_1, var_5.a.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.x, var_3.d, 519f, -919f)))))), countOneBits(select(~u_input.b.x, _wgslsmith_div_i32(1385i, u_input.b.x), true) >> (var_6.b.b.x % 32u)));
}

