struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 15> = array<vec4<i32>, 15>(vec4<i32>(22678i, 1i, -21424i, -9164i), vec4<i32>(1i, -34199i, 2147483647i, i32(-2147483648)), vec4<i32>(-4311i, 33410i, 9075i, -1i), vec4<i32>(0i, 1i, -1i, -29184i), vec4<i32>(1i, 0i, i32(-2147483648), 2147483647i), vec4<i32>(-1i, 26789i, -36396i, 2147483647i), vec4<i32>(0i, 23566i, i32(-2147483648), 27331i), vec4<i32>(2903i, 1i, i32(-2147483648), -1i), vec4<i32>(2147483647i, -62932i, 55355i, -1i), vec4<i32>(-1i, 1i, -2828i, -19179i), vec4<i32>(-36901i, -83471i, -29850i, -46719i), vec4<i32>(-3134i, -5494i, i32(-2147483648), -31231i), vec4<i32>(28275i, -20535i, 2147483647i, 1i), vec4<i32>(-1i, -27135i, -47016i, 51105i), vec4<i32>(6452i, 0i, 18486i, 24735i));

var<private> global1: array<i32, 14>;

var<private> global2: array<vec4<i32>, 17> = array<vec4<i32>, 17>(vec4<i32>(2147483647i, 34943i, 12669i, -44634i), vec4<i32>(18193i, -62051i, 1i, 45357i), vec4<i32>(0i, 23568i, 2147483647i, -13930i), vec4<i32>(i32(-2147483648), -39639i, 2147483647i, -1i), vec4<i32>(i32(-2147483648), 1i, 2147483647i, -110967i), vec4<i32>(-24622i, 1i, 2147483647i, -24359i), vec4<i32>(48456i, 1i, i32(-2147483648), 35766i), vec4<i32>(1i, 1i, -3082i, i32(-2147483648)), vec4<i32>(37047i, i32(-2147483648), 0i, -1565i), vec4<i32>(-1i, 35894i, 0i, -35079i), vec4<i32>(-29358i, -1i, 49692i, 1i), vec4<i32>(i32(-2147483648), 0i, 37872i, -32603i), vec4<i32>(-59648i, 2147483647i, 2147483647i, -15797i), vec4<i32>(0i, 1i, i32(-2147483648), 5408i), vec4<i32>(1i, 25951i, i32(-2147483648), -33131i), vec4<i32>(2147483647i, -50789i, 1i, 2147483647i), vec4<i32>(i32(-2147483648), -16363i, 18896i, 2147483647i));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2() -> u32 {
    global0 = array<vec4<i32>, 15>();
    let var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(min(~0u, _wgslsmith_div_u32(976u, u_input.a)), 1u) ^ _wgslsmith_sub_u32(10012u, ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), u_input.a >> (u_input.a % 32u))), 14u)];
    var var_1 = global1[_wgslsmith_index_u32(4294967295u, 14u)];
    global1 = array<i32, 14>();
    var var_2 = -1334i;
    return countOneBits(u_input.a);
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: u32) -> i32 {
    let var_0 = vec2<u32>(u_input.a, 4294967295u);
    var var_1 = Struct_2(Struct_1(vec2<i32>(~global1[_wgslsmith_index_u32(38400u ^ u_input.a, 14u)], max(1i, -1i)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-503f, 823f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1618f, -1011f, -659f), vec3<f32>(1965f, -300f, 1045f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(627f, -1148f, 1322f), vec3<f32>(1250f, 1000f, 692f), arg_0.x)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(734f)), -1000f, _wgslsmith_div_f32(-1000f, -218f)) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-472f, -2836f, 620f) + vec3<f32>(788f, -1376f, -2026f)))))), Struct_1(_wgslsmith_div_vec2_i32(min(vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 14u)], -2147483647i), vec2<i32>(1i, arg_1)) & min(vec2<i32>(2147483647i, -2602i), vec2<i32>(23926i, global1[_wgslsmith_index_u32(u_input.a, 14u)])), select(vec2<i32>(arg_1, -2147483647i), vec2<i32>(2147483647i, 2147483647i), true) >> (var_0 % vec2<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-3104f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(647f + 975f))))));
    let var_2 = Struct_2(Struct_1(select(countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.a.a.x, 0i), var_1.a.a)), ~vec2<i32>(12861i, 2603i) << (abs(var_0) % vec2<u32>(32u)), false), _wgslsmith_f_op_f32(select(408f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.b.x)) + var_1.c.b), global1[_wgslsmith_index_u32(7663u, 14u)] >= firstLeadingBit(var_1.a.a.x)))), _wgslsmith_f_op_vec3_f32(-var_1.b), var_1.a);
    global2 = array<vec4<i32>, 17>();
    global0 = array<vec4<i32>, 15>();
    return _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(_wgslsmith_sub_i32(arg_1, 12099i), 1i, firstTrailingBit(59551i)), reverseBits(vec3<i32>(4872i, -1i, arg_1) >> (countOneBits(vec3<u32>(u_input.a, 4294967295u, 131808u)) % vec3<u32>(32u)))), -1i & ~(-arg_1));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: f32, arg_3: vec3<f32>) -> vec2<u32> {
    let var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(select(1i, arg_0.x, u_input.a < firstLeadingBit(u_input.a)), -arg_0.x << (_wgslsmith_mod_u32(u_input.a, func_2()) % 32u), func_3(vec2<bool>(false, true), global1[_wgslsmith_index_u32(152864u, 14u)] << (1u % 32u), 0u) & firstTrailingBit(-14985i), -64562i), _wgslsmith_mult_vec4_i32(global0[_wgslsmith_index_u32(u_input.a, 15u)] & global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(arg_1.x, u_input.a), 17u)], _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(arg_1.x, 15u)] & global2[_wgslsmith_index_u32(55385u, 17u)]), vec4<i32>(func_3(vec2<bool>(true, true), -29728i, arg_1.x), ~(-2426i), 1i, ~arg_0.x))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_3.x)) * arg_3.xy)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + 359f)), arg_3.x)));
    var var_2 = Struct_2(Struct_1(-vec2<i32>(arg_0.x, global1[_wgslsmith_index_u32(u_input.a, 14u)]) | vec2<i32>(var_0.x, min(arg_0.x, -1i)), arg_3.x), vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x, _wgslsmith_f_op_f32(var_1.x - 1244f)), Struct_1(_wgslsmith_sub_vec2_i32(-(arg_0 >> (arg_1 % vec2<u32>(32u))), vec2<i32>(var_0.x | 4957i, arg_0.x)), -1000f));
    var var_3 = _wgslsmith_sub_vec3_i32(vec3<i32>(1i, _wgslsmith_clamp_i32(-1i, _wgslsmith_clamp_i32(1i, ~var_2.a.a.x, arg_0.x ^ -2147483647i), firstTrailingBit(-2147483647i)), -(~(i32(-1i) * -2147483647i))), var_0.ywz);
    let var_4 = Struct_1(-(~(-(~vec2<i32>(1i, 0i)))), _wgslsmith_f_op_f32(var_1.x * -112f));
    return vec2<u32>(arg_1.x, ~arg_1.x);
}

