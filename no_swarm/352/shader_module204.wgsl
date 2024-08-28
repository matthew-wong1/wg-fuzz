struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_4) -> Struct_4 {
    var var_0 = !(!(!(!(!vec4<bool>(arg_2.b.a.x, true, false, arg_2.b.a.x)))));
    var_0 = !vec4<bool>(!(arg_2.c.b.b != -arg_1.b), false, ~abs(arg_2.c.b.a.x) < ~countOneBits(-1i), !arg_2.b.a.x);
    var_0 = vec4<bool>(true, _wgslsmith_f_op_f32(-254f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.c.b.d.x)))) != _wgslsmith_f_op_f32(abs(arg_1.d.x)), !(firstTrailingBit(u_input.a.x) <= min(u_input.d, _wgslsmith_mod_i32(14883i, 8979i))), select(false, true, var_0.x));
    let var_1 = arg_2.a;
    var_0 = select(select(vec4<bool>(_wgslsmith_f_op_f32(arg_2.c.b.d.x - var_1.b.d.x) != -2135f, true, true, true), vec4<bool>(arg_2.b.a.x, !(!var_0.x), !arg_2.b.a.x, false), select(vec4<bool>(false || arg_2.b.a.x, !arg_2.b.a.x, any(vec2<bool>(var_0.x, var_0.x)), true | arg_2.b.a.x), vec4<bool>(true, arg_2.b.a.x, false, true), vec4<bool>(true, arg_2.b.a.x, any(vec4<bool>(arg_2.b.a.x, false, arg_2.b.a.x, var_0.x)), true))), select(vec4<bool>((-214f <= var_1.c.x) & all(vec4<bool>(false, var_0.x, var_0.x, false)), !select(arg_2.b.a.x, true, true), true && select(true, arg_2.b.a.x, arg_2.b.a.x), all(var_0.wx)), !select(!vec4<bool>(false, false, false, arg_2.b.a.x), select(vec4<bool>(true, var_0.x, arg_2.b.a.x, var_0.x), vec4<bool>(var_0.x, false, arg_2.b.a.x, false), true), true), arg_2.b.a.x), !(!select(vec4<bool>(true, true, var_0.x, true), vec4<bool>(true, arg_2.b.a.x, true, true), vec4<bool>(false, true, true, false))));
    return arg_2;
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: vec3<u32>) -> vec2<bool> {
    let var_0 = arg_2.x;
    let var_1 = arg_0.a.b;
    var var_2 = ~arg_0.a.b.e;
    var var_3 = ~(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(countOneBits(arg_0.b.c.yxw), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_2.x, 45487u, var_0), vec3<u32>(u_input.c, arg_0.c.b.c, var_1.c))), 55714u));
    var_2 = var_0;
    return select(!select(arg_0.b.a, vec2<bool>(arg_1, arg_0.b.a.x), !(!arg_0.b.a)), arg_0.b.a, arg_0.b.a.x);
}

