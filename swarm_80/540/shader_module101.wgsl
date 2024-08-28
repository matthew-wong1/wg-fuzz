struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: Struct_2,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
    c: i32,
}

struct Struct_5 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(i32(-2147483648), 5388i);

var<private> global1: array<Struct_5, 32> = array<Struct_5, 32>(Struct_5(-1i, i32(-2147483648)), Struct_5(-1i, -33294i), Struct_5(20763i, 1i), Struct_5(-1i, 2147483647i), Struct_5(1i, i32(-2147483648)), Struct_5(-46250i, -6275i), Struct_5(0i, 0i), Struct_5(965i, -1186i), Struct_5(i32(-2147483648), 1i), Struct_5(1i, -1i), Struct_5(0i, 33448i), Struct_5(i32(-2147483648), -43181i), Struct_5(-3932i, 33775i), Struct_5(-40255i, i32(-2147483648)), Struct_5(-32866i, 5419i), Struct_5(i32(-2147483648), -16785i), Struct_5(-9143i, 23560i), Struct_5(-1i, 3006i), Struct_5(400i, -81176i), Struct_5(35628i, -1i), Struct_5(-3375i, 0i), Struct_5(2147483647i, i32(-2147483648)), Struct_5(10845i, -36015i), Struct_5(6005i, 27567i), Struct_5(-24412i, 7116i), Struct_5(-25823i, 2147483647i), Struct_5(-47826i, -1i), Struct_5(1i, 0i), Struct_5(i32(-2147483648), i32(-2147483648)), Struct_5(2147483647i, 1i), Struct_5(i32(-2147483648), -13195i), Struct_5(16757i, 595i));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.d.a.x)) * _wgslsmith_f_op_f32(arg_0.a - arg_0.d.a.x)))));
    let var_1 = Struct_5(-u_input.a.x, ~2147483647i);
    var var_2 = _wgslsmith_sub_vec4_u32(~(max(~vec4<u32>(arg_0.b, 37895u, 4294967295u, 33024u), firstLeadingBit(vec4<u32>(78871u, arg_0.b, 90286u, 60618u))) >> (vec4<u32>(_wgslsmith_add_u32(arg_2, arg_2), ~arg_2, 1u, arg_2) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 72703u, arg_2 & 4294967295u, arg_0.b >> (arg_2 % 32u)), vec4<u32>(arg_0.b, min(arg_2, 0u), ~arg_0.b, ~arg_2)), select(0u, 64283u, any(select(vec3<bool>(arg_0.d.d, false, true), vec3<bool>(false, arg_0.c.d, arg_0.c.d), arg_0.c.d))), ~37950u ^ ~_wgslsmith_sub_u32(arg_2, arg_2), 20864u));
    var var_3 = vec4<i32>(_wgslsmith_dot_vec4_i32(arg_1, abs(arg_1)), (i32(-1i) * -13995i) >> (_wgslsmith_add_u32(98219u & ~var_2.x, ~firstLeadingBit(1u)) % 32u), ~global0.b, 2147483647i ^ ~(_wgslsmith_add_i32(global0.a, -22279i) & (-19413i & arg_1.x)));
    global0 = Struct_5(84571i, -_wgslsmith_div_i32(~53709i, var_3.x) ^ -12690i);
    return arg_0.b ^ 66114u;
}

fn func_2(arg_0: vec2<f32>) -> vec4<u32> {
    let var_0 = Struct_4(vec4<u32>(1u, ~(~func_3(Struct_2(arg_0.x, 4294967295u, Struct_1(vec4<f32>(arg_0.x, 1116f, -1000f, arg_0.x), global0.b, -1i, false), Struct_1(vec4<f32>(arg_0.x, arg_0.x, 1304f, -320f), u_input.a.x, 18199i, true)), vec4<i32>(global0.a, -2147483647i, -47149i, 74290i), 78252u)), ~18963u, ~6978u), Struct_2(_wgslsmith_f_op_f32(-arg_0.x), 1u, Struct_1(vec4<f32>(_wgslsmith_div_f32(699f, 1720f), arg_0.x, arg_0.x, arg_0.x), -315i, 0i, !(global0.a >= -11750i)), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 1112f, arg_0.x, -174f)))), u_input.a.x, ~(-1i ^ global0.a), any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true))))), 0i);
    let var_1 = reverseBits(select(~_wgslsmith_mod_u32(var_0.b.b, var_0.a.x), var_0.a.x, any(!vec3<bool>(true, var_0.b.d.d, var_0.b.d.d))) & _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(var_0.a.xww, ~var_0.a.wzz), 30554u));
    let var_2 = all(select(!vec2<bool>(all(vec4<bool>(var_0.b.c.d, false, true, false)), true), select(select(vec2<bool>(true, true), vec2<bool>(var_0.b.c.d, var_0.b.c.d), select(vec2<bool>(var_0.b.c.d, var_0.b.c.d), vec2<bool>(false, var_0.b.d.d), vec2<bool>(false, false))), vec2<bool>(var_0.b.c.d, any(vec4<bool>(false, true, false, var_0.b.c.d))), !(!var_0.b.c.d)), vec2<bool>(var_0.b.c.d, var_0.b.c.d)));
    global0 = Struct_5(0i, -firstTrailingBit(var_0.b.c.c));
    let var_3 = Struct_3(12215u, arg_0, Struct_2(arg_0.x, 1u, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b.d.a) - _wgslsmith_f_op_vec4_f32(-var_0.b.c.a)), 52289i, -(~(-4i)), var_0.b.c.d), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-418f, arg_0.x, 673f, -2299f) + vec4<f32>(-1019f, -1129f, arg_0.x, 1903f))), var_0.c | -31006i, min(-global0.a, global0.a), all(vec2<bool>(false, var_2)))), var_0.b.c.a.wxz);
    return vec4<u32>(var_3.c.b, reverseBits(171u) ^ (var_1 & func_3(var_3.c, _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, global0.b, var_0.b.d.b, 1i), vec4<i32>(-57789i, -1i, -17820i, global0.a), vec4<i32>(-55412i, 6507i, global0.a, global0.a)), var_3.a)), firstLeadingBit(58u), 1u);
}

