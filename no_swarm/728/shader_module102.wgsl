struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(-37262i, -69705i));

var<private> global1: bool;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec3<i32> {
    global1 = false;
    global1 = !any(select(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true)));
    var var_0 = _wgslsmith_add_i32(u_input.a, _wgslsmith_mult_i32(-2147483647i, u_input.a)) >= global0.a.x;
    var_0 = firstTrailingBit(countOneBits(_wgslsmith_mult_u32(23949u, 0u) ^ firstTrailingBit(20592u))) > 0u;
    let var_1 = abs(_wgslsmith_add_vec2_i32(min(global0.a, max(vec2<i32>(-1i, u_input.b), -vec2<i32>(global0.a.x, u_input.a))), vec2<i32>(u_input.a >> (min(25268u, 4294967295u) % 32u), -global0.a.x)));
    return vec3<i32>(-firstTrailingBit(2147483647i), -2147483647i, 2147483647i);
}

fn func_2() -> Struct_1 {
    let var_0 = 70283i;
    global0 = Struct_1(abs(vec2<i32>(-1i) * -select(global0.a, global0.a, vec2<bool>(false, true))));
    var var_1 = _wgslsmith_mod_vec3_i32(func_3(), _wgslsmith_mod_vec3_i32(min(~(vec3<i32>(global0.a.x, u_input.a, var_0) & vec3<i32>(2147483647i, 14717i, global0.a.x)), vec3<i32>(u_input.a, var_0, _wgslsmith_div_i32(-2147483647i, var_0))), abs(func_3() << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)))));
    let var_2 = Struct_1(~select(vec2<i32>(global0.a.x, firstTrailingBit(-29615i)), global0.a, vec2<bool>(true, true)));
    return var_2;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    global0 = Struct_1(-(global0.a >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.x, 1u), ~arg_0, max(arg_0, arg_0)) % vec2<u32>(32u))));
    var var_0 = all(!select(vec2<bool>(false, true), vec2<bool>(all(vec2<bool>(true, false)), arg_2 > 574f), vec2<bool>(true, true)));
    let var_1 = arg_1;
    var var_2 = select(!vec2<bool>(any(vec2<bool>(false, false)), all(vec2<bool>(true, false))), !vec2<bool>(true && any(vec3<bool>(true, false, true)), true), select(vec2<bool>(_wgslsmith_f_op_f32(-1541f - arg_2) <= _wgslsmith_f_op_f32(arg_2 * 348f), true), !select(vec2<bool>(false, false), vec2<bool>(false, true), arg_2 >= arg_2), !vec2<bool>(select(true, false, false), false)));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-854f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-439f, -1909f, var_2.x)))), -1699f))), arg_2, _wgslsmith_f_op_f32(-arg_2));
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> u32 {
    let var_0 = arg_1.a.x;
    global0 = arg_1;
    let var_1 = !select(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), false), false), !(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true))), !select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), false), vec4<bool>(false, true, true, true)));
    var var_2 = vec4<bool>(!var_1.x, false, true, select(var_1.x, all(vec2<bool>(true, false)), !any(vec2<bool>(true, var_1.x))) | !(!(!var_1.x)));
    var var_3 = _wgslsmith_div_vec3_u32(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(45754u, 79802u, 7127u), countOneBits(vec3<u32>(106373u, arg_2, 0u)))), _wgslsmith_add_vec3_u32(select(vec3<u32>(arg_2, 59115u, 12890u), vec3<u32>(1189u, 1u, arg_2), var_1.x), _wgslsmith_div_vec3_u32(vec3<u32>(arg_2, arg_2, arg_2), vec3<u32>(53580u, arg_2, arg_2))) & vec3<u32>(~1u, arg_2, arg_2)) & abs(_wgslsmith_add_vec3_u32(~(vec3<u32>(arg_2, 4294967295u, 41640u) | vec3<u32>(0u, arg_2, arg_2)), vec3<u32>(~21163u, 91105u, abs(0u))));
    return var_3.x;
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> Struct_1 {
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_f32(trunc(1220f));
    let var_2 = vec3<i32>(u_input.a >> (_wgslsmith_mult_u32(~arg_0, arg_3) % 32u), ~(-2147483647i), 2147483647i);
    let var_3 = Struct_1(func_2().a);
    let var_4 = _wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(~u_input.a, _wgslsmith_dot_vec2_i32(var_3.a, var_2.zx), 0i, 23223i), firstLeadingBit(max(vec4<i32>(var_2.x, arg_2, 17013i, var_3.a.x), vec4<i32>(var_3.a.x, global0.a.x, -24796i, var_3.a.x))), -firstLeadingBit(vec4<i32>(3326i, 1i, var_2.x, -1i))), ~(vec4<i32>(2147483647i, -2147483647i, _wgslsmith_clamp_i32(-44936i, var_3.a.x, arg_1.a.x), arg_1.a.x) >> ((vec4<u32>(arg_0, arg_3, 1u, arg_3) | vec4<u32>(arg_0, 1u, arg_0, 0u)) % vec4<u32>(32u))));
    return func_4(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3, arg_3, arg_3), ~vec3<u32>(arg_3, arg_0, arg_0)), abs(_wgslsmith_div_u32(1u, 28789u))), arg_1, -338f);
}

