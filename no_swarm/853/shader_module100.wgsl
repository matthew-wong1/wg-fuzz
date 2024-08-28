struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: bool,
    d: bool,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
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

var<private> global0: bool;

var<private> global1: array<vec4<u32>, 31> = array<vec4<u32>, 31>(vec4<u32>(1u, 103668u, 1u, 1u), vec4<u32>(1u, 2132u, 0u, 1u), vec4<u32>(0u, 0u, 1u, 1u), vec4<u32>(1u, 1u, 0u, 0u), vec4<u32>(4294967295u, 27453u, 104862u, 15858u), vec4<u32>(1u, 34376u, 57357u, 67449u), vec4<u32>(0u, 10103u, 0u, 10663u), vec4<u32>(4294967295u, 62253u, 12521u, 44567u), vec4<u32>(23967u, 4294967295u, 4294967295u, 7218u), vec4<u32>(9806u, 4294967295u, 1u, 1u), vec4<u32>(53870u, 58059u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 51167u, 39905u, 4294967295u), vec4<u32>(4294967295u, 0u, 77796u, 4294967295u), vec4<u32>(13418u, 4294967295u, 120367u, 4294967295u), vec4<u32>(11545u, 4294967295u, 4294967295u, 0u), vec4<u32>(0u, 33491u, 1u, 4294967295u), vec4<u32>(6964u, 20915u, 0u, 0u), vec4<u32>(0u, 57252u, 4294967295u, 0u), vec4<u32>(4294967295u, 4294967295u, 2776u, 28220u), vec4<u32>(15042u, 1u, 59809u, 59531u), vec4<u32>(80800u, 4294967295u, 158u, 29880u), vec4<u32>(0u, 0u, 13188u, 0u), vec4<u32>(1u, 4294967295u, 30705u, 16010u), vec4<u32>(35338u, 51783u, 62843u, 47807u), vec4<u32>(1u, 0u, 4294967295u, 0u), vec4<u32>(0u, 4294967295u, 0u, 5157u), vec4<u32>(1u, 12871u, 1u, 39883u), vec4<u32>(10427u, 0u, 382u, 4294967295u), vec4<u32>(41163u, 4294967295u, 1u, 1u), vec4<u32>(38755u, 4063u, 18602u, 4294967295u), vec4<u32>(1501u, 4294967295u, 0u, 27979u));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = _wgslsmith_mod_vec4_i32(-vec4<i32>(~(-46655i) >> (u_input.a % 32u), ~_wgslsmith_div_i32(14039i, 51064i), ~_wgslsmith_add_i32(-1i, 2147483647i), u_input.c.x), reverseBits(_wgslsmith_mod_vec4_i32(min(vec4<i32>(u_input.c.x, 0i, -2147483647i, 10280i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, 2147483647i, u_input.c.x), vec4<i32>(36939i, 1i, u_input.b.x, -1i))), -vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -35301i) & _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.b.x, u_input.b.x), vec4<i32>(-61485i, u_input.c.x, 0i, -2147483647i)))));
    let var_1 = Struct_1(var_0, _wgslsmith_f_op_f32(1186f * -320f), vec4<f32>(1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -197f), -803f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1403f * 2373f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f * -370f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(1843f, 280f))))), _wgslsmith_f_op_f32(max(-670f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-319f, _wgslsmith_f_op_f32(-1090f + -1000f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1154f, 419f)) - _wgslsmith_f_op_f32(ceil(776f)))))));
    global1 = array<vec4<u32>, 31>();
    global0 = false;
    let var_2 = vec3<bool>(any(vec2<bool>(true, (u_input.a >= u_input.a) | true)), any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(false, false)))), select(all(vec4<bool>(true, false, false, false)), true, (arg_0 >= 1u) != (arg_0 <= 16369u)) | any(vec2<bool>(true, true)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) + var_1.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)));
}

fn func_2() -> Struct_1 {
    return Struct_1(~_wgslsmith_div_vec4_i32(abs(vec4<i32>(-37029i, u_input.b.x, u_input.c.x, u_input.b.x)), -vec4<i32>(u_input.c.x, -1i, u_input.b.x, u_input.c.x)) | -min(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.c.x, 0i, 22103i, -1i)), ~vec4<i32>(-1i, u_input.b.x, u_input.c.x, 5899i)), _wgslsmith_f_op_f32(func_3(~0u)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(-834f, 1964f), _wgslsmith_f_op_f32(min(949f, -1434f)), 223f, _wgslsmith_f_op_f32(-1032f - -517f)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-441f)))), _wgslsmith_f_op_f32(-2032f + _wgslsmith_f_op_f32(min(-102f, -524f)))))));
}

fn func_1(arg_0: Struct_4) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1287f, _wgslsmith_f_op_f32(f32(-1f) * -523f)))))) == -737f;
    global0 = true;
    global0 = true;
    var var_0 = vec3<bool>(true, any(vec3<bool>(arg_0.c, !(false & arg_0.d), !(arg_0.e.x < arg_0.e.x))), true);
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1308f)))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = true;
    var var_1 = func_1(Struct_4(-17542i, select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true), true, (-u_input.c.x != 1i) & false, ~firstTrailingBit(vec3<u32>(36656u, u_input.a, u_input.a))));
    let var_2 = !vec3<bool>(!select(true, any(vec2<bool>(false, false)), all(vec4<bool>(true, true, false, true))), false, select(any(vec3<bool>(true, true, true)), all(vec4<bool>(true, true, true, true)), false));
    global0 = var_2.x;
    let var_3 = Struct_4(-32642i, select(!(!(!vec4<bool>(var_2.x, true, var_2.x, var_2.x))), vec4<bool>(var_2.x, var_2.x, var_2.x, _wgslsmith_f_op_f32(428f * var_1.b) <= _wgslsmith_f_op_f32(var_1.b - -121f)), vec4<bool>(_wgslsmith_f_op_f32(var_1.c.x + var_1.c.x) < _wgslsmith_f_op_f32(var_1.d - var_1.c.x), true, var_1.c.x == -1183f, var_1.c.x > _wgslsmith_f_op_f32(f32(-1f) * -929f))), true, var_2.x, max(~vec3<u32>(u_input.a, u_input.a, _wgslsmith_sub_u32(u_input.a, 62254u)), countOneBits(firstLeadingBit(~vec3<u32>(6343u, 4957u, 4294967295u)))));
    let var_4 = -771f;
    let var_5 = vec2<u32>(_wgslsmith_add_u32(~_wgslsmith_add_u32(6397u, var_3.e.x), _wgslsmith_div_u32(~max(59435u, var_3.e.x), ~(~u_input.a))), _wgslsmith_mult_u32(1u, var_3.e.x) | 43296u);
    var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i);
}

