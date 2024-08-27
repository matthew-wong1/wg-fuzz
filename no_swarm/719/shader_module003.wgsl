struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: i32,
    e: f32,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: vec3<i32>) -> i32 {
    let var_0 = !(_wgslsmith_clamp_i32(arg_2.x, reverseBits(i32(-1i) * -1i), 72121i) < max(u_input.b.x | _wgslsmith_div_i32(u_input.b.x, arg_2.x), select(-2147483647i, ~(-19362i), any(vec3<bool>(true, true, true)))));
    var var_1 = Struct_4(_wgslsmith_mod_i32(reverseBits(u_input.b.x), 2147483647i), vec2<f32>(1347f, _wgslsmith_f_op_f32(arg_1 - arg_1)), Struct_2(vec4<bool>(true, true, true, true), vec2<u32>(~(~u_input.a), ~(~u_input.a)), countOneBits(max(-u_input.b.x, arg_2.x))));
    let var_2 = arg_1;
    var var_3 = vec4<i32>(min(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(~arg_2.yx, ~vec2<i32>(-1i, var_1.a)), arg_2.zy), _wgslsmith_div_i32(-(arg_2.x ^ 0i), -(~(-7524i)))), u_input.b.x, max(u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b.zy, vec2<i32>(abs(u_input.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c.c, u_input.b.x), arg_2.yy)))), u_input.b.x);
    var var_4 = Struct_4(var_3.x, vec2<f32>(826f, -209f), var_1.c);
    return -arg_2.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: vec3<f32>) -> f32 {
    let var_0 = ~(-u_input.b.x);
    let var_1 = vec4<i32>(max(u_input.b.x, _wgslsmith_sub_i32(firstTrailingBit(-2147483647i), ~(-u_input.b.x))), _wgslsmith_mult_i32(_wgslsmith_mult_i32(func_3(vec3<u32>(arg_1, 100435u, arg_1), 3150f, u_input.b) ^ _wgslsmith_sub_i32(u_input.b.x, u_input.b.x), _wgslsmith_mod_i32(var_0, -33684i)), _wgslsmith_div_i32(~0i, -29265i)), var_0, _wgslsmith_sub_i32((min(-2147483647i, u_input.b.x) | -30200i) & _wgslsmith_add_i32(abs(0i), 0i), u_input.b.x));
    let var_2 = 0i;
    var var_3 = ~_wgslsmith_mult_u32(~max(reverseBits(u_input.a), 0u), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(73050u, 4294967295u, arg_1)), vec3<u32>(max(arg_1, 7549u), _wgslsmith_clamp_u32(1995u, arg_1, u_input.a), arg_1)));
    var_3 = 41905u;
    return _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.x, -882f))))));
}

