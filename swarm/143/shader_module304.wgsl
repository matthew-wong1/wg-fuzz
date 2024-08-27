struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec4<i32>,
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

var<private> global0: i32 = 41233i;

var<private> global1: array<vec4<i32>, 31> = array<vec4<i32>, 31>(vec4<i32>(0i, 61618i, -1i, 14644i), vec4<i32>(1i, 0i, 33611i, 2147483647i), vec4<i32>(62847i, 2147483647i, 2147483647i, 2147483647i), vec4<i32>(-50500i, 73358i, -28311i, 1i), vec4<i32>(1619i, i32(-2147483648), -38468i, 0i), vec4<i32>(45394i, 0i, -1i, -69101i), vec4<i32>(1i, 49721i, 1705i, 2147483647i), vec4<i32>(i32(-2147483648), 71771i, 47815i, -28762i), vec4<i32>(-56885i, -61372i, 2147483647i, 40854i), vec4<i32>(37862i, 2147483647i, 0i, -1i), vec4<i32>(i32(-2147483648), i32(-2147483648), -12688i, i32(-2147483648)), vec4<i32>(2147483647i, 0i, 2147483647i, 1i), vec4<i32>(-48275i, i32(-2147483648), 0i, -1i), vec4<i32>(2147483647i, 44023i, -75192i, -52592i), vec4<i32>(33424i, 4269i, i32(-2147483648), -21367i), vec4<i32>(1i, 2147483647i, 1i, 1i), vec4<i32>(-60814i, 8145i, 2147483647i, i32(-2147483648)), vec4<i32>(2147483647i, -2875i, -10603i, 45421i), vec4<i32>(42037i, -4772i, 36785i, 2147483647i), vec4<i32>(57193i, -28521i, 1i, 14647i), vec4<i32>(-42132i, -10409i, -6746i, 17187i), vec4<i32>(-53458i, 18647i, i32(-2147483648), -1i), vec4<i32>(2147483647i, -1i, -17783i, 45146i), vec4<i32>(27181i, 34676i, 2147483647i, 2147483647i), vec4<i32>(-30792i, i32(-2147483648), 1i, -1i), vec4<i32>(-1187i, -1i, i32(-2147483648), 1i), vec4<i32>(-19567i, -31309i, -1i, 1i), vec4<i32>(0i, -15017i, 2147483647i, 2147483647i), vec4<i32>(2147483647i, 0i, 1i, 7555i), vec4<i32>(-63609i, i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec4<i32>(i32(-2147483648), 13293i, 0i, 1i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = 0u;
    let var_1 = vec3<bool>(true, _wgslsmith_div_i32(-2147483647i, arg_2.b.x) >= arg_2.b.x, true);
    global1 = array<vec4<i32>, 31>();
    var var_2 = _wgslsmith_add_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(arg_2.a, -1i), reverseBits(arg_2.b.zz) | vec2<i32>(arg_2.a, u_input.b)), u_input.e.zy);
    let var_3 = arg_2;
    return vec4<u32>(var_0, 0u << (countOneBits(_wgslsmith_mod_u32(~0u, _wgslsmith_div_u32(var_0, arg_0))) % 32u), firstLeadingBit(arg_0), _wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(_wgslsmith_mod_u32(var_0, 70458u)), _wgslsmith_add_u32(24047u, ~var_0), var_0, arg_0), ~vec4<u32>(4294967295u, var_0, 23827u, arg_0)));
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> vec3<bool> {
    return !vec3<bool>(true, !any(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), select(true, true, all(vec3<bool>(false, true, true)) | true));
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = arg_0;
    global0 = -1019i;
    let var_1 = select(!vec3<bool>(true, true, all(vec3<bool>(true, false, true))), select(!func_4(func_3(4294967295u, vec3<f32>(287f, -1653f, -173f), arg_0), 1i, 403f, Struct_1(arg_0.a, arg_0.b)), vec3<bool>(true, func_4(abs(vec4<u32>(66424u, 1u, 42340u, 28794u)), reverseBits(arg_0.a), _wgslsmith_f_op_f32(sign(1280f)), Struct_1(37402i, vec3<i32>(-19957i, -36403i, -1i))).x, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(462f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1056f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-775f, _wgslsmith_f_op_f32(260f - -346f))))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-639f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1221f + -1249f), -648f)), _wgslsmith_f_op_f32(exp2(1f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1384f, 1717f, 1705f) * vec3<f32>(365f, 1000f, 1311f)) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1782f, 1467f, -1388f) - vec3<f32>(791f, 631f, -1565f))))))));
    let var_3 = ~(~(~(~48789u)));
    return -_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(arg_0.b, select(vec3<i32>(-32449i, 2147483647i, -43746i), vec3<i32>(14366i, u_input.e.x, var_0.a), var_1)), var_0.b.x);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> f32 {
    var var_0 = select(arg_3.x, abs(min(~arg_3.x >> (_wgslsmith_clamp_u32(1u, arg_3.x, arg_3.x) % 32u), arg_3.x)), -2147483647i == func_2(arg_1));
    global0 = _wgslsmith_dot_vec3_i32(-_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(arg_2.b, arg_2.b), vec3<i32>(arg_2.a, _wgslsmith_add_i32(arg_2.b.x, arg_0), func_2(Struct_1(-5116i, arg_1.b)))), _wgslsmith_sub_vec3_i32(u_input.e.wwy, vec3<i32>(arg_1.b.x, -1i, arg_2.b.x)));
    let var_1 = vec4<bool>(false, firstLeadingBit(arg_3.x) == 0u, true, abs(arg_1.a) >= u_input.a);
    global0 = max(u_input.c ^ _wgslsmith_dot_vec3_i32(abs(~vec3<i32>(-22787i, arg_2.b.x, 0i)), vec3<i32>(~arg_0, -14898i, ~u_input.a)), _wgslsmith_clamp_i32(arg_1.b.x, _wgslsmith_div_i32(func_2(arg_2) | arg_1.a, arg_2.a), ~arg_0));
    let var_2 = var_1.zw;
    return _wgslsmith_f_op_f32(abs(-372f));
}

