struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_2,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: u32,
    e: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: vec4<u32>,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 25> = array<vec2<f32>, 25>(vec2<f32>(-1504f, -328f), vec2<f32>(-1093f, -1171f), vec2<f32>(584f, -438f), vec2<f32>(-998f, 1305f), vec2<f32>(1836f, 1172f), vec2<f32>(-263f, 1153f), vec2<f32>(662f, -1000f), vec2<f32>(-199f, 606f), vec2<f32>(-1717f, -1324f), vec2<f32>(1000f, 455f), vec2<f32>(577f, 1000f), vec2<f32>(-857f, -217f), vec2<f32>(1102f, 2626f), vec2<f32>(-882f, -1615f), vec2<f32>(1279f, 1282f), vec2<f32>(-800f, 1000f), vec2<f32>(1000f, 155f), vec2<f32>(259f, -278f), vec2<f32>(-1000f, -1243f), vec2<f32>(-1561f, -636f), vec2<f32>(538f, -1005f), vec2<f32>(1263f, 1000f), vec2<f32>(-1000f, 845f), vec2<f32>(854f, -549f), vec2<f32>(-1592f, 1000f));

var<private> global1: array<Struct_5, 7>;

var<private> global2: i32;

var<private> global3: f32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    global1 = array<Struct_5, 7>();
    var var_0 = (vec4<u32>(4294967295u, u_input.b << (reverseBits(33502u) % 32u), ~u_input.b, u_input.b) & vec4<u32>(42134u & (0u >> (u_input.b % 32u)), ~countOneBits(u_input.b), _wgslsmith_clamp_u32(u_input.b << (u_input.b % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(29015u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b)), 53235u), 1u)) >> (~(~vec4<u32>(39168u, 76517u, u_input.b, firstTrailingBit(1u))) % vec4<u32>(32u));
    let var_1 = Struct_2(Struct_1(arg_0.zzz), vec2<bool>((any(vec3<bool>(true, true, false)) != false) != false, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), ~u_input.b, Struct_1(arg_0.xyx), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_0.yzx), _wgslsmith_f_op_vec3_f32(-vec3<f32>(867f, arg_0.x, arg_0.x)))) - arg_0.xww)));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.e.a.x, _wgslsmith_f_op_f32(-var_1.e.a.x), _wgslsmith_f_op_f32(floor(var_1.a.a.x))))), select(select(!var_1.b, vec2<bool>(all(vec4<bool>(var_1.b.x, var_1.b.x, true, var_1.b.x)), all(var_1.b)), var_1.b.x), var_1.b, !var_1.b.x), 63087u, var_1.a, Struct_1(_wgslsmith_f_op_vec3_f32(abs(arg_0.zzx))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.a.x * arg_0.x));
    return _wgslsmith_f_op_f32(f32(-1f) * -1845f);
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = ~(~(~u_input.b >> (~4294967295u % 32u)));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<f32>(1067f, 457f, -318f, -352f))) * -109f)), -107f));
    let var_2 = ~(~(~(_wgslsmith_sub_vec4_u32(vec4<u32>(54273u, arg_0, 14216u, 0u), vec4<u32>(8676u, u_input.b, 0u, 4294967295u)) >> (select(vec4<u32>(arg_0, u_input.b, u_input.b, arg_0), vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b), vec4<bool>(false, false, true, false)) % vec4<u32>(32u)))));
    let var_3 = -2147483647i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)));
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = Struct_5(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(func_2(firstLeadingBit(1u))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(267f)))))), _wgslsmith_f_op_f32(-1465f - -907f), ~max(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.b, 74795u, arg_0), vec4<u32>(u_input.b, 1u, 33350u, 33187u)), _wgslsmith_mod_vec4_u32(vec4<u32>(14500u, 4294967295u, 90566u, arg_0), vec4<u32>(15459u, u_input.b, 0u, u_input.b))) & ~(_wgslsmith_sub_vec4_u32(vec4<u32>(53200u, 1u, 1u, 4294967295u), vec4<u32>(u_input.b, arg_0, u_input.b, arg_0)) ^ ~vec4<u32>(0u, 109461u, arg_0, 73260u)), Struct_2(Struct_1(vec3<f32>(1f, 1f, 1f)), select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), any(vec3<bool>(false, false, false))), vec2<bool>(true, true), all(vec2<bool>(false, true))), ~u_input.b, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(629f, 1119f, 1342f) + vec3<f32>(-1515f, -851f, 440f)))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(707f, -104f, -262f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(299f, -1485f, 987f) - vec3<f32>(1526f, -286f, -473f))))), Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, 385f, 844f)))), select(vec2<bool>(true, true), vec2<bool>(true, true), true), arg_0, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(946f, -485f, -1093f))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(132f, -341f, -617f) - vec3<f32>(1454f, -353f, 1556f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1401f, -661f, -1000f, 710f))), vec4<f32>(480f, -1390f, -791f, 1000f), vec4<bool>(true, true, true, true))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(2055f, 2331f, 473f, 1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1026f, -916f, 1070f, -289f)), true))), Struct_2(Struct_1(vec3<f32>(1459f, -1910f, 760f)), vec2<bool>(true, true), _wgslsmith_sub_u32(arg_0, 28661u) & reverseBits(41831u), Struct_1(vec3<f32>(1f, 1f, 1f)), Struct_1(vec3<f32>(1f, 1f, 1f))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, 451f, 470f), vec3<f32>(175f, 722f, 1310f)))), select(vec2<bool>(true, true), vec2<bool>(true, true), true), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, arg_0), vec2<u32>(u_input.b, 4294967295u)), Struct_1(vec3<f32>(-986f, 438f, 952f)), Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(523f, 2377f, 928f), vec3<f32>(-1090f, 354f, 643f))))), ~(_wgslsmith_add_u32(u_input.b, u_input.b) | (36852u | arg_0))));
    let var_1 = Struct_4(select(abs(-u_input.a), 0i, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.a.a.a.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + _wgslsmith_f_op_f32(465f + -218f)))), var_0.d.d.a, ~var_0.e.d.c, var_0.d.a.a.x);
    global1 = array<Struct_5, 7>();
    let var_2 = -2147483647i;
    let var_3 = ~(~(~u_input.b >> (55279u % 32u)));
    return -u_input.c;
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: Struct_3) -> Struct_4 {
    var var_0 = arg_3.c.b;
    var var_1 = Struct_4((i32(-1i) * -23623i) << (~u_input.b % 32u), _wgslsmith_f_op_f32(min(134f, 625f)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(arg_3.a.e.a.x)), _wgslsmith_f_op_f32(func_3(vec4<f32>(703f, arg_3.b.x, arg_3.d.e.a.x, 812f))), _wgslsmith_f_op_f32(-arg_3.b.x)) - vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1814f), arg_0)))), ~arg_3.d.c, arg_0);
    var var_2 = _wgslsmith_clamp_vec2_i32(-vec2<i32>(30268i, arg_1.x), ~(-(abs(arg_1.yy) ^ (vec2<i32>(arg_1.x, var_1.a) << (vec2<u32>(arg_3.d.c, 60540u) % vec2<u32>(32u))))), ~(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(var_1.a, -1i)), -2147483647i) | arg_1.zy));
    let var_3 = -1591f;
    var var_4 = select(firstLeadingBit(~(~vec2<u32>(6116u, arg_3.a.c) >> (vec2<u32>(var_1.d, 4294967295u) % vec2<u32>(32u)))), vec2<u32>(countOneBits(u_input.b), arg_3.c.c), arg_3.c.b.x);
    return Struct_4(min(var_2.x, abs(0i)), arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_3.c.a.a, arg_3.b.yxy)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1736f, arg_3.a.e.a.x, arg_3.b.x) - arg_3.d.d.a)))), 1u & ~_wgslsmith_div_u32(min(arg_3.e, 35598u), firstTrailingBit(arg_3.c.c)), var_3);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 25>();
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(1f, -143f, true))))));
    let var_0 = func_4(_wgslsmith_f_op_f32(f32(-1f) * -431f), vec3<i32>(func_1(~1u), 0i, u_input.e.x), vec4<bool>(true, all(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true))), ~(~5783u) <= _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(0u, u_input.b)), ~u_input.b, select(26276u, u_input.b, false)), true), Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1110f, 609f, -1000f), vec3<f32>(307f, -903f, 1012f)))), vec2<bool>(true, true), 4294967295u, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1057f, 503f, -131f))), Struct_1(vec3<f32>(931f, 1000f, 1151f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(989f, -461f, -732f, -768f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2074f, -276f, -278f, -310f)), vec4<bool>(false, false, false, false)))), Struct_2(Struct_1(vec3<f32>(-465f, -437f, 153f)), vec2<bool>(any(vec3<bool>(true, false, true)), false), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, u_input.b), vec2<u32>(1u, 1u)), Struct_1(vec3<f32>(1f, 1f, 1f)), Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1974f, -1099f, 211f), vec3<f32>(-360f, -712f, 223f))))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1326f, 1257f, -960f), vec3<f32>(-755f, -325f, -1119f), true))), !select(vec2<bool>(false, true), vec2<bool>(true, true), false), u_input.b, Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1963f, 1996f, 539f), vec3<f32>(-1157f, 734f, -155f)))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1000f, -1252f) + vec3<f32>(-1115f, 1026f, 1485f)))), 7762u));
    global2 = ~u_input.a;
    var var_1 = any(vec4<bool>(true, true, !(!any(vec4<bool>(true, true, true, false))), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32((vec4<i32>(u_input.d, 37278i, -24913i, var_0.a) ^ vec4<i32>(var_0.a, var_0.a, -7328i, var_0.a)) << (reverseBits(vec4<u32>(var_0.d, 1u, 21215u, var_0.d)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_mod_i32(var_0.a, u_input.e.x), _wgslsmith_mod_i32(u_input.a, var_0.a), 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 2147483647i, -2147483647i, var_0.a), vec4<i32>(9251i, 1i, var_0.a, u_input.e.x)))), min(-abs(vec4<i32>(13552i, -10504i, 1i, -2147483647i)), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a, var_0.a, u_input.e.x, var_0.a), vec4<i32>(u_input.c, u_input.c, var_0.a, var_0.a), vec4<i32>(u_input.d, -1i, var_0.a, 1i)), -vec4<i32>(var_0.a, var_0.a, var_0.a, u_input.a), true))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(27969u)) * var_0.e)), -996f, -448f), abs(~vec2<i32>(-2147483647i, u_input.d)) << (min(vec2<u32>(19416u, 11290u) ^ vec2<u32>(var_0.d, u_input.b), vec2<u32>(~4294967295u, _wgslsmith_clamp_u32(0u, var_0.d, var_0.d))) % vec2<u32>(32u)), _wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_mod_vec2_u32(~vec2<u32>(24242u, var_0.d), vec2<u32>(29657u, u_input.b) & vec2<u32>(u_input.b, var_0.d))), ~countOneBits(~vec2<u32>(4294967295u, 92856u))));
}

