struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: i32,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<f32>, 23> = array<vec4<f32>, 23>(vec4<f32>(836f, -481f, -796f, 1082f), vec4<f32>(-1082f, 332f, -1215f, -3727f), vec4<f32>(-381f, 249f, -849f, -708f), vec4<f32>(1000f, -2418f, 1000f, 504f), vec4<f32>(250f, -401f, 849f, 1220f), vec4<f32>(656f, 1601f, -753f, 956f), vec4<f32>(-1000f, -278f, 304f, 531f), vec4<f32>(-437f, 1000f, -1000f, 911f), vec4<f32>(552f, 1780f, 679f, -555f), vec4<f32>(-2190f, -678f, 646f, 1168f), vec4<f32>(1410f, 1900f, 1000f, -401f), vec4<f32>(-1000f, -887f, -353f, -251f), vec4<f32>(132f, 786f, 799f, -227f), vec4<f32>(-106f, -1357f, 935f, -550f), vec4<f32>(-575f, -320f, -1180f, -1614f), vec4<f32>(584f, 905f, 3120f, -989f), vec4<f32>(-1000f, 1077f, 1991f, 1000f), vec4<f32>(-344f, -2148f, -649f, -276f), vec4<f32>(-1603f, -409f, -553f, -163f), vec4<f32>(-1266f, 1090f, 1101f, -1262f), vec4<f32>(-421f, 451f, 1960f, -1424f), vec4<f32>(-1296f, -613f, 894f, -1402f), vec4<f32>(-3213f, 562f, -397f, -607f));

var<private> global2: array<f32, 10> = array<f32, 10>(-1869f, 571f, 879f, -177f, 1506f, 2117f, -149f, 1800f, -794f, -1403f);

var<private> global3: Struct_3;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: bool) -> f32 {
    global3 = Struct_3(true);
    global3 = Struct_3(false);
    let var_0 = Struct_4(-_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(arg_0.d.b, arg_0.a.c, 2147483647i)), vec3<i32>(u_input.a, -1i, 393i)), vec3<i32>(-2147483647i, 15308i, 1i) >> (~vec3<u32>(u_input.b, arg_0.c, u_input.b) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_mod_i32(arg_0.d.b, arg_0.a.c), ~u_input.a, u_input.a)), -1i, arg_0.d);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -221f);
    global0 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(firstLeadingBit(vec3<u32>(4294967295u, 5872u, u_input.b)) << (~vec3<u32>(10515u, 0u, arg_1.x) % vec3<u32>(32u))), vec3<u32>(max(u_input.b, arg_0.c), ~arg_1.x, 1u)), 1u);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(arg_0.b, global2[_wgslsmith_index_u32(u_input.b, 10u)]))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: u32) -> vec3<bool> {
    let var_0 = Struct_2(Struct_1(select(vec3<bool>(true, all(vec4<bool>(global3.a, false, false, true)), false), !select(vec3<bool>(global3.a, true, global3.a), vec3<bool>(true, true, true), false), select(!vec3<bool>(true, global3.a, global3.a), vec3<bool>(true, false, global3.a), vec3<bool>(true, true, true))), u_input.a, -(~0i), vec4<f32>(-836f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec3<bool>(global3.a, global3.a, false), arg_0.x, 1i, vec4<f32>(1589f, -172f, global2[_wgslsmith_index_u32(arg_2, 10u)], -671f), -2007f), arg_1.x, 40758u, Struct_1(vec3<bool>(true, true, global3.a), 5131i, u_input.a, vec4<f32>(1000f, 982f, global2[_wgslsmith_index_u32(39676u, 10u)], -174f), arg_1.x)), vec2<u32>(87434u, 1u), false)) + 873f), -933f, 799f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.b, 10u)], global2[_wgslsmith_index_u32(0u, 10u)]))), 1000f, ~0u, Struct_1(vec3<bool>(!(!global3.a), global3.a, any(vec3<bool>(global3.a, global3.a, true))), _wgslsmith_mult_i32(min(arg_0.x, -2147483647i) | 1i, -19561i), arg_0.x, arg_1, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 10u)] - global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, ~arg_2), 10u)])));
    global2 = array<f32, 10>();
    global1 = array<vec4<f32>, 23>();
    global1 = array<vec4<f32>, 23>();
    global3 = Struct_3(any(!var_0.d.a));
    return var_0.d.a;
}

