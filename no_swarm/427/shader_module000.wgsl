struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec4<i32>,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true, Struct_1(261f, 40018u, 10805i), vec2<bool>(false, false), 9416i, Struct_1(1000f, 4294967295u, 26566i));

var<private> global1: array<vec3<bool>, 1> = array<vec3<bool>, 1>(vec3<bool>(false, false, true));

var<private> global2: f32;

var<private> global3: bool = false;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<i32> {
    global3 = !global0.a;
    var var_0 = global0.e.a;
    return vec4<i32>(global0.b.c, _wgslsmith_mod_i32(63636i, global0.e.c), 5679i, -global0.e.c);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<bool>) -> bool {
    global2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1797f)));
    let var_0 = Struct_4(global0.e.c, Struct_3(global0.e, abs(~vec4<u32>(4294967295u, global0.b.b, 4294967295u, 19502u)) & _wgslsmith_sub_vec4_u32(max(vec4<u32>(u_input.b, 4294967295u, 12272u, u_input.a), vec4<u32>(u_input.b, global0.e.b, u_input.b, global0.b.b)), ~vec4<u32>(1u, global0.e.b, global0.e.b, global0.b.b)), vec2<i32>(54963i ^ _wgslsmith_div_i32(-12031i, global0.d), _wgslsmith_mult_i32(global0.d, 2147483647i))), ~func_3(global0.e, global0.b));
    global1 = array<vec3<bool>, 1>();
    let var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.a.a, var_0.b.a.a, global0.e.a)))))));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(965f)), -1000f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.a))))));
    return !arg_1.x;
}

