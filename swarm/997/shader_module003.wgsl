struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec2<bool>,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14> = array<bool, 14>(true, true, false, false, true, true, false, false, true, false, true, false, false, false);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_4, arg_3: Struct_3) -> vec4<u32> {
    var var_0 = select(select(vec4<bool>(true, !(arg_3.a.c.x && arg_2.a), !arg_3.a.c.x, !all(vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.b, 14u)]))), vec4<bool>(u_input.b < 4294967295u, true, !arg_2.a | true, any(select(vec3<bool>(true, arg_3.a.a.x, false), vec3<bool>(global0[_wgslsmith_index_u32(35813u, 14u)], arg_3.a.c.x, true), vec3<bool>(false, false, arg_2.a)))), true), !vec4<bool>(any(select(vec4<bool>(true, true, true, arg_3.a.a.x), vec4<bool>(arg_3.a.c.x, global0[_wgslsmith_index_u32(38275u, 14u)], false, false), true)), false & (arg_2.b.a.x != 12309i), !arg_2.a, global0[_wgslsmith_index_u32(37242u, 14u)]), vec4<bool>(all(vec4<bool>(arg_3.a.c.x, arg_3.a.a.x, arg_3.a.c.x, false)) | any(!vec3<bool>(false, arg_2.a, false)), !(!global0[_wgslsmith_index_u32(u_input.b, 14u)] & any(vec4<bool>(arg_3.a.a.x, false, arg_2.a, arg_2.a))), arg_3.a.a.x == all(vec2<bool>(arg_3.a.c.x, arg_3.a.c.x)), any(vec4<bool>(!arg_2.a, arg_2.a, true, arg_2.a))));
    let var_1 = countOneBits(~(~_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(9578u, u_input.b, u_input.b, 48041u), vec4<u32>(4294967295u, u_input.b, 0u, 4294967295u)), vec4<u32>(u_input.b, u_input.b, 41415u, 127u) >> (vec4<u32>(21868u, 0u, u_input.b, arg_3.a.d) % vec4<u32>(32u)))));
    let var_2 = abs(max(vec4<u32>(arg_3.a.d, reverseBits(~u_input.b), firstTrailingBit(~arg_3.a.b), var_1.x), ~var_1));
    var var_3 = var_1.x;
    var_0 = vec4<bool>(_wgslsmith_dot_vec4_i32(u_input.d, abs(u_input.d) & _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, arg_1, u_input.c, 71584i), arg_2.d)) > _wgslsmith_mult_i32(-1i << ((1u & arg_3.a.b) % 32u), firstLeadingBit(~u_input.d.x)), (false == global0[_wgslsmith_index_u32(1u, 14u)]) & global0[_wgslsmith_index_u32(~(var_2.x ^ _wgslsmith_mult_u32(u_input.b, u_input.b)), 14u)], var_0.x, !arg_3.a.a.x);
    return var_1;
}

fn func_2() -> Struct_3 {
    let var_0 = 0i;
    return Struct_3(Struct_1(select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(8262u, 14u)], true), !global0[_wgslsmith_index_u32(u_input.b, 14u)]), _wgslsmith_dot_vec4_u32(~func_3(177f, 0i, Struct_4(global0[_wgslsmith_index_u32(u_input.b, 14u)], Struct_2(vec3<i32>(u_input.c, 1i, u_input.a)), Struct_2(vec3<i32>(var_0, -33199i, 0i)), vec4<i32>(var_0, var_0, var_0, u_input.c)), Struct_3(Struct_1(vec2<bool>(false, false), u_input.b, vec2<bool>(true, false), u_input.b, vec2<f32>(473f, -126f)))), _wgslsmith_sub_vec4_u32(min(vec4<u32>(88265u, u_input.b, 1u, 26248u), vec4<u32>(u_input.b, 4294967295u, 58224u, 29474u)), _wgslsmith_add_vec4_u32(vec4<u32>(23377u, 4294967295u, 0u, u_input.b), vec4<u32>(4294967295u, 65u, u_input.b, 0u)))), !vec2<bool>(false, !global0[_wgslsmith_index_u32(0u, 14u)]), _wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(38376u, u_input.b)), vec2<u32>(u_input.b, 1u) & vec2<u32>(u_input.b, u_input.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1185f, 271f))))));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: bool, arg_3: vec4<f32>) -> vec2<f32> {
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    let var_0 = abs(u_input.b);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1184f)))))));
    global0 = array<bool, 14>();
    return arg_0.a.e;
}

