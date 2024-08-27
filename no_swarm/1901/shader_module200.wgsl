struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec4<f32>) -> bool {
    let var_0 = (min(abs(2147483647i), -2147483647i) << ((~_wgslsmith_sub_u32(u_input.c.x, 24814u) & 0u) % 32u)) << (abs(~(u_input.b << (0u % 32u))) % 32u);
    var var_1 = vec4<bool>(all(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), false)), true, any(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true))) || any(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(false, false, true), u_input.d == var_0)), any(vec4<bool>(true, true, true, true)));
    var_1 = !select(select(vec4<bool>(true, true, !var_1.x, all(vec2<bool>(var_1.x, true))), vec4<bool>(var_1.x, false, !var_1.x, 1466f > arg_0.x), select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), select(vec4<bool>(true, false, true, var_1.x), vec4<bool>(false, false, var_1.x, var_1.x), var_1.x), true)), !vec4<bool>(var_0 > var_0, true, var_1.x, !var_1.x), !(!vec4<bool>(var_1.x, var_1.x, true, false)));
    let var_2 = arg_0.x;
    var var_3 = u_input.e.zy;
    return true;
}

fn func_2() -> bool {
    let var_0 = Struct_3(Struct_2(Struct_1(1i)));
    let var_1 = !all(vec3<bool>(true, select(all(vec2<bool>(false, false)), u_input.c.x < u_input.c.x, all(vec2<bool>(true, false))), !func_3(vec4<f32>(1560f, 763f, -285f, 2140f))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) + _wgslsmith_f_op_f32(100f * -285f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(991f + -1220f), !var_1))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-590f - -751f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1026f, -117f)))) * _wgslsmith_f_op_f32(-1437f + _wgslsmith_f_op_f32(select(555f, _wgslsmith_f_op_f32(f32(-1f) * -460f), var_1))));
    var var_3 = ~vec4<u32>(abs(max(1u, 0u)), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(18255u, 50585u, 4294967295u, u_input.a.x), vec4<u32>(4294967295u, u_input.c.x, 116448u, u_input.b)), ~vec4<u32>(u_input.a.x, 1u, u_input.c.x, u_input.c.x)), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(0u, u_input.b)), vec2<u32>(4294967295u, u_input.c.x)), u_input.a.x) >> (~(vec4<u32>(~u_input.b, _wgslsmith_sub_u32(1u, u_input.c.x), max(11348u, 69282u), u_input.a.x) | ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 83684u, u_input.a.x, 64702u), vec4<u32>(7899u, 0u, 11857u, 36563u))) % vec4<u32>(32u));
    var_2 = 261f;
    return true;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: u32) -> Struct_2 {
    var var_0 = func_2();
    return Struct_2(arg_2.a);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_4) -> f32 {
    var var_0 = Struct_2(func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-220f, -280f, -500f))) * vec3<f32>(-1106f, 320f, 303f)) * vec3<f32>(330f, -1238f, _wgslsmith_f_op_f32(1431f - -850f))), select(!vec3<bool>(arg_2.b.x, arg_2.b.x, arg_2.b.x), vec3<bool>(arg_2.b.x, true, !arg_2.b.x), arg_2.b.x && (u_input.a.x >= arg_2.c.x)), Struct_4(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1989f, -891f, 717f)), !arg_2.b, arg_2, 4294967295u << (u_input.a.x % 32u)).a, select(arg_2.b, select(arg_2.b, vec3<bool>(arg_2.b.x, arg_2.b.x, true), arg_2.b), arg_2.b), abs(u_input.c), ~reverseBits(arg_2.d), vec4<u32>(12765u, min(u_input.a.x, 1u), u_input.b, u_input.b & u_input.c.x)), 1u).a);
    let var_1 = Struct_4(var_0.a, vec3<bool>(arg_2.b.x, arg_2.b.x && arg_2.b.x, true), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 4294967295u, u_input.b), ~vec3<u32>(arg_2.e.x, arg_2.c.x, u_input.b)), 4294967295u), 10394u), -arg_2.d, firstTrailingBit(arg_2.e));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-493f, 850f)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-707f, -571f) + 663f)))));
    let var_3 = func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(348f, var_2, var_2)), vec3<f32>(1289f, var_2, 654f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2, var_2))), _wgslsmith_f_op_f32(max(var_2, _wgslsmith_f_op_f32(var_2 - -912f))), var_2)), select(select(!var_1.b, select(select(arg_2.b, var_1.b, arg_2.b.x), vec3<bool>(true, true, true), !var_1.b), func_2()), vec3<bool>(true, false, !var_1.b.x), !arg_2.b), var_1, arg_2.e.x ^ ((u_input.a.x >> (max(80979u, 6524u) % 32u)) ^ u_input.c.x));
    let var_4 = arg_2.e.x ^ 33530u;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(217f)), _wgslsmith_f_op_f32(-var_2)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_2, var_2)), var_2)), 399f, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-(~(~(-20087i))));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1477f, _wgslsmith_f_op_f32(ceil(1715f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-826f - -1036f)))), _wgslsmith_f_op_f32(func_4(u_input.e.x, func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-802f, 665f, -1541f)), vec3<bool>(true, true, true), Struct_4(var_0, vec3<bool>(true, true, true), u_input.a, vec4<i32>(var_0.a, -8134i, 1i, u_input.d), vec4<u32>(u_input.c.x, u_input.a.x, 1u, 8661u)), u_input.b), Struct_4(var_0, vec3<bool>(true, true, true), vec2<u32>(4787u, u_input.c.x), -vec4<i32>(-55431i, 15262i, u_input.e.x, 2147483647i), vec4<u32>(1u, u_input.c.x, 4294967295u, u_input.b) & vec4<u32>(u_input.b, u_input.b, 0u, u_input.b)))), !(!any(vec3<bool>(false, true, false))))), _wgslsmith_f_op_f32(func_4(_wgslsmith_clamp_i32(-2147483647i, 0i, u_input.d), func_1(vec3<f32>(-151f, -134f, 1082f), vec3<bool>(true, true, true), Struct_4(var_0, vec3<bool>(false, true, false), ~vec2<u32>(22645u, 7416u), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.a, var_0.a, var_0.a, u_input.d), vec4<i32>(2147483647i, 1i, u_input.d, 0i)), vec4<u32>(1u, u_input.c.x, u_input.b, u_input.a.x) | vec4<u32>(u_input.a.x, u_input.a.x, u_input.c.x, u_input.b)), ~(~4294967295u)), Struct_4(var_0, vec3<bool>(true, true, true), u_input.a, reverseBits(~vec4<i32>(u_input.e.x, var_0.a, 0i, 8991i)), vec4<u32>(u_input.c.x, ~32732u, _wgslsmith_clamp_u32(0u, 70464u, 4294967295u), u_input.c.x))))));
    let var_2 = Struct_4(Struct_1(var_0.a), !(!vec3<bool>(true, any(vec4<bool>(false, false, false, true)), true)), ~vec2<u32>(4294967295u, _wgslsmith_dot_vec2_u32(u_input.c, abs(u_input.a))), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(abs(u_input.d), ~u_input.e.x, var_0.a, -52476i), vec4<i32>(var_0.a, ~var_0.a, u_input.d << (u_input.c.x % 32u), -1i))), ~(~(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 58726u, 0u, 3483u), vec4<u32>(0u, 4294967295u, 0u, 36748u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(1097f)), select(vec4<i32>(~(14305i << (1u % 32u)), u_input.e.x, 1i, u_input.d | firstLeadingBit(-38092i)), _wgslsmith_sub_vec4_i32((var_2.d >> (vec4<u32>(0u, var_2.c.x, u_input.a.x, 4294967295u) % vec4<u32>(32u))) << (firstLeadingBit(var_2.e) % vec4<u32>(32u)), var_2.d), select(select(!vec4<bool>(false, false, true, var_2.b.x), !vec4<bool>(false, var_2.b.x, true, true), true), vec4<bool>(false, true, all(vec4<bool>(var_2.b.x, var_2.b.x, true, true)), false), !any(vec2<bool>(true, var_2.b.x)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1073f * _wgslsmith_f_op_f32(var_1 * var_1)), _wgslsmith_f_op_f32(abs(var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, var_1, var_2.b.x))), -341f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, var_1, 713f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1008f, var_1, -584f, var_1))) - vec4<f32>(806f, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-542f + 1000f), _wgslsmith_f_op_f32(-1000f - var_1)))), vec2<i32>(_wgslsmith_sub_i32(0i, var_2.d.x), countOneBits(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.e.xy, vec2<i32>(-2147483647i, u_input.e.x)), vec2<i32>(-8411i, -15259i)))), ~((~21232u ^ u_input.b) ^ u_input.a.x));
}

