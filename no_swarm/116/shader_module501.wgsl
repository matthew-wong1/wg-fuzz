struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: bool,
    d: Struct_3,
    e: u32,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: array<vec3<u32>, 17> = array<vec3<u32>, 17>(vec3<u32>(6802u, 69158u, 0u), vec3<u32>(57590u, 4294967295u, 38884u), vec3<u32>(61034u, 4294967295u, 0u), vec3<u32>(52528u, 63820u, 1u), vec3<u32>(7122u, 4294967295u, 74133u), vec3<u32>(13214u, 1u, 6443u), vec3<u32>(24936u, 42681u, 0u), vec3<u32>(35701u, 71417u, 8916u), vec3<u32>(1u, 31791u, 1u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(4294967295u, 4294967295u, 44722u), vec3<u32>(62253u, 0u, 48136u), vec3<u32>(9969u, 1u, 39213u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(0u, 4294967295u, 13108u), vec3<u32>(22798u, 1u, 1u), vec3<u32>(0u, 0u, 4294967295u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(sign(-689f));
    let var_1 = select(vec2<u32>(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.b, u_input.b, u_input.b)), vec3<u32>(select(u_input.b, u_input.a, global0.x), 7744u, 1u)), 1u), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(u_input.b, u_input.a)), reverseBits(vec2<u32>(u_input.b, u_input.b)) | vec2<u32>(u_input.b, ~u_input.b)), global0.x);
    let var_2 = Struct_4(abs(vec4<u32>(var_1.x, _wgslsmith_clamp_u32(var_1.x, ~var_1.x, ~var_1.x), var_1.x, 70350u)), Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1000f, -212f, -1520f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1515f, -1000f, -591f, 734f) - vec4<f32>(-1188f, 1126f, -3191f, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2273f, 297f, -710f, 3047f)), arg_0)))), true), true, Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-821f, 666f, 1509f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(196f, -143f, -167f)), any(arg_0))) * vec3<f32>(-835f, _wgslsmith_f_op_f32(-349f - -903f), 162f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -299f, -1030f) + vec3<f32>(-696f, 119f, 517f))), vec3<f32>(_wgslsmith_f_op_f32(select(-319f, 714f, true)), _wgslsmith_f_op_f32(-466f * 391f), -1000f))), u_input.c | u_input.c, Struct_1(vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -2651f), _wgslsmith_f_op_f32(f32(-1f) * -125f), -205f), false), true), var_1.x);
    global1 = array<vec3<u32>, 17>();
    let var_3 = Struct_3(_wgslsmith_div_vec3_f32(var_2.d.a, var_2.b.a.zww), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.d.b) * vec3<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) * var_2.b.a.x), _wgslsmith_f_op_f32(var_2.d.b.x * _wgslsmith_f_op_f32(f32(-1f) * -839f)))), vec3<i32>(u_input.d ^ min(-4158i, -1i), _wgslsmith_mod_i32(-28389i, 2147483647i ^ (u_input.c.x & u_input.c.x)), 39430i), var_2.d.d, true);
    return ~var_2.a.wz;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<u32>, arg_3: vec3<i32>) -> f32 {
    global1 = array<vec3<u32>, 17>();
    let var_0 = Struct_4(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.b, reverseBits(1u)), 6506u, _wgslsmith_sub_u32(u_input.b, 4294967295u), ~arg_1.x), vec4<u32>(_wgslsmith_sub_u32(20377u, u_input.a), u_input.b, _wgslsmith_sub_u32(u_input.b, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 17498u), arg_1)) & vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(8601u, 60987u, arg_1.x), vec3<u32>(u_input.b, 0u, arg_1.x)), func_3(vec4<bool>(true, arg_0.b, global0.x, global0.x)).x, ~23580u, u_input.a)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.x - 163f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.a.x))), _wgslsmith_div_f32(-783f, _wgslsmith_f_op_f32(min(2487f, 1822f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -922f))), true), !(!any(select(vec2<bool>(true, global0.x), vec2<bool>(arg_0.b, arg_0.b), false))), Struct_3(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a.xxz) * vec3<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x)))), vec3<f32>(arg_0.a.x, 1000f, _wgslsmith_f_op_f32(trunc(1000f))), abs(~vec3<i32>(arg_3.x, arg_3.x, u_input.c.x) | -u_input.c), Struct_1(arg_0.a, _wgslsmith_f_op_f32(-arg_0.a.x) == _wgslsmith_f_op_f32(-arg_0.a.x)), !(!any(vec2<bool>(global0.x, arg_0.b)))), _wgslsmith_add_u32(0u, arg_1.x));
    var var_1 = u_input.a;
    let var_2 = global0.x;
    let var_3 = var_0.a;
    return 707f;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: Struct_4) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec4_f32(arg_0.a + vec4<f32>(arg_3.b.a.x, _wgslsmith_f_op_f32(min(arg_2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - arg_3.d.a.x) - _wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x)))), arg_0.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(Struct_1(arg_3.b.a, arg_3.b.b), ~vec2<u32>(37474u, arg_3.a.x), func_3(vec4<bool>(arg_2.e, false, true, arg_0.b)), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_3.d.c.x, arg_2.c.x, arg_3.d.c.x), vec3<i32>(2147483647i, u_input.d, arg_2.c.x)))), arg_2.d.a.x))));
    let var_1 = _wgslsmith_f_op_f32(169f + _wgslsmith_f_op_f32(f32(-1f) * -785f));
    global0 = !vec2<bool>(true, arg_2.d.b && all(vec4<bool>(false, true, true, false)));
    var var_2 = Struct_5(_wgslsmith_dot_vec3_i32(arg_2.c, vec3<i32>(2147483647i, ~10761i, u_input.d)), all(select(vec2<bool>(false, arg_2.d.b), vec2<bool>(arg_0.b, true), true)), _wgslsmith_mod_i32(arg_2.c.x, u_input.c.x), arg_3.a, reverseBits(-29072i));
    let var_3 = vec2<u32>(_wgslsmith_mult_u32(var_2.d.x, 0u), ~_wgslsmith_sub_u32(34451u, select(~4294967295u, var_2.d.x, !global0.x)));
    return Struct_5(~(-_wgslsmith_add_i32(~var_2.e, _wgslsmith_dot_vec3_i32(arg_3.d.c, vec3<i32>(-44304i, arg_1.x, -1i)))), (_wgslsmith_clamp_u32(~arg_3.e, _wgslsmith_mult_u32(u_input.b, 0u), select(7922u, u_input.a, false)) != 23296u) | true, -24192i, _wgslsmith_clamp_vec4_u32(~firstLeadingBit(var_2.d), vec4<u32>(_wgslsmith_sub_u32(var_3.x, 89806u), countOneBits(u_input.a), 20118u, 99580u), ~arg_3.a & arg_3.a) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(16753u, var_3.x, _wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(var_3.x, 17u)], var_2.d.zxw), ~u_input.a), (var_2.d << (vec4<u32>(var_3.x, u_input.b, 15770u, u_input.a) % vec4<u32>(32u))) ^ vec4<u32>(86435u, var_2.d.x, 26392u, var_3.x)), ~var_2.a);
}

