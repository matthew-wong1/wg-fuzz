struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<u32>;

var<private> global2: bool;

var<private> global3: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(17140u, Struct_1(true, 47197u, vec3<u32>(4294967295u, 4294967295u, 39365u)), 2046f), Struct_2(10240u, Struct_1(false, 1u, vec3<u32>(1u, 4294967295u, 1u)), 255f), Struct_2(10226u, Struct_1(true, 12160u, vec3<u32>(4294967295u, 4294967295u, 5594u)), -380f), Struct_2(83620u, Struct_1(true, 1u, vec3<u32>(1u, 59366u, 1u)), -722f), Struct_2(17003u, Struct_1(false, 1u, vec3<u32>(4294967295u, 12291u, 26735u)), 853f), Struct_2(3059u, Struct_1(true, 55426u, vec3<u32>(103674u, 0u, 4294967295u)), -495f), Struct_2(72886u, Struct_1(false, 26984u, vec3<u32>(0u, 93835u, 53293u)), -894f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_2) -> vec4<u32> {
    let var_0 = global0.c;
    let var_1 = Struct_3(Struct_2(4294967295u, global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c * _wgslsmith_f_op_f32(-global0.c)) - 1784f)), !(!select(vec2<bool>(global0.b.a, true), vec2<bool>(arg_0.a, true), select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(global0.b.a, true), false))));
    global1 = firstTrailingBit(vec4<u32>(global0.a, 0u, 35168u, global1.x));
    global0 = Struct_2(global1.x, Struct_1(!(any(vec4<bool>(global0.b.a, true, false, var_1.a.b.a)) | global0.b.a), u_input.a, global1.wxz), arg_2.c);
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.c, var_1.a.c))))));
    return _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(~(u_input.a | 56668u), ~10797u, ~43585u, firstLeadingBit(54738u)), select(vec4<u32>(select(global0.a, global1.x, arg_2.b.a), ~66104u, _wgslsmith_mod_u32(20493u, 4294967295u), firstTrailingBit(0u)), ~max(vec4<u32>(92868u, 0u, arg_0.b, u_input.a), vec4<u32>(global0.a, 79559u, arg_2.b.b, 32836u)), select(!vec4<bool>(arg_2.b.a, true, arg_2.b.a, arg_2.b.a), select(vec4<bool>(true, false, arg_0.a, true), vec4<bool>(false, false, false, false), global0.b.a), vec4<bool>(var_1.b.x, var_1.a.b.a, arg_0.a, false)))), ~max(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b, 3832u, 0u, global0.a), vec4<u32>(1u, global1.x, var_1.a.a, 0u)), var_1.a.b.c.x, ~arg_2.b.b, _wgslsmith_div_u32(var_1.a.b.b, 0u)), abs(~vec4<u32>(global0.a, global0.b.c.x, 30545u, 62291u))));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<u32>) -> u32 {
    global1 = func_3(arg_0.a.b, ~(~(~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, -319i), vec2<i32>(u_input.d.x, u_input.b)))), arg_0.a);
    let var_0 = ~countOneBits(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c.x, -1i), -u_input.d.zy));
    let var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(var_0, firstTrailingBit(u_input.b), ~_wgslsmith_sub_i32(-1i, ~var_0)), _wgslsmith_clamp_vec3_i32(~(~(~u_input.d.yyz)), -(reverseBits(vec3<i32>(-12744i, -5865i, u_input.c.x)) << (global0.b.c % vec3<u32>(32u))), u_input.c));
    var var_2 = arg_0.a.b;
    return func_3(arg_0.a.b, var_1.xx << (vec2<u32>(~var_2.b, 99511u) % vec2<u32>(32u)), Struct_2(4294967295u, Struct_1(!(false || var_2.a), ~12939u, global1.xyz), 145f)).x;
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: vec4<i32>, arg_3: vec2<u32>) -> vec2<i32> {
    global0 = Struct_2(1u, Struct_1((global0.b.a && !global0.b.a) || arg_1, ~1u, ~countOneBits(global0.b.c) << (vec3<u32>(abs(u_input.a), ~0u, 94882u) % vec3<u32>(32u))), 1166f);
    let var_0 = !select(vec3<bool>(global0.b.a, any(select(vec2<bool>(true, true), vec2<bool>(global0.b.a, true), true)), true), !vec3<bool>(global0.b.a, arg_1 && false, all(vec2<bool>(arg_1, global0.b.a))), false);
    let var_1 = select(0u, ~u_input.a, !select(any(select(vec4<bool>(true, true, var_0.x, global0.b.a), vec4<bool>(var_0.x, false, true, true), true)), global1.x == max(arg_3.x, 0u), all(!vec4<bool>(false, arg_1, false, false))));
    var var_2 = Struct_3(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(20354u, func_2(Struct_3(global3[_wgslsmith_index_u32(u_input.a & var_1, 7u)], vec2<bool>(global0.b.a, true)), ~vec3<u32>(var_1, 31064u, 71973u))), 7u)], vec2<bool>(all(!vec3<bool>(global0.b.a, var_0.x, true)) | all(vec2<bool>(true, arg_1)), var_0.x || any(select(vec4<bool>(var_0.x, arg_1, true, false), vec4<bool>(false, true, arg_1, global0.b.a), var_0.x))));
    var var_3 = vec2<bool>(!all(!vec3<bool>(false, global0.b.a, arg_1)), !var_0.x);
    return _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, -1i), u_input.d.yw);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: vec3<u32>) -> Struct_2 {
    var var_0 = global0.b;
    global2 = !any(select(!vec4<bool>(global0.b.a, true, global0.b.a, false), select(select(vec4<bool>(true, true, global0.b.a, global0.b.a), vec4<bool>(var_0.a, global0.b.a, var_0.a, global0.b.a), vec4<bool>(global0.b.a, true, true, true)), select(vec4<bool>(false, var_0.a, false, true), vec4<bool>(var_0.a, var_0.a, true, true), global0.b.a), vec4<bool>(var_0.a, false, global0.b.a, global0.b.a)), vec4<bool>(global0.b.a, !var_0.a, false, any(vec4<bool>(global0.b.a, var_0.a, true, true)))));
    var var_1 = !(-207f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)));
    global1 = _wgslsmith_div_vec4_u32(func_3(global0.b, max(arg_1, reverseBits(vec2<i32>(-12784i, arg_1.x) ^ arg_1)), Struct_2(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.x, 49758u, 4294967295u, arg_2.x), firstLeadingBit(vec4<u32>(arg_0.x, var_0.b, arg_0.x, 0u))), global0.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(493f * -1000f), -108f, true)))), select(select(vec4<u32>(arg_2.x | global0.a, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 4294967295u), vec2<u32>(global1.x, arg_2.x)), ~0u, ~u_input.a), vec4<u32>(0u, u_input.a & 1u, _wgslsmith_mod_u32(0u, 63643u), u_input.a), !vec4<bool>(var_0.a, true, var_0.a, var_0.a)), ~_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.b.b, arg_0.x, 2202u, 4294967295u), vec4<u32>(8016u, 4294967295u, global1.x, arg_0.x)), ~vec4<u32>(1u, var_0.b, arg_2.x, 0u)), select(select(select(vec4<bool>(true, true, var_0.a, global0.b.a), vec4<bool>(global0.b.a, true, true, true), var_0.a), !vec4<bool>(var_0.a, false, global0.b.a, var_0.a), !vec4<bool>(false, global0.b.a, var_0.a, global0.b.a)), !vec4<bool>(var_0.a, false, true, var_0.a), !(!vec4<bool>(global0.b.a, var_0.a, global0.b.a, var_0.a)))));
    let var_2 = Struct_1(!all(vec3<bool>(global0.c > global0.c, select(var_0.a, var_0.a, global0.b.a), true)), func_2(Struct_3(global3[_wgslsmith_index_u32(global0.b.b, 7u)], vec2<bool>(13595i == arg_1.x, var_0.a)), vec3<u32>(0u, ~arg_2.x, func_2(Struct_3(Struct_2(33488u, global0.b, -533f), vec2<bool>(var_0.a, var_0.a)), vec3<u32>(var_0.c.x, arg_0.x, 0u)))), global1.zww);
    return Struct_2(~var_0.b, global0.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(global0.c + global0.c))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.c, 983f)))));
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: Struct_2) -> StorageBuffer {
    var var_0 = arg_2;
    let var_1 = Struct_2(2267u, Struct_1(false, ~arg_2.b.c.x, firstLeadingBit(min(~arg_2.b.c, func_4(global0.b.c.zz, u_input.d.zz, arg_2.b.c).b.c))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0.c)), _wgslsmith_f_op_f32(abs(var_0.c))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1080f)), arg_2.c))))));
    let var_2 = func_4(arg_2.b.c.zz, ~abs(u_input.d.zy), global0.b.c & var_0.b.c).b;
    global0 = func_4(func_3(arg_2.b, u_input.d.ww, func_4(~vec2<u32>(55892u, global1.x), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_2.c, -1259f, -1150f) - vec4<f32>(var_1.c, var_1.c, arg_0, -418f)), u_input.c.x >= -3174i, u_input.d, ~var_1.b.c.zz), vec3<u32>(35933u, firstLeadingBit(global0.b.c.x), 30227u))).xw, u_input.d.yw, ~_wgslsmith_mod_vec3_u32(var_2.c, ~(var_1.b.c & vec3<u32>(var_0.a, 37512u, u_input.a))));
    var_0 = Struct_2(var_2.c.x, func_4(abs(_wgslsmith_sub_vec2_u32(vec2<u32>(var_2.b, arg_2.b.b), arg_2.b.c.yz)), -vec2<i32>(firstTrailingBit(-1i), -u_input.d.x), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(var_2.b, arg_2.a), ~30992u, ~var_2.c.x), global0.b.c)).b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.c + 2582f))))));
    return StorageBuffer(_wgslsmith_mod_vec3_u32(firstLeadingBit(func_4(vec2<u32>(37200u, var_2.c.x), u_input.d.wy, vec3<u32>(1u, 19332u, arg_2.b.b)).b.c ^ vec3<u32>(21183u, global0.a, 26568u)), _wgslsmith_sub_vec3_u32(vec3<u32>(14209u, select(global1.x, var_2.c.x, false), var_0.a), global1.xxw)), _wgslsmith_f_op_f32(2238f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0))), -656f))), _wgslsmith_mult_vec3_i32(-(~select(u_input.d.yzx, u_input.d.zzw, true)), _wgslsmith_sub_vec3_i32(~select(vec3<i32>(arg_1, arg_1, 30i), vec3<i32>(18109i, arg_1, arg_1), vec3<bool>(var_1.b.a, false, var_2.a)), ~max(vec3<i32>(arg_1, 35375i, arg_1), u_input.d.wzz))), ~vec3<i32>(2147483647i, ~(i32(-1i) * -59327i), u_input.d.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1096f, _wgslsmith_f_op_f32(f32(-1f) * -517f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global0.b.a;
    let var_1 = global0.c;
    let x = u_input.a;
    s_output = func_5(-671f, -53568i, func_4(global1.xw, ~func_1(vec4<f32>(global0.c, global0.c, global0.c, global0.c), !global0.b.a, max(vec4<i32>(u_input.b, -1i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, 11609i, u_input.d.x, u_input.b)), vec2<u32>(global1.x, global0.b.b)), ~_wgslsmith_add_vec3_u32(vec3<u32>(1u, global1.x, 145866u), vec3<u32>(1u, 0u, global1.x))));
}

