struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_2) -> f32 {
    let var_0 = vec2<u32>(4294967295u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(~(~4294967295u), 48163u, arg_0.b.a), 4294967295u));
    var var_1 = arg_1.c.b.x;
    let var_2 = arg_0;
    var_1 = true;
    let var_3 = Struct_2(-9766i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b - _wgslsmith_f_op_f32(f32(-1f) * -871f)) * _wgslsmith_f_op_f32(f32(-1f) * -990f))), Struct_1(var_0.x, select(arg_1.d.b, select(select(vec4<bool>(var_2.b.b.x, true, false, arg_1.d.b.x), arg_0.a.c.b, vec4<bool>(true, false, false, false)), !vec4<bool>(arg_0.b.b.x, false, var_2.c, true), arg_1.c.b), arg_1.c.b)), arg_1.c);
    return 178f;
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = false;
    let var_1 = Struct_1(u_input.d, select(select(vec4<bool>(select(true, true, var_0), var_0, var_0, var_0), vec4<bool>(any(vec3<bool>(var_0, true, var_0)), !var_0, true, !var_0), select(!vec4<bool>(false, false, true, var_0), select(vec4<bool>(var_0, false, var_0, false), vec4<bool>(false, var_0, true, false), vec4<bool>(true, false, true, false)), !vec4<bool>(false, var_0, var_0, var_0))), !(!vec4<bool>(var_0, true, var_0, var_0)), var_0 || var_0));
    var var_2 = Struct_3(Struct_1(41538u, select(select(vec4<bool>(false, true, true, var_1.b.x), vec4<bool>(var_1.b.x, var_0, var_0, true), select(var_1.b, var_1.b, var_1.b.x)), !vec4<bool>(true, var_1.b.x, var_0, false), select(var_1.b, var_1.b, true))));
    var var_3 = Struct_4(Struct_2(-1i, -514f, Struct_1(4294967295u, select(!vec4<bool>(true, false, var_0, false), var_2.a.b, var_2.a.b)), Struct_1(var_1.a, !(!vec4<bool>(false, false, var_0, var_0)))), Struct_1(_wgslsmith_mod_u32(0u, 4294967295u), select(select(!vec4<bool>(var_1.b.x, var_2.a.b.x, var_0, true), var_1.b, vec4<bool>(var_0, true, true, var_1.b.x)), vec4<bool>(true, var_1.b.x, !var_1.b.x, any(vec3<bool>(false, false, var_1.b.x))), !var_1.b.x)), !var_1.b.x);
    let var_4 = var_1;
    return _wgslsmith_div_f32(var_3.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-888f))));
}