fn func_1(arg_0: bool, arg_1: vec2<u32>) -> vec4<bool> {
    global3 = func_2(vec3<bool>(false, arg_0, global0.a), select(global1[_wgslsmith_index_u32(global0.e.b, 1u)], vec3<bool>(true, true, ~global0.e.b < max(arg_1.x, u_input.b)), global1[_wgslsmith_index_u32(arg_1.x, 1u)]));
    let var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.e.a, global0.b.a, global0.b.a)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.e.a, 1499f, global0.e.a) - vec3<f32>(-1000f, global0.e.a, global0.b.a))))));
    global0 = Struct_2((~global0.b.c << (global0.e.b % 32u)) != (_wgslsmith_clamp_i32(~1i, select(-1i, global0.e.c, global0.c.x), 18900i >> (u_input.b % 32u)) ^ _wgslsmith_sub_i32(59779i, -28277i)), Struct_1(_wgslsmith_f_op_f32(trunc(global0.e.a)), u_input.b, -_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(global0.d, global0.e.c)), -vec2<i32>(global0.e.c, 42474i))), select(!global0.c, vec2<bool>(global0.c.x && true, false), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-869f, global0.e.a))) != global0.b.a), select(~min(global0.d, global0.b.c), ~(-2147483647i), any(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u ^ arg_1.x, ~global0.e.b), 1u)])), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -707f)), 0u, 2147483647i));
    global3 = true;
    let var_1 = Struct_4(func_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(125f, global0.b.a))), _wgslsmith_clamp_u32(~18252u, _wgslsmith_sub_u32(global0.b.b, global0.e.b), ~arg_1.x), _wgslsmith_mod_i32(13234i, global0.b.c)), global0.e).x, Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.a)), 58817u, abs(~global0.b.c)), firstTrailingBit(vec4<u32>(1u, 34472u, 1u, 4294967295u)) | ~firstTrailingBit(vec4<u32>(u_input.a, 1u, 4294967295u, arg_1.x)), vec2<i32>(-global0.d, ~reverseBits(55702i))), vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(func_3(Struct_1(-186f, u_input.b, 1i), Struct_1(var_0.a.x, 18047u, global0.b.c)), -countOneBits(vec4<i32>(2147483647i, 0i, global0.b.c, global0.e.c))), -60737i, ~global0.d));
    return select(vec4<bool>(false || arg_0, func_2(!global1[_wgslsmith_index_u32(global0.e.b | u_input.b, 1u)], global1[_wgslsmith_index_u32(arg_1.x, 1u)]), true, !arg_0), select(select(select(vec4<bool>(false, arg_0, arg_0, false), !vec4<bool>(global0.a, arg_0, false, arg_0), !vec4<bool>(true, false, arg_0, global0.c.x)), vec4<bool>(all(vec4<bool>(global0.a, false, false, false)), global0.a, true & arg_0, global0.a), vec4<bool>(true, 1055f >= var_0.a.x, !arg_0, true)), vec4<bool>(false, true | all(vec4<bool>(false, true, true, arg_0)), func_2(!global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_1.b.b.zxy, var_1.b.b.yzw), 1u)]), (false | arg_0) || true), any(select(!vec4<bool>(false, global0.c.x, false, false), vec4<bool>(arg_0, global0.a, global0.a, global0.c.x), select(vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(true, arg_0, true, false), false)))), !vec4<bool>(-1i <= ~var_1.b.c.x, any(!vec4<bool>(global0.a, false, true, global0.c.x)), global0.a, global0.c.x));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec4<bool>, arg_3: bool) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-629f, global0.b.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.a, global0.b.a)), select(vec2<bool>(true, false), arg_2.yz, vec2<bool>(arg_2.x, arg_2.x)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(sign(-153f)), _wgslsmith_f_op_f32(floor(global0.b.a))), vec2<f32>(_wgslsmith_f_op_f32(abs(-504f)), _wgslsmith_f_op_f32(f32(-1f) * -870f))))));
    global2 = global0.b.a;
    var var_1 = Struct_2(!global0.a, global0.b, !select(global0.c, !global0.c, select(global0.c, !vec2<bool>(arg_2.x, arg_3), false)), _wgslsmith_dot_vec3_i32(vec3<i32>(~global0.d, max(arg_1, arg_1), countOneBits(arg_1)), abs(-vec3<i32>(0i, 27278i, arg_1)) >> (firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(63967u, 1u, 1u), vec3<u32>(global0.e.b, global0.e.b, 41757u))) % vec3<u32>(32u))), global0.e);
    global3 = true;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_1.e.a)))));
    return Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.a, 1380f, 307f)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-504f, 2719f, var_1.e.a)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-819f, global0.e.a, global0.b.a)))) + vec3<f32>(338f, -988f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1403f + var_1.e.a) * var_0.x))));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec2<bool>) -> Struct_2 {
    global3 = global0.c.x;
    let var_0 = vec3<u32>(~arg_1.b.b.x, firstLeadingBit(_wgslsmith_div_u32(38276u, ~(~1u))), _wgslsmith_mod_u32(~arg_2.b.a.b & _wgslsmith_sub_u32(u_input.b, select(1u, 31567u, arg_3.x)), 65640u << (_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 4294967295u), arg_2.b.b.xzy), 1u) % 32u)));
    var var_1 = var_0.x;
    let var_2 = abs(~4294967295u);
    var var_3 = 1i;
    return Struct_2((arg_1.b.a.a == arg_1.b.a.a) & !global0.a, Struct_1(arg_1.b.a.a, firstLeadingBit(abs(arg_1.b.a.b)), -2147483647i), arg_3, ~min(~(-26230i), _wgslsmith_dot_vec2_i32(max(arg_2.c.zz, vec2<i32>(0i, global0.e.c)), arg_1.b.c)), arg_2.b.a);
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_3) -> StorageBuffer {
    let var_0 = 6045u;
    return StorageBuffer(_wgslsmith_dot_vec4_u32(~arg_3.b, vec4<u32>(137028u, ~arg_1.e.b, _wgslsmith_mult_u32(1u, reverseBits(global0.e.b)), ~var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global0.a;
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(round(-259f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.a) * 1000f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-1501f * _wgslsmith_f_op_f32(max(-138f, 748f))))))));
    var var_1 = _wgslsmith_add_i32(-1i, ~(-1i));
    let x = u_input.a;
    s_output = func_6(vec3<u32>(4294967295u, 48867u, ~u_input.b), func_5(func_4(_wgslsmith_add_u32(u_input.b, 28410u) < min(u_input.a, u_input.a), ~reverseBits(global0.b.c), func_1(true != global0.c.x, ~vec2<u32>(32821u, u_input.a)), true), Struct_4(-14756i, Struct_3(Struct_1(-222f, 0u, global0.b.c), firstTrailingBit(vec4<u32>(4294967295u, 0u, 4294967295u, u_input.a)), ~vec2<i32>(global0.d, -739i)), vec4<i32>(-1i, 3567i, global0.e.c, i32(-1i) * -2147483647i)), Struct_4(_wgslsmith_mod_i32(global0.b.c, global0.d) << (select(global0.b.b, global0.e.b, global0.c.x) % 32u), Struct_3(Struct_1(var_0.x, 20872u, global0.d), ~vec4<u32>(global0.b.b, 16285u, u_input.b, 0u), vec2<i32>(2147483647i, global0.e.c)), _wgslsmith_add_vec4_i32(vec4<i32>(global0.e.c, -2147483647i, 0i, global0.b.c), ~vec4<i32>(-5153i, -19034i, global0.e.c, global0.b.c))), global0.c), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-202f, -355f)) - 1f), 398u, global0.b.c), Struct_3(Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.e.a))), ~4294967295u, _wgslsmith_div_i32(global0.d, -1i) | max(global0.d, global0.d)), max(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.e.b, 1u, global0.b.b, u_input.a), vec4<u32>(4294967295u, global0.b.b, 45242u, 21333u)) << ((vec4<u32>(86556u, u_input.a, global0.b.b, u_input.a) << (vec4<u32>(global0.e.b, global0.e.b, 73923u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)), ~countOneBits(vec4<u32>(47475u, 0u, 1u, global0.b.b))), vec2<i32>(-_wgslsmith_div_i32(0i, -1i), _wgslsmith_clamp_i32(~global0.e.c, -42368i, -global0.b.c))));
}

