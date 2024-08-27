struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> vec2<u32> {
    var var_0 = Struct_1(21521i, arg_0.b, abs(abs(select(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, arg_2, 21244i), vec3<i32>(-39829i, -2147483647i, u_input.a)), vec3<i32>(arg_2, -2147483647i, 2147483647i), arg_0.b.www))), arg_0.d);
    var var_1 = Struct_1(var_0.c.x, !select(!vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), vec4<bool>(var_0.b.x, any(arg_0.b.ywz), any(var_0.b), global0.x >= arg_1), false), _wgslsmith_clamp_vec3_i32(countOneBits(max(vec3<i32>(51957i, u_input.b, -25370i), arg_0.c) >> (vec3<u32>(var_0.d, 1u, 1u) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_div_i32(-2147483647i, -2147483647i), _wgslsmith_div_i32(17704i, arg_0.c.x >> (var_0.d % 32u)), ~(i32(-1i) * -20189i)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, -30766i >> (var_0.d % 32u), -1i), vec3<i32>(2147483647i, i32(-1i) * -19287i, var_0.a))), ~(~_wgslsmith_add_u32(arg_0.d, var_0.d)) ^ 0u);
    let var_2 = vec4<i32>(~u_input.b, u_input.a, var_0.c.x, max(-var_0.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -var_1.c.xx, vec2<i32>(2147483647i, ~arg_0.c.x))));
    var var_3 = Struct_1(_wgslsmith_dot_vec4_i32(var_2, -var_2), !arg_0.b, countOneBits(~(vec3<i32>(-1i) * -arg_0.c)), arg_0.d);
    let var_4 = 1u;
    return ~abs(vec2<u32>(min(var_4, firstTrailingBit(55115u)), min(4294967295u, var_0.d) ^ (var_4 & var_1.d)));
}

fn func_2() -> u32 {
    let var_0 = vec4<i32>(u_input.b, -7333i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.b) ^ firstTrailingBit(vec2<i32>(1i, u_input.b)), reverseBits(vec2<i32>(u_input.a, u_input.b) & vec2<i32>(-1i, u_input.b))), -vec2<i32>(u_input.b, 0i)), ~max(u_input.b, u_input.a) >> (~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(0u, 4294967295u)), func_3(Struct_1(-1i, vec4<bool>(true, true, false, false), vec3<i32>(u_input.b, u_input.a, 1i), 17860u), global0.x, u_input.b)) % 32u));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, global0.x, global0.x), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, -1200f, 1302f))))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(-global0.x)) * vec3<f32>(_wgslsmith_f_op_f32(global0.x - 433f), global0.x, _wgslsmith_f_op_f32(208f + global0.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1428f, _wgslsmith_f_op_f32(-488f - global0.x), _wgslsmith_f_op_f32(trunc(-225f))))));
    let var_2 = Struct_1(firstTrailingBit(countOneBits(var_0.x)), !select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), false), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), true), var_0.wyw, 26045u);
    let var_3 = var_2.d;
    var var_4 = select(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(firstLeadingBit(~vec2<u32>(1u, var_2.d)), ~vec2<u32>(var_3, 0u) & (vec2<u32>(0u, 46493u) & vec2<u32>(var_3, 24449u))), ~(~(vec2<u32>(1u, 24789u) << (vec2<u32>(var_2.d, 33475u) % vec2<u32>(32u))))), select(firstTrailingBit(~vec2<u32>(33744u, 81157u) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 16769u), vec2<u32>(1u, var_2.d), vec2<u32>(1u, var_2.d)) % vec2<u32>(32u))), ~_wgslsmith_div_vec2_u32(vec2<u32>(var_2.d, 17697u) << (vec2<u32>(var_3, 63303u) % vec2<u32>(32u)), max(vec2<u32>(var_2.d, 0u), vec2<u32>(var_2.d, 4294967295u))), var_2.b.x), select(select(any(vec2<bool>(true, var_2.b.x)) & var_2.b.x, false, (var_2.c.x >> (42126u % 32u)) < -60895i), true & all(vec2<bool>(true, var_2.b.x)), all(vec4<bool>(false, true, true, true))));
    return ~1u;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: u32, arg_3: Struct_2) -> u32 {
    var var_0 = arg_1;
    global0 = arg_3.d;
    var var_1 = ~46198u;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-global0.x), arg_3.d.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1136f * arg_3.d.x), global0.x)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0.x, arg_3.d.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x))))));
    let var_3 = arg_3.a;
    return 0u;
}

