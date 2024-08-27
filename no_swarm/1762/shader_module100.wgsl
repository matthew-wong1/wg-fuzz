struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29> = array<bool, 29>(false, true, false, true, false, true, true, true, false, true, false, false, true, false, false, false, false, false, false, true, true, false, false, true, true, false, false, false, true);

var<private> global1: Struct_1;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<i32> {
    let var_0 = Struct_1(_wgslsmith_mult_vec3_i32(global1.a, abs(global1.a)), !global1.b, _wgslsmith_mod_vec2_u32(global1.c & global1.c, ~global1.c), -209f);
    let var_1 = Struct_1(var_0.a, var_0.b, ~global1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.d * _wgslsmith_f_op_f32(-1767f - -619f))))));
    global1 = var_1;
    let var_2 = u_input.b.x;
    var var_3 = !(!global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u >> (~var_0.c.x % 32u), select(~u_input.a, 0u, false)), 29u)]);
    return vec3<i32>(-(~(39086i | var_1.a.x) & global1.a.x), reverseBits(var_0.a.x), max(var_2, i32(-1i) * -22107i));
}

fn func_4(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = !arg_3.b;
    var var_1 = arg_3;
    return vec4<i32>(-46964i, -_wgslsmith_clamp_i32(_wgslsmith_sub_i32(max(arg_3.a.x, u_input.b.x), abs(1i)), 1i, -_wgslsmith_mult_i32(u_input.b.x, -1i)), abs(-firstLeadingBit(~arg_0.x)), _wgslsmith_mult_i32(i32(-1i) * -2147483647i, arg_3.a.x));
}

