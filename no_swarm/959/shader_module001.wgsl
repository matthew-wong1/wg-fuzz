struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(i32(-2147483648), vec4<u32>(1u, 18572u, 46675u, 0u), false, vec3<i32>(1i, -1i, 16744i)), Struct_1(-6532i, vec4<u32>(56937u, 132289u, 68959u, 4294967295u), true, vec3<i32>(-12472i, -46853i, -1i)), Struct_1(34463i, vec4<u32>(0u, 44899u, 0u, 31919u), true, vec3<i32>(3606i, i32(-2147483648), -2567i)), Struct_1(4129i, vec4<u32>(3570u, 60624u, 4294967295u, 1u), true, vec3<i32>(0i, -1i, 22333i)), Struct_1(46254i, vec4<u32>(26401u, 85350u, 4294967295u, 4294967295u), false, vec3<i32>(34796i, 1i, 0i)), Struct_1(13199i, vec4<u32>(0u, 42969u, 0u, 1u), true, vec3<i32>(20694i, 2147483647i, 49057i)), Struct_1(-1i, vec4<u32>(1u, 58905u, 1u, 54103u), false, vec3<i32>(3816i, 43927i, 41897i)), Struct_1(0i, vec4<u32>(1u, 29766u, 34526u, 22087u), true, vec3<i32>(2147483647i, 2186i, 12409i)), Struct_1(1992i, vec4<u32>(1u, 109590u, 1u, 0u), true, vec3<i32>(-21735i, 2147483647i, 81912i)), Struct_1(0i, vec4<u32>(18664u, 1u, 30992u, 22222u), false, vec3<i32>(2147483647i, -3624i, -12371i)), Struct_1(1i, vec4<u32>(95116u, 72352u, 71233u, 0u), false, vec3<i32>(-1i, 1i, i32(-2147483648))), Struct_1(0i, vec4<u32>(39666u, 0u, 4294967295u, 42215u), true, vec3<i32>(-29899i, -16905i, 27938i)), Struct_1(2147483647i, vec4<u32>(4294967295u, 6429u, 2968u, 27872u), false, vec3<i32>(19773i, 44107i, 2147483647i)), Struct_1(22556i, vec4<u32>(1u, 1u, 4294967295u, 32589u), true, vec3<i32>(i32(-2147483648), -1i, 49375i)), Struct_1(0i, vec4<u32>(24746u, 89969u, 63331u, 1u), true, vec3<i32>(43416i, 1i, 0i)), Struct_1(i32(-2147483648), vec4<u32>(4294967295u, 4294967295u, 81367u, 4294967295u), true, vec3<i32>(32841i, 13121i, 1i)), Struct_1(i32(-2147483648), vec4<u32>(40383u, 11346u, 58426u, 1u), false, vec3<i32>(-13181i, 1i, 0i)), Struct_1(0i, vec4<u32>(23622u, 7039u, 19710u, 82958u), false, vec3<i32>(0i, i32(-2147483648), i32(-2147483648))), Struct_1(0i, vec4<u32>(4294967295u, 40934u, 0u, 19898u), false, vec3<i32>(2147483647i, 0i, 1i)), Struct_1(-11759i, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 23372u), false, vec3<i32>(i32(-2147483648), 1i, 0i)), Struct_1(28345i, vec4<u32>(583u, 66067u, 19983u, 0u), true, vec3<i32>(26051i, 2147483647i, 52638i)));

var<private> global1: array<u32, 12> = array<u32, 12>(4294967295u, 72753u, 40138u, 11648u, 103612u, 1u, 37082u, 34107u, 64915u, 45073u, 1u, 0u);

