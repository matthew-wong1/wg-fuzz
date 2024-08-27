struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: i32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: i32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<i32, 10> = array<i32, 10>(-45059i, 1i, -51513i, -25284i, 1i, 0i, 1i, 0i, -1i, -39508i);

var<private> global2: i32 = 0i;

var<private> global3: vec4<bool>;

var<private> global4: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> i32 {
    let var_0 = vec2<i32>(-global1[_wgslsmith_index_u32(~(~4294967295u), 10u)], ~2147483647i);
    var var_1 = ~(~vec2<u32>(0u, _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a)) | _wgslsmith_clamp_vec2_u32(vec2<u32>(16480u, u_input.a), vec2<u32>(firstLeadingBit(u_input.a), ~u_input.a), ~select(vec2<u32>(44432u, u_input.a), vec2<u32>(4294967295u, 0u), true)));
    var var_2 = Struct_5(vec3<bool>(true, any(vec2<bool>(global0.c.x, global3.x)), global0.c.x), ~(var_0.x & 0i) >> (u_input.a % 32u), !global0.c);
    global3 = !vec4<bool>(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1097f)) <= _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(select(-1000f, -108f, true))), any(global0.c) != false, !global3.x);
    global3 = !select(vec4<bool>(true, !any(var_2.a.xx), !select(false, global0.c.x, true), any(select(vec4<bool>(false, true, true, var_2.a.x), vec4<bool>(var_2.c.x, true, true, var_2.c.x), vec4<bool>(global3.x, global3.x, var_2.c.x, global3.x)))), select(vec4<bool>(var_2.a.x, var_2.a.x, 1u <= var_1.x, global3.x), !vec4<bool>(global3.x, var_2.c.x, global3.x, true), select(!vec4<bool>(false, global3.x, global3.x, global3.x), select(vec4<bool>(true, true, false, global0.c.x), vec4<bool>(global0.a.x, global3.x, var_2.a.x, true), var_2.c.x), vec4<bool>(true, false, false, global0.a.x))), ~global1[_wgslsmith_index_u32(1u, 10u)] > 1i);
    return var_2.b ^ ~(~1i);
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = ~(~(-2147483647i ^ global1[_wgslsmith_index_u32(41923u, 10u)]) | abs(func_3())) | -27943i;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(803f, -579f) * _wgslsmith_f_op_f32(-450f - 652f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1165f)) * _wgslsmith_f_op_f32(-2470f * 140f)))), -212f);
    global2 = ~(~(_wgslsmith_clamp_i32(34601i, global1[_wgslsmith_index_u32(28102u, 10u)], -1974i) ^ _wgslsmith_sub_i32(global4.a.x, 41171i))) >> (~_wgslsmith_sub_u32(select(u_input.a, 1u, global0.c.x | arg_0), max(0u >> (1u % 32u), abs(1u))) % 32u);
    global2 = global4.b.x;
    var_0 = ~_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-20130i, global0.b, 0i)), _wgslsmith_clamp_vec3_i32(global4.b.wxz, global4.b.xxz << (vec3<u32>(4294967295u, u_input.a, u_input.a) % vec3<u32>(32u)), global4.b.yyz & global4.a.zyx)), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(23985i, global1[_wgslsmith_index_u32(u_input.a, 10u)], global1[_wgslsmith_index_u32(1687u, 10u)]), global1[_wgslsmith_index_u32(1u, 10u)], _wgslsmith_mult_i32(global4.b.x, 5821i), firstTrailingBit(global4.a.x)), vec4<i32>(global4.a.x, -1i << (u_input.a % 32u), ~(-34471i), 2147483647i)));
    return Struct_2(Struct_1(_wgslsmith_mult_vec4_i32(select(global4.a | vec4<i32>(global0.b, global0.b, 1i, global4.a.x), ~global4.a, vec4<bool>(global3.x, global3.x, false, arg_0)), -(~global4.a)), _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(global0.b, global4.b.x, 58297i, -35012i) >> (vec4<u32>(16922u, u_input.a, 72473u, u_input.a) % vec4<u32>(32u))), ~(vec4<i32>(0i, -61295i, -5781i, global0.b) | vec4<i32>(global4.b.x, 7907i, global1[_wgslsmith_index_u32(23958u, 10u)], 17847i)))), Struct_1(reverseBits(~vec4<i32>(global0.b, global0.b, global0.b, global0.b)), _wgslsmith_clamp_vec4_i32(~global4.b >> (vec4<u32>(u_input.a, u_input.a, 17003u, 14271u) % vec4<u32>(32u)), global4.a >> (~vec4<u32>(0u, u_input.a, 4294967295u, 16103u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(firstLeadingBit(global4.b), vec4<i32>(65237i, 2147483647i, global1[_wgslsmith_index_u32(0u, 10u)], 57454i)))), any(global0.a.zz));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec4<i32>) -> u32 {
    global3 = !vec4<bool>(func_2(arg_1.c.x || any(vec4<bool>(global3.x, false, arg_0.c, true))).c, !all(!vec3<bool>(false, global0.a.x, false)), any(select(!arg_2.c, vec3<bool>(true, arg_1.c.x, arg_0.c), true)), all(arg_2.c.xz));
    let var_0 = _wgslsmith_f_op_vec2_f32(min(arg_2.b.xz, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -549f), arg_1.b.x)));
    let var_1 = !(~(959u ^ u_input.a) > 1u);
    global4 = func_2(true).a;
    var var_2 = vec3<i32>(_wgslsmith_mult_i32(func_3(), firstLeadingBit(1i)), _wgslsmith_div_i32(-(-1i >> (_wgslsmith_clamp_u32(0u, 0u, 1u) % 32u)), ~global1[_wgslsmith_index_u32(11311u, 10u)]), 3456i);
    return ~u_input.a;
}

