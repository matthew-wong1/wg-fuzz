struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: bool;

var<private> global2: bool;

var<private> global3: Struct_3 = Struct_3(Struct_1(113459u, 1200f, vec2<bool>(false, true)), true, 721f, Struct_1(2496u, -334f, vec2<bool>(false, true)), Struct_1(4294967295u, 1107f, vec2<bool>(false, false)));

var<private> global4: Struct_3 = Struct_3(Struct_1(4294967295u, 650f, vec2<bool>(false, true)), true, -1237f, Struct_1(0u, -1689f, vec2<bool>(false, true)), Struct_1(4294967295u, -436f, vec2<bool>(true, true)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> f32 {
    var var_0 = abs(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(0u, 23792u), ~arg_0.a.a), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.a.a, 6385u, 5152u), vec3<u32>(u_input.a, 0u, global3.a.a)), vec3<u32>(u_input.a, 55716u, 4294967295u)))) | ~max(countOneBits(vec2<u32>(1u, 1u)), ~abs(vec2<u32>(u_input.a, 0u)));
    global3 = Struct_3(global3.e, global4.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(265f)))), arg_0.d, Struct_1(countOneBits(20470u), 1049f, select(!vec2<bool>(false, global3.e.c.x), arg_0.e.c, vec2<bool>(true, true))));
    global4 = arg_0;
    let var_1 = ~(~abs(arg_1)) >> (reverseBits(~abs(91133u)) % 32u);
    let var_2 = arg_0.a;
    return _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -404f))));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<bool>) -> Struct_3 {
    var var_0 = Struct_3(Struct_1(global4.a.a, _wgslsmith_f_op_f32(func_3(arg_0, u_input.a)), vec2<bool>(arg_1.x, select(any(global4.d.c), !arg_1.x, !arg_0.e.c.x))), true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-1279f, global3.e.b), _wgslsmith_f_op_f32(abs(-831f)))), Struct_1((69116u & _wgslsmith_clamp_u32(u_input.a, 1u, 42587u)) ^ arg_0.d.a, 685f, !arg_1.xx), Struct_1(arg_0.a.a, global4.c, vec2<bool>(any(arg_1.zzy), false)));
    var var_1 = reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-1i, -2147483647i), 1i, -1i), reverseBits(~(-2147483647i)), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -10852i, 27642i, -1420i), vec4<i32>(-34975i, 3836i, -44026i, 27150i)), ~33618i)), ~vec3<i32>(1i, 1i, 1i)));
    var_0 = arg_0;
    global2 = global4.d.c.x;
    let var_2 = firstLeadingBit(87050u);
    return arg_0;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<i32>) -> i32 {
    let var_0 = Struct_2(firstLeadingBit(-1i), Struct_1(_wgslsmith_mod_u32(~4294967295u, ~3987u) << (_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(1u, global3.d.a)), abs(vec2<u32>(arg_0.d.a, 29023u))) % 32u), global3.c, arg_0.d.c), global4.e.a, global4.c);
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(-1000f, arg_0.a.b), _wgslsmith_div_f32(var_0.d, 533f))))) * vec2<f32>(-113f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.d)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-771f, global3.e.b)))))));
    let var_1 = global3.a.b;
    var var_2 = Struct_3(var_0.b, global4.b, _wgslsmith_f_op_f32(1170f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(714f * global3.a.b))))), Struct_1(4294967295u, -1136f, vec2<bool>(all(!vec4<bool>(true, false, var_0.b.c.x, global4.b)), all(select(vec3<bool>(true, global3.d.c.x, arg_0.b), vec3<bool>(global4.b, false, true), vec3<bool>(arg_1.a.c.x, true, arg_0.d.c.x))))), func_2(Struct_3(func_2(arg_1, vec4<bool>(true, arg_1.b, false, arg_1.b)).a, any(select(vec3<bool>(global4.d.c.x, arg_1.b, false), vec3<bool>(global3.e.c.x, global4.e.c.x, true), var_0.b.c.x)), -1261f, func_2(arg_1, select(vec4<bool>(global4.e.c.x, true, true, true), vec4<bool>(false, global4.b, global3.b, false), global3.d.c.x)).d, Struct_1(93545u, _wgslsmith_f_op_f32(-global0.x), vec2<bool>(global4.a.c.x, true))), vec4<bool>(true, arg_1.a.c.x, true, true)).e);
    var var_3 = vec4<i32>(var_0.a, ~var_0.a, ~max(_wgslsmith_div_i32(-arg_2.x, _wgslsmith_div_i32(17716i, arg_2.x)), _wgslsmith_mult_i32(arg_2.x, -arg_2.x)), ~1i);
    return _wgslsmith_dot_vec3_i32(arg_2.wwx, arg_2.xzy);
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: vec4<u32>) -> vec3<bool> {
    global2 = global3.e.b > arg_2.b;
    var var_0 = Struct_1(4294967295u | arg_2.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.b, -1000f))))), global3.e.c);
    let var_1 = Struct_2(-2147483647i, Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(857f - arg_1))), vec2<bool>(all(vec2<bool>(var_0.c.x, false)), !any(vec3<bool>(arg_2.c.x, var_0.c.x, global4.b)))), u_input.a, -317f);
    let var_2 = ~vec4<i32>(-(reverseBits(2147483647i) ^ ~var_1.a), firstLeadingBit(func_4(func_2(Struct_3(global4.e, false, 853f, var_1.b, var_1.b), vec4<bool>(false, var_0.c.x, global3.e.c.x, true)), func_2(Struct_3(global3.a, false, -488f, arg_2, Struct_1(var_1.b.a, global0.x, arg_2.c)), vec4<bool>(global3.b, true, true, false)), vec4<i32>(28792i, -8500i, 24115i, 0i))), var_1.a, _wgslsmith_mult_i32(var_1.a, -var_1.a));
    let var_3 = 1u;
    return vec3<bool>(true, true, arg_2.c.x);
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: u32) -> Struct_3 {
    let var_0 = _wgslsmith_mod_vec2_u32(abs(_wgslsmith_div_vec2_u32(vec2<u32>(25168u, arg_2.b.a) ^ vec2<u32>(27253u, 15935u), ~vec2<u32>(58651u, global3.a.a) << ((vec2<u32>(1u, arg_1.d.a) << (vec2<u32>(0u, 0u) % vec2<u32>(32u))) % vec2<u32>(32u)))), ~vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_1.d.a, arg_3), _wgslsmith_clamp_u32(4294967295u, 4294967295u, arg_2.b.a)), 42397u));
    var var_1 = vec4<bool>(func_1(arg_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1161f) + _wgslsmith_f_op_f32(sign(-392f))), Struct_1(~(~4294967295u), arg_1.e.b, vec2<bool>(select(false, true, arg_2.b.c.x), true)), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, arg_3, arg_2.b.a, u_input.a), vec4<u32>(59275u, var_0.x, var_0.x, 0u)), ~vec4<u32>(0u, arg_2.c, 1u, 0u)), ~abs(vec4<u32>(22377u, 0u, 24439u, 45658u)))).x, true, all(vec4<bool>(true, false, false, !arg_2.b.c.x)), true);
    var var_2 = var_0;
    var var_3 = vec2<u32>(4294967295u, global3.a.a);
    global2 = true;
    return Struct_3(arg_2.b, any(select(func_2(func_2(Struct_3(Struct_1(arg_3, global0.x, global4.e.c), true, global4.c, arg_2.b, arg_1.e), vec4<bool>(arg_1.e.c.x, global4.e.c.x, global3.b, true)), select(vec4<bool>(arg_2.b.c.x, true, false, false), vec4<bool>(false, true, var_1.x, arg_2.b.c.x), false)).a.c, vec2<bool>(!global3.b, true), !global3.e.c)), -594f, global3.e, global4.a);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_5(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global4.d.b, global3.e.b) * vec3<f32>(global0.x, global3.e.b, global0.x))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global0.x, global4.c) - vec3<f32>(global0.x, 1661f, 115f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global4.c, 2175f)))))), !func_1(~42919i, global4.e.b, global3.d, select(vec4<u32>(0u, global4.e.a, global3.d.a, global3.a.a), vec4<u32>(u_input.a, 1u, 0u, u_input.a), vec4<bool>(global3.b, false, false, global3.b))))), Struct_3(Struct_1(~9136u, global4.a.b, !vec2<bool>(global4.d.c.x, global4.e.c.x)), !(global4.d.a < 0u), _wgslsmith_f_op_f32(global3.a.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1083f, -1000f)))), Struct_1(global4.e.a, _wgslsmith_f_op_f32(step(global3.e.b, global0.x)), !func_1(-42585i, -822f, global4.a, vec4<u32>(0u, 110797u, 4294967295u, global4.d.a)).yx), func_2(func_2(func_2(Struct_3(global4.e, global4.a.c.x, -880f, global4.d, Struct_1(13120u, -1000f, global4.d.c)), vec4<bool>(true, global3.d.c.x, false, global3.d.c.x)), !vec4<bool>(global4.e.c.x, true, false, global4.b)), vec4<bool>(select(global4.e.c.x, global3.a.c.x, global4.d.c.x), false, !global3.d.c.x, global4.e.c.x)).d), Struct_2(_wgslsmith_dot_vec2_i32(select(-vec2<i32>(-31082i, 1i), _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(-11575i, 8984i)), vec2<bool>(true, true)), firstTrailingBit(vec2<i32>(1i, 1i))), Struct_1(_wgslsmith_div_u32(u_input.a | 43871u, ~u_input.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), global0.x), vec2<bool>(true, true)), _wgslsmith_dot_vec3_u32(vec3<u32>(abs(0u), ~63642u, select(6270u, global4.d.a, false)), ~vec3<u32>(1u, 0u, 14876u)), 688f), ~firstLeadingBit(0u));
    var var_0 = vec2<u32>(abs(u_input.a), _wgslsmith_mod_u32(global4.a.a >> (0u % 32u), firstTrailingBit(0u))) >> (vec2<u32>(firstTrailingBit(global4.d.a) >> (~global3.e.a % 32u), u_input.a) % vec2<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global4.d.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(func_2(Struct_3(global4.d, true, -849f, global3.d, Struct_1(global4.e.a, global0.x, global4.a.c)), vec4<bool>(global3.a.c.x, false, true, global4.b)), _wgslsmith_sub_u32(1u, global4.a.a))) - _wgslsmith_f_op_f32(trunc(global3.d.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -989f) * _wgslsmith_f_op_f32(-2532f * global0.x)) - _wgslsmith_f_op_f32(-853f - _wgslsmith_f_op_f32(sign(-147f)))), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-343f + global3.c))))));
    var var_2 = Struct_2(30371i, Struct_1(_wgslsmith_mod_u32(~4294967295u, global3.a.a), -265f, select(select(global4.d.c, vec2<bool>(true, false), func_2(Struct_3(global3.e, global4.d.c.x, var_1.x, Struct_1(var_0.x, global4.e.b, vec2<bool>(false, global4.b)), Struct_1(u_input.a, var_1.x, vec2<bool>(false, true))), vec4<bool>(global3.b, true, global3.b, true)).e.c), !func_2(Struct_3(global4.e, true, -127f, global3.d, global4.d), vec4<bool>(false, true, false, global3.d.c.x)).d.c, select(global3.a.c, vec2<bool>(global3.b, true), vec2<bool>(global3.d.c.x, true)))), ~(~u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(579f, -808f)))));
    global2 = func_2(func_5(vec3<f32>(global3.c, global0.x, 1011f), func_5(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global4.c, 886f, global0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.c, -1650f, -413f)), true)), func_2(func_5(vec3<f32>(1178f, global0.x, 184f), Struct_3(global4.e, false, -1035f, global4.a, Struct_1(global3.e.a, 752f, var_2.b.c)), Struct_2(var_2.a, Struct_1(4294967295u, var_2.d, var_2.b.c), global3.d.a, -308f), global3.a.a), vec4<bool>(true, true, global3.a.c.x, global4.e.c.x)), Struct_2(_wgslsmith_clamp_i32(12767i, -28732i, var_2.a), global4.d, var_0.x, 368f), _wgslsmith_div_u32(20116u | var_0.x, ~u_input.a)), Struct_2(var_2.a, global3.d, abs(min(14824u, var_2.b.a)), _wgslsmith_div_f32(global3.c, var_2.b.b)), ~0u), select(vec4<bool>(true, !var_2.b.c.x, false, !var_2.b.c.x && all(var_2.b.c)), select(vec4<bool>(!global3.e.c.x, true, !var_2.b.c.x, true), !select(vec4<bool>(false, global4.b, false, global4.a.c.x), vec4<bool>(global4.d.c.x, global4.e.c.x, false, true), global4.b), var_2.b.c.x), !(!select(vec4<bool>(false, var_2.b.c.x, true, global3.d.c.x), vec4<bool>(false, false, true, global4.e.c.x), var_2.b.c.x)))).e.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<u32>(_wgslsmith_mult_u32(global4.a.a & 1u, _wgslsmith_div_u32(var_2.c, var_0.x)), _wgslsmith_mult_u32(1u, func_5(vec3<f32>(-232f, global3.c, -133f), Struct_3(Struct_1(global3.d.a, var_2.d, vec2<bool>(global4.e.c.x, true)), true, 555f, global3.e, Struct_1(32670u, var_1.x, vec2<bool>(global3.b, global4.e.c.x))), Struct_2(var_2.a, Struct_1(0u, -1651f, global3.a.c), u_input.a, var_1.x), global3.e.a).e.a)), vec2<u32>(1u, 1u), !(!func_2(Struct_3(var_2.b, true, var_2.b.b, Struct_1(4294967295u, var_2.b.b, var_2.b.c), Struct_1(35818u, 152f, global3.a.c)), vec4<bool>(true, var_2.b.c.x, true, true)).e.c)));
}