fn func_5(arg_0: f32, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: bool) -> Struct_1 {
    let var_0 = vec3<bool>(true, arg_3 && (arg_1.x < _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(211f, arg_0)))), !(!(arg_2.x < -1i)));
    global0 = firstTrailingBit(u_input.d.x);
    var var_1 = -vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.e, abs(vec4<i32>(u_input.a, -22404i, u_input.d.x, -1i))), u_input.e.x, firstLeadingBit(_wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(55944u, 31u)], u_input.d))) >> (firstLeadingBit(~firstLeadingBit(vec3<u32>(17576u, 0u, 37807u))) % vec3<u32>(32u));
    let var_2 = i32(-1i) * -2463i;
    var var_3 = select(~(~(-34442i | var_1.x)), 0i, true == !func_4(vec4<u32>(4294967295u, 6320u, 86169u, 32283u), 0i, -958f, Struct_1(-1i, u_input.d.zyz)).x);
    return Struct_1(_wgslsmith_sub_i32(var_1.x, -2147483647i) >> (4294967295u % 32u), -u_input.e.wyy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(-599f, vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-694f))))), -1525f, -1109f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(46367i, Struct_1(u_input.b, vec3<i32>(1i, u_input.b, u_input.e.x)), Struct_1(u_input.d.x, vec3<i32>(u_input.d.x, u_input.c, u_input.b)), vec4<u32>(28113u, 1u, 4294967295u, 73267u)))) - 1f)), ~vec2<i32>(_wgslsmith_add_i32(u_input.d.x, 16750i) >> (1u % 32u), u_input.c), 26324i == _wgslsmith_dot_vec3_i32(vec3<i32>(1i, abs(-8103i), -2147483647i), u_input.e.zzz));
    global0 = 18226i;
    var var_1 = _wgslsmith_f_op_f32(140f + -1164f);
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(302f)), -1000f, u_input.b < 9214i)) + _wgslsmith_f_op_f32(f32(-1f) * -308f)))));
    let var_3 = !select(vec4<bool>(true, true, true, true), !vec4<bool>(any(vec4<bool>(false, true, false, true)), false, any(vec2<bool>(false, true)), true), vec4<bool>(true, var_2 < _wgslsmith_f_op_f32(sign(-1882f)), true, false));
    let x = u_input.a;
    s_output = StorageBuffer(func_5(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * 1000f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2, -469f, -1442f, -1249f), _wgslsmith_div_vec4_f32(vec4<f32>(var_2, -1000f, -2503f, -1303f), vec4<f32>(var_2, -1000f, var_2, -169f)), !vec4<bool>(true, true, var_3.x, true))))), _wgslsmith_mult_vec2_i32(u_input.d.yy, firstTrailingBit(var_0.b.xx)), var_3.x).b.x);
}

