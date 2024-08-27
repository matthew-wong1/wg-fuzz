struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec4<bool>,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: vec2<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec3<f32>, 29>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: u32) -> u32 {
    global1 = array<vec3<f32>, 29>();
    var var_0 = min(abs(~(~122258u >> (u_input.a.x % 32u))), 0u);
    var_0 = 22430u;
    var var_1 = Struct_4(((u_input.b << ((u_input.a.x | 58665u) % 32u)) | _wgslsmith_mod_i32(-2147483647i, _wgslsmith_sub_i32(25726i, 39799i))) & _wgslsmith_mod_i32(u_input.b | u_input.b, _wgslsmith_mod_i32(0i, u_input.b) >> (0u % 32u)));
    let var_2 = max(74052u, 534u);
    return arg_2;
}

fn func_2(arg_0: f32, arg_1: Struct_4) -> Struct_4 {
    let var_0 = select(select(vec2<bool>((4294967295u << (0u % 32u)) > func_3(true, vec4<f32>(-505f, -497f, -237f, -219f), u_input.a.x), all(select(vec2<bool>(true, false), vec2<bool>(false, false), false))), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), abs(42247u) < _wgslsmith_mod_u32(u_input.a.x, 1u)), any(vec2<bool>(true, true))), select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(false, true), true)), vec2<bool>(1u != abs(min(u_input.a.x, 61512u)), true));
    global1 = array<vec3<f32>, 29>();
    global0 = var_0.x;
    let var_1 = countOneBits(min(vec2<i32>(arg_1.a, arg_1.a << (u_input.a.x % 32u)), vec2<i32>(arg_1.a, ~(-1i) << (_wgslsmith_clamp_u32(40648u, u_input.a.x, 54396u) % 32u))));
    var var_2 = ~(abs(~_wgslsmith_mult_vec4_u32(vec4<u32>(18315u, 1u, u_input.a.x, 85054u), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x))) & _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, countOneBits(23760u), u_input.a.x, 4294967295u), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 15786u), vec3<u32>(u_input.a.x, 1u, u_input.a.x)), ~0u, select(u_input.a.x, u_input.a.x, false), select(u_input.a.x, 49737u, var_0.x))));
    return Struct_4(2147483647i);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec4<i32>) -> bool {
    let var_0 = arg_1.a;
    var var_1 = Struct_1(var_0.e.xy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(select(~arg_1.a.d, u_input.a.x, !var_0.c.x), 29u)] + _wgslsmith_div_vec3_f32(vec3<f32>(-118f, -655f, -832f), global1[_wgslsmith_index_u32(max(48817u, u_input.a.x), 29u)])) - var_0.b), arg_1.a.c, ~reverseBits(~reverseBits(4294967295u)), var_0.e);
    var var_2 = _wgslsmith_f_op_vec2_f32(arg_2 + _wgslsmith_f_op_vec2_f32(arg_2 - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.b.x, -847f))))));
    let var_3 = !var_0.c.x;
    let var_4 = arg_1.a;
    return true;
}

