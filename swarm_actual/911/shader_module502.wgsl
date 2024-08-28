struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = global0.b.b;
    var_0 = _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(global0.b.b, vec2<u32>(firstTrailingBit(var_0.x), ~1u)) << (vec2<u32>(var_0.x, 1u) % vec2<u32>(32u)), firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(56599u, 1u), vec2<u32>(~u_input.b.x, abs(57422u)))));
    let var_1 = Struct_1(select(!all(select(vec3<bool>(false, false, global0.b.c), vec3<bool>(arg_0.a, true, arg_0.c), vec3<bool>(false, global0.a.c, global0.c.a))), global0.c.a, false), u_input.b, -1511f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.e))) + global0.e));
    var var_2 = global0.c;
    let var_3 = min(-(global0.d.x ^ 32318i) ^ global0.d.x, -(~(-global0.d.x)));
    return _wgslsmith_add_vec2_u32(u_input.b & (global0.c.b | var_2.b), ~(~max(~vec2<u32>(u_input.a, 33572u), vec2<u32>(u_input.a, 20280u))));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec2<u32>, arg_3: vec4<bool>) -> bool {
    global0 = Struct_2(Struct_1(true, _wgslsmith_mult_vec2_u32(~select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(arg_1, 39238u), arg_3.yz), func_3(arg_0)), !(_wgslsmith_f_op_f32(-209f - global0.e) >= _wgslsmith_f_op_f32(sign(-537f)))), global0.b, arg_0, global0.d, global0.e);
    var var_0 = -22823i;
    let var_1 = arg_0;
    let var_2 = arg_0.a & !any(arg_3);
    let var_3 = true;
    return true;
}

