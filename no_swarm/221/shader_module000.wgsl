struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec3<f32>,
    d: vec4<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-574f, vec2<f32>(-143f, 211f), false);

var<private> global1: array<vec2<u32>, 7> = array<vec2<u32>, 7>(vec2<u32>(4294967295u, 35861u), vec2<u32>(34986u, 4294967295u), vec2<u32>(36657u, 0u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 20613u), vec2<u32>(5747u, 46128u), vec2<u32>(4294967295u, 54112u));

var<private> global2: vec2<bool>;

var<private> global3: Struct_3 = Struct_3(vec2<f32>(-227f, 330f), 39620i, vec4<u32>(4294967295u, 1u, 4294967295u, 1u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> bool {
    var var_0 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(1089f + global3.a.x)), vec2<f32>(_wgslsmith_f_op_f32(-global0.b.x), -255f), all(vec4<bool>(false, arg_0, global0.c, global0.c))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-430f * 1000f) + -571f), vec2<f32>(_wgslsmith_f_op_f32(arg_1.b.x + -693f), _wgslsmith_div_f32(global0.b.x, global3.a.x)), any(!vec3<bool>(arg_0, false, global2.x))), true), Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 264f) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1.a, global0.b.x)))))), reverseBits(u_input.b), vec4<u32>(_wgslsmith_mod_u32(global3.c.x, 1u), global3.c.x, reverseBits(4294967295u) ^ _wgslsmith_clamp_u32(u_input.a, 4294967295u, u_input.a), _wgslsmith_clamp_u32(26928u, global3.c.x, 0u))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -523f)))), -1141f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global0.b.x))))))), select(select(vec4<u32>(u_input.a, firstTrailingBit(u_input.a), min(u_input.a, u_input.a), 0u), _wgslsmith_add_vec4_u32(vec4<u32>(global3.c.x, u_input.a, global3.c.x, u_input.a), ~vec4<u32>(u_input.a, u_input.a, 31079u, u_input.a)), arg_1.c), global3.c, true), Struct_3(vec2<f32>(1f, _wgslsmith_f_op_f32(global0.b.x - 1552f)), u_input.b, global3.c));
    let var_1 = var_0.a;
    let var_2 = _wgslsmith_add_u32(8094u, var_0.e.c.x);
    let var_3 = select(!(!select(vec2<bool>(true, true), select(vec2<bool>(false, var_0.a.a.c), vec2<bool>(true, arg_0), vec2<bool>(false, false)), true)), !select(vec2<bool>(true, true), vec2<bool>(true, var_0.a.b.c), select(!vec2<bool>(arg_0, arg_1.c), vec2<bool>(true, false), var_0.a.a.c)), select(global2.x, all(!select(vec3<bool>(global2.x, global2.x, true), vec3<bool>(global0.c, arg_0, true), vec3<bool>(false, arg_1.c, arg_1.c))), all(vec3<bool>(global3.b != 9176i, global3.c.x < 37332u, !global0.c))));
    let var_4 = select(select(select(!select(vec3<bool>(true, var_1.a.c, global2.x), vec3<bool>(true, true, false), vec3<bool>(false, global2.x, true)), select(!vec3<bool>(true, false, global0.c), vec3<bool>(true, false, true), !vec3<bool>(arg_1.c, true, false)), var_0.a.c), select(!vec3<bool>(global0.c, arg_0, true), !(!vec3<bool>(arg_1.c, true, false)), true), _wgslsmith_f_op_f32(1262f + var_0.b.a.x) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(354f, var_1.a.a)) * var_1.b.a)), !(!vec3<bool>(true, false, arg_0)), select(vec3<bool>(var_0.a.b.c, true, select(var_3.x, var_0.e.a.x > 357f, global0.c)), !select(select(vec3<bool>(var_3.x, var_1.c, true), vec3<bool>(true, global0.c, true), true), select(vec3<bool>(true, false, true), vec3<bool>(global2.x, true, arg_0), var_3.x), arg_0), min(42639i, var_0.b.b) >= ~abs(global3.b)));
    return _wgslsmith_f_op_f32(var_0.e.a.x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.a)))))) <= -427f;
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: bool, arg_3: i32) -> Struct_4 {
    let var_0 = 1i;
    var var_1 = ~28271u;
    global1 = array<vec2<u32>, 7>();
    global2 = !vec2<bool>(func_3(arg_2 & global0.c, Struct_1(-1278f, global3.a, global2.x)) || any(vec2<bool>(true, true)), !(-148f < _wgslsmith_f_op_f32(-global3.a.x)));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global0.b.x)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global3.a.x), -428f)), global2.x), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), global0.a), -467f)), _wgslsmith_f_op_vec2_f32(-global0.b), true | global0.c), true);
    return Struct_4(Struct_2(Struct_1(global3.a.x, _wgslsmith_f_op_vec2_f32(abs(global3.a)), _wgslsmith_div_f32(arg_0.x, 205f) >= _wgslsmith_f_op_f32(floor(global0.a))), var_2.a, 0i < _wgslsmith_mod_i32(_wgslsmith_sub_i32(arg_3, -45800i), -1i)), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-708f, global3.a.x) - var_2.b.b)) * _wgslsmith_f_op_vec2_f32(-arg_0)), i32(-1i) * -firstLeadingBit(-1i), ~(~global3.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(673f, _wgslsmith_f_op_f32(select(arg_0.x, -425f, var_2.b.c))), 445f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(331f - 212f) * _wgslsmith_f_op_f32(f32(-1f) * -835f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-244f, global0.a, 1582f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, global3.a.x, global3.a.x) * vec3<f32>(var_2.b.a, var_2.b.b.x, global3.a.x))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.x, -483f, arg_0.x)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-2048f, 181f, var_2.b.b.x))))))), ~(global3.c ^ _wgslsmith_mod_vec4_u32(vec4<u32>(global3.c.x, u_input.a, u_input.a, 4294967295u), global3.c)), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global3.a.x, arg_0.x), var_2.b.b)) * vec2<f32>(419f, arg_0.x))), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0 ^ -1i, ~arg_3, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, -8659i, 1i), vec3<i32>(-14154i, global3.b, arg_1)), var_0), abs(vec4<i32>(u_input.b, global3.b, arg_3, arg_1))), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(5131u, 1u, 0u, 94775u), global3.c))));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = global2.x;
    let var_1 = Struct_4(Struct_2(Struct_1(-1744f, vec2<f32>(arg_0.b.a.x, -1000f), true), func_2(vec2<f32>(_wgslsmith_f_op_f32(sign(arg_0.b.a.x)), func_2(vec2<f32>(global3.a.x, -1099f), 75539i, global0.c, -2147483647i).e.a.x), 0i, any(select(vec2<bool>(global0.c, global2.x), vec2<bool>(global2.x, global2.x), false)), firstTrailingBit(func_2(vec2<f32>(arg_0.c.x, global0.b.x), global3.b, true, arg_2.x).e.b)).a.b, !func_3(!global0.c, arg_0.a.a)), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global0.b))) + vec2<f32>(-837f, global3.a.x)), arg_2.x, false, arg_0.b.b).e, _wgslsmith_div_vec3_f32(vec3<f32>(1209f, global0.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global3.a.x, global3.a.x)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1094f, 249f, -968f) * arg_0.c))))), vec4<u32>(_wgslsmith_add_u32(global3.c.x, _wgslsmith_mult_u32(_wgslsmith_mult_u32(48642u, u_input.a), 4294967295u)), u_input.a, ~(~u_input.a), 20574u), arg_0.e);
    let var_2 = min(var_1.e.b, var_1.e.b) >= u_input.b;
    var_0 = func_3(global3.c.x > global3.c.x, func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.b.a) * vec2<f32>(var_1.b.a.x, arg_0.b.a.x)), _wgslsmith_mult_i32(select(arg_2.x, var_1.e.b, false), ~10859i), true, -1i).a.a) | any(!arg_3.wxy);
    var_0 = true;
    return var_1.a.b;
}

