struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 9>;

var<private> global1: vec4<f32> = vec4<f32>(275f, 1202f, -203f, 277f);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32) -> bool {
    let var_0 = any(select(select(vec2<bool>(true, false), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))), vec2<bool>(true, true)), vec2<bool>(true, true), !(!all(vec3<bool>(false, true, false)))));
    var var_1 = !(!vec4<bool>(_wgslsmith_f_op_f32(arg_1 - global1.x) >= _wgslsmith_f_op_f32(step(-1359f, 2928f)), !var_0, true, any(!vec2<bool>(true, var_0))));
    var var_2 = Struct_1(global1.yy, -(u_input.d << (~abs(vec3<u32>(u_input.b, u_input.c, 1859u)) % vec3<u32>(32u))), 1u, vec4<u32>(u_input.b, 9666u, 4294967295u, 1u) >> ((min(~vec4<u32>(70352u, u_input.e, u_input.e, u_input.b), ~vec4<u32>(42072u, u_input.e, u_input.c, 27244u)) >> (vec4<u32>(0u, u_input.c >> (23212u % 32u), _wgslsmith_sub_u32(35873u, u_input.e), _wgslsmith_add_u32(2220u, u_input.b)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return var_0;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: vec3<bool>, arg_3: vec2<bool>) -> vec2<f32> {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1120f, -1673f, global1.x))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2421f, -1000f, global1.x, -404f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1026f, global1.x, -1306f, -1374f))), arg_2.x))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(620f, global1.x, global1.x, 371f), vec4<f32>(global1.x, global1.x, 117f, -266f)), vec4<f32>(global1.x, -1286f, -943f, _wgslsmith_f_op_f32(-global1.x))))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(-461f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.x)) - -1247f))), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(global1.x)), _wgslsmith_f_op_f32(round(global1.x)), arg_3.x)) * global1.x)));
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(global1.x + -593f), _wgslsmith_f_op_f32(floor(-311f)))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, _wgslsmith_f_op_f32(max(294f, 569f)), 1f, _wgslsmith_f_op_f32(-global1.x)), vec4<f32>(_wgslsmith_f_op_f32(147f - -1444f), _wgslsmith_div_f32(1047f, 1000f), _wgslsmith_f_op_f32(f32(-1f) * -276f), 823f)))));
    let var_1 = global1.zyx;
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1106f), _wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_div_f32(var_0.x, -1695f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.x, -1556f, arg_3.x)) * -644f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 197f, global1.x, -416f)), _wgslsmith_div_vec4_f32(vec4<f32>(575f, 1000f, 140f, 343f), vec4<f32>(-570f, var_0.x, var_1.x, 519f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))), -1368f, _wgslsmith_f_op_f32(-var_1.x), 210f)));
    global0 = array<vec3<f32>, 9>();
    return var_1.zx;
}

