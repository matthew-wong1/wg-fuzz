struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 22>;

var<private> global1: vec2<u32>;

var<private> global2: array<Struct_1, 11>;

var<private> global3: array<f32, 16> = array<f32, 16>(-184f, 1361f, 107f, 433f, 846f, 1206f, 1000f, 968f, 160f, 257f, 964f, -792f, 1322f, -507f, -499f, -1533f);

var<private> global4: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(Struct_3(vec2<i32>(2655i, 2147483647i)), Struct_3(vec2<i32>(-44761i, 2147483647i))), Struct_4(Struct_3(vec2<i32>(2147483647i, 2147483647i)), Struct_3(vec2<i32>(0i, 2147483647i))), Struct_4(Struct_3(vec2<i32>(36383i, 2147483647i)), Struct_3(vec2<i32>(1i, -1i))), Struct_4(Struct_3(vec2<i32>(-1i, 30380i)), Struct_3(vec2<i32>(2147483647i, 10329i))), Struct_4(Struct_3(vec2<i32>(i32(-2147483648), -13660i)), Struct_3(vec2<i32>(i32(-2147483648), 0i))), Struct_4(Struct_3(vec2<i32>(-1i, -1i)), Struct_3(vec2<i32>(0i, -13142i))), Struct_4(Struct_3(vec2<i32>(-7782i, -1i)), Struct_3(vec2<i32>(34606i, -30303i))), Struct_4(Struct_3(vec2<i32>(52068i, 14047i)), Struct_3(vec2<i32>(28256i, -29338i))), Struct_4(Struct_3(vec2<i32>(17299i, i32(-2147483648))), Struct_3(vec2<i32>(-11621i, i32(-2147483648)))), Struct_4(Struct_3(vec2<i32>(2147483647i, 2147483647i)), Struct_3(vec2<i32>(-1i, 14347i))), Struct_4(Struct_3(vec2<i32>(2147483647i, 48710i)), Struct_3(vec2<i32>(-28484i, 0i))), Struct_4(Struct_3(vec2<i32>(2147483647i, 27087i)), Struct_3(vec2<i32>(42374i, 44634i))), Struct_4(Struct_3(vec2<i32>(32180i, -19635i)), Struct_3(vec2<i32>(-82512i, -24271i))), Struct_4(Struct_3(vec2<i32>(-1i, -1i)), Struct_3(vec2<i32>(0i, -1i))), Struct_4(Struct_3(vec2<i32>(-15724i, -1i)), Struct_3(vec2<i32>(3664i, 1i))), Struct_4(Struct_3(vec2<i32>(1i, 15869i)), Struct_3(vec2<i32>(i32(-2147483648), 57793i))), Struct_4(Struct_3(vec2<i32>(i32(-2147483648), -382i)), Struct_3(vec2<i32>(-45147i, 1i))), Struct_4(Struct_3(vec2<i32>(-1i, 2147483647i)), Struct_3(vec2<i32>(19019i, 42253i))), Struct_4(Struct_3(vec2<i32>(-43439i, -74320i)), Struct_3(vec2<i32>(-22936i, 13637i))), Struct_4(Struct_3(vec2<i32>(41387i, 0i)), Struct_3(vec2<i32>(-32419i, -38750i))), Struct_4(Struct_3(vec2<i32>(-16350i, -8803i)), Struct_3(vec2<i32>(-5957i, -20049i))), Struct_4(Struct_3(vec2<i32>(i32(-2147483648), 38246i)), Struct_3(vec2<i32>(1i, -12154i))), Struct_4(Struct_3(vec2<i32>(-27058i, i32(-2147483648))), Struct_3(vec2<i32>(-71283i, i32(-2147483648)))), Struct_4(Struct_3(vec2<i32>(8841i, -41279i)), Struct_3(vec2<i32>(1i, i32(-2147483648)))), Struct_4(Struct_3(vec2<i32>(17398i, -1i)), Struct_3(vec2<i32>(-9395i, 2147483647i))));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    let var_0 = vec3<i32>(_wgslsmith_sub_i32(-u_input.a, ~(~(~u_input.a))), ~(i32(-1i) * -(~(-50376i))), u_input.a);
    global0 = array<Struct_4, 22>();
    var var_1 = _wgslsmith_dot_vec2_i32(select(var_0.yz, vec2<i32>(~firstLeadingBit(2147483647i), u_input.a ^ ~(-1i)), (global3[_wgslsmith_index_u32(~global1.x, 16u)] <= global3[_wgslsmith_index_u32(22442u, 16u)]) && (-17599i == (var_0.x | var_0.x))), var_0.yx);
    var var_2 = global4[_wgslsmith_index_u32(0u, 25u)];
    var var_3 = abs(~global1.x);
    return reverseBits(4294967295u);
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_4 {
    global2 = array<Struct_1, 11>();
    var var_0 = _wgslsmith_add_u32(~arg_1, ~func_3());
    var var_1 = Struct_1(!select(arg_3.a, !(!arg_2.a), !vec4<bool>(false, false, arg_3.a.x, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_2.b)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(301f, global3[_wgslsmith_index_u32(arg_1, 16u)])))));
    global1 = vec2<u32>(arg_1, select(arg_1 & arg_1, 1u, all(vec4<bool>(any(vec2<bool>(arg_3.a.x, false)), !arg_2.a.x, !arg_2.a.x, !arg_2.a.x))));
    var var_2 = ~vec4<u32>(firstLeadingBit(~countOneBits(global1.x)), abs(~reverseBits(31298u)), ~12456u, reverseBits(_wgslsmith_sub_u32(firstTrailingBit(20967u), ~arg_1)));
    return global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(~1u), firstTrailingBit(_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 14138u, arg_1, 14363u), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_2.x, 44880u, global1.x), vec4<u32>(4294967295u, 51452u, 19284u, 9994u))), abs(~94835u)))), 25u)];
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: vec3<f32>, arg_3: vec4<i32>) -> f32 {
    var var_0 = func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1124f), _wgslsmith_f_op_f32(max(-641f, arg_2.x)))), arg_2.x, 469f, 685f)), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, _wgslsmith_sub_u32(global1.x, 52182u)), reverseBits(arg_1)) & global1.x, Struct_1(!(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec2_f32(exp2(arg_2.yy))), global2[_wgslsmith_index_u32(arg_1.x, 11u)]);
    var var_1 = Struct_4(func_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-895f, -2101f, 729f, -1155f))))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, global1.x), ~arg_1), Struct_1(vec4<bool>(all(arg_0), arg_0.x, all(vec3<bool>(true, arg_0.x, true)), 999f > arg_2.x), _wgslsmith_f_op_vec2_f32(min(arg_2.zx, vec2<f32>(1000f, global3[_wgslsmith_index_u32(arg_1.x, 16u)])))), global2[_wgslsmith_index_u32(23629u, 11u)]).a, func_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global3[_wgslsmith_index_u32(0u, 16u)], global3[_wgslsmith_index_u32(14181u, 16u)], -930f, global3[_wgslsmith_index_u32(37184u, 16u)]))))), global1.x, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(global1.x, arg_1.x, global1.x)), ~vec3<u32>(4294967295u, global1.x, global1.x)) & arg_1.x, 11u)], Struct_1(select(vec4<bool>(true, arg_0.x, false, false), vec4<bool>(false, false, false, true), all(vec4<bool>(true, false, arg_0.x, arg_0.x))), vec2<f32>(542f, arg_2.x))).b);
    global4 = array<Struct_4, 25>();
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1325f, global3[_wgslsmith_index_u32(arg_1.x, 16u)], 1043f, 204f), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, global3[_wgslsmith_index_u32(global1.x, 16u)], -416f, global3[_wgslsmith_index_u32(1u, 16u)]) * vec4<f32>(921f, 1000f, 781f, 647f)), vec4<bool>(true, false, arg_0.x, true))))), vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-848f * arg_2.x), global3[_wgslsmith_index_u32(0u, 16u)], arg_2.x), select(4294967295u > (1u << (global1.x % 32u)), !arg_0.x & true, all(arg_0)))), ~24841u, Struct_1(vec4<bool>(!arg_0.x & !arg_0.x, false, true, arg_0.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_2.zz), arg_2.xy, true))), Struct_1(select(!select(vec4<bool>(true, arg_0.x, false, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), vec4<bool>(any(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), true, true, true), vec4<bool>(arg_0.x, false, arg_0.x, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.xz - arg_2.zz))))).a;
    global0 = array<Struct_4, 22>();
    return -1447f;
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: vec2<u32>, arg_3: vec4<f32>) -> vec2<f32> {
    let var_0 = 17376i;
    let var_1 = Struct_3(-firstLeadingBit(-vec2<i32>(25088i, 9812i)));
    global0 = array<Struct_4, 22>();
    let var_2 = vec3<bool>(false, !(_wgslsmith_add_i32(var_1.a.x, firstLeadingBit(u_input.a)) == var_1.a.x), any(vec2<bool>(true, false)));
    var var_3 = min(1i >> (reverseBits(~arg_2.x) % 32u), u_input.a) << (~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(15282u, global1.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, arg_2.x) ^ arg_2, vec2<u32>(global1.x, 18325u))) % 32u);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0)) + -1352f), arg_0) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(arg_3.xy * vec2<f32>(global3[_wgslsmith_index_u32(arg_2.x, 16u)], arg_0))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.zy)), vec2<f32>(-721f, _wgslsmith_f_op_f32(231f - 2235f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1.x, -1962f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec3<f32>(182f, _wgslsmith_f_op_f32(f32(-1f) * -608f), global3[_wgslsmith_index_u32(max(50301u, global1.x), 16u)]), Struct_1(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true))), _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(func_1(select(vec2<bool>(false, true), vec2<bool>(false, false), true), _wgslsmith_sub_vec2_u32(vec2<u32>(global1.x, global1.x), vec2<u32>(23272u, global1.x)), vec3<f32>(global3[_wgslsmith_index_u32(0u, 16u)], -800f, global3[_wgslsmith_index_u32(39557u, 16u)]), -vec4<i32>(u_input.a, u_input.a, -1i, -32138i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(global1.x, 16u)], global3[_wgslsmith_index_u32(50829u, 16u)], -640f))), vec2<u32>(firstLeadingBit(43923u), 0u), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-300f, -1000f, 410f, 1000f))))))), global2[_wgslsmith_index_u32(select(_wgslsmith_div_u32(select(~global1.x, ~0u, global1.x < global1.x), ~0u), _wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(global1.x, 1u, global1.x, global1.x), vec4<u32>(global1.x, 23691u, 19610u, global1.x))), ~countOneBits(vec4<u32>(58131u, global1.x, global1.x, global1.x))), true), 11u)], abs(~(-countOneBits(-20923i))), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(~19658u, 16u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-287f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1352f)), -1079f))));
    global2 = array<Struct_1, 11>();
    global3 = array<f32, 16>();
    let var_1 = select(vec4<bool>(false, var_0.b.a.x, select(any(var_0.c.a.wz), true, select(var_0.b.a.x, var_0.b.a.x & true, var_0.b.a.x != var_0.c.a.x)), var_0.c.a.x), var_0.b.a, vec4<bool>(true, !(!any(var_0.c.a.xw)), all(!vec4<bool>(false, var_0.c.a.x, var_0.b.a.x, var_0.c.a.x)), false));
    let var_2 = Struct_3((vec2<i32>(-u_input.a, _wgslsmith_mod_i32(1i, 25711i)) ^ vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, u_input.a), vec3<i32>(u_input.a, 24284i, 0i)), var_0.d)) << (~(~vec2<u32>(global1.x, global1.x)) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(4294967295u, 1u, 4294967295u) | ~select(~vec3<u32>(4294967295u, 56748u, 64297u), ~vec3<u32>(1u, 8197u, global1.x), var_1.wzy), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3[_wgslsmith_index_u32(global1.x, 16u)], 256f, global3[_wgslsmith_index_u32(0u, 16u)])))) + var_0.a), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(global1.x, 37632u, 20278u), _wgslsmith_add_vec3_u32(vec3<u32>(global1.x, 1u, global1.x) | vec3<u32>(0u, 62216u, global1.x), vec3<u32>(4294967295u, 1u, global1.x))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(208f, _wgslsmith_f_op_f32(1153f * 1297f)), var_0.c.b, var_0.c.a.yw)), _wgslsmith_clamp_u32(_wgslsmith_div_u32(min(_wgslsmith_add_u32(global1.x, 0u), max(global1.x, global1.x)), global1.x), 0u, global1.x << ((0u << (_wgslsmith_mult_u32(1u, global1.x) % 32u)) % 32u)));
}

