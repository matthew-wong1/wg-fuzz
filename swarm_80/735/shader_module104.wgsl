struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 21>;

var<private> global1: Struct_1;

var<private> global2: vec4<f32>;

var<private> global3: f32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> i32 {
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-809f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.x))))));
    global2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(341f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.a))), _wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(floor(-266f)))), global2.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(-1398f, 105f)), global1.a, _wgslsmith_div_f32(global1.a, -2005f), _wgslsmith_f_op_f32(floor(-1000f))) + vec4<f32>(global2.x, _wgslsmith_f_op_f32(2038f + 356f), -331f, -504f)))));
    let var_0 = global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(_wgslsmith_mult_u32(31869u, global1.b.x)), ~(~global1.b.x), 20007u, u_input.b.x & _wgslsmith_div_u32(1u, 41602u)), max(u_input.c, select(~u_input.c, _wgslsmith_clamp_vec4_u32(u_input.c, u_input.c, u_input.c), all(vec4<bool>(global1.c, true, true, global1.c)))))), 21u)];
    global1 = var_0.d;
    var var_1 = 522f;
    return _wgslsmith_div_i32(1i, -1i);
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec3<u32>, arg_3: bool) -> Struct_2 {
    global0 = array<Struct_3, 21>();
    var var_0 = Struct_3(Struct_2(Struct_1(global2.x, ~arg_2, firstTrailingBit(22100i) >= -8455i, global1.d | ~vec2<i32>(9160i, global1.d.x)), select(vec2<bool>(true, arg_1), vec2<bool>(true, any(vec4<bool>(true, false, true, arg_1))), select(!vec2<bool>(global1.c, true), vec2<bool>(global1.c, global1.c), arg_1)), Struct_1(arg_0, vec3<u32>(50720u, 0u, arg_2.x) & firstTrailingBit(vec3<u32>(arg_2.x, 4294967295u, 12175u)), true, global1.d)), Struct_2(Struct_1(1f, vec3<u32>(4294967295u, ~6080u, 1u), all(!vec2<bool>(global1.c, global1.c)), ~global1.d), !vec2<bool>(select(arg_1, true, false), false), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), -1158f)), ~max(vec3<u32>(global1.b.x, arg_2.x, u_input.c.x), vec3<u32>(global1.b.x, arg_2.x, 31700u)), false, global1.d | vec2<i32>(0i, -14207i))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-1346f - _wgslsmith_f_op_f32(f32(-1f) * -1889f)), ~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 15291u, arg_2.x), vec3<u32>(arg_2.x, arg_2.x, u_input.b.x)), !(global1.c & false), vec2<i32>(func_3(), min(-1i, -2147483647i))), !select(select(vec2<bool>(true, false), vec2<bool>(false, false), arg_1), !vec2<bool>(arg_3, arg_1), select(vec2<bool>(arg_1, true), vec2<bool>(arg_3, false), vec2<bool>(true, true))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.x))), vec3<u32>(~arg_2.x, firstLeadingBit(global1.b.x), _wgslsmith_mod_u32(41925u, u_input.c.x)), !(!arg_3), global1.d)), Struct_1(-946f, select(~reverseBits(global1.b), vec3<u32>(arg_2.x, global1.b.x, global1.b.x) >> (vec3<u32>(4294967295u, arg_2.x, arg_2.x) % vec3<u32>(32u)), vec3<bool>(true, true, true)), any(!select(vec3<bool>(global1.c, true, global1.c), vec3<bool>(arg_3, global1.c, false), false)), firstTrailingBit(-vec2<i32>(global1.d.x, global1.d.x)) ^ ~global1.d));
    global1 = Struct_1(628f, u_input.c.wxz, !arg_1, -(~(-vec2<i32>(1i, -2147483647i))));
    var var_1 = vec4<u32>(arg_2.x, 25765u, abs(_wgslsmith_sub_u32(~100525u, 52542u)), var_0.b.a.b.x);
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.a, -981f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), 208f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-492f, var_0.b.c.a, 247f, arg_0)))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(726f * global1.a), -702f, global1.a, _wgslsmith_f_op_f32(f32(-1f) * -766f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -1147f, -1236f, var_0.a.c.a) + vec4<f32>(global1.a, 1041f, 1000f, 440f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.c.a, global2.x, 374f, 1126f))), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, global1.c, arg_1), select(vec4<bool>(false, true, true, false), vec4<bool>(arg_3, var_0.a.a.c, false, global1.c), true))))));
    return var_0.c;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: f32, arg_3: Struct_4) -> Struct_2 {
    let var_0 = ~0i & _wgslsmith_dot_vec3_i32(-arg_3.c, arg_3.c);
    var var_1 = ~firstLeadingBit(_wgslsmith_sub_vec3_i32(-arg_3.c, vec3<i32>(global1.d.x, -1i, 2147483647i)) | arg_3.c);
    var var_2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(396f, 509f))))), false, arg_1.c.b, true).c;
    var_1 = arg_3.c;
    let var_3 = vec4<bool>(!all(!vec4<bool>(true, global1.c, false, false)), any(!(!vec4<bool>(true, var_2.c, false, global1.c))), true, all(select(vec2<bool>(var_2.c && true, arg_0.x), select(vec2<bool>(false, arg_3.e.c.b.x), select(vec2<bool>(arg_3.a.a.c, false), vec2<bool>(true, true), arg_1.b), vec2<bool>(false, false)), select(vec2<bool>(arg_0.x, true), arg_0.yz, arg_1.b))));
    return arg_3.a;
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    global0 = array<Struct_3, 21>();
    var var_0 = _wgslsmith_div_vec3_i32(abs(reverseBits(-vec3<i32>(arg_1.c.d.x, 59291i, -45778i) | vec3<i32>(-1i, arg_1.c.d.x, arg_1.a.d.x))), _wgslsmith_mult_vec3_i32(vec3<i32>(global1.d.x, firstLeadingBit(_wgslsmith_mult_i32(-4566i, arg_1.a.d.x)), 2147483647i), countOneBits(vec3<i32>(-10069i ^ global1.d.x, _wgslsmith_div_i32(global1.d.x, global1.d.x), firstTrailingBit(-27359i)))));
    var var_1 = vec2<f32>(global2.x, _wgslsmith_f_op_f32(-global1.a));
    var var_2 = vec4<u32>(_wgslsmith_div_u32(~arg_1.a.b.x, 1u), ~max(u_input.a.x, _wgslsmith_sub_u32(1u, ~u_input.c.x)), _wgslsmith_sub_u32(reverseBits(~(~global1.b.x)), func_4(select(vec3<bool>(true, true, true), !vec3<bool>(true, false, global1.c), true), func_4(select(vec3<bool>(false, true, arg_1.c.c), vec3<bool>(true, arg_1.a.c, global1.c), vec3<bool>(false, false, true)), arg_1, _wgslsmith_f_op_f32(arg_0 * -707f), Struct_4(arg_1, u_input.c.wzz, vec3<i32>(var_0.x, 21904i, var_0.x), 40009u, global0[_wgslsmith_index_u32(1u, 21u)])), global1.a, Struct_4(func_4(vec3<bool>(arg_1.c.c, false, arg_1.c.c), Struct_2(Struct_1(-1083f, arg_1.a.b, true, var_0.yx), vec2<bool>(global1.c, global1.c), Struct_1(2507f, vec3<u32>(24933u, 5482u, u_input.c.x), true, vec2<i32>(-2147483647i, global1.d.x))), -1146f, Struct_4(arg_1, u_input.c.wzw, vec3<i32>(var_0.x, -69910i, -1i), 32957u, global0[_wgslsmith_index_u32(u_input.a.x, 21u)])), arg_1.c.b, max(vec3<i32>(global1.d.x, 1642i, 39914i), vec3<i32>(arg_1.c.d.x, 2147483647i, arg_1.c.d.x)), 1u, global0[_wgslsmith_index_u32(~arg_1.a.b.x, 21u)])).a.b.x), arg_1.a.b.x);
    let var_3 = ~var_2.x;
    return func_4(select(select(!(!vec3<bool>(true, false, arg_1.c.c)), select(!vec3<bool>(true, arg_1.c.c, false), vec3<bool>(global1.c, global1.c, true), true), vec3<bool>(arg_1.a.c & false, all(vec3<bool>(global1.c, global1.c, true)), func_2(var_1.x, arg_1.c.c, var_2.zww, true).a.c)), vec3<bool>(all(vec4<bool>(global1.c, global1.c, true, false)), global1.c, func_2(-1837f, -537f == global2.x, var_2.xyw | var_2.wwz, global1.c).a.c), vec3<bool>(!(arg_1.a.d.x > -22122i), any(arg_1.b), any(arg_1.b))), func_2(arg_1.c.a, global1.c, arg_1.a.b, 0u == (global1.b.x ^ ~arg_1.a.b.x)), 1000f, Struct_4(arg_1, _wgslsmith_div_vec3_u32(firstTrailingBit(var_2.yxw), vec3<u32>(0u ^ u_input.a.x, ~var_3, firstLeadingBit(4294967295u))), min(_wgslsmith_mod_vec3_i32(vec3<i32>(global1.d.x, var_0.x, 0i) & vec3<i32>(-61579i, global1.d.x, 35020i), vec3<i32>(-21926i, -1i, global1.d.x) & vec3<i32>(global1.d.x, var_0.x, 1952i)), vec3<i32>(func_3(), -var_0.x, 13930i)), var_3, Struct_3(arg_1, func_2(-2305f, arg_1.a.c, vec3<u32>(0u, global1.b.x, 56511u), true), Struct_2(Struct_1(arg_1.a.a, vec3<u32>(var_3, var_2.x, global1.b.x), global1.c, arg_1.a.d), func_4(vec3<bool>(false, arg_1.b.x, arg_1.b.x), arg_1, 1302f, Struct_4(arg_1, arg_1.a.b, vec3<i32>(-2147483647i, -6669i, -2147483647i), global1.b.x, global0[_wgslsmith_index_u32(global1.b.x, 21u)])).b, arg_1.c), func_4(vec3<bool>(false, false, global1.c), Struct_2(Struct_1(1064f, global1.b, arg_1.c.c, var_0.xz), arg_1.b, Struct_1(var_1.x, arg_1.a.b, arg_1.a.c, global1.d)), _wgslsmith_f_op_f32(abs(arg_0)), Struct_4(arg_1, vec3<u32>(3861u, arg_1.a.b.x, 67138u), vec3<i32>(0i, 1i, 1650i), var_2.x, Struct_3(Struct_2(Struct_1(1360f, vec3<u32>(global1.b.x, global1.b.x, u_input.c.x), global1.c, vec2<i32>(global1.d.x, arg_1.c.d.x)), vec2<bool>(global1.c, arg_1.b.x), Struct_1(-1519f, vec3<u32>(var_3, 66381u, 4294967295u), global1.c, vec2<i32>(10722i, -20180i))), arg_1, Struct_2(Struct_1(-731f, vec3<u32>(var_3, var_3, 8242u), true, arg_1.a.d), arg_1.b, arg_1.a), Struct_1(arg_1.c.a, vec3<u32>(var_2.x, 39683u, 26085u), arg_1.b.x, global1.d)))).c))).c;
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> f32 {
    var var_0 = Struct_4(Struct_2(arg_1, !(!vec2<bool>(arg_1.c, global1.c)), func_5(arg_1.a, func_4(!vec3<bool>(false, arg_0, true), func_2(arg_1.a, false, vec3<u32>(arg_1.b.x, 88663u, 34966u), true), _wgslsmith_f_op_f32(arg_1.a * -857f), Struct_4(Struct_2(arg_1, vec2<bool>(false, true), Struct_1(arg_1.a, vec3<u32>(u_input.a.x, 119965u, arg_1.b.x), true, vec2<i32>(arg_1.d.x, global1.d.x))), global1.b, vec3<i32>(-34108i, -34788i, 1i), u_input.c.x, global0[_wgslsmith_index_u32(arg_1.b.x, 21u)])))), global1.b, -abs(vec3<i32>(i32(-1i) * -44217i, arg_1.d.x, 1i)), abs(arg_1.b.x), global0[_wgslsmith_index_u32(~49735u, 21u)]);
    let var_1 = global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(func_4(vec3<bool>(arg_0, false, false), func_4(vec3<bool>(arg_1.c, true, true), Struct_2(Struct_1(-1123f, global1.b, arg_1.c, var_0.a.c.d), vec2<bool>(arg_0, true), Struct_1(var_0.a.a.a, vec3<u32>(47347u, 1975u, u_input.c.x), arg_1.c, vec2<i32>(11145i, -1i))), arg_1.a, Struct_4(Struct_2(Struct_1(global1.a, vec3<u32>(30420u, arg_1.b.x, 3497u), true, vec2<i32>(-8394i, -2147483647i)), var_0.e.c.b, var_0.e.c.c), vec3<u32>(global1.b.x, var_0.b.x, arg_1.b.x), vec3<i32>(0i, -55901i, arg_1.d.x), 20827u, var_0.e)), _wgslsmith_f_op_f32(-arg_1.a), Struct_4(var_0.a, vec3<u32>(4294967295u, arg_1.b.x, 4294967295u), var_0.c, arg_1.b.x, Struct_3(var_0.a, var_0.e.b, Struct_2(arg_1, var_0.a.b, Struct_1(-477f, vec3<u32>(u_input.a.x, 53982u, arg_1.b.x), false, var_0.c.zz)), Struct_1(-709f, vec3<u32>(50004u, u_input.b.x, arg_1.b.x), global1.c, global1.d)))).c.b.yy, _wgslsmith_mult_vec2_u32(arg_1.b.zy, _wgslsmith_add_vec2_u32(vec2<u32>(arg_1.b.x, u_input.a.x), vec2<u32>(0u, global1.b.x))))), 21u)];
    global3 = 2459f;
    let var_2 = firstLeadingBit(countOneBits(vec4<i32>(arg_1.d.x, global1.d.x, 35015i, -firstLeadingBit(var_0.e.d.d.x))));
    let var_3 = var_0.c | ~(var_2.xxx << (func_5(750f, func_2(global2.x, true, u_input.c.wwy, false)).b % vec3<u32>(32u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.b.c.a))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool, arg_3: Struct_4) -> Struct_1 {
    global1 = Struct_1(arg_1.c.c.a, ~select(vec3<u32>(~global1.b.x, _wgslsmith_sub_u32(1u, global1.b.x), ~4294967295u), ~vec3<u32>(arg_0.c.b.x, 0u, 1u), select(vec3<bool>(false, false, false), !vec3<bool>(arg_1.d.c, arg_2, false), arg_3.d <= 4294967295u)), false, vec2<i32>(arg_1.c.c.d.x, _wgslsmith_mod_i32(-42376i, arg_0.a.d.x) >> (~46137u % 32u)) >> (~abs(vec2<u32>(1u, 56444u)) % vec2<u32>(32u)));
    let var_0 = 0u;
    global2 = vec4<f32>(global1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(arg_0.a.a, arg_0.a.c, arg_0.c.b, global1.c).a.a) + _wgslsmith_f_op_f32(270f + _wgslsmith_f_op_f32(-arg_3.e.c.c.a))), _wgslsmith_f_op_f32(global1.a - 732f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1667f, arg_1.c.c.a))))), 1842f);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(241f))))), select(vec3<u32>(firstLeadingBit(4708u), ~u_input.b.x, select(arg_3.d, 4294967295u, arg_1.c.b.x)) | _wgslsmith_add_vec3_u32(~arg_3.b, u_input.c.yzx), vec3<u32>(arg_1.a.a.b.x, var_0, ~arg_0.c.b.x), all(arg_1.c.b)), 604f > arg_0.c.a, ~(~(arg_1.a.c.d << (func_4(vec3<bool>(arg_2, true, arg_0.a.c), Struct_2(Struct_1(global2.x, vec3<u32>(u_input.a.x, 1u, 1512u), false, vec2<i32>(arg_0.a.d.x, arg_3.c.x)), arg_3.e.b.b, arg_3.a.a), arg_1.d.a, arg_3).a.b.xx % vec2<u32>(32u)))));
    global0 = array<Struct_3, 21>();
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -638f) + global2.x) - _wgslsmith_f_op_f32(func_1(all(vec3<bool>(true, global1.c, false)), func_2(-894f, var_1.c, arg_1.d.b, arg_2).a)))), ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.c.x, u_input.a.x, 63121u), vec3<u32>(var_1.b.x, 0u, 20973u) ^ u_input.c.yyx, _wgslsmith_add_vec3_u32(~global1.b, arg_1.d.b)), (u_input.a.x & u_input.a.x) <= u_input.a.x, _wgslsmith_add_vec2_i32(firstLeadingBit(~min(vec2<i32>(arg_1.a.a.d.x, 1439i), vec2<i32>(37362i, -1i))), ~countOneBits(vec2<i32>(var_1.d.x, -2147483647i) ^ arg_3.a.a.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_6(Struct_2(Struct_1(global1.a, global1.b, all(vec2<bool>(false, global1.c)), -global1.d), !select(vec2<bool>(true, true), vec2<bool>(true, false), false), Struct_1(_wgslsmith_f_op_f32(func_1(global1.c, Struct_1(-2022f, vec3<u32>(20938u, 5242u, 4294967295u), false, vec2<i32>(27424i, global1.d.x)))), _wgslsmith_mult_vec3_u32(vec3<u32>(15783u, 1u, 0u), u_input.a), true, _wgslsmith_mult_vec2_i32(global1.d, vec2<i32>(-1i, -1i)))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global1.b.x | global1.b.x), ~(~vec2<u32>(u_input.b.x, u_input.a.x))), 21u)], 2881f <= func_5(global1.a, func_2(165f, false, u_input.c.xyw, global1.c)).a, Struct_4(func_2(_wgslsmith_f_op_f32(min(-1538f, global1.a)), 2147483647i < global1.d.x, select(vec3<u32>(57427u, 41190u, 4294967295u), vec3<u32>(u_input.b.x, 4294967295u, 1u), vec3<bool>(global1.c, global1.c, global1.c)), true && global1.c), vec3<u32>(min(u_input.b.x, u_input.c.x), _wgslsmith_div_u32(u_input.b.x, global1.b.x), global1.b.x), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, global1.d.x, -87011i), vec3<i32>(-29487i, global1.d.x, -3766i)) ^ ~vec3<i32>(global1.d.x, 1i, global1.d.x), ~global1.b.x, Struct_3(Struct_2(Struct_1(global2.x, vec3<u32>(106380u, u_input.a.x, 2024u), false, global1.d), vec2<bool>(true, true), Struct_1(global1.a, u_input.c.xxw, global1.c, global1.d)), func_4(vec3<bool>(false, true, global1.c), Struct_2(Struct_1(-551f, vec3<u32>(5446u, 0u, u_input.b.x), global1.c, vec2<i32>(global1.d.x, -2147483647i)), vec2<bool>(global1.c, global1.c), Struct_1(global1.a, global1.b, global1.c, vec2<i32>(global1.d.x, global1.d.x))), -2228f, Struct_4(Struct_2(Struct_1(global1.a, vec3<u32>(u_input.a.x, global1.b.x, global1.b.x), global1.c, global1.d), vec2<bool>(false, global1.c), Struct_1(global1.a, vec3<u32>(global1.b.x, global1.b.x, 18501u), global1.c, vec2<i32>(-2147483647i, 0i))), global1.b, vec3<i32>(9291i, -19482i, -7327i), 1u, Struct_3(Struct_2(Struct_1(global1.a, vec3<u32>(u_input.c.x, 4294967295u, 4294967295u), global1.c, vec2<i32>(global1.d.x, 21938i)), vec2<bool>(global1.c, global1.c), Struct_1(999f, u_input.a, true, global1.d)), Struct_2(Struct_1(-537f, vec3<u32>(6425u, global1.b.x, 0u), global1.c, global1.d), vec2<bool>(false, false), Struct_1(global2.x, global1.b, false, global1.d)), Struct_2(Struct_1(-1000f, global1.b, true, global1.d), vec2<bool>(true, false), Struct_1(520f, global1.b, false, vec2<i32>(-1i, -49857i))), Struct_1(-240f, global1.b, global1.c, vec2<i32>(global1.d.x, -37233i))))), Struct_2(Struct_1(global1.a, vec3<u32>(6443u, u_input.c.x, global1.b.x), true, vec2<i32>(-1i, global1.d.x)), vec2<bool>(global1.c, global1.c), Struct_1(156f, vec3<u32>(u_input.a.x, u_input.a.x, global1.b.x), false, global1.d)), Struct_1(-2001f, vec3<u32>(global1.b.x, 37203u, global1.b.x), false, global1.d)))), vec2<bool>(global1.c, any(!vec2<bool>(global1.c, global1.c))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -329f))), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(1u, 4294967295u), ~global1.b.x), func_6(Struct_2(Struct_1(global2.x, global1.b, global1.c, vec2<i32>(global1.d.x, global1.d.x)), vec2<bool>(false, global1.c), Struct_1(global2.x, vec3<u32>(global1.b.x, 1u, global1.b.x), global1.c, vec2<i32>(global1.d.x, global1.d.x))), global0[_wgslsmith_index_u32(66960u, 21u)], !global1.c, Struct_4(Struct_2(Struct_1(1350f, u_input.c.zxz, global1.c, vec2<i32>(global1.d.x, -14713i)), vec2<bool>(global1.c, false), Struct_1(global2.x, global1.b, true, global1.d)), u_input.a, vec3<i32>(-1i, 1i, global1.d.x), 1u, Struct_3(Struct_2(Struct_1(global1.a, vec3<u32>(u_input.c.x, global1.b.x, 4294967295u), global1.c, vec2<i32>(-32213i, global1.d.x)), vec2<bool>(global1.c, global1.c), Struct_1(global2.x, u_input.c.xwx, false, global1.d)), Struct_2(Struct_1(-1000f, vec3<u32>(u_input.a.x, 9761u, 4294967295u), false, vec2<i32>(17764i, -2147483647i)), vec2<bool>(false, false), Struct_1(global1.a, vec3<u32>(0u, global1.b.x, 564u), global1.c, vec2<i32>(global1.d.x, global1.d.x))), Struct_2(Struct_1(global1.a, vec3<u32>(global1.b.x, global1.b.x, 51614u), global1.c, vec2<i32>(37581i, global1.d.x)), vec2<bool>(global1.c, global1.c), Struct_1(global2.x, vec3<u32>(0u, global1.b.x, u_input.a.x), global1.c, global1.d)), Struct_1(global1.a, global1.b, global1.c, global1.d)))).b.x, 34048u), global1.c, ~(-abs(vec2<i32>(11902i, -32761i)))));
    global2 = vec4<f32>(_wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(global1.a + 781f)), 1604f, 110f, _wgslsmith_f_op_f32(-var_0.c.a));
    var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-481f)) + func_4(select(vec3<bool>(var_0.a.c, false, true), vec3<bool>(global1.c, false, true), vec3<bool>(false, true, global1.c)), func_4(select(vec3<bool>(true, global1.c, global1.c), vec3<bool>(var_0.b.x, true, true), vec3<bool>(var_0.b.x, true, var_0.c.c)), func_4(vec3<bool>(var_0.a.c, false, var_0.b.x), Struct_2(var_0.c, var_0.b, Struct_1(1555f, var_0.c.b, global1.c, vec2<i32>(global1.d.x, 1i))), 868f, Struct_4(Struct_2(var_0.a, var_0.b, Struct_1(global1.a, var_0.a.b, var_0.c.c, var_0.c.d)), u_input.c.xzx, vec3<i32>(-1i, -8411i, var_0.a.d.x), 15u, global0[_wgslsmith_index_u32(38631u, 21u)])), -967f, Struct_4(Struct_2(Struct_1(-877f, vec3<u32>(1u, 0u, 1u), true, vec2<i32>(global1.d.x, -1681i)), var_0.b, Struct_1(var_0.c.a, global1.b, global1.c, vec2<i32>(global1.d.x, -1i))), vec3<u32>(u_input.a.x, u_input.a.x, var_0.a.b.x), vec3<i32>(-2147483647i, -1i, var_0.c.d.x), var_0.a.b.x, Struct_3(Struct_2(Struct_1(914f, var_0.a.b, global1.c, vec2<i32>(74443i, global1.d.x)), var_0.b, var_0.c), Struct_2(Struct_1(1485f, vec3<u32>(var_0.a.b.x, 0u, global1.b.x), var_0.a.c, var_0.c.d), vec2<bool>(var_0.b.x, false), Struct_1(var_0.a.a, vec3<u32>(u_input.a.x, 1u, var_0.a.b.x), true, vec2<i32>(-7396i, -6808i))), Struct_2(Struct_1(1580f, vec3<u32>(26692u, 1u, 0u), true, var_0.c.d), var_0.b, var_0.c), Struct_1(global2.x, global1.b, var_0.a.c, vec2<i32>(-86048i, -35211i))))), -630f, Struct_4(func_2(1307f, false, vec3<u32>(1u, global1.b.x, global1.b.x), var_0.a.c), _wgslsmith_mod_vec3_u32(var_0.a.b, vec3<u32>(4294967295u, 1u, global1.b.x)), _wgslsmith_div_vec3_i32(vec3<i32>(-7536i, 1i, var_0.a.d.x), vec3<i32>(1i, var_0.a.d.x, 48370i)), global1.b.x, global0[_wgslsmith_index_u32(reverseBits(var_0.a.b.x), 21u)])).a.a), true, _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.a.b.x, global1.b.x & (2974u | global1.b.x), (42550u | var_0.c.b.x) & abs(global1.b.x)), ~select(~var_0.c.b, global1.b, !vec3<bool>(true, true, global1.c)), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.a.b.x, 0u, 56754u), vec4<u32>(20939u, u_input.b.x, var_0.a.b.x, var_0.a.b.x)), _wgslsmith_mult_u32(global1.b.x, 1u), ~54809u), vec3<u32>(_wgslsmith_dot_vec3_u32(var_0.a.b, vec3<u32>(4294967295u, 11941u, var_0.c.b.x)), global1.b.x & 1u, ~u_input.a.x))), true);
    let var_1 = 3321u ^ ~func_2(1033f, global1.d.x != countOneBits(2147483647i), vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(global1.b.x, 16187u, u_input.a.x, var_0.a.b.x)), 47757u, func_5(-999f, Struct_2(Struct_1(1189f, var_0.c.b, global1.c, vec2<i32>(global1.d.x, 1i)), var_0.b, var_0.c)).b.x), any(vec2<bool>(global1.c, var_0.b.x)) == func_2(-115f, true, vec3<u32>(u_input.c.x, var_0.c.b.x, 4294967295u), true).b.x).c.b.x;
    global1 = var_0.c;
    global2 = vec4<f32>(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -276f)), -384f, 795f);
    let var_2 = firstLeadingBit(select(~1u, _wgslsmith_dot_vec4_u32(~u_input.c, ~u_input.c) | 4358u, global1.c));
    let x = u_input.a;
    s_output = StorageBuffer(-((-vec3<i32>(var_0.a.d.x, 32429i, 7639i) ^ (vec3<i32>(global1.d.x, var_0.a.d.x, -32012i) >> (vec3<u32>(var_0.a.b.x, u_input.b.x, var_1) % vec3<u32>(32u)))) | (~vec3<i32>(-2147483647i, -2147483647i, global1.d.x) ^ ~vec3<i32>(global1.d.x, var_0.c.d.x, 0i))), _wgslsmith_dot_vec2_u32(func_2(global1.a, false, vec3<u32>(var_1, 16251u, var_0.c.b.x), false).c.b.xz << ((vec2<u32>(var_1, global1.b.x) & vec2<u32>(4294967295u, var_0.c.b.x)) % vec2<u32>(32u)), vec2<u32>(~var_1, 26198u)) << (0u % 32u));
}