var<private> global2: array<u32, 27> = array<u32, 27>(52959u, 1141u, 4294967295u, 4294967295u, 1u, 1u, 1351u, 4294967295u, 40368u, 4294967295u, 6063u, 7084u, 16470u, 82167u, 5104u, 69458u, 1u, 1u, 55030u, 4294967295u, 41049u, 6071u, 90155u, 31312u, 1u, 0u, 122489u);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>) -> i32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(361f + arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -551f))));
    let var_1 = max(~(~(~(~111665u))), u_input.a);
    let var_2 = arg_1;
    global2 = array<u32, 27>();
    global1 = array<u32, 12>();
    return 19634i;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(17702i, arg_0.x, firstLeadingBit(arg_0.x), ~2147483647i)) | arg_0, ~(~(~max(arg_0, vec4<i32>(arg_0.x, -2147483647i, arg_0.x, 7434i)))));
    let var_1 = global0[_wgslsmith_index_u32(0u, 21u)];
    global2 = array<u32, 27>();
    let var_2 = select(~1i, func_3(arg_1.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1401f + arg_1.x)), _wgslsmith_f_op_f32(249f - -1000f))), var_1.c);
    return Struct_1(arg_0.x | ~(-1i), select(select(~(~var_1.b), arg_2, !vec4<bool>(false, true, var_1.c, true)), var_1.b, var_1.c), select(((global1[_wgslsmith_index_u32(u_input.a, 12u)] << (31804u % 32u)) & global2[_wgslsmith_index_u32(abs(1u), 27u)]) < 4294967295u, var_1.c, var_1.c), vec3<i32>(_wgslsmith_div_i32(firstLeadingBit(1i), var_2), -firstLeadingBit(2147483647i), _wgslsmith_mod_i32(1i, ~1i)) & var_1.d);
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> vec3<f32> {
    var var_0 = !(!select(select(vec2<bool>(arg_0.c, true), select(vec2<bool>(arg_0.c, false), vec2<bool>(arg_0.c, arg_0.c), arg_0.c), vec2<bool>(arg_0.c, false)), select(select(vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(true, false), arg_0.c), select(vec2<bool>(arg_0.c, false), vec2<bool>(true, true), arg_0.c), select(vec2<bool>(arg_0.c, true), vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(false, arg_0.c))), !(!vec2<bool>(arg_0.c, arg_0.c))));
    var var_1 = vec4<bool>(!var_0.x, true, false, _wgslsmith_sub_i32(arg_0.a, _wgslsmith_mod_i32(~(-68491i), abs(arg_0.d.x))) > arg_0.d.x);
    var var_2 = _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(arg_0.d.yx, arg_0.d.xx), abs(max(arg_0.d.zx, vec2<i32>(42550i, arg_0.a))), countOneBits(vec2<i32>(-arg_0.d.x, -27921i))), vec2<i32>(1i, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(163f + 849f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(349f, 833f)))));
    var var_3 = Struct_2(~arg_0.a, func_2(select(vec4<i32>(var_2.x, 1i, arg_0.d.x, 40477i), vec4<i32>(var_2.x, ~2147483647i, _wgslsmith_mult_i32(1i, arg_0.a), arg_0.d.x), select(!vec4<bool>(arg_0.c, true, arg_0.c, true), !vec4<bool>(false, var_0.x, false, true), vec4<bool>(arg_0.c, true, false, var_1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(472f, -269f))))), select(~vec4<u32>(1u, u_input.a, 41339u, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(1u, 27u)], 0u, arg_1, 62197u), arg_0.b) | (vec4<u32>(0u, 1u, arg_1, 0u) | arg_0.b), true)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1586f, -1060f, -581f) + vec3<f32>(-408f, -1809f, -2638f)))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: i32, arg_2: vec3<f32>, arg_3: bool) -> Struct_2 {
    return Struct_2(reverseBits(arg_1), Struct_1(_wgslsmith_add_i32(arg_1, -1i), vec4<u32>(abs(global2[_wgslsmith_index_u32(55249u, 27u)]), 1u | u_input.a, _wgslsmith_mod_u32(0u, 36622u), 4294967295u) >> (vec4<u32>(u_input.a << (global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 27u)], 12u)], 27u)] % 32u), min(0u, u_input.a), 0u, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(55046u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(18752u, 27u)], 27u)]), 27u)]) % vec4<u32>(32u)), any(select(vec2<bool>(true, false), vec2<bool>(true, arg_3), true)), ~firstTrailingBit(vec3<i32>(arg_1, 1i, arg_1))));
}

