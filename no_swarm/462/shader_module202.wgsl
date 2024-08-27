struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec4<u32>,
    d: f32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: Struct_2,
    d: vec4<f32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 4>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = vec4<i32>(arg_2, ~u_input.a, 1i, -firstTrailingBit(abs(~arg_0.a)));
    return ~(~vec3<u32>(arg_3.c.x, 55088u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(arg_3.c, vec4<u32>(arg_0.c.c.x, u_input.c.x, arg_3.c.x, u_input.b.x)), min(arg_3.c, arg_3.c))));
}

fn func_2() -> Struct_2 {
    var var_0 = u_input.a;
    let var_1 = firstLeadingBit(1i);
    var_0 = firstTrailingBit(~u_input.a);
    var var_2 = _wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.a >> (u_input.c.x % 32u), 53932i, var_1 | 28635i) >> (~func_3(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c.wz, u_input.b.zy), 4u)], _wgslsmith_mult_i32(-24720i, u_input.a), -var_1, Struct_1(-274f, vec3<bool>(false, false, false), vec4<u32>(28281u, 1u, 101397u, 33869u), 1906f, vec2<i32>(-1190i, 1i))) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(select(var_1, 10108i, true), var_1 >> (33351u % 32u), -6901i) | (abs(vec3<i32>(32289i, 7258i, u_input.a)) ^ ~vec3<i32>(u_input.a, 44162i, u_input.a)), select(vec3<i32>(var_1, var_1, -2147483647i) & vec3<i32>(var_1, -36424i, 6473i), _wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.a, u_input.a, u_input.a), _wgslsmith_sub_vec3_i32(vec3<i32>(var_1, var_1, -9220i), vec3<i32>(-2224i, -1i, -26851i))), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true))));
    let var_3 = 101802u;
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-424f, -712f)), _wgslsmith_f_op_f32(floor(631f))), _wgslsmith_f_op_f32(f32(-1f) * -410f), all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true))))), select(vec3<bool>(true, false, true), vec3<bool>(true, var_2.x > var_2.x, select(true, true, false)), true), ~_wgslsmith_mod_vec4_u32(~u_input.b, vec4<u32>(u_input.b.x, 1u, var_3, var_3)), -1000f, ~firstTrailingBit(_wgslsmith_sub_vec2_i32(var_2.xz, var_2.xx))), ~(~u_input.b) ^ ~(~vec4<u32>(u_input.c.x, 0u, var_3, 1u) | vec4<u32>(23472u, u_input.c.x, 1u, var_3)), vec4<u32>(0u >> (0u % 32u), _wgslsmith_sub_u32(var_3, ~select(var_3, u_input.c.x, false)), countOneBits(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x) << (min(u_input.b.x, u_input.b.x) % 32u)), firstTrailingBit(24827u)), -var_2.x | u_input.a, Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(721f, -1315f) - -281f))), vec3<bool>(any(vec4<bool>(true, true, true, true)), select(any(vec3<bool>(false, true, false)), all(vec2<bool>(true, false)), true), true), vec4<u32>(abs(u_input.c.x), 28227u, var_3, var_3), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1004f + 1f))), var_2.xz));
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    var var_0 = any(select(!vec4<bool>(false, true, !arg_0.a.b.x, !arg_0.a.b.x), select(!vec4<bool>(arg_0.a.b.x, arg_0.a.b.x, arg_0.e.b.x, false), !(!vec4<bool>(arg_0.a.b.x, true, true, arg_0.e.b.x)), vec4<bool>(!arg_0.a.b.x, arg_0.a.b.x, true, arg_0.a.b.x)), !select(select(vec4<bool>(arg_0.a.b.x, arg_0.e.b.x, arg_0.a.b.x, false), vec4<bool>(arg_0.e.b.x, arg_0.a.b.x, arg_0.a.b.x, false), vec4<bool>(arg_0.e.b.x, arg_0.a.b.x, arg_0.e.b.x, true)), !vec4<bool>(true, arg_0.a.b.x, false, false), select(vec4<bool>(false, arg_0.a.b.x, false, true), vec4<bool>(arg_0.a.b.x, arg_0.a.b.x, arg_0.a.b.x, true), vec4<bool>(true, arg_0.e.b.x, true, false)))));
    var var_1 = Struct_3(_wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_mult_i32(u_input.a, u_input.a) ^ 1i), _wgslsmith_clamp_i32(firstLeadingBit(u_input.a), u_input.a, 1i)), _wgslsmith_add_vec3_i32(~_wgslsmith_add_vec3_i32(min(vec3<i32>(u_input.a, 17288i, 44633i), vec3<i32>(-37958i, arg_0.a.e.x, u_input.a)), _wgslsmith_add_vec3_i32(vec3<i32>(-20125i, arg_0.a.e.x, arg_0.e.e.x), vec3<i32>(u_input.a, 0i, 47371i))), countOneBits(_wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(-2289i, 41762i, u_input.a)), vec3<i32>(-1i, u_input.a, -10928i), select(vec3<i32>(u_input.a, -1i, arg_0.d), vec3<i32>(1i, 0i, 39750i), arg_0.a.b.x)))), arg_0, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(855f, arg_0.a.a, arg_0.e.a, arg_0.e.a))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e.a, arg_0.e.a, -320f, -2009f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(792f, arg_0.a.a, -398f, arg_0.e.d))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1146f, -633f, _wgslsmith_div_f32(arg_0.e.d, arg_0.e.d), 1071f) * vec4<f32>(_wgslsmith_f_op_f32(-arg_0.e.d), _wgslsmith_f_op_f32(-arg_0.a.a), 392f, 294f)))), u_input.a);
    global0 = array<Struct_3, 4>();
    var_1 = global0[_wgslsmith_index_u32(u_input.b.x, 4u)];
    global0 = array<Struct_3, 4>();
    return Struct_3(u_input.a, _wgslsmith_clamp_vec3_i32(vec3<i32>(i32(-1i) * -50288i, u_input.a, -u_input.a) ^ var_1.b, var_1.b ^ _wgslsmith_sub_vec3_i32(-vec3<i32>(-1i, 2147483647i, -575i), var_1.b), -vec3<i32>(1i, -2147483647i, arg_0.d)), func_2(), vec4<f32>(_wgslsmith_div_f32(arg_0.e.d, var_1.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.d * 250f)), _wgslsmith_f_op_f32(abs(var_1.c.a.d)), var_1.d.x), 2924i);
}