fn func_4(arg_0: vec2<u32>) -> u32 {
    global0 = array<vec4<i32>, 15>();
    global0 = array<vec4<i32>, 15>();
    global0 = array<vec4<i32>, 15>();
    let var_0 = Struct_1(select(~abs(vec2<i32>(21025i, global1[_wgslsmith_index_u32(27110u, 14u)]) ^ vec2<i32>(9560i, global1[_wgslsmith_index_u32(102435u, 14u)])), select(vec2<i32>(abs(30621i), -17832i), max(vec2<i32>(global1[_wgslsmith_index_u32(arg_0.x, 14u)], global1[_wgslsmith_index_u32(12560u, 14u)]), vec2<i32>(37341i, global1[_wgslsmith_index_u32(arg_0.x, 14u)])) & select(vec2<i32>(2147483647i, global1[_wgslsmith_index_u32(arg_0.x, 14u)]), vec2<i32>(0i, global1[_wgslsmith_index_u32(0u, 14u)]), vec2<bool>(true, false)), any(vec2<bool>(true, true))), firstLeadingBit(arg_0.x) <= 19834u), -400f);
    global1 = array<i32, 14>();
    return ~abs(~u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(~0u, 14u)];
    var var_1 = func_4(~reverseBits(func_1(_wgslsmith_mult_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(1579u, 14u)], global1[_wgslsmith_index_u32(1u, 14u)]), vec2<i32>(global1[_wgslsmith_index_u32(12849u, 14u)], global1[_wgslsmith_index_u32(0u, 14u)])), vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -978f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(312f, 1792f, 415f), vec3<f32>(-904f, -1616f, 602f))))));
    let var_2 = Struct_2(Struct_1(vec2<i32>(~(-1i) & (2147483647i << (u_input.a % 32u)), abs(1i)), _wgslsmith_f_op_f32(f32(-1f) * -425f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(834f, -570f, true)), _wgslsmith_f_op_f32(-578f - 2963f), _wgslsmith_div_f32(-696f, -1570f)) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-1691f, 1038f, -897f), vec3<f32>(336f, -1997f, 434f))))), vec3<f32>(-1374f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, -543f))), -1738f)), Struct_1(vec2<i32>(0i >> (~u_input.a % 32u), -6851i), -1695f));
    var_0 = var_2.c.a.x;
    let var_3 = Struct_1(-vec2<i32>(10716i, -50502i), 599f);
    var var_4 = vec3<u32>(u_input.a, u_input.a, _wgslsmith_mod_u32(u_input.a, 1u)) >> (vec3<u32>(32434u, 4294967295u >> (func_2() % 32u), ~51235u) % vec3<u32>(32u));
    let var_5 = var_2;
    var var_6 = var_5.a;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec4<u32>(var_4.x, func_2(), u_input.a, func_1(firstLeadingBit(vec2<i32>(-1i, var_2.c.a.x)), var_4.yx, _wgslsmith_f_op_f32(427f * 537f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.b.x, 777f, -1000f)))).x)), 4294967295u, vec2<i32>(_wgslsmith_div_i32(countOneBits(40405i), var_3.a.x), 14689i << (~(~var_4.x) % 32u)), var_4.x, vec3<u32>(var_4.x, ~select(1u, var_4.x, true), ~_wgslsmith_sub_u32(var_4.x, 13690u)));
}

