struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> u32 {
    let var_0 = Struct_1(vec2<bool>(arg_0.a.x, any(select(select(vec3<bool>(arg_0.a.x, arg_0.a.x, true), vec3<bool>(arg_0.a.x, arg_0.a.x, true), vec3<bool>(arg_0.a.x, arg_0.a.x, false)), !vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x), arg_0.a.x & false))), 1023f, countOneBits(select(~(arg_0.c | vec3<u32>(1u, arg_1, arg_1)), u_input.d, select(select(vec3<bool>(true, true, arg_0.a.x), vec3<bool>(arg_0.a.x, arg_0.a.x, true), vec3<bool>(arg_0.a.x, false, arg_0.a.x)), vec3<bool>(true, false, arg_0.a.x), select(vec3<bool>(true, true, arg_0.a.x), vec3<bool>(false, false, false), arg_0.a.x)))));
    let var_1 = arg_0.b;
    var var_2 = Struct_1(!(!(!(!vec2<bool>(arg_0.a.x, arg_0.a.x)))), _wgslsmith_f_op_f32(abs(-1145f)), firstLeadingBit(vec3<u32>(abs(~arg_0.c.x), abs(_wgslsmith_add_u32(arg_1, 46201u)), _wgslsmith_div_u32(9236u, 53227u))));
    var var_3 = Struct_1(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.b)))) * _wgslsmith_f_op_f32(-1065f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -641f) * -919f))), u_input.b);
    var var_4 = ~4294967295u;
    return 0u;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(-1i, -u_input.e.x), u_input.a.x);
    var var_1 = !vec4<bool>(all(vec3<bool>(u_input.d.x >= 83524u, all(vec2<bool>(true, true)), false)), true, !(u_input.d.x != 1u) | false, true);
    let var_2 = select(~select(vec4<u32>(~46793u, u_input.c, func_3(Struct_1(vec2<bool>(var_1.x, var_1.x), 144f, u_input.d), u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.d.x, 4294967295u, 26604u), vec4<u32>(0u, 7224u, 4294967295u, u_input.b.x))), reverseBits(~vec4<u32>(4294967295u, 0u, 40445u, u_input.b.x)), true), vec4<u32>(~max(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 26035u, 4294967295u), vec4<u32>(u_input.b.x, u_input.d.x, u_input.b.x, 0u)), ~u_input.c), u_input.d.x, _wgslsmith_clamp_u32(u_input.b.x, select(u_input.c & 0u, 4000u, false), abs(1u) & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 1u, u_input.d.x, u_input.c), vec4<u32>(0u, 54862u, u_input.b.x, 4294967295u))), 49361u), vec4<bool>(var_1.x, ~(18332u ^ u_input.d.x) >= 0u, false, (_wgslsmith_sub_u32(u_input.c, 38866u) < u_input.c) || true));
    var_1 = select(!select(!select(vec4<bool>(var_1.x, false, true, true), vec4<bool>(false, false, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, true, var_1.x)), vec4<bool>(true, var_1.x, var_1.x & var_1.x, !var_1.x), var_1.x), select(select(select(select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(false, false, var_1.x, true), true), select(vec4<bool>(true, true, var_1.x, true), vec4<bool>(var_1.x, false, true, false), vec4<bool>(false, true, true, var_1.x)), vec4<bool>(var_1.x, var_1.x, true, var_1.x)), select(vec4<bool>(true, true, var_1.x, var_1.x), !vec4<bool>(false, var_1.x, false, false), select(vec4<bool>(var_1.x, false, true, var_1.x), vec4<bool>(false, var_1.x, var_1.x, var_1.x), var_1.x)), select(vec4<bool>(true, var_1.x, true, true), !vec4<bool>(true, false, var_1.x, false), !vec4<bool>(true, var_1.x, var_1.x, var_1.x))), !select(select(vec4<bool>(var_1.x, false, var_1.x, false), vec4<bool>(false, var_1.x, false, var_1.x), vec4<bool>(var_1.x, true, true, false)), select(vec4<bool>(var_1.x, true, var_1.x, false), vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(var_1.x, var_1.x, var_1.x, true)), var_1.x || var_1.x), vec4<bool>(var_1.x && var_1.x, true, all(vec4<bool>(var_1.x, var_1.x, false, true)), all(!vec3<bool>(true, true, var_1.x)))), select(select(vec4<bool>(var_1.x || var_1.x, !var_1.x, true, false), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(true, var_1.x, var_1.x, var_1.x)), any(vec3<bool>(var_1.x, false, var_1.x))), vec4<bool>(false, true, !(true && var_1.x), true), select(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), select(vec4<bool>(var_1.x, false, true, true), vec4<bool>(false, var_1.x, var_1.x, false), vec4<bool>(var_1.x, false, false, true)), var_2.x > u_input.c), vec4<bool>(!var_1.x, all(vec3<bool>(false, var_1.x, false)), false || var_1.x, all(vec3<bool>(false, true, false))), var_1.x)));
    let var_3 = ~(~(~(var_2.x >> (u_input.b.x % 32u))) | u_input.c);
    return Struct_1(select(!(!vec2<bool>(false, var_1.x)), vec2<bool>(true, false), all(select(!vec3<bool>(true, var_1.x, var_1.x), !vec3<bool>(false, var_1.x, true), !var_1.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-724f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(325f)), _wgslsmith_f_op_f32(sign(473f)))), true)), _wgslsmith_mod_vec3_u32(vec3<u32>(abs(var_3), ~_wgslsmith_add_u32(var_2.x, 57684u), abs(firstTrailingBit(40046u))), _wgslsmith_sub_vec3_u32(vec3<u32>(var_3, u_input.c, u_input.d.x), firstLeadingBit(vec3<u32>(var_3, 4294967295u, 67435u))) | (_wgslsmith_mult_vec3_u32(u_input.d, var_2.yzz) >> ((vec3<u32>(u_input.b.x, var_3, var_3) ^ vec3<u32>(0u, 33810u, u_input.b.x)) % vec3<u32>(32u)))));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> u32 {
    let var_0 = func_2();
    let var_1 = arg_2;
    var var_2 = arg_0;
    let var_3 = func_2();
    let var_4 = _wgslsmith_f_op_f32(-var_1.b);
    return _wgslsmith_dot_vec4_u32(~select(~min(vec4<u32>(var_0.c.x, var_3.c.x, var_3.c.x, var_1.c.x), vec4<u32>(u_input.d.x, arg_2.c.x, 4294967295u, 0u)), select(vec4<u32>(4294967295u, 28504u, var_0.c.x, u_input.b.x), select(vec4<u32>(34199u, 1u, u_input.c, var_3.c.x), vec4<u32>(arg_2.c.x, 4294967295u, var_3.c.x, var_3.c.x), var_0.a.x), !arg_1), true), vec4<u32>(abs(var_0.c.x), firstTrailingBit(~(~4294967295u)), abs(~arg_2.c.x) << (~27600u % 32u), abs(~u_input.c) & 1u));
}