fn func_1(arg_0: u32) -> vec4<f32> {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, abs(u_input.b.x)), 4u)];
    var_0 = func_4(func_2());
    var var_1 = 73478i;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-102f, 171f) + _wgslsmith_f_op_f32(f32(-1f) * -1213f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.c.e.d, var_0.d.x)))), _wgslsmith_f_op_f32(max(var_0.c.e.d, var_0.c.a.a)), false)), !select(select(select(var_0.c.e.b, var_0.c.e.b, vec3<bool>(var_0.c.e.b.x, var_0.c.a.b.x, true)), var_0.c.a.b, !var_0.c.a.b.x), !func_4(Struct_2(var_0.c.e, u_input.b, vec4<u32>(arg_0, 0u, 31342u, 27529u), u_input.a, var_0.c.a)).c.e.b, select(var_0.c.e.b, var_0.c.a.b, vec3<bool>(false, var_0.c.a.b.x, false))), _wgslsmith_add_vec4_u32(firstLeadingBit(~vec4<u32>(var_0.c.c.x, var_0.c.e.c.x, 4294967295u, 0u) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(1u, arg_0, 50967u, arg_0), vec4<u32>(var_0.c.b.x, 0u, var_0.c.b.x, 120016u))), ~_wgslsmith_mod_vec4_u32(var_0.c.e.c ^ vec4<u32>(u_input.b.x, var_0.c.a.c.x, 1u, arg_0), ~vec4<u32>(arg_0, 15130u, var_0.c.c.x, var_0.c.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1262f)), -1268f), abs(vec2<i32>(1i, reverseBits(8865i))));
    global0 = array<Struct_3, 4>();
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(func_4(Struct_2(var_0.c.e, vec4<u32>(18426u, arg_0, u_input.b.x, 0u), u_input.c, u_input.a, var_0.c.a)).d.x, _wgslsmith_f_op_f32(round(-797f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a + -1744f), var_0.d.x), -1017f) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.c.a.a))), _wgslsmith_f_op_f32(trunc(var_2.a)), -160f, var_2.a)), var_0.d, func_4(Struct_2(Struct_1(var_0.d.x, !vec3<bool>(var_0.c.a.b.x, var_0.c.e.b.x, true), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, 1u), vec4<u32>(38445u, u_input.b.x, 4294967295u, var_2.c.x)), func_2().e.d, var_2.e), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(var_2.c, u_input.b), var_2.c, vec4<u32>(u_input.b.x, var_2.c.x, 1u, var_2.c.x)), var_2.c, i32(-1i) * -11628i, var_0.c.a)).c.a.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(-1907f, -1322f);
    global0 = array<Struct_3, 4>();
    var var_1 = _wgslsmith_f_op_vec4_f32(func_1(39024u));
    var var_2 = _wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), var_1.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.x)) + _wgslsmith_f_op_f32(f32(-1f) * -680f))))))));
    var var_3 = _wgslsmith_mult_vec2_u32(u_input.c.zy | u_input.c.ww, u_input.b.wz);
    let var_4 = func_4(Struct_2(func_4(func_2()).c.e, abs(vec4<u32>(4294967295u, 0u, 1u, ~var_3.x)), vec4<u32>(func_4(Struct_2(Struct_1(-1032f, vec3<bool>(true, false, true), vec4<u32>(var_3.x, var_3.x, 25628u, var_3.x), var_0, vec2<i32>(u_input.a, u_input.a)), vec4<u32>(1u, 50536u, 38453u, 1u), vec4<u32>(u_input.c.x, u_input.c.x, 1u, 52103u), -1i, Struct_1(var_0, vec3<bool>(false, true, false), vec4<u32>(14628u, var_3.x, var_3.x, var_3.x), -305f, vec2<i32>(2147483647i, u_input.a)))).c.c.x, reverseBits(u_input.c.x) & ~u_input.c.x, 0u, u_input.c.x), u_input.a, func_2().a)).c.a;
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1524f, -596f, 743f, var_1.x), vec4<f32>(-549f, -310f, -839f, var_1.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-411f, 915f, var_4.a, var_1.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-231f, -762f, 125f, 841f)))), vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0)), var_1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_vec4_f32(func_1(1u)).x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-242f, 165f) - 520f)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_1(1u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 1283f, var_1.x) * var_1.wwy))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-239f, -1372f, var_4.d)))))), _wgslsmith_div_vec3_u32(vec3<u32>(34438u, abs(37709u), ~(~var_3.x)), vec3<u32>(func_3(global0[_wgslsmith_index_u32(1u, 4u)], 18757i, u_input.a, func_2().a).x, var_4.c.x, 0u)), func_2().e.c);
}

