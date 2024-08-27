struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
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

var<private> global0: vec3<i32> = vec3<i32>(2147483647i, 2147483647i, 26447i);

var<private> global1: array<vec4<i32>, 25> = array<vec4<i32>, 25>(vec4<i32>(2147483647i, 0i, 10513i, 1i), vec4<i32>(451i, -26451i, -34488i, -1i), vec4<i32>(13561i, 0i, i32(-2147483648), 22503i), vec4<i32>(93914i, -31535i, -76281i, -7064i), vec4<i32>(69254i, 87599i, -1i, i32(-2147483648)), vec4<i32>(-34186i, -33072i, -20712i, i32(-2147483648)), vec4<i32>(261i, 62366i, 2147483647i, -20454i), vec4<i32>(1i, 51526i, 0i, 7710i), vec4<i32>(50616i, 141429i, i32(-2147483648), 1i), vec4<i32>(1i, -1i, i32(-2147483648), -1i), vec4<i32>(-45402i, 2147483647i, 0i, 19732i), vec4<i32>(32981i, i32(-2147483648), 13649i, 0i), vec4<i32>(30519i, 32757i, 21124i, 0i), vec4<i32>(i32(-2147483648), 932i, -2970i, -19649i), vec4<i32>(15502i, 18365i, 46694i, -30488i), vec4<i32>(2147483647i, 2147483647i, 31599i, -12726i), vec4<i32>(42312i, -27353i, -9216i, -4378i), vec4<i32>(-20783i, 4585i, -1i, 29230i), vec4<i32>(-30504i, 26971i, -1i, 1i), vec4<i32>(-49799i, 1i, 1i, -18067i), vec4<i32>(-12909i, -30899i, -1i, -1i), vec4<i32>(77933i, -33436i, i32(-2147483648), -1i), vec4<i32>(42843i, 9139i, i32(-2147483648), 1i), vec4<i32>(-25443i, -15975i, -4854i, 2147483647i), vec4<i32>(i32(-2147483648), 0i, -31813i, 14145i));

var<private> global2: vec3<i32>;

var<private> global3: bool;

