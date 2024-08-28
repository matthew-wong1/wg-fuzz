struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
    c: Struct_3,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -293f;

var<private> global1: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(0i, i32(-2147483648), -1i), vec3<i32>(0i, -33124i, -89596i), vec3<i32>(-1i, 0i, 1i), vec3<i32>(-1i, i32(-2147483648), -1i), vec3<i32>(i32(-2147483648), -4884i, 1i));

var<private> global2: array<vec4<u32>, 3>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: bool, arg_3: Struct_5) -> f32 {
    let var_0 = select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, any(vec2<bool>(false, arg_2)), true), select(select(vec4<bool>(false, false, arg_2, arg_2), vec4<bool>(false, arg_2, arg_2, arg_2), vec4<bool>(arg_2, true, arg_2, arg_2)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, arg_2, arg_2, true), vec4<bool>(arg_2, arg_2, arg_2, arg_2)), !arg_2), !all(vec2<bool>(arg_2, arg_2))), !(!(!vec4<bool>(arg_2, false, true, false))), !vec4<bool>(true, arg_2 && false, true, any(vec3<bool>(arg_2, arg_2, arg_2)))), select(select(!select(vec4<bool>(false, arg_2, false, arg_2), vec4<bool>(true, false, true, false), vec4<bool>(arg_2, false, true, arg_2)), select(!vec4<bool>(arg_2, true, arg_2, true), select(vec4<bool>(true, false, arg_2, arg_2), vec4<bool>(true, arg_2, arg_2, false), arg_2), vec4<bool>(arg_2, arg_2, arg_2, false)), !vec4<bool>(arg_2, arg_2, false, false)), select(select(vec4<bool>(true, false, arg_2, true), vec4<bool>(false, false, arg_2, false), !arg_2), !vec4<bool>(arg_2, false, true, false), all(vec4<bool>(arg_2, true, false, true))), !arg_2));
    var var_1 = Struct_1(~(-(~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, -1i), vec2<i32>(u_input.b, 39068i)))), _wgslsmith_mult_vec4_i32(vec4<i32>(~1i, 1i, _wgslsmith_sub_i32(u_input.b, u_input.b), 23910i), select(-vec4<i32>(u_input.b, -31717i, -55448i, u_input.b), max(vec4<i32>(-23804i, -22212i, -1i, u_input.b), vec4<i32>(24644i, u_input.b, -1i, 0i)), select(false, arg_2, true))) | vec4<i32>(firstLeadingBit(u_input.b), ~(~u_input.b), -1i, -6172i), firstLeadingBit(vec2<i32>(reverseBits(-27237i), ~(-6597i))));
    let var_2 = Struct_3(~(~(~arg_3.a)), var_0);
    global2 = array<vec4<u32>, 3>();
    global0 = -736f;
    return _wgslsmith_f_op_f32(select(-881f, arg_1.x, !(var_0.x | select(any(var_0.yzz), true, all(var_0.zyz)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_2) -> vec2<u32> {
    global0 = _wgslsmith_f_op_f32(func_3(vec4<f32>(-1415f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_3.e.x)))))), arg_3.e.x, -189f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 130f, arg_2) * vec3<f32>(833f, -556f, arg_3.e.x)) * vec3<f32>(arg_2, arg_3.e.x, arg_2)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 1900f, -1098f), vec3<f32>(arg_2, 356f, 1963f))))), false, Struct_5(u_input.a.x)));
    global0 = arg_3.e.x;
    global1 = array<vec3<i32>, 5>();
    global2 = array<vec4<u32>, 3>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(679f, _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(arg_3.e.x + arg_2)))), _wgslsmith_f_op_f32(f32(-1f) * -936f)));
    return ~vec2<u32>(62735u, _wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(~u_input.a.x, 4294967295u)));
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = Struct_2(~vec4<i32>(arg_0, arg_0, _wgslsmith_div_i32(-20065i, u_input.b >> (4294967295u % 32u)), abs(~(-1589i))), _wgslsmith_sub_i32(0i, -51949i), ~u_input.a.zy & func_4(Struct_1(countOneBits(vec2<i32>(arg_0, arg_0)), ~vec4<i32>(u_input.b, u_input.b, -97464i, 3026i), vec2<i32>(u_input.b, 25879i)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1871f + 774f) - _wgslsmith_f_op_f32(func_3(vec4<f32>(-198f, -1284f, 431f, -710f), vec3<f32>(-414f, 613f, -1000f), true, Struct_5(0u)))), Struct_2(~vec4<i32>(u_input.b, -60246i, -2147483647i, 42278i), 1i, ~u_input.a.yz, Struct_1(vec2<i32>(50473i, u_input.b), vec4<i32>(u_input.b, 5573i, arg_0, -23571i), vec2<i32>(1i, arg_0)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-369f, -1193f))))), Struct_1(-vec2<i32>(_wgslsmith_mod_i32(1i, 1i), u_input.b), reverseBits(vec4<i32>(arg_0, arg_0, 28981i, arg_0)) | ~vec4<i32>(24412i, u_input.b, 7710i, 57893i), min(vec2<i32>(70846i, countOneBits(u_input.b)), -abs(vec2<i32>(-2796i, u_input.b)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-732f, 1342f), vec2<f32>(2083f, -869f), true)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1699f, 1754f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-830f, 1000f), vec2<f32>(175f, 1465f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(609f, -827f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(410f, 327f) * vec2<f32>(-322f, 1015f))))));
    let var_1 = Struct_4(~81317u, vec3<u32>(72115u, (1u ^ ~var_0.c.x) | 27873u, ~(~(var_0.c.x | 91874u))), Struct_3(var_0.c.x ^ abs(4294967295u), !(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), false))));
    let var_2 = _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.e.x, var_0.e.x, -466f, var_0.e.x), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(662f, var_0.e.x, var_0.e.x, -188f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -867f), _wgslsmith_f_op_f32(var_0.e.x + 606f), _wgslsmith_f_op_f32(max(1000f, 477f)), _wgslsmith_f_op_f32(var_0.e.x - -206f)) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(305f, var_0.e.x, var_0.e.x, var_0.e.x) + vec4<f32>(1080f, -1000f, var_0.e.x, var_0.e.x)), vec4<f32>(var_0.e.x, 682f, var_0.e.x, var_0.e.x))))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.e.x * -855f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1081f)) * var_0.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_0.e.x)), _wgslsmith_f_op_f32(-var_0.e.x))))), false, Struct_5(181u)));
    let var_3 = -(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, -1i, arg_0), reverseBits(var_0.d.b.xyy))) ^ ~(-(~arg_0)));
    global2 = array<vec4<u32>, 3>();
    return Struct_2(~abs(-var_0.d.b) & var_0.a, _wgslsmith_mod_i32(u_input.b, -1i), vec2<u32>(~_wgslsmith_clamp_u32(_wgslsmith_div_u32(var_1.c.a, 4294967295u), countOneBits(4294967295u), 14305u), _wgslsmith_mult_u32(var_1.c.a, ~4294967295u)), var_0.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(var_2)), _wgslsmith_f_op_f32(-1133f + var_2)) - var_0.e));
}

