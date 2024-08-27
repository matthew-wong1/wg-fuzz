struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(1i, vec2<i32>(-41351i, 0i)), Struct_1(74917i, vec2<i32>(-45652i, 42707i)), Struct_1(1i, vec2<i32>(i32(-2147483648), -30880i)), Struct_1(4944i, vec2<i32>(-11071i, i32(-2147483648))), Struct_1(2147483647i, vec2<i32>(2147483647i, 0i)), Struct_1(2147483647i, vec2<i32>(14748i, 1i)), Struct_1(2147483647i, vec2<i32>(28014i, -42436i)), Struct_1(-9269i, vec2<i32>(i32(-2147483648), -1i)), Struct_1(-1i, vec2<i32>(78352i, 21540i)), Struct_1(1i, vec2<i32>(1i, 3896i)), Struct_1(0i, vec2<i32>(0i, 18793i)), Struct_1(0i, vec2<i32>(-12374i, 42777i)), Struct_1(i32(-2147483648), vec2<i32>(-1235i, -59558i)), Struct_1(29440i, vec2<i32>(4144i, -613i)), Struct_1(-16633i, vec2<i32>(-42603i, i32(-2147483648))), Struct_1(0i, vec2<i32>(13779i, -45749i)), Struct_1(8013i, vec2<i32>(0i, 2147483647i)), Struct_1(-1i, vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(2147483647i, vec2<i32>(0i, 1i)), Struct_1(0i, vec2<i32>(-17192i, -13146i)), Struct_1(1i, vec2<i32>(-29730i, 54885i)), Struct_1(i32(-2147483648), vec2<i32>(24872i, 0i)), Struct_1(-59418i, vec2<i32>(2147483647i, 2147483647i)), Struct_1(1i, vec2<i32>(-25247i, -1i)), Struct_1(i32(-2147483648), vec2<i32>(2147483647i, 0i)), Struct_1(1636i, vec2<i32>(-15387i, -14608i)), Struct_1(15501i, vec2<i32>(i32(-2147483648), 3898i)), Struct_1(-8155i, vec2<i32>(-35645i, 0i)));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<i32> {
    global1 = array<Struct_1, 28>();
    var var_0 = Struct_1(i32(-1i) * -35006i, _wgslsmith_clamp_vec2_i32(vec2<i32>(-27978i, 0i), abs(vec2<i32>(2147483647i, -2147483647i)), firstTrailingBit(select(~vec2<i32>(1i, u_input.c), ~vec2<i32>(-14250i, u_input.c), false))));
    let var_1 = Struct_1(-var_0.b.x, ~(vec2<i32>(-1i) * -var_0.b));
    global0 = array<Struct_1, 25>();
    let var_2 = var_1;
    return min(~abs(select(var_0.b, vec2<i32>(0i, -2147483647i), true)) & max(vec2<i32>(-21781i, firstLeadingBit(var_1.b.x)), var_0.b), var_2.b);
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: vec2<bool>, arg_3: vec2<u32>) -> i32 {
    global0 = array<Struct_1, 25>();
    global1 = array<Struct_1, 28>();
    global0 = array<Struct_1, 25>();
    let var_0 = arg_0;
    let var_1 = Struct_1(u_input.c, _wgslsmith_div_vec2_i32(vec2<i32>(-4920i, select(-2147483647i, -16915i, false) ^ -u_input.c), _wgslsmith_mult_vec2_i32(~func_3(), -vec2<i32>(-2147483647i, u_input.c) ^ ~vec2<i32>(-2147483647i, 2147483647i))));
    return 1i;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = u_input.d;
    let var_1 = arg_0.a;
    var var_2 = arg_1;
    var var_3 = arg_1;
    var_0 = ~u_input.e.x;
    return Struct_1(1i, var_2.b);
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    var var_0 = arg_0.b;
    global0 = array<Struct_1, 25>();
    let var_1 = func_4(Struct_1(_wgslsmith_sub_i32(_wgslsmith_mod_i32(firstTrailingBit(11374i), 0i), firstTrailingBit(arg_0.a) ^ func_2(vec4<f32>(559f, -963f, 222f, -246f), u_input.e.x, vec2<bool>(false, false), vec2<u32>(arg_1, u_input.a.x))), vec2<i32>(1i, 0i)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.e, ~u_input.e), ~(~u_input.b | max(1u, 130337u))), 25u)]);
    global1 = array<Struct_1, 28>();
    let var_2 = -837f;
    return func_4(func_4(global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(abs(u_input.d), 22239u), 28u)], func_4(global1[_wgslsmith_index_u32(arg_1, 28u)], arg_0)), Struct_1(i32(-1i) * -5975i, vec2<i32>(-u_input.c | abs(var_1.b.x), -1i)));
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> f32 {
    let var_0 = true && all(vec2<bool>(!(arg_0 != -318f), any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)))));
    global0 = array<Struct_1, 25>();
    global1 = array<Struct_1, 28>();
    let var_1 = arg_0;
    return _wgslsmith_f_op_f32(abs(-1757f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(568f + _wgslsmith_f_op_f32(func_5(_wgslsmith_div_f32(-726f, -225f), func_1(global0[_wgslsmith_index_u32(u_input.d, 25u)], u_input.a.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-552f + 1116f)), -1000f, true)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-651f))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x * -1243f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(883f * var_0.x), -286f), vec2<f32>(_wgslsmith_div_f32(var_0.x, var_0.x), -1306f))))));
    var var_1 = ~((_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, -29911i, u_input.c), ~vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(u_input.c, 0i, -42670i) & vec3<i32>(-35415i, u_input.c, u_input.c)) ^ abs(-vec3<i32>(u_input.c, 1i, u_input.c))) | ~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(49958i, u_input.c, -1i, u_input.c), vec4<i32>(6024i, 70557i, u_input.c, u_input.c)), -u_input.c, _wgslsmith_clamp_i32(u_input.c, u_input.c, 17838i)));
    global1 = array<Struct_1, 28>();
    global1 = array<Struct_1, 28>();
    var var_2 = select(!vec2<bool>(all(vec4<bool>(false, false, true, false)), !select(true, false, true)), !select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))), !(true | (-var_1.x <= -2147483647i)));
    var_2 = vec2<bool>(var_2.x & (0i == _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(var_1.zy, vec2<i32>(-44995i, 0i)), 0i)), all(!(!vec3<bool>(var_2.x, var_2.x, var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(select(u_input.a, u_input.a, !(!vec2<bool>(var_2.x, var_2.x))), abs(u_input.e & select(vec2<u32>(5407u, u_input.a.x), vec2<u32>(u_input.d, 1u), false))), 1i >> (0u % 32u), vec3<u32>(106077u, 1u, _wgslsmith_sub_u32(~1u, min(abs(61567u), ~25006u))));
}