fn func_5(arg_0: i32, arg_1: vec2<bool>, arg_2: i32, arg_3: Struct_5) -> Struct_5 {
    global1 = array<vec3<u32>, 17>();
    let var_0 = firstLeadingBit(0i);
    global0 = select(!select(vec2<bool>(arg_1.x, all(vec4<bool>(false, true, true, arg_1.x))), vec2<bool>(true, true), select(select(arg_1, arg_1, arg_1), vec2<bool>(true, false), arg_1)), vec2<bool>(false || arg_1.x, global0.x), true);
    let var_1 = Struct_1(vec4<f32>(1f, 1f, 1f, 1f), global0.x);
    var var_2 = min(select(~max(firstTrailingBit(arg_3.d.ywx), vec3<u32>(1u, 4294967295u, 51708u)), global1[_wgslsmith_index_u32(arg_3.d.x, 17u)], false), global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(u_input.a, reverseBits(arg_3.d.x))), 17u)]);
    return Struct_5(-func_2(Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, var_1.a.x, -746f, -400f), vec4<f32>(var_1.a.x, 179f, var_1.a.x, var_1.a.x), true)), var_1.a.x == -536f), -(~vec4<i32>(13779i, arg_0, 1i, -73351i)), Struct_3(var_1.a.xxy, vec3<f32>(-1000f, 603f, var_1.a.x), vec3<i32>(var_0, u_input.c.x, 1i) << (vec3<u32>(u_input.a, 69652u, var_2.x) % vec3<u32>(32u)), Struct_1(var_1.a, false), !arg_1.x), Struct_4(vec4<u32>(0u, var_2.x, 12150u, 76747u), Struct_1(var_1.a, var_1.b), arg_3.b, Struct_3(vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x), vec3<f32>(772f, 1264f, -1809f), u_input.c, Struct_1(var_1.a, global0.x), global0.x), _wgslsmith_mult_u32(var_2.x, arg_3.d.x))).e, !global0.x, _wgslsmith_add_i32((u_input.c.x | 1i) >> (_wgslsmith_dot_vec3_u32(~global1[_wgslsmith_index_u32(31358u, 17u)], select(vec3<u32>(75704u, u_input.a, 1149u), arg_3.d.yyw, vec3<bool>(arg_1.x, arg_1.x, arg_3.b))) % 32u), -1285i), arg_3.d, -arg_0 << (firstTrailingBit(var_2.x) % 32u));
}

