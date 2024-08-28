struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<u32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: bool,
    c: vec4<i32>,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 6> = array<Struct_4, 6>(Struct_4(Struct_1(3580u, vec4<u32>(30872u, 13394u, 623u, 4294967295u)), Struct_2(10766i, Struct_1(0u, vec4<u32>(0u, 264u, 0u, 0u)), Struct_1(62156u, vec4<u32>(2198u, 1516u, 53459u, 4294967295u))), vec2<u32>(46719u, 47878u)), Struct_4(Struct_1(13855u, vec4<u32>(4294967295u, 0u, 0u, 24882u)), Struct_2(i32(-2147483648), Struct_1(1u, vec4<u32>(1u, 4294967295u, 22595u, 49518u)), Struct_1(0u, vec4<u32>(4294967295u, 1u, 74560u, 54556u))), vec2<u32>(16722u, 1u)), Struct_4(Struct_1(0u, vec4<u32>(35418u, 52097u, 1u, 19424u)), Struct_2(-9090i, Struct_1(31381u, vec4<u32>(4294967295u, 4294967295u, 1u, 37082u)), Struct_1(18616u, vec4<u32>(66104u, 0u, 4294967295u, 71590u))), vec2<u32>(0u, 89985u)), Struct_4(Struct_1(0u, vec4<u32>(0u, 4294967295u, 0u, 8633u)), Struct_2(41547i, Struct_1(0u, vec4<u32>(39406u, 4294967295u, 13073u, 10272u)), Struct_1(11730u, vec4<u32>(4294967295u, 19118u, 0u, 31312u))), vec2<u32>(68937u, 48254u)), Struct_4(Struct_1(6335u, vec4<u32>(4294967295u, 16585u, 35720u, 29142u)), Struct_2(0i, Struct_1(11457u, vec4<u32>(4294967295u, 43985u, 4294967295u, 4294967295u)), Struct_1(4294967295u, vec4<u32>(0u, 4294967295u, 7882u, 1u))), vec2<u32>(59302u, 28603u)), Struct_4(Struct_1(0u, vec4<u32>(39211u, 0u, 34875u, 7558u)), Struct_2(58356i, Struct_1(28540u, vec4<u32>(0u, 0u, 44997u, 0u)), Struct_1(51108u, vec4<u32>(1u, 0u, 1140u, 4294967295u))), vec2<u32>(4294967295u, 57557u)));

var<private> global1: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(vec4<f32>(-2504f, 817f, 778f, 624f)), Struct_3(vec4<f32>(613f, -2068f, -1000f, -1138f)), Struct_3(vec4<f32>(-272f, -1695f, 1000f, 786f)), Struct_3(vec4<f32>(-531f, 545f, 1145f, 402f)), Struct_3(vec4<f32>(-637f, -669f, 165f, 821f)), Struct_3(vec4<f32>(1429f, 290f, 1000f, 334f)), Struct_3(vec4<f32>(-293f, -575f, 498f, -755f)), Struct_3(vec4<f32>(1606f, -1059f, -838f, -487f)), Struct_3(vec4<f32>(-823f, 144f, -933f, 542f)), Struct_3(vec4<f32>(-1000f, 976f, 369f, -765f)));

var<private> global2: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: u32) -> vec4<f32> {
    var var_0 = Struct_5(_wgslsmith_clamp_vec3_u32(vec3<u32>(global2.a, _wgslsmith_mult_u32(1u, 35617u), 4294967295u) ^ vec3<u32>(~global2.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, global2.a), vec3<u32>(4294967295u, arg_2, global2.a)), ~global2.b.x), ~global2.b.xyx, min(vec3<u32>(4294967295u, 1u, reverseBits(19703u)), reverseBits(_wgslsmith_add_vec3_u32(global2.b.xzy, global2.b.zwy)))), true, vec4<i32>(abs(firstLeadingBit(select(-2147483647i, arg_1, true))), ~1i, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, u_input.c, -2147483647i)), vec3<i32>(1i, 0i, u_input.b)) << (u_input.d.x % 32u), u_input.b), Struct_2(arg_0.x, Struct_1(48950u, ~global2.b), Struct_1(0u, ~min(vec4<u32>(12876u, u_input.d.x, arg_2, global2.a), global2.b))), false);
    let var_1 = !select(!select(vec3<bool>(false, false, var_0.e), !vec3<bool>(false, var_0.e, false), false), !vec3<bool>(4294967295u != arg_2, var_0.b, any(vec2<bool>(var_0.e, false))), !(-arg_0.x > arg_1));
    var var_2 = vec2<f32>(1f, 1f);
    let var_3 = max(vec4<i32>(u_input.b, -u_input.a.x, u_input.a.x, 8065i), var_0.c);
    let var_4 = any(!(!select(!vec4<bool>(false, var_0.b, true, var_0.b), !vec4<bool>(false, true, var_1.x, false), any(vec4<bool>(false, var_1.x, var_0.e, var_0.b)))));
    return vec4<f32>(var_2.x, _wgslsmith_f_op_f32(sign(-1488f)), var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -857f));
}

