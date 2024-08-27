struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 10> = array<vec3<u32>, 10>(vec3<u32>(0u, 4294967295u, 30441u), vec3<u32>(0u, 10462u, 14462u), vec3<u32>(0u, 44084u, 36096u), vec3<u32>(19105u, 4294967295u, 4294967295u), vec3<u32>(59759u, 84330u, 102323u), vec3<u32>(0u, 4294967295u, 61115u), vec3<u32>(102921u, 28163u, 17074u), vec3<u32>(30704u, 0u, 69840u), vec3<u32>(66834u, 73775u, 38612u), vec3<u32>(4294967295u, 0u, 6510u));

var<private> global1: array<Struct_3, 30>;

var<private> global2: vec2<f32>;

var<private> global3: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(Struct_1(vec3<f32>(1000f, -2017f, -709f)), vec3<u32>(0u, 79607u, 53454u), Struct_1(vec3<f32>(688f, -286f, 353f))), Struct_2(Struct_1(vec3<f32>(466f, -751f, -446f)), vec3<u32>(1u, 4294967295u, 78679u), Struct_1(vec3<f32>(-1950f, -1000f, 1370f))), Struct_2(Struct_1(vec3<f32>(-197f, 212f, -292f)), vec3<u32>(56065u, 4294967295u, 68558u), Struct_1(vec3<f32>(249f, -1535f, 638f))), Struct_2(Struct_1(vec3<f32>(207f, 283f, 1065f)), vec3<u32>(1u, 4294967295u, 15426u), Struct_1(vec3<f32>(1351f, -596f, 2004f))), Struct_2(Struct_1(vec3<f32>(-1000f, 668f, -315f)), vec3<u32>(0u, 33665u, 1u), Struct_1(vec3<f32>(911f, -792f, -1220f))), Struct_2(Struct_1(vec3<f32>(-1224f, -1162f, 1458f)), vec3<u32>(0u, 0u, 0u), Struct_1(vec3<f32>(-580f, -2131f, -283f))), Struct_2(Struct_1(vec3<f32>(-1710f, -1000f, -378f)), vec3<u32>(0u, 1u, 0u), Struct_1(vec3<f32>(-3148f, 1552f, 1493f))), Struct_2(Struct_1(vec3<f32>(-1372f, 232f, -945f)), vec3<u32>(0u, 1u, 0u), Struct_1(vec3<f32>(1066f, -579f, 1917f))), Struct_2(Struct_1(vec3<f32>(-1546f, 917f, -228f)), vec3<u32>(11023u, 0u, 0u), Struct_1(vec3<f32>(201f, -370f, 718f))), Struct_2(Struct_1(vec3<f32>(1000f, 528f, -602f)), vec3<u32>(1u, 1u, 1u), Struct_1(vec3<f32>(-1845f, -139f, -2145f))), Struct_2(Struct_1(vec3<f32>(-242f, 506f, 201f)), vec3<u32>(41034u, 4294967295u, 8600u), Struct_1(vec3<f32>(-1000f, 1034f, 1586f))), Struct_2(Struct_1(vec3<f32>(-1238f, 1333f, -123f)), vec3<u32>(43790u, 15351u, 5061u), Struct_1(vec3<f32>(-1523f, -1227f, 2030f))), Struct_2(Struct_1(vec3<f32>(-1120f, -1035f, 1453f)), vec3<u32>(4294967295u, 4294967295u, 2452u), Struct_1(vec3<f32>(-444f, 679f, 527f))), Struct_2(Struct_1(vec3<f32>(-481f, 165f, 634f)), vec3<u32>(1074u, 1956u, 4294967295u), Struct_1(vec3<f32>(1000f, -711f, 1339f))), Struct_2(Struct_1(vec3<f32>(-373f, -1513f, -1000f)), vec3<u32>(3969u, 31130u, 25948u), Struct_1(vec3<f32>(485f, 152f, -899f))), Struct_2(Struct_1(vec3<f32>(-1259f, -1350f, 511f)), vec3<u32>(4294967295u, 0u, 0u), Struct_1(vec3<f32>(1354f, 804f, 1670f))), Struct_2(Struct_1(vec3<f32>(1938f, -972f, -842f)), vec3<u32>(67208u, 39940u, 4294967295u), Struct_1(vec3<f32>(1044f, 1000f, -428f))), Struct_2(Struct_1(vec3<f32>(780f, 567f, -2050f)), vec3<u32>(4294967295u, 21483u, 4294967295u), Struct_1(vec3<f32>(502f, 1277f, 343f))), Struct_2(Struct_1(vec3<f32>(217f, 2140f, 1476f)), vec3<u32>(35001u, 4294967295u, 4294967295u), Struct_1(vec3<f32>(450f, -2080f, 1263f))));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(373f, global2.x, global2.x), vec3<f32>(370f, global2.x, -452f)))), vec3<f32>(295f, global2.x, -328f))), firstTrailingBit(global0[_wgslsmith_index_u32(min(~4294967295u, max(u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 88326u))), 10u)]), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(abs(2481f)), _wgslsmith_f_op_f32(-global2.x), 544f)))));
    var var_1 = u_input.d;
    let var_2 = ~(vec4<i32>(-1i) * -firstLeadingBit(-vec4<i32>(-2147483647i, var_1.x, 0i, -2147483647i)));
    global0 = array<vec3<u32>, 10>();
    let var_3 = var_2.x;
    return _wgslsmith_add_u32(var_0.b.x, u_input.b);
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: bool) -> i32 {
    var var_0 = vec4<u32>(4294967295u, u_input.a.x, 67247u, _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, arg_1.b.x, 4294967295u, u_input.b), vec4<u32>(arg_1.b.x, 47871u, 1u, 56521u) | vec4<u32>(1u, 4294967295u, u_input.b, 4294967295u)), u_input.b));
    var_0 = ~_wgslsmith_div_vec4_u32(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 0u, arg_1.b.x, 1u), vec4<u32>(5570u, u_input.b, 26026u, 1u), vec4<u32>(1u, 1736u, 1u, arg_1.b.x))), vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(14727u, u_input.b, u_input.a.x, 4294967295u), vec4<u32>(4294967295u, var_0.x, var_0.x, 4294967295u)), _wgslsmith_clamp_u32(4294967295u, arg_1.b.x, ~16823u), u_input.b & ~arg_1.b.x, 35713u));
    var var_1 = global1[_wgslsmith_index_u32(u_input.a.x, 30u)];
    var var_2 = arg_1.b.x;
    var_2 = func_3();
    return -10088i;
}