fn func_1(arg_0: vec4<f32>) -> bool {
    var var_0 = firstLeadingBit(4294967295u);
    let var_1 = func_6(func_5(func_4(vec2<u32>(31467u, 0u), func_2(), arg_0.x), Struct_1(_wgslsmith_add_vec2_i32(global0.a, vec2<i32>(-2147483647i, u_input.b))), 0u) >> ((firstTrailingBit(countOneBits(1u)) << (104621u % 32u)) % 32u), Struct_1(select(global0.a, global0.a, select(vec2<bool>(true, true), vec2<bool>(false, false), false)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), u_input.b, firstLeadingBit(~_wgslsmith_clamp_u32(13717u, 4294967295u, 74795u)) >> (~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, 1u), 1u, ~1u) % 32u));
    let var_2 = firstTrailingBit(44960u);
    let var_3 = Struct_1(vec2<i32>(-26585i, 0i & -var_1.a.x));
    let var_4 = select(firstTrailingBit(~min(~vec4<u32>(1u, 20658u, 61899u, var_2), select(vec4<u32>(1u, var_2, var_2, 4294967295u), vec4<u32>(12457u, var_2, 8254u, 4294967295u), true))), vec4<u32>(37952u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2, 6564u, var_2), _wgslsmith_div_vec3_u32(vec3<u32>(var_2, 4294967295u, var_2), vec3<u32>(61633u, 0u, var_2))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2, var_2, var_2), vec3<u32>(4294967295u, 0u, 53645u))), _wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(37885u, 26749u, 2645u)), _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(var_2, var_2, var_2)), countOneBits(vec3<u32>(4294967295u, var_2, var_2)), vec3<u32>(4294967295u, 1u, var_2))), _wgslsmith_div_u32(~(107589u << (var_2 % 32u)), var_2)), !select(select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true)), false));
    return true;
}

fn func_7(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(max(383f, _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(674f * 130f), all(vec3<bool>(true, arg_2, true))))))))));
    return _wgslsmith_add_u32(~4294967295u, ~abs(1u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(63333u, vec4<u32>(~_wgslsmith_mult_u32(_wgslsmith_mult_u32(81462u, 1u), ~4294967295u), 1u << (0u % 32u), ~19863u, ~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(42740u, 35090u)), ~vec2<u32>(54597u, 4294967295u))), 1u ^ func_7(~u_input.a, Struct_1(countOneBits(vec2<i32>(-18453i, 2147483647i))), func_1(vec4<f32>(919f, 391f, -893f, 1077f))), 338f);
}