fn func_1() -> Struct_4 {
    var var_0 = select(select(vec2<bool>(u_input.b.x > 0u, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))), any(vec3<bool>(true, true, false))), select(!vec2<bool>(false, all(vec2<bool>(false, false))), vec2<bool>(!(u_input.b.x < u_input.c), true), all(vec2<bool>(false, any(vec4<bool>(false, true, true, true))))), select(select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, false), any(vec4<bool>(false, true, true, false))), true), !func_3(func_2(vec2<u32>(1u, u_input.c), Struct_1(vec4<i32>(u_input.d, -7752i, 1i, u_input.d), -2147483647i, 4294967295u, vec2<f32>(2282f, 881f), u_input.b.x), Struct_4(Struct_3(29421i, Struct_1(vec4<i32>(-41705i, -2147483647i, u_input.d, u_input.a.x), -5058i, 45883u, vec2<f32>(469f, 1430f), 86021u), vec3<f32>(-786f, 1134f, 370f)), Struct_2(vec2<bool>(false, true), Struct_1(vec4<i32>(-2147483647i, u_input.a.x, -41301i, u_input.a.x), u_input.d, 0u, vec2<f32>(374f, -1000f), 3603u), vec4<u32>(u_input.c, 52838u, u_input.c, u_input.b.x), Struct_1(vec4<i32>(-1i, u_input.a.x, u_input.d, u_input.d), 2147483647i, u_input.b.x, vec2<f32>(995f, -343f), 110502u), Struct_1(vec4<i32>(u_input.d, -52249i, 0i, u_input.a.x), 0i, 42124u, vec2<f32>(-1259f, 476f), 0u)), Struct_3(0i, Struct_1(vec4<i32>(u_input.d, u_input.a.x, u_input.a.x, -3819i), -10843i, u_input.b.x, vec2<f32>(-1191f, 1000f), u_input.c), vec3<f32>(-1109f, 1389f, -708f)))), select(true, true, false), vec3<u32>(u_input.c, u_input.b.x, u_input.c)), false));
    let var_1 = u_input.a;
    return Struct_4(func_2(u_input.b.zx, Struct_1(vec4<i32>(u_input.d, -5179i, 31909i << (1u % 32u), -26120i), 1i, 42711u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1234f, 135f)))), 33437u), Struct_4(func_2(~u_input.b.xy, func_2(u_input.b.yy, Struct_1(vec4<i32>(17500i, var_1.x, 0i, var_1.x), var_1.x, 70084u, vec2<f32>(1650f, 858f), u_input.c), Struct_4(Struct_3(60787i, Struct_1(vec4<i32>(0i, var_1.x, u_input.d, var_1.x), u_input.d, u_input.c, vec2<f32>(-551f, 1883f), u_input.b.x), vec3<f32>(438f, 479f, 196f)), Struct_2(vec2<bool>(var_0.x, var_0.x), Struct_1(vec4<i32>(u_input.a.x, u_input.d, var_1.x, 5664i), 24406i, 12810u, vec2<f32>(-279f, -1040f), 77610u), vec4<u32>(29092u, u_input.b.x, 7905u, u_input.c), Struct_1(vec4<i32>(u_input.d, u_input.a.x, u_input.a.x, var_1.x), -33769i, 4294967295u, vec2<f32>(699f, 1555f), u_input.c), Struct_1(vec4<i32>(13630i, u_input.a.x, -64199i, 0i), 0i, u_input.c, vec2<f32>(519f, 1461f), 3605u)), Struct_3(60013i, Struct_1(vec4<i32>(-1i, u_input.d, -59137i, 17512i), var_1.x, u_input.c, vec2<f32>(-121f, -1813f), 0u), vec3<f32>(-390f, 580f, 535f)))).a.b, Struct_4(Struct_3(-27717i, Struct_1(vec4<i32>(-57027i, 1i, var_1.x, -2147483647i), u_input.a.x, 4294967295u, vec2<f32>(-216f, -225f), 4294967295u), vec3<f32>(-1430f, -417f, -1000f)), Struct_2(vec2<bool>(var_0.x, var_0.x), Struct_1(vec4<i32>(u_input.a.x, -1i, var_1.x, var_1.x), 0i, 13583u, vec2<f32>(845f, 339f), u_input.b.x), vec4<u32>(59535u, 4294967295u, u_input.b.x, u_input.c), Struct_1(vec4<i32>(-2147483647i, -39193i, var_1.x, var_1.x), -59981i, u_input.b.x, vec2<f32>(1000f, 1547f), 68846u), Struct_1(vec4<i32>(u_input.d, 46559i, 2968i, u_input.d), u_input.a.x, u_input.b.x, vec2<f32>(-798f, 1002f), 15421u)), Struct_3(-32383i, Struct_1(vec4<i32>(var_1.x, 44685i, 0i, u_input.a.x), 51038i, 43117u, vec2<f32>(1015f, -558f), u_input.b.x), vec3<f32>(-492f, -1000f, 412f)))).c, func_2(~vec2<u32>(4212u, 56472u), func_2(vec2<u32>(u_input.c, u_input.c), Struct_1(vec4<i32>(72810i, -66646i, u_input.a.x, -9396i), 39928i, u_input.b.x, vec2<f32>(-1187f, 450f), u_input.b.x), Struct_4(Struct_3(0i, Struct_1(vec4<i32>(var_1.x, u_input.a.x, -1i, var_1.x), u_input.d, 31230u, vec2<f32>(556f, -434f), u_input.c), vec3<f32>(473f, 117f, 101f)), Struct_2(vec2<bool>(false, var_0.x), Struct_1(vec4<i32>(1i, 20061i, -9702i, 26190i), u_input.a.x, u_input.b.x, vec2<f32>(217f, 253f), 0u), vec4<u32>(u_input.c, u_input.b.x, u_input.c, u_input.b.x), Struct_1(vec4<i32>(var_1.x, var_1.x, -50017i, u_input.a.x), 15849i, 0u, vec2<f32>(-384f, 1060f), u_input.c), Struct_1(vec4<i32>(-1i, var_1.x, 19388i, 1i), 1i, u_input.c, vec2<f32>(843f, -1078f), 0u)), Struct_3(0i, Struct_1(vec4<i32>(var_1.x, -2147483647i, u_input.a.x, var_1.x), var_1.x, 0u, vec2<f32>(-675f, -1000f), 23362u), vec3<f32>(-780f, 1000f, -1000f)))).b.d, func_2(u_input.b.xy, Struct_1(vec4<i32>(u_input.d, u_input.a.x, -5663i, var_1.x), 760i, 18190u, vec2<f32>(-440f, 930f), 21341u), Struct_4(Struct_3(u_input.a.x, Struct_1(vec4<i32>(22524i, var_1.x, -29161i, var_1.x), 2147483647i, u_input.b.x, vec2<f32>(443f, 1237f), u_input.c), vec3<f32>(-2554f, -587f, 353f)), Struct_2(vec2<bool>(var_0.x, var_0.x), Struct_1(vec4<i32>(0i, 2147483647i, 2147483647i, 0i), u_input.a.x, u_input.b.x, vec2<f32>(-241f, 604f), u_input.b.x), vec4<u32>(u_input.b.x, 3467u, u_input.c, u_input.c), Struct_1(vec4<i32>(54629i, var_1.x, var_1.x, -74001i), var_1.x, 20326u, vec2<f32>(-272f, -2861f), 4294967295u), Struct_1(vec4<i32>(var_1.x, u_input.a.x, 1i, var_1.x), var_1.x, u_input.c, vec2<f32>(-782f, -1304f), u_input.b.x)), Struct_3(-2147483647i, Struct_1(vec4<i32>(var_1.x, 84801i, 1i, var_1.x), var_1.x, u_input.c, vec2<f32>(-1723f, 1394f), 10383u), vec3<f32>(-139f, -475f, 1543f))))).b, Struct_3(~0i, func_2(vec2<u32>(u_input.b.x, 72141u), Struct_1(vec4<i32>(u_input.d, u_input.d, var_1.x, u_input.d), 2147483647i, u_input.c, vec2<f32>(-2145f, -343f), u_input.b.x), Struct_4(Struct_3(2147483647i, Struct_1(vec4<i32>(var_1.x, 1i, u_input.a.x, 0i), 5776i, u_input.c, vec2<f32>(827f, 434f), 1u), vec3<f32>(-2009f, -359f, -1003f)), Struct_2(vec2<bool>(var_0.x, var_0.x), Struct_1(vec4<i32>(u_input.d, u_input.d, var_1.x, 48639i), -2147483647i, 43840u, vec2<f32>(-966f, -1000f), 10045u), vec4<u32>(u_input.c, u_input.c, 12673u, u_input.b.x), Struct_1(vec4<i32>(-1i, var_1.x, u_input.d, var_1.x), -1i, u_input.b.x, vec2<f32>(1000f, -1233f), u_input.b.x), Struct_1(vec4<i32>(-1i, u_input.d, 2147483647i, -1i), u_input.a.x, 4294967295u, vec2<f32>(1375f, 252f), 73204u)), Struct_3(u_input.a.x, Struct_1(vec4<i32>(-1i, -4957i, 5902i, 19569i), -2147483647i, u_input.b.x, vec2<f32>(-228f, 736f), 1u), vec3<f32>(692f, 609f, 505f)))).a.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(-185f, -1000f, 987f) * vec3<f32>(-1031f, -178f, -378f))))).c, func_2(~(~select(vec2<u32>(u_input.c, u_input.b.x), u_input.b.zy, true)), func_2(reverseBits(u_input.b.xz >> (u_input.b.xz % vec2<u32>(32u))), func_2(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(1u, u_input.b.x)), func_2(u_input.b.yy, Struct_1(vec4<i32>(u_input.d, var_1.x, -37068i, -25988i), var_1.x, u_input.b.x, vec2<f32>(-429f, 773f), 1u), Struct_4(Struct_3(37324i, Struct_1(vec4<i32>(var_1.x, var_1.x, 1i, 42909i), -2147483647i, u_input.c, vec2<f32>(1856f, 619f), 1u), vec3<f32>(566f, 554f, 681f)), Struct_2(vec2<bool>(false, var_0.x), Struct_1(vec4<i32>(-21377i, 14628i, -466i, u_input.a.x), 0i, u_input.b.x, vec2<f32>(-1292f, 1926f), u_input.b.x), vec4<u32>(80201u, u_input.b.x, u_input.c, u_input.b.x), Struct_1(vec4<i32>(-2147483647i, -16061i, -1i, var_1.x), 6541i, 4294967295u, vec2<f32>(817f, -1059f), u_input.c), Struct_1(vec4<i32>(var_1.x, u_input.a.x, u_input.d, u_input.d), var_1.x, u_input.c, vec2<f32>(-146f, 961f), u_input.b.x)), Struct_3(var_1.x, Struct_1(vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.d), 2147483647i, u_input.b.x, vec2<f32>(-1485f, -906f), u_input.c), vec3<f32>(-1202f, -234f, 836f)))).a.b, Struct_4(Struct_3(-33475i, Struct_1(vec4<i32>(u_input.a.x, -2147483647i, 1609i, var_1.x), 34827i, u_input.c, vec2<f32>(-175f, -495f), u_input.b.x), vec3<f32>(-387f, 265f, 1060f)), Struct_2(vec2<bool>(var_0.x, true), Struct_1(vec4<i32>(var_1.x, -1i, -1i, var_1.x), var_1.x, u_input.b.x, vec2<f32>(967f, -395f), u_input.c), vec4<u32>(u_input.c, 0u, u_input.c, u_input.b.x), Struct_1(vec4<i32>(-16801i, -2973i, var_1.x, 2147483647i), u_input.d, u_input.c, vec2<f32>(488f, -606f), u_input.c), Struct_1(vec4<i32>(3964i, var_1.x, 7112i, u_input.a.x), 35143i, 1u, vec2<f32>(1000f, -630f), u_input.c)), Struct_3(1i, Struct_1(vec4<i32>(u_input.a.x, var_1.x, -74054i, var_1.x), 1i, u_input.c, vec2<f32>(1355f, -143f), 22063u), vec3<f32>(805f, 714f, 916f)))).c.b, Struct_4(func_2(vec2<u32>(4294967295u, u_input.b.x), Struct_1(vec4<i32>(u_input.d, u_input.d, -2147483647i, u_input.d), u_input.a.x, u_input.c, vec2<f32>(-909f, 138f), 4294967295u), Struct_4(Struct_3(0i, Struct_1(vec4<i32>(-1i, -3558i, var_1.x, 63647i), var_1.x, 1u, vec2<f32>(437f, -210f), u_input.b.x), vec3<f32>(-132f, -367f, -316f)), Struct_2(vec2<bool>(var_0.x, false), Struct_1(vec4<i32>(var_1.x, u_input.d, 26190i, -551i), var_1.x, 4294967295u, vec2<f32>(701f, 1855f), 10543u), vec4<u32>(4294967295u, 0u, u_input.b.x, u_input.c), Struct_1(vec4<i32>(-385i, var_1.x, -1i, u_input.a.x), var_1.x, u_input.c, vec2<f32>(913f, 1424f), u_input.b.x), Struct_1(vec4<i32>(-1i, -28582i, u_input.a.x, var_1.x), u_input.a.x, u_input.b.x, vec2<f32>(2251f, 331f), 1u)), Struct_3(-12947i, Struct_1(vec4<i32>(1i, -19550i, 12981i, var_1.x), 0i, 83811u, vec2<f32>(-132f, 1774f), u_input.c), vec3<f32>(-1385f, 1005f, -637f)))).c, func_2(vec2<u32>(u_input.c, u_input.c), Struct_1(vec4<i32>(-14713i, u_input.d, 1i, var_1.x), var_1.x, 4294967295u, vec2<f32>(-1135f, -1058f), u_input.c), Struct_4(Struct_3(-1i, Struct_1(vec4<i32>(-2147483647i, u_input.a.x, -17628i, var_1.x), -2147483647i, 0u, vec2<f32>(584f, -1000f), 0u), vec3<f32>(935f, -1177f, 1697f)), Struct_2(vec2<bool>(var_0.x, var_0.x), Struct_1(vec4<i32>(-1i, 40964i, var_1.x, u_input.a.x), -24277i, 1u, vec2<f32>(929f, 223f), u_input.b.x), vec4<u32>(u_input.c, u_input.b.x, 41599u, 20162u), Struct_1(vec4<i32>(var_1.x, u_input.a.x, var_1.x, u_input.a.x), 0i, u_input.c, vec2<f32>(-1810f, -760f), 0u), Struct_1(vec4<i32>(var_1.x, u_input.d, -1i, var_1.x), var_1.x, u_input.b.x, vec2<f32>(611f, -862f), 0u)), Struct_3(var_1.x, Struct_1(vec4<i32>(u_input.d, -45760i, 1i, 18368i), 0i, 39305u, vec2<f32>(-1043f, -234f), u_input.c), vec3<f32>(1999f, -997f, -462f)))).b, Struct_3(-20496i, Struct_1(vec4<i32>(var_1.x, u_input.d, var_1.x, u_input.a.x), 5156i, u_input.b.x, vec2<f32>(1411f, 2308f), 44379u), vec3<f32>(-574f, 443f, 1607f)))).c.b, Struct_4(Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.a.x, -2147483647i, 17001i), vec4<i32>(u_input.d, 1i, -41838i, u_input.a.x)), func_2(u_input.b.zx, Struct_1(vec4<i32>(-1i, 1i, u_input.d, var_1.x), u_input.a.x, u_input.c, vec2<f32>(-1090f, -633f), 4294967295u), Struct_4(Struct_3(-7344i, Struct_1(vec4<i32>(u_input.a.x, -2147483647i, u_input.d, u_input.a.x), 1i, 6033u, vec2<f32>(655f, -560f), 5154u), vec3<f32>(1444f, -2088f, 678f)), Struct_2(vec2<bool>(var_0.x, var_0.x), Struct_1(vec4<i32>(u_input.a.x, u_input.d, 3547i, var_1.x), -39155i, u_input.b.x, vec2<f32>(1842f, -1229f), 0u), vec4<u32>(79452u, u_input.c, u_input.c, 4294967295u), Struct_1(vec4<i32>(u_input.a.x, -42507i, var_1.x, var_1.x), 2147483647i, u_input.c, vec2<f32>(-405f, -136f), u_input.b.x), Struct_1(vec4<i32>(var_1.x, -63962i, 2147483647i, 34255i), u_input.d, u_input.b.x, vec2<f32>(-2092f, -2133f), u_input.b.x)), Struct_3(13617i, Struct_1(vec4<i32>(2147483647i, 0i, -2147483647i, u_input.a.x), -20058i, u_input.c, vec2<f32>(241f, -1000f), u_input.c), vec3<f32>(382f, -1509f, -1284f)))).b.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1094f, -220f) - vec3<f32>(-665f, 501f, 1124f))), func_2(u_input.b.xx, Struct_1(vec4<i32>(-11311i, 0i, var_1.x, -42077i), var_1.x, u_input.b.x, vec2<f32>(339f, 1110f), u_input.b.x), func_2(u_input.b.yx, Struct_1(vec4<i32>(u_input.d, -18803i, 1i, var_1.x), 75451i, u_input.b.x, vec2<f32>(500f, 107f), 69041u), Struct_4(Struct_3(-2147483647i, Struct_1(vec4<i32>(u_input.a.x, u_input.d, var_1.x, -2147483647i), var_1.x, 34702u, vec2<f32>(-800f, 786f), 1u), vec3<f32>(-371f, -819f, 1013f)), Struct_2(vec2<bool>(true, false), Struct_1(vec4<i32>(var_1.x, 6221i, -48323i, 8324i), 16518i, 88685u, vec2<f32>(523f, 1100f), u_input.b.x), vec4<u32>(0u, u_input.b.x, 46921u, u_input.c), Struct_1(vec4<i32>(2147483647i, 1i, var_1.x, var_1.x), u_input.a.x, 46443u, vec2<f32>(-916f, 1442f), 1u), Struct_1(vec4<i32>(-9130i, u_input.d, -43627i, 39463i), -12714i, u_input.b.x, vec2<f32>(-234f, 705f), u_input.c)), Struct_3(-2147483647i, Struct_1(vec4<i32>(var_1.x, u_input.a.x, 2147483647i, u_input.d), var_1.x, u_input.c, vec2<f32>(-994f, 1615f), u_input.b.x), vec3<f32>(172f, 845f, 1325f))))).b, func_2(reverseBits(vec2<u32>(u_input.c, u_input.c)), func_2(u_input.b.xy, Struct_1(vec4<i32>(0i, u_input.a.x, 0i, var_1.x), var_1.x, 12988u, vec2<f32>(-515f, -1224f), 57602u), Struct_4(Struct_3(var_1.x, Struct_1(vec4<i32>(u_input.a.x, u_input.d, 24339i, u_input.d), 4494i, 37947u, vec2<f32>(273f, 755f), u_input.b.x), vec3<f32>(1027f, 1057f, -270f)), Struct_2(vec2<bool>(var_0.x, var_0.x), Struct_1(vec4<i32>(var_1.x, var_1.x, -64938i, 1i), -64030i, u_input.b.x, vec2<f32>(-339f, 1571f), 1u), vec4<u32>(u_input.c, 0u, 12830u, u_input.c), Struct_1(vec4<i32>(u_input.a.x, -8911i, 0i, -28018i), 2147483647i, 15511u, vec2<f32>(-627f, 617f), 6107u), Struct_1(vec4<i32>(var_1.x, var_1.x, u_input.a.x, -63189i), u_input.a.x, 78847u, vec2<f32>(-924f, 703f), u_input.b.x)), Struct_3(var_1.x, Struct_1(vec4<i32>(u_input.d, var_1.x, 1i, -1i), u_input.a.x, u_input.b.x, vec2<f32>(-1009f, 496f), 4294967295u), vec3<f32>(-457f, -226f, 1000f)))).c.b, Struct_4(Struct_3(2147483647i, Struct_1(vec4<i32>(-1i, -8278i, u_input.d, var_1.x), -34527i, u_input.b.x, vec2<f32>(-506f, 244f), u_input.b.x), vec3<f32>(-946f, 995f, -1000f)), Struct_2(vec2<bool>(false, true), Struct_1(vec4<i32>(13783i, -2147483647i, -1i, 7305i), -1i, 93161u, vec2<f32>(565f, 601f), u_input.b.x), vec4<u32>(47819u, u_input.c, u_input.c, 119833u), Struct_1(vec4<i32>(0i, 53915i, -2147483647i, var_1.x), u_input.d, u_input.b.x, vec2<f32>(-159f, 354f), u_input.c), Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, var_1.x, u_input.d), -17316i, 14806u, vec2<f32>(421f, -1445f), 4294967295u)), Struct_3(u_input.d, Struct_1(vec4<i32>(-1i, 16210i, u_input.a.x, 1i), var_1.x, u_input.c, vec2<f32>(-381f, 894f), u_input.b.x), vec3<f32>(1571f, -774f, -611f)))).c)).b, Struct_3(~firstTrailingBit(~u_input.d), Struct_1(vec4<i32>(u_input.a.x, var_1.x, var_1.x, var_1.x) ^ vec4<i32>(0i, 2147483647i, u_input.a.x, u_input.a.x), ~(-33513i | var_1.x), u_input.b.x ^ (u_input.b.x & 1u), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-129f, 494f) - vec2<f32>(2094f, 308f)))), u_input.b.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1421f, 1009f, -118f)))))))));
}

