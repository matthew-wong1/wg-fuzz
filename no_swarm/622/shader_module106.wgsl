struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: vec2<bool>,
    d: u32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_2,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec3<bool>, 25>;

var<private> global2: array<vec4<f32>, 22> = array<vec4<f32>, 22>(vec4<f32>(789f, -210f, -1113f, -871f), vec4<f32>(-857f, 330f, -2154f, 1835f), vec4<f32>(2183f, 1764f, -744f, -246f), vec4<f32>(-427f, -1536f, 1051f, -551f), vec4<f32>(310f, -440f, 1408f, -423f), vec4<f32>(461f, -197f, -315f, 381f), vec4<f32>(2697f, -1112f, 2451f, 410f), vec4<f32>(-925f, 1156f, 585f, 1578f), vec4<f32>(-1029f, -232f, 1000f, -1444f), vec4<f32>(-730f, 1347f, 1721f, -1102f), vec4<f32>(983f, -1429f, 1982f, -1632f), vec4<f32>(-627f, 274f, -294f, -580f), vec4<f32>(-125f, -314f, -231f, 883f), vec4<f32>(-662f, -989f, 1023f, 1254f), vec4<f32>(-1421f, -111f, -506f, -891f), vec4<f32>(1000f, -418f, 211f, -2302f), vec4<f32>(559f, 577f, 372f, 1383f), vec4<f32>(-1785f, 1000f, -280f, -1246f), vec4<f32>(-442f, 226f, 141f, -879f), vec4<f32>(1341f, -219f, 824f, 1983f), vec4<f32>(-751f, 242f, 448f, -1669f), vec4<f32>(238f, 2040f, -1514f, 947f));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: bool) -> bool {
    var var_0 = arg_2;
    global2 = array<vec4<f32>, 22>();
    let var_1 = select(!global1[_wgslsmith_index_u32(4294967295u, 25u)], global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 1u, u_input.a), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, arg_0, 16420u), vec3<u32>(1u, 4294967295u, arg_1))), abs(firstLeadingBit(vec3<u32>(arg_0, arg_1, 4294967295u))))), 25u)], any(select(!(!vec4<bool>(false, false, arg_2, arg_2)), !select(vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(arg_2, false, false, arg_2), arg_2), !(!vec4<bool>(arg_2, true, arg_2, true)))));
    return var_1.x;
}

fn func_2() -> Struct_4 {
    var var_0 = ~(~(~vec2<u32>(1u, min(1u, 1u))));
    global1 = array<vec3<bool>, 25>();
    var var_1 = vec3<bool>(all(vec2<bool>(true, true)), any(vec2<bool>(func_3(_wgslsmith_mult_u32(var_0.x, 33917u), u_input.a, true), true)), true);
    global1 = array<vec3<bool>, 25>();
    var var_2 = Struct_1(2147483647i, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-913f + _wgslsmith_f_op_f32(-1539f * 287f)))))), -1047f, abs(_wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, 1i) >> (vec3<u32>(19607u, 4294967295u, u_input.a) % vec3<u32>(32u)), -min(vec3<i32>(-41557i, 42763i, -27065i), vec3<i32>(-93i, 0i, 4891i)))));
    return Struct_4(vec2<u32>(u_input.a >> ((29693u & var_0.x) % 32u), ~(~var_0.x)), ~firstTrailingBit(13315i), _wgslsmith_div_vec2_u32((~vec2<u32>(u_input.b, 66452u) | ~vec2<u32>(4294967295u, 47015u)) & vec2<u32>(~1u, u_input.a), vec2<u32>(u_input.a, ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, 0u)))), 4294967295u);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1) -> Struct_5 {
    global2 = array<vec4<f32>, 22>();
    let var_0 = -384f;
    return Struct_5(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) - arg_1.b)), Struct_2((_wgslsmith_mult_vec4_i32(vec4<i32>(-5796i, 50493i, arg_1.a, arg_0.b), vec4<i32>(arg_1.a, -27451i, arg_1.a, -1i)) & -vec4<i32>(4816i, 2977i, 2147483647i, 2147483647i)) << (vec4<u32>(arg_0.d, 0u | arg_0.a.x, ~0u, arg_0.d << (1u % 32u)) % vec4<u32>(32u)), -678f, vec2<bool>(any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))), true), _wgslsmith_div_u32(_wgslsmith_sub_u32(reverseBits(arg_0.d), 4294967295u), ~arg_0.c.x)), Struct_2(_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(-25281i, arg_0.b, -2147483647i, 1i)), abs(vec4<i32>(1i, 0i, arg_0.b, arg_0.b))) ^ firstLeadingBit(vec4<i32>(0i, arg_1.d.x, arg_0.b, arg_1.a) >> (vec4<u32>(arg_0.a.x, arg_0.d, arg_0.c.x, 4294967295u) % vec4<u32>(32u))), _wgslsmith_f_op_f32(sign(arg_1.c)), vec2<bool>(true | func_3(0u, 1u, true), func_3(countOneBits(arg_0.a.x), ~0u, true)), arg_0.a.x), -50173i != max(-2147483647i, select(~2147483647i, 0i, true)), 4294967295u);
}