fn func_4(arg_0: u32, arg_1: vec4<i32>) -> f32 {
    let var_0 = abs(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-(u_input.e << (vec4<u32>(u_input.c, 4294967295u, 0u, arg_0) % vec4<u32>(32u))), reverseBits(vec4<i32>(18576i, arg_1.x, u_input.a.x, -1082i)) >> (countOneBits(vec4<u32>(13587u, arg_0, 56659u, arg_0)) % vec4<u32>(32u))), vec4<i32>(select(2147483647i, u_input.e.x, func_2().a.x), _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a.x, arg_1.x), -2147483647i), 17079i, ~(i32(-1i) * -65637i))));
    var var_1 = false;
    var var_2 = select(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), vec3<bool>(true, u_input.b.x != u_input.d.x, all(vec2<bool>(false, false))), vec3<bool>(func_2().a.x, any(vec2<bool>(false, false)), true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(all(vec2<bool>(false, false)), any(vec2<bool>(true, true)), select(false, false, true) | (arg_0 <= 4294967295u))), select(vec3<bool>(func_2().a.x, any(vec4<bool>(false, true, true, false)), -1832f < _wgslsmith_f_op_f32(select(-758f, 354f, true))), select(vec3<bool>(true, true, true), vec3<bool>(var_0 != 2147483647i, false, false), !all(vec2<bool>(false, true))), false), false);
    var var_3 = Struct_1(var_2.zz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f)))), abs(abs(~select(vec3<u32>(4294967295u, u_input.b.x, 4294967295u), vec3<u32>(17232u, arg_0, 1u), vec3<bool>(var_2.x, var_2.x, var_2.x)))));
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1415f);
    return _wgslsmith_f_op_f32(-var_4);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(556f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(409f, -342f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-470f * _wgslsmith_f_op_f32(f32(-1f) * -1137f)))))));
    var var_1 = u_input.a.xxx;
    let var_2 = ~(~(~select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 68715u, 19073u, 13285u), vec4<u32>(4294967295u, 1883u, 0u, 4294967295u)), vec4<u32>(91143u, 4750u, 0u, u_input.b.x), vec4<bool>(true, true, true, true))));
    var_1 = vec3<i32>(-u_input.a.x, _wgslsmith_div_i32(~u_input.e.x, ~firstTrailingBit(u_input.a.x)) << (var_2.x % 32u), 0i);
    var var_3 = Struct_1(vec2<bool>(!(true && (u_input.b.x > 4294967295u)), true), _wgslsmith_f_op_f32(-582f * 1577f), u_input.b);
    var_3 = Struct_1(select(!select(vec2<bool>(false, var_3.a.x), vec2<bool>(true, true), false), var_3.a, select(vec2<bool>(var_3.a.x & true, true || var_3.a.x), var_3.a, var_3.a.x)), _wgslsmith_f_op_f32(func_4(func_1(u_input.b.x, true, Struct_1(!var_3.a, _wgslsmith_f_op_f32(max(var_0, 475f)), var_2.yyw)), vec4<i32>(min(-2147483647i, var_1.x), ~var_1.x, var_1.x | var_1.x, var_1.x >> (29717u % 32u)) ^ ~u_input.a)), var_3.c);
    var_3 = Struct_1(!(!vec2<bool>(true, var_2.x < 60504u)), _wgslsmith_f_op_f32(-var_3.b), reverseBits(var_2.zxy));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(func_3(func_2(), _wgslsmith_div_u32(12493u, var_2.x)), 105580u, var_3.c.x, _wgslsmith_div_u32(96680u, var_3.c.x)), _wgslsmith_dot_vec2_i32(-vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, var_1.x, -27822i, 1i), vec4<i32>(43988i, var_1.x, var_1.x, u_input.a.x)), _wgslsmith_mod_i32(1i, var_1.x)), var_1.xy), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * var_3.b) * _wgslsmith_f_op_f32(-var_3.b)), -271f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-924f - 1013f) - -410f))), var_0));
}