fn func_1() -> vec4<f32> {
    var var_0 = u_input.a;
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.x)) * _wgslsmith_f_op_f32(-987f * 434f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1391f, global0.x)), 224f)) + vec2<f32>(-680f, _wgslsmith_f_op_f32(f32(-1f) * -1582f)));
    var_0 = u_input.a;
    let var_1 = countOneBits(_wgslsmith_mult_u32(func_4(all(vec3<bool>(true, true, false)), _wgslsmith_div_u32(0u, 4294967295u) ^ func_2(), _wgslsmith_add_u32(~4820u, firstTrailingBit(28455u)), Struct_2(Struct_1(-33249i, vec4<bool>(true, true, true, false), vec3<i32>(1i, u_input.b, 2147483647i), 1u), Struct_1(-1i, vec4<bool>(true, false, true, true), vec3<i32>(2051i, u_input.a, -17147i), 1745u), ~vec3<u32>(19786u, 1u, 4294967295u), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-915f, 821f))), Struct_1(u_input.b, vec4<bool>(false, false, true, false), vec3<i32>(-14985i, u_input.b, u_input.a), 54098u))), 1u));
    var var_2 = Struct_2(Struct_1(~_wgslsmith_dot_vec4_i32(select(vec4<i32>(-2147483647i, 14265i, u_input.b, 0i), vec4<i32>(u_input.b, u_input.b, -24215i, -10663i), vec4<bool>(false, true, true, false)), vec4<i32>(-6829i, 17367i, u_input.b, u_input.a)), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), 358f < global0.x), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), true), true), reverseBits(~select(vec3<i32>(5972i, 27102i, 1i), vec3<i32>(0i, 5082i, 1i), vec3<bool>(false, true, false))), var_1), Struct_1(firstLeadingBit(abs(_wgslsmith_mod_i32(u_input.a, -1i))), vec4<bool>(true, true, true, true), ~(vec3<i32>(-1i) * -vec3<i32>(u_input.a, 1i, u_input.a)), var_1), ~_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(11306u, 4294967295u, var_1), vec3<u32>(1u, 4294967295u, 3993u) << (vec3<u32>(var_1, var_1, 49206u) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_div_u32(1u, var_1), 1u, 1u)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -904f), global0.x))), Struct_1(-47551i, !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false)), vec4<bool>(false, true, false, true), all(vec4<bool>(true, true, true, true))), max(vec3<i32>(_wgslsmith_mult_i32(3582i, u_input.a), u_input.a, ~u_input.a), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -2147483647i, -2810i), vec3<i32>(-2147483647i, u_input.a, 2147483647i)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.a, 26377i), vec3<i32>(33226i, u_input.a, u_input.a)))), var_1));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - -1618f), global0.x, -750f, global0.x) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-var_2.d.x), -940f, global0.x, -1917f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_1());
    var var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(func_4(false != all(vec2<bool>(true, true)), ~_wgslsmith_clamp_u32(0u, 0u, 4294967295u), min(_wgslsmith_add_u32(58482u, 0u), 1u), Struct_2(Struct_1(-2147483647i, vec4<bool>(false, true, false, false), vec3<i32>(u_input.b, 2147483647i, u_input.a), 33143u), Struct_1(u_input.a, vec4<bool>(true, false, false, true), vec3<i32>(u_input.a, u_input.b, u_input.b), 9006u), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 4294967295u, 42863u), vec3<u32>(0u, 3514u, 51371u), vec3<u32>(564u, 1u, 28294u)), _wgslsmith_div_vec2_f32(vec2<f32>(627f, -397f), vec2<f32>(global0.x, 641f)), Struct_1(-2147483647i, vec4<bool>(false, false, false, false), vec3<i32>(40i, u_input.b, 40283i), 4294967295u))), ~38771u), vec2<u32>(1u, 1u));
    let var_2 = Struct_2(Struct_1(u_input.a, select(vec4<bool>(any(vec3<bool>(true, false, false)), all(vec3<bool>(false, true, true)), false, true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false))), true), vec3<i32>(abs(41835i), u_input.a, u_input.b), func_3(Struct_1(_wgslsmith_sub_i32(u_input.b, u_input.a), vec4<bool>(true, true, true, true), -vec3<i32>(-39782i, -2147483647i, u_input.a), 1u), _wgslsmith_f_op_vec4_f32(func_1()).x, -(u_input.b & u_input.b)).x), Struct_1(~(~(~u_input.b)), vec4<bool>(false, select(true, all(vec4<bool>(false, false, true, true)), true), func_4(true, var_1.x, var_1.x, Struct_2(Struct_1(15038i, vec4<bool>(false, true, false, true), vec3<i32>(-20166i, u_input.a, 0i), 58108u), Struct_1(u_input.b, vec4<bool>(false, true, false, false), vec3<i32>(4798i, u_input.a, -1i), var_1.x), vec3<u32>(19728u, var_1.x, 26569u), vec2<f32>(var_0.x, global0.x), Struct_1(u_input.b, vec4<bool>(false, true, true, true), vec3<i32>(u_input.b, u_input.a, 29022i), 9534u))) <= _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 67677u, var_1.x, 63421u), vec4<u32>(37211u, 12439u, 68759u, var_1.x)), !any(vec2<bool>(true, false))), _wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, u_input.b, u_input.b) & vec3<i32>(2147483647i, u_input.a, u_input.a)), ~(vec3<i32>(u_input.a, u_input.b, u_input.a) & vec3<i32>(-1i, u_input.b, -2147483647i))), 4294967295u), abs(~vec3<u32>(1u, 45145u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, var_1.x), vec2<u32>(12762u, var_1.x)))), _wgslsmith_f_op_vec2_f32(select(var_0.xy, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1011f, _wgslsmith_div_f32(global0.x, var_0.x)) * var_0.yx), select(select(vec2<bool>(true, true), vec2<bool>(true, true), global0.x <= var_0.x), vec2<bool>(true, true), true))), Struct_1(u_input.a, !(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false))), -((vec3<i32>(1i, u_input.a, 1i) >> (vec3<u32>(1u, 0u, var_1.x) % vec3<u32>(32u))) ^ vec3<i32>(u_input.b, u_input.b, -1i)), ~(~10783u)));
    let var_3 = vec2<u32>(var_1.x, ~62599u);
    var var_4 = Struct_1(-_wgslsmith_div_i32(var_2.a.a, u_input.b << (var_1.x % 32u)) >> (var_2.c.x % 32u), !select(var_2.b.b, select(select(var_2.b.b, var_2.a.b, var_2.e.b), var_2.a.b, vec4<bool>(var_2.b.b.x, true, true, var_2.a.b.x)), !all(vec3<bool>(true, false, var_2.b.b.x))), _wgslsmith_clamp_vec3_i32(vec3<i32>(~_wgslsmith_mult_i32(var_2.b.c.x, 66045i), _wgslsmith_div_i32(abs(-19285i), _wgslsmith_dot_vec3_i32(var_2.a.c, var_2.b.c)), _wgslsmith_add_i32(u_input.b, u_input.b) | u_input.b), -_wgslsmith_add_vec3_i32(vec3<i32>(30757i, 50331i, 14157i), reverseBits(var_2.e.c)), var_2.b.c), ~abs(_wgslsmith_div_u32(~var_2.e.d, 0u)));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1000f, global0.x, -847f)))))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, var_0.x, var_2.d.x, var_2.d.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, 1883f, global0.x) + vec4<f32>(global0.x, var_0.x, 448f, 364f)), var_2.a.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))))), firstTrailingBit(func_2()), select(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 37761i, 31267i, var_4.a), vec4<i32>(-2147483647i, 22089i, -78197i, -2147483647i)) | ~2147483647i, -25415i, any(select(var_4.b, var_2.a.b, true))) & countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, var_4.a, u_input.a), reverseBits(vec3<i32>(46210i, var_4.c.x, 0i)))), -2147483647i);
}