fn func_1(arg_0: i32, arg_1: Struct_4) -> bool {
    let var_0 = _wgslsmith_mult_i32(arg_0, -countOneBits(arg_1.a) | -2147483647i);
    return func_4(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-296f, -910f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1000f, -467f)), -224f))), arg_1), Struct_2(Struct_1(countOneBits(-vec2<i32>(2147483647i, -1i)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 29u)]))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), true)), 0u, vec4<i32>(_wgslsmith_div_i32(var_0, -3869i), -27977i, ~var_0, ~var_0)), Struct_1(vec2<i32>(-1i, arg_1.a >> (4294967295u % 32u)), global1[_wgslsmith_index_u32(u_input.a.x, 29u)], vec4<bool>(true, true, true, true), u_input.a.x << (max(4294967295u, u_input.a.x) % 32u), _wgslsmith_add_vec4_i32(vec4<i32>(3475i, var_0, -52956i, u_input.b), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -9978i, -1i, arg_0), vec4<i32>(u_input.b, -1i, -2147483647i, arg_1.a)))), 0i, u_input.a.x & u_input.a.x, var_0), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(643f, -1219f)))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(640f)), -229f), 1f)), abs(vec4<i32>(arg_0, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, u_input.b), vec2<i32>(44604i, var_0)), abs(21491i), countOneBits(-2147483647i)) | vec4<i32>(reverseBits(-2147483647i), arg_0, 12242i, u_input.b & 10418i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, func_1(59013i, Struct_4(2350i)), any(vec4<bool>(false, false, false, false)), all(vec3<bool>(true, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), any(vec2<bool>(false, true))), vec4<bool>((i32(-1i) * -2147483647i) < u_input.b, true | all(vec3<bool>(true, false, true)), func_4(Struct_4(36208i), Struct_2(Struct_1(vec2<i32>(4115i, 59722i), vec3<f32>(1000f, -154f, -2058f), vec4<bool>(true, false, true, true), 0u, vec4<i32>(-18993i, u_input.b, u_input.b, u_input.b)), Struct_1(vec2<i32>(u_input.b, 2147483647i), global1[_wgslsmith_index_u32(u_input.a.x, 29u)], vec4<bool>(true, false, false, false), u_input.a.x, vec4<i32>(61812i, 43402i, 20049i, u_input.b)), u_input.b, 1u, u_input.b), vec2<f32>(_wgslsmith_f_op_f32(trunc(-652f)), _wgslsmith_f_op_f32(f32(-1f) * -1068f)), vec4<i32>(-2147483647i, -u_input.b, abs(u_input.b), u_input.b)), false));
    var var_1 = vec4<i32>(u_input.b | ~_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(u_input.b, 2147483647i)), vec2<i32>(1i, u_input.b)), u_input.b, 2147483647i, u_input.b);
    let var_2 = Struct_4(-2147483647i);
    let var_3 = var_0.yx;
    var var_4 = select(vec4<bool>(func_1(_wgslsmith_div_i32(-52409i, _wgslsmith_sub_i32(0i, 2147483647i)), func_2(_wgslsmith_f_op_f32(round(-752f)), Struct_4(2147483647i))), var_0.x, true, false), vec4<bool>(var_3.x, !all(!vec2<bool>(var_3.x, true)), !(!var_0.x) | var_0.x, all(!vec2<bool>(var_0.x, true)) || any(select(var_0.yxw, vec3<bool>(var_0.x, var_0.x, false), true))), func_4(func_2(-239f, var_2), Struct_2(Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(59654i, -2147483647i), var_1.zz), _wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(u_input.a.x, 29u)] * vec3<f32>(-310f, 963f, 1274f)), select(vec4<bool>(var_0.x, false, true, false), vec4<bool>(var_0.x, false, false, var_0.x), false), 0u | u_input.a.x, firstTrailingBit(vec4<i32>(3651i, 21494i, var_1.x, 45108i))), Struct_1(-var_1.wz, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, 32984u), 29u)], vec4<bool>(true, var_0.x, var_3.x, true), ~37499u, min(vec4<i32>(var_2.a, 2147483647i, var_1.x, 1i), vec4<i32>(var_1.x, var_2.a, var_1.x, 7001i))), var_1.x, _wgslsmith_mult_u32(u_input.a.x, abs(21200u)), _wgslsmith_mult_i32(~var_2.a, u_input.b)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-727f, 1019f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(429f, -1001f)))), _wgslsmith_clamp_vec4_i32(min(vec4<i32>(u_input.b, var_1.x, -2147483647i, -28423i) << (vec4<u32>(1u, u_input.a.x, u_input.a.x, 4294967295u) % vec4<u32>(32u)), min(vec4<i32>(u_input.b, -17488i, -33213i, var_1.x), vec4<i32>(var_2.a, -21205i, var_2.a, -8309i))), firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.a, 73278i, 0i, var_2.a), vec4<i32>(-4166i, 2530i, u_input.b, var_2.a))), abs(vec4<i32>(-11494i, var_2.a, 22173i, 0i)))));
    var_0 = select(select(!(!(!vec4<bool>(var_4.x, var_0.x, var_4.x, var_4.x))), !(!(!vec4<bool>(var_0.x, var_3.x, var_4.x, true))), false), !(!(!select(vec4<bool>(var_4.x, false, true, var_3.x), vec4<bool>(true, var_3.x, false, false), vec4<bool>(true, false, false, false)))), select(!vec4<bool>(true, true, all(vec2<bool>(true, var_0.x)), true), !select(select(vec4<bool>(var_3.x, var_0.x, var_0.x, false), vec4<bool>(true, var_3.x, var_0.x, true), false), vec4<bool>(false, var_3.x, var_4.x, var_4.x), false), all(vec3<bool>(false, false, true)) & all(!vec3<bool>(var_3.x, true, false))));
    var_1 = -_wgslsmith_clamp_vec4_i32(min(vec4<i32>(var_1.x, u_input.b, 143i, var_2.a), vec4<i32>(u_input.b, var_2.a, var_1.x, -2147483647i) & vec4<i32>(u_input.b, var_2.a, var_1.x, u_input.b)), vec4<i32>(-1i) * -vec4<i32>(-2147483647i, -37276i, -46789i, 0i), abs(firstLeadingBit(vec4<i32>(u_input.b, 4949i, -2147483647i, var_1.x)))) ^ (firstTrailingBit(vec4<i32>(firstLeadingBit(var_2.a), 2555i, 15010i, firstTrailingBit(30952i))) | select(~(-vec4<i32>(var_1.x, var_1.x, 0i, 2147483647i)), ~abs(vec4<i32>(9867i, var_1.x, -2147483647i, 0i)), select(!vec4<bool>(var_3.x, true, false, true), !vec4<bool>(var_3.x, true, var_0.x, false), vec4<bool>(var_3.x, var_0.x, false, false))));
    var_4 = vec4<bool>(all(vec2<bool>(true, var_3.x)), var_3.x, true, any(var_4.yz));
    var var_5 = Struct_2(Struct_1(vec2<i32>(2147483647i, 2147483647i) << (abs(u_input.a) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(global1[_wgslsmith_index_u32(1u, 29u)])))) * _wgslsmith_f_op_vec3_f32(min(global1[_wgslsmith_index_u32(4294967295u, 29u)], vec3<f32>(-1000f, -130f, -385f)))), vec4<bool>(var_3.x, var_0.x, false, all(vec2<bool>(true, true))), 4294967295u, _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, var_1.x, -2147483647i, u_input.b), max(vec4<i32>(var_2.a, 1i, var_1.x, 1i), vec4<i32>(u_input.b, 2147483647i, 2147483647i, 1i))), -vec4<i32>(u_input.b, 2147483647i, 2147483647i, var_2.a))), Struct_1(var_1.wx >> (u_input.a % vec2<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(select(238f, -172f, var_4.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-200f)) * _wgslsmith_div_f32(308f, -954f)), 1f), select(!vec4<bool>(false, var_3.x, true, var_3.x), select(!vec4<bool>(var_0.x, var_0.x, var_3.x, var_3.x), !vec4<bool>(false, true, false, var_4.x), func_4(Struct_4(2147483647i), Struct_2(Struct_1(vec2<i32>(2147483647i, -47010i), vec3<f32>(-712f, 1282f, -700f), vec4<bool>(var_0.x, false, var_4.x, var_4.x), u_input.a.x, vec4<i32>(5048i, var_2.a, var_1.x, -2147483647i)), Struct_1(var_1.xw, vec3<f32>(211f, -330f, 1544f), vec4<bool>(var_4.x, var_0.x, false, false), 12239u, vec4<i32>(-30376i, -48014i, u_input.b, 13020i)), -36363i, 32503u, 1i), vec2<f32>(1087f, -1138f), vec4<i32>(var_1.x, 2147483647i, 21225i, 6256i))), select(var_0.x, true, true) | (u_input.b > u_input.b)), u_input.a.x, vec4<i32>(min(_wgslsmith_add_i32(-41102i, var_2.a), var_2.a), -43208i, -2147483647i, _wgslsmith_dot_vec2_i32(~var_1.wz, vec2<i32>(1i, 1i)))), 2147483647i, ~0u | (func_3(all(vec4<bool>(true, false, true, var_3.x)), vec4<f32>(-1000f, 104f, 1187f, 1365f), 19617u) & 4294967295u), var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(299f, 671f) + vec2<f32>(var_5.a.b.x, var_5.a.b.x)) + var_5.b.b.zz))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-316f * var_5.b.b.x) * _wgslsmith_f_op_f32(ceil(var_5.b.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_5.a.b.x, 1543f)) * var_5.a.b.x)) - vec2<f32>(var_5.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -319f)))), countOneBits(u_input.a) >> (~u_input.a % vec2<u32>(32u)), min(i32(-1i) * -2147483647i, _wgslsmith_clamp_i32(var_5.b.a.x, -abs(-45584i), _wgslsmith_div_i32(var_5.a.e.x, var_2.a))));
}