fn func_2() -> bool {
    var var_0 = global1.x;
    let var_1 = vec3<u32>(_wgslsmith_sub_u32(~(~5079u), min(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, u_input.b), vec2<u32>(u_input.c, u_input.e)), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(9865u, 17563u)))), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(1u, 23381u, 9345u)), select(vec3<u32>(u_input.c, u_input.c, 0u), vec3<u32>(47958u, u_input.c, u_input.b), true)), ~(~1u)) ^ ~(vec3<u32>(3862u, 4294967295u, ~0u) >> (select(vec3<u32>(u_input.c, 1u, u_input.c), vec3<u32>(4294967295u, 1u, u_input.e), vec3<bool>(true, true, true)) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.x)))), 652f);
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(func_4(var_1.xx, reverseBits(abs(vec4<i32>(1i, 2147483647i, 33291i, -6415i))), vec3<bool>(true, true, true), vec2<bool>(true, func_3(u_input.d.zy, -987f)))), abs(abs(_wgslsmith_mod_vec3_i32(u_input.d, vec3<i32>(u_input.d.x, -11392i, 1i)))), 9896u, abs(~vec4<u32>(u_input.c, var_1.x, 0u, 20195u))), Struct_1(_wgslsmith_f_op_vec2_f32(global1.wx - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(946f, global1.x), vec2<f32>(global1.x, -1558f))), global1.xw)), ~vec3<i32>(select(-41043i, u_input.a.x, true), u_input.d.x, 17108i), 0u, ~(~firstTrailingBit(vec4<u32>(0u, 65762u, 0u, u_input.e)))), _wgslsmith_sub_vec4_i32(~_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(53827i, u_input.d.x, -10183i, 0i), vec4<i32>(-2376i, u_input.a.x, 0i, u_input.d.x)), vec4<i32>(2147483647i, 1i, -4265i, 2147483647i) & vec4<i32>(-2147483647i, u_input.a.x, u_input.d.x, 1i)), max(vec4<i32>(44003i, u_input.d.x, u_input.d.x, _wgslsmith_add_i32(-6376i, 0i)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, -34792i, u_input.d.x, -1i), vec4<i32>(u_input.a.x, 1i, -16538i, u_input.a.x)), abs(0i), 1i, 2147483647i))));
    let var_4 = Struct_3(Struct_2(var_3.b, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -443f), _wgslsmith_f_op_f32(global1.x - var_3.b.a.x)), vec3<i32>(countOneBits(29441i), _wgslsmith_dot_vec4_i32(vec4<i32>(-11139i, -1i, var_3.a.b.x, u_input.d.x), var_3.c), max(2147483647i, -2147483647i)), _wgslsmith_dot_vec4_u32(abs(var_3.b.d), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.e, u_input.c, u_input.b), vec4<u32>(var_3.a.c, u_input.c, 6092u, var_3.a.d.x), var_3.b.d)), vec4<u32>(18161u, countOneBits(var_1.x), 30325u, countOneBits(u_input.c))), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(-2147483647i, 14410i, var_3.b.b.x, -2147483647i)), firstLeadingBit(vec4<i32>(1i, -20766i, u_input.d.x, u_input.d.x) >> (var_3.a.d % vec4<u32>(32u))))));
    return true;
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: f32) -> Struct_2 {
    var var_0 = vec4<u32>(4294967295u, u_input.b, 38895u, u_input.c);
    var var_1 = select(vec2<bool>(arg_1, arg_1 & !(u_input.b <= var_0.x)), select(vec2<bool>(!(true != arg_1), true), select(select(vec2<bool>(arg_1, false), vec2<bool>(true, true), arg_1 || arg_1), !select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, false), true), all(vec3<bool>(true, arg_1, false))), arg_1), vec2<bool>(true, _wgslsmith_mod_i32(u_input.d.x, u_input.a.x) >= -abs(u_input.a.x)));
    var_1 = !(!select(vec2<bool>(var_1.x, true), !vec2<bool>(var_1.x, true), !(!vec2<bool>(arg_1, arg_1))));
    let var_2 = -92288i == -_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, -59999i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 3710i, u_input.a.x, -1i)), vec4<i32>(2147483647i, 0i, u_input.d.x, u_input.a.x) >> (vec4<u32>(var_0.x, u_input.c, 15960u, 1u) % vec4<u32>(32u))), u_input.d.x | 1i);
    let var_3 = min(~0u, 1u);
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(arg_2, 485f)), 2029f) - vec2<f32>(_wgslsmith_f_op_f32(ceil(733f)), _wgslsmith_f_op_f32(arg_2 * arg_0))), _wgslsmith_mod_vec3_i32(~(u_input.d >> (vec3<u32>(59338u, 4294967295u, 1u) % vec3<u32>(32u))), min(reverseBits(vec3<i32>(u_input.d.x, u_input.a.x, u_input.d.x)), vec3<i32>(1i, u_input.d.x, 18934i))), _wgslsmith_dot_vec3_u32(var_0.yzz, var_0.xwx), firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.e, var_0.x, u_input.e) ^ vec4<u32>(85576u, var_0.x, 17908u, 57236u), _wgslsmith_mult_vec4_u32(vec4<u32>(var_3, u_input.c, u_input.b, 37088u), vec4<u32>(69795u, var_3, 0u, 12138u))))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.yw)), u_input.d, abs(61378u), abs(_wgslsmith_add_vec4_u32(vec4<u32>(var_3, var_3, 4294967295u, 9198u), vec4<u32>(4294967295u, u_input.c, var_0.x, 19133u))) ^ ~firstLeadingBit(vec4<u32>(76434u, var_3, var_0.x, u_input.e))), ~firstLeadingBit(select(vec4<i32>(0i, 2147483647i, -1i, 2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.a.x, u_input.a.x, -43147i), vec4<i32>(-26118i, u_input.d.x, u_input.a.x, u_input.d.x)), !var_2)));
}

fn func_6(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: bool) -> Struct_1 {
    let var_0 = select(-abs(_wgslsmith_mod_i32(arg_1.x, 0i)), ~(~0i), arg_2);
    let var_1 = arg_0;
    var var_2 = arg_0;
    let var_3 = 1092f;
    global0 = array<vec3<f32>, 9>();
    return func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_4(arg_0.a.a.d.xy, vec4<i32>(arg_0.a.c.x, u_input.d.x, arg_1.x, 31859i), vec3<bool>(false, arg_2, true), vec2<bool>(arg_2, true))).x - -954f) + arg_0.a.a.a.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(724f - 1000f) * 1f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(f32(-1f) * -1357f)))), !func_2(), -1138f).a;
}

fn func_1() -> Struct_1 {
    return func_6(Struct_3(func_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.x))), func_2(), _wgslsmith_f_op_f32(-677f + _wgslsmith_f_op_f32(global1.x * global1.x)))), vec2<i32>(u_input.a.x, 0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) > _wgslsmith_f_op_f32(-global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_mult_i32(var_0.b.x, -45790i);
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -489f) - _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1000f)), var_0.a.x)))));
    var_0 = func_5(771f, any(vec4<bool>(true, true, true, true)) != (global1.x == _wgslsmith_f_op_f32(f32(-1f) * -1092f)), global1.x).a;
    let var_2 = Struct_3(func_5(var_0.a.x, false, _wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.c, u_input.b), vec2<u32>(4294967295u, 4294967295u)), countOneBits(vec4<i32>(-24292i, var_0.b.x, -1i, 34867i)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)))).x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(f32(-1f) * -716f)))));
    let x = u_input.a;
    s_output = StorageBuffer(-var_2.a.c, _wgslsmith_sub_i32(~u_input.d.x, var_2.a.c.x));
}