fn func_1(arg_0: vec3<bool>, arg_1: bool) -> StorageBuffer {
    var var_0 = -_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(global3.b, 11417i, 1i), vec3<i32>(u_input.b, 0i, 0i)), -reverseBits(vec3<i32>(77363i, 2147483647i, 9814i))), vec3<i32>(global3.b, ~(-26487i), -43585i & _wgslsmith_div_i32(0i, global3.b)));
    global0 = func_4(func_2(_wgslsmith_f_op_vec2_f32(min(global3.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, global3.a.x) * global3.a)))), u_input.b, true, _wgslsmith_div_i32(_wgslsmith_div_i32(firstTrailingBit(u_input.b), 17384i), var_0.x)), countOneBits(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a.x, global0.a)), abs(-1i), all(vec4<bool>(global2.x, arg_1, false, global2.x)), var_0.x).b.c.zw), vec4<i32>(countOneBits(var_0.x), firstLeadingBit(u_input.b), ~(-var_0.x), _wgslsmith_add_i32(u_input.b, _wgslsmith_add_i32(-52509i, -25100i))) ^ -(~(~vec4<i32>(global3.b, u_input.b, 1i, 29777i))), select(vec4<bool>(global0.c, func_2(vec2<f32>(-376f, global3.a.x), u_input.b, arg_1, global3.b).a.b.c, all(vec4<bool>(true, false, true, arg_1)), func_2(vec2<f32>(global0.b.x, -1000f), 15323i, false, var_0.x).b.a.x < _wgslsmith_f_op_f32(-global3.a.x)), !(!(!vec4<bool>(arg_1, arg_1, false, global2.x))), !select(select(vec4<bool>(arg_1, true, false, arg_0.x), vec4<bool>(arg_0.x, false, arg_1, global2.x), false), !vec4<bool>(global0.c, arg_1, arg_1, true), vec4<bool>(global2.x, true, true, false))));
    let var_1 = vec3<u32>(~global3.c.x, u_input.a, _wgslsmith_mod_u32(53264u, 1u) & u_input.a);
    global2 = arg_0.zz;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.b.x + global3.a.x)))))));
    return StorageBuffer(~vec4<u32>(u_input.a, ~u_input.a, _wgslsmith_mod_u32(~1u, u_input.a), 1u & u_input.a), vec3<u32>(71631u, var_1.x, reverseBits(_wgslsmith_sub_u32(_wgslsmith_sub_u32(var_1.x, var_1.x), _wgslsmith_mod_u32(0u, 13531u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~1u);
    var var_1 = select(vec4<bool>(global2.x, min(~var_0, var_0) > global3.c.x, select(countOneBits(28536u), ~0u, global3.b >= global3.b) < ~(~u_input.a), global0.c), select(!select(select(vec4<bool>(true, global2.x, true, false), vec4<bool>(false, true, false, false), true), !vec4<bool>(global0.c, global2.x, global0.c, true), true), select(select(select(vec4<bool>(global0.c, false, global0.c, true), vec4<bool>(global2.x, true, global0.c, true), vec4<bool>(false, false, false, global0.c)), select(vec4<bool>(true, false, true, global0.c), vec4<bool>(true, global2.x, false, false), vec4<bool>(false, false, global2.x, global0.c)), global0.c), vec4<bool>(false, global0.c, global2.x, !global0.c), vec4<bool>(any(vec4<bool>(false, global2.x, global0.c, true)), global3.b <= -48117i, global2.x || global2.x, !global2.x)), select(vec4<bool>(global0.c, false, true, !global0.c), select(!vec4<bool>(global0.c, global2.x, true, false), vec4<bool>(global2.x, false, global2.x, false), !global2.x), select(!vec4<bool>(global2.x, true, global0.c, global0.c), select(vec4<bool>(false, true, global2.x, true), vec4<bool>(false, true, false, false), true), select(vec4<bool>(global0.c, global2.x, true, global2.x), vec4<bool>(true, false, true, true), vec4<bool>(true, false, global0.c, global0.c))))), true);
    let var_2 = Struct_3(vec2<f32>(-1030f, global0.a), u_input.b, ~vec4<u32>(~global3.c.x, select(0u, global3.c.x, true) << (2572u % 32u), _wgslsmith_div_u32(~global3.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global3.c.x, u_input.a, u_input.a), vec3<u32>(var_0, global3.c.x, var_0))), select(~55817u, global3.c.x << (0u % 32u), true != global2.x)));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-638f * -1000f), global3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1211f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-107f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(var_2.a.x * global3.a.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, global0.b.x, global3.a.x), vec3<f32>(global3.a.x, -2149f, 941f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1021f, -1531f, 360f))))));
    let var_4 = vec4<i32>(_wgslsmith_clamp_i32(var_2.b, global3.b, 796i), -2147483647i ^ _wgslsmith_div_i32(_wgslsmith_sub_i32(~var_2.b, 26546i), firstLeadingBit(_wgslsmith_mod_i32(2147483647i, global3.b))), -var_2.b << (_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(global3.c.xz, vec2<u32>(17813u, var_2.c.x)) ^ 6019u, ~countOneBits(var_0)) % 32u), -2147483647i >> (~(u_input.a | ~23100u) % 32u));
    global1 = array<vec2<u32>, 7>();
    let x = u_input.a;
    s_output = func_1(!(!var_1.xwz), true);
}

