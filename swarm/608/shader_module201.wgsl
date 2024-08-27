struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_4,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<i32>(i32(-2147483648), -34223i, 2147483647i), vec2<bool>(true, true)), vec4<f32>(-1102f, 1000f, 764f, -1109f), Struct_1(vec3<i32>(2147483647i, -53952i, -2273i), vec2<bool>(true, false)), 36074u);

var<private> global1: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(Struct_1(vec3<i32>(2147483647i, 2147483647i, -37235i), vec2<bool>(false, false)), Struct_2(Struct_1(vec3<i32>(1i, -67942i, 1i), vec2<bool>(false, false)), vec4<f32>(1203f, 1000f, -463f, 1798f), Struct_1(vec3<i32>(2147483647i, -29395i, 2147483647i), vec2<bool>(false, false)), 40271u), vec2<i32>(9078i, -7535i)), Struct_3(Struct_1(vec3<i32>(2147483647i, 2147483647i, -1i), vec2<bool>(false, false)), Struct_2(Struct_1(vec3<i32>(-1i, -49098i, -4724i), vec2<bool>(true, false)), vec4<f32>(1000f, 387f, 680f, -1000f), Struct_1(vec3<i32>(4017i, 0i, -1i), vec2<bool>(false, false)), 28152u), vec2<i32>(-1i, -33661i)), Struct_3(Struct_1(vec3<i32>(18173i, 17799i, 0i), vec2<bool>(false, false)), Struct_2(Struct_1(vec3<i32>(10038i, 12437i, -1i), vec2<bool>(true, true)), vec4<f32>(-567f, 902f, 596f, 976f), Struct_1(vec3<i32>(-10437i, -21953i, 7095i), vec2<bool>(false, true)), 4294967295u), vec2<i32>(-2844i, -32529i)), Struct_3(Struct_1(vec3<i32>(0i, 2147483647i, -1i), vec2<bool>(false, true)), Struct_2(Struct_1(vec3<i32>(22774i, 2147483647i, 0i), vec2<bool>(false, false)), vec4<f32>(-489f, -1734f, -1693f, 1450f), Struct_1(vec3<i32>(8565i, 30091i, -45402i), vec2<bool>(true, true)), 1u), vec2<i32>(-15286i, 2147483647i)), Struct_3(Struct_1(vec3<i32>(11728i, 55501i, 24710i), vec2<bool>(false, false)), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, -8812i), vec2<bool>(true, true)), vec4<f32>(525f, 834f, -712f, -1858f), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, -29875i), vec2<bool>(false, true)), 4871u), vec2<i32>(-24848i, 31560i)), Struct_3(Struct_1(vec3<i32>(1i, 2147483647i, -23132i), vec2<bool>(true, false)), Struct_2(Struct_1(vec3<i32>(57107i, 0i, -10590i), vec2<bool>(false, false)), vec4<f32>(1000f, -670f, -568f, 1727f), Struct_1(vec3<i32>(52048i, 15484i, 2147483647i), vec2<bool>(false, false)), 0u), vec2<i32>(-11428i, i32(-2147483648))), Struct_3(Struct_1(vec3<i32>(1i, 16127i, 50280i), vec2<bool>(false, true)), Struct_2(Struct_1(vec3<i32>(0i, 1i, i32(-2147483648)), vec2<bool>(true, true)), vec4<f32>(446f, 279f, 1000f, -135f), Struct_1(vec3<i32>(2147483647i, -1i, 1i), vec2<bool>(true, true)), 1u), vec2<i32>(i32(-2147483648), -42820i)));

var<private> global2: i32;

