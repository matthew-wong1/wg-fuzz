struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    var var_0 = global0.b;
    var var_1 = Struct_2(31477u, select(select(select(vec3<bool>(global0.a.c, var_0.x, false), vec3<bool>(global0.b.x, var_0.x, true), true), !(!vec3<bool>(var_0.x, false, false)), global0.b.x), vec3<bool>(var_0.x, !select(false, global0.b.x, false), global0.a.c), -307f > _wgslsmith_f_op_f32(step(-756f, global0.a.b.a.x))), -13149i >> (1u % 32u));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.b.a.x, global0.a.a.x, global0.a.b.a.x, -667f) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, 1854f, -2275f, global0.a.b.a.x)))) * vec4<f32>(_wgslsmith_f_op_f32(-global0.a.a.x), -1010f, 330f, _wgslsmith_f_op_f32(ceil(-1819f)))))) - vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1886f, _wgslsmith_f_op_f32(floor(global0.a.a.x))))), _wgslsmith_f_op_f32(-2154f * global0.a.b.a.x), _wgslsmith_f_op_f32(-global0.a.a.x), _wgslsmith_f_op_f32(-global0.a.b.a.x)));
    return _wgslsmith_dot_vec3_i32(min(u_input.a, _wgslsmith_sub_vec3_i32(u_input.a, select(u_input.a, vec3<i32>(-22212i, 38483i, var_1.c), true))), vec3<i32>(2147483647i, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a.x, 12757i, u_input.a.x) << (vec3<u32>(49188u, global0.c, 15739u) % vec3<u32>(32u))), abs(u_input.a) & -u_input.a), ~(-2147483647i)));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    global0 = Struct_4(global0.a, select(select(vec2<bool>(global0.a.c || true, true), !select(vec2<bool>(global0.b.x, global0.a.c), global0.b, global0.b), !(!global0.b.x)), !select(!global0.b, !global0.b, !global0.a.c), vec2<bool>(true, true)), _wgslsmith_sub_u32(4294967295u, 1u), func_3());
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-550f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x))) + arg_1.a.x);
    global0 = Struct_4(global0.a, !global0.b, ~4294967295u, -41505i);
    let var_1 = arg_1;
    var var_2 = Struct_1(global0.a.a, arg_1.b, -((u_input.a.x & (i32(-1i) * -1i)) << (_wgslsmith_mult_u32(~15101u, 0u) % 32u)));
    return Struct_2(~(~(~(~1u))), !vec3<bool>(!(!global0.a.c), 1i <= ~var_2.c, true), arg_1.b.x);
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) > 1942f) & false;
    global0 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a.a)), global0.a.b, true), vec2<bool>(all(vec2<bool>(false, true)), !var_0 & (arg_2.x <= -global0.d)), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 36881u), firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(22920u, 4294967295u)))), global0.a.b.c << (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_1.a, 60115u) >> (~vec3<u32>(arg_1.a, arg_1.a, 1u) % vec3<u32>(32u)), abs(vec3<u32>(arg_1.a, arg_1.a, global0.c))) % 32u));
    global0 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(sign(global0.a.a)), Struct_1(_wgslsmith_f_op_vec3_f32(select(global0.a.a, vec3<f32>(-1550f, -232f, arg_0), arg_1.b)), min(vec2<i32>(31242i, -43366i), vec2<i32>(global0.a.b.b.x, -1i)) | select(vec2<i32>(arg_2.x, arg_2.x), vec2<i32>(arg_1.c, 2147483647i), global0.b.x), -abs(1i)), !(~global0.c >= (1u & arg_1.a))), !global0.b, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(41260u, reverseBits(17228u), reverseBits(func_2(arg_0, Struct_1(vec3<f32>(-398f, global0.a.a.x, arg_0), vec2<i32>(global0.d, u_input.a.x), u_input.a.x)).a)), min(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(76064u, 39528u, 3357u), vec3<u32>(global0.c, global0.c, arg_1.a))), (global0.c ^ global0.c) ^ 39682u)), 2147483647i);
    global0 = Struct_4(global0.a, select(arg_1.b.xx, select(arg_1.b.xz, select(!vec2<bool>(global0.a.c, arg_1.b.x), vec2<bool>(arg_1.b.x, arg_1.b.x), false), vec2<bool>(false, any(arg_1.b.zy))), select(arg_1.b.xy, func_2(_wgslsmith_f_op_f32(-global0.a.b.a.x), global0.a.b).b.xz, true)), abs(0u), _wgslsmith_dot_vec4_i32(-countOneBits(vec4<i32>(1i, arg_2.x, u_input.a.x, -2821i)), ~vec4<i32>(23797i, 35598i, i32(-1i) * -30352i, max(0i, -1i))));
    global0 = Struct_4(Struct_3(global0.a.a, global0.a.b, all(vec3<bool>(global0.b.x, true, var_0)) || !(!global0.b.x)), vec2<bool>(true, true || !arg_1.b.x), ~_wgslsmith_clamp_u32(_wgslsmith_div_u32(~72767u, arg_1.a), global0.c, 28621u), _wgslsmith_mod_i32(firstTrailingBit(23021i), global0.d));
    return global0.a.b;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_2) -> Struct_3 {
    var var_0 = func_2(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1146f)))), Struct_1(arg_1.a, vec2<i32>(max(_wgslsmith_clamp_i32(global0.d, arg_1.c, -28425i), arg_3.c), ~u_input.a.x), ~func_4(_wgslsmith_f_op_f32(arg_1.a.x - 1122f), func_2(arg_1.a.x, Struct_1(vec3<f32>(global0.a.a.x, 2145f, arg_1.a.x), global0.a.b.b, 14512i)), _wgslsmith_mult_vec2_i32(u_input.a.yy, u_input.a.xx)).c)).b.zz;
    var var_1 = Struct_4(Struct_3(arg_1.a, arg_1, select(true, arg_2.x, true)), vec2<bool>(arg_3.b.x, false), ~global0.c, ~_wgslsmith_mult_i32(arg_1.c, arg_3.c));
    var_1 = Struct_4(Struct_3(_wgslsmith_div_vec3_f32(vec3<f32>(-683f, _wgslsmith_f_op_f32(f32(-1f) * -1647f), arg_1.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, 952f, 668f)))), func_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global0.a.a.x, arg_1.a.x)), _wgslsmith_f_op_f32(min(146f, -1000f)), true)), Struct_2(~64686u, arg_3.b, _wgslsmith_add_i32(0i, arg_1.b.x)), global0.a.b.b), false), vec2<bool>(true, all(vec2<bool>(true, true))), ~(~abs(47360u)) | reverseBits(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.c, global0.c), vec2<u32>(var_1.c, 49250u)), global0.c)), arg_3.c);
    var_0 = vec2<bool>(false, any(func_2(_wgslsmith_f_op_f32(f32(-1f) * -556f), func_4(var_1.a.b.a.x, Struct_2(35441u, vec3<bool>(false, false, arg_2.x), arg_3.c), vec2<i32>(arg_3.c, global0.a.b.c))).b.xx) | any(arg_2));
    var var_2 = var_0.x;
    return var_1.a;
}