fn func_1() -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_4(Struct_2(u_input.c.x, 1137f, Struct_1(0u, vec4<bool>(true, true, false, true)), Struct_1(u_input.d, vec4<bool>(false, false, true, true))), Struct_1(u_input.d, vec4<bool>(true, true, true, false)), true), Struct_2(u_input.b.x, 654f, Struct_1(0u, vec4<bool>(true, false, true, false)), Struct_1(4294967295u, vec4<bool>(true, false, false, false))))) * _wgslsmith_f_op_f32(f32(-1f) * -1650f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-445f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-2147483647i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-749f - -547f))) * vec3<f32>(-1487f, 405f, _wgslsmith_f_op_f32(f32(-1f) * -246f)));
    let var_1 = any(vec2<bool>(false, false));
    var var_2 = Struct_4(Struct_2(countOneBits(1i) | min(~0i, u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, var_0.x, var_1)))), Struct_1(_wgslsmith_add_u32(0u << (0u % 32u), firstLeadingBit(u_input.d)), vec4<bool>(true, false, u_input.a.x < -2147483647i, true)), Struct_1(abs(_wgslsmith_div_u32(0u, 41108u)), select(select(vec4<bool>(false, false, false, var_1), vec4<bool>(false, var_1, false, false), var_1), select(vec4<bool>(false, var_1, var_1, var_1), vec4<bool>(var_1, true, true, false), false), any(vec4<bool>(true, false, true, true))))), Struct_1(35390u, vec4<bool>(true, !(!var_1), all(select(vec4<bool>(true, true, true, var_1), vec4<bool>(false, true, true, false), var_1)), var_1)), any(!vec3<bool>(true, var_1, true)));
    let var_3 = firstTrailingBit(vec3<u32>(_wgslsmith_add_u32(var_2.a.c.a, ~var_2.b.a), 1u, 1u));
    var_0 = vec3<f32>(-1000f, var_0.x, 189f);
    return ~vec2<i32>(firstTrailingBit(u_input.a.x), max(min(-2147483647i, u_input.c.x), var_2.a.a));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = vec3<bool>(select(u_input.d <= u_input.d, all(!arg_0.d.b), _wgslsmith_mod_i32(arg_0.a, 2147483647i) <= _wgslsmith_sub_i32(28498i, 14029i)), any(select(!arg_0.d.b.zy, arg_0.d.b.xy, arg_0.c.b.x | !arg_0.d.b.x)), all(vec4<bool>(select(!arg_0.c.b.x, arg_0.c.b.x & arg_0.d.b.x, all(arg_0.d.b)), false, !(!arg_0.d.b.x), arg_0.c.b.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, _wgslsmith_f_op_f32(floor(-1053f))), arg_3.xy))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1140f, arg_0.b))));
    let var_2 = i32(-1i) * -2147483647i;
    let var_3 = Struct_1(1u, !arg_0.c.b);
    var_1 = arg_3.xz;
    return var_3;
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    let var_0 = 53207u;
    var var_1 = false;
    var_1 = true;
    return Struct_2(1i, arg_0.b, Struct_1(arg_0.c.a, select(vec4<bool>(arg_0.d.b.x, arg_0.c.b.x, !arg_0.c.b.x, arg_0.c.b.x), arg_0.c.b, all(!vec4<bool>(arg_0.d.b.x, false, arg_0.c.b.x, arg_0.d.b.x)))), func_4(Struct_2(_wgslsmith_mod_i32(u_input.c.x ^ -1i, arg_0.a), -1145f, func_4(Struct_2(-2147483647i, 851f, arg_0.d, Struct_1(u_input.d, vec4<bool>(false, false, false, arg_0.c.b.x))), func_1(), u_input.c, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-553f, -1714f, arg_0.b), vec3<f32>(648f, arg_0.b, arg_0.b)))), arg_0.c), u_input.b, u_input.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.b, -1000f, 858f), vec3<f32>(arg_0.b, arg_0.b, arg_0.b), arg_0.d.b.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-936f, 1221f, arg_0.b)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, arg_0.b, arg_0.b) * vec3<f32>(181f, -1255f, arg_0.b))))));
}

