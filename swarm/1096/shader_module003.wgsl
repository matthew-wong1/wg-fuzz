struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: u32,
    d: bool,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -7210i;

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec4<f32>(-1101f, -971f, 656f, -462f), vec3<u32>(0u, 1u, 67563u), 8763u, false, vec4<u32>(46109u, 63644u, 12369u, 0u)), Struct_1(vec4<f32>(115f, -1403f, -115f, -502f), vec3<u32>(52366u, 0u, 45803u), 4294967295u, true, vec4<u32>(0u, 39393u, 0u, 97932u)), Struct_1(vec4<f32>(519f, 547f, -232f, -218f), vec3<u32>(33581u, 61764u, 16584u), 1u, true, vec4<u32>(1u, 1u, 0u, 48650u)), Struct_1(vec4<f32>(1532f, 482f, 161f, 509f), vec3<u32>(72362u, 14783u, 0u), 57744u, false, vec4<u32>(2143u, 5494u, 60980u, 0u)), Struct_1(vec4<f32>(643f, 467f, -1641f, -982f), vec3<u32>(0u, 4294967295u, 23519u), 94757u, true, vec4<u32>(0u, 70094u, 1u, 1u)), Struct_1(vec4<f32>(1079f, 1000f, -448f, -137f), vec3<u32>(35873u, 1560u, 47899u), 0u, true, vec4<u32>(1u, 21260u, 92076u, 0u)), Struct_1(vec4<f32>(1167f, -1000f, 828f, 436f), vec3<u32>(72612u, 3464u, 51888u), 79493u, true, vec4<u32>(4294967295u, 69737u, 25442u, 42805u)), Struct_1(vec4<f32>(-1000f, -472f, 579f, 680f), vec3<u32>(17388u, 0u, 1u), 22274u, true, vec4<u32>(1u, 0u, 4294967295u, 0u)), Struct_1(vec4<f32>(2543f, 896f, 1000f, -1000f), vec3<u32>(42229u, 36490u, 21201u), 1u, false, vec4<u32>(41624u, 4294967295u, 34826u, 1u)), Struct_1(vec4<f32>(754f, 536f, -909f, 302f), vec3<u32>(34049u, 0u, 1u), 42433u, false, vec4<u32>(32968u, 7035u, 18155u, 1u)), Struct_1(vec4<f32>(355f, -255f, 572f, -1914f), vec3<u32>(4294967295u, 18142u, 15181u), 24215u, true, vec4<u32>(4294967295u, 36473u, 4937u, 4294967295u)));

var<private> global2: array<u32, 8>;

var<private> global3: u32;