fn func_4(arg_0: Struct_4) -> Struct_4 {
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    let var_1 = _wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(u_input.b.x, u_input.c)) ^ vec2<u32>(countOneBits(u_input.b.x << (57727u % 32u)), ~u_input.c), u_input.b.xy);
    var_0 = var_1.x;
    let var_2 = func_4(func_1());
    let var_3 = ~29573u;
    let var_4 = func_2(~_wgslsmith_add_vec2_u32(vec2<u32>(~25242u, func_2(vec2<u32>(73689u, 0u), var_2.c.b, Struct_4(Struct_3(33582i, Struct_1(var_2.b.e.a, var_2.c.b.b, 21680u, vec2<f32>(var_2.b.b.d.x, 465f), 1u), vec3<f32>(var_2.c.b.d.x, -168f, var_2.a.b.d.x)), Struct_2(vec2<bool>(false, var_2.b.a.x), Struct_1(var_2.a.b.a, 29894i, 4294967295u, vec2<f32>(1548f, var_2.c.b.d.x), 21795u), var_2.b.c, Struct_1(vec4<i32>(u_input.d, -2147483647i, u_input.d, var_2.a.a), 0i, 4294967295u, vec2<f32>(var_2.c.b.d.x, var_2.b.b.d.x), 4294967295u), var_2.c.b), var_2.a)).b.c.x), var_1), Struct_1(_wgslsmith_div_vec4_i32(-var_2.b.b.a, reverseBits(-vec4<i32>(35984i, 1i, var_2.a.a, var_2.c.a))), firstLeadingBit(u_input.d), var_1.x, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(exp2(var_2.b.b.d.x)), var_2.c.b.d.x))), ~var_3 ^ 47552u), var_2).b.b;
    var var_5 = -29939i;
    let var_6 = Struct_4(func_2(var_2.b.c.zx, Struct_1(select(vec4<i32>(u_input.a.x, var_2.b.d.a.x, -2147483647i, 23762i), var_2.c.b.a, var_2.b.a.x) & abs(vec4<i32>(-47003i, 5618i, 0i, var_2.c.a)), i32(-1i) * -u_input.d, countOneBits(u_input.c | 0u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.c.c.xz)), 1u), func_1()).a, var_2.b, var_2.a);
    var_5 = var_6.c.a ^ 1i;
    let x = u_input.a;
    s_output = StorageBuffer(var_6.a.a, _wgslsmith_mult_i32(var_2.c.b.b, 2147483647i), reverseBits((var_2.a.b.e ^ var_1.x) | ~15209u));
}