fn func_6(arg_0: Struct_2) -> Struct_3 {
    let var_0 = select(vec3<bool>(arg_0.d.b.x & select(true, !arg_0.d.b.x, false), arg_0.c.b.x, 1i > _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a, u_input.a.x), vec2<i32>(1i, 15222i))), select(!select(vec3<bool>(true, true, true), func_5(Struct_2(arg_0.a, arg_0.b, Struct_1(0u, vec4<bool>(false, false, true, arg_0.c.b.x)), Struct_1(0u, vec4<bool>(false, arg_0.d.b.x, true, arg_0.c.b.x)))).c.b.wwx, any(vec3<bool>(true, arg_0.c.b.x, arg_0.d.b.x))), vec3<bool>(!(!arg_0.d.b.x), arg_0.d.b.x, func_4(arg_0, -vec2<i32>(u_input.b.x, u_input.a.x), _wgslsmith_mod_vec3_i32(u_input.c, vec3<i32>(u_input.c.x, arg_0.a, u_input.c.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, arg_0.b, -256f) - vec3<f32>(arg_0.b, arg_0.b, arg_0.b))).b.x), !vec3<bool>(true, true, all(vec3<bool>(arg_0.c.b.x, arg_0.d.b.x, arg_0.d.b.x)))), func_4(arg_0, u_input.b, vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a, arg_0.a, -2060i, 1i), vec4<i32>(u_input.c.x, 10988i, arg_0.a, arg_0.a)), i32(-1i) * -arg_0.a, -72755i), vec3<f32>(arg_0.b, arg_0.b, 815f)).b.wwy);
    var var_1 = 1i;
    var_1 = u_input.a.x;
    var_1 = -50670i;
    var var_2 = _wgslsmith_f_op_f32(func_3(abs(arg_0.a)));
    return Struct_3(arg_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(Struct_2(u_input.b.x, -107f, func_4(Struct_2(-1i, 251f, Struct_1(1u, vec4<bool>(true, false, true, false)), Struct_1(u_input.d, vec4<bool>(true, false, true, true))), func_1(), u_input.c | u_input.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2029f, -542f, -1321f))), func_4(Struct_2(1i, 556f, Struct_1(u_input.d, vec4<bool>(true, false, true, true)), Struct_1(u_input.d, vec4<bool>(false, true, false, false))), reverseBits(vec2<i32>(-1i, 0i)), _wgslsmith_clamp_vec3_i32(u_input.c, u_input.c, vec3<i32>(u_input.b.x, -1i, u_input.b.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2182f, 623f, 200f), vec3<f32>(682f, 1945f, -1000f), true))))));
    let var_1 = any(func_4(func_5(Struct_2(_wgslsmith_add_i32(u_input.c.x, u_input.c.x), -170f, var_0.a, func_6(Struct_2(u_input.b.x, 185f, Struct_1(21455u, var_0.a.b), var_0.a)).a)), _wgslsmith_div_vec2_i32(vec2<i32>(-1i, _wgslsmith_div_i32(-2147483647i, u_input.c.x)), vec2<i32>(u_input.a.x, 1i)), ~_wgslsmith_mult_vec3_i32(-u_input.c, ~u_input.c), vec3<f32>(584f, _wgslsmith_f_op_f32(exp2(func_5(Struct_2(-2147483647i, 665f, Struct_1(4142u, vec4<bool>(var_0.a.b.x, var_0.a.b.x, false, var_0.a.b.x)), var_0.a)).b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -764f) + _wgslsmith_f_op_f32(-1118f * 146f)))).b.wxz);
    var var_2 = 632f;
    var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-810f + 1372f), -1094f)));
    var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1149f))));
    var var_3 = -vec4<i32>(1i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(~u_input.a.x, -2147483647i), select(~u_input.a.x, firstTrailingBit(1i), true)), -2147483647i, _wgslsmith_dot_vec3_i32(abs(max(u_input.c, vec3<i32>(1i, -13934i, u_input.c.x))), vec3<i32>(u_input.a.x, u_input.a.x, 43991i) & (vec3<i32>(-32022i, -21707i, u_input.b.x) | u_input.c)));
    var_3 = firstTrailingBit(_wgslsmith_div_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(34812i, u_input.a.x, 0i, 2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -1i, 0i, 5388i), vec4<i32>(-27911i, 0i, u_input.a.x, var_3.x))), vec4<i32>(var_3.x, var_3.x, firstTrailingBit(i32(-1i) * -2147483647i), _wgslsmith_add_i32(~(-2147483647i), _wgslsmith_div_i32(u_input.a.x, -58313i)))));
    var var_4 = vec3<bool>(func_6(Struct_2(45815i, 1f, func_6(Struct_2(-2147483647i, 2137f, Struct_1(var_0.a.a, var_0.a.b), var_0.a)).a, var_0.a)).a.b.x, !var_0.a.b.x, (u_input.a.x == _wgslsmith_add_i32(var_3.x, func_5(Struct_2(var_3.x, 184f, Struct_1(4294967295u, vec4<bool>(var_0.a.b.x, true, false, false)), var_0.a)).a)) != true);
    var var_5 = _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -688f));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.a, u_input.d);
}