fn func_2(arg_0: f32) -> vec4<u32> {
    global0 = array<bool, 29>();
    let var_0 = (~4294967295u >> (_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.c.x, u_input.a, 78498u), min(vec3<u32>(u_input.a, 11331u, u_input.a), vec3<u32>(global1.c.x, u_input.a, 1u))), ~(1u & u_input.a)) % 32u)) & 1472u;
    var var_1 = func_4(-func_3() >> (vec3<u32>(countOneBits(35835u), max(1u << (var_0 % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, var_0, u_input.a, 4294967295u), vec4<u32>(global1.c.x, 65784u, 6449u, global1.c.x))), _wgslsmith_sub_u32(3699u, global1.c.x)) % vec3<u32>(32u)), -78316i, Struct_1(vec3<i32>(u_input.b.x, -20082i, global1.a.x), any(select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 29u)], false, true), vec4<bool>(global1.b, global1.b, false, global0[_wgslsmith_index_u32(0u, 29u)]), vec4<bool>(false, global1.b, true, global0[_wgslsmith_index_u32(9754u, 29u)]))) | (~u_input.a <= ~u_input.a), select(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(61455u, global1.c.x), global1.c, global1.c), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, var_0), global1.c)), _wgslsmith_div_vec2_u32(~global1.c, firstTrailingBit(global1.c)), all(!vec2<bool>(false, global0[_wgslsmith_index_u32(18012u, 29u)]))), -1119f), Struct_1(select(u_input.b, reverseBits(countOneBits(u_input.b)), true), global0[_wgslsmith_index_u32(28539u, 29u)], vec2<u32>(~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, var_0, 2147u), vec3<u32>(var_0, 1u, var_0))) ^ vec2<u32>(min(u_input.a, u_input.a), global1.c.x), _wgslsmith_f_op_f32(max(global1.d, -306f))));
    let var_2 = Struct_1(vec3<i32>(_wgslsmith_add_i32(-u_input.b.x, var_1.x) & func_4(_wgslsmith_mod_vec3_i32(vec3<i32>(global1.a.x, 0i, global1.a.x), global1.a), reverseBits(-6124i), Struct_1(global1.a, global1.b, global1.c, global1.d), Struct_1(var_1.yzy, false, vec2<u32>(130u, global1.c.x), global1.d)).x, -func_4(var_1.xzy, var_1.x, Struct_1(vec3<i32>(u_input.b.x, 0i, global1.a.x), global0[_wgslsmith_index_u32(0u, 29u)], vec2<u32>(55224u, 0u), arg_0), Struct_1(global1.a, global1.b, vec2<u32>(4294967295u, 14864u), global1.d)).x, 0i), !(_wgslsmith_div_i32(_wgslsmith_div_i32(34847i, u_input.b.x), ~2147483647i) != global1.a.x), firstTrailingBit(global1.c), arg_0);
    let var_3 = 53221u;
    return ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_3 >> (var_0 % 32u), u_input.a ^ 16769u, reverseBits(global1.c.x), u_input.a), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 11665u, u_input.a, 19847u), vec4<u32>(var_2.c.x, var_3, 1u, u_input.a)), _wgslsmith_add_vec4_u32(vec4<u32>(var_2.c.x, 1u, var_0, u_input.a), vec4<u32>(var_2.c.x, global1.c.x, u_input.a, u_input.a))), vec4<u32>(u_input.a, reverseBits(58060u), var_0, 1u)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> bool {
    let var_0 = !select(vec3<bool>(false, _wgslsmith_f_op_f32(trunc(-1253f)) < -1198f, -2147483647i != arg_1.a.x), select(select(!vec3<bool>(false, true, arg_1.b), vec3<bool>(true, true, false), select(vec3<bool>(false, global1.b, true), vec3<bool>(false, arg_0.b, global0[_wgslsmith_index_u32(global1.c.x, 29u)]), true)), select(!vec3<bool>(global1.b, arg_0.b, true), !vec3<bool>(arg_1.b, arg_1.b, global1.b), vec3<bool>(true, arg_1.b, global1.b)), !arg_0.b & true), select(vec3<bool>(all(vec4<bool>(global0[_wgslsmith_index_u32(global1.c.x, 29u)], global1.b, false, arg_1.b)), all(vec4<bool>(global1.b, false, arg_0.b, false)), arg_1.b), vec3<bool>(arg_2.x <= arg_1.d, arg_0.a.x <= u_input.b.x, arg_0.b), select(select(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.c.x, 29u)], false, global0[_wgslsmith_index_u32(1u, 29u)]), vec3<bool>(global1.b, arg_1.b, arg_1.b), global1.b), select(vec3<bool>(true, true, arg_0.b), vec3<bool>(global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(arg_1.c.x, 29u)], true), false), false)));
    var var_1 = _wgslsmith_dot_vec4_i32(-reverseBits(max(vec4<i32>(u_input.b.x, -2147483647i, 1i, 1i), vec4<i32>(-1345i, global1.a.x, -16374i, 61692i))) << (~func_2(_wgslsmith_f_op_f32(abs(485f))) % vec4<u32>(32u)), reverseBits(-_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, global1.a.x, arg_0.a.x, 30129i), select(vec4<i32>(arg_0.a.x, -2147483647i, arg_0.a.x, -1i), vec4<i32>(arg_0.a.x, 1i, arg_0.a.x, arg_1.a.x), vec4<bool>(var_0.x, arg_1.b, arg_1.b, arg_1.b)))));
    global1 = Struct_1(min(vec3<i32>(~(~arg_1.a.x), _wgslsmith_sub_i32(i32(-1i) * -2357i, reverseBits(u_input.b.x)), u_input.b.x), arg_0.a), all(vec3<bool>(any(vec4<bool>(true, true, false, true)), arg_0.b, any(!vec4<bool>(var_0.x, global1.b, global1.b, global0[_wgslsmith_index_u32(arg_1.c.x, 29u)])))), arg_0.c, 793f);
    let var_2 = arg_1;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(537f, arg_0.d, 593f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(arg_2)) * _wgslsmith_div_vec3_f32(vec3<f32>(var_2.d, 1190f, arg_0.d), arg_2)))) + arg_2) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_2), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-664f, arg_2.x, global1.d) - vec3<f32>(arg_1.d, arg_0.d, -557f)), _wgslsmith_f_op_vec3_f32(exp2(arg_2)), !select(vec3<bool>(false, false, false), vec3<bool>(var_2.b, var_2.b, true), var_0.x))))));
    return global1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(global1.a, select(vec3<i32>(21832i, countOneBits(-2147483647i), abs(-10052i)), firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, -46026i, global1.a.x), u_input.b)), true), all(vec3<bool>(func_1(Struct_1(vec3<i32>(-17862i, 1i, global1.a.x), true, vec2<u32>(29083u, 74142u), -117f), Struct_1(vec3<i32>(global1.a.x, global1.a.x, u_input.b.x), true, global1.c, global1.d), vec3<f32>(global1.d, -1000f, global1.d)), global1.a.x <= -1i, global1.b))), func_1(Struct_1(max(~u_input.b, func_3()), global0[_wgslsmith_index_u32(global1.c.x, 29u)], func_2(_wgslsmith_div_f32(-968f, 221f)).yw, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 1729f) - _wgslsmith_f_op_f32(1028f * -551f))), Struct_1(u_input.b, true, (vec2<u32>(u_input.a, 4294967295u) << (global1.c % vec2<u32>(32u))) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(3449f)), _wgslsmith_f_op_f32(-global1.d)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.d, 498f, global1.d))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.d, 1053f, -910f), vec3<f32>(-1000f, global1.d, -220f), vec3<bool>(true, global1.b, global1.b))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(287f, 1000f, global1.d), vec3<f32>(global1.d, global1.d, global1.d), vec3<bool>(global1.b, true, global1.b)))))), global1.c, global1.d);
    let var_1 = ~15087i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(u_input.b, abs(vec3<i32>(2147483647i, global1.a.x, var_1)) >> (min(vec3<u32>(u_input.a, var_0.c.x, var_0.c.x) & vec3<u32>(u_input.a, 4294967295u, 6050u), ~vec3<u32>(0u, u_input.a, 32453u)) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -504f), _wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(var_0.d * global1.d), _wgslsmith_f_op_f32(floor(var_0.d))), vec4<f32>(-1157f, -618f, var_0.d, 213f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(883f, -1248f))))))));
}

