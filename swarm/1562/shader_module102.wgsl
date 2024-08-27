struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<f32>) -> i32 {
    var var_0 = !vec4<bool>(true && any(vec4<bool>(true, true, true, true)), all(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, false), false))), true, true);
    var_0 = select(vec4<bool>(true, all(vec3<bool>(var_0.x || true, false, true)), all(var_0.wz), all(!var_0.xz)), !select(select(!vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), select(vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(true, false, true, true))), vec4<bool>(true, false, true, var_0.x), vec4<bool>(!var_0.x, select(var_0.x, var_0.x, var_0.x), var_0.x | var_0.x, true)), !select(vec4<bool>(var_0.x, any(vec2<bool>(false, var_0.x)), true, arg_0.b <= 12935i), !vec4<bool>(var_0.x, true, false, var_0.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)));
    var_0 = vec4<bool>(reverseBits(arg_0.d.b) <= -(min(0i, arg_0.c.b) | -arg_0.d.b), var_0.x, var_0.x, select(!any(!vec4<bool>(true, true, var_0.x, false)), var_0.x, !any(vec4<bool>(true, true, false, false))));
    return -arg_0.d.b;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(abs(41062i), _wgslsmith_mod_i32(22039i, 45488i)) << (min(_wgslsmith_mod_vec2_u32(u_input.a.yz, u_input.a.yx), firstLeadingBit(u_input.a.zz)) % vec2<u32>(32u)), ~(~vec2<i32>(2147483647i, 35192i))), vec2<i32>(-(firstTrailingBit(1906i) ^ _wgslsmith_add_i32(1i, 58199i)), -9767i));
    var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), select(vec2<i32>(var_0.x, var_0.x), vec2<i32>(-2147483647i, -35937i), false)), func_3(Struct_2(1000f, var_0.x, Struct_1(u_input.b, var_0.x), Struct_1(30543u, var_0.x)), Struct_2(1000f, var_0.x, Struct_1(61259u, var_0.x), Struct_1(6364u, var_0.x)), vec2<f32>(-1496f, -1417f))) << (abs(vec2<u32>(~0u, 1u)) % vec2<u32>(32u)), max(select(abs(vec2<i32>(-9233i, var_0.x)), vec2<i32>(2147483647i, -2147483647i), vec2<bool>(true, true)) >> (u_input.a.xx % vec2<u32>(32u)), firstLeadingBit(vec2<i32>(-1i, var_0.x)) ^ vec2<i32>(-22314i, ~var_0.x)));
    let var_1 = !(!vec2<bool>(select(true, true, true), all(vec4<bool>(true, true, true, true))));
    var var_2 = u_input.a.x;
    var_2 = 6952u;
    return Struct_1(_wgslsmith_div_u32(u_input.a.x, max(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 14210u, u_input.b), vec4<u32>(23554u, 0u, 81758u, u_input.a.x)), 1u) ^ _wgslsmith_mod_u32(1798u, ~17761u)), _wgslsmith_dot_vec3_i32(select(_wgslsmith_clamp_vec3_i32(min(vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<i32>(-46700i, 1i, var_0.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, var_0.x, 2147483647i), vec3<i32>(0i, 40029i, -179i), vec3<i32>(-80119i, var_0.x, var_0.x)), max(vec3<i32>(676i, 2147483647i, 0i), vec3<i32>(0i, 1i, 1i))), -vec3<i32>(var_0.x, var_0.x, var_0.x) >> (~vec3<u32>(77177u, 1307u, u_input.a.x) % vec3<u32>(32u)), vec3<bool>(!var_1.x, u_input.a.x > u_input.a.x, true)), _wgslsmith_add_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(-4992i, -1i, var_0.x), vec3<i32>(-36861i, var_0.x, -2147483647i), vec3<i32>(-10017i, 34139i, -20984i)), vec3<i32>(var_0.x, var_0.x, -2147483647i) ^ abs(vec3<i32>(17241i, var_0.x, var_0.x)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = -449f;
    var var_1 = Struct_2(var_0, arg_0.b, arg_0, arg_0);
    var var_2 = _wgslsmith_div_vec3_u32(~reverseBits(select(vec3<u32>(var_1.c.a, 52885u, arg_0.a), vec3<u32>(26233u, 1u, 0u), true)), ~arg_1.yxx) & vec3<u32>(_wgslsmith_div_u32(~var_1.c.a, 66436u) >> (arg_0.a % 32u), min(~1u, abs(reverseBits(9667u))), abs(arg_1.x));
    var var_3 = min(6118u, ~var_1.d.a);
    var var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-594f * _wgslsmith_f_op_f32(min(-753f, -1657f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-272f))))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_1.a, 751f), var_1.a)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -1146f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -509f) - vec2<f32>(988f, 1963f)), true)), true)))));
    return Struct_1(_wgslsmith_clamp_u32(arg_1.x & min(1u, ~u_input.a.x), _wgslsmith_sub_u32(~0u, _wgslsmith_div_u32(abs(83140u), var_2.x)), max(_wgslsmith_dot_vec2_u32(u_input.a.yy, ~vec2<u32>(var_2.x, 1u)), var_2.x)), -(i32(-1i) * -38322i) | _wgslsmith_dot_vec3_i32(abs(~vec3<i32>(-11681i, 0i, arg_0.b)), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.b, arg_0.b, arg_0.b), vec3<i32>(arg_0.b, var_1.c.b, -4172i), vec3<i32>(-2147483647i, 51454i, -14554i)), select(vec3<i32>(arg_0.b, var_1.d.b, 0i), vec3<i32>(arg_0.b, -22637i, var_1.c.b), vec3<bool>(false, true, false)), true)));
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = func_4(func_2(), ~_wgslsmith_add_vec4_u32(vec4<u32>(firstLeadingBit(u_input.a.x), u_input.a.x, 82347u, u_input.a.x), reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 0u, 16588u), vec4<u32>(u_input.a.x, 1u, 2701u, 1u)))));
    let var_1 = 1i;
    var var_2 = u_input.b;
    var_2 = 59405u >> (_wgslsmith_div_u32(~var_0.a | 0u, var_0.a) % 32u);
    var var_3 = -2253f;
    return ~(~0u);
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: i32, arg_3: u32) -> Struct_1 {
    var var_0 = !select(select(vec3<bool>(true, all(vec3<bool>(true, true, false)), true), vec3<bool>(4294967295u != arg_1, true, true), true), !vec3<bool>(any(vec4<bool>(false, true, false, false)), true, true), any(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false))));
    var_0 = vec3<bool>(all(select(select(vec4<bool>(true, var_0.x, var_0.x, true), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), var_0.x), var_0.x), !select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(true, var_0.x, var_0.x, true)), !(!vec4<bool>(true, var_0.x, var_0.x, false)))), any(select(var_0.zy, !select(vec2<bool>(true, var_0.x), vec2<bool>(true, false), vec2<bool>(var_0.x, false)), var_0.xx)), !any(vec3<bool>(false, false, arg_3 < 0u)));
    var var_1 = Struct_1(~abs(abs(arg_1)), -458i);
    var_1 = func_4(Struct_1(var_1.a, ~(-arg_2) ^ -23889i), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(1u, 53155u, 1u, arg_3)), ~_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, 1389u, u_input.a.x, 21565u), vec4<u32>(u_input.a.x, 4294967295u, arg_1, 4294967295u) | vec4<u32>(arg_3, 28606u, u_input.b, arg_3))));
    var_1 = Struct_1(_wgslsmith_mult_u32(arg_1, arg_3 & 0u), var_1.b);
    return Struct_1(func_4(Struct_1(1u, _wgslsmith_div_i32(arg_2 << (arg_3 % 32u), -1i)), _wgslsmith_sub_vec4_u32(min(vec4<u32>(arg_3, arg_3, 39925u, 64754u), ~vec4<u32>(94011u, u_input.a.x, var_1.a, arg_1)), vec4<u32>(u_input.b & 0u, ~var_1.a, arg_3, 1u))).a, -15020i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(-546f, ~min(~func_1(629f), u_input.b), -1i, 0u);
    var_0 = func_5(_wgslsmith_f_op_f32(step(-357f, _wgslsmith_f_op_f32(sign(257f)))), 0u, var_0.b, (_wgslsmith_clamp_u32(func_1(-1540f), _wgslsmith_mult_u32(u_input.a.x, var_0.a), ~7407u) ^ firstTrailingBit(u_input.b >> (1u % 32u))) >> (firstTrailingBit(firstLeadingBit(func_1(-466f))) % 32u));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(trunc(523f)), -43990i, Struct_1(~func_4(Struct_1(1613u, -24893i), ~vec4<u32>(78164u, u_input.a.x, 29145u, u_input.b)).a, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_0.b, var_0.b) & vec3<i32>(var_0.b, var_0.b, var_0.b), min(vec3<i32>(var_0.b, 2147483647i, 1i), vec3<i32>(var_0.b, var_0.b, -11416i)))), Struct_1(0u << (var_0.a % 32u), _wgslsmith_dot_vec4_i32(-(~vec4<i32>(1246i, -52942i, 0i, var_0.b)), (vec4<i32>(var_0.b, -13187i, -2147483647i, 61190i) | vec4<i32>(var_0.b, 1i, var_0.b, var_0.b)) | _wgslsmith_mod_vec4_i32(vec4<i32>(-11773i, -1752i, var_0.b, -29312i), vec4<i32>(-1427i, var_0.b, var_0.b, 2147483647i)))));
    let var_2 = var_1;
    let var_3 = ~1u;
    var_0 = Struct_1(~65819u, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(func_2().b, _wgslsmith_mult_i32(var_1.c.b, var_0.b), -26282i, _wgslsmith_add_i32(var_2.d.b, 1i)), max(vec4<i32>(var_0.b, 1i, -33738i, 1i), abs(vec4<i32>(var_1.d.b, var_2.b, 5256i, 1i)))), -_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.b, var_0.b, -48565i, var_0.b), vec4<i32>(var_1.c.b, 2147483647i, 37146i, 0i)), vec4<i32>(1i, 34056i, 9740i, -2147483647i))));
    var_0 = Struct_1(min(~0u, _wgslsmith_sub_u32(max(~8515u, ~u_input.b), min(var_1.c.a, ~2526u))), -30245i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~var_2.d.a, ~max(func_4(Struct_1(1u, -2147483647i), vec4<u32>(1u, var_3, var_1.c.a, var_1.d.a)).a, var_3), var_2.c.a, u_input.b), _wgslsmith_sub_vec4_i32(vec4<i32>(abs(var_1.d.b), 0i, func_4(var_1.c, vec4<u32>(var_0.a, 56796u, 4294967295u, 81434u)).b, firstLeadingBit(var_0.b)) | -reverseBits(vec4<i32>(var_2.c.b, var_2.c.b, 1i, -22038i)), firstTrailingBit(~vec4<i32>(24693i, -22550i, var_2.c.b, var_2.b))), -vec2<i32>(1i, var_0.b), var_1.c.b | (i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(-6525i, var_1.c.b, var_1.b, 0i), vec4<i32>(0i, var_2.c.b, var_2.d.b, -17115i))));
}

