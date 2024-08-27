struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(1u, Struct_2(Struct_1(vec4<f32>(-740f, -1000f, -420f, 999f), i32(-2147483648)), 3571u, vec4<i32>(-1262i, -39111i, -28463i, 58863i), 4294967295u, vec2<bool>(false, false))), Struct_3(13273u, Struct_2(Struct_1(vec4<f32>(1000f, 989f, -342f, -739f), -1i), 47549u, vec4<i32>(-6724i, 2147483647i, 10701i, -681i), 0u, vec2<bool>(false, true))), Struct_3(4294967295u, Struct_2(Struct_1(vec4<f32>(-913f, 1503f, 1169f, -171f), -3988i), 30599u, vec4<i32>(i32(-2147483648), 2147483647i, 56028i, -8828i), 36524u, vec2<bool>(true, true))), Struct_3(11005u, Struct_2(Struct_1(vec4<f32>(-242f, 1577f, -642f, 1000f), 1i), 8717u, vec4<i32>(-37393i, -16918i, -1i, 64534i), 98574u, vec2<bool>(false, true))), Struct_3(16108u, Struct_2(Struct_1(vec4<f32>(248f, -479f, 1719f, -275f), -1i), 41664u, vec4<i32>(31960i, 1i, 1i, -15392i), 1u, vec2<bool>(false, false))), Struct_3(3598u, Struct_2(Struct_1(vec4<f32>(-1129f, -571f, 885f, -443f), 6706i), 34696u, vec4<i32>(i32(-2147483648), 14459i, 49908i, -1i), 0u, vec2<bool>(true, false))), Struct_3(1u, Struct_2(Struct_1(vec4<f32>(-179f, -1000f, 345f, 451f), i32(-2147483648)), 11226u, vec4<i32>(-1i, 34605i, -56326i, 1i), 10916u, vec2<bool>(false, false))), Struct_3(4294967295u, Struct_2(Struct_1(vec4<f32>(1300f, -355f, -1650f, 741f), -25289i), 65678u, vec4<i32>(4172i, 1i, -5322i, 0i), 100741u, vec2<bool>(false, false))), Struct_3(2085u, Struct_2(Struct_1(vec4<f32>(682f, -128f, -1575f, -606f), -23210i), 10174u, vec4<i32>(2147483647i, -45019i, -26462i, 0i), 4294967295u, vec2<bool>(false, false))), Struct_3(7365u, Struct_2(Struct_1(vec4<f32>(-2258f, -1290f, -205f, 216f), -16327i), 12713u, vec4<i32>(98155i, 2147483647i, -5381i, 46472i), 64961u, vec2<bool>(true, false))), Struct_3(1u, Struct_2(Struct_1(vec4<f32>(-2062f, 713f, -1053f, -354f), -1i), 4294967295u, vec4<i32>(1i, -59706i, -1i, 2147483647i), 4294967295u, vec2<bool>(false, true))), Struct_3(4294967295u, Struct_2(Struct_1(vec4<f32>(-266f, -443f, -1000f, -1000f), 12888i), 0u, vec4<i32>(-35304i, -1i, 1i, 1i), 0u, vec2<bool>(true, true))), Struct_3(6518u, Struct_2(Struct_1(vec4<f32>(159f, 1000f, 1081f, 208f), 11212i), 30759u, vec4<i32>(-59835i, 2147483647i, 25184i, 53106i), 1u, vec2<bool>(false, true))), Struct_3(1u, Struct_2(Struct_1(vec4<f32>(473f, 2816f, -110f, 603f), 2147483647i), 0u, vec4<i32>(2147483647i, -1i, 1790i, -47053i), 4294967295u, vec2<bool>(true, true))), Struct_3(1u, Struct_2(Struct_1(vec4<f32>(339f, -2046f, 275f, -392f), 39707i), 4371u, vec4<i32>(-1i, -1i, -34607i, 38238i), 78700u, vec2<bool>(false, true))), Struct_3(40250u, Struct_2(Struct_1(vec4<f32>(-1705f, 610f, 826f, 834f), -1i), 4294967295u, vec4<i32>(42064i, -1i, -6567i, 20469i), 54992u, vec2<bool>(true, true))), Struct_3(0u, Struct_2(Struct_1(vec4<f32>(1396f, 2017f, 1000f, 436f), -41599i), 0u, vec4<i32>(-9253i, -4528i, -5048i, 1i), 0u, vec2<bool>(true, true))), Struct_3(31505u, Struct_2(Struct_1(vec4<f32>(700f, -572f, 1063f, 432f), 13056i), 46196u, vec4<i32>(2147483647i, i32(-2147483648), -22398i, -5004i), 4294967295u, vec2<bool>(true, true))), Struct_3(58474u, Struct_2(Struct_1(vec4<f32>(-1000f, 168f, 253f, 337f), -17209i), 22910u, vec4<i32>(45426i, 0i, 12271i, -24318i), 1u, vec2<bool>(false, true))), Struct_3(0u, Struct_2(Struct_1(vec4<f32>(-1178f, -1000f, 625f, 495f), 5850i), 6531u, vec4<i32>(61105i, 2147483647i, i32(-2147483648), 0i), 18002u, vec2<bool>(true, false))), Struct_3(4294967295u, Struct_2(Struct_1(vec4<f32>(-254f, 747f, 409f, 1000f), -31405i), 4294967295u, vec4<i32>(1i, 0i, i32(-2147483648), -12730i), 4294967295u, vec2<bool>(false, true))), Struct_3(44634u, Struct_2(Struct_1(vec4<f32>(1118f, -1360f, 1000f, 475f), 2147483647i), 1u, vec4<i32>(2784i, i32(-2147483648), 1i, 1i), 55909u, vec2<bool>(true, true))), Struct_3(4294967295u, Struct_2(Struct_1(vec4<f32>(752f, 1117f, 821f, -1000f), 3444i), 3982u, vec4<i32>(-6411i, 1i, -1i, -1i), 1u, vec2<bool>(false, true))), Struct_3(11015u, Struct_2(Struct_1(vec4<f32>(-1213f, -422f, 1966f, -1050f), 2147483647i), 42872u, vec4<i32>(1i, 37670i, -6595i, -56625i), 27358u, vec2<bool>(true, true))), Struct_3(64513u, Struct_2(Struct_1(vec4<f32>(1046f, -110f, 783f, 1000f), -69298i), 1u, vec4<i32>(1i, -19016i, -14703i, i32(-2147483648)), 47085u, vec2<bool>(false, false))), Struct_3(1u, Struct_2(Struct_1(vec4<f32>(415f, -245f, 208f, 147f), 1i), 1u, vec4<i32>(-1i, -1i, 1118i, 1i), 1u, vec2<bool>(false, false))), Struct_3(0u, Struct_2(Struct_1(vec4<f32>(521f, -1178f, 126f, 440f), -19175i), 32607u, vec4<i32>(2147483647i, i32(-2147483648), -12286i, 5231i), 82365u, vec2<bool>(false, true))));

