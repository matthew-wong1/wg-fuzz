struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: f32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_2,
    d: vec4<u32>,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_4) -> u32 {
    let var_0 = ~(~min(~(~global0.b.a), global0.b.d.x));
    var var_1 = vec2<f32>(-1590f, _wgslsmith_f_op_f32(-global0.a));
    let var_2 = arg_1;
    var var_3 = var_2.a;
    var var_4 = abs(-58010i);
    return var_3.b.a;
}

fn func_2(arg_0: vec3<u32>, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_4(Struct_2(-390f, Struct_1(_wgslsmith_mult_u32(~1u, arg_0.x), ~vec3<i32>(global0.b.b.x, -21483i, -5384i) << (vec3<u32>(arg_1, 23716u, arg_0.x) % vec3<u32>(32u)), global0.d, global0.b.d), global0.c, -944f, global0.e), Struct_1(func_3(u_input.a, Struct_4(Struct_2(667f, global0.b, global0.c, -208f, global0.e), Struct_1(arg_1, global0.b.b, global0.a, vec4<u32>(67244u, 4294967295u, arg_0.x, global0.b.d.x)))), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(global0.b.b, ~vec3<i32>(global0.b.b.x, 0i, global0.e.x)), abs(global0.b.b)), -273f, vec4<u32>(95821u << (countOneBits(arg_0.x) % 32u), 4294967295u, abs(_wgslsmith_mult_u32(4833u, global0.b.a)), 0u)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d) * _wgslsmith_div_f32(-332f, global0.a)), global0.a, !select(var_0.a.c, false, false))) + _wgslsmith_f_op_f32(global0.d - _wgslsmith_f_op_f32(f32(-1f) * -958f))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1112f - -714f) - _wgslsmith_f_op_f32(-global0.a)))), Struct_1(arg_1, var_0.b.b, var_1, firstTrailingBit(vec4<u32>(1u, arg_0.x, abs(1u), arg_1))), false, -339f, ~vec4<i32>(~(-u_input.a), _wgslsmith_sub_i32(abs(2147483647i), ~(-1i)), global0.b.b.x, global0.b.b.x));
    let var_3 = select(vec2<bool>(true, all(!select(vec4<bool>(true, false, false, var_0.a.c), vec4<bool>(true, false, var_2.c, var_0.a.c), vec4<bool>(true, true, true, true)))), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(!(!var_0.a.c), any(vec4<bool>(global0.c, true, var_0.a.c, true))), vec2<bool>(global0.c, global0.c)));
    let var_4 = Struct_3(Struct_2(global0.b.c, Struct_1(global0.b.a, global0.b.b, _wgslsmith_f_op_f32(global0.d - _wgslsmith_f_op_f32(-1000f * var_1)), global0.b.d), true && ((var_1 >= global0.b.c) || true), _wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b.c), -519f)), var_2.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-933f, -238f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(750f)), _wgslsmith_f_op_f32(-1150f + 421f)))), var_0.a, ~abs(vec4<u32>(arg_0.x, 1u, max(arg_1, arg_0.x), 7506u)), ~(global0.b.a >> (~_wgslsmith_dot_vec2_u32(var_0.b.d.xx, var_2.b.d.wz) % 32u)));
    return Struct_1(var_4.c.b.d.x, var_4.a.e.wyx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.b.c))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b.c - -997f), _wgslsmith_f_op_f32(-var_0.a.a))))), global0.b.d & vec4<u32>(min(_wgslsmith_dot_vec4_u32(global0.b.d, vec4<u32>(0u, 1u, 4169u, 14986u)), ~0u), 3987u, _wgslsmith_add_u32(_wgslsmith_add_u32(var_4.d.x, 0u), firstLeadingBit(var_0.a.b.d.x)), 37814u));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: vec2<u32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a))), global0.b.c)));
    let var_1 = Struct_3(Struct_2(1818f, func_2(_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(global0.b.d.x, arg_2.x, arg_2.x)), ~vec3<u32>(1u, arg_2.x, arg_2.x)), global0.b.d.x | 1u), all(!arg_0) == true, _wgslsmith_f_op_f32(-global0.a), -global0.e), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, global0.d, 293f), vec3<f32>(968f, global0.a, 1029f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(127f, 1648f, 874f) + vec3<f32>(-979f, global0.b.c, global0.d))) - vec3<f32>(_wgslsmith_f_op_f32(round(364f)), global0.b.c, global0.b.c)) + vec3<f32>(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1326f))), _wgslsmith_f_op_f32(trunc(global0.b.c)))), Struct_2(_wgslsmith_div_f32(global0.d, _wgslsmith_f_op_f32(round(-818f))), Struct_1(4139u, firstTrailingBit(global0.b.b ^ global0.b.b), -1000f, _wgslsmith_mult_vec4_u32(max(vec4<u32>(global0.b.d.x, arg_2.x, arg_2.x, 1u), vec4<u32>(38688u, 4294967295u, arg_2.x, 14753u)), vec4<u32>(0u, global0.b.a, 3726u, global0.b.d.x))), !(~arg_2.x != (global0.b.a & arg_2.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -785f))), min(global0.e, global0.e)), vec4<u32>(_wgslsmith_div_u32(abs(_wgslsmith_div_u32(arg_2.x, arg_2.x)), arg_2.x), ~global0.b.a, ~min(global0.b.d.x, ~4294967295u), _wgslsmith_mult_u32(1u, 1u << ((arg_2.x ^ 0u) % 32u))), _wgslsmith_mult_u32(arg_2.x, ~_wgslsmith_sub_u32(63432u, abs(global0.b.d.x))));
    global0 = Struct_2(var_1.a.a, Struct_1(_wgslsmith_sub_u32(30601u, ~(~arg_2.x)), -select(global0.e.zww, var_1.c.e.yyz, vec3<bool>(arg_0.x, false, arg_0.x)) ^ _wgslsmith_mult_vec3_i32(abs(vec3<i32>(global0.b.b.x, var_1.a.e.x, arg_1.x)), vec3<i32>(arg_1.x, -8663i, u_input.a) >> (vec3<u32>(10861u, arg_2.x, arg_2.x) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-1238f * var_1.b.x), ~(~var_1.a.b.d)), true, 2310f, var_1.a.e);
    global0 = var_1.c;
    var var_2 = all(arg_0);
    return vec3<bool>(true, select(arg_0.x, true, _wgslsmith_mod_u32(global0.b.a, arg_2.x) > func_2(var_1.d.yyw, 19150u).a) & true, min(_wgslsmith_mod_u32(4294967295u, abs(arg_2.x)), var_1.e) > min(_wgslsmith_div_u32(~arg_2.x, ~56009u), 46836u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(func_1(!(!(!vec4<bool>(global0.c, global0.c, false, false))), vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(global0.b.b, vec3<i32>(u_input.a, -1i, u_input.a)), ~(~_wgslsmith_div_vec2_u32(global0.b.d.wy, global0.b.d.zz))));
    let var_1 = select(select(vec2<bool>(any(!vec2<bool>(global0.c, true)), all(vec2<bool>(true, true))), vec2<bool>(!(-101f < global0.a), select(true, any(vec2<bool>(false, global0.c)), true)), select(select(vec2<bool>(global0.c, global0.c), func_1(vec4<bool>(global0.c, global0.c, false, global0.c), vec3<i32>(63327i, 9044i, global0.b.b.x), global0.b.d.yw).xx, true), !(!vec2<bool>(false, global0.c)), vec2<bool>(true, global0.b.a != 53275u))), select(!vec2<bool>(all(vec4<bool>(global0.c, global0.c, global0.c, false)), true), vec2<bool>(global0.c, false), func_1(!vec4<bool>(global0.c, global0.c, true, false), _wgslsmith_mod_vec3_i32(global0.e.xyw ^ global0.b.b, min(global0.e.wwy, vec3<i32>(u_input.a, global0.e.x, global0.e.x))), firstTrailingBit(vec2<u32>(global0.b.d.x, 27627u))).yy), global0.c);
    global0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1852f - global0.a) * func_2(_wgslsmith_div_vec3_u32(~vec3<u32>(14762u, global0.b.d.x, global0.b.d.x), min(global0.b.d.yxx, global0.b.d.wxy)), ~global0.b.a).c), global0.b, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(791f + -165f)))), vec4<i32>(min(-9105i, ~(~2147483647i)), global0.b.b.x, ~reverseBits(global0.e.x | u_input.a), -1i));
    let var_2 = select(select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, var_1.x, true, var_1.x), vec4<bool>(global0.c, global0.c, true, var_1.x), global0.c), select(vec4<bool>(global0.c, true, false, var_1.x), vec4<bool>(var_1.x, false, global0.c, var_1.x), true), 0i >= u_input.a), true), vec4<bool>(_wgslsmith_f_op_f32(-global0.b.c) < -471f, !(!global0.c), global0.c, true), select(vec4<bool>(var_1.x, var_1.x, var_1.x | false, true), !(!vec4<bool>(global0.c, global0.c, global0.c, var_1.x)), vec4<bool>(var_1.x, var_1.x, true, true))), !(!(!vec4<bool>(var_1.x, true, false, var_1.x))), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1107f - 1146f)) > _wgslsmith_f_op_f32(global0.b.c + _wgslsmith_div_f32(global0.a, -228f)), var_1.x, var_1.x, !(func_2(vec3<u32>(global0.b.a, 1u, global0.b.a), 0u).d.x > ~global0.b.d.x)));
    var var_3 = Struct_2(2413f, func_2(~(~func_2(vec3<u32>(global0.b.a, 21356u, 1u), global0.b.d.x).d.wxz), ~(~global0.b.d.x ^ (global0.b.d.x >> (global0.b.d.x % 32u)))), any(var_2.yzz), _wgslsmith_f_op_f32(step(514f, _wgslsmith_f_op_f32(trunc(global0.b.c)))), global0.e);
    var var_4 = Struct_2(_wgslsmith_f_op_f32(min(-407f, _wgslsmith_div_f32(390f, 1343f))), func_2(vec3<u32>(~4294967295u, ~(var_3.b.d.x ^ 24550u), ~(~4294967295u)), 0u), false, -1476f, abs(vec4<i32>(-global0.e.x >> ((0u << (global0.b.d.x % 32u)) % 32u), ~(~var_3.b.b.x), -2147483647i, -1i)));
    var var_5 = Struct_2(var_4.d, Struct_1(~44800u, vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(vec3<i32>(-43777i, 48317i, 0i), vec3<i32>(2147483647i, -1i, -1i)), _wgslsmith_f_op_f32(f32(-1f) * -1018f), vec4<u32>(firstLeadingBit(20841u), ~select(global0.b.a, 17884u, var_3.c), _wgslsmith_div_u32(var_3.b.d.x, global0.b.a & 1u), 72555u)), any(var_1), 1383f, vec4<i32>(var_3.b.b.x, 0i, abs(global0.e.x), reverseBits(-_wgslsmith_div_i32(21674i, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, 1f)))), _wgslsmith_mod_vec2_i32(vec2<i32>(var_5.b.b.x, select(var_4.b.b.x, var_5.b.b.x, false)), -(vec2<i32>(u_input.a, var_3.b.b.x) ^ vec2<i32>(u_input.a, -2147483647i))) >> ((firstLeadingBit(vec2<u32>(var_4.b.d.x, var_4.b.d.x)) ^ var_3.b.d.yy) % vec2<u32>(32u)), vec4<u32>(0u, var_4.b.a, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_4.b.d.x, 0u, 50280u), min(vec3<u32>(global0.b.d.x, 0u, 1u), global0.b.d.zzy), reverseBits(vec3<u32>(var_3.b.a, var_4.b.d.x, 74439u))), vec3<u32>(1u, firstTrailingBit(0u), _wgslsmith_add_u32(global0.b.a, 4294967295u))), 4294967295u), 1u, 0u);
}