var<private> global4: i32 = 1i;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(719f, -229f))), _wgslsmith_f_op_f32(1690f + _wgslsmith_f_op_f32(max(-565f, 1192f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(640f + -1181f) - _wgslsmith_f_op_f32(1326f * 184f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1880f, -2903f)))))), vec3<u32>(~_wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, global2[_wgslsmith_index_u32(1u, 8u)], 82088u), vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 8u)], u_input.c, u_input.c), false), select(vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(15320u, 8u)], 25609u), vec3<u32>(15515u, global2[_wgslsmith_index_u32(u_input.d.x, 8u)], 9281u), false)), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(47066u, global2[_wgslsmith_index_u32(25326u, 8u)], 4294967295u, 4294967295u), vec4<u32>(u_input.d.x, u_input.c, u_input.d.x, 4294967295u)), vec4<u32>(u_input.c, 1u, u_input.d.x, 0u)), 77918u), ~(u_input.c | 1u) | ~u_input.d.x, true, abs(vec4<u32>(~38468u, select(4294967295u, 0u, false), _wgslsmith_dot_vec4_u32(vec4<u32>(20123u, 45836u, 8459u, 1u), vec4<u32>(u_input.d.x, 6017u, u_input.c, u_input.d.x)), u_input.d.x | u_input.d.x)) << ((reverseBits(~vec4<u32>(u_input.c, global2[_wgslsmith_index_u32(12221u, 8u)], u_input.d.x, 43133u)) ^ ~vec4<u32>(global2[_wgslsmith_index_u32(u_input.d.x, 8u)], 78228u, 1u, u_input.d.x)) % vec4<u32>(32u)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x), u_input.b.x <= 60632i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.x + 552f), var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-254f))), 1008f) * vec4<f32>(_wgslsmith_f_op_f32(589f + _wgslsmith_f_op_f32(var_0.a.x * var_0.a.x)), 450f, -2090f, _wgslsmith_f_op_f32(1806f + _wgslsmith_f_op_f32(758f * -1627f)))), _wgslsmith_sub_vec3_u32(min(select(var_0.b, vec3<u32>(var_0.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 8u)], 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)]), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), ~vec3<u32>(0u, 0u, u_input.c)), vec3<u32>(_wgslsmith_add_u32(24822u, u_input.d.x), max(_wgslsmith_dot_vec3_u32(vec3<u32>(63536u, global2[_wgslsmith_index_u32(52920u, 8u)], 0u), var_0.e.xzx), u_input.d.x), 22080u)), ~16914u, ~4294967295u < (~(~0u) >> ((_wgslsmith_add_u32(4294967295u, u_input.c) | 0u) % 32u)), vec4<u32>(37818u, _wgslsmith_mult_u32(var_0.e.x, 1u), var_0.b.x ^ (_wgslsmith_div_u32(u_input.d.x, 88204u) & ~1u), 1u));
    var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(var_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(floor(602f))) + var_0.a.x), var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1775f + var_0.a.x))), ~(~countOneBits(var_1.b)) | countOneBits(var_0.e.zww), abs(global2[_wgslsmith_index_u32(var_1.c, 8u)]), var_0.d, select(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, 1u), var_1.e >> (var_1.e % vec4<u32>(32u))) >> ((_wgslsmith_add_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(var_0.e.x, 8u)], var_1.b.x, u_input.c, 0u), vec4<u32>(1u, var_0.e.x, var_1.b.x, 43764u)) | vec4<u32>(u_input.c, 87078u, global2[_wgslsmith_index_u32(33815u, 8u)], u_input.c)) % vec4<u32>(32u)), ~select(_wgslsmith_sub_vec4_u32(var_0.e, vec4<u32>(0u, var_0.b.x, 1325u, 4294967295u)), ~vec4<u32>(global2[_wgslsmith_index_u32(652u, 8u)], var_1.c, var_1.c, 43599u), var_0.d), !vec4<bool>(var_1.d | var_1.d, all(vec4<bool>(false, var_1.d, var_0.d, true)), false, var_0.d)));
    var var_2 = ~(-vec3<i32>(1i, ~u_input.b.x, ~_wgslsmith_div_i32(u_input.e, u_input.e)));
    global3 = min(_wgslsmith_dot_vec3_u32(~select(~vec3<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 13331u), var_1.e.wxx, vec3<bool>(true, false, false)), ~var_1.b), var_0.e.x);
    return max(firstLeadingBit(max(var_0.b, vec3<u32>(_wgslsmith_div_u32(31275u, u_input.c), 15326u, _wgslsmith_div_u32(u_input.d.x, var_1.b.x)))), min(var_1.b, ~(~(~var_1.e.wzy))));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> vec4<bool> {
    var var_0 = func_3();
    let var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x), ~(i32(-1i) * -2147483647i) | ~u_input.b.x, ~11209i), u_input.b.wxw << (vec3<u32>(arg_0.e.x, ~global2[_wgslsmith_index_u32(var_0.x ^ 44710u, 8u)], abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~arg_2.b.x, 8u)], 8u)])) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(~(~(-u_input.b.xww)), -u_input.b.zxy));
    global1 = array<Struct_1, 11>();
    let var_2 = -436f;
    global1 = array<Struct_1, 11>();
    return select(vec4<bool>(false, arg_2.d, any(!(!vec4<bool>(arg_2.d, false, arg_2.d, true))), true), select(vec4<bool>(u_input.a <= 25164i, true, false, !arg_0.d), vec4<bool>(false, true, any(select(vec2<bool>(true, arg_1), vec2<bool>(true, false), vec2<bool>(arg_0.d, arg_0.d))), !all(vec3<bool>(false, false, arg_0.d))), select(vec4<bool>(arg_2.d, any(vec2<bool>(arg_2.d, true)), arg_1, true), !(!vec4<bool>(true, arg_2.d, arg_1, true)), !select(vec4<bool>(false, arg_1, false, arg_1), vec4<bool>(arg_0.d, arg_0.d, arg_1, arg_1), true))), all(!vec3<bool>(any(vec3<bool>(true, true, arg_1)), arg_0.d, arg_2.d)));
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(floor(arg_2.a.x)), -1808f, arg_2.a.x, 1141f))), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_2.b.x, 8u)], 8u)], u_input.c, arg_2.b.x) | vec3<u32>(firstLeadingBit(~u_input.d.x), arg_2.b.x, 27905u), ~arg_2.e.x, all(!arg_0), ~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.b.x, 73242u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 44600u), arg_2.e), arg_2.e) ^ max(vec4<u32>(29045u, ~u_input.d.x, global2[_wgslsmith_index_u32(arg_2.b.x, 8u)], firstLeadingBit(global2[_wgslsmith_index_u32(arg_2.e.x, 8u)])), arg_2.e));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x + arg_2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    return _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~arg_2.b.xz, abs(~(~arg_2.e.yx))), vec2<u32>(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(~arg_2.c << (firstLeadingBit(var_0.c) % 32u), 8u)], 78967u), func_3().x));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global3 = ~(25320u ^ arg_1.b.x);
    var var_0 = arg_2;
    global3 = ~_wgslsmith_mod_u32(44472u, _wgslsmith_add_u32(abs(arg_1.b.x), global2[_wgslsmith_index_u32(u_input.c, 8u)]));
    global1 = array<Struct_1, 11>();
    global3 = _wgslsmith_div_u32(func_4(select(!(!vec4<bool>(var_0.d, arg_1.d, var_0.d, var_0.d)), select(func_2(Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, arg_2.a.x, -240f), arg_1.e.wxx, 80319u, true, vec4<u32>(0u, 0u, arg_2.b.x, 0u)), arg_2.d, Struct_1(vec4<f32>(-611f, arg_2.a.x, 724f, arg_1.a.x), arg_1.e.zzy, u_input.c, false, arg_1.e), -1000f), select(vec4<bool>(false, arg_1.d, true, arg_0), vec4<bool>(true, arg_2.d, true, var_0.d), true), true), true && (80752u < arg_2.e.x)), true, Struct_1(arg_2.a, _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(56930u, var_0.b.x, 21454u)), var_0.b), 0u, !arg_0, ~(~vec4<u32>(arg_1.e.x, arg_1.e.x, arg_2.c, arg_2.e.x)))), _wgslsmith_mod_u32((_wgslsmith_dot_vec2_u32(arg_2.e.xx, vec2<u32>(15420u, 1u)) ^ 40353u) >> (1u % 32u), 1u));
    return arg_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-273f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -513f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-206f - -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(all(vec3<bool>(false, true, false)), global1[_wgslsmith_index_u32(firstTrailingBit(39920u), 11u)], Struct_1(vec4<f32>(-748f, -1000f, -124f, -1000f), vec3<u32>(global2[_wgslsmith_index_u32(u_input.d.x, 8u)], global2[_wgslsmith_index_u32(20614u, 8u)], global2[_wgslsmith_index_u32(u_input.d.x, 8u)]), u_input.c, false, vec4<u32>(u_input.d.x, 16914u, 59438u, 33170u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 953f) + -655f) + -904f)), global2[_wgslsmith_index_u32(4294967295u, 8u)], vec3<f32>(1f, 1f, 1f), vec3<f32>(-1000f, -494f, _wgslsmith_f_op_f32(floor(-2049f))));
}

