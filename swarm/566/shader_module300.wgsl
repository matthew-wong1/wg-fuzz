struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(~(~global0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, global0.x), global0.zy | global0.yz)), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(global0.zz, global0.yy), global0.x), firstLeadingBit(1i & global0.x))), _wgslsmith_div_vec4_i32(select(select(firstLeadingBit(vec4<i32>(global0.x, 0i, global0.x, global0.x)), vec4<i32>(20232i, global0.x, -1i, global0.x), !arg_1.x), vec4<i32>(global0.x, 0i ^ global0.x, -89i, ~(-8306i)), vec4<bool>(15872i <= global0.x, all(vec3<bool>(false, false, arg_1.x)), any(arg_1.zy), arg_1.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(max(2147483647i, global0.x), i32(-1i) * -1i, -2147483647i, global0.x), firstLeadingBit(vec4<i32>(global0.x, global0.x, -34732i, global0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1662f) * arg_0.a.x) + _wgslsmith_div_f32(_wgslsmith_div_f32(-342f, arg_0.a.x), _wgslsmith_f_op_f32(-arg_0.a.x))), _wgslsmith_f_op_f32(322f + _wgslsmith_f_op_f32(abs(arg_0.a.x)))));
    global0 = _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -(~var_0.b.wyy), var_0.b.wzy >> (abs(vec3<u32>(firstLeadingBit(1u), u_input.a, firstLeadingBit(4294967295u))) % vec3<u32>(32u)));
    let var_1 = -2147483647i;
    var var_2 = _wgslsmith_add_vec4_i32(var_0.b, var_0.b);
    let var_3 = ~min(_wgslsmith_clamp_vec4_u32(~vec4<u32>(10559u, 4294967295u, u_input.a, 4940u), ~(~vec4<u32>(u_input.a, 7489u, 14474u, 66379u)), ~min(vec4<u32>(81752u, 10740u, 49438u, 9860u), vec4<u32>(0u, 17773u, u_input.a, 1u))), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(0u, u_input.a, 1u, u_input.a)), countOneBits(vec4<u32>(34496u, u_input.a, 63298u, 1u))), ~abs(vec4<u32>(u_input.a, 4294967295u, u_input.a, 0u))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - _wgslsmith_f_op_f32(-arg_0.a.x)));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: vec2<bool>, arg_3: vec4<i32>) -> bool {
    var var_0 = 0i;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1381f, -447f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1292f, 1432f)))), vec4<bool>(arg_2.x, arg_2.x, true, abs(u_input.a) > _wgslsmith_dot_vec4_u32(vec4<u32>(1747u, 9654u, 28875u, 71748u), vec4<u32>(34949u, 0u, arg_1.x, arg_1.x))))) * _wgslsmith_f_op_f32(-1233f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(2027f))))));
    global0 = _wgslsmith_mult_vec3_i32(min(vec3<i32>(arg_3.x, ~(~arg_0), arg_3.x), vec3<i32>(arg_0, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(arg_3, arg_3), _wgslsmith_add_vec4_i32(arg_3, arg_3)), 1i)), -arg_3.wzx);
    var var_2 = _wgslsmith_f_op_f32(-569f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-160f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-857f, -962f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1404f, -1579f)))))));
    var_1 = 581f;
    return false & (_wgslsmith_div_i32(arg_0, min(_wgslsmith_mult_i32(0i, -7362i), ~3930i)) == global0.x);
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: vec3<bool>, arg_3: vec3<i32>) -> vec2<bool> {
    let var_0 = arg_3;
    var var_1 = vec3<bool>(true, true, true);
    var var_2 = true;
    let var_3 = ~_wgslsmith_sub_u32(~_wgslsmith_mult_u32(countOneBits(29414u), u_input.a), 4294967295u);
    var var_4 = countOneBits(-1i);
    return !(!(!(!select(vec2<bool>(false, arg_2.x), vec2<bool>(false, false), vec2<bool>(false, arg_2.x)))));
}

fn func_1() -> Struct_2 {
    var var_0 = select(func_4(_wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(22446u, u_input.a, 4294967295u), vec3<u32>(u_input.a, u_input.a, 39409u)), ~(~0u)), vec3<u32>(~(~48851u), 1u, 76249u), vec3<bool>(func_2(-global0.x, ~vec2<u32>(u_input.a, u_input.a), vec2<bool>(true, true), min(vec4<i32>(global0.x, 1i, 4255i, global0.x), vec4<i32>(0i, global0.x, global0.x, global0.x))), func_2(~(-21915i), ~vec2<u32>(30326u, u_input.a), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec4<i32>(-1i, global0.x, global0.x, 2147483647i)), true), vec3<i32>(reverseBits(firstLeadingBit(global0.x)), -10041i, i32(-1i) * -1i)), !(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)))), !select(vec2<bool>(true, func_2(global0.x, vec2<u32>(4294967295u, 4294967295u), vec2<bool>(true, false), vec4<i32>(-8375i, global0.x, global0.x, -2147483647i))), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), all(vec3<bool>(true, false, false))));
    return Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -259f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(892f)) * _wgslsmith_f_op_f32(119f - 206f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1902f, -657f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(988f, 393f) - vec2<f32>(673f, 574f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~13002u;
    var var_1 = 132f;
    var_1 = 1354f;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1318f);
    var_1 = var_2;
    var var_3 = func_1();
    var var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.a) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.a) * var_3.a)))));
    var var_5 = -553f;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(~var_0, _wgslsmith_clamp_u32(11385u, 18550u, u_input.a)), 60272u), u_input.a), ~global0.x, global0.x, vec2<u32>(var_0 << (abs(_wgslsmith_div_u32(1u, var_0)) % 32u), _wgslsmith_dot_vec2_u32(max(countOneBits(vec2<u32>(25966u, 1u)), vec2<u32>(4294967295u, 1u)), abs(vec2<u32>(0u, var_0)))), vec4<u32>(var_0, countOneBits(select(0u, 16625u, false)) & u_input.a, _wgslsmith_mult_u32(2579u, _wgslsmith_sub_u32(u_input.a, abs(var_0))), 0u));
}

