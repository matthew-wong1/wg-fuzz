struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: f32,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(-274f, 24818u, Struct_1(8067u, vec4<f32>(535f, -398f, 111f, 1000f))), Struct_3(-2515f, 13674u, Struct_1(0u, vec4<f32>(2216f, -935f, 1000f, 692f))), Struct_3(1584f, 41352u, Struct_1(68049u, vec4<f32>(256f, -1630f, 396f, 1000f))), Struct_3(972f, 4294967295u, Struct_1(1u, vec4<f32>(780f, 292f, -1114f, 3497f))), Struct_3(1902f, 40696u, Struct_1(0u, vec4<f32>(238f, -794f, 380f, 1512f))), Struct_3(-984f, 0u, Struct_1(0u, vec4<f32>(-213f, 627f, 1138f, -384f))), Struct_3(-972f, 0u, Struct_1(78981u, vec4<f32>(473f, -193f, 1560f, -136f))), Struct_3(977f, 20713u, Struct_1(5923u, vec4<f32>(742f, -639f, 1088f, 932f))), Struct_3(-504f, 69438u, Struct_1(27058u, vec4<f32>(777f, -206f, -469f, -409f))), Struct_3(-390f, 1u, Struct_1(1u, vec4<f32>(-375f, -1473f, 1000f, -381f))), Struct_3(785f, 10267u, Struct_1(1u, vec4<f32>(588f, -714f, 1000f, -546f))), Struct_3(-525f, 4294967295u, Struct_1(4294967295u, vec4<f32>(-213f, -308f, -1341f, -1995f))), Struct_3(581f, 4294967295u, Struct_1(1u, vec4<f32>(1428f, 322f, 671f, 1000f))), Struct_3(-509f, 1u, Struct_1(34966u, vec4<f32>(1886f, -1058f, 350f, 1079f))), Struct_3(-476f, 0u, Struct_1(0u, vec4<f32>(-134f, 842f, -184f, 459f))), Struct_3(193f, 21061u, Struct_1(0u, vec4<f32>(-478f, -649f, -1337f, -414f))), Struct_3(1592f, 75837u, Struct_1(5950u, vec4<f32>(-672f, -133f, -513f, 1000f))), Struct_3(-257f, 53145u, Struct_1(1u, vec4<f32>(1468f, 325f, -539f, 1073f))), Struct_3(2722f, 1u, Struct_1(4294967295u, vec4<f32>(-345f, -584f, -790f, -1396f))), Struct_3(-1095f, 49882u, Struct_1(1479u, vec4<f32>(-2281f, 1000f, -873f, 1118f))), Struct_3(510f, 0u, Struct_1(26221u, vec4<f32>(-305f, -216f, 219f, 1431f))), Struct_3(-1757f, 40057u, Struct_1(67335u, vec4<f32>(759f, -1177f, 2007f, 174f))), Struct_3(1813f, 4294967295u, Struct_1(1u, vec4<f32>(-174f, 484f, -748f, -1475f))), Struct_3(-1000f, 9576u, Struct_1(4294967295u, vec4<f32>(461f, -1359f, -220f, 579f))), Struct_3(736f, 4294967295u, Struct_1(113063u, vec4<f32>(-1062f, 262f, 333f, 711f))), Struct_3(-1223f, 3646u, Struct_1(1u, vec4<f32>(-1920f, -1052f, 839f, 1826f))), Struct_3(-1000f, 0u, Struct_1(0u, vec4<f32>(-393f, 359f, 1490f, 446f))), Struct_3(-1219f, 1u, Struct_1(1u, vec4<f32>(-2295f, -1557f, 1658f, 1024f))));

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global2: u32 = 35683u;

var<private> global3: f32 = -815f;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool) -> vec2<u32> {
    let var_0 = arg_0;
    let var_1 = firstLeadingBit(u_input.d.x);
    global0 = array<Struct_3, 28>();
    let var_2 = -38209i;
    var var_3 = ~abs(select((vec4<i32>(var_2, -81576i, -14854i, u_input.b.x) ^ vec4<i32>(-10853i, -2147483647i, -1i, u_input.a)) | vec4<i32>(2147483647i, u_input.a, u_input.b.x, 1i), countOneBits(-u_input.c), vec4<bool>(arg_0, !global1.x, all(global1.yw), all(vec3<bool>(false, arg_0, var_0)))));
    return vec2<u32>(~reverseBits(~_wgslsmith_mod_u32(u_input.d.x, var_1)), 4294967295u);
}