fn func_1() -> Struct_2 {
    return func_2(0i);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_4 {
    global2 = array<vec4<u32>, 3>();
    global2 = array<vec4<u32>, 3>();
    var var_0 = all(select(vec4<bool>(any(vec3<bool>(true, false, false)), (arg_1.x <= 28246i) || true, any(vec4<bool>(true, false, true, false)), u_input.a.x != 4294967295u), !vec4<bool>(u_input.a.x == 1u, 1000f >= arg_0.e.x, false, all(vec4<bool>(true, true, true, true))), select(vec4<bool>(any(vec3<bool>(false, false, false)), select(true, false, false), true, true), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false))));
    var_0 = true;
    var_0 = _wgslsmith_f_op_f32(442f - -2144f) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-314f, arg_0.e.x)) - arg_0.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -1227f));
    return Struct_4(~4294967295u, ~_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(arg_0.c.x, 7527u, 1u), u_input.a), ~firstTrailingBit(u_input.a)), Struct_3(~u_input.a.x, select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true)), true), vec4<bool>(all(vec4<bool>(true, true, false, true)), true, any(vec2<bool>(false, true)), u_input.a.x == u_input.a.x))));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_4) -> u32 {
    let var_0 = arg_1.a;
    let var_1 = -(firstTrailingBit(max(_wgslsmith_div_vec4_i32(vec4<i32>(1i, -2147483647i, -1i, u_input.b), vec4<i32>(5594i, u_input.b, 0i, u_input.b)), reverseBits(vec4<i32>(0i, u_input.b, -2701i, u_input.b)))) & ~vec4<i32>(14112i, 49878i, 9376i, func_1().d.a.x));
    var var_2 = func_1().d;
    var var_3 = vec2<u32>(0u, _wgslsmith_add_u32(arg_1.a, ~_wgslsmith_sub_u32(func_2(var_1.x).c.x, arg_0.a)));
    var var_4 = u_input.b;
    return ~(~(~0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = (u_input.a.x | func_6(Struct_3(u_input.a.x & u_input.a.x, vec4<bool>(true, true, true, true)), func_5(func_1(), -vec4<i32>(-7740i, -1i, 3197i, u_input.b)))) == 1u;
    var_0 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -140f), -524f, 175f, _wgslsmith_f_op_f32(f32(-1f) * -397f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(270f, 1695f, -783f)), vec3<f32>(-621f, 691f, 607f))), func_5(func_1(), vec4<i32>(u_input.b, -u_input.b, u_input.b, u_input.b)).c.b.x, Struct_5(~(~u_input.a.x)))) < -625f;
    var_0 = all(vec3<bool>(true, true, true));
    var var_1 = vec4<f32>(100f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -907f) * 907f), _wgslsmith_f_op_f32(f32(-1f) * -461f), _wgslsmith_f_op_f32(730f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1000f, -818f)), -940f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-33002i, vec4<i32>(abs(-max(u_input.b, u_input.b)), u_input.b, u_input.b, -1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -808f, var_1.x, 137f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(572f, 825f, var_1.x, var_1.x) + vec4<f32>(477f, var_1.x, var_1.x, -189f))))), ~abs(min(vec4<i32>(-1i, u_input.b, u_input.b, -1i) & vec4<i32>(u_input.b, u_input.b, u_input.b, -37732i), vec4<i32>(u_input.b, 61407i, u_input.b, u_input.b))));
}