fn func_1() -> Struct_1 {
    let var_0 = ~(vec3<u32>(4294967295u, u_input.b, countOneBits(4294967295u)) << (~abs(vec3<u32>(28273u, 1u, u_input.b)) % vec3<u32>(32u))) << ((vec3<u32>(_wgslsmith_clamp_u32(u_input.b, u_input.b, 1672u), _wgslsmith_mod_u32(u_input.b, u_input.b), ~(u_input.b << (u_input.b % 32u))) ^ vec3<u32>(~(~4294967295u), 4294967295u, u_input.b)) % vec3<u32>(32u));
    var var_1 = Struct_1(vec3<bool>(!any(func_2(vec4<i32>(1i, -39337i, u_input.a, -3704i), global1[_wgslsmith_index_u32(var_0.x, 23u)], var_0.x)), true, all(select(!vec3<bool>(global3.a, global3.a, global3.a), vec3<bool>(global3.a, true, global3.a), true))), -u_input.a, reverseBits(~(~max(u_input.a, 1i))), vec4<f32>(-1009f, _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec3<bool>(global3.a, false, false), u_input.a, u_input.a, vec4<f32>(1888f, -1127f, global2[_wgslsmith_index_u32(u_input.b, 10u)], 256f), global2[_wgslsmith_index_u32(1u, 10u)]), 637f, 13412u, Struct_1(vec3<bool>(true, true, false), u_input.a, u_input.a, global1[_wgslsmith_index_u32(25865u, 23u)], global2[_wgslsmith_index_u32(1u, 10u)])), countOneBits(min(vec2<u32>(0u, var_0.x), vec2<u32>(var_0.x, var_0.x))), any(vec4<bool>(true, false, true, false)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 10u)]) - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 10u)])))), -518f), global2[_wgslsmith_index_u32(abs(min(19708u, 29117u)), 10u)]);
    var var_2 = _wgslsmith_f_op_f32(732f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(436f)))))));
    global3 = Struct_3(!(!select(global3.a, var_1.a.x, true)));
    let var_3 = Struct_4(select(vec3<i32>(var_1.b, _wgslsmith_mult_i32(u_input.a, u_input.a), ~0i) & _wgslsmith_mult_vec3_i32(vec3<i32>(-6620i, -2147483647i, -1i) << (vec3<u32>(u_input.b, var_0.x, 17599u) % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(0i, 2147483647i, 2147483647i))), select(vec3<i32>(_wgslsmith_mult_i32(var_1.b, 56454i), i32(-1i) * -2147483647i, 0i), ~(vec3<i32>(u_input.a, u_input.a, u_input.a) ^ vec3<i32>(-1i, u_input.a, var_1.b)), all(vec3<bool>(false, true, var_1.a.x))), vec3<bool>(global3.a, all(var_1.a) && (var_1.d.x <= global2[_wgslsmith_index_u32(1u, 10u)]), all(select(vec2<bool>(true, true), var_1.a.zz, false)))), ~max(0i, i32(-1i) * -var_1.b), Struct_1(vec3<bool>(var_1.a.x, (var_1.c >> (52312u % 32u)) > 2147483647i, all(!vec2<bool>(global3.a, global3.a))), _wgslsmith_mult_i32(abs(-6334i), _wgslsmith_mod_i32(71308i, _wgslsmith_mult_i32(2147483647i, u_input.a))), abs(-48146i), var_1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(u_input.b, 10u)])) + _wgslsmith_f_op_f32(var_1.e * global2[_wgslsmith_index_u32(u_input.b, 10u)])) * _wgslsmith_f_op_f32(-var_1.e))));
    return Struct_1(var_3.c.a, -23898i, 2147483647i ^ _wgslsmith_add_i32(52116i, _wgslsmith_div_i32(u_input.a, -7728i) | ~1i), _wgslsmith_f_op_vec4_f32(var_1.d + global1[_wgslsmith_index_u32(~(~1u) & ~(~var_0.x), 23u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.d.x * var_1.d.x), var_1.e));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec4<u32>, arg_3: Struct_1) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(func_1(), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(354f + arg_0.a.d.x), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(48937u, 10u)]))), select(arg_2.x, 4294967295u, arg_1) >> (~4294967295u % 32u), func_1()), abs(arg_2.xw), all(vec2<bool>(global3.a, arg_0.d.a.x)))) * global2[_wgslsmith_index_u32(46538u, 10u)]);
    global3 = Struct_3(!arg_3.a.x);
    let var_1 = Struct_3(false);
    var var_2 = _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(4294967295u, 10u)]));
    let var_3 = select(true, (_wgslsmith_add_i32(-8706i, arg_0.a.c ^ arg_3.b) | (firstLeadingBit(arg_3.c) & _wgslsmith_mod_i32(arg_3.c, arg_3.c))) <= _wgslsmith_mult_i32(~(-21699i), arg_0.d.c), var_1.a | select(4294967295u == u_input.b, any(func_1().a), false));
    return StorageBuffer(arg_3.b, _wgslsmith_f_op_vec2_f32(select(arg_3.d.yz, func_1().d.yw, global3.a & var_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_3(global3.a);
    global2 = array<f32, 10>();
    let var_0 = 885f;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2300f), _wgslsmith_f_op_f32(floor(1373f)));
    global2 = array<f32, 10>();
    global1 = array<vec4<f32>, 23>();
    let x = u_input.a;
    s_output = func_4(Struct_2(func_1(), _wgslsmith_div_f32(1605f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec3<bool>(global3.a, global3.a, global3.a), u_input.a, 6192i, vec4<f32>(-1091f, var_1.x, var_1.x, global2[_wgslsmith_index_u32(u_input.b, 10u)]), -1000f), -2124f, 1u, Struct_1(vec3<bool>(global3.a, false, global3.a), u_input.a, -9010i, global1[_wgslsmith_index_u32(0u, 23u)], -497f)), vec2<u32>(u_input.b, 54591u), global3.a)) * var_0)), _wgslsmith_add_u32(~27845u, _wgslsmith_dot_vec3_u32(~vec3<u32>(49131u, u_input.b, 8563u), vec3<u32>(0u, u_input.b, 31943u) >> (vec3<u32>(3171u, 60305u, u_input.b) % vec3<u32>(32u)))), func_1()), false, firstTrailingBit(_wgslsmith_sub_vec4_u32(min(_wgslsmith_add_vec4_u32(vec4<u32>(5156u, 0u, 15829u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, 0u)), firstTrailingBit(vec4<u32>(u_input.b, 13162u, u_input.b, u_input.b))), ~select(vec4<u32>(u_input.b, 79454u, 4294967295u, u_input.b), vec4<u32>(1u, 1u, u_input.b, u_input.b), global3.a))), func_1());
}

