struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: Struct_2,
    d: vec3<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: bool,
    d: vec4<f32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: array<Struct_2, 16>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>) -> vec4<f32> {
    let var_0 = _wgslsmith_add_u32(countOneBits(reverseBits(abs(863u))), arg_0.x);
    var var_1 = _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(~(~vec4<u32>(var_0, 1u, arg_0.x, 11347u)), ~select(vec4<u32>(arg_0.x, 49714u, 4294967295u, arg_0.x), vec4<u32>(var_0, arg_0.x, 22520u, var_0), vec4<bool>(false, false, false, true))), _wgslsmith_sub_vec4_u32(min(_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0.x, var_0, 54781u, 1u), vec4<u32>(0u, arg_0.x, 1499u, var_0) >> (vec4<u32>(var_0, 1u, 1u, var_0) % vec4<u32>(32u))), abs(reverseBits(vec4<u32>(arg_0.x, var_0, 36185u, arg_0.x)))), ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.x, 1u, 4294967295u, 4294967295u), vec4<u32>(0u, 0u, arg_0.x, arg_0.x), vec4<u32>(arg_0.x, 4294967295u, var_0, 0u)) >> (vec4<u32>(arg_0.x, arg_0.x, 10305u, arg_0.x) % vec4<u32>(32u)))));
    let var_2 = Struct_5(Struct_4(firstLeadingBit(_wgslsmith_sub_i32(u_input.c, u_input.a.x)), -232f, global1[_wgslsmith_index_u32(18088u, 16u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-2443f, 1693f, -1316f), vec3<f32>(738f, 1598f, 675f))) - vec3<f32>(_wgslsmith_div_f32(-1000f, 2744f), -311f, 1000f))), -abs(i32(-1i) * -26019i), any(select(vec2<bool>(!global0.x, true), select(!vec2<bool>(global0.x, true), !vec2<bool>(false, global0.x), any(vec2<bool>(true, global0.x))), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(366f, 728f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 1265f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(744f)), _wgslsmith_f_op_f32(trunc(-447f))))), Struct_4(-(i32(-1i) * -2147483647i), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(724f)), 985f, global0.x && false))), global1[_wgslsmith_index_u32(~4294967295u, 16u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(-538f, 387f, _wgslsmith_f_op_f32(ceil(-351f))))));
    let var_3 = all(vec3<bool>(select(var_2.a.c.c.d.x, all(select(vec3<bool>(var_2.e.c.a.c.x, global0.x, true), var_2.e.c.c.d, var_2.e.c.a.c.zwz)), true), all(select(vec2<bool>(var_2.e.c.a.d.x, false), vec2<bool>(false, var_2.c), var_2.a.c.a.c.x)) | any(!var_2.e.c.c.c.xzw), all(select(var_2.e.c.a.c.wx, !vec2<bool>(var_2.a.c.a.c.x, var_2.e.c.a.d.x), select(var_2.e.c.c.d.xz, var_2.a.c.a.c.yx, var_2.a.c.c.d.xx)))));
    let var_4 = Struct_2(Struct_1(_wgslsmith_mod_u32(countOneBits(arg_0.x), _wgslsmith_div_u32(18250u, arg_0.x)) << (44343u % 32u), _wgslsmith_mult_u32(4294967295u, ~(0u << (arg_0.x % 32u))), select(var_2.a.c.c.c, vec4<bool>(true, false, !var_3, var_2.a.c.b < var_2.a.d.x), select(vec4<bool>(global0.x, var_3, false, global0.x), vec4<bool>(false, global0.x, var_3, false), vec4<bool>(true, var_3, true, var_3))), select(!select(var_2.e.c.c.c.xxx, var_2.a.c.a.c.yyz, true), !var_2.a.c.a.d, !(!vec3<bool>(true, false, global0.x)))), 255f, Struct_1(~(~arg_0.x), ~((var_2.e.c.c.a | arg_0.x) ^ 11159u), vec4<bool>(global0.x, !global0.x, !(var_2.e.d.x < 581f), true), vec3<bool>(all(vec2<bool>(global0.x, var_2.a.c.a.c.x)), var_3 | var_2.c, !var_2.e.c.a.c.x && true)), vec4<i32>(countOneBits(var_2.e.c.d.x), u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-9747i | var_2.b, -43614i ^ u_input.b.x), vec2<i32>(firstLeadingBit(var_2.a.c.d.x), -u_input.a.x)), 0i), var_2.e.d.xx);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_2.d, var_2.d, var_4.c.c)));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_5) -> u32 {
    global0 = !(!arg_2.a.c.a.c.wx);
    var var_0 = arg_2.a.c.a.d;
    let var_1 = Struct_1(arg_2.e.c.c.b, min(72530u, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_2.e.c.a.b, 65665u), vec3<u32>(38028u, 77779u, 53258u)))), !arg_2.a.c.c.c, arg_2.a.c.c.d);
    var var_2 = vec2<u32>(reverseBits(_wgslsmith_mod_u32(49030u, abs(abs(76061u)))), ~(~(_wgslsmith_mult_u32(var_1.a, arg_2.a.c.c.b) ^ (26851u | arg_2.a.c.a.b))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_add_vec3_u32(~vec3<u32>(arg_2.e.c.a.b, arg_2.e.c.c.a, 21417u), ~vec3<u32>(arg_2.a.c.c.b, var_2.x, var_1.b)))), arg_2.d, arg_2.a.c.c.c)));
    return var_2.x & ~(abs(~53561u) & select(var_1.a, var_1.b, true));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_div_vec2_u32(~(~vec2<u32>(1u, 1u)), vec2<u32>(1u, 1u)) << (vec2<u32>(~func_2(vec2<i32>(2147483647i, 1i), global0.x, Struct_5(Struct_4(u_input.c, -1000f, global1[_wgslsmith_index_u32(49935u, 16u)], vec3<f32>(-1137f, 551f, 1103f)), 0i, false, vec4<f32>(373f, -834f, -256f, -1202f), Struct_4(u_input.c, -822f, global1[_wgslsmith_index_u32(4294967295u, 16u)], vec3<f32>(-1926f, 936f, -1000f)))), _wgslsmith_div_u32(reverseBits(abs(6605u)), ~(~37302u))) % vec2<u32>(32u));
    var var_1 = Struct_1(~(~104u), _wgslsmith_mult_u32(min(~var_0.x, _wgslsmith_add_u32(var_0.x, 31459u)), abs(39864u)) >> (4294967295u % 32u), vec4<bool>(global0.x, global0.x, true, all(!select(vec4<bool>(true, true, true, global0.x), vec4<bool>(false, global0.x, true, true), vec4<bool>(true, global0.x, global0.x, global0.x)))), select(vec3<bool>((global0.x && true) & !global0.x, !(28667u <= var_0.x), 0u >= func_2(u_input.b.wx, true, Struct_5(Struct_4(-32654i, 922f, Struct_2(Struct_1(0u, 21890u, vec4<bool>(true, global0.x, global0.x, global0.x), vec3<bool>(true, false, global0.x)), 228f, Struct_1(var_0.x, 10796u, vec4<bool>(true, false, global0.x, global0.x), vec3<bool>(true, global0.x, false)), u_input.b, vec2<f32>(-1181f, -292f)), vec3<f32>(1049f, 675f, 618f)), 1i, global0.x, vec4<f32>(-625f, -2025f, -440f, -669f), Struct_4(0i, -2474f, Struct_2(Struct_1(1u, 24648u, vec4<bool>(true, false, global0.x, true), vec3<bool>(true, global0.x, false)), 448f, Struct_1(var_0.x, var_0.x, vec4<bool>(true, global0.x, global0.x, false), vec3<bool>(true, global0.x, global0.x)), u_input.b, vec2<f32>(1254f, 124f)), vec3<f32>(-1160f, 390f, -419f))))), vec3<bool>(true, all(select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, true), vec2<bool>(true, global0.x))), global0.x), vec3<bool>(global0.x, global0.x && select(global0.x, false, false), !global0.x)));
    let var_2 = ~vec3<u32>(_wgslsmith_add_u32(1u, var_1.b), var_1.a, _wgslsmith_mult_u32(~(~var_1.a), var_0.x));
    let var_3 = Struct_1(min(min(abs(61095u), ~39351u), ~abs(42057u)), _wgslsmith_mult_u32(~var_2.x, _wgslsmith_clamp_u32(3208u, abs(var_1.a), 2716u)), !(!var_1.c), !vec3<bool>(global0.x, any(select(var_1.c.zyx, vec3<bool>(var_1.c.x, false, global0.x), vec3<bool>(global0.x, var_1.c.x, true))), any(!var_1.c)));
    global1 = array<Struct_2, 16>();
    return _wgslsmith_sub_u32(1u, var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~select(max(vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, 59430u, 0u)) >> (~select(vec3<u32>(1u, 0u, 1u), vec3<u32>(67722u, 0u, 0u), vec3<bool>(global0.x, global0.x, global0.x)) % vec3<u32>(32u)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(56266u, 12848u, 12894u), vec3<u32>(1u, 1u, 1u)), !select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, true, true), !global0.x));
    var var_1 = var_0.x;
    let var_2 = Struct_4(1i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1628f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -915f))), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, var_0.x, 1u), vec4<u32>(16487u, var_0.x, 87139u, 40292u))), var_0.x), 16u)], vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2026f - -252f))), _wgslsmith_f_op_f32(f32(-1f) * -724f), _wgslsmith_f_op_f32(983f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1072f), _wgslsmith_f_op_f32(trunc(3257f))))));
    var_0 = vec3<u32>(~40032u, func_1(), ~(~abs(1u)));
    let var_3 = var_2.c.c;
    var_0 = ~(~(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(29340u, var_2.c.c.b, var_2.c.a.a), vec3<u32>(0u, 1u, 0u)), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, 0u, var_2.c.c.a), vec3<u32>(5672u, var_0.x, var_3.b))) | vec3<u32>(~13225u, _wgslsmith_add_u32(var_3.a, var_3.a), abs(4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_mult_u32(var_3.a, func_1()) << (firstLeadingBit(44617u) % 32u), var_0.x, 4875u, _wgslsmith_dot_vec3_u32(min(vec3<u32>(var_3.b, 1u, 4727u), max(vec3<u32>(var_2.c.c.a, 0u, var_2.c.a.a), vec3<u32>(17560u, var_2.c.a.a, 4294967295u))), countOneBits(vec3<u32>(4294967295u, 48197u, var_3.b)) & vec3<u32>(var_0.x, 4294967295u, 0u))));
}