fn func_1(arg_0: vec3<bool>, arg_1: f32) -> Struct_4 {
    var var_0 = select(select(global0.b, global0.b, u_input.a.x == u_input.a.x), vec2<bool>(false, false), vec2<bool>(true, true));
    var var_1 = func_5(arg_0.x, func_4(_wgslsmith_f_op_f32(arg_1 + global0.a.a.x), func_2(391f, Struct_1(_wgslsmith_f_op_vec3_f32(global0.a.a * vec3<f32>(arg_1, global0.a.b.a.x, arg_1)), _wgslsmith_div_vec2_i32(u_input.a.zz, global0.a.b.b), u_input.a.x)), vec2<i32>(~(i32(-1i) * -31342i), _wgslsmith_dot_vec4_i32(~vec4<i32>(global0.a.b.c, global0.a.b.c, global0.d, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 0i, 6467i, 2147483647i), vec4<i32>(global0.a.b.c, -1i, global0.a.b.b.x, -1i))))), arg_0, func_2(_wgslsmith_f_op_f32(-func_4(_wgslsmith_f_op_f32(168f * arg_1), func_2(arg_1, global0.a.b), vec2<i32>(global0.a.b.c, -5107i)).a.x), global0.a.b));
    let var_2 = vec3<u32>(global0.c, min(~global0.c, 4294967295u), global0.c);
    var var_3 = func_5(var_1.c, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.a.b.a.x, global0.a.b.a.x, 308f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global0.a.b.a)) * vec3<f32>(arg_1, global0.a.b.a.x, var_1.a.x))), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global0.a.b.b.x, global0.d), vec2<i32>(1409i, global0.a.b.b.x)), vec2<i32>(-9047i, var_1.b.c)), func_5(global0.b.x, var_1.b, vec3<bool>(false, true, arg_0.x), Struct_2(global0.c, arg_0, u_input.a.x)).b.b & vec2<i32>(-2147483647i, -32641i)), i32(-1i) * -u_input.a.x), arg_0, Struct_2(_wgslsmith_mod_u32(global0.c, ~max(4294967295u, var_2.x)), !(!arg_0), ~(~(i32(-1i) * -5030i)))).b;
    let var_4 = Struct_2(global0.c, arg_0, -_wgslsmith_div_i32(global0.a.b.c, _wgslsmith_mod_i32(2147483647i, var_3.c) & -var_3.c));
    return Struct_4(func_5(all(vec3<bool>(var_2.x > global0.c, var_4.b.x, false)), global0.a.b, vec3<bool>(true, true, any(!vec4<bool>(false, var_1.c, true, false))), func_2(arg_1, Struct_1(_wgslsmith_f_op_vec3_f32(-var_3.a), reverseBits(global0.a.b.b), _wgslsmith_clamp_i32(var_3.c, 7255i, -6406i)))), arg_0.zz, (_wgslsmith_sub_u32(14439u, global0.c) & var_4.a) | reverseBits(var_4.a), _wgslsmith_mod_i32(24868i, (u_input.a.x >> (~4294967295u % 32u)) >> (max(4294967295u, 17503u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_div_i32(min(u_input.a.x << (global0.c % 32u), global0.d), ~(-32905i)), 2147483647i) >> (4294967295u % 32u);
    global0 = func_1(vec3<bool>(true, !global0.b.x, !global0.b.x), _wgslsmith_f_op_f32(abs(-1043f)));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a.b.a.xx), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(446f - global0.a.b.a.x) - _wgslsmith_f_op_f32(sign(-2052f)))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(global0.a.b.a.xx)))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(round(1000f)), global0.a.b.a.x, -1000f, global0.a.a.x)))));
    var_2 = vec4<f32>(858f, 420f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))), 1344f);
    let var_3 = Struct_2(global0.c, select(func_2(_wgslsmith_f_op_f32(f32(-1f) * -493f), global0.a.b).b, vec3<bool>(true, global0.a.c, true), !global0.a.c), -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(select(-_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(var_0, 15006i, var_0, 19358i)), vec4<i32>(26892i, global0.d, var_0, global0.d)), _wgslsmith_mod_vec4_i32(vec4<i32>(func_1(vec3<bool>(true, var_3.b.x, global0.a.c), 471f).d, 2147483647i, 2147483647i, var_0), vec4<i32>(var_3.c, var_3.c, firstTrailingBit(11507i), var_3.c)), global0.a.c));
}

