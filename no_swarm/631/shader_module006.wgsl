struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(0i, -1325i), vec2<i32>(3378i, i32(-2147483648)), 4294967295u);

var<private> global1: array<vec2<u32>, 8> = array<vec2<u32>, 8>(vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(5664u, 0u), vec2<u32>(4294967295u, 19804u), vec2<u32>(4294967295u, 0u), vec2<u32>(38971u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(43059u, 17674u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: u32) -> f32 {
    global1 = array<vec2<u32>, 8>();
    global1 = array<vec2<u32>, 8>();
    let var_0 = Struct_1(global0.a, max(vec2<i32>(-1i) * -vec2<i32>(-28598i, global0.a.x), global0.b), 54693u);
    let var_1 = 4294967295u;
    global0 = var_0;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -662f)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    global1 = array<vec2<u32>, 8>();
    let var_0 = _wgslsmith_f_op_f32(func_3(~(u_input.e.x >> ((1u >> (global0.c % 32u)) % 32u)), u_input.a.x));
    let var_1 = Struct_1(countOneBits(abs(-(global0.a & vec2<i32>(-11454i, 17779i)))), -_wgslsmith_sub_vec2_i32(vec2<i32>(-66256i, _wgslsmith_mod_i32(27079i, 41422i)), -(~global0.a)), ~19885u);
    let var_2 = 0u;
    let var_3 = ~global0.a.x;
    return var_1;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    global0 = arg_2;
    var var_0 = Struct_2(arg_2, arg_2, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-701f, arg_0))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, -686f), vec2<f32>(arg_0, -1871f)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0, 1009f)))))));
    let var_1 = Struct_1(var_0.a.a, var_0.a.a, 16523u);
    var_0 = Struct_2(func_2(!(-71810i >= _wgslsmith_mod_i32(21626i, global0.b.x))), Struct_1(global0.b, arg_2.a, min(966u, var_1.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, _wgslsmith_div_f32(-1347f, 829f)) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, var_0.c.x)))))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(global0.a.x, 1i) | vec2<i32>(global0.a.x, arg_2.a.x), vec2<i32>(var_0.a.a.x, arg_2.b.x >> (19912u % 32u))), arg_2.b, _wgslsmith_add_u32(arg_2.c, abs(1u)) << (79276u % 32u)), Struct_1(_wgslsmith_clamp_vec2_i32(select(global0.b, arg_2.a, vec2<bool>(false, false)) | var_0.b.a, var_0.a.a, -firstLeadingBit(global0.b)), vec2<i32>(~(-arg_2.a.x), 15508i), 39491u & abs(max(0u, global0.c))), var_0.c);
    return Struct_2(Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(0i, global0.b.x, var_0.b.b.x)), vec3<i32>(-2147483647i, -1i, var_2.b.b.x)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.x, global0.a.x, var_0.b.b.x, var_2.a.a.x), vec4<i32>(global0.a.x, var_0.b.b.x, 0i, var_1.b.x))), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(22953i, var_0.a.a.x, 1i), vec3<i32>(1i, 0i, arg_2.b.x)) & var_2.b.a.x, 24927i), global0.c), Struct_1(abs(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.a.b.x, arg_2.a.x), max(vec2<i32>(1i, arg_2.a.x), var_0.a.b))), reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a.b.x, -2147483647i), -vec2<i32>(0i, arg_2.b.x))), var_2.b.c), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-892f + var_0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1124f)), _wgslsmith_f_op_vec2_f32(select(var_2.c, vec2<f32>(1160f, 177f), vec2<bool>(true, true)))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2411f - var_2.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -645f))))));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec4_i32(abs(vec4<i32>(global0.b.x, -global0.a.x, arg_0.b.b.x, _wgslsmith_div_i32(-15515i, -1i))) & vec4<i32>(~global0.b.x & global0.a.x, global0.a.x, 0i, _wgslsmith_mult_i32(global0.a.x, _wgslsmith_clamp_i32(arg_0.a.b.x, global0.a.x, arg_0.b.b.x))), _wgslsmith_sub_vec4_i32(~_wgslsmith_mult_vec4_i32(~vec4<i32>(-1i, arg_0.b.b.x, -1i, 1i), -vec4<i32>(4769i, arg_0.b.b.x, -2147483647i, arg_0.a.a.x)), min(-vec4<i32>(21244i, 4921i, 43661i, 0i), -vec4<i32>(arg_0.b.a.x, global0.a.x, global0.b.x, 7059i)) << (u_input.e % vec4<u32>(32u))));
    let var_1 = Struct_1(vec2<i32>(func_2(all(vec3<bool>(true, true, false)) || true).b.x, ~arg_0.b.a.x), _wgslsmith_div_vec2_i32(abs(vec2<i32>(_wgslsmith_clamp_i32(global0.a.x, var_0.x, 1i), ~(-17691i))), _wgslsmith_mod_vec2_i32(-vec2<i32>(arg_0.b.b.x, -1i), _wgslsmith_clamp_vec2_i32(arg_0.a.a >> (u_input.a.yx % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(arg_0.a.a, global0.b, var_0.xz), _wgslsmith_clamp_vec2_i32(arg_0.b.b, vec2<i32>(arg_0.b.b.x, global0.a.x), arg_0.a.a)))), select(~1u, 1u, !(true | any(vec2<bool>(false, false)))));
    let var_2 = Struct_1(vec2<i32>(_wgslsmith_add_i32(-reverseBits(0i), var_0.x), -22152i), _wgslsmith_add_vec2_i32(var_0.wz, var_1.b), _wgslsmith_mod_u32(4294967295u, ~0u | _wgslsmith_clamp_u32(4294967295u >> (var_1.c % 32u), ~var_1.c, 1u)));
    var var_3 = _wgslsmith_mod_u32(abs(var_2.c), firstLeadingBit(~(~(~46834u))));
    let var_4 = Struct_2(var_1, func_2(true), arg_0.c);
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: bool) -> i32 {
    var var_0 = u_input.e.wy;
    var var_1 = _wgslsmith_f_op_f32(max(arg_2.x, _wgslsmith_f_op_f32(max(902f, -1125f))));
    let var_2 = Struct_2(Struct_1(global0.a, vec2<i32>(global0.b.x, ~(-41467i)), 63192u), arg_0, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1577f + arg_2.x), _wgslsmith_f_op_f32(func_3(arg_0.c, 1u))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.x, arg_2.x), vec2<f32>(-373f, 1453f)))))));
    var var_3 = arg_0;
    let var_4 = var_2.b.a.x;
    return firstTrailingBit(-68519i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_sub_u32(_wgslsmith_mult_u32(firstTrailingBit(0u), 30539u << (global0.c % 32u)), u_input.b.x) >> (countOneBits(~(~49250u)) % 32u));
    let var_1 = 2147483647i;
    global1 = array<vec2<u32>, 8>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-221f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1865f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-164f, 1f)))));
    var var_3 = global0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-399f, 504f, -1079f))) + vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1000f, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1003f))), -1000f)), vec4<i32>(i32(-1i) * -31232i, -56667i, var_1, func_5(func_4(func_1(833f, false, Struct_1(vec2<i32>(global0.a.x, var_1), vec2<i32>(var_1, 72866i), u_input.e.x))), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(315f, -883f, 1088f)), true)), _wgslsmith_f_op_f32(-489f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1065f - 1636f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(885f - -910f)))), vec4<f32>(_wgslsmith_f_op_f32(1f + func_1(_wgslsmith_f_op_f32(f32(-1f) * -2138f), true, Struct_1(vec2<i32>(-2147483647i, 2147483647i), global0.b, 1u)).c.x), 1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1055f))), _wgslsmith_f_op_f32(f32(-1f) * -948f)));
}

