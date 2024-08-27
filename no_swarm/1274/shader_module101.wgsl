struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> f32 {
    let var_0 = ~_wgslsmith_sub_i32(arg_0, -1i) | -1i;
    var var_1 = arg_2;
    let var_2 = Struct_1(select(select(select(!arg_2.a, !vec3<bool>(arg_2.a.x, false, true), var_1.a), vec3<bool>(arg_2.a.x, all(var_1.a.zx), arg_2.a.x), all(select(var_1.a.zy, vec2<bool>(var_1.a.x, var_1.a.x), vec2<bool>(arg_2.a.x, arg_2.a.x)))), arg_2.a, false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(var_1.b)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, 1000f, -1000f, 230f))))), 18032u);
    let var_3 = vec4<f32>(-1262f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(var_1.b.x - 956f), var_2.b.x);
    var_1 = arg_2;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_3.x, 1000f))) - _wgslsmith_f_op_f32(f32(-1f) * -409f));
}

fn func_2() -> Struct_1 {
    let var_0 = vec2<bool>(-_wgslsmith_add_i32(-40274i, select(16250i, 23409i, false)) >= 2147483647i, all(vec3<bool>(true, any(vec2<bool>(false, true)) || true, !all(vec4<bool>(false, false, true, true)))));
    var var_1 = Struct_1(select(select(vec3<bool>(true, var_0.x | true, true), !select(vec3<bool>(true, false, false), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, true, false)), select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, true, false), false)), select(vec3<bool>(var_0.x & true, all(vec4<bool>(true, true, var_0.x, true)), var_0.x), select(!vec3<bool>(false, var_0.x, true), select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, var_0.x, true)), !vec3<bool>(var_0.x, var_0.x, var_0.x)), !vec3<bool>(false, var_0.x, false)), vec3<bool>(all(vec2<bool>(true, var_0.x)) && true, var_0.x, !var_0.x)), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1236f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(countOneBits(-16217i), -1i, Struct_1(vec3<bool>(var_0.x, var_0.x, var_0.x), vec4<f32>(-212f, 862f, -1911f, -937f), 55290u))) + _wgslsmith_f_op_f32(727f * _wgslsmith_f_op_f32(f32(-1f) * -1436f))), 788f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(328f * 522f)))), u_input.a.x);
    var_1 = Struct_1(vec3<bool>(true, var_1.a.x, var_1.a.x), vec4<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec2_i32(max(vec2<i32>(-18552i, -1i), vec2<i32>(-2147483647i, 8341i)), max(vec2<i32>(1i, -5857i), vec2<i32>(-2147483647i, -20871i))), max(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 13254i, -1i), vec3<i32>(-1i, 17538i, -1i)), abs(-39341i)), Struct_1(select(var_1.a, var_1.a, var_1.a), var_1.b, _wgslsmith_mod_u32(47912u, var_1.c)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1.b.x, -1022f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1006f - -1000f), -1000f)), true)), -1331f, -1000f), 4829u);
    var var_2 = _wgslsmith_sub_vec4_i32(abs(-vec4<i32>(-12481i << (0u % 32u), -14146i, ~(-29957i), 10845i)), ~vec4<i32>(1i, 1i, 1i, 1i));
    var_2 = vec4<i32>((~(2147483647i | var_2.x) & 16537i) & (_wgslsmith_dot_vec3_i32(var_2.wyw, var_2.yzz) & _wgslsmith_div_i32(var_2.x, select(-49452i, var_2.x, var_0.x))), _wgslsmith_div_i32(2147483647i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(var_2.x, -37404i), -1i) & var_2.x), -var_2.x, ~(-1i));
    return Struct_1(!var_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(ceil(198f)), _wgslsmith_f_op_f32(f32(-1f) * -1068f), _wgslsmith_f_op_f32(var_1.b.x * var_1.b.x), var_1.b.x)))), 4294967295u);
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-684f, -296f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(340f * -2185f))))));
    let var_1 = func_2();
    var var_2 = _wgslsmith_f_op_vec2_f32(func_2().b.zz + var_1.b.zz);
    var var_3 = func_2();
    var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_1.b.yx)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-815f, var_2.x)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b.x, -241f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-955f, 366f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_1.b.yx, var_1.b.yx)))))));
    return Struct_1(var_1.a, var_3.b, var_3.c);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> bool {
    var var_0 = max(-46199i, 0i);
    var_0 = firstTrailingBit(i32(-1i) * -2147483647i);
    let var_1 = Struct_1(arg_2.a, arg_0.b, _wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, ~11600u) ^ u_input.a, (u_input.a >> (abs(vec2<u32>(42863u, u_input.a.x)) % vec2<u32>(32u))) | max(u_input.a, u_input.a & u_input.a)));
    var var_2 = min(vec4<u32>(~select(~u_input.a.x, ~arg_0.c, true), func_2().c, arg_0.c, _wgslsmith_mult_u32(u_input.a.x, reverseBits(~arg_0.c))), vec4<u32>(var_1.c, 229u, countOneBits(~41435u), _wgslsmith_div_u32(u_input.a.x ^ _wgslsmith_mult_u32(1u, u_input.a.x), ~_wgslsmith_sub_u32(arg_2.c, u_input.a.x))));
    var var_3 = !all(!vec4<bool>(false, !arg_2.a.x, true, arg_0.a.x));
    return !arg_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-1000f)))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(sign(-1211f)))));
    let var_1 = Struct_1(vec3<bool>(select(true, true, func_4(func_1(), _wgslsmith_f_op_f32(select(-1712f, var_0, false)), Struct_1(vec3<bool>(true, false, true), vec4<f32>(var_0, 1842f, var_0, 875f), u_input.a.x))), !(all(vec3<bool>(true, false, true)) || false), (u_input.a.x != u_input.a.x) || any(vec2<bool>(true, false))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-548f, _wgslsmith_div_f32(var_0, _wgslsmith_div_f32(var_0, var_0)), _wgslsmith_f_op_f32(trunc(func_1().b.x)), func_2().b.x))), 53705u);
    var var_2 = -2147483647i;
    var var_3 = vec2<u32>(_wgslsmith_clamp_u32(u_input.a.x, ~_wgslsmith_dot_vec2_u32(~u_input.a, vec2<u32>(1u, 0u)), ~var_1.c), (max(_wgslsmith_sub_u32(26474u, var_1.c), _wgslsmith_add_u32(var_1.c, var_1.c)) ^ 1u) >> (0u % 32u));
    var var_4 = func_2();
    var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(~(-17849i << (var_3.x % 32u)), -54468i, 0i), 613f, ~u_input.a, -vec4<i32>(~(i32(-1i) * -42678i), -16165i, _wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, -2147483647i), max(vec2<i32>(-12029i, -2147483647i), vec2<i32>(-1i, -3113i))), 2147483647i));
}

