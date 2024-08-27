struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
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

var<private> global0: Struct_1 = Struct_1(-60618i, vec3<u32>(0u, 56295u, 1u), 4294967295u, 12371u, vec2<i32>(14686i, 2147483647i));

var<private> global1: f32 = 1122f;

var<private> global2: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(-155f, vec4<i32>(0i, -3370i, 2147483647i, -1i), Struct_1(2147483647i, vec3<u32>(4294967295u, 4294967295u, 0u), 25051u, 58322u, vec2<i32>(22009i, 2423i))), Struct_2(-1000f, vec4<i32>(i32(-2147483648), 1i, 22791i, 2147483647i), Struct_1(-1i, vec3<u32>(4294967295u, 4294967295u, 38113u), 1u, 1u, vec2<i32>(-22173i, -10136i))), Struct_2(853f, vec4<i32>(37391i, 2147483647i, 21674i, 17218i), Struct_1(-7582i, vec3<u32>(7394u, 1u, 106836u), 1u, 0u, vec2<i32>(-1i, 5964i))), Struct_2(-1000f, vec4<i32>(-1i, 1i, 16832i, 0i), Struct_1(1i, vec3<u32>(44178u, 93849u, 24675u), 56206u, 4294967295u, vec2<i32>(-18414i, 1i))), Struct_2(422f, vec4<i32>(1i, -1i, 38122i, 2147483647i), Struct_1(0i, vec3<u32>(4294967295u, 1u, 59331u), 65700u, 28962u, vec2<i32>(-60536i, 2147483647i))), Struct_2(252f, vec4<i32>(i32(-2147483648), 6524i, 10781i, i32(-2147483648)), Struct_1(17022i, vec3<u32>(26591u, 0u, 15896u), 4464u, 4294967295u, vec2<i32>(13811i, 744i))), Struct_2(-684f, vec4<i32>(68424i, 90191i, -27407i, 2147483647i), Struct_1(i32(-2147483648), vec3<u32>(0u, 0u, 4294967295u), 1u, 1u, vec2<i32>(-1i, -1i))), Struct_2(-782f, vec4<i32>(-8486i, 12011i, i32(-2147483648), 13969i), Struct_1(0i, vec3<u32>(4294967295u, 25980u, 0u), 2736u, 47505u, vec2<i32>(-18476i, 19780i))), Struct_2(652f, vec4<i32>(0i, i32(-2147483648), 1i, 29687i), Struct_1(39641i, vec3<u32>(3925u, 1u, 28545u), 38916u, 85158u, vec2<i32>(-1i, -17175i))), Struct_2(526f, vec4<i32>(-9291i, 1i, 382i, 48361i), Struct_1(6999i, vec3<u32>(16468u, 33655u, 4294967295u), 15673u, 135683u, vec2<i32>(-20240i, 1i))), Struct_2(-1255f, vec4<i32>(-63574i, 1i, 40212i, 0i), Struct_1(-1i, vec3<u32>(4294967295u, 1u, 0u), 0u, 6603u, vec2<i32>(-23059i, -6835i))), Struct_2(184f, vec4<i32>(47545i, 6177i, 1i, 8122i), Struct_1(1i, vec3<u32>(0u, 3011u, 59572u), 1u, 0u, vec2<i32>(1i, -1i))), Struct_2(-691f, vec4<i32>(-71765i, 0i, 1i, 1i), Struct_1(1i, vec3<u32>(0u, 38347u, 0u), 7660u, 50941u, vec2<i32>(2147483647i, -1i))), Struct_2(1000f, vec4<i32>(-38598i, i32(-2147483648), -16540i, -9023i), Struct_1(2147483647i, vec3<u32>(13571u, 17332u, 4294967295u), 55299u, 22332u, vec2<i32>(35119i, 42283i))), Struct_2(-294f, vec4<i32>(9833i, -7675i, 2147483647i, -1i), Struct_1(1i, vec3<u32>(0u, 1u, 16670u), 25709u, 1u, vec2<i32>(-1i, -1i))), Struct_2(-1000f, vec4<i32>(-43674i, i32(-2147483648), 2147483647i, 1i), Struct_1(-49381i, vec3<u32>(4294967295u, 523u, 1u), 0u, 29627u, vec2<i32>(14541i, -57711i))), Struct_2(1013f, vec4<i32>(-428i, -39248i, 29562i, 0i), Struct_1(1i, vec3<u32>(1u, 0u, 1u), 10369u, 0u, vec2<i32>(36128i, 30352i))), Struct_2(520f, vec4<i32>(1i, -43354i, 2147483647i, 0i), Struct_1(0i, vec3<u32>(0u, 22431u, 4294967295u), 111u, 1u, vec2<i32>(15341i, 21965i))), Struct_2(-1051f, vec4<i32>(-23474i, 30604i, -1i, 17631i), Struct_1(-1i, vec3<u32>(5988u, 0u, 7147u), 1u, 67960u, vec2<i32>(-72629i, -27150i))), Struct_2(-1343f, vec4<i32>(-10642i, -49965i, 1i, 20483i), Struct_1(-23147i, vec3<u32>(1u, 20693u, 43581u), 4294967295u, 10588u, vec2<i32>(4336i, 2147483647i))), Struct_2(-1634f, vec4<i32>(5746i, -86237i, i32(-2147483648), -21069i), Struct_1(38556i, vec3<u32>(9213u, 1u, 32157u), 0u, 29945u, vec2<i32>(i32(-2147483648), i32(-2147483648)))), Struct_2(1403f, vec4<i32>(i32(-2147483648), -18519i, 10880i, 0i), Struct_1(-15708i, vec3<u32>(47889u, 14173u, 31905u), 1u, 0u, vec2<i32>(i32(-2147483648), 0i))), Struct_2(471f, vec4<i32>(i32(-2147483648), 2147483647i, 2244i, 6846i), Struct_1(-8622i, vec3<u32>(7496u, 1u, 4413u), 4294967295u, 0u, vec2<i32>(20855i, 19230i))));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_3) -> vec3<f32> {
    global0 = Struct_1(~1i, select(global0.b, vec3<u32>(_wgslsmith_sub_u32(1u, ~arg_0.b), ~global0.b.x & _wgslsmith_add_u32(arg_0.b, 13468u), global0.b.x), any(!arg_0.a.xz) && (arg_0.a.x & select(arg_0.a.x, false, true))), ~(_wgslsmith_add_u32(0u >> (0u % 32u), _wgslsmith_mult_u32(35436u, arg_0.b)) ^ _wgslsmith_sub_u32(~u_input.b.x, arg_0.b)), u_input.b.x, vec2<i32>(global0.e.x, _wgslsmith_div_i32(global0.e.x, u_input.a.x)));
    global2 = array<Struct_2, 23>();
    var var_0 = arg_0;
    var var_1 = arg_0;
    global1 = 308f;
    return vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(2628f, _wgslsmith_div_f32(_wgslsmith_div_f32(2739f, 867f), 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1f, 119f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(547f + -1000f), _wgslsmith_div_f32(-1000f, 292f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-210f + 1642f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-794f * -399f), _wgslsmith_f_op_f32(min(-267f, -1782f)))))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -397f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1375f));
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: vec2<f32>) -> Struct_3 {
    global1 = _wgslsmith_f_op_f32(-arg_2.x);
    let var_0 = arg_0.a.x;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1192f)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(arg_0)));
    var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_1.x, arg_2.x), -884f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1573f)) - _wgslsmith_div_f32(var_1.x, var_1.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(106f, _wgslsmith_f_op_f32(var_1.x + 306f), 165f)))));
    return arg_0;
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec3<i32>, arg_3: u32) -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_div_i32(abs(min(_wgslsmith_add_i32(-38714i, arg_2.x), -1950i)), -43624i), select(vec3<u32>(_wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(global0.d, 31623u, arg_3)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 19402u, global0.c, global0.b.x), vec4<u32>(24341u, 0u, 16583u, arg_0.b)), _wgslsmith_dot_vec3_u32(~global0.b, select(u_input.c, vec3<u32>(arg_0.b, 45449u, arg_3), arg_0.a.x))), ~vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x ^ 126936u), vec3<bool>(arg_0.a.x, true, !arg_0.a.x)), _wgslsmith_dot_vec2_u32(global0.b.yz, firstTrailingBit(u_input.b.ww)), arg_3, global0.e);
    global0 = Struct_1(abs(_wgslsmith_clamp_i32(u_input.d, var_0.a, 40177i)) ^ -52345i, _wgslsmith_mult_vec3_u32(select(u_input.c, max(countOneBits(vec3<u32>(13637u, 0u, 1u)), vec3<u32>(u_input.b.x, 19475u, global0.d)), all(vec2<bool>(arg_0.a.x, arg_0.a.x))), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u & global0.d, arg_0.b), vec3<u32>(abs(arg_0.b), arg_0.b, 0u))), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3, ~min(23165u, arg_0.b)), ~global0.b.xy), ~var_0.c, abs(select(-vec2<i32>(arg_1, 48774i) << ((global0.b.yy >> (vec2<u32>(var_0.c, 33095u) % vec2<u32>(32u))) % vec2<u32>(32u)), var_0.e, vec2<bool>(true, any(vec4<bool>(arg_0.a.x, false, false, arg_0.a.x))))));
    let var_1 = reverseBits(reverseBits(arg_2.x));
    global2 = array<Struct_2, 23>();
    let var_2 = Struct_1(i32(-1i) * -1i, vec3<u32>(~0u, ~6155u, min(~74084u, ~arg_0.b)), 45977u, 1u, ~countOneBits(~vec2<i32>(var_0.e.x, -1i)));
    return func_2(Struct_3(vec3<bool>(arg_0.a.x, true, !any(arg_0.a.yy)), ~arg_3), abs(~1i), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(691f, -1181f) * vec2<f32>(-1210f, 2032f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1561f, 1000f)))))))));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: Struct_3) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_f_op_f32(arg_2.x + arg_2.x)), countOneBits(~(_wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(0i, global0.a, -11391i, global0.a)) >> (vec4<u32>(u_input.c.x, arg_3.b, 32627u, 4294967295u) % vec4<u32>(32u)))), Struct_1(i32(-1i) * -u_input.a.x, ~abs(select(arg_0, vec3<u32>(global0.b.x, global0.c, arg_0.x), arg_3.a.x)), u_input.b.x, abs(arg_1.b), u_input.a.zz));
    global2 = array<Struct_2, 23>();
    var var_1 = true;
    var var_2 = global2[_wgslsmith_index_u32(1779u, 23u)];
    var var_3 = vec4<i32>(23734i, global0.e.x >> (arg_0.x % 32u), var_0.b.x, firstTrailingBit(-var_0.c.a));
    return Struct_1(var_3.x, min(vec3<u32>(~var_2.c.c, 59079u, _wgslsmith_div_u32(56300u, var_0.c.c)), vec3<u32>(~u_input.b.x, _wgslsmith_clamp_u32(66957u, arg_0.x, 0u), arg_3.b)) << (arg_0 % vec3<u32>(32u)), var_2.c.c, ~46055u, _wgslsmith_div_vec2_i32(countOneBits(-vec2<i32>(u_input.a.x, var_3.x)), u_input.a.yw));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: u32) -> i32 {
    var var_0 = u_input.a;
    global0 = func_5(~arg_1, func_4(func_2(Struct_3(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), global0.b.x), -2147483647i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1001f, -2099f) + vec2<f32>(-1000f, -783f)) * vec2<f32>(-2508f, 126f))), var_0.x, vec3<i32>(~var_0.x, _wgslsmith_mod_i32(~u_input.a.x, u_input.d), _wgslsmith_dot_vec2_i32(~global0.e, var_0.yw << (arg_1.xx % vec2<u32>(32u)))), global0.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1182f, -547f) + vec2<f32>(-186f, 602f))), vec2<f32>(1f, 1f))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(420f, -241f)))))), Struct_3(vec3<bool>(all(vec2<bool>(true, true)), true, false), u_input.c.x));
    let var_1 = func_2(Struct_3(func_4(Struct_3(vec3<bool>(true, true, true), _wgslsmith_mod_u32(48677u, arg_1.x)), firstLeadingBit(var_0.x), countOneBits(u_input.a.yxx & vec3<i32>(-1i, -1i, 19392i)), global0.b.x).a, ~firstTrailingBit(~arg_1.x)), -482i, vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1395f, 1000f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(939f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -144f)))))).a.x;
    let var_2 = ~(~min(_wgslsmith_div_vec2_i32(vec2<i32>(5647i, -1i), vec2<i32>(u_input.a.x, var_0.x)), u_input.a.wy));
    global1 = _wgslsmith_f_op_vec3_f32(func_3(func_4(Struct_3(vec3<bool>(true, true, true), 18389u), global0.a, vec3<i32>(-44255i, var_0.x, ~max(2147483647i, -2147483647i)), ~_wgslsmith_clamp_u32(93410u, arg_1.x << (arg_2 % 32u), max(1u, u_input.b.x))))).x;
    return _wgslsmith_mult_i32(var_2.x, 52813i) | select(global0.a, abs(u_input.a.x), func_4(Struct_3(!vec3<bool>(var_1, false, var_1), 16274u), 8544i, vec3<i32>(~var_2.x, 1i, u_input.d), global0.d).a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(round(-788f));
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_1 = min(~_wgslsmith_mod_i32(-_wgslsmith_mult_i32(u_input.d, u_input.d), 58891i), ~(1i | _wgslsmith_clamp_i32(_wgslsmith_mod_i32(global0.a, -29879i), -2147483647i, -38168i)));
    var var_2 = vec3<u32>(16257u << (firstTrailingBit(24893u) % 32u), 4294967295u, global0.c);
    global0 = Struct_1(func_1(-31953i, vec3<u32>(~(~1u), firstTrailingBit(abs(4294967295u)), ~(~u_input.b.x)), var_2.x), u_input.c, ~(~1u), global0.d, _wgslsmith_mod_vec2_i32(vec2<i32>(var_1, _wgslsmith_div_i32(26615i, global0.a)), select(u_input.a.yx, vec2<i32>(var_1, global0.e.x), select(vec2<bool>(false, true), vec2<bool>(false, true), false))) | _wgslsmith_clamp_vec2_i32(vec2<i32>(~2147483647i, i32(-1i) * -1i), u_input.a.xz, u_input.a.zy));
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0)), var_0);
    var_2 = vec3<u32>(var_2.x, 20976u, u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(-48422i, u_input.d, global0.a), min(-1i, var_1)), _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(27366i, 26743i, u_input.d, u_input.d)), ~global0.e.x), vec2<i32>(global0.a ^ global0.a, u_input.a.x))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -209f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0)))), _wgslsmith_f_op_f32(-var_0)));
}