var<private> global1: vec3<i32>;

var<private> global2: vec4<u32> = vec4<u32>(0u, 63631u, 6086u, 4294967295u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: vec4<i32>) -> u32 {
    var var_0 = countOneBits(55880u);
    let var_1 = any(select(select(vec3<bool>(true, all(vec2<bool>(false, true)), all(vec2<bool>(false, true))), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), select(vec3<bool>(all(vec3<bool>(true, true, false)), true, all(vec4<bool>(true, false, false, false))), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), 2147483647i > arg_1.x), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), true))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), u_input.b.x), _wgslsmith_mult_u32(~_wgslsmith_add_u32(abs(42232u), global2.x), ~u_input.a), vec4<i32>(countOneBits(countOneBits(firstTrailingBit(-7782i))), _wgslsmith_sub_i32(reverseBits(1i), arg_1.x), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-13122i, -13188i), vec2<i32>(-2147483647i, global1.x)), global1.x), select(vec2<i32>(global1.x, 29015i), vec2<i32>(u_input.d.x, -20375i), vec2<bool>(var_1, true)) | reverseBits(global1.zx)), min(19708i, abs(arg_1.x & -28975i))), ~(_wgslsmith_mod_u32(1u << (global2.x % 32u), 0u) | global2.x), vec2<bool>(!var_1, any(vec3<bool>(var_1, var_1, arg_0 < arg_0))));
    var var_3 = (global2.zx | reverseBits(~vec2<u32>(21012u, 4294967295u))) ^ vec2<u32>(0u, _wgslsmith_mod_u32(4294967295u, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), global2.wx))));
    var var_4 = Struct_2(var_2.a, ~(~firstLeadingBit(_wgslsmith_mult_u32(4294967295u, 0u))), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(arg_1.x, 1i)), -vec2<i32>(global1.x, var_2.c.x)), u_input.d.x, _wgslsmith_dot_vec3_i32(arg_1.xzw, vec3<i32>(-24453i, 1i, global1.x) ^ u_input.b.yyx), min(u_input.b.x, -12306i | u_input.c.x)), arg_1), max(54136u, reverseBits(var_3.x >> (28659u % 32u))) >> (~abs(1u) % 32u), !var_2.e);
    return ~global2.x;
}