fn func_4(arg_0: vec2<u32>) -> u32 {
    var var_0 = Struct_2(Struct_1(~u_input.d.x | ~(~0u), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-920f, -1179f, 587f, 1058f)))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-var_0.a.b);
    var var_2 = abs(min(vec3<u32>(firstLeadingBit(var_0.a.a), arg_0.x, countOneBits(~0u)), vec3<u32>(2389u, reverseBits(firstTrailingBit(u_input.d.x)), 1u)));
    var var_3 = ~_wgslsmith_mult_vec3_i32(select(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(u_input.c.x, u_input.c.x, 2147483647i)), vec3<i32>(u_input.c.x, u_input.a, u_input.a)), abs(_wgslsmith_clamp_vec3_i32(u_input.c.wwz, u_input.c.wxz, vec3<i32>(0i, -1375i, u_input.c.x))), select(vec3<bool>(false, true, false), !vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, false, false))), u_input.c.wzz);
    return ~u_input.d.x;
}

fn func_2(arg_0: vec3<bool>) -> f32 {
    let var_0 = 37587u;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(244f + _wgslsmith_f_op_f32(f32(-1f) * -129f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1128f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(627f - 1834f), _wgslsmith_f_op_f32(max(1024f, -2882f))))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(587f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(ceil(1393f))))))));
    let var_2 = ~max(func_4(u_input.d.ww & func_3(true)), _wgslsmith_sub_u32(19841u, u_input.d.x));
    let var_3 = u_input.b.x;
    var var_4 = _wgslsmith_f_op_vec4_f32(ceil(var_1));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-680f)) * -1033f) - var_1.x);
}

fn func_1(arg_0: Struct_4, arg_1: vec4<f32>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.x, -924f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.b.x) - _wgslsmith_f_op_f32(arg_1.x + 1139f)))) * -2257f);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1456f, _wgslsmith_f_op_f32(-var_0))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<bool>(global1.x, global1.x, global1.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.b.x * -1617f))))));
    global2 = min(abs(arg_0.a.a), u_input.d.x);
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.d.b.x)));
    var_2 = arg_1.x;
    return Struct_4(arg_0.d, -u_input.c.xwx, _wgslsmith_f_op_f32(abs(arg_1.x)), arg_0.d);
}

fn func_5(arg_0: i32, arg_1: Struct_5, arg_2: Struct_1, arg_3: Struct_4) -> Struct_1 {
    global0 = array<Struct_3, 28>();
    let var_0 = _wgslsmith_f_op_f32(sign(arg_3.c));
    var var_1 = Struct_5(Struct_4(arg_2, max(func_1(arg_1.a, vec4<f32>(-1387f, arg_1.a.a.b.x, -1632f, 112f)).b >> (_wgslsmith_mod_vec3_u32(u_input.d.ywz, vec3<u32>(46995u, 4294967295u, arg_1.a.d.a)) % vec3<u32>(32u)), vec3<i32>(i32(-1i) * -19043i, arg_3.b.x >> (arg_3.d.a % 32u), abs(2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(false, true, true), global1.zzz))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) - _wgslsmith_f_op_f32(ceil(var_0)))), arg_1.a.a));
    global2 = 1u;
    var var_2 = Struct_2(Struct_1(1u, _wgslsmith_f_op_vec4_f32(-arg_3.a.b)));
    return arg_3.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -179f;
    let var_1 = Struct_2(func_5(-26142i, Struct_5(func_1(Struct_4(Struct_1(u_input.d.x, vec4<f32>(1518f, 196f, -415f, var_0)), vec3<i32>(1i, 0i, 5635i), var_0, Struct_1(u_input.d.x, vec4<f32>(var_0, var_0, -1463f, var_0))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1368f, -243f, 546f, -592f) + vec4<f32>(712f, -1000f, -355f, 1207f)))), Struct_1(50514u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -140f, var_0, var_0) - vec4<f32>(var_0, -1443f, -1826f, var_0)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1054f, 959f, var_0)))), func_1(Struct_4(Struct_1(19338u, vec4<f32>(-366f, var_0, var_0, var_0)), vec3<i32>(-1i, 14706i, 2147483647i) >> (vec3<u32>(64987u, u_input.d.x, 0u) % vec3<u32>(32u)), var_0, Struct_1(u_input.d.x, vec4<f32>(-315f, var_0, var_0, var_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-443f, var_0, var_0, -525f))))));
    let var_2 = var_1;
    var var_3 = global1.x;
    let var_4 = var_2;
    var var_5 = ~var_2.a.a < 0u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_4.a.a, _wgslsmith_sub_u32(39096u, 25230u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b.x))), 1955f, var_0, _wgslsmith_f_op_f32(min(var_0, -297f))), var_4.a.b);
}

