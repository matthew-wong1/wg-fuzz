struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: f32,
    d: Struct_1,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(vec2<bool>(false, false), Struct_2(Struct_1(vec4<f32>(1000f, 1838f, 169f, 2888f)), Struct_1(vec4<f32>(861f, -1000f, -322f, -958f)), Struct_1(vec4<f32>(362f, -966f, 1610f, 368f))), vec3<i32>(-1i, 1i, -36532i));

var<private> global1: array<Struct_4, 21> = array<Struct_4, 21>(Struct_4(vec4<u32>(79773u, 30424u, 0u, 4837u), vec4<bool>(false, true, false, false), 160f, Struct_1(vec4<f32>(-1000f, -1725f, -1633f, -803f))), Struct_4(vec4<u32>(1u, 1u, 64073u, 29470u), vec4<bool>(true, false, false, true), -1022f, Struct_1(vec4<f32>(2545f, -1395f, 917f, -2091f))), Struct_4(vec4<u32>(48875u, 4294967295u, 522u, 0u), vec4<bool>(false, true, true, true), 468f, Struct_1(vec4<f32>(163f, 587f, 321f, 2041f))), Struct_4(vec4<u32>(0u, 1u, 72026u, 1u), vec4<bool>(true, false, true, true), 443f, Struct_1(vec4<f32>(477f, -2396f, -1855f, 700f))), Struct_4(vec4<u32>(0u, 4294967295u, 2302u, 4294967295u), vec4<bool>(true, true, false, false), 1309f, Struct_1(vec4<f32>(-1404f, 569f, 1014f, 1340f))), Struct_4(vec4<u32>(22780u, 0u, 1u, 4294967295u), vec4<bool>(true, false, true, true), 2452f, Struct_1(vec4<f32>(844f, -245f, -1159f, -104f))), Struct_4(vec4<u32>(4294967295u, 32576u, 1u, 69910u), vec4<bool>(false, false, true, true), -860f, Struct_1(vec4<f32>(-853f, -117f, 151f, -721f))), Struct_4(vec4<u32>(10271u, 113186u, 0u, 1u), vec4<bool>(true, false, false, true), 1737f, Struct_1(vec4<f32>(-190f, -376f, -574f, -1086f))), Struct_4(vec4<u32>(83401u, 18461u, 4294967295u, 7574u), vec4<bool>(true, true, false, true), 723f, Struct_1(vec4<f32>(-1000f, 1469f, 628f, 163f))), Struct_4(vec4<u32>(1u, 1u, 33075u, 0u), vec4<bool>(false, true, false, false), 1674f, Struct_1(vec4<f32>(-888f, 1033f, -835f, -1229f))), Struct_4(vec4<u32>(13700u, 0u, 1u, 10105u), vec4<bool>(true, false, false, true), 360f, Struct_1(vec4<f32>(851f, -329f, -321f, -704f))), Struct_4(vec4<u32>(22815u, 4294967295u, 4294967295u, 1u), vec4<bool>(true, false, false, true), -321f, Struct_1(vec4<f32>(-945f, -1076f, -461f, -611f))), Struct_4(vec4<u32>(5960u, 1u, 0u, 1u), vec4<bool>(false, false, false, true), -253f, Struct_1(vec4<f32>(-942f, 562f, 235f, -122f))), Struct_4(vec4<u32>(17097u, 28548u, 73735u, 10529u), vec4<bool>(true, true, false, true), 822f, Struct_1(vec4<f32>(101f, -1953f, 1000f, -542f))), Struct_4(vec4<u32>(4294967295u, 0u, 4294967295u, 7516u), vec4<bool>(false, true, false, false), 1000f, Struct_1(vec4<f32>(608f, 1740f, -288f, 745f))), Struct_4(vec4<u32>(0u, 31057u, 4294967295u, 1u), vec4<bool>(true, false, false, false), 407f, Struct_1(vec4<f32>(779f, 332f, 1409f, -1000f))), Struct_4(vec4<u32>(40224u, 99260u, 25824u, 16943u), vec4<bool>(false, false, true, false), 692f, Struct_1(vec4<f32>(-1393f, 758f, -704f, 1608f))), Struct_4(vec4<u32>(16751u, 4603u, 33196u, 4294967295u), vec4<bool>(false, true, true, true), 992f, Struct_1(vec4<f32>(690f, -320f, 1724f, -1278f))), Struct_4(vec4<u32>(0u, 0u, 51576u, 45867u), vec4<bool>(false, true, false, true), 630f, Struct_1(vec4<f32>(-1439f, 976f, 2117f, -1000f))), Struct_4(vec4<u32>(4294967295u, 1u, 79887u, 10676u), vec4<bool>(true, false, false, true), -690f, Struct_1(vec4<f32>(397f, -451f, 2518f, -1115f))), Struct_4(vec4<u32>(54163u, 9873u, 0u, 0u), vec4<bool>(true, true, false, false), -896f, Struct_1(vec4<f32>(779f, 602f, -1300f, -467f))));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool) -> vec3<u32> {
    var var_0 = true | global0.a.x;
    let var_1 = u_input.a.x << (countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 22207u, u_input.a.x), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) >> (u_input.a.x % 32u)) % 32u);
    global1 = array<Struct_4, 21>();
    let var_2 = u_input.a.x | _wgslsmith_add_u32(~1u, u_input.a.x);
    var_0 = !select(all(vec3<bool>(any(vec4<bool>(false, false, arg_0, arg_0)), false, true)), any(vec3<bool>(global0.a.x, global0.a.x, arg_0)) | arg_0, global0.a.x);
    return vec3<u32>(~12081u, 20762u, ~u_input.a.x);
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    global0 = Struct_5(global0.a, Struct_2(Struct_1(vec4<f32>(global0.b.b.a.x, 2025f, -1082f, _wgslsmith_f_op_f32(-global0.b.a.a.x))), Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.b.c.a.x, global0.b.c.a.x, global0.b.c.a.x, -1000f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.c.a.x, 292f, -1214f, global0.b.a.a.x) * global0.b.c.a), !global0.a.x))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(744f, 417f, -1645f, global0.b.a.a.x)))), global0.c << ((~abs(vec3<u32>(u_input.a.x, 13614u, u_input.a.x)) | select(vec3<u32>(20628u, 1u, 1u), func_3(global0.a.x), true)) % vec3<u32>(32u)));
    global1 = array<Struct_4, 21>();
    let var_0 = vec2<u32>(_wgslsmith_div_u32(~(~abs(1u)), u_input.a.x), _wgslsmith_mod_u32(~1u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a.x, firstTrailingBit(24381u)), 14023u)));
    var var_1 = 0u;
    global0 = Struct_5(select(global0.a, select(select(!global0.a, vec2<bool>(false, global0.a.x), !vec2<bool>(global0.a.x, true)), vec2<bool>(true, false), (global0.a.x & global0.a.x) | true), global0.a.x), global0.b, _wgslsmith_clamp_vec3_i32(~_wgslsmith_mult_vec3_i32(-vec3<i32>(-2147483647i, -1i, u_input.b.x), vec3<i32>(1i, u_input.b.x, 26255i)), ~max(global0.c & vec3<i32>(arg_0.x, global0.c.x, u_input.b.x), vec3<i32>(global0.c.x, global0.c.x, u_input.b.x) | global0.c), arg_0.zwy));
    return 20410u;
}

