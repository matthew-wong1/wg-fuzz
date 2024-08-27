struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_4,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_5, 7> = array<Struct_5, 7>(Struct_5(vec3<u32>(18397u, 1u, 1u), Struct_2(-6012i, Struct_1(vec2<i32>(i32(-2147483648), -35427i), vec2<f32>(-564f, 1036f), vec3<f32>(-154f, -993f, -871f), vec4<i32>(i32(-2147483648), -1i, 42604i, -13857i), vec4<f32>(-352f, 401f, -1000f, 150f)), Struct_1(vec2<i32>(0i, i32(-2147483648)), vec2<f32>(105f, -1200f), vec3<f32>(-114f, -1376f, -938f), vec4<i32>(15557i, 2147483647i, -1i, i32(-2147483648)), vec4<f32>(-1667f, -1956f, 551f, 522f))), Struct_4(vec4<i32>(7034i, -21160i, 1792i, i32(-2147483648)), vec4<bool>(false, true, false, true)), 0u), Struct_5(vec3<u32>(4294967295u, 12328u, 0u), Struct_2(2147483647i, Struct_1(vec2<i32>(4664i, -28513i), vec2<f32>(-1000f, -475f), vec3<f32>(-1350f, -1000f, 522f), vec4<i32>(5268i, -27377i, 1i, 2147483647i), vec4<f32>(1120f, -270f, -442f, -1294f)), Struct_1(vec2<i32>(1i, -6908i), vec2<f32>(-1740f, 141f), vec3<f32>(233f, 354f, -1006f), vec4<i32>(-39558i, -29284i, 31039i, -30466i), vec4<f32>(785f, -917f, 2100f, -579f))), Struct_4(vec4<i32>(1i, 27950i, -12271i, -53680i), vec4<bool>(false, false, false, true)), 4294967295u), Struct_5(vec3<u32>(33341u, 1u, 8358u), Struct_2(2147483647i, Struct_1(vec2<i32>(2147483647i, -51330i), vec2<f32>(476f, -1620f), vec3<f32>(107f, 1000f, -1157f), vec4<i32>(-60509i, 18458i, 633i, -61585i), vec4<f32>(-833f, 170f, 1054f, 1000f)), Struct_1(vec2<i32>(i32(-2147483648), -23718i), vec2<f32>(966f, 139f), vec3<f32>(489f, -154f, -614f), vec4<i32>(0i, i32(-2147483648), 54921i, -1i), vec4<f32>(-1447f, 1000f, -901f, -1446f))), Struct_4(vec4<i32>(3121i, i32(-2147483648), 7336i, -25467i), vec4<bool>(false, false, true, false)), 87144u), Struct_5(vec3<u32>(4294967295u, 1u, 25108u), Struct_2(-33245i, Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<f32>(1189f, -1440f), vec3<f32>(888f, 1025f, 474f), vec4<i32>(53972i, -35385i, -1i, -1i), vec4<f32>(-1234f, -1000f, 1380f, 766f)), Struct_1(vec2<i32>(45671i, 2147483647i), vec2<f32>(-418f, -2048f), vec3<f32>(-366f, 110f, -913f), vec4<i32>(1i, -1i, 30473i, 2147483647i), vec4<f32>(-1014f, -1061f, 690f, -1817f))), Struct_4(vec4<i32>(2147483647i, 57696i, -849i, i32(-2147483648)), vec4<bool>(false, true, false, false)), 0u), Struct_5(vec3<u32>(6795u, 4294967295u, 1u), Struct_2(2241i, Struct_1(vec2<i32>(i32(-2147483648), 0i), vec2<f32>(-496f, -389f), vec3<f32>(316f, -2056f, 632f), vec4<i32>(-1i, 2147483647i, -35038i, 0i), vec4<f32>(278f, -1165f, 396f, 135f)), Struct_1(vec2<i32>(-1i, -18141i), vec2<f32>(1000f, 1948f), vec3<f32>(-218f, -992f, -2162f), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), -1i), vec4<f32>(-831f, 452f, 227f, -1000f))), Struct_4(vec4<i32>(0i, -38783i, 45347i, 18750i), vec4<bool>(true, false, true, false)), 42820u), Struct_5(vec3<u32>(58358u, 4294967295u, 0u), Struct_2(-34772i, Struct_1(vec2<i32>(2147483647i, -57115i), vec2<f32>(-715f, 364f), vec3<f32>(-1795f, -1191f, -1688f), vec4<i32>(3356i, 1i, -36975i, -38387i), vec4<f32>(-726f, -831f, -1000f, 899f)), Struct_1(vec2<i32>(23731i, i32(-2147483648)), vec2<f32>(-914f, -240f), vec3<f32>(-673f, 1620f, -901f), vec4<i32>(0i, 1i, -23992i, -55544i), vec4<f32>(-2188f, -2167f, -2203f, -738f))), Struct_4(vec4<i32>(-26616i, 2147483647i, 2147483647i, 18492i), vec4<bool>(true, true, false, true)), 0u), Struct_5(vec3<u32>(57935u, 1u, 0u), Struct_2(i32(-2147483648), Struct_1(vec2<i32>(1i, -10872i), vec2<f32>(367f, -2253f), vec3<f32>(861f, 173f, -1000f), vec4<i32>(1i, -13046i, -797i, -26865i), vec4<f32>(-336f, 270f, -643f, -498f)), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec2<f32>(-123f, 207f), vec3<f32>(-1199f, 197f, 843f), vec4<i32>(25288i, 0i, 8325i, 1i), vec4<f32>(-242f, -683f, -979f, -2070f))), Struct_4(vec4<i32>(14870i, 2147483647i, 4611i, -40761i), vec4<bool>(false, true, false, true)), 17576u));