fn func_1(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = Struct_1(any(!(!vec3<bool>(global0.b.a, global0.a.a, false))), max(arg_0.b, u_input.b), func_2(Struct_1(true, _wgslsmith_mod_vec2_u32(arg_0.b, vec2<u32>(4294967295u, global0.c.b.x)), global0.a.a), 726u, select(_wgslsmith_mult_vec2_u32(~u_input.b, u_input.b), u_input.b, any(vec2<bool>(true, true))), select(vec4<bool>(true, false, !global0.c.c, false), !select(vec4<bool>(true, global0.a.a, true, true), vec4<bool>(global0.c.c, arg_0.a, arg_0.a, true), global0.a.c), vec4<bool>(global0.c.c, all(vec3<bool>(true, false, true)), false, arg_0.c))));
    global0 = Struct_2(global0.a, global0.b, arg_0, _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(global0.d, global0.d), ~(-reverseBits(global0.d))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(global0.e * global0.e)), _wgslsmith_f_op_f32(-1075f * 1f)) - 132f));
    let var_1 = select(firstLeadingBit(vec3<u32>(~(~global0.a.b.x), 45243u, u_input.b.x)), ~vec3<u32>(var_0.b.x, ~1u, ~36928u) >> (~((vec3<u32>(1u, 4294967295u, global0.b.b.x) << (vec3<u32>(global0.a.b.x, global0.a.b.x, 1u) % vec3<u32>(32u))) ^ (vec3<u32>(arg_0.b.x, 0u, u_input.a) >> (vec3<u32>(26868u, u_input.b.x, 1u) % vec3<u32>(32u)))) % vec3<u32>(32u)), !(!var_0.c));
    global0 = Struct_2(arg_0, Struct_1(all(vec2<bool>(arg_0.a | arg_0.c, false)), var_0.b, arg_0.a), Struct_1(!((var_0.b.x << (var_0.b.x % 32u)) < countOneBits(var_0.b.x)), abs(~arg_0.b), (~global0.d.x > -1i) == global0.a.c), firstTrailingBit(_wgslsmith_sub_vec4_i32(global0.d ^ global0.d, abs(~vec4<i32>(global0.d.x, global0.d.x, global0.d.x, global0.d.x)))), -332f);
    global0 = Struct_2(global0.b, Struct_1(false, ~arg_0.b, any(select(select(vec2<bool>(arg_0.c, var_0.c), vec2<bool>(true, false), true), !vec2<bool>(var_0.a, true), true))), Struct_1(arg_0.a, ~var_1.xz, arg_0.a), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.d.x, -1i, global0.d.x), vec3<i32>(global0.d.x, global0.d.x, global0.d.x)) & (global0.d.x ^ 1i), 0i, _wgslsmith_sub_i32(~global0.d.x, ~1i) << (global0.a.b.x % 32u), -2147483647i), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.e * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e) + _wgslsmith_f_op_f32(global0.e + global0.e))))));
    return select(vec4<i32>(min(global0.d.x, firstLeadingBit(max(global0.d.x, -8231i))), ~(-(~global0.d.x)), 1i, global0.d.x), global0.d, var_0.c);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.e * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.e), _wgslsmith_f_op_f32(arg_2.e + -611f))) - arg_2.e), _wgslsmith_f_op_f32(global0.e + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1642f)) + _wgslsmith_f_op_f32(trunc(arg_0.e)))));
    global0 = arg_2;
    let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1516f))), 550f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global0.e)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.e, arg_0.e, global0.e), vec3<f32>(arg_0.e, -127f, arg_2.e)))))));
    global0 = Struct_2(Struct_1(!(false & !global0.b.a), u_input.b, any(select(select(vec3<bool>(arg_0.b.a, global0.c.c, true), vec3<bool>(global0.a.a, false, arg_0.b.c), vec3<bool>(false, global0.a.c, global0.b.c)), vec3<bool>(true, true, global0.a.c), select(true, arg_0.c.c, global0.c.a)))), arg_2.b, Struct_1(-715f <= var_0.x, select(~(vec2<u32>(u_input.a, global0.a.b.x) | vec2<u32>(0u, 134902u)), vec2<u32>(16407u, global0.a.b.x), global0.a.a), !all(vec2<bool>(arg_0.b.c, true)) != true), max(vec4<i32>(global0.d.x, -15437i, global0.d.x, arg_0.d.x), _wgslsmith_sub_vec4_i32(arg_0.d, arg_2.d)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(261f, 1389f, true)))), _wgslsmith_f_op_f32(step(-3309f, var_1.x))) + _wgslsmith_f_op_f32(arg_0.e + _wgslsmith_f_op_f32(step(-1743f, _wgslsmith_div_f32(1347f, arg_2.e))))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(Struct_2(Struct_1(all(!vec4<bool>(true, global0.b.a, global0.a.a, false)), vec2<u32>(~global0.a.b.x, 4294967295u), false), Struct_1(false, ~global0.c.b, !global0.b.c), Struct_1(true, _wgslsmith_div_vec2_u32(global0.c.b, vec2<u32>(global0.b.b.x, 1u)), _wgslsmith_f_op_f32(global0.e + global0.e) > _wgslsmith_div_f32(global0.e, 749f)), _wgslsmith_mod_vec4_i32(firstLeadingBit(func_1(Struct_1(false, vec2<u32>(global0.b.b.x, u_input.b.x), false))), _wgslsmith_div_vec4_i32(-global0.d, vec4<i32>(-51685i, global0.d.x, 0i, global0.d.x) << (vec4<u32>(71888u, global0.b.b.x, 0u, u_input.a) % vec4<u32>(32u)))), 245f), min(firstLeadingBit(vec3<u32>(global0.b.b.x, _wgslsmith_div_u32(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.b.x, global0.c.b.x, 46979u, global0.c.b.x), vec4<u32>(70214u, 0u, 4294967295u, global0.b.b.x)))), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(global0.b.b.x, 25731u, u_input.a), min(vec3<u32>(4294967295u, u_input.a, 1u), vec3<u32>(19346u, 0u, 13565u))), countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(global0.c.b.x, 4294967295u, global0.b.b.x), vec3<u32>(global0.b.b.x, 1u, u_input.b.x))))), Struct_2(Struct_1(global0.a.c, global0.c.b, global0.a.a), Struct_1(global0.c.c, vec2<u32>(0u & global0.c.b.x, 54373u), global0.e != -848f), global0.c, reverseBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(global0.d, global0.d), global0.d, global0.d & global0.d)), global0.e));
    let var_0 = Struct_2(global0.c, global0.a, func_4(func_4(Struct_2(func_4(Struct_2(global0.b, Struct_1(global0.c.a, vec2<u32>(47769u, 1u), false), Struct_1(false, global0.b.b, true), global0.d, global0.e), vec3<u32>(29869u, global0.c.b.x, u_input.b.x), Struct_2(Struct_1(true, global0.b.b, global0.b.c), global0.b, Struct_1(false, vec2<u32>(global0.b.b.x, global0.a.b.x), global0.b.a), global0.d, -1003f)).b, Struct_1(false, u_input.b, global0.a.c), func_4(Struct_2(global0.c, global0.c, global0.b, vec4<i32>(0i, global0.d.x, global0.d.x, global0.d.x), global0.e), vec3<u32>(global0.a.b.x, u_input.a, u_input.a), Struct_2(Struct_1(true, vec2<u32>(u_input.a, u_input.b.x), false), global0.a, global0.b, vec4<i32>(global0.d.x, 2147483647i, -60338i, global0.d.x), -726f)).c, _wgslsmith_sub_vec4_i32(global0.d, vec4<i32>(2147483647i, global0.d.x, global0.d.x, global0.d.x)), global0.e), ~(vec3<u32>(12116u, global0.a.b.x, 4294967295u) >> (vec3<u32>(1u, 95189u, 29451u) % vec3<u32>(32u))), Struct_2(Struct_1(global0.c.a, global0.a.b, global0.a.c), func_4(Struct_2(global0.a, global0.c, Struct_1(global0.a.a, u_input.b, false), global0.d, global0.e), vec3<u32>(4294967295u, 4389u, 1u), Struct_2(Struct_1(global0.b.a, u_input.b, false), global0.c, global0.c, vec4<i32>(0i, 42773i, global0.d.x, 30596i), -1475f)).c, global0.b, vec4<i32>(2865i, 7384i, global0.d.x, 1i) & global0.d, _wgslsmith_f_op_f32(min(-1564f, global0.e)))), vec3<u32>(_wgslsmith_clamp_u32(reverseBits(0u), ~u_input.b.x, global0.c.b.x), ~u_input.b.x ^ _wgslsmith_dot_vec4_u32(vec4<u32>(global0.c.b.x, u_input.a, 4294967295u, 13845u), vec4<u32>(1u, 18571u, 92453u, u_input.b.x)), firstTrailingBit(~global0.c.b.x)), func_4(func_4(func_4(Struct_2(Struct_1(global0.c.c, vec2<u32>(31018u, u_input.a), true), Struct_1(global0.c.c, vec2<u32>(1u, 0u), global0.c.c), global0.b, global0.d, -826f), vec3<u32>(42563u, 28936u, 1u), Struct_2(Struct_1(true, vec2<u32>(4294967295u, 1u), false), Struct_1(global0.a.c, u_input.b, global0.c.a), global0.c, global0.d, global0.e)), _wgslsmith_mod_vec3_u32(vec3<u32>(21982u, u_input.a, 4294967295u), vec3<u32>(4294967295u, global0.c.b.x, 82929u)), Struct_2(Struct_1(global0.b.a, global0.c.b, global0.c.a), Struct_1(true, vec2<u32>(67334u, 1u), global0.c.c), Struct_1(global0.b.a, vec2<u32>(u_input.a, global0.c.b.x), true), vec4<i32>(2147483647i, global0.d.x, global0.d.x, -42971i), -396f)), vec3<u32>(1u, global0.b.b.x, ~u_input.a), Struct_2(global0.a, Struct_1(global0.a.a, global0.a.b, true), global0.c, -vec4<i32>(global0.d.x, -18011i, -22486i, 2147483647i), 1000f))).b, firstTrailingBit(_wgslsmith_sub_vec4_i32(global0.d, -vec4<i32>(-25278i, -36329i, global0.d.x, 25570i))), -2156f);
    var var_1 = !(!(!select(vec2<bool>(false, var_0.c.c), select(vec2<bool>(global0.a.a, false), vec2<bool>(var_0.b.c, false), var_0.c.a), var_0.c.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.e), global0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(496f + global0.e)), 1f), vec4<f32>(-501f, -193f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-108f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(454f - var_0.e))))));
}