var<private> global3: array<bool, 19> = array<bool, 19>(true, true, false, true, true, true, true, true, false, true, false, false, true, false, true, true, false, true, true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> vec3<u32> {
    let var_0 = Struct_3(Struct_1(vec3<i32>(~(i32(-1i) * -62654i), min(_wgslsmith_dot_vec3_i32(vec3<i32>(43774i, arg_0, u_input.a), global0.a.a), ~(-1i)), 0i), !select(select(global0.c.b, global0.c.b, false), select(global0.a.b, global0.c.b, false), any(global0.a.b))), Struct_2(Struct_1(global0.a.a, !vec2<bool>(global3[_wgslsmith_index_u32(arg_1.x, 19u)], false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b)), global0.a, _wgslsmith_div_u32(4294967295u, _wgslsmith_div_u32(4294967295u, arg_1.x))), -_wgslsmith_mod_vec2_i32(select(u_input.b.wy, -vec2<i32>(10529i, 2147483647i), global3[_wgslsmith_index_u32(global0.d, 19u)] || true), -u_input.b.yx >> (vec2<u32>(0u, arg_1.x) % vec2<u32>(32u))));
    var var_1 = global0.a;
    let var_2 = any(!(!vec4<bool>(var_1.b.x, global3[_wgslsmith_index_u32(arg_1.x, 19u)], var_1.b.x, var_1.b.x))) | all(vec2<bool>(true, var_0.a.b.x));
    global1 = array<Struct_3, 7>();
    let var_3 = var_2;
    return ~(firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.x, global0.d, 67987u), firstTrailingBit(arg_1.wyy))) << (~vec3<u32>(reverseBits(2586u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.b.d, 0u), vec3<u32>(global0.d, 0u, var_0.b.d)), arg_1.x) % vec3<u32>(32u)));
}

fn func_2() -> vec3<bool> {
    var var_0 = vec4<u32>(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.d ^ global0.d, select(1u, 8096u, global3[_wgslsmith_index_u32(3254u, 19u)])), func_3(_wgslsmith_mult_i32(global0.a.a.x, global0.c.a.x), vec4<u32>(9740u, global0.d, 0u, global0.d)))), _wgslsmith_div_u32(countOneBits(~(global0.d >> (62049u % 32u))), 61583u), min(_wgslsmith_add_u32(~global0.d, 0u), _wgslsmith_div_u32(_wgslsmith_sub_u32(~1u, 1u), _wgslsmith_mult_u32(~global0.d, _wgslsmith_clamp_u32(54616u, global0.d, global0.d)))), ~4294967295u);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-438f, _wgslsmith_div_f32(-582f, _wgslsmith_f_op_f32(f32(-1f) * -181f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(624f - global0.b.x))) * global0.b.yyx));
    var var_2 = Struct_4(global0.a.a.xz, Struct_2(Struct_1(vec3<i32>(_wgslsmith_sub_i32(2147483647i, u_input.a), ~(-2147483647i), firstLeadingBit(u_input.b.x)), !select(vec2<bool>(global3[_wgslsmith_index_u32(var_0.x, 19u)], global0.c.b.x), global0.a.b, global0.c.b)), global0.b, global0.c, var_0.x), global0.a, select(vec2<i32>(firstTrailingBit(global0.c.a.x), _wgslsmith_mod_i32(-36518i, i32(-1i) * -1i)), global0.c.a.yz, any(select(!vec3<bool>(global0.a.b.x, global0.a.b.x, global3[_wgslsmith_index_u32(18285u, 19u)]), select(vec3<bool>(global3[_wgslsmith_index_u32(43546u, 19u)], global3[_wgslsmith_index_u32(1u, 19u)], true), vec3<bool>(false, global3[_wgslsmith_index_u32(102123u, 19u)], global3[_wgslsmith_index_u32(global0.d, 19u)]), vec3<bool>(global0.c.b.x, false, global0.c.b.x)), select(vec3<bool>(false, true, false), vec3<bool>(global3[_wgslsmith_index_u32(global0.d, 19u)], false, global3[_wgslsmith_index_u32(4294967295u, 19u)]), vec3<bool>(false, global0.c.b.x, global0.a.b.x))))));
    let var_3 = var_2.c;
    var_0 = reverseBits(min(_wgslsmith_div_vec4_u32(max(vec4<u32>(global0.d, var_0.x, global0.d, global0.d), vec4<u32>(var_0.x, 4294967295u, global0.d, 1u)), select(vec4<u32>(4294967295u, var_2.b.d, global0.d, 14746u), vec4<u32>(4294967295u, var_2.b.d, var_0.x, var_2.b.d), var_2.c.b.x)) ^ _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(114579u, 25790u, global0.d, 1u)), ~vec4<u32>(var_0.x, var_2.b.d, var_0.x, 1u)), countOneBits(vec4<u32>(_wgslsmith_div_u32(global0.d, global0.d), var_2.b.d, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b.d, var_2.b.d), vec2<u32>(global0.d, var_2.b.d)), ~4294967295u))));
    return select(!vec3<bool>(global0.a.b.x, true, !(!global0.a.b.x)), !select(select(!vec3<bool>(true, true, var_3.b.x), vec3<bool>(true, true, global3[_wgslsmith_index_u32(global0.d, 19u)]), vec3<bool>(true, false, false)), vec3<bool>(any(vec4<bool>(var_2.c.b.x, global0.a.b.x, false, var_3.b.x)), !var_2.b.a.b.x, !global0.c.b.x), true), select(vec3<bool>(true, all(!vec4<bool>(true, global0.a.b.x, global3[_wgslsmith_index_u32(global0.d, 19u)], false)), all(global0.c.b)), !vec3<bool>(true, true, select(var_3.b.x, false, false)), !select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, global3[_wgslsmith_index_u32(var_2.b.d, 19u)]), global0.c.b.x), vec3<bool>(var_3.b.x, false, global0.c.b.x), global0.d < 1918u)));
}