fn func_6(arg_0: f32, arg_1: Struct_5, arg_2: u32, arg_3: vec4<i32>) -> vec3<f32> {
    let var_0 = select(select(select(vec2<bool>(global0.x || arg_1.b, arg_1.b), select(select(vec2<bool>(arg_1.b, global0.x), vec2<bool>(true, arg_1.b), false), !vec2<bool>(global0.x, false), global0.x), any(!vec3<bool>(arg_1.b, arg_1.b, global0.x))), vec2<bool>(false, true), select(select(select(vec2<bool>(false, global0.x), vec2<bool>(arg_1.b, global0.x), arg_1.b), select(vec2<bool>(arg_1.b, true), vec2<bool>(global0.x, arg_1.b), true), arg_1.b), vec2<bool>(!arg_1.b, true), any(select(vec4<bool>(global0.x, global0.x, global0.x, arg_1.b), vec4<bool>(arg_1.b, global0.x, false, global0.x), true)))), select(!(!select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, false), global0.x)), !(!(!vec2<bool>(false, global0.x))), vec2<bool>(func_2(Struct_1(vec4<f32>(1069f, -1503f, arg_0, -184f), global0.x), countOneBits(vec4<i32>(arg_3.x, -70143i, arg_1.c, -2147483647i)), Struct_3(vec3<f32>(arg_0, 253f, arg_0), vec3<f32>(-280f, arg_0, arg_0), arg_3.yyw, Struct_1(vec4<f32>(arg_0, 382f, 1778f, 1808f), global0.x), global0.x), Struct_4(arg_1.d, Struct_1(vec4<f32>(509f, -569f, arg_0, -1769f), global0.x), true, Struct_3(vec3<f32>(1039f, 155f, 1753f), vec3<f32>(858f, -537f, -922f), vec3<i32>(u_input.c.x, arg_3.x, arg_1.e), Struct_1(vec4<f32>(arg_0, arg_0, arg_0, -181f), global0.x), false), 34630u)).b, global0.x)), select(select(vec2<bool>(!arg_1.b, false), select(select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, false), vec2<bool>(global0.x, false)), !vec2<bool>(global0.x, arg_1.b), arg_1.c == u_input.c.x), firstTrailingBit(-1i) != -2147483647i), select(!select(vec2<bool>(arg_1.b, arg_1.b), vec2<bool>(arg_1.b, false), vec2<bool>(false, global0.x)), vec2<bool>(true, arg_1.b & global0.x), !vec2<bool>(global0.x, true)), true));
    global0 = vec2<bool>(false, false | all(vec4<bool>(var_0.x, false, arg_2 <= 86808u, 334f != arg_0)));
    var var_1 = 20695i;
    var var_2 = ~global1[_wgslsmith_index_u32(arg_1.d.x, 17u)];
    var var_3 = Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 795f, 177f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, -1704f)) + vec3<f32>(arg_0, arg_0, arg_0)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-764f, 181f, -1055f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -247f, arg_0) * vec3<f32>(arg_0, arg_0, -1350f)), _wgslsmith_div_vec3_f32(vec3<f32>(-2122f, 681f, arg_0), vec3<f32>(arg_0, arg_0, -933f))))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(457f, arg_0, -203f))) - vec3<f32>(arg_0, 2194f, -136f))))), -reverseBits(~u_input.c), Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, -1667f, arg_0, -1329f), vec4<f32>(1121f, arg_0, arg_0, arg_0), vec4<bool>(var_0.x, var_0.x, global0.x, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(347f, -1324f, arg_0, 1000f) - vec4<f32>(1360f, arg_0, arg_0, -255f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 1035f, arg_0))))), func_2(Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, arg_0, arg_0), vec4<f32>(752f, -1711f, arg_0, arg_0), false)), true == arg_1.b), arg_3, Struct_3(vec3<f32>(arg_0, arg_0, 1507f), vec3<f32>(arg_0, arg_0, -2519f), abs(arg_3.zzy), Struct_1(vec4<f32>(1027f, -399f, 971f, 320f), false), arg_1.b), Struct_4(_wgslsmith_add_vec4_u32(arg_1.d, arg_1.d), Struct_1(vec4<f32>(2722f, arg_0, -1260f, -1237f), false), all(vec3<bool>(false, global0.x, var_0.x)), Struct_3(vec3<f32>(-1275f, arg_0, 714f), vec3<f32>(arg_0, 783f, arg_0), arg_3.wzx, Struct_1(vec4<f32>(-264f, -1125f, 2075f, -905f), true), global0.x), arg_1.d.x)).b), true);
    return var_3.a;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_5, arg_2: u32) -> u32 {
    var var_0 = Struct_4(vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 19195u), arg_1.d.xzy) ^ ~(arg_1.d.x & u_input.a), 41685u, arg_2, 4294967295u), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0))), any(!vec4<bool>(global0.x, global0.x, arg_1.b, global0.x))), !(select(false, true | arg_1.b, global0.x) & all(select(vec2<bool>(global0.x, true), vec2<bool>(arg_1.b, global0.x), arg_1.b))), Struct_3(_wgslsmith_f_op_vec3_f32(func_6(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(arg_0.x)), -499f)), func_5(abs(-2147483647i), select(vec2<bool>(arg_1.b, false), vec2<bool>(false, false), true), -103087i, func_2(Struct_1(arg_0, false), vec4<i32>(arg_1.e, u_input.c.x, u_input.c.x, -2171i), Struct_3(vec3<f32>(arg_0.x, arg_0.x, arg_0.x), vec3<f32>(253f, 1019f, arg_0.x), vec3<i32>(u_input.c.x, -1i, -11367i), Struct_1(arg_0, false), true), Struct_4(arg_1.d, Struct_1(vec4<f32>(arg_0.x, arg_0.x, 113f, arg_0.x), true), arg_1.b, Struct_3(vec3<f32>(956f, arg_0.x, arg_0.x), arg_0.xxy, vec3<i32>(arg_1.a, arg_1.e, -16305i), Struct_1(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 1544f), global0.x), true), arg_1.d.x))), 45770u, select(-vec4<i32>(11942i, arg_1.c, arg_1.c, 2147483647i), -vec4<i32>(-31327i, 2147483647i, u_input.d, -1i), true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), arg_0.x, arg_0.x) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-773f, -215f, -752f) * arg_0.xxz)))), reverseBits(vec3<i32>(func_2(Struct_1(vec4<f32>(arg_0.x, -577f, arg_0.x, arg_0.x), arg_1.b), vec4<i32>(0i, 0i, -1i, arg_1.c), Struct_3(vec3<f32>(631f, 122f, -1000f), vec3<f32>(1216f, -1000f, 723f), vec3<i32>(13549i, -2147483647i, u_input.c.x), Struct_1(arg_0, global0.x), true), Struct_4(vec4<u32>(0u, 1u, 0u, arg_1.d.x), Struct_1(arg_0, false), false, Struct_3(vec3<f32>(arg_0.x, -925f, 375f), arg_0.xzz, vec3<i32>(u_input.d, arg_1.a, u_input.c.x), Struct_1(vec4<f32>(arg_0.x, 1000f, arg_0.x, 865f), arg_1.b), global0.x), 1u)).a, 53938i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a, arg_1.a, 41493i, u_input.c.x), vec4<i32>(2704i, u_input.d, arg_1.a, arg_1.e)))), Struct_1(_wgslsmith_f_op_vec4_f32(-arg_0), global0.x), !(!(false && global0.x))), 1u);
    let var_1 = !(!vec4<bool>(false, global0.x, func_2(Struct_1(var_0.d.d.a, true), vec4<i32>(19406i, -58670i, 0i, u_input.d), var_0.d, Struct_4(var_0.a, var_0.d.d, true, Struct_3(arg_0.xzx, arg_0.yzx, var_0.d.c, var_0.b, var_0.d.e), 17399u)).b, true));
    var var_2 = vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.c.xy & vec2<i32>(430i, 17804i), vec2<i32>(arg_1.a, -14948i)), (vec2<i32>(1i, -10835i) | vec2<i32>(-48529i, arg_1.e)) | select(vec2<i32>(var_0.d.c.x, u_input.c.x), vec2<i32>(arg_1.a, var_0.d.c.x), vec2<bool>(arg_1.b, false))), u_input.c.yy), ~arg_1.c, 10530i);
    var var_3 = Struct_2(~min(var_0.d.c.xx, firstLeadingBit(vec2<i32>(-46075i, var_2.x)) | (u_input.c.zy >> (vec2<u32>(13222u, 7616u) % vec2<u32>(32u)))), 923f, vec2<i32>(~abs(-var_2.x), -12962i >> (func_3(vec4<bool>(var_1.x, arg_1.b, false, true)).x % 32u)), firstTrailingBit(min(_wgslsmith_div_vec2_i32(var_2.yx, vec2<i32>(u_input.d, 1i)), var_0.d.c.zy) ^ u_input.c.yx), vec2<f32>(640f, _wgslsmith_f_op_f32(sign(1000f))));
    let var_4 = Struct_4(vec4<u32>(4294967295u, ~(~(~14246u)), _wgslsmith_dot_vec2_u32(func_5(-17498i, var_1.yy, var_2.x, arg_1).d.xw << (var_0.a.yy % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 54946u), var_0.a.yz), arg_1.d.ww)), _wgslsmith_clamp_u32(20285u, firstTrailingBit(31591u), reverseBits(17014u)) ^ var_0.a.x), var_0.b, any(vec4<bool>(true, !var_1.x, (191f < var_0.b.a.x) && all(var_1), all(vec4<bool>(false, false, arg_1.b, var_0.b.b)))), var_0.d, 65308u);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(u_input.d << (~(~1u) % 32u));
    var var_1 = Struct_5(1i, global0.x, var_0, max(vec4<u32>(_wgslsmith_div_u32(u_input.b, u_input.a), firstLeadingBit(1u) >> (u_input.b % 32u), ~_wgslsmith_div_u32(u_input.a, u_input.a), 24300u), reverseBits(vec4<u32>(_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(28009u, 17u)], vec3<u32>(0u, u_input.b, u_input.a)), u_input.a, func_1(vec4<f32>(-258f, -1000f, 392f, -667f), Struct_5(3060i, global0.x, -61750i, vec4<u32>(u_input.b, u_input.b, 3247u, u_input.a), u_input.d), u_input.b), u_input.b))), (~0i ^ var_0) | -reverseBits(_wgslsmith_sub_i32(var_0, 11969i)));
    let var_2 = ~vec2<u32>(func_1(vec4<f32>(544f, _wgslsmith_f_op_f32(sign(-812f)), _wgslsmith_f_op_vec3_f32(func_6(-844f, Struct_5(58921i, true, u_input.d, vec4<u32>(var_1.d.x, 70763u, var_1.d.x, var_1.d.x), u_input.c.x), 4294967295u, vec4<i32>(var_0, var_0, 0i, var_1.e))).x, -2016f), Struct_5(func_5(var_1.e, vec2<bool>(var_1.b, false), u_input.d, Struct_5(1i, var_1.b, 1i, var_1.d, 12904i)).c, all(vec2<bool>(var_1.b, true)), _wgslsmith_add_i32(u_input.c.x, 1i), ~vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), -5314i), max(var_1.d.x, 1u) & 18441u), ~_wgslsmith_dot_vec4_u32(var_1.d, vec4<u32>(32224u, var_1.d.x, 38368u, 30178u)) | 4294967295u);
    var var_3 = ~(~(~_wgslsmith_add_vec2_u32(vec2<u32>(11807u, u_input.b), vec2<u32>(u_input.a, var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_6(1f, func_2(Struct_1(vec4<f32>(309f, 281f, 443f, 648f), false), vec4<i32>(-10458i, u_input.d, -2147483647i, u_input.c.x), Struct_3(vec3<f32>(-689f, 438f, -751f), vec3<f32>(-283f, -1788f, 635f), u_input.c, Struct_1(vec4<f32>(-635f, 688f, -962f, -409f), false), global0.x), Struct_4(var_1.d, Struct_1(vec4<f32>(-453f, -1419f, 914f, 793f), var_1.b), true, Struct_3(vec3<f32>(810f, -1393f, 1024f), vec3<f32>(-1473f, -1293f, 1945f), u_input.c, Struct_1(vec4<f32>(-479f, -1093f, -445f, 1243f), global0.x), global0.x), 74757u)), _wgslsmith_sub_u32(u_input.a, var_2.x), vec4<i32>(var_0, -5631i, var_1.a, u_input.c.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(653f, -1043f, -1206f)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-700f, -1026f, 411f), vec3<f32>(228f, -846f, -644f))))))));
}