fn func_5(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_3, arg_3: Struct_2) -> Struct_1 {
    global0 = Struct_5(!select(global3.zzw, arg_2.c, !select(arg_2.c, arg_2.c, vec3<bool>(global3.x, false, arg_2.c.x))), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u | reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_1, arg_1), vec3<u32>(u_input.a, arg_1, 27493u))), u_input.a), 10u)], arg_2.c.xz);
    global1 = array<i32, 10>();
    global2 = _wgslsmith_dot_vec4_i32(vec4<i32>(global4.a.x, arg_0.x, ~(-2147483647i), ~firstTrailingBit(reverseBits(23866i))), vec4<i32>(arg_2.a >> (0u % 32u), firstTrailingBit(i32(-1i) * -2147483647i), -32213i, abs(_wgslsmith_add_i32(arg_2.a, arg_2.a) | -21683i)));
    global3 = select(vec4<bool>(any(!global0.a), false, !(global3.x && (global0.a.x & arg_2.c.x)), global0.c.x), vec4<bool>(!arg_3.c, !(!(global3.x & global3.x)), global3.x, !all(vec2<bool>(arg_3.c, false))), all(!select(select(vec4<bool>(false, global3.x, false, true), vec4<bool>(false, arg_3.c, true, false), true), vec4<bool>(arg_3.c, false, false, arg_2.c.x), true)));
    let var_0 = arg_1;
    return Struct_1(func_2(global0.c.x).b.a | vec4<i32>(i32(-1i) * -arg_0.x, -4087i, func_2(!arg_2.c.x).b.b.x, ~arg_0.x), arg_3.a.b);
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: i32, arg_3: vec2<bool>) -> Struct_5 {
    var var_0 = false;
    let var_1 = Struct_5(select(!vec3<bool>(global3.x, global3.x, global0.a.x | false), !(!vec3<bool>(global3.x, arg_3.x, arg_3.x)), !(-32896i <= arg_2)), ~0i, global0.a.yx);
    global2 = global0.b;
    var var_2 = Struct_2(func_5(-min(vec2<i32>(3441i, -2147483647i), ~global4.b.yx), func_4(func_2(var_1.a.x), Struct_3(var_1.b >> (arg_0 % 32u), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1898f, arg_1, 552f, -1701f), vec4<f32>(1074f, -954f, -1836f, arg_1))), !global0.a), Struct_3(global0.b, vec4<f32>(1246f, 464f, 1000f, arg_1), vec3<bool>(true, false, arg_3.x)), -select(global4.b, vec4<i32>(arg_2, -31479i, arg_2, global0.b), global0.a.x)), Struct_3(808i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, 347f, -372f)), vec3<bool>(global3.x, arg_1 != arg_1, arg_3.x | true)), Struct_2(Struct_1(global4.a, abs(vec4<i32>(global0.b, 2147483647i, global4.a.x, -1i))), Struct_1(global4.b, ~vec4<i32>(1559i, 0i, 38649i, 2147483647i)), (arg_1 > arg_1) & (8590i <= var_1.b))), func_5(vec2<i32>(global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(~47692u, 10u)]) ^ vec2<i32>(6427i, 44319i), 16375u, Struct_3(-75274i, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -169f, arg_1, arg_1) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_1, arg_1, -1706f, arg_1), vec4<f32>(1329f, -817f, arg_1, arg_1))), !vec3<bool>(true, global3.x, global3.x)), func_2(var_1.c.x)), false);
    var var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-arg_1), arg_1, arg_1, _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-852f, arg_1, -417f, -243f), vec4<f32>(arg_1, arg_1, arg_1, arg_1))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(393f, arg_1, 1420f, arg_1)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(260f, 1000f, arg_1, 511f)) - vec4<f32>(arg_1, -1235f, 532f, 434f)))))));
    return Struct_5(vec3<bool>(!any(vec2<bool>(false, global3.x)) || any(select(vec4<bool>(true, global3.x, false, false), vec4<bool>(false, global0.a.x, var_1.c.x, global0.c.x), var_2.c)), true, all(select(!global0.a, select(var_1.a, var_1.a, true), true))), 0i, arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(3783u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(670f, -1572f)))))), global0.b, !(!global3.xw));
    let var_1 = ~(~abs(~_wgslsmith_add_u32(u_input.a, u_input.a)));
    let var_2 = (_wgslsmith_dot_vec4_i32(global4.a, -global4.a ^ (global4.b << (vec4<u32>(4294967295u, 0u, 0u, 11707u) % vec4<u32>(32u)))) << (~(~var_1) % 32u)) != global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_1, 44657u, 2726u), ~vec3<u32>(u_input.a, 0u, 0u)), vec3<u32>(var_1, var_1, ~_wgslsmith_sub_u32(var_1, u_input.a))), 10u)];
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, _wgslsmith_sub_u32(var_1, 0u) | var_1, 71491u), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, 2713u, 24449u) >> ((vec3<u32>(u_input.a, 65780u, 0u) >> (vec3<u32>(4294967295u, var_1, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u)), ~(vec3<u32>(22722u, var_1, u_input.a) | vec3<u32>(var_1, 36146u, 0u)))), vec3<u32>(29981u << (~u_input.a % 32u), select(1u, countOneBits(45366u), global3.x), ~(_wgslsmith_mult_u32(u_input.a, u_input.a) >> (57294u % 32u)))), 10u)];
    var var_3 = _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -1i, 47329i, -_wgslsmith_mod_i32(global0.b, -54913i)), global4.a), global4.a);
    global3 = !select(vec4<bool>(true, false, var_2, !var_2), !vec4<bool>(true, select(false, false, global0.a.x), var_0.a.x, true), !var_2);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(u_input.a, 21640u, 70797u, 0u), var_1, select(~(vec3<u32>(var_1, 40379u, var_1) | vec3<u32>(1u, 1u, var_1)), vec3<u32>(_wgslsmith_div_u32(29088u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, 0u), vec4<u32>(819u, 1u, 4294967295u, var_1))), 4294967295u, abs(~var_1)), any(select(vec4<bool>(true, true, true, true), !vec4<bool>(true, true, false, var_2), !vec4<bool>(global3.x, true, global0.c.x, true)))), _wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(var_1, var_1), vec2<u32>(39635u, u_input.a)), vec2<u32>(_wgslsmith_div_u32(1u, 43194u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1, 0u), vec2<u32>(1u, u_input.a)))) | (_wgslsmith_div_u32(u_input.a | 19078u, 4294967295u) & _wgslsmith_div_u32(~4294967295u, u_input.a)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-1732f)), _wgslsmith_f_op_f32(f32(-1f) * -1496f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(672f - -719f), 1211f)), _wgslsmith_f_op_f32(sign(-198f)), _wgslsmith_f_op_f32(f32(-1f) * -1049f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1389f * -912f)), 1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(599f, -1410f) * 447f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(585f, 405f, false)), _wgslsmith_f_op_f32(round(1000f)), any(global0.a)))))));
}

