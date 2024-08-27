struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: u32,
    d: vec4<bool>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26> = array<f32, 26>(2300f, -146f, 1391f, 809f, 1015f, -919f, 1000f, 137f, 291f, 473f, 419f, -933f, 1666f, -170f, 246f, 528f, -235f, 153f, -395f, 995f, 603f, 1270f, 1459f, 899f, 898f, -1000f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<u32>) -> vec2<u32> {
    let var_0 = vec4<f32>(-1000f, global0[_wgslsmith_index_u32(13218u, 26u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 26u)] * global0[_wgslsmith_index_u32(arg_1.x, 26u)]) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.x, 26u)])))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(636f, global0[_wgslsmith_index_u32(0u, 26u)]))))), global0[_wgslsmith_index_u32(~9135u, 26u)], !(global0[_wgslsmith_index_u32(42336u, 26u)] != global0[_wgslsmith_index_u32(u_input.b, 26u)]) & (-u_input.a.x >= u_input.d))));
    let var_1 = vec2<bool>(any(vec3<bool>(true, true, true)), true);
    var var_2 = i32(-1i) * -max(-2147483647i, _wgslsmith_mult_i32(u_input.a.x, 18457i) << (reverseBits(66705u) % 32u));
    var_2 = _wgslsmith_sub_i32(1i, -(~(-788i)));
    var var_3 = firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(~u_input.a.x, -26281i), ~_wgslsmith_div_vec2_i32(vec2<i32>(21389i, u_input.a.x) ^ u_input.a, u_input.a)));
    return vec2<u32>(arg_1.x, 1u) & (_wgslsmith_clamp_vec2_u32(~(~arg_1), vec2<u32>(arg_1.x, ~13410u), _wgslsmith_mult_vec2_u32(abs(vec2<u32>(4294967295u, u_input.b)), ~arg_1)) >> ((~(~vec2<u32>(15594u, arg_0.x)) & select(vec2<u32>(39784u, arg_0.x), arg_1, any(vec4<bool>(var_1.x, true, false, true)))) % vec2<u32>(32u)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = arg_0.a.xzy;
    var_0 = arg_0.d.xxz;
    var_0 = !arg_0.a.wzy;
    global0 = array<f32, 26>();
    var var_1 = ~(~(-6688i));
    return vec4<u32>(abs(4294967295u), arg_0.c, select(~4294967295u, 4294967295u, any(select(vec2<bool>(true, true), select(arg_0.d.xy, arg_0.d.zz, arg_0.a.x), any(arg_0.a)))), 19340u);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: u32) -> vec3<i32> {
    let var_0 = max(~vec3<u32>(arg_0.a, 15851u, _wgslsmith_mod_u32(4294967295u, ~arg_0.a)), arg_2.zyw);
    var var_1 = arg_0;
    let var_2 = 6610u >= var_0.x;
    let var_3 = arg_0;
    global0 = array<f32, 26>();
    return arg_1.e;
}

fn func_2() -> f32 {
    let var_0 = all(vec2<bool>(false, !all(vec2<bool>(true, false)))) || true;
    global0 = array<f32, 26>();
    var var_1 = func_5(Struct_4(u_input.b), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -813f) + -480f)), ~(~vec2<u32>(u_input.b, u_input.b)) | _wgslsmith_mult_vec2_u32(max(vec2<u32>(u_input.c, 0u), vec2<u32>(709u, u_input.b)), abs(vec2<u32>(4007u, 0u))), ~u_input.e, u_input.a & u_input.a, ~(-vec3<i32>(-7779i, 0i, u_input.a.x))), reverseBits(func_4(Struct_3(!vec4<bool>(var_0, var_0, var_0, true), Struct_2(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 26u)], global0[_wgslsmith_index_u32(u_input.b, 26u)], global0[_wgslsmith_index_u32(69606u, 26u)])), 1u, vec4<bool>(false, true, true, true)), Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 26u)], global0[_wgslsmith_index_u32(0u, 26u)]), vec2<f32>(global0[_wgslsmith_index_u32(1u, 26u)], 832f))), func_3(vec4<u32>(1u, 1u, u_input.b, u_input.b), vec2<u32>(88274u, u_input.c)), -u_input.e, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.e, u_input.e), vec2<i32>(u_input.e, 2147483647i)), reverseBits(vec3<i32>(1i, u_input.e, 0i))))), ~u_input.c);
    global0 = array<f32, 26>();
    var var_2 = global0[_wgslsmith_index_u32(u_input.b >> (u_input.c % 32u), 26u)];
    return global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, 1u, u_input.b, u_input.b)), min(vec4<u32>(0u, u_input.c, 0u, 37514u), vec4<u32>(u_input.b, 4294967295u, u_input.b, 55095u)))), _wgslsmith_div_u32(u_input.c, 0u)), 26u)];
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = vec4<f32>(319f, global0[_wgslsmith_index_u32(abs(~(~arg_0.x)), 26u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.c, 26u)], _wgslsmith_f_op_f32(-286f + -521f))) * _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(~(arg_0.x ^ u_input.b), 26u)]))), 885f);
    global0 = array<f32, 26>();
    var var_1 = min(abs(2147483647i), 2768i);
    let var_2 = Struct_3(!(!vec4<bool>(true, true, true, any(vec4<bool>(false, true, false, true)))), Struct_2(_wgslsmith_div_vec3_f32(var_0.zww, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_0.zww)) - vec3<f32>(global0[_wgslsmith_index_u32(120992u, 26u)], global0[_wgslsmith_index_u32(1u, 26u)], var_0.x)))), reverseBits(arg_0.x), select(select(vec4<bool>(var_0.x <= global0[_wgslsmith_index_u32(45558u, 26u)], true, all(vec4<bool>(true, false, true, false)), any(vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, false), vec4<bool>(true, var_0.x != var_0.x, true, var_0.x <= 680f)), !vec4<bool>(all(vec2<bool>(true, true)), true, true, true), _wgslsmith_sub_u32(func_4(Struct_3(vec4<bool>(true, false, false, true), Struct_2(vec3<f32>(1434f, var_0.x, -856f)), u_input.b, vec4<bool>(true, false, true, true)), Struct_1(var_0.wy, arg_0.ww, u_input.a.x, vec2<i32>(u_input.a.x, u_input.e), vec3<i32>(2147483647i, 33437i, u_input.d))).x, ~1u) >= (4294967295u ^ func_4(Struct_3(vec4<bool>(false, false, true, true), Struct_2(var_0.zxy), 1u, vec4<bool>(false, false, false, true)), Struct_1(vec2<f32>(-599f, global0[_wgslsmith_index_u32(u_input.c, 26u)]), vec2<u32>(u_input.b, 71381u), u_input.e, vec2<i32>(2147483647i, u_input.d), vec3<i32>(u_input.e, u_input.a.x, -28873i))).x)));
    let var_3 = arg_0.x;
    return Struct_1(var_2.b.a.yz, ~(min(arg_0.zw << (arg_0.wy % vec2<u32>(32u)), arg_0.xz << (vec2<u32>(var_3, 0u) % vec2<u32>(32u))) | ~(arg_0.ww >> (vec2<u32>(u_input.b, 1u) % vec2<u32>(32u)))), _wgslsmith_clamp_i32(~select(firstTrailingBit(u_input.e), ~u_input.a.x, var_2.d.x), _wgslsmith_dot_vec2_i32(-firstTrailingBit(u_input.a), u_input.a), u_input.a.x), reverseBits(u_input.a), _wgslsmith_add_vec3_i32(-firstTrailingBit(vec3<i32>(22978i, u_input.e, 16280i)), select(-(~vec3<i32>(1i, u_input.d, u_input.a.x)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.e, u_input.a.x, u_input.d), vec3<i32>(-1i, -15068i, 1i)), false)));
}

fn func_6(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = 66194i;
    var_0 = -31773i;
    var var_1 = _wgslsmith_f_op_f32(func_2());
    let var_2 = Struct_4(7050u);
    var_0 = arg_0.c;
    return ~abs(~arg_0.b) | ~vec2<u32>(41892u, abs(u_input.b ^ arg_0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 26>();
    global0 = array<f32, 26>();
    global0 = array<f32, 26>();
    global0 = array<f32, 26>();
    global0 = array<f32, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, ~u_input.e, _wgslsmith_mult_vec2_u32(max(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.c, 49394u), vec2<u32>(u_input.b, 0u)), vec2<u32>(4294967295u, countOneBits(u_input.c))), func_6(func_1(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.b, u_input.c), vec4<u32>(4294967295u, u_input.c, 29433u, 1u))))));
}