fn func_1() -> Struct_2 {
    var var_0 = 4294967295u;
    var var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(~firstLeadingBit(countOneBits(u_input.c)), ~(func_2(6186i, Struct_2(Struct_1(vec3<f32>(global2.x, global2.x, global2.x)), vec3<u32>(u_input.b, 56798u, u_input.a.x), Struct_1(vec3<f32>(global2.x, global2.x, 1441f))), true) & select(18458i, u_input.d.x, true)), u_input.d.x, reverseBits(-71502i)), ~_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(4825i, u_input.d.x, 0i, -28237i)), ~vec4<i32>(-44938i, -41481i, 32455i, u_input.c)) >> (~vec4<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.a.x, 1u), ~56258u, u_input.a.x, abs(71317u)) % vec4<u32>(32u)));
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(~23605u << (u_input.b % 32u), u_input.b, u_input.b, countOneBits(u_input.b) >> (~38093u % 32u)), firstLeadingBit(firstTrailingBit(max(vec4<u32>(4294967295u, u_input.a.x, u_input.b, 4294967295u), vec4<u32>(36205u, u_input.a.x, 4294967295u, u_input.b))))), ~(vec4<u32>(1u, 18542u, _wgslsmith_div_u32(1u, 4294967295u), ~1u) & countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 4657u, 10707u, 0u), vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, u_input.b))))), 19u)];
    var_1 = _wgslsmith_div_vec4_i32(abs(~(vec4<i32>(1i, 0i, var_1.x, u_input.c) >> (vec4<u32>(0u, 43292u, u_input.b, 69235u) % vec4<u32>(32u)))) & ((_wgslsmith_add_vec4_i32(vec4<i32>(-1i, var_1.x, u_input.c, 36230i), vec4<i32>(-2147483647i, -52602i, var_1.x, u_input.d.x)) ^ ~vec4<i32>(1i, 1i, -1i, u_input.c)) << (min(select(vec4<u32>(4294967295u, 35494u, 70516u, 0u), vec4<u32>(var_2.b.x, 4294967295u, u_input.a.x, 1u), false), vec4<u32>(19147u, 0u, 4294967295u, 2854u)) % vec4<u32>(32u))), vec4<i32>(~(~32833i), u_input.c, _wgslsmith_mod_i32(1i, -var_1.x) << (~_wgslsmith_add_u32(78552u, 1u) % 32u), -58502i));
    let var_3 = Struct_4(Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-1f)), var_2.a));
    return global3[_wgslsmith_index_u32(~(var_2.b.x << (_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a.x, ~var_2.b.x, select(u_input.b, var_2.b.x, false)), ~var_2.b.x) % 32u)), 19u)];
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec3<i32>) -> vec3<u32> {
    var var_0 = global1[_wgslsmith_index_u32(arg_1.b.x, 30u)];
    var var_1 = global1[_wgslsmith_index_u32(u_input.b, 30u)];
    var var_2 = var_0.b.a;
    var var_3 = !select(vec4<bool>(true, true, false, !select(true, false, true)), select(vec4<bool>(true, all(vec4<bool>(false, true, true, true)), true, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), true), !all(vec4<bool>(true, false, false, false))), !all(vec2<bool>(true, true)));
    var_3 = select(!vec4<bool>(var_3.x, true, var_3.x, all(vec4<bool>(var_3.x, var_3.x, true, var_3.x))), select(vec4<bool>(true, var_3.x | !var_3.x, !any(var_3.xzy), true), vec4<bool>(any(select(vec4<bool>(true, var_3.x, var_3.x, var_3.x), vec4<bool>(var_3.x, true, var_3.x, false), vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x))), false, !all(vec4<bool>(var_3.x, false, var_3.x, var_3.x)), false), all(select(vec2<bool>(true, true), vec2<bool>(true, var_3.x), vec2<bool>(true, var_3.x))) || false), any(var_3.xxz));
    return global0[_wgslsmith_index_u32(u_input.a.x, 10u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec2<f32>(-605f, _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1295f)), 215f))));
    let var_0 = global1[_wgslsmith_index_u32(~u_input.a.x, 30u)];
    global3 = array<Struct_2, 19>();
    global2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-299f, 175f) * _wgslsmith_f_op_vec2_f32(-var_0.a))));
    let var_1 = max(func_4(reverseBits(firstTrailingBit(vec3<i32>(u_input.c, -8710i, 2147483647i))), func_1(), -vec3<i32>(u_input.c, -56929i, abs(u_input.d.x))), _wgslsmith_mult_vec3_u32(reverseBits(global0[_wgslsmith_index_u32(27803u, 10u)]), vec3<u32>(1u, ~0u, u_input.a.x)));
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(773f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -521f)))), func_1().c);
    global1 = array<Struct_3, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.a, _wgslsmith_div_vec4_u32(vec4<u32>(1u, ~func_3(), 1u, var_1.x), countOneBits(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 0u), var_1.xx), u_input.a.x, func_3(), max(var_1.x, var_1.x)))));
}