fn func_5(arg_0: u32, arg_1: vec2<f32>, arg_2: u32) -> Struct_4 {
    let var_0 = ~arg_2;
    global0 = array<bool, 14>();
    var var_1 = vec3<u32>(arg_2, 0u, 1u);
    let var_2 = Struct_1(!vec2<bool>(global0[_wgslsmith_index_u32(arg_0, 14u)] || global0[_wgslsmith_index_u32(var_0, 14u)], all(func_2().a.c)), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.x * arg_1.x)))), ~(~(-6492i)), Struct_4(true, Struct_2(_wgslsmith_add_vec3_i32(u_input.d.yzy, vec3<i32>(u_input.d.x, -5121i, -23848i))), Struct_2(_wgslsmith_clamp_vec3_i32(u_input.d.zxw, u_input.d.zzz, u_input.d.wzz)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.d.x, u_input.d.x, -1i), abs(u_input.d))), Struct_3(func_2().a)).x, vec2<bool>(false, false), 1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_3(Struct_1(vec2<bool>(false, global0[_wgslsmith_index_u32(arg_2, 14u)]), 1u, vec2<bool>(true, false), 15016u, vec2<f32>(1190f, arg_1.x))), global0[_wgslsmith_index_u32(23223u, 14u)], true, vec4<f32>(1000f, arg_1.x, -429f, -1525f)))) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1680f, -1141f)))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-324f, -431f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(760f, -190f))), func_2().a.e))));
    var var_3 = Struct_4(true == !all(var_2.a), Struct_2(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.d.x, u_input.c, u_input.c), min(u_input.d, vec4<i32>(u_input.d.x, u_input.a, 0i, 40232i))), 0i, u_input.a)), Struct_2(firstLeadingBit(~_wgslsmith_mod_vec3_i32(u_input.d.xyz, u_input.d.zyw))), u_input.d);
    return Struct_4(~_wgslsmith_div_u32(u_input.b, arg_2) == ~_wgslsmith_add_u32(var_2.b, _wgslsmith_mod_u32(var_1.x, var_1.x)), var_3.c, var_3.c, u_input.d);
}

fn func_6(arg_0: Struct_4, arg_1: bool, arg_2: f32) -> Struct_1 {
    global0 = array<bool, 14>();
    var var_0 = _wgslsmith_mod_vec2_u32(abs(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, u_input.b)), min(vec2<u32>(0u, u_input.b), vec2<u32>(u_input.b, 0u)))) << (reverseBits(countOneBits(abs(vec2<u32>(u_input.b, u_input.b)))) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, ~(u_input.b ^ 57895u)), ~(~_wgslsmith_div_vec2_u32(vec2<u32>(22764u, 1u), vec2<u32>(37747u, 4294967295u)))));
    let var_1 = func_5(0u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(341f, arg_2))))), vec2<f32>(arg_2, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-621f * arg_2))))), _wgslsmith_mult_u32(u_input.b, var_0.x)).b;
    let var_2 = u_input.d.x;
    var var_3 = Struct_1(vec2<bool>(true, arg_0.a), ~u_input.b, select(!(!(!vec2<bool>(arg_1, arg_0.a))), vec2<bool>(select(arg_1 && false, all(vec2<bool>(false, false)), 1i == arg_0.b.a.x), true), select(vec2<bool>(false, true), vec2<bool>(arg_1, true), arg_0.a)), reverseBits(~(func_3(arg_2, var_2, Struct_4(global0[_wgslsmith_index_u32(var_0.x, 14u)], Struct_2(vec3<i32>(42643i, 34505i, var_2)), Struct_2(vec3<i32>(-2147483647i, -1i, var_2)), u_input.d), Struct_3(Struct_1(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 14u)]), u_input.b, vec2<bool>(arg_0.a, global0[_wgslsmith_index_u32(var_0.x, 14u)]), var_0.x, vec2<f32>(373f, -722f)))).x ^ 0u)), vec2<f32>(-409f, 552f));
    return func_2().a;
}

fn func_1(arg_0: i32) -> Struct_1 {
    global0 = array<bool, 14>();
    let var_0 = vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.b, u_input.b), 1u, ~12879u, u_input.b), vec4<u32>(u_input.b ^ u_input.b, u_input.b | 4294967295u, ~u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 50532u), vec2<u32>(u_input.b, u_input.b)))), 38635u ^ abs(u_input.b << (0u % 32u))), 44849u, ~(~39909u), select(_wgslsmith_div_u32(countOneBits(~u_input.b), 1u), _wgslsmith_add_u32(abs(12234u), _wgslsmith_mod_u32(u_input.b, _wgslsmith_add_u32(4294967295u, 0u))), true));
    let var_1 = func_6(func_5(26241u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(555f, 244f) * vec2<f32>(-1400f, 638f))), _wgslsmith_f_op_vec2_f32(func_4(func_2(), true, !global0[_wgslsmith_index_u32(17895u, 14u)], vec4<f32>(1494f, 894f, 1113f, -213f)))), 1u), global0[_wgslsmith_index_u32(countOneBits(~var_0.x) >> (_wgslsmith_sub_u32(4294967295u, 1u) % 32u), 14u)], 1000f);
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    return func_6(Struct_4(!(_wgslsmith_f_op_f32(round(-484f)) >= _wgslsmith_f_op_f32(-277f - 519f)), func_5(_wgslsmith_clamp_u32(min(0u, u_input.b), _wgslsmith_sub_u32(1u, var_1.d), _wgslsmith_dot_vec2_u32(var_0.wy, var_0.ww)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.e.x, var_1.e.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.e.x, -162f) + var_1.e))), 34286u).c, func_5(12989u, var_1.e, ~var_1.b).c, firstLeadingBit(_wgslsmith_mod_vec4_i32(~vec4<i32>(arg_0, arg_0, u_input.a, u_input.d.x), _wgslsmith_add_vec4_i32(u_input.d, vec4<i32>(arg_0, u_input.c, 2147483647i, -46485i))))), global0[_wgslsmith_index_u32(max(32811u, 4294967295u), 14u)] || global0[_wgslsmith_index_u32(44012u, 14u)], _wgslsmith_f_op_f32(var_1.e.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.e.x)) - -207f)));
}

