struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 15> = array<vec4<f32>, 15>(vec4<f32>(-122f, -622f, -1635f, -803f), vec4<f32>(-1440f, -1000f, 251f, -1221f), vec4<f32>(-704f, -493f, 1000f, 1074f), vec4<f32>(-1000f, 244f, 1485f, -380f), vec4<f32>(1000f, 1401f, 775f, 953f), vec4<f32>(-1000f, 1403f, -1073f, -997f), vec4<f32>(-495f, -491f, 460f, -886f), vec4<f32>(-139f, 478f, -134f, -1455f), vec4<f32>(250f, -187f, -1000f, 704f), vec4<f32>(152f, 121f, -121f, -490f), vec4<f32>(-1255f, -1131f, 1000f, 1100f), vec4<f32>(-1534f, -1081f, -309f, 379f), vec4<f32>(-1277f, -183f, -731f, 591f), vec4<f32>(1503f, -1279f, -134f, -1203f), vec4<f32>(-372f, -283f, 2181f, 294f));

var<private> global1: array<Struct_5, 16> = array<Struct_5, 16>(Struct_5(vec2<u32>(18151u, 2399u)), Struct_5(vec2<u32>(4294967295u, 4294967295u)), Struct_5(vec2<u32>(4294967295u, 1u)), Struct_5(vec2<u32>(0u, 0u)), Struct_5(vec2<u32>(1u, 0u)), Struct_5(vec2<u32>(1u, 4500u)), Struct_5(vec2<u32>(4294967295u, 21874u)), Struct_5(vec2<u32>(31019u, 23179u)), Struct_5(vec2<u32>(1u, 4294967295u)), Struct_5(vec2<u32>(35790u, 4294967295u)), Struct_5(vec2<u32>(0u, 35178u)), Struct_5(vec2<u32>(0u, 11968u)), Struct_5(vec2<u32>(1u, 29938u)), Struct_5(vec2<u32>(1u, 0u)), Struct_5(vec2<u32>(23901u, 1u)), Struct_5(vec2<u32>(21195u, 0u)));

var<private> global2: array<vec3<f32>, 28> = array<vec3<f32>, 28>(vec3<f32>(-283f, -282f, 497f), vec3<f32>(1000f, -1000f, -1956f), vec3<f32>(358f, -258f, 246f), vec3<f32>(2412f, -1000f, 2005f), vec3<f32>(173f, -1789f, 1319f), vec3<f32>(-863f, 1079f, 584f), vec3<f32>(-454f, 1229f, 753f), vec3<f32>(398f, 2061f, 257f), vec3<f32>(2711f, -429f, 2398f), vec3<f32>(-315f, 609f, -344f), vec3<f32>(842f, 176f, -1265f), vec3<f32>(-326f, 1775f, 1581f), vec3<f32>(-1397f, 367f, 1473f), vec3<f32>(-1406f, 971f, -178f), vec3<f32>(-1000f, -812f, 407f), vec3<f32>(-1397f, 2434f, -1693f), vec3<f32>(1225f, 1207f, 325f), vec3<f32>(-1125f, -1150f, -1140f), vec3<f32>(-316f, -563f, -2352f), vec3<f32>(1035f, 1748f, 1724f), vec3<f32>(313f, -1426f, -379f), vec3<f32>(-1000f, -799f, 443f), vec3<f32>(266f, 1132f, 259f), vec3<f32>(-235f, 584f, -1750f), vec3<f32>(-485f, 549f, 164f), vec3<f32>(-2906f, 263f, 1000f), vec3<f32>(372f, 897f, 417f), vec3<f32>(1179f, -280f, 1610f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec2<f32> {
    global0 = array<vec4<f32>, 15>();
    let var_0 = vec3<bool>(true || (reverseBits(_wgslsmith_mod_i32(20462i, u_input.a.x)) >= 9690i), true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1059f, 1314f)) - -1769f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2347f * _wgslsmith_f_op_f32(f32(-1f) * -1575f))));
    let var_1 = max(-1i, -(~firstLeadingBit(firstTrailingBit(u_input.a.x))));
    global1 = array<Struct_5, 16>();
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2816f, -452f)))), Struct_1(vec2<f32>(1f, 1f)), _wgslsmith_f_op_f32(f32(-1f) * -463f), abs(select(u_input.e.yx, u_input.d.yy, !(!vec2<bool>(false, var_0.x)))));
    return _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-978f, 215f))))), _wgslsmith_div_f32(var_2.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c * -256f))))));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(func_3())), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1228f, 1000f), _wgslsmith_f_op_vec2_f32(func_3()))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(101f + -1000f)), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.d.xz, max(vec2<u32>(u_input.b, 31504u), vec2<u32>(u_input.e.x, u_input.d.x))), select(u_input.c, _wgslsmith_mod_vec2_u32(min(vec2<u32>(u_input.c.x, u_input.b), vec2<u32>(0u, u_input.e.x)), ~u_input.e.yz), vec2<bool>(true, all(vec2<bool>(true, true))))));
    let var_1 = Struct_2(max(~firstLeadingBit(vec4<u32>(30908u, 62214u, var_0.d.x, u_input.b)) | ~reverseBits(vec4<u32>(1u, u_input.d.x, 1u, 5929u)), ~(~vec4<u32>(1u, u_input.b, u_input.b, 0u))), var_0.b);
    var var_2 = Struct_3(var_0.a, var_0.a, var_0.c, select(select(~(~var_1.a.zz), _wgslsmith_div_vec2_u32(var_0.d | vec2<u32>(var_1.a.x, u_input.b), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, var_0.d.x), u_input.c)), true), var_1.a.zx | _wgslsmith_mod_vec2_u32(var_1.a.yw, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.e.x, 4294967295u), var_0.d)), ~u_input.b >= ~0u));
    let var_3 = var_2.a;
    var_2 = var_0;
    return Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_1.b.a.x), _wgslsmith_f_op_f32(-var_1.b.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.b.a, var_2.a.a) - vec2<f32>(-929f, var_3.a.x)), (var_2.b.a.x > var_3.a.x) & true))));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: Struct_3) -> Struct_4 {
    var var_0 = arg_0.a;
    var var_1 = _wgslsmith_div_vec4_u32(firstLeadingBit(~vec4<u32>(4294967295u, u_input.d.x, arg_2.d.x, u_input.d.x)), vec4<u32>(~u_input.c.x, ~(select(0u, 1u, arg_1.x) ^ u_input.d.x), arg_2.d.x, _wgslsmith_mod_u32(max(_wgslsmith_div_u32(u_input.c.x, u_input.c.x), select(115601u, arg_2.d.x, arg_1.x)), ~34430u)));
    var var_2 = Struct_4(func_2().a);
    var_2 = func_2();
    var var_3 = ~vec3<i32>(~(2147483647i | firstTrailingBit(u_input.a.x)), -_wgslsmith_add_i32(-u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(59223i, u_input.a.x), vec2<i32>(u_input.a.x, -1i))), max(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.xz, vec2<i32>(0i, 50837i)), vec2<i32>(u_input.a.x, u_input.a.x)), ~u_input.a.x));
    return Struct_4(func_2().a);
}