fn func_1(arg_0: f32) -> Struct_4 {
    let var_0 = vec2<bool>(global0.a.x, global0.c.x > ~u_input.b.x);
    let var_1 = _wgslsmith_clamp_vec2_u32(~abs(vec2<u32>(~46440u, ~u_input.a.x)), u_input.a, _wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(28504u, 0u, u_input.a.x) ^ vec3<u32>(4294967295u, u_input.a.x, 4294967295u), vec3<u32>(1u, u_input.a.x, 1u)), firstTrailingBit(u_input.a.x))));
    global1 = array<Struct_4, 21>();
    let var_2 = ~reverseBits(abs(vec4<u32>(u_input.a.x, u_input.a.x, func_2(vec4<i32>(0i, -40125i, u_input.b.x, 1i)), ~0u)));
    global0 = Struct_5(var_0, Struct_2(Struct_1(vec4<f32>(global0.b.b.a.x, 1f, -507f, _wgslsmith_f_op_f32(max(arg_0, 814f)))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1463f, -583f, arg_0)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, arg_0, arg_0, 1026f))))), global0.b.a), firstLeadingBit(vec3<i32>(_wgslsmith_clamp_i32(13193i, u_input.b.x, -41113i) << (var_1.x % 32u), -firstLeadingBit(global0.c.x), _wgslsmith_mult_i32(u_input.b.x, -27998i))));
    return global1[_wgslsmith_index_u32(4294967295u, 21u)];
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec2<f32>) -> vec2<bool> {
    let var_0 = Struct_4(vec4<u32>(arg_1.a.x, arg_1.a.x, _wgslsmith_clamp_u32(func_3(func_1(arg_1.d.a.x).b.x).x, u_input.a.x, ~(~arg_0.a.x)), (0u >> (arg_1.a.x % 32u)) & firstTrailingBit(~60339u)), vec4<bool>(arg_0.b.x, any(select(arg_1.b, vec4<bool>(arg_1.b.x, global0.a.x, false, false), any(arg_0.b.zzw))), any(select(!arg_1.b.wxx, !vec3<bool>(false, global0.a.x, true), func_1(global0.b.c.a.x).b.wzx)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(0u, arg_1.a.x), u_input.a.x) == _wgslsmith_mod_u32(_wgslsmith_div_u32(0u, arg_1.a.x), ~4294967295u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.a.x) + _wgslsmith_div_f32(1351f, -948f)), global0.b.c);
    global0 = Struct_5(!var_0.b.xz, Struct_2(Struct_1(vec4<f32>(-644f, _wgslsmith_f_op_f32(f32(-1f) * -2137f), _wgslsmith_f_op_f32(min(-300f, -1938f)), -1991f)), func_1(_wgslsmith_f_op_f32(f32(-1f) * -288f)).d, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.b.b.a * global0.b.b.a) + _wgslsmith_f_op_vec4_f32(-arg_1.d.a)))), -_wgslsmith_mod_vec3_i32(global0.c | global0.c, ~(~vec3<i32>(global0.c.x, -1i, u_input.b.x))));
    let var_1 = countOneBits(u_input.a.x) < 4294967295u;
    global0 = Struct_5(!select(func_1(func_1(159f).c).b.xx, vec2<bool>(!arg_0.b.x, all(vec2<bool>(var_0.b.x, false))), false), global0.b, global0.c);
    var var_2 = Struct_1(arg_0.d.a);
    return select(select(arg_1.b.xw, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))).b.wx, var_0.b.wx), var_0.b.wz, true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_5(select(func_4(func_1(864f), func_1(_wgslsmith_div_f32(global0.b.b.a.x, global0.b.a.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global0.b.a.a.wx, global0.b.c.a.zw) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.b.a.a.x, global0.b.a.a.x))))), global0.a, !global0.a), global0.b, vec3<i32>(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b.x), vec2<i32>(0i, u_input.b.x))), -u_input.b.x, -39475i));
    global1 = array<Struct_4, 21>();
    let var_0 = false;
    global0 = Struct_5(global0.a, global0.b, global0.c);
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(835f - global0.b.c.a.x), _wgslsmith_f_op_f32(global0.b.b.a.x + -364f), func_1(-941f).c, _wgslsmith_f_op_f32(min(856f, 1202f))))), func_1(_wgslsmith_f_op_f32(global0.b.c.a.x + func_1(-538f).d.a.x)).d, global0.b.b);
    global0 = Struct_5(global0.a, Struct_2(func_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.a.a.x, global0.b.a.a.x)))).d, var_1.a, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.b.c.a - var_1.b.a)))), max(_wgslsmith_mod_vec3_i32(vec3<i32>(-9397i, -u_input.b.x, u_input.b.x >> (u_input.a.x % 32u)), ~global0.c ^ reverseBits(vec3<i32>(1i, -24154i, global0.c.x))), -vec3<i32>(~(-1i), -14169i, _wgslsmith_dot_vec2_i32(u_input.b, global0.c.yx))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(var_1.c.a - var_1.c.a), vec4<f32>(_wgslsmith_f_op_f32(653f - 1f), var_1.a.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -146f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.c.a.x, -1286f, var_0)), _wgslsmith_f_op_f32(floor(-2385f)))))), ~reverseBits(vec4<i32>(max(-5420i, global0.c.x), ~1i, i32(-1i) * -55294i, u_input.b.x)));
}