fn func_7(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: f32, arg_3: Struct_2) -> Struct_4 {
    global0 = array<bool, 14>();
    let var_0 = vec4<f32>(264f, 1651f, _wgslsmith_f_op_f32(-223f - arg_1.a.e.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-301f)) - -331f), _wgslsmith_f_op_f32(arg_1.a.e.x - _wgslsmith_f_op_f32(f32(-1f) * -250f))))));
    global0 = array<bool, 14>();
    let var_1 = arg_1.a;
    var var_2 = arg_3;
    return Struct_4(any(!vec3<bool>(-2147483647i <= var_2.a.x, any(vec3<bool>(false, arg_1.a.c.x, false)), false)), arg_3, arg_3, u_input.d >> (vec4<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(arg_1.a.d, u_input.b, 4294967295u)), abs(vec3<u32>(u_input.b, 40552u, 4294967295u))), ~arg_1.a.d, 27256u, _wgslsmith_clamp_u32(abs(67188u), ~1u, arg_1.a.d)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 14>();
    var var_0 = ~u_input.b;
    let var_1 = func_7(vec3<i32>(~min(0i, -26969i), u_input.c, u_input.a), Struct_3(func_1(-select(u_input.d.x, -2147483647i, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_4(func_2(), all(vec3<bool>(false, global0[_wgslsmith_index_u32(60401u, 14u)], true)), true, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, 496f, 2675f, 917f))))).x + 836f) - -998f), func_5(_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.b, 0u, 11511u, u_input.b) >> (vec4<u32>(u_input.b, u_input.b, 4294967295u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(39572u, u_input.b, 80649u, 22443u) ^ vec4<u32>(u_input.b, 52726u, 4294967295u, u_input.b)), ~(vec4<u32>(42371u, 1u, 35664u, u_input.b) & vec4<u32>(u_input.b, 76733u, 86711u, 1u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2178f, 896f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-801f, -1000f), vec2<f32>(-628f, -305f), true))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1027f, 1636f))), func_6(func_5(_wgslsmith_mod_u32(1u, u_input.b), func_2().a.e, ~u_input.b), func_6(Struct_4(false, Struct_2(vec3<i32>(u_input.a, 3503i, u_input.c)), Struct_2(u_input.d.xxw), vec4<i32>(0i, u_input.a, u_input.a, u_input.c)), global0[_wgslsmith_index_u32(74313u, 14u)], 1698f).a.x | (true | global0[_wgslsmith_index_u32(u_input.b, 14u)]), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1076f))))).b).b);
    var var_2 = -u_input.c;
    var_0 = 30317u;
    var_2 = ~(-5429i);
    let var_3 = func_5(~u_input.b, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-456f, 1203f), func_6(Struct_4(true, var_1.b, var_1.c, vec4<i32>(-2147483647i, var_1.d.x, var_1.d.x, var_1.c.a.x)), false, -557f).e.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1149f, 1179f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1002f, -462f), vec2<f32>(-1000f, 499f), false)))))), ~(u_input.b ^ 0u));
    global0 = array<bool, 14>();
    var_0 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_3.b.a.x, -40981i, u_input.a, 2147483647i), func_5(u_input.b, vec2<f32>(-431f, 1170f), u_input.b).d), vec4<i32>(func_5(104351u, vec2<f32>(-784f, -1377f), u_input.b).b.a.x, 2147483647i & var_1.d.x, _wgslsmith_sub_i32(var_1.b.a.x, var_3.c.a.x), _wgslsmith_clamp_i32(0i, var_3.b.a.x, var_3.b.a.x))), -681i, -vec3<i32>(22620i, u_input.d.x, func_5(25216u, vec2<f32>(696f, 312f), 4294967295u).c.a.x & _wgslsmith_sub_i32(-2147483647i, var_1.c.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -324f) - -2881f)), -1452f));
}