fn func_2() -> u32 {
    var var_0 = 48317u;
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(820f + 385f), _wgslsmith_f_op_f32(f32(-1f) * -364f), true)), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(432f, -3201f)) - _wgslsmith_f_op_f32(round(1084f))), _wgslsmith_f_op_f32(min(-187f, _wgslsmith_f_op_f32(abs(-972f))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec2<i32>(1i, u_input.a.x), u_input.b, u_input.d.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-819f, -316f, -1427f, -588f) + vec4<f32>(-1512f, 1927f, -1065f, 1168f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-173f, -2084f, -382f, -1278f) + vec4<f32>(555f, 504f, -664f, 705f)) + vec4<f32>(620f, 285f, -884f, 488f)))));
    global2 = Struct_1(max(~u_input.d.x, u_input.d.x), select(abs(vec4<u32>(~22102u, 4294967295u, u_input.d.x, 0u)), global2.b, select(false, true, all(vec4<bool>(true, true, true, true)))));
    var var_2 = abs(_wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, u_input.a));
    var var_3 = Struct_5(vec3<u32>(13558u >> (u_input.d.x % 32u), global2.b.x, global2.b.x) ^ ~_wgslsmith_add_vec3_u32(global2.b.yzy, global2.b.zww), firstLeadingBit(4294967295u) >= firstTrailingBit(u_input.d.x), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, var_2.x, u_input.a.x, 7347i) ^ vec4<i32>(1i, var_2.x, u_input.c, u_input.a.x), vec4<i32>(i32(-1i) * -38580i, -u_input.b, abs(u_input.b), u_input.b), _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(u_input.c, u_input.a.x, var_2.x, -2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(18902i, var_2.x, 1i, u_input.c), vec4<i32>(u_input.a.x, u_input.a.x, 1i, -11661i))))), Struct_2(u_input.c, Struct_1(4294967295u, global2.b), Struct_1(firstTrailingBit(~u_input.d.x), global2.b)), any(vec3<bool>(true, true, true)));
    return _wgslsmith_add_u32(u_input.d.x, _wgslsmith_mod_u32(1u, 4294967295u));
}

fn func_1() -> Struct_1 {
    global2 = Struct_1(_wgslsmith_div_u32(global2.b.x, _wgslsmith_div_u32(~18839u ^ func_2(), func_2())), global2.b);
    let var_0 = _wgslsmith_clamp_u32(~(global2.a << (~3530u % 32u)), 54142u, u_input.d.x);
    let var_1 = firstLeadingBit(_wgslsmith_add_i32(-(abs(-7218i) | u_input.b), -(~15834i)));
    global0 = array<Struct_4, 6>();
    let var_2 = Struct_1(~global2.a, ~vec4<u32>(func_2(), firstTrailingBit(u_input.d.x), global2.a & var_0, max(_wgslsmith_div_u32(1u, global2.a), ~4294967295u)));
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> i32 {
    let var_0 = vec4<bool>(arg_1, arg_1, true, !arg_1);
    global1 = array<Struct_3, 10>();
    global2 = func_1();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-339f - -1821f), _wgslsmith_f_op_f32(f32(-1f) * -1010f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1342f - 1000f))), -987f) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-371f, -943f))), _wgslsmith_f_op_vec4_f32(func_3(u_input.a.zz ^ u_input.a.zz, u_input.a.x, 1u)).wy)));
    global2 = arg_0;
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(0u << (global2.a % 32u));
    var var_1 = vec3<i32>(_wgslsmith_mult_i32(~abs(i32(-1i) * -5854i), u_input.c), _wgslsmith_clamp_i32(-20973i, min(-1i, func_4(func_1(), true)), u_input.b), countOneBits(min(u_input.c, u_input.b)));
    var var_2 = global2.b.x >= u_input.d.x;
    let var_3 = select(select(vec2<bool>(all(vec2<bool>(true, true)), (2147483647i > var_1.x) && select(false, true, true)), select(vec2<bool>(any(vec3<bool>(true, false, false)), true), !select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true)), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))))), select(select(vec2<bool>(68486u >= var_0, any(vec3<bool>(false, false, true))), vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(false, true, true, false)), true)), select(vec2<bool>(true, any(vec2<bool>(true, false))), vec2<bool>(true, var_0 > 4294967295u), true), select(vec2<bool>(true, true), vec2<bool>(false, all(vec3<bool>(false, true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(false, false, true, false))))), select(vec2<bool>(true, true), !select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), true), select(!select(vec2<bool>(true, false), vec2<bool>(false, false), true), select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, true), false)), vec2<bool>(true, true))));
    let var_4 = func_1();
    let var_5 = ~(~(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 4294967295u, var_4.b.x) ^ vec3<u32>(u_input.d.x, 0u, u_input.d.x), vec3<u32>(var_4.b.x, var_0, var_4.b.x)) ^ abs(u_input.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(348f, -271f))) - _wgslsmith_div_vec2_f32(vec2<f32>(211f, -1526f), vec2<f32>(826f, 1482f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1214f, 770f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))), vec3<i32>(30750i, _wgslsmith_mod_i32(-4727i, max(_wgslsmith_sub_i32(u_input.c, var_1.x), abs(var_1.x))), u_input.b), u_input.d ^ u_input.d);
}