fn func_1(arg_0: u32) -> i32 {
    global2 = array<vec4<f32>, 22>();
    let var_0 = max(_wgslsmith_add_u32(arg_0, ~13558u), _wgslsmith_add_u32(arg_0, _wgslsmith_div_u32(~arg_0, 167815u))) >> (arg_0 % 32u);
    var var_1 = func_4(func_2(), Struct_1(select(-2147483647i, max(-2147483647i, -2147483647i) ^ _wgslsmith_clamp_i32(16877i, 0i, -40594i), _wgslsmith_dot_vec2_u32(vec2<u32>(4842u, arg_0), vec2<u32>(var_0, 0u)) <= ~arg_0), 476f, 1f, vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(vec3<i32>(-33608i, 10787i, -3628i), vec3<i32>(-1i, -2147483647i, 1i), vec3<i32>(45195i, -2147483647i, -7682i))));
    var var_2 = vec3<bool>(var_1.c.c.x, true, true);
    var var_3 = !any(global1[_wgslsmith_index_u32(u_input.b, 25u)]);
    return -func_2().b;
}

fn func_5(arg_0: i32) -> Struct_2 {
    let var_0 = !select(select(vec4<bool>(true, -18530i >= arg_0, true, arg_0 < -30503i), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false)), any(global1[_wgslsmith_index_u32(0u, 25u)])), false), !vec4<bool>(all(vec2<bool>(true, false)), true, true, any(vec3<bool>(true, false, true))), any(select(select(global1[_wgslsmith_index_u32(u_input.a, 25u)], vec3<bool>(true, true, true), true), vec3<bool>(true, true, false), true)));
    return Struct_2(-(~countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(42349i, arg_0, -37219i, 75350i), vec4<i32>(1i, -2147483647i, -9353i, 1i)))), 957f, select(func_4(Struct_4(vec2<u32>(u_input.b, u_input.a) | vec2<u32>(28872u, u_input.b), arg_0, vec2<u32>(u_input.b, u_input.b), 1u), Struct_1(34026i, _wgslsmith_f_op_f32(step(-1142f, 1291f)), _wgslsmith_f_op_f32(f32(-1f) * -438f), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, -3754i, -2147483647i), vec3<i32>(arg_0, arg_0, arg_0)))).c.c, vec2<bool>(true, (1i <= arg_0) == (arg_0 < arg_0)), vec2<bool>(var_0.x || var_0.x, var_0.x)), _wgslsmith_mod_u32(max(firstTrailingBit(u_input.a), 1u), ~countOneBits(u_input.a) ^ 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!vec4<bool>(true, all(global1[_wgslsmith_index_u32(u_input.a, 25u)]), true, true)));
    let var_1 = func_5(func_1(_wgslsmith_mod_u32(24787u, ~min(u_input.b, 0u))));
    let var_2 = ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 63933u, 4294967295u, min(u_input.a, u_input.a)), vec4<u32>(var_1.d, ~1u, 0u, u_input.b));
    var var_3 = Struct_4(firstTrailingBit(firstTrailingBit(min(_wgslsmith_add_vec2_u32(vec2<u32>(var_1.d, var_1.d), vec2<u32>(u_input.b, 0u)), vec2<u32>(53454u, 3647u)))), 2147483647i, ~_wgslsmith_clamp_vec2_u32(max(_wgslsmith_add_vec2_u32(vec2<u32>(76857u, var_1.d), vec2<u32>(u_input.a, var_2)), _wgslsmith_div_vec2_u32(vec2<u32>(22346u, 2163u), vec2<u32>(3313u, 17050u))), _wgslsmith_mult_vec2_u32(vec2<u32>(var_2, u_input.a), vec2<u32>(var_1.d, var_2)) | vec2<u32>(var_1.d, 1u), ~(~vec2<u32>(8989u, u_input.b))), (~var_1.d | ~_wgslsmith_dot_vec3_u32(vec3<u32>(7001u, 0u, 78213u), vec3<u32>(u_input.b, 21584u, u_input.a))) >> (var_1.d % 32u));
    var var_4 = _wgslsmith_mod_u32(min(1u, ~u_input.a), 1u << (~((u_input.a & var_2) | var_3.d) % 32u));
    let var_5 = Struct_5(func_4(Struct_4(~(~var_3.a), min(var_1.a.x ^ var_1.a.x, ~var_3.b), _wgslsmith_mod_vec2_u32(vec2<u32>(14661u, var_3.a.x), ~var_3.c), 1u), Struct_1(~_wgslsmith_div_i32(2147483647i, 1i), var_1.b, var_1.b, vec3<i32>(5162i, -27793i, 2147483647i) ^ -var_1.a.wxx)).a, func_5(~_wgslsmith_sub_i32(-2147483647i, _wgslsmith_div_i32(var_1.a.x, 2147483647i))), Struct_2(-_wgslsmith_div_vec4_i32(var_1.a, vec4<i32>(-15207i, -3720i, -64945i, var_1.a.x)), var_1.b, select(!func_4(Struct_4(vec2<u32>(var_1.d, 30816u), -62748i, vec2<u32>(u_input.a, 32584u), 4294967295u), Struct_1(var_1.a.x, 672f, 661f, var_1.a.xww)).c.c, func_4(func_2(), Struct_1(12867i, var_1.b, var_1.b, vec3<i32>(var_1.a.x, 34588i, var_3.b))).b.c, true), 15669u & _wgslsmith_dot_vec3_u32(~vec3<u32>(var_2, var_3.d, var_1.d), vec3<u32>(var_3.a.x, var_3.a.x, u_input.a))), true, var_1.d ^ (_wgslsmith_div_u32(countOneBits(4294967295u), _wgslsmith_clamp_u32(4294967295u, u_input.a, 1u)) | ~(var_2 << (var_3.a.x % 32u))));
    var var_6 = var_1.c.x;
    let var_7 = func_4(Struct_4(~(var_3.a >> (vec2<u32>(var_3.d, var_5.c.d) % vec2<u32>(32u))), func_2().b, ~firstLeadingBit(vec2<u32>(u_input.a, 98130u)), _wgslsmith_dot_vec2_u32(firstTrailingBit(~var_3.a), abs(abs(var_3.a)))), Struct_1(_wgslsmith_div_i32(1i, var_5.b.a.x) << (var_2 % 32u), var_5.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_5.b.b)), _wgslsmith_f_op_f32(-2507f * var_1.b), true))), -_wgslsmith_clamp_vec3_i32(~vec3<i32>(var_5.b.a.x, 1i, 0i), var_1.a.yxz, var_5.c.a.yww))).b;
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.c, vec4<u32>(var_5.e, ~_wgslsmith_sub_u32(var_2 << (var_3.c.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(36560u, var_3.a.x, u_input.a), vec3<u32>(u_input.b, var_5.e, 0u))), var_7.d, 0u), func_5(var_5.c.a.x).a.zy, _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(var_7.a, reverseBits(vec4<i32>(0i, 4445i, var_3.b, -31128i))), i32(-1i) * -var_1.a.x, abs(i32(-1i) * -5944i)), ~(~select(var_1.a.xyz, vec3<i32>(2147483647i, 1i, 1i), vec3<bool>(var_5.c.c.x, true, true))), vec3<i32>(-var_3.b, 1i, var_1.a.x)), var_7.b);
}