fn func_5(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: bool) -> vec3<i32> {
    let var_0 = Struct_5(select(countOneBits(_wgslsmith_clamp_vec2_u32(min(vec2<u32>(u_input.e.x, 1u), u_input.c), ~vec2<u32>(1u, u_input.e.x), abs(u_input.c))), _wgslsmith_sub_vec2_u32(u_input.e.yy, ~_wgslsmith_clamp_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, 27634u), u_input.c)), true));
    var var_1 = 1u;
    let var_2 = select(vec4<u32>(9766u, reverseBits(countOneBits(~u_input.d.x)), _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(u_input.e.x, 24732u >> (var_0.a.x % 32u), var_0.a.x)), u_input.b), ~vec4<u32>(var_0.a.x, _wgslsmith_div_u32(reverseBits(9052u), var_0.a.x), _wgslsmith_clamp_u32(var_0.a.x, _wgslsmith_clamp_u32(u_input.b, var_0.a.x, 3366u), u_input.c.x << (4294967295u % 32u)), var_0.a.x), vec4<bool>(max(var_0.a.x, _wgslsmith_sub_u32(1u, 1u)) <= (u_input.e.x << (0u % 32u)), firstTrailingBit(countOneBits(-1i)) < (i32(-1i) * -arg_1.x), true, true));
    global0 = array<vec4<f32>, 15>();
    var var_3 = arg_0;
    return vec3<i32>(reverseBits(1342i), abs(-(~u_input.a.x) << (var_0.a.x % 32u)), 13658i);
}

