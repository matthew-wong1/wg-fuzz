struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<bool>(false, true, true, false), Struct_1(vec4<f32>(-530f, 500f, -668f, 292f), vec3<i32>(3461i, 1i, 25730i), -30360i, 15803i, true), Struct_2(1135f, Struct_1(vec4<f32>(655f, -503f, -779f, -237f), vec3<i32>(0i, 44310i, -59439i), 0i, -46040i, true)));

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec4<f32>(-629f, -592f, 542f, -1000f), vec3<i32>(-56489i, -8665i, 0i), -31546i, 724i, false), Struct_1(vec4<f32>(-741f, 541f, -393f, 1000f), vec3<i32>(27865i, 2147483647i, 24551i), i32(-2147483648), 17485i, false), Struct_1(vec4<f32>(-573f, -1364f, -1000f, -1000f), vec3<i32>(62035i, -1i, -48644i), 42422i, 28971i, true), Struct_1(vec4<f32>(-1255f, -356f, -1602f, -275f), vec3<i32>(-29213i, 2147483647i, 40406i), 1i, -17797i, false), Struct_1(vec4<f32>(298f, 824f, 1445f, 100f), vec3<i32>(19616i, 1i, -22169i), 13150i, i32(-2147483648), false), Struct_1(vec4<f32>(-1412f, 989f, -343f, -633f), vec3<i32>(-1782i, 1i, 0i), 1i, 59671i, false), Struct_1(vec4<f32>(564f, 1528f, 1178f, 1440f), vec3<i32>(40776i, 2147483647i, -22843i), i32(-2147483648), i32(-2147483648), false), Struct_1(vec4<f32>(-1162f, -769f, 586f, -1764f), vec3<i32>(i32(-2147483648), -1i, -1i), 2147483647i, -63523i, true), Struct_1(vec4<f32>(-1304f, -533f, 267f, 1163f), vec3<i32>(2147483647i, 0i, 29037i), 1i, 28748i, false), Struct_1(vec4<f32>(134f, -206f, -100f, -2203f), vec3<i32>(0i, -7203i, 2319i), 0i, -8816i, true), Struct_1(vec4<f32>(-897f, -175f, -1350f, -1000f), vec3<i32>(21175i, -40971i, -1i), 1i, -682i, false), Struct_1(vec4<f32>(711f, 928f, -493f, -1162f), vec3<i32>(-32305i, -19511i, 1i), -16814i, -15365i, false), Struct_1(vec4<f32>(655f, 341f, 1000f, 281f), vec3<i32>(-55083i, 0i, 26472i), -1i, 2147483647i, false), Struct_1(vec4<f32>(-1000f, 356f, 1869f, -1876f), vec3<i32>(1i, -85167i, 1i), 0i, 42104i, true), Struct_1(vec4<f32>(711f, 1982f, -218f, -646f), vec3<i32>(34861i, 0i, 1i), 61279i, -8370i, false), Struct_1(vec4<f32>(1059f, 2271f, 1000f, 509f), vec3<i32>(1639i, 19132i, 105593i), i32(-2147483648), 25363i, false), Struct_1(vec4<f32>(1935f, 734f, -920f, 1583f), vec3<i32>(2147483647i, 6679i, -13771i), -1i, 5582i, false), Struct_1(vec4<f32>(1015f, 1314f, -108f, -1749f), vec3<i32>(0i, 2147483647i, -24599i), 6149i, -29264i, true), Struct_1(vec4<f32>(-471f, -384f, 406f, -394f), vec3<i32>(1i, -8454i, -1i), i32(-2147483648), 20130i, true));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.c.b.a.yz) - _wgslsmith_div_vec2_f32(arg_3.a.ww, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c.a, -1210f) * arg_3.a.wx))))));
    global0 = Struct_3(vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1428f))) != var_0.x, !(!(!arg_3.e)), true, !arg_2.b.e), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(arg_2.b.a.x, -973f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-arg_3.a.x), arg_2.c.b.a.x))), arg_3.b, 1i, -(~arg_3.d), any(!select(global0.a.wy, vec2<bool>(false, arg_2.b.e), global0.a.xw))), global0.c);
    var var_1 = global0.b.e & arg_3.e;
    var_1 = true;
    var var_2 = global0.b;
    return all(global0.a.zy);
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: Struct_3) -> Struct_2 {
    global1 = array<Struct_1, 19>();
    let var_0 = global0.c.b.e || func_3(~_wgslsmith_div_i32(global0.c.b.c, ~(-45356i)), u_input.a.zy, Struct_3(global0.a, Struct_1(_wgslsmith_f_op_vec4_f32(-arg_2.c.b.a), vec3<i32>(global0.b.b.x, arg_2.b.d, 28167i), arg_2.b.d, ~13771i, arg_2.b.e | false), Struct_2(arg_0, Struct_1(global0.c.b.a, vec3<i32>(arg_2.b.c, arg_2.c.b.d, -2147483647i), arg_2.c.b.b.x, 0i, true))), Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-431f, global0.c.b.a.x, global0.b.a.x, -728f)), _wgslsmith_f_op_vec4_f32(global0.b.a - arg_2.c.b.a))), select(~global0.c.b.b, ~vec3<i32>(global0.b.d, global0.b.b.x, arg_2.b.c), all(arg_2.a.zz)), 40696i, ~(-2147483647i), arg_2.c.b.e));
    global0 = arg_2;
    var var_1 = 42797u;
    var var_2 = arg_2.b;
    return arg_2.c;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: Struct_2) -> bool {
    var var_0 = arg_2.c.b.b.x;
    var_0 = countOneBits(-firstTrailingBit(~(-2147483647i)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a.x, u_input.a.x), vec2<u32>(0u, u_input.a.x)) % 32u));
    var var_1 = _wgslsmith_f_op_f32(exp2(global0.c.b.a.x));
    var var_2 = Struct_3(select(global0.a, select(global0.a, select(!arg_2.a, !arg_0.a, true), global0.a), !select(select(global0.a, arg_0.a, true), arg_2.a, global0.c.a < 1018f)), func_2(_wgslsmith_f_op_f32(-1347f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b.a.x) * _wgslsmith_f_op_f32(-382f - arg_0.c.b.a.x))), 1u, Struct_3(select(!arg_0.a, vec4<bool>(arg_0.b.e, arg_3.b.e, arg_0.a.x, true), true), func_2(arg_3.a, 12340u, arg_2).b, arg_2.c)).b, arg_2.c);
    let var_3 = firstTrailingBit(arg_1.x);
    return arg_3.b.e;
}