fn func_1() -> bool {
    let var_0 = u_input.a;
    var var_1 = 410f;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(975f, 1694f))), 1f)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<f32>(172f, 2230f), 4294967295u, vec3<f32>(-185f, 238f, 1276f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1452f * 1458f)));
    let var_3 = vec3<i32>(abs(-37849i), 0i, firstLeadingBit(~max(i32(-1i) * -24807i, 31131i)));
    let var_4 = _wgslsmith_add_vec2_i32(~_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b.xy, abs(var_3.yx), vec2<i32>(u_input.b.x, u_input.b.x)), vec2<i32>(78742i | u_input.b.x, -u_input.b.x), vec2<i32>(i32(-1i) * -47026i, u_input.b.x)), abs(vec2<i32>(2147483647i, 10334i)));
    return true;
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(314f * 401f))), -1111f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -466f)), _wgslsmith_f_op_f32(-1385f * -711f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-273f, 1079f))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-1434f, -584f)), 812f)))));
    let var_1 = Struct_3(Struct_2(arg_1, min(_wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(arg_0, 32611u)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, arg_0), vec2<u32>(26866u, u_input.a)), vec2<u32>(57073u, u_input.a) ^ vec2<u32>(4373u, arg_0)), abs(max(vec2<u32>(1u, 60025u), vec2<u32>(arg_0, arg_0)))), u_input.b.x), 34925u, Struct_1(!arg_1.yyw), ~u_input.b.x, -1365f);
    var var_2 = _wgslsmith_f_op_f32(var_0.x - 1243f) < _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.e)) * -1000f), _wgslsmith_div_f32(var_1.e, var_0.x))));
    var var_3 = select(select(select(vec4<bool>(arg_2, true, false | arg_2, arg_1.x), !vec4<bool>(true, false, true, var_1.c.a.x), func_1()), select(arg_1, arg_1, arg_2), vec4<bool>(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f) <= _wgslsmith_f_op_f32(select(var_0.x, var_1.e, true)), var_1.a.a.x, func_1())), vec4<bool>(!(!(!var_1.c.a.x)), any(select(select(arg_1.wy, var_1.a.a.zy, var_1.a.a.x), !arg_1.xy, vec2<bool>(false, arg_2))), arg_1.x, !arg_1.x && false), var_1.a.a.x);
    var_2 = var_3.x;
    return Struct_2(arg_1, vec2<u32>(~var_1.a.b.x, ~_wgslsmith_mult_u32(var_1.b, abs(u_input.a))), -((~var_1.a.c | ~var_1.d) | -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(abs(u_input.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1464f, 845f))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1458f, 1612f), vec2<f32>(433f, 158f)))) * vec2<f32>(1f, 1f)) - vec2<f32>(_wgslsmith_f_op_f32(trunc(478f)), _wgslsmith_f_op_f32(f32(-1f) * -163f))), func_4(86489u, select(vec4<bool>(any(vec2<bool>(false, true)), func_1(), all(vec3<bool>(true, false, true)), all(vec3<bool>(true, true, true))), vec4<bool>(true, true, true, true), select(true, u_input.a <= 4294967295u, false)), any(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false)))));
    var_0 = Struct_4(var_0.a, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(var_0.b, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-301f, 124f)))))))), func_4(countOneBits(~abs(u_input.a)), select(select(vec4<bool>(var_0.c.a.x, true, false, var_0.c.a.x), vec4<bool>(false, var_0.c.a.x, false, var_0.c.a.x), vec4<bool>(false, var_0.c.a.x, var_0.c.a.x, var_0.c.a.x)), !var_0.c.a, func_4(var_0.c.b.x ^ 30483u, select(vec4<bool>(false, false, var_0.c.a.x, false), var_0.c.a, var_0.c.a.x), !var_0.c.a.x).a), false));
    var var_1 = _wgslsmith_f_op_f32(-var_0.b.x);
    var var_2 = true;
    var var_3 = Struct_4(abs(-1i), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-169f, var_0.b.x))))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, _wgslsmith_f_op_f32(204f + var_0.b.x))))), func_4(4509u, select(func_4(var_0.c.b.x, func_4(20875u, var_0.c.a, true).a, func_4(7005u, var_0.c.a, var_0.c.a.x).a.x).a, select(vec4<bool>(var_0.c.a.x, true, var_0.c.a.x, true), vec4<bool>(var_0.c.a.x, true, false, false), any(var_0.c.a)), all(var_0.c.a.yxy)), false));
    var var_4 = Struct_2(func_4(~(~abs(var_3.c.b.x)), vec4<bool>(false, all(!var_3.c.a), true, var_0.c.a.x & any(var_3.c.a.xx)), var_3.c.a.x).a, ~var_0.c.b, firstTrailingBit(min(max(2147483647i, -var_0.a), _wgslsmith_mult_i32(-2147483647i, firstLeadingBit(var_3.c.c)))));
    var_3 = Struct_4(1i, var_0.b, Struct_2(vec4<bool>(false, select(var_3.c.a.x, any(vec2<bool>(false, false)), var_3.c.a.x), true, true), max(var_3.c.b, var_3.c.b), var_0.a));
    let var_5 = _wgslsmith_add_vec4_u32(~(~(~vec4<u32>(4294967295u, 1u, 6387u, var_3.c.b.x))), vec4<u32>(~4294967295u, u_input.a, 30264u, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_div_i32(u_input.b.x, u_input.b.x) & -_wgslsmith_mod_i32(40734i, -1i)), var_0.c.b, var_3.c.b.x, firstLeadingBit(~var_5));
}

