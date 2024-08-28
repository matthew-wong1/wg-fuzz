struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 23>;

var<private> global1: f32 = -544f;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: bool, arg_3: u32) -> vec4<bool> {
    let var_0 = ~_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec3_u32(firstLeadingBit(~vec3<u32>(1u, arg_3, u_input.a.x)), max(vec3<u32>(arg_1, 49161u, arg_1) | vec3<u32>(0u, 1u, arg_3), ~vec3<u32>(4294967295u, arg_3, u_input.b))));
    global0 = array<vec4<bool>, 23>();
    let var_1 = _wgslsmith_dot_vec2_u32(~(~(~_wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(4294967295u, arg_3)))), vec2<u32>(~var_0, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1, 72290u, var_0), vec3<u32>(1u, 72473u, arg_3)) << ((vec3<u32>(1u, var_0, 1u) & vec3<u32>(4294967295u, arg_3, u_input.b)) % vec3<u32>(32u)), vec3<u32>(1u, 89777u, 0u & arg_3))));
    var var_2 = -_wgslsmith_add_i32(-2147483647i, abs(-1i) >> (select(max(var_0, var_1), min(4294967295u, var_0), true) % 32u));
    var var_3 = _wgslsmith_f_op_f32(sign(-432f));
    return select(vec4<bool>(arg_2, !arg_2, arg_2, any(global0[_wgslsmith_index_u32(45332u, 23u)])), select(vec4<bool>(true, false | !arg_2, all(!vec2<bool>(arg_2, false)), false), global0[_wgslsmith_index_u32(u_input.a.x, 23u)], true), arg_2);
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: vec3<bool>) -> Struct_1 {
    global0 = array<vec4<bool>, 23>();
    let var_0 = Struct_1(firstLeadingBit(firstTrailingBit(vec2<i32>(1i, 1i))), ~_wgslsmith_mult_vec3_i32(abs(-vec3<i32>(29875i, -42471i, 0i)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(32697i, 29109i, -1i, 1i), vec4<i32>(-2147483647i, -7137i, 13480i, 2147483647i)), _wgslsmith_mod_i32(0i, 1i), _wgslsmith_div_i32(1i, 27623i))), !vec3<bool>(arg_2.x, arg_2.x, true), 29435i >> (~u_input.a.x % 32u));
    let var_1 = select(func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1026f, arg_0))), firstTrailingBit(u_input.b << (31347u % 32u)) | 7597u, true, u_input.b), select(global0[_wgslsmith_index_u32((reverseBits(u_input.b) & u_input.a.x) & abs(2164u | u_input.a.x), 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], func_3(arg_0, u_input.b, true, _wgslsmith_mult_u32(abs(0u), u_input.b)).x), var_0.c.x | func_3(_wgslsmith_f_op_f32(-1378f * _wgslsmith_div_f32(1105f, arg_1.x)), _wgslsmith_add_u32(~u_input.a.x, reverseBits(u_input.b)), any(select(vec3<bool>(arg_2.x, false, false), var_0.c, var_0.c.x)), max(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(0u, u_input.a.x)), abs(u_input.b))).x);
    let var_2 = abs(1i);
    let var_3 = Struct_1(vec2<i32>(_wgslsmith_sub_i32(select(var_0.b.x, _wgslsmith_div_i32(var_2, var_0.b.x), true), -2147483647i), _wgslsmith_add_i32(~(~14940i), var_0.a.x)), abs(vec3<i32>(_wgslsmith_dot_vec2_i32(~var_0.b.xy, min(var_0.b.yx, var_0.a)), var_0.b.x, 1i)), vec3<bool>(false, false, false), var_2);
    return var_3;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = arg_2;
    var var_1 = arg_1.c;
    var var_2 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1f)) + _wgslsmith_f_op_f32(max(-1000f, -2505f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(666f, -622f, 524f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1087f, 831f, 713f), vec3<f32>(-1158f, 101f, 734f)))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1587f, 1033f, -1554f)))))), arg_1.c);
    var var_3 = Struct_1(arg_1.a, min((vec3<i32>(1i, 16969i, var_2.a.x) & vec3<i32>(5698i, 2147483647i, 1864i)) >> (select(select(vec3<u32>(u_input.a.x, 0u, u_input.b), vec3<u32>(u_input.a.x, u_input.a.x, u_input.b), vec3<bool>(true, false, true)), vec3<u32>(u_input.a.x, u_input.b, u_input.a.x), true) % vec3<u32>(32u)), min(var_2.b, _wgslsmith_add_vec3_i32(~var_0.b, -vec3<i32>(var_2.d, -2147483647i, 13750i)))), !vec3<bool>(func_2(-162f, vec3<f32>(-731f, -609f, -1441f), vec3<bool>(var_0.c.x, true, arg_2.c.x)).c.x && true, arg_2.c.x, false), _wgslsmith_sub_i32(func_2(-1459f, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1006f, 247f, -148f))), vec3<f32>(-630f, -101f, 309f))), !vec3<bool>(false, false, arg_1.c.x)).d, _wgslsmith_add_i32(arg_2.d, var_0.a.x)));
    let var_4 = arg_2;
    return true;
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = vec4<bool>(arg_0, !arg_0, select(func_4(!select(vec4<bool>(arg_0, arg_0, true, true), global0[_wgslsmith_index_u32(u_input.b, 23u)], vec4<bool>(arg_0, arg_0, arg_0, arg_0)), Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(1i, -46636i), vec2<i32>(-4464i, -29460i)), vec3<i32>(1i, 1i, 1i), vec3<bool>(true, true, true), 1i), func_2(_wgslsmith_f_op_f32(step(-1654f, 1302f)), vec3<f32>(-228f, -1007f, 917f), select(vec3<bool>(false, false, arg_0), vec3<bool>(arg_0, true, arg_0), false)), func_2(-329f, vec3<f32>(822f, -1026f, 1114f), func_2(-241f, vec3<f32>(-683f, -1269f, 2133f), vec3<bool>(arg_0, true, true)).c)), true, !arg_0), true || (any(!vec3<bool>(false, false, arg_0)) && false));
    var var_1 = vec4<bool>(false, arg_0, true | !arg_0, true);
    var var_2 = firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(firstTrailingBit(0i), _wgslsmith_mod_i32(1i, ~23361i)), vec2<i32>(abs(firstLeadingBit(-2147483647i)), 40891i << (select(u_input.a.x, u_input.b, true) % 32u))));
    var_2 = firstTrailingBit(reverseBits(-_wgslsmith_mult_vec2_i32(-vec2<i32>(var_2.x, -1i), vec2<i32>(-9166i, var_2.x))));
    var var_3 = _wgslsmith_clamp_u32(~_wgslsmith_div_u32(u_input.a.x, 27854u), u_input.b, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, u_input.b, 0u)) & ~_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.b, u_input.b), vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(firstLeadingBit(u_input.a.x), u_input.a.x, u_input.a.x), vec3<u32>(u_input.b, u_input.a.x, 1u) | vec3<u32>(u_input.b, 53119u, u_input.a.x))));
    return func_2(1488f, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -488f) * _wgslsmith_f_op_f32(f32(-1f) * -767f)), -388f), var_0.yzz);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(724f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(278f * 1149f))))));
    let var_0 = func_1(all(vec2<bool>(true, true)) == false);
    var var_1 = u_input.a.x;
    var var_2 = var_0.b.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1434f, _wgslsmith_div_f32(-1210f, 1057f), _wgslsmith_f_op_f32(-1000f + -135f)) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-621f, 391f, 1117f) - vec3<f32>(196f, -1000f, -932f))))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(555f, -1386f, -1390f) + vec3<f32>(-583f, -557f, 642f)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(394f, -348f, -1000f) * vec3<f32>(1533f, 1245f, 1451f)))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -937f), _wgslsmith_f_op_f32(round(-914f)), 1f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-497f, -1502f, -1444f) * vec3<f32>(-223f, -205f, -1547f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-314f, -341f, 423f)))))));
    var var_4 = var_3.x;
    var var_5 = func_1(false);
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(var_5.b), _wgslsmith_div_vec3_i32(~var_0.b, var_5.b), false), var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_3.x + 1078f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.x))))), abs(~countOneBits(vec3<u32>(0u, 0u, u_input.a.x))) ^ ~(~firstLeadingBit(vec3<u32>(31611u, 4294967295u, u_input.a.x))));
}

