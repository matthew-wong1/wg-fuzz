struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: bool,
    d: vec4<f32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(0u, vec4<i32>(-60388i, i32(-2147483648), 2147483647i, -1i), false, vec4<f32>(-320f, -1665f, -645f, 1000f), vec2<f32>(-101f, 1080f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2) -> vec2<i32> {
    global0 = Struct_2(select(global0.a, abs(_wgslsmith_add_u32(1u, ~u_input.a.x)), !(true || global0.c)), abs(global0.b), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.d))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.e.x), arg_2.e.x), vec2<f32>(global0.e.x, global0.e.x))));
    var var_0 = vec3<bool>(true, true, true);
    return arg_2.b.yx;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = arg_0;
    var_0 = Struct_2(arg_2.a, vec4<i32>(abs(-1i << (u_input.a.x % 32u)) << (~(~34354u) % 32u), arg_1.b.x | select(_wgslsmith_mod_i32(2147483647i, -38173i), _wgslsmith_clamp_i32(2147483647i, 1i, arg_1.b.x), select(true, false, global0.c)), -13262i, 0i), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1783f, arg_0.e.x, global0.e.x, var_0.d.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1570f, global0.e.x, var_0.d.x, global0.d.x) - arg_0.d))) + arg_0.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.e.x, var_0.d.x))) * vec2<f32>(global0.e.x, arg_1.e.x))))));
    var var_1 = all(!select(vec2<bool>(true, true), !select(vec2<bool>(arg_1.c, false), vec2<bool>(arg_1.c, false), arg_1.c), false));
    let var_2 = var_0.b.x ^ -1i;
    let var_3 = func_3(var_0.a, arg_2, arg_1).x > ~2150i;
    return arg_0.b;
}

fn func_2(arg_0: f32, arg_1: f32) -> f32 {
    global0 = Struct_2(38921u, func_4(Struct_2(4294967295u, global0.b, (0u != global0.a) | all(vec2<bool>(global0.c, true)), vec4<f32>(arg_1, 463f, arg_0, -1326f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, arg_0) * vec2<f32>(arg_1, -291f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(168f, arg_1))))), Struct_2(_wgslsmith_mult_u32(~4294967295u, reverseBits(0u)), _wgslsmith_add_vec4_i32(global0.b, vec4<i32>(2147483647i, 1i, -2147483647i, 4553i)) & vec4<i32>(global0.b.x, global0.b.x, 0i, global0.b.x), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.d) + global0.d), _wgslsmith_div_vec2_f32(vec2<f32>(162f, arg_1), global0.e)), Struct_1(9487u, ~func_3(u_input.a.x, Struct_1(0u, global0.b.zy, vec3<u32>(37855u, 20581u, u_input.a.x)), Struct_2(10629u, vec4<i32>(global0.b.x, 49550i, -1i, -12800i), false, global0.d, global0.e)), min(vec3<u32>(44777u, u_input.a.x, u_input.a.x), u_input.a))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, arg_0)))) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(584f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.d + global0.d)), global0.e);
    var var_0 = firstTrailingBit(~_wgslsmith_clamp_i32(global0.b.x, i32(-1i) * -18185i, _wgslsmith_add_i32(firstLeadingBit(2147483647i), _wgslsmith_sub_i32(1i, -18417i))));
    var var_1 = _wgslsmith_add_u32(select((global0.a & (4294967295u ^ global0.a)) ^ 1u, _wgslsmith_clamp_u32(~global0.a, 3585u, u_input.a.x) << (~select(49763u, global0.a, true) % 32u), global0.c), _wgslsmith_mod_u32(~(~4294967295u), _wgslsmith_clamp_u32(33876u, abs(firstLeadingBit(global0.a)), 2595u)));
    var_0 = _wgslsmith_clamp_i32(11500i, min(global0.b.x, _wgslsmith_mult_i32(347i, ~(-41793i))), 0i);
    let var_2 = Struct_2(~global0.a, func_4(Struct_2(select(4294967295u, ~38386u, false), global0.b, !(!global0.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, 573f, arg_0, -117f), global0.d)) + global0.d), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, -1495f), _wgslsmith_f_op_vec2_f32(-global0.e))), Struct_2(global0.a, ~vec4<i32>(global0.b.x, global0.b.x, 0i, 2147483647i), global0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-231f, global0.d.x, 726f, -1594f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(800f, 443f))))), Struct_1(55559u, _wgslsmith_mult_vec2_i32(global0.b.ww, min(global0.b.xz, vec2<i32>(-1i, -9146i))), _wgslsmith_div_vec3_u32(vec3<u32>(global0.a, 1u, 22431u), _wgslsmith_mult_vec3_u32(vec3<u32>(global0.a, 1u, global0.a), vec3<u32>(4294967295u, 0u, 27463u))))), global0.c, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(global0.d)))), global0.d)), global0.e);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1596f + var_2.d.x))));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>) -> vec2<i32> {
    let var_0 = !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, -576f) * _wgslsmith_f_op_f32(-196f - -162f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + 367f))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-753f, global0.d.x)))) - _wgslsmith_f_op_f32(min(global0.d.x, _wgslsmith_f_op_f32(func_2(1065f, arg_1.x))))));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1316f)), 658f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_1.x)))))));
    global0 = Struct_2(0u, global0.b, false, vec4<f32>(326f, 1638f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1010f - 353f))), _wgslsmith_f_op_f32(func_2(-1000f, 965f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global0.d.xy)) + arg_1.zw))))));
    let var_2 = select(vec3<bool>(arg_1.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-442f * 1141f)), true, all(select(!vec4<bool>(arg_0, true, global0.c, arg_0), select(vec4<bool>(false, var_0, arg_0, global0.c), vec4<bool>(false, true, false, false), vec4<bool>(var_0, arg_0, false, global0.c)), global0.c))), !(!(!select(vec3<bool>(global0.c, false, false), vec3<bool>(false, true, var_0), vec3<bool>(var_0, true, false)))), false);
    global0 = Struct_2(~15816u, vec4<i32>(global0.b.x, _wgslsmith_dot_vec2_i32(global0.b.wy, _wgslsmith_sub_vec2_i32(global0.b.xx, global0.b.xw) >> (~u_input.a.zz % vec2<u32>(32u))), 1i, abs(func_4(Struct_2(global0.a, vec4<i32>(global0.b.x, global0.b.x, 0i, -41345i), false, global0.d, vec2<f32>(397f, 1159f)), Struct_2(global0.a, global0.b, false, vec4<f32>(global0.d.x, -511f, global0.d.x, global0.e.x), vec2<f32>(global0.e.x, arg_1.x)), Struct_1(global0.a, vec2<i32>(-29752i, 10573i), u_input.a)).x)), false && all(vec2<bool>(true, true)), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(399f + global0.e.x) * _wgslsmith_f_op_f32(min(157f, arg_1.x))))), -1698f, 1000f, arg_1.x), vec2<f32>(arg_1.x, -1000f));
    return _wgslsmith_sub_vec2_i32(~select(global0.b.yw, ~_wgslsmith_mult_vec2_i32(vec2<i32>(global0.b.x, global0.b.x), vec2<i32>(global0.b.x, global0.b.x)), vec2<bool>(true, !arg_0)), vec2<i32>(-1i) * -global0.b.yz);
}