fn func_1(arg_0: i32, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = ~func_5(func_4(func_2(), vec3<bool>(any(vec4<bool>(false, true, true, true)), false, true), Struct_3(func_2().a, Struct_1(vec2<f32>(-1414f, 742f)), _wgslsmith_f_op_f32(min(2241f, -457f)), vec2<u32>(0u, 4294967295u))), firstTrailingBit(vec4<i32>(u_input.a.x, -51680i, -2147483647i, arg_1.x) | u_input.a), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-294f, 1289f))), !any(select(vec2<bool>(false, true), vec2<bool>(false, false), true)));
    var var_1 = select(vec4<bool>(u_input.e.x <= _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.d.x, u_input.e.x, u_input.b)), u_input.d), 30097u < max(25650u, reverseBits(u_input.d.x)), ~u_input.d.x < u_input.c.x, true), vec4<bool>(select(true, false, false), u_input.e.x > 0u, true, true), select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, any(vec3<bool>(true, false, false)), all(vec3<bool>(false, true, true)), true), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), false)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), all(vec2<bool>(true, true))), _wgslsmith_dot_vec2_i32(abs(arg_1.yx), vec2<i32>(u_input.a.x, 31239i)) >= ~0i));
    var var_2 = Struct_2(_wgslsmith_add_vec4_u32(vec4<u32>(~min(u_input.b, 1u), 1u, 0u, _wgslsmith_sub_u32(u_input.e.x, 0u)), ~vec4<u32>(u_input.c.x, 32407u, min(u_input.d.x, u_input.d.x), ~u_input.c.x)), func_4(Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(196f, 201f), vec2<f32>(1000f, -1000f))))), var_1.wwy, Struct_3(func_2().a, func_4(Struct_4(Struct_1(vec2<f32>(1000f, 471f))), !vec3<bool>(false, var_1.x, false), Struct_3(Struct_1(vec2<f32>(385f, -1093f)), Struct_1(vec2<f32>(1407f, -1371f)), -1502f, u_input.e.yz)).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1111f)) + 1612f), u_input.d.zz)).a);
    global0 = array<vec4<f32>, 15>();
    global0 = array<vec4<f32>, 15>();
    return var_2.b;
}

fn func_6(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_sub_vec4_u32(arg_0.a, arg_0.a), func_1(arg_1.x, _wgslsmith_clamp_vec3_i32(select(vec3<i32>(u_input.a.x, 0i, arg_1.x), vec3<i32>(u_input.a.x, 21796i, u_input.a.x), vec3<bool>(arg_2.x, true, true)) ^ (u_input.a.zyx | u_input.a.xzz), vec3<i32>(firstTrailingBit(arg_1.x), _wgslsmith_dot_vec3_i32(u_input.a.wxz, vec3<i32>(arg_1.x, arg_1.x, -225i)), 22103i), vec3<i32>(-1i) * -u_input.a.wzx)));
    var_0 = arg_0;
    let var_1 = arg_1.x;
    let var_2 = arg_0;
    var var_3 = 7080u;
    return Struct_1(vec2<f32>(var_2.b.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(289f, 331f), _wgslsmith_f_op_f32(arg_0.b.a.x * var_0.b.a.x), !arg_2.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 15>();
    let var_0 = Struct_4(func_6(Struct_2(vec4<u32>(u_input.b, u_input.b, 4294967295u, 1u), func_1(-2087i, u_input.a.zxx & u_input.a.wxy)), vec2<i32>(countOneBits(firstLeadingBit(-1i)), ~(u_input.a.x >> (u_input.c.x % 32u))), vec4<bool>(!(u_input.a.x > u_input.a.x), false, false, true)));
    global1 = array<Struct_5, 16>();
    global2 = array<vec3<f32>, 28>();
    global2 = array<vec3<f32>, 28>();
    var var_1 = func_6(Struct_2(min(abs(firstTrailingBit(vec4<u32>(4294967295u, u_input.d.x, u_input.b, 4017u))), ~(vec4<u32>(34436u, u_input.c.x, u_input.d.x, u_input.e.x) | vec4<u32>(40700u, u_input.c.x, u_input.d.x, 50334u))), func_6(Struct_2(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.e.x, u_input.c.x, 1u), vec4<u32>(u_input.e.x, u_input.c.x, u_input.c.x, u_input.b)), func_4(var_0, vec3<bool>(false, true, false), Struct_3(var_0.a, var_0.a, -220f, vec2<u32>(3053u, u_input.d.x))).a), u_input.a.zx << (max(vec2<u32>(3569u, u_input.e.x), vec2<u32>(u_input.c.x, u_input.d.x)) % vec2<u32>(32u)), select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)), all(vec3<bool>(false, true, false))))), u_input.a.wy, select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, false & (u_input.b == 1532u), true, !any(vec3<bool>(true, false, true)))));
    let var_2 = vec3<i32>(u_input.a.x, u_input.a.x, -26041i) >> (vec3<u32>(~u_input.d.x, 1u, ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(1u, 85611u)), vec2<u32>(u_input.d.x, u_input.c.x) ^ vec2<u32>(4294967295u, 72200u))) % vec3<u32>(32u));
    var var_3 = Struct_2(vec4<u32>(~(~1u), 8781u, u_input.c.x, u_input.c.x) & _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.e.x, 0u, 78390u, 0u), vec4<u32>(u_input.e.x, 1356u, u_input.e.x, u_input.d.x) ^ vec4<u32>(40052u, u_input.d.x, u_input.b, 4939u)), countOneBits(vec4<u32>(0u, u_input.d.x, u_input.b, u_input.e.x))), func_1(_wgslsmith_div_i32(-firstLeadingBit(var_2.x), -59349i), ~var_2));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(31830u, 28u)] * global2[_wgslsmith_index_u32(~max(8300u, u_input.c.x), 28u)]) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1244f, var_3.b.a.x, var_0.a.a.x)))))));
}