var<private> global4: vec4<i32> = vec4<i32>(4477i, -1i, i32(-2147483648), -23584i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: u32) -> u32 {
    global3 = abs(reverseBits(_wgslsmith_mult_i32(global0.x, _wgslsmith_mod_i32(global0.x, global2.x)))) < -1i;
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, -885f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0, 1603f), vec2<f32>(arg_0, -826f))))))));
    var var_1 = 46381i;
    global0 = ~(~(-vec3<i32>(-2147483647i, abs(global4.x), _wgslsmith_sub_i32(u_input.a.x, global0.x))));
    global4 = vec4<i32>(_wgslsmith_clamp_i32(select(1i, global4.x, 47696u < arg_2), max(abs(_wgslsmith_clamp_i32(35983i, 57215i, global0.x)), 1i), -(~global2.x)), min(select(u_input.b, -u_input.b, arg_1 == true) | _wgslsmith_clamp_i32(_wgslsmith_add_i32(global4.x, 1i), _wgslsmith_add_i32(global4.x, global2.x), i32(-1i) * -1i), -1i), _wgslsmith_add_i32(abs(min(abs(global2.x), i32(-1i) * -7616i)), 29553i), global2.x);
    return arg_2;
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_2, arg_3: u32) -> vec2<bool> {
    let var_0 = Struct_2(arg_2.c, Struct_1(_wgslsmith_f_op_f32(ceil(arg_2.d.a)), abs(1i), vec2<bool>(any(vec4<bool>(arg_2.c.c.x, true, false, false)) || true, true)), Struct_1(arg_2.c.a, 4276i, select(vec2<bool>(!arg_2.d.c.x, -1114f != arg_2.a.a), vec2<bool>(true, true), any(arg_2.a.c))), arg_2.a);
    var var_1 = _wgslsmith_div_u32(firstTrailingBit(0u), countOneBits(_wgslsmith_mod_u32(abs(arg_0.x), 44909u) << (0u % 32u)));
    var_1 = 4294967295u;
    var var_2 = -vec3<i32>(51206i, select(98906i, -42328i, _wgslsmith_f_op_f32(floor(arg_2.b.a)) == -723f), ~firstTrailingBit(-7645i & u_input.b));
    var_2 = abs(global4.yww);
    return vec2<bool>(!var_0.b.c.x, arg_2.d.a <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1726f)))) - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.c.a, arg_2.b.a)))));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: u32) -> vec4<u32> {
    let var_0 = select(!vec3<bool>(any(vec4<bool>(true, true, true, true)), true && (-139f != arg_0.x), false), !(!select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(false, true, true), true)), !vec3<bool>(!any(vec2<bool>(false, true)), true, false));
    global3 = true;
    global4 = global1[_wgslsmith_index_u32(abs(arg_2), 25u)];
    let var_1 = arg_0.x;
    var var_2 = Struct_1(1f, ~abs(global4.x), select(select(func_3(vec3<u32>(arg_2, arg_2, arg_2), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, arg_2, 4294967295u, 47217u), vec4<u32>(arg_2, arg_2, arg_2, arg_2)), Struct_2(Struct_1(var_1, global4.x, var_0.zy), Struct_1(-1000f, u_input.b, vec2<bool>(false, true)), Struct_1(var_1, -2147483647i, vec2<bool>(var_0.x, false)), Struct_1(var_1, u_input.a.x, vec2<bool>(var_0.x, var_0.x))), firstLeadingBit(arg_2)), vec2<bool>(select(true, var_0.x, var_0.x), true), var_0.x), var_0.zx, (abs(arg_2) == arg_2) | true));
    return _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2, 39951u, min(~arg_2 | countOneBits(arg_2), ~reverseBits(arg_2)), arg_2), vec4<u32>(_wgslsmith_clamp_u32(2851u, countOneBits(~0u), _wgslsmith_dot_vec2_u32(vec2<u32>(28259u, arg_2), ~vec2<u32>(1u, 1u))), ~4294967295u, arg_2, ~16750u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 25>();
    var var_0 = _wgslsmith_mod_vec4_u32(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(284f, -472f, 1616f)) * vec3<f32>(_wgslsmith_f_op_f32(abs(1412f)), _wgslsmith_f_op_f32(f32(-1f) * -737f), _wgslsmith_f_op_f32(f32(-1f) * -1105f))), vec4<f32>(_wgslsmith_f_op_f32(sign(-2043f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-230f))), 1041f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1331f)) - _wgslsmith_div_f32(1000f, -890f))), func_1(1390f, true, _wgslsmith_mod_u32(_wgslsmith_div_u32(1u, 20649u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 14297u), vec2<u32>(0u, 23033u))))), vec4<u32>(_wgslsmith_div_u32(1u, 1u), 0u, abs(56061u), 1u));
    let var_1 = vec4<u32>(~4294967295u, _wgslsmith_add_u32(_wgslsmith_mod_u32(~var_0.x, var_0.x), var_0.x), 1u, firstTrailingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(59569u, var_0.x), vec2<u32>(4294967295u, var_0.x)) >> (0u % 32u)));
    var var_2 = Struct_2(Struct_1(-953f, countOneBits(-6160i), !vec2<bool>(all(vec2<bool>(false, false)), true)), Struct_1(1038f, _wgslsmith_sub_i32(-(61951i & global0.x), -_wgslsmith_add_i32(global4.x, 1i)), vec2<bool>(true, true)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(100f))), -58152i, select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), any(vec4<bool>(true, true, true, true)))), Struct_1(_wgslsmith_div_f32(-229f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1148f, 1574f))), -24207i, func_3(var_0.yyy | (vec3<u32>(var_1.x, 17292u, 26399u) ^ var_0.yxw), firstLeadingBit(1u), Struct_2(Struct_1(-270f, 1i, vec2<bool>(false, false)), Struct_1(-705f, -17398i, vec2<bool>(false, true)), Struct_1(-850f, -11552i, vec2<bool>(true, false)), Struct_1(-1263f, 10488i, vec2<bool>(false, true))), _wgslsmith_div_u32(var_0.x & 22248u, ~1u))));
    let var_3 = var_2.a.a;
    let var_4 = var_2.a;
    let var_5 = vec2<bool>(true, true);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(select(_wgslsmith_add_i32(global0.x & 15600i, 33766i), var_4.b, var_5.x)));
}