var<private> global2: array<Struct_4, 2>;

var<private> global3: u32;

var<private> global4: array<bool, 21>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<f32>, arg_3: Struct_4) -> vec2<i32> {
    let var_0 = 17359u;
    var var_1 = arg_0.e.wyw;
    var_1 = _wgslsmith_f_op_vec3_f32(-arg_0.e.xxz);
    let var_2 = Struct_3(~abs(vec2<u32>(var_0, 102348u)), vec2<f32>(var_1.x, -449f), Struct_2(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-23940i, arg_3.a.x) & -2147483647i, -18977i), arg_0, arg_0));
    global2 = array<Struct_4, 2>();
    return -(~vec2<i32>(2147483647i, countOneBits(~arg_0.a.x)));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>) -> vec2<f32> {
    let var_0 = ~vec4<u32>(41004u, _wgslsmith_mult_u32(_wgslsmith_div_u32(18799u, 4294967295u), 36897u), 4294967295u, ~52735u) | firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 21200u, 12923u, 21215u), vec4<u32>(0u, 46164u, 0u, 2035u)), min(vec4<u32>(34063u, 0u, 4294967295u, 0u), vec4<u32>(4294967295u, 4294967295u, 1u, 34563u))), 52846u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(47734u, 4294967295u, 14841u), vec3<u32>(59255u, 4294967295u, 6245u)) % 32u), 33040u, max(~4294967295u, min(4294967295u, 4294967295u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -823f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-763f, -2718f)) * _wgslsmith_f_op_f32(max(2622f, 387f))) + _wgslsmith_f_op_f32(151f * _wgslsmith_f_op_f32(f32(-1f) * -587f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 1262f) - _wgslsmith_f_op_f32(345f - 130f)))));
    let var_2 = Struct_3(var_0.yy, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(var_1.xx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1578f))))))), Struct_2(_wgslsmith_clamp_i32(u_input.c, u_input.a.x, u_input.c), Struct_1(u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, 203f), vec2<f32>(var_1.x, 1897f))), vec3<f32>(_wgslsmith_f_op_f32(ceil(var_1.x)), _wgslsmith_f_op_f32(min(507f, 762f)), _wgslsmith_f_op_f32(-var_1.x)), ~(~vec4<i32>(-2147483647i, u_input.a.x, u_input.b, u_input.a.x)), _wgslsmith_f_op_vec4_f32(floor(var_1))), Struct_1(_wgslsmith_sub_vec2_i32(u_input.a, _wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.b), vec2<i32>(-4750i, -62150i))), vec2<f32>(var_1.x, _wgslsmith_f_op_f32(var_1.x + var_1.x)), var_1.xww, _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, -4698i, -5339i), -vec4<i32>(-69008i, 1i, u_input.b, u_input.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-632f, var_1.x, -1359f, -685f))))));
    var var_3 = global1[_wgslsmith_index_u32(max(4294967295u, 9037u), 7u)];
    return _wgslsmith_f_op_vec2_f32(-var_2.b);
}