fn func_5(arg_0: vec2<i32>, arg_1: i32) -> Struct_2 {
    let var_0 = reverseBits(vec2<u32>(1u, ~1u));
    return Struct_2(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(80843u, var_0.x, 6085u, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, u_input.a.x, global0.a, var_0.x), vec4<u32>(37678u, 0u, u_input.a.x, var_0.x) & vec4<u32>(var_0.x, var_0.x, 67596u, global0.a))) ^ ~47445u, ~(~(-vec4<i32>(global0.b.x, arg_1, 0i, 50956i))), any(select(select(vec3<bool>(global0.c, global0.c, true), vec3<bool>(global0.c, true, true), global0.a == 4294967295u), vec3<bool>(!global0.c, true, 2041u != var_0.x), global0.c)), global0.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.d.wx * _wgslsmith_f_op_vec2_f32(round(global0.e)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(max(_wgslsmith_clamp_vec2_i32(global0.b.ww, firstLeadingBit(vec2<i32>(global0.b.x, global0.b.x)) & -vec2<i32>(-1i, -1i), global0.b.yx), _wgslsmith_mod_vec2_i32(~func_1(false, global0.d), vec2<i32>(-9852i, global0.b.x))), 2147483647i);
    global0 = Struct_2(global0.a, vec4<i32>(~1i, _wgslsmith_clamp_i32(-2147483647i, global0.b.x, -1i) >> (u_input.a.x % 32u), -1i, 1i) ^ -(vec4<i32>(-1i) * -vec4<i32>(global0.b.x, global0.b.x, global0.b.x, global0.b.x)), !(!(!(-2147483647i != global0.b.x))), _wgslsmith_f_op_vec4_f32(round(global0.d)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -599f) + 338f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1119f)))));
    global0 = func_5(vec2<i32>(global0.b.x, abs(_wgslsmith_mult_i32(countOneBits(global0.b.x), 2147483647i))), global0.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(209f))), global0.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.e.x), global0.d.x)) * vec3<f32>(375f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.e.x - -696f) - _wgslsmith_f_op_f32(f32(-1f) * -216f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e.x * -112f)))), 0i);
}