fn func_2() -> vec3<i32> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-645f, 552f, -1057f, -278f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-297f, 200f, -1396f, 2119f)))), vec4<f32>(143f, 752f, _wgslsmith_f_op_f32(f32(-1f) * -1318f), 621f))), -1i), ~firstTrailingBit(~reverseBits(u_input.a)), _wgslsmith_mult_vec4_i32(u_input.c, firstTrailingBit(vec4<i32>(1i, 1i, 2147483647i, -790i)) | vec4<i32>(u_input.b.x, -1i, 18650i, 14167i)) << (select(vec4<u32>(u_input.a, 51185u, func_3(48906u, vec4<i32>(global1.x, global1.x, -4929i, u_input.d.x)), global2.x), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, global2.x, global2.x, u_input.a), vec4<u32>(1u, global2.x, 37680u, global2.x)), all(select(vec2<bool>(false, false), vec2<bool>(false, false), true))) % vec4<u32>(32u)), 39263u, vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))) || true, true));
    global0 = array<Struct_3, 27>();
    global2 = min(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, ~1u, 4294967295u, abs(19513u)), select(vec4<u32>(127407u, var_0.d, var_0.d, 4294967295u), vec4<u32>(u_input.a, 0u, global2.x, var_0.d), var_0.a.b != 0i)), countOneBits(vec4<u32>(func_3(countOneBits(36686u), vec4<i32>(-1i, global1.x, u_input.b.x, global1.x)), u_input.a, u_input.a, min(17776u, global2.x) ^ (var_0.b ^ 5776u))));
    let var_1 = var_0.c;
    var var_2 = !select(select(select(!vec4<bool>(var_0.e.x, var_0.e.x, var_0.e.x, var_0.e.x), !vec4<bool>(true, var_0.e.x, false, var_0.e.x), var_0.e.x), !select(vec4<bool>(var_0.e.x, true, var_0.e.x, var_0.e.x), vec4<bool>(true, true, true, var_0.e.x), var_0.e.x), !(!vec4<bool>(var_0.e.x, var_0.e.x, true, var_0.e.x))), select(!(!vec4<bool>(true, false, var_0.e.x, var_0.e.x)), vec4<bool>(var_0.e.x, true, all(vec3<bool>(false, var_0.e.x, true)), all(vec2<bool>(var_0.e.x, false))), select(vec4<bool>(var_0.e.x, var_0.e.x, var_0.e.x, var_0.e.x), vec4<bool>(true, var_0.e.x, var_0.e.x, true), any(vec3<bool>(var_0.e.x, var_0.e.x, var_0.e.x)))), select(vec4<bool>(true, var_0.e.x || true, any(vec4<bool>(var_0.e.x, false, true, false)), var_0.e.x), vec4<bool>(true, any(var_0.e), all(vec3<bool>(var_0.e.x, true, var_0.e.x)), var_0.e.x), true));
    return var_1.wwy;
}

fn func_1(arg_0: i32, arg_1: f32) -> bool {
    global1 = select(~(func_2() | firstLeadingBit(vec3<i32>(-39294i, global1.x, -1i))), u_input.b.xww, true);
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(856f, arg_1, 2329f, -173f)))))), 0i), global2.x, -firstTrailingBit(vec4<i32>(-44169i, i32(-1i) * -2147483647i, _wgslsmith_add_i32(2147483647i, global1.x), arg_0)), _wgslsmith_dot_vec3_u32(~select(vec3<u32>(4294967295u, 38661u, 53959u), vec3<u32>(30984u, global2.x, global2.x), false) << (min(vec3<u32>(1u, u_input.a, u_input.a) | vec3<u32>(global2.x, 42764u, 13477u), vec3<u32>(u_input.a, u_input.a, global2.x)) % vec3<u32>(32u)), ~firstTrailingBit(firstLeadingBit(vec3<u32>(global2.x, 0u, 2125u)))), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true)), false));
    let var_1 = var_0;
    var var_2 = 1u;
    var var_3 = global0[_wgslsmith_index_u32(44479u, 27u)];
    return var_0.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = countOneBits(vec3<i32>(~(-22113i), -(~0i), countOneBits(~_wgslsmith_dot_vec2_i32(global1.zx, u_input.b.yy))));
    global0 = array<Struct_3, 27>();
    let var_0 = vec4<bool>(select(true, ~(global2.x & 0u) >= min(~u_input.a, u_input.a), !func_1(_wgslsmith_add_i32(0i, global1.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), true && any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), true)), u_input.a > _wgslsmith_mult_u32(~(~1u), global2.x), true);
    let var_1 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1064f), _wgslsmith_f_op_f32(max(-811f, 621f))), _wgslsmith_div_f32(310f, _wgslsmith_f_op_f32(sign(-440f))), _wgslsmith_f_op_f32(f32(-1f) * -378f), 143f), 40005i), 10147u, (-u_input.c >> (min(vec4<u32>(42632u, 64077u, 1u, 23279u), abs(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))) % vec4<u32>(32u))) | -u_input.b, func_3(global2.x, abs(vec4<i32>(14383i, global1.x, global1.x, u_input.d.x)) << (firstTrailingBit(vec4<u32>(global2.x, u_input.a, 90969u, u_input.a)) % vec4<u32>(32u))), vec2<bool>(all(!var_0.wxy), true));
    let var_2 = _wgslsmith_add_u32(52157u >> (~(abs(1u) ^ global2.x) % 32u), u_input.a);
    var var_3 = global2.x;
    global1 = vec3<i32>(countOneBits(10669i), global1.x, var_1.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(var_1.a.b, _wgslsmith_dot_vec3_i32(min(vec3<i32>(-27611i, -2147483647i, var_1.a.b), vec3<i32>(54918i, u_input.c.x, -2147483647i)), u_input.c.yyx) ^ (abs(32210i) ^ -global1.x)));
}