fn func_1() -> Struct_1 {
    let var_0 = firstLeadingBit(~(~_wgslsmith_mod_vec4_i32(-vec4<i32>(-2147483647i, 0i, u_input.a.x, global0.b), select(vec4<i32>(global0.b, u_input.a.x, -1i, global0.a), vec4<i32>(global0.b, -25146i, 1i, -19374i), false))));
    global1 = array<Struct_5, 32>();
    global1 = array<Struct_5, 32>();
    global1 = array<Struct_5, 32>();
    let var_1 = Struct_4(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(29373u, ~72467u, 17549u, ~0u), ~vec4<u32>(22326u, 28977u, 6581u, 0u), _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(0u, 0u, 1u, 4294967295u)), func_2(vec2<f32>(-197f, -361f)))), vec4<u32>(82930u, select(~25202u, ~6476u, all(vec4<bool>(false, false, true, false))), ~_wgslsmith_div_u32(4294967295u, 4269u), firstLeadingBit(~37381u))), Struct_2(647f, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(-559f)), 677f, _wgslsmith_f_op_f32(572f + -436f), 574f), 1i, ~(u_input.a.x | var_0.x), true), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-258f, -371f, 622f, 1092f) * vec4<f32>(1637f, 1212f, -1000f, -660f))), ~(-u_input.a.x), max(u_input.a.x ^ -1i, firstLeadingBit(u_input.a.x)), true)), var_0.x);
    return var_1.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_4(reverseBits(~min(vec4<u32>(6352u, 4294967295u, 34989u, 1u), vec4<u32>(1u, 1u, 1u, 1u))), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1058f), _wgslsmith_f_op_f32(var_0.a.x * -1785f), !var_0.d)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(322f, var_0.a.x))))), ~16166u, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.a.x, -207f, 753f, 1036f), var_0.a)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, 224f) - var_0.a)), 0i, reverseBits(~u_input.a.x), any(!vec4<bool>(false, var_0.d, false, true))), func_1()), ~_wgslsmith_mult_i32(-1i, u_input.a.x));
    global0 = global1[_wgslsmith_index_u32(48380u, 32u)];
    let var_2 = var_0.a.xzw;
    let var_3 = !select(select(select(!vec2<bool>(var_0.d, var_0.d), vec2<bool>(true, true), vec2<bool>(var_0.d, false)), select(select(vec2<bool>(var_0.d, true), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(var_1.b.d.d, false), vec2<bool>(var_1.b.c.d, false), false), vec2<bool>(true, true)), select(vec2<bool>(var_0.d, var_0.d), select(vec2<bool>(var_0.d, true), vec2<bool>(var_1.b.d.d, true), vec2<bool>(var_1.b.c.d, true)), select(vec2<bool>(true, var_1.b.c.d), vec2<bool>(var_0.d, var_1.b.c.d), vec2<bool>(false, var_1.b.d.d)))), vec2<bool>(true, !var_1.b.d.d), select(vec2<bool>(var_1.b.c.d && var_1.b.d.d, var_1.c < var_0.c), select(vec2<bool>(true, true), !vec2<bool>(var_0.d, true), select(vec2<bool>(var_0.d, var_1.b.d.d), vec2<bool>(true, var_0.d), vec2<bool>(var_1.b.d.d, false))), true));
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(vec4<u32>(24979u, var_1.a.x, 5143u, 9438u)) & min(vec4<u32>(var_1.b.b, var_1.b.b, 1u, var_1.a.x) << (var_1.a % vec4<u32>(32u)), var_1.a), vec4<u32>(func_2(var_0.a.zx).x, 24858u, 42829u, _wgslsmith_dot_vec4_u32(abs(var_1.a), ~var_1.a)), vec4<bool>(var_0.d | (var_1.b.c.d | var_1.b.d.d), !(!var_1.b.c.d), all(select(vec3<bool>(var_0.d, var_1.b.d.d, var_0.d), vec3<bool>(false, var_1.b.d.d, false), var_1.b.d.d)), abs(var_0.b) <= u_input.a.x)));
}