fn func_1(arg_0: f32, arg_1: Struct_4) -> u32 {
    let var_0 = _wgslsmith_add_i32(1i, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(u_input.b, 0i, u_input.c)), _wgslsmith_div_vec3_i32(vec3<i32>(21836i, arg_1.a.x, arg_1.a.x), vec3<i32>(arg_1.a.x, -1323i, -50569i))), countOneBits(arg_1.a.wyw ^ vec3<i32>(-7574i, arg_1.a.x, u_input.b))), arg_1.a.x));
    let var_1 = Struct_2(_wgslsmith_mod_i32(arg_1.a.x & _wgslsmith_dot_vec3_i32(arg_1.a.yxy, vec3<i32>(-2147483647i, var_0, arg_1.a.x)), select(_wgslsmith_dot_vec2_i32(func_2(Struct_1(arg_1.a.yx, vec2<f32>(-1777f, 2778f), vec3<f32>(arg_0, -621f, -332f), arg_1.a, vec4<f32>(-467f, 1405f, -1082f, arg_0)), arg_1.b, vec4<f32>(arg_0, 472f, arg_0, arg_0), global2[_wgslsmith_index_u32(1u, 2u)]), ~arg_1.a.ww), -u_input.a.x | 40413i, global4[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(9219u, 1535u), 69996u), 21u)])), Struct_1(-_wgslsmith_mod_vec2_i32(~u_input.a, u_input.a >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(func_3(true & any(vec3<bool>(true, global4[_wgslsmith_index_u32(4294967295u, 21u)], arg_1.b.x)), select(vec2<bool>(arg_1.b.x, global4[_wgslsmith_index_u32(12345u, 21u)]), vec2<bool>(true, true), all(vec4<bool>(arg_1.b.x, true, false, true))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1255f, -1162f, 992f), vec3<f32>(arg_0, -604f, arg_0))))))), firstTrailingBit(vec4<i32>(arg_1.a.x, ~1i, var_0, 1i)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 1849f, arg_0) - vec4<f32>(-176f, 1000f, 288f, -448f)))))), Struct_1(firstTrailingBit(_wgslsmith_add_vec2_i32(~u_input.a, firstTrailingBit(u_input.a))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -2638f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_vec2_f32(func_3(arg_1.b.x, vec2<bool>(global4[_wgslsmith_index_u32(94804u, 21u)], global4[_wgslsmith_index_u32(4294967295u, 21u)]))).x, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_vec2_f32(func_3(global4[_wgslsmith_index_u32(91913u, 21u)], arg_1.b.xw)).x)), firstLeadingBit(arg_1.a ^ (arg_1.a << (vec4<u32>(1u, 0u, 28741u, 35098u) % vec4<u32>(32u)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, arg_0) - vec4<f32>(arg_0, -504f, -468f, arg_0))), vec4<f32>(-1869f, _wgslsmith_f_op_f32(round(-1000f)), -1365f, 2290f), vec4<bool>(true, false, !arg_1.b.x, any(arg_1.b.zx))))));
    var var_2 = 4294967295u;
    let var_3 = vec4<f32>(-1000f, _wgslsmith_f_op_f32(-arg_0), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1591f + _wgslsmith_f_op_f32(f32(-1f) * -369f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1106f), _wgslsmith_f_op_f32(f32(-1f) * -533f)))));
    let var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_vec2_f32(func_3(true, select(vec2<bool>(arg_1.b.x, global4[_wgslsmith_index_u32(24125u, 21u)]), arg_1.b.yx, arg_1.b.x))).x, -371f, _wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(-var_3.x)))), var_1.c.e.xyw);
    return (_wgslsmith_clamp_u32(~40913u, 4294967295u, 1u) & ~1u) & 54342u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(vec2<u32>(45974u & func_1(724f, global2[_wgslsmith_index_u32(0u, 2u)]), 1u << (0u % 32u)) ^ vec2<u32>(~(~78450u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 65570u, 39533u), vec4<u32>(26944u, 1u, 4294967295u, 4294967295u))));
    let var_1 = vec4<u32>(1u, var_0.x, 4294967295u, countOneBits(var_0.x));
    let var_2 = global4[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(1437f)))))), global2[_wgslsmith_index_u32(var_1.x, 2u)]), 21u)];
    let var_3 = var_0.x;
    let var_4 = -298f;
    var var_5 = Struct_5(var_1.xyy, Struct_2(u_input.a.x, Struct_1(u_input.a, vec2<f32>(var_4, -1205f), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_4, var_4, 785f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 398f, var_4)))), _wgslsmith_add_vec4_i32(vec4<i32>(7246i, 27905i, -2147483647i, u_input.b) ^ vec4<i32>(-51246i, -2147483647i, 0i, u_input.a.x), vec4<i32>(-24270i, u_input.b, -2147483647i, u_input.a.x)), vec4<f32>(_wgslsmith_f_op_f32(step(var_4, 756f)), _wgslsmith_f_op_f32(-1132f * var_4), _wgslsmith_f_op_f32(-765f + var_4), _wgslsmith_f_op_f32(step(var_4, var_4)))), Struct_1(u_input.a, _wgslsmith_f_op_vec2_f32(func_3(!global4[_wgslsmith_index_u32(1u, 21u)], vec2<bool>(true, global4[_wgslsmith_index_u32(14952u, 21u)]))), vec3<f32>(_wgslsmith_f_op_f32(var_4 - -480f), _wgslsmith_f_op_f32(1413f + var_4), -1235f), _wgslsmith_mult_vec4_i32(vec4<i32>(21328i, u_input.a.x, 1i, u_input.c), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.b), vec4<i32>(u_input.c, u_input.a.x, u_input.a.x, 907i))), vec4<f32>(746f, -1000f, _wgslsmith_f_op_f32(var_4 * -271f), 347f))), Struct_4(abs(~_wgslsmith_mod_vec4_i32(vec4<i32>(-65700i, -1i, -27039i, u_input.c), vec4<i32>(u_input.c, -2775i, u_input.b, u_input.c))), select(vec4<bool>(!global4[_wgslsmith_index_u32(50242u, 21u)], global4[_wgslsmith_index_u32(~0u, 21u)], global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_1, var_1), 21u)], global4[_wgslsmith_index_u32(~62260u, 21u)]), vec4<bool>(global4[_wgslsmith_index_u32(~0u, 21u)], any(vec3<bool>(global4[_wgslsmith_index_u32(14635u, 21u)], true, global4[_wgslsmith_index_u32(var_1.x, 21u)])), !global4[_wgslsmith_index_u32(0u, 21u)], var_4 <= 266f), vec4<bool>(true, true, any(vec4<bool>(global4[_wgslsmith_index_u32(7838u, 21u)], global4[_wgslsmith_index_u32(var_0.x, 21u)], global4[_wgslsmith_index_u32(var_3, 21u)], global4[_wgslsmith_index_u32(var_3, 21u)])), all(vec2<bool>(false, false))))), 46064u);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~var_1.x), vec3<i32>(_wgslsmith_mult_i32(29082i, 0i), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(var_5.c.a.wzy, -vec3<i32>(-17332i, var_5.c.a.x, var_5.c.a.x)), vec3<i32>(4320i, _wgslsmith_clamp_i32(39259i, u_input.b, var_5.c.a.x), u_input.b)), ~reverseBits(u_input.b)), -2147483647i);
}