fn func_1(arg_0: u32, arg_1: u32) -> i32 {
    let var_0 = vec2<i32>(-6136i, -global0.b.c);
    var var_1 = Struct_3(vec4<bool>(global0.c.b.e, false, func_4(Struct_3(global0.a, Struct_1(vec4<f32>(-992f, global0.b.a.x, global0.c.b.a.x, global0.b.a.x), global0.c.b.b, var_0.x, -17067i, true), func_2(1398f, u_input.d, Struct_3(global0.a, global0.c.b, global0.c))), _wgslsmith_mult_vec3_u32(u_input.a ^ u_input.a, u_input.a), Struct_3(global0.a, global1[_wgslsmith_index_u32(39295u ^ u_input.d, 19u)], global0.c), global0.c), global0.a.x), func_2(446f, 45997u, Struct_3(vec4<bool>(true, global0.a.x, global0.c.b.e, true), global1[_wgslsmith_index_u32(0u, 19u)], Struct_2(513f, global0.b))).b, Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.b.a.x))), func_2(955f, u_input.c, Struct_3(!global0.a, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0, 22832u), 19u)], func_2(614f, 15731u, Struct_3(global0.a, Struct_1(global0.b.a, vec3<i32>(var_0.x, -2147483647i, -1i), 70383i, global0.b.c, global0.a.x), global0.c)))).b));
    global1 = array<Struct_1, 19>();
    var_1 = Struct_3(var_1.a, func_2(_wgslsmith_f_op_f32(-var_1.b.a.x), countOneBits(arg_0), Struct_3(select(var_1.a, select(vec4<bool>(var_1.b.e, false, true, false), var_1.a, vec4<bool>(true, var_1.a.x, true, true)), var_1.a), Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-766f, -1299f, global0.b.a.x, -1632f), vec4<f32>(global0.c.a, 175f, 228f, -726f), var_1.a.x)), ~var_1.b.b, ~var_1.b.d, _wgslsmith_div_i32(var_1.c.b.d, -19427i), true), func_2(var_1.b.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c), u_input.a.yy), Struct_3(var_1.a, Struct_1(vec4<f32>(568f, var_1.c.b.a.x, global0.b.a.x, global0.b.a.x), var_1.b.b, -9875i, global0.c.b.d, false), Struct_2(-1000f, var_1.b))))).b, var_1.c);
    var var_2 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(792f * global0.b.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.b.a.x + -2204f))))), 4294967295u, Struct_3(global0.a, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.a.x, -898f, global0.b.a.x, 696f) - _wgslsmith_div_vec4_f32(global0.c.b.a, var_1.b.a)), _wgslsmith_div_vec3_i32(select(var_1.c.b.b, global0.b.b, global0.a.zzw), ~vec3<i32>(-63303i, 22714i, -1i)), firstTrailingBit(~global0.c.b.b.x), 1i, select(true, !var_1.b.e, func_2(global0.c.b.a.x, 68533u, Struct_3(vec4<bool>(false, global0.b.e, global0.b.e, global0.a.x), Struct_1(vec4<f32>(global0.b.a.x, -1031f, 1340f, 110f), var_1.c.b.b, var_0.x, global0.b.b.x, true), global0.c)).b.e)), func_2(_wgslsmith_f_op_f32(select(1f, _wgslsmith_div_f32(-589f, global0.c.b.a.x), !global0.c.b.e)), firstLeadingBit(19110u), Struct_3(select(var_1.a, vec4<bool>(var_1.b.e, global0.b.e, var_1.c.b.e, false), false), Struct_1(vec4<f32>(2104f, global0.b.a.x, 332f, global0.b.a.x), global0.c.b.b, -2147483647i, 0i, true), func_2(var_1.c.a, arg_0, Struct_3(global0.a, var_1.c.b, Struct_2(1000f, global0.c.b))))))).b;
    return 19149i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c.b.a.x, -1380f) * global0.c.b.a.x), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(2363f, -1276f, 307f, global0.b.a.x) * vec4<f32>(global0.c.a, -504f, -1037f, global0.b.a.x))))), vec3<i32>(select(42770i >> (u_input.a.x % 32u), abs(-15222i), any(vec2<bool>(global0.a.x, false))), func_1(select(1u, 19188u, global0.a.x), 1u), global0.b.b.x), (global0.c.b.b.x ^ ~global0.b.d) | -global0.c.b.b.x, ~(-abs(global0.b.c)), true));
    var var_1 = Struct_3(!(!vec4<bool>(global0.a.x, false & global0.c.b.e, global0.b.e, true)), var_0.b, global0.c);
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.a, var_0.b.a.x, var_1.c.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -182f)) - vec4<f32>(var_1.b.a.x, -568f, -396f, _wgslsmith_div_f32(global0.b.a.x, -520f))) * _wgslsmith_f_op_vec4_f32(trunc(var_1.b.a))), _wgslsmith_f_op_vec4_f32(trunc(global0.b.a)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1965f + 889f) * var_1.b.a.x));
    global0 = Struct_3(vec4<bool>(false, select(true, func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(16307i, 2147483647i, -2147483647i, -2147483647i), vec4<i32>(global0.b.d, var_1.c.b.d, var_1.b.d, 0i)), select(vec2<u32>(u_input.a.x, u_input.d), vec2<u32>(22717u, 4294967295u), global0.a.xz), Struct_3(vec4<bool>(false, var_1.b.e, false, global0.c.b.e), global0.b, var_1.c), var_0.b), func_3(-2147483647i, vec2<u32>(u_input.c, 30056u), Struct_3(global0.a, Struct_1(global0.b.a, var_1.c.b.b, -9734i, -2147483647i, false), global0.c), var_1.b)), !global0.a.x, global0.c.b.e), func_2(1023f, 110078u, Struct_3(!(!vec4<bool>(false, var_0.b.e, var_1.c.b.e, global0.b.e)), Struct_1(var_1.c.b.a, -vec3<i32>(-1i, -24937i, var_0.b.b.x), 0i >> (0u % 32u), -26855i, true), Struct_2(_wgslsmith_f_op_f32(var_2.x - var_0.a), global0.b))).b, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -339f)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1229f, -1052f, true))), 1u, Struct_3(select(vec4<bool>(var_0.b.e, var_1.b.e, var_1.c.b.e, global0.a.x), vec4<bool>(false, var_1.c.b.e, false, false), global0.a), var_1.c.b, global0.c)).b));
    let var_4 = -385f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(global0.c.b.a.x)), var_0.b.b.x);
}