fn func_1() -> Struct_1 {
    let var_0 = func_5(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-145f, -761f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-157f - -420f)), _wgslsmith_f_op_f32(-762f * _wgslsmith_f_op_f32(f32(-1f) * -750f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1000f))))))), abs(~_wgslsmith_clamp_i32(-5482i, ~(-37894i), 1i)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(func_2(vec4<i32>(16413i, 11529i, 51275i, -1i), vec2<f32>(305f, 1041f), vec4<u32>(59455u, global1[_wgslsmith_index_u32(u_input.a, 12u)], 10311u, global2[_wgslsmith_index_u32(1u, 27u)])), u_input.a)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1490f, -220f, 468f), vec3<f32>(2044f, -1066f, 679f)))))), true);
    global1 = array<u32, 12>();
    let var_1 = _wgslsmith_div_f32(-1206f, 583f);
    var var_2 = vec4<i32>(-min(-1i, var_0.a), reverseBits(~(-5420i)), i32(-1i) * -1i, countOneBits(reverseBits(_wgslsmith_add_i32(1i, max(35651i, var_0.a)))));
    let var_3 = var_0.b;
    return global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(~global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(var_0.b.b.xyx, vec3<u32>(var_0.b.b.x, 4294967295u, var_3.b.x)), ~46695u), 27u)], ~max(var_3.b.x, 16697u)), func_5(vec4<f32>(var_1, -1207f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), var_1), -2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-187f, var_1, 826f) + vec3<f32>(1000f, var_1, var_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1057f, var_1, 1008f))))), false).b.b.x), 21u)];
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = (4294967295u <= _wgslsmith_div_u32(arg_1.b.x, ~4294967295u)) && true;
    global1 = array<u32, 12>();
    var var_1 = func_5(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(660f, _wgslsmith_f_op_f32(-790f + -840f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(sign(arg_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-422f, arg_0, arg_0, 891f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(197f, arg_0, -1590f, arg_0), vec4<f32>(-687f, -639f, 2241f, -932f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2179f, arg_0, 1240f, arg_0))))))), reverseBits(abs(abs(-1i))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 - arg_0), arg_0))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0, 1000f, arg_0), vec3<f32>(arg_0, -980f, 429f))), vec3<f32>(1000f, -106f, arg_0), select(vec3<bool>(arg_2.c, true, false), vec3<bool>(true, arg_2.c, true), arg_1.c))))), !arg_1.c)), select(arg_2.c, false, arg_1.c));
    let var_2 = !(false != any(vec2<bool>(arg_2.c & false, any(vec3<bool>(true, var_0, arg_1.c)))));
    let var_3 = var_1.b.a;
    return min(~_wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(var_1.a, 5186i), countOneBits(-1101i)), reverseBits(select(var_1.b.a, var_1.b.d.x, var_0))), -3736i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(-(~(-2147483647i)), func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(393f, -111f)))), func_1(), func_2(vec4<i32>(_wgslsmith_mult_i32(0i, 2147483647i), _wgslsmith_add_i32(0i, 1i), 1i, ~43231i), vec2<f32>(_wgslsmith_f_op_f32(1164f * 930f), _wgslsmith_f_op_f32(f32(-1f) * -110f)), ~func_5(vec4<f32>(-1680f, -1318f, 1114f, -1000f), -63890i, vec3<f32>(-1000f, -1820f, 1565f), false).b.b)));
    var var_1 = !(!(!(func_1().c & true)));
    let var_2 = u_input.a;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-124f, -1502f, 355f) + vec3<f32>(2119f, 1795f, 510f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2026f, -579f, -691f))), vec3<f32>(136f, 1f, _wgslsmith_f_op_f32(-2421f + -2021f)), vec3<bool>(true, true, true)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(944f, -553f, 816f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(982f, -744f, 832f) * vec3<f32>(-1066f, -823f, -2085f)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1130f, -1038f, 1000f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1257f, -1700f, -340f) + vec3<f32>(732f, -618f, 1198f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2071f, -388f, 675f) * vec3<f32>(314f, -917f, 1000f)), vec3<f32>(1236f, 1273f, 344f), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true))), true))));
    var_1 = any(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true | any(vec3<bool>(true, true, true)), true), !select(vec2<bool>(true, false), vec2<bool>(true, true), false)));
    let var_4 = global0[_wgslsmith_index_u32(1u, 21u)];
    var var_5 = vec2<bool>(var_4.c, true);
    let x = u_input.a;
    s_output = StorageBuffer(62503u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.x, var_3.x, 267f, var_3.x), vec4<f32>(-960f, var_3.x, var_3.x, var_3.x))))) - _wgslsmith_div_vec4_f32(vec4<f32>(var_3.x, var_3.x, -1045f, var_3.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1614f, 563f, -1056f, var_3.x) * vec4<f32>(-996f, var_3.x, var_3.x, -1131f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1005f, 891f, -2245f, 1933f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1296f + 1331f), _wgslsmith_f_op_f32(floor(var_3.x))))))));
}

