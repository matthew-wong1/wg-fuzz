struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<vec2<f32>, 7>;

var<private> global2: array<Struct_1, 30>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    let var_0 = !(!select(select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false)), vec3<bool>(any(vec4<bool>(true, false, true, false)), true, true)));
    global1 = array<vec2<f32>, 7>();
    let var_1 = min(~(-global0.x), -(~(-_wgslsmith_clamp_i32(global0.x, global0.x, global0.x))));
    global0 = ~(~vec3<i32>(firstLeadingBit(_wgslsmith_mult_i32(global0.x, var_1)), _wgslsmith_mod_i32(40821i, -16633i) >> (select(11332u, 21239u, false) % 32u), 30259i));
    global2 = array<Struct_1, 30>();
    return firstLeadingBit(firstTrailingBit(~(u_input.a.x & (u_input.a.x | u_input.a.x))));
}

fn func_4(arg_0: Struct_4, arg_1: u32) -> vec2<bool> {
    let var_0 = Struct_2(~vec3<u32>(_wgslsmith_mod_u32(reverseBits(arg_0.a), 1u), ~(u_input.a.x >> (4294967295u % 32u)), arg_0.a), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(900f * 580f), _wgslsmith_f_op_f32(-635f * -913f))), ~(~(~vec2<u32>(4294967295u, arg_0.a))), reverseBits(~countOneBits(vec4<i32>(22906i, global0.x, -2147483647i, 0i))), 121f, all(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(1211f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1502f)))))));
    let var_1 = Struct_3(_wgslsmith_add_vec3_u32(max(vec3<u32>(firstTrailingBit(arg_0.a), func_3(), ~arg_0.a), ~vec3<u32>(2334u, 31800u, arg_1)), ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1, 31772u, 0u), var_0.a, var_0.a))), abs(~var_0.c.b.x), Struct_2(var_0.a, !var_0.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(417f))), min(max(u_input.a, u_input.a), _wgslsmith_sub_vec2_u32(var_0.a.xz, var_0.c.b)), vec4<i32>(global0.x, _wgslsmith_mult_i32(47501i, var_0.c.c.x), global0.x, global0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.c.a), var_0.c.d)), _wgslsmith_f_op_f32(var_0.d - var_0.c.d) < -2124f), var_0.d), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d))), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, var_0.a.x), _wgslsmith_sub_vec2_u32(var_0.a.yy, max(u_input.a, u_input.a))), min(var_0.c.c & vec4<i32>(var_0.c.c.x, var_0.c.c.x, global0.x, 11536i), var_0.c.c), _wgslsmith_f_op_f32(abs(277f)), !var_0.b.x), var_0.c);
    global2 = array<Struct_1, 30>();
    let var_2 = true;
    let var_3 = ~var_0.c.b;
    return select(select(vec2<bool>(any(!vec3<bool>(var_1.c.c.e, false, true)), !(!var_0.c.e)), vec2<bool>(true, all(var_1.c.b.yy)), var_0.b.zz), !select(!(!var_1.c.b.yz), var_0.b.yx, select(var_1.c.b.xx, var_0.b.xy, any(vec3<bool>(var_0.c.e, var_2, var_2)))), select(vec2<bool>(true, var_2), var_1.c.b.zz, !select(var_1.c.b.zz, select(var_1.c.b.xx, vec2<bool>(var_2, false), vec2<bool>(var_1.d.e, var_0.b.x)), any(vec3<bool>(var_1.c.b.x, var_1.d.e, true)))));
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_3) -> Struct_4 {
    var var_0 = func_4(Struct_4(~func_3()), 0u);
    let var_1 = arg_2.e;
    global1 = array<vec2<f32>, 7>();
    global2 = array<Struct_1, 30>();
    var var_2 = -2301f;
    return Struct_4(~8692u);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4) -> vec2<bool> {
    let var_0 = true || (((-global0.x | _wgslsmith_mult_i32(global0.x, global0.x)) & _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, -24234i, global0.x), vec3<i32>(global0.x, 1i, global0.x))) >= global0.x);
    let var_1 = vec2<i32>(-(~global0.x), 43662i);
    let var_2 = Struct_3(vec3<u32>(u_input.a.x, firstLeadingBit(4294967295u), func_3()), firstTrailingBit((12542u >> ((u_input.a.x & 58177u) % 32u)) & _wgslsmith_sub_u32(~78539u, u_input.a.x)), Struct_2(~(~vec3<u32>(arg_1.a, 1u, 0u)) & reverseBits(~vec3<u32>(arg_0.a, arg_0.a, 1u)), select(select(vec3<bool>(true, var_0, true), vec3<bool>(var_0, true, false), var_0), select(!vec3<bool>(var_0, var_0, var_0), select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(false, var_0, var_0), vec3<bool>(false, var_0, var_0)), false), vec3<bool>(true, true, all(vec4<bool>(var_0, true, false, var_0)))), Struct_1(1410f, u_input.a, firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.x, -1i, global0.x, -1i), vec4<i32>(global0.x, var_1.x, var_1.x, -40745i))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1000f, -1000f), _wgslsmith_f_op_f32(select(-1127f, 688f, true)))), var_0), _wgslsmith_f_op_f32(round(-748f))), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_3(), arg_1.a), 30u)], global2[_wgslsmith_index_u32((arg_1.a ^ 12129u) | _wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(34840u, u_input.a.x), vec2<u32>(4294967295u, u_input.a.x)), arg_0.a), 30u)]);
    global0 = _wgslsmith_div_vec3_i32(~abs(var_2.d.c.yxx), var_2.c.c.c.zzy);
    let var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(global1[_wgslsmith_index_u32(max(u_input.a.x, var_2.a.x), 7u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1195f, var_2.c.d)), !var_2.c.b.zz)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.d.a, var_2.c.d)) - global1[_wgslsmith_index_u32(1u, 7u)]))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(var_2.d.a - var_2.c.c.a), _wgslsmith_f_op_f32(-1279f - var_2.d.d))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global1[_wgslsmith_index_u32(~(~u_input.a.x), 7u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(-479f, -744f) * global1[_wgslsmith_index_u32(54549u, 7u)]))))));
    return var_2.c.b.yy;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec3<u32>, arg_3: bool) -> i32 {
    var var_0 = vec2<bool>(arg_0.e, any(select(!(!vec2<bool>(false, arg_0.e)), vec2<bool>(arg_3 | true, true), select(vec2<bool>(arg_0.e, arg_0.e), vec2<bool>(true, false), all(vec2<bool>(arg_0.e, arg_0.e))))));
    var_0 = select(!(!func_5(Struct_4(arg_0.b.x), func_2(50407u, vec2<u32>(29848u, u_input.a.x), Struct_3(vec3<u32>(1u, 1u, arg_1), 0u, Struct_2(vec3<u32>(u_input.a.x, 1u, 4971u), vec3<bool>(false, false, false), arg_0, arg_0.d), Struct_1(arg_0.d, vec2<u32>(arg_0.b.x, 0u), arg_0.c, arg_0.a, arg_0.e), global2[_wgslsmith_index_u32(79388u, 30u)])))), !select(vec2<bool>(true, any(vec2<bool>(arg_0.e, var_0.x))), !(!vec2<bool>(false, var_0.x)), !all(vec3<bool>(true, true, true))), any(func_5(Struct_4(abs(arg_2.x)), Struct_4(~13814u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.a))), _wgslsmith_f_op_f32(exp2(arg_0.a)), _wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_f32(1096f + arg_0.a)) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(847f, arg_0.d)), _wgslsmith_f_op_f32(-arg_0.a), 1000f, _wgslsmith_f_op_f32(sign(arg_0.d))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d, arg_0.d, -197f, -126f) - vec4<f32>(283f, -905f, -319f, 1688f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, 1418f, 1026f, -113f)))))));
    var_0 = !(!select(!vec2<bool>(var_0.x, arg_3), vec2<bool>(true, true), select(vec2<bool>(var_0.x, arg_3), vec2<bool>(true, true), !vec2<bool>(var_0.x, true))));
    var_0 = !select(!(!vec2<bool>(arg_3, var_0.x)), vec2<bool>(true, true), !(!func_4(Struct_4(u_input.a.x), u_input.a.x)));
    return 41448i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(39162u, u_input.a.x, u_input.a.x);
    var_0 = ~(((countOneBits(vec3<u32>(0u, u_input.a.x, 4294967295u)) << (vec3<u32>(8345u, 0u, 0u) % vec3<u32>(32u))) | firstTrailingBit(vec3<u32>(var_0.x, u_input.a.x, var_0.x))) ^ (~(vec3<u32>(0u, var_0.x, u_input.a.x) ^ vec3<u32>(34833u, var_0.x, u_input.a.x)) << (_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.a.x, 3613u), abs(vec3<u32>(u_input.a.x, 4294967295u, 0u))) % vec3<u32>(32u))));
    global0 = countOneBits(-vec3<i32>(global0.x, max(select(0i, global0.x, false), global0.x), func_1(Struct_1(-550f, vec2<u32>(4294967295u, u_input.a.x), vec4<i32>(-79176i, global0.x, global0.x, global0.x), -1343f, true), ~u_input.a.x, vec3<u32>(81764u, 80467u, u_input.a.x) >> (vec3<u32>(u_input.a.x, 4294967295u, 20674u) % vec3<u32>(32u)), any(vec2<bool>(true, false)))));
    global2 = array<Struct_1, 30>();
    var_0 = abs(reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(81934u, var_0.x, var_0.x, 1252u), vec4<u32>(var_0.x, u_input.a.x, 4294967295u, var_0.x)), 4294967295u, ~var_0.x), vec3<u32>(abs(45901u), var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, 4294967295u, 4294967295u), vec4<u32>(u_input.a.x, 26671u, var_0.x, 4294967295u))))));
    var var_1 = true;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1078f - 699f) - _wgslsmith_f_op_f32(select(-1659f, -1122f, false))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -490f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -303f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-436f * -1513f)))));
    var_0 = _wgslsmith_mod_vec3_u32(max(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, 0u, 1u), vec3<u32>(66934u, 15502u, 4294967295u)) >> (vec3<u32>(var_0.x, 4294967295u, u_input.a.x) % vec3<u32>(32u))), abs(vec3<u32>(38280u, 71782u, 4294967295u))), ~_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, 30263u, 11559u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<u32>(22750u, u_input.a.x, u_input.a.x)), min(vec3<u32>(4294967295u, 97289u, var_0.x), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)) ^ vec3<u32>(2751u, 28959u, u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_0.x, ~1u), firstTrailingBit(var_0.x), vec3<i32>(~global0.x, global0.x, abs(-7997i)));
}