fn func_1() -> u32 {
    var var_0 = select(select(!vec3<bool>(all(vec4<bool>(global0.a.b.x, global3[_wgslsmith_index_u32(0u, 19u)], global3[_wgslsmith_index_u32(global0.d, 19u)], global0.a.b.x)), true, any(vec3<bool>(global3[_wgslsmith_index_u32(global0.d, 19u)], global0.a.b.x, global3[_wgslsmith_index_u32(4294967295u, 19u)]))), vec3<bool>(all(select(global0.c.b, global0.a.b, vec2<bool>(global0.a.b.x, true))), all(vec3<bool>(global3[_wgslsmith_index_u32(0u, 19u)], global0.a.b.x, global0.a.b.x)), false), select(!func_2(), vec3<bool>(false, false, true), true)), vec3<bool>(any(vec4<bool>(true, true, true, true)), false, !global3[_wgslsmith_index_u32(~global0.d, 19u)]), !(!(!select(vec3<bool>(global3[_wgslsmith_index_u32(35439u, 19u)], false, true), vec3<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 19u)], global3[_wgslsmith_index_u32(global0.d, 19u)]), vec3<bool>(true, global0.c.b.x, true)))));
    global2 = _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(max(-vec2<i32>(-45801i, global0.c.a.x) >> (~vec2<u32>(global0.d, global0.d) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(max(global0.c.a.zx, vec2<i32>(12712i, u_input.b.x)), firstLeadingBit(vec2<i32>(u_input.a, -11734i)))), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, 2147483647i | u_input.a), -(u_input.b.yx | u_input.b.ww)), u_input.b.zy & vec2<i32>(global0.a.a.x, u_input.b.x)), global0.c.a.xx);
    global2 = -43559i;
    let var_1 = abs(abs(~(~62512u)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-575f + -1000f)))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-111f, 520f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) - -448f)));
    var var_1 = _wgslsmith_f_op_f32(floor(global0.b.x));
    var var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, ~_wgslsmith_add_u32(0u, firstTrailingBit(global0.d))), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.d, 10089u), vec2<u32>(0u, global0.d)), global0.d), func_1(), 4294967295u));
    var var_3 = vec2<u32>(_wgslsmith_sub_u32(~_wgslsmith_add_u32(56069u, 1u), min(~global0.d, abs(19580u))), global0.d);
    var var_4 = all(vec2<bool>(true, false));
    var var_5 = global0.b.zxw;
    var_0 = _wgslsmith_f_op_vec3_f32(-global0.b.wxw);
    let x = u_input.a;
    s_output = StorageBuffer(1i, vec3<u32>(max(global0.d, reverseBits(56148u)) >> (var_3.x % 32u), 1u, 21816u));
}

