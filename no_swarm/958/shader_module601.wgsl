struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: vec4<u32>) -> f32 {
    var var_0 = arg_1;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1 + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1166f, var_0.x) + vec3<f32>(-257f, 381f, arg_1.x)) + _wgslsmith_f_op_vec3_f32(-arg_1))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -331f), var_0.x, true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -817f)))));
    var var_1 = Struct_1(true, vec3<f32>(-235f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(min(-303f, arg_1.x)), true)), var_0.x)), var_0.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.x, arg_1.x, 867f, _wgslsmith_f_op_f32(-477f + arg_1.x)))));
    var_1 = Struct_1(false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(615f, arg_1.x)))), _wgslsmith_f_op_vec4_f32(var_1.c + vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), -1520f)), _wgslsmith_f_op_f32(f32(-1f) * -521f), var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x)))));
    return _wgslsmith_f_op_f32(step(var_1.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b.x, var_1.c.x) * arg_1.x)), 472f))));
}

fn func_2(arg_0: vec4<bool>, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_1(any(select(arg_0.yw, vec2<bool>(arg_0.x, all(vec4<bool>(arg_0.x, false, arg_0.x, true))), select(!vec2<bool>(false, arg_0.x), vec2<bool>(true, true), arg_0.x))), vec3<f32>(_wgslsmith_f_op_f32(157f - 2011f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1317f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1186f * _wgslsmith_f_op_f32(f32(-1f) * -130f)) * 1f)), vec4<f32>(_wgslsmith_f_op_f32(abs(303f)), -310f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(968f - _wgslsmith_f_op_f32(func_3(0i, vec3<f32>(-730f, -1202f, 622f), vec4<u32>(0u, arg_1, 59240u, 1u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -257f) * _wgslsmith_div_f32(-548f, -1903f))), 1050f));
    let var_1 = _wgslsmith_sub_i32(max(~(-2147483647i), -30793i), 0i);
    var_0 = Struct_1(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-336f, -880f, var_0.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_0.c.x, var_0.c.x)), select(var_0.a, var_0.a, var_0.a)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(129f, var_0.c.x, var_0.b.x, var_0.b.x), _wgslsmith_f_op_vec4_f32(min(var_0.c, var_0.c))), var_0.c)));
    let var_2 = 1u;
    var_0 = Struct_1(!(!(_wgslsmith_div_i32(1i, var_1) <= abs(41994i))), vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-379f * var_0.c.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x + var_0.b.x))), _wgslsmith_div_f32(738f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + 967f), 245f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.x, var_0.c.x, var_0.b.x, 460f), vec4<f32>(var_0.b.x, -130f, -1641f, var_0.c.x), vec4<bool>(var_0.a, false, arg_0.x, var_0.a)))))));
    return Struct_1(all(!select(vec4<bool>(false, false, true, false), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, var_0.a), vec4<bool>(false, var_0.a, true, arg_0.x), arg_0), arg_0)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_0.c.zwx - var_0.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(584f)), _wgslsmith_f_op_f32(207f + 1000f), _wgslsmith_f_op_f32(-var_0.b.x)) * var_0.c.yyz))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_0.c - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c) - var_0.c)), var_0.c, select(!select(vec4<bool>(false, true, arg_0.x, arg_0.x), arg_0, arg_0.x), arg_0, vec4<bool>(arg_0.x, 0u > arg_1, true, var_0.a)))));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> vec2<i32> {
    var var_0 = Struct_1(arg_0.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b), arg_0.b), arg_0.c);
    let var_1 = _wgslsmith_mod_u32(1u, ~(~(~_wgslsmith_mult_u32(86968u, 6670u))));
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.x, var_0.b.x)))), vec2<f32>(-624f, arg_0.b.x), vec2<bool>(var_1 < ~_wgslsmith_dot_vec4_u32(vec4<u32>(33014u, var_1, 48996u, var_1), vec4<u32>(4294967295u, var_1, var_1, var_1)), false)));
    var var_4 = Struct_1(var_0.a, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.c.x)) * arg_0.c.x), _wgslsmith_f_op_f32(min(161f, _wgslsmith_f_op_f32(sign(610f))))), 253f, _wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_f_op_f32(f32(-1f) * -364f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) * _wgslsmith_f_op_f32(ceil(463f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(585f - -1184f), var_3.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.b.x)))), _wgslsmith_f_op_f32(404f - arg_0.c.x), _wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(351f - 389f)))));
    return firstTrailingBit(~select(vec2<i32>(u_input.a, u_input.a), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.b.x), u_input.b.xx), false) & _wgslsmith_clamp_vec2_i32(u_input.b.yx, ~(vec2<i32>(-13437i, 0i) << (vec2<u32>(var_1, 22108u) % vec2<u32>(32u))), ~(~vec2<i32>(u_input.a, u_input.a))));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -497f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -809f) + _wgslsmith_f_op_f32(-912f + _wgslsmith_f_op_f32(1497f * 1463f)))));
    let var_1 = select(select(!select(vec2<bool>(true, false), vec2<bool>(true, false), false), select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, false), any(vec4<bool>(false, true, true, false))), true), _wgslsmith_mult_i32(arg_0.x, -2147483647i) < (arg_0.x & 644i)), select(!vec2<bool>(any(vec3<bool>(true, false, true)), all(vec4<bool>(false, true, true, true))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, false), vec2<bool>(any(vec2<bool>(true, false)), true)), vec2<bool>(!(arg_1.x != arg_1.x), true)), any(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false))) && false);
    let var_2 = func_2(select(vec4<bool>(!var_1.x, any(vec2<bool>(true, true)), select(var_1.x, true, all(vec4<bool>(var_1.x, true, var_1.x, true))), any(var_1)), vec4<bool>(true, var_1.x, !var_1.x || true, false), !(_wgslsmith_f_op_f32(f32(-1f) * -1000f) == _wgslsmith_f_op_f32(select(-890f, -1000f, var_1.x)))), arg_1.x);
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_2, _wgslsmith_f_op_vec3_f32(ceil(var_2.b)), vec4<u32>(4294967295u, arg_1.x, arg_1.x, 1u) >> (vec4<u32>(4294967295u, arg_1.x, 12301u, 0u) % vec4<u32>(32u))))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_2.b.x)), var_2.c.x), -841f) * var_2.b.x), true));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.x * var_2.c.x) + _wgslsmith_f_op_f32(func_3(arg_0.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.x, var_2.b.x, -2243f) * vec3<f32>(558f, var_2.c.x, 781f)), _wgslsmith_div_vec3_f32(vec3<f32>(var_2.b.x, 155f, var_2.b.x), vec3<f32>(var_2.c.x, var_2.c.x, var_2.c.x))), select(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.x, 1u, arg_1.x, arg_1.x), vec4<u32>(4294967295u, arg_1.x, 24849u, 1u)), ~vec4<u32>(0u, arg_1.x, 4294967295u, 1u), true)))));
    return var_2;
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    return arg_2;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = func_6(func_5(-select(vec4<i32>(-7347i, 13618i, u_input.a, u_input.b.x), -vec4<i32>(70632i, -1i, -50627i, u_input.a), !arg_0.a), vec3<u32>(~select(arg_1, 4294967295u, arg_2.a), select(36392u, ~arg_1, any(vec3<bool>(true, arg_2.a, true))), select(~3988u, arg_1, arg_0.a)), _wgslsmith_dot_vec2_i32(func_4(func_2(vec4<bool>(arg_2.a, false, arg_0.a, arg_2.a), 15920u), true), firstLeadingBit(vec2<i32>(7720i, u_input.b.x) | vec2<i32>(u_input.b.x, u_input.a)))), arg_0.c.x, arg_0);
    var var_1 = true;
    var_1 = func_2(vec4<bool>(_wgslsmith_f_op_f32(func_6(var_0, arg_3.x, Struct_1(true, vec3<f32>(2657f, -1000f, -795f), arg_2.c)).c.x - _wgslsmith_f_op_f32(floor(arg_2.b.x))) >= -1000f, true, func_5(-vec4<i32>(1i, -1i, u_input.a, -6739i), _wgslsmith_clamp_vec3_u32(~vec3<u32>(82995u, 4294967295u, arg_1), ~vec3<u32>(17703u, 34659u, arg_1), select(vec3<u32>(arg_1, 12053u, 2754u), vec3<u32>(arg_1, 4294967295u, 37638u), false)), u_input.b.x).a, func_2(!vec4<bool>(arg_2.a, false, arg_0.a, var_0.a), arg_1).a), 1u).a;
    let var_2 = true;
    var_1 = func_6(Struct_1(false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_2.b), _wgslsmith_f_op_vec3_f32(-arg_0.b), true))), vec4<f32>(716f, arg_3.x, _wgslsmith_div_f32(arg_0.b.x, _wgslsmith_f_op_f32(arg_2.b.x * 645f)), -1947f)), func_2(vec4<bool>(!(!var_0.a), !select(true, true, arg_2.a), !arg_0.a, arg_0.a), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 95829u), ~vec3<u32>(21455u, 29441u, arg_1)), arg_1)).c.x, func_6(Struct_1(u_input.b.x < (i32(-1i) * -47814i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-455f, var_0.c.x, 505f), vec3<f32>(var_0.c.x, -293f, -345f))), vec4<f32>(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(f32(-1f) * -767f), -447f, -2177f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1241f), arg_0.b.x)), arg_3.x), arg_0)).a;
    return func_6(func_5(vec4<i32>(_wgslsmith_sub_i32(u_input.a, -13880i), u_input.a, abs(-2147483647i), u_input.b.x) ^ select(reverseBits(vec4<i32>(u_input.a, u_input.b.x, 7608i, 1i)), firstLeadingBit(vec4<i32>(26659i, u_input.b.x, u_input.b.x, 2147483647i)), !arg_0.a), abs(~(~vec3<u32>(arg_1, arg_1, arg_1))), ~1i), func_6(arg_2, arg_2.b.x, Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(arg_2.b + vec3<f32>(1000f, arg_0.c.x, 440f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(863f, 651f, 885f, arg_3.x))))).b.x, Struct_1(func_5(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, 1i, 1i, 2147483647i), vec4<i32>(u_input.b.x, u_input.b.x, -18319i, u_input.b.x), vec4<i32>(0i, u_input.b.x, u_input.a, 409i)), _wgslsmith_div_vec4_i32(vec4<i32>(-62558i, u_input.a, u_input.b.x, u_input.b.x), vec4<i32>(u_input.a, -14058i, 9219i, -748i))), select(vec3<u32>(23831u, arg_1, arg_1), vec3<u32>(arg_1, 1943u, 3813u), vec3<bool>(var_0.a, var_0.a, false)), -u_input.b.x).a, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.c.wyy), vec3<f32>(-136f, 194f, 352f)), vec3<f32>(func_2(vec4<bool>(true, var_2, true, false), arg_1).b.x, _wgslsmith_f_op_f32(-var_0.c.x), -372f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.x, var_0.b.x, arg_2.b.x, var_0.b.x) - var_0.c))));
}

fn func_7(arg_0: u32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> bool {
    var var_0 = Struct_1(!(_wgslsmith_add_u32(1u, arg_0) > _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, arg_0, 1u), vec3<u32>(88356u, 15897u, 1u))) | (true && arg_3.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(vec4<i32>(u_input.a, 2147483647i, -56460i, -21254i), vec3<u32>(arg_0, 4294967295u, 28884u), u_input.b.x).c.yyy * vec3<f32>(arg_3.c.x, arg_1.b.x, -1000f))) - arg_3.c.zxz), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-func_2(!vec4<bool>(arg_3.a, true, arg_1.a, arg_3.a), 0u).c) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(arg_3.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.x, arg_3.c.x, -1196f, -1710f)))) + vec4<f32>(761f, 1110f, _wgslsmith_f_op_f32(arg_3.b.x + -1000f), 779f))));
    let var_1 = 4294967295u;
    var_0 = Struct_1(true, arg_3.c.wxx, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(108f, 1415f, 1890f, 1373f), vec4<f32>(arg_3.b.x, var_0.b.x, 1985f, var_0.c.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-697f, arg_1.b.x, 227f, arg_3.c.x) * arg_3.c)))));
    let var_2 = select(!select(vec2<bool>(arg_1.a, !arg_1.a), vec2<bool>(false, func_1(arg_1, 18291u, arg_3, vec2<f32>(arg_3.b.x, -1264f)).a), var_0.a), select(select(vec2<bool>(!arg_1.a, u_input.b.x != u_input.a), vec2<bool>(true & var_0.a, var_0.a), select(vec2<bool>(true, arg_1.a), !vec2<bool>(true, var_0.a), all(vec3<bool>(var_0.a, false, false)))), select(select(select(vec2<bool>(arg_3.a, true), vec2<bool>(false, false), vec2<bool>(false, var_0.a)), !vec2<bool>(arg_1.a, false), false), !(!vec2<bool>(false, arg_3.a)), vec2<bool>(var_0.a, arg_1.b.x <= var_0.b.x)), vec2<bool>(true, arg_1.a)), !vec2<bool>(!func_6(Struct_1(arg_1.a, vec3<f32>(-350f, -680f, 500f), arg_3.c), 141f, arg_1).a, false));
    var_0 = arg_1;
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true != (true | func_7(1u, func_1(Struct_1(false, vec3<f32>(1006f, 375f, -1018f), vec4<f32>(1176f, 1196f, -2790f, 756f)), 47994u, Struct_1(false, vec3<f32>(1971f, -462f, 1277f), vec4<f32>(2639f, 1000f, -1925f, 164f)), vec2<f32>(-1151f, -375f)), _wgslsmith_div_vec3_i32(vec3<i32>(15712i, -1i, u_input.a), u_input.b), func_1(Struct_1(true, vec3<f32>(106f, -275f, -1000f), vec4<f32>(-470f, 927f, 818f, -846f)), 4294967295u, Struct_1(true, vec3<f32>(-177f, 758f, -1000f), vec4<f32>(938f, -1221f, -147f, -699f)), vec2<f32>(-321f, -514f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-724f * -134f) - -476f), _wgslsmith_f_op_f32(f32(-1f) * -200f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-768f)) - _wgslsmith_f_op_f32(904f + 1691f))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(578f + 385f)), _wgslsmith_f_op_f32(select(-929f, _wgslsmith_f_op_f32(-303f - -194f), true)), -246f)), vec4<f32>(func_5(firstLeadingBit(vec4<i32>(36996i, u_input.b.x, u_input.a, u_input.a)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 7789u, 76249u), reverseBits(vec3<u32>(1u, 7934u, 51692u))), -abs(29521i)).b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-func_2(vec4<bool>(false, false, true, true), 1u).c.x))), 156f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2648f + -973f))) + 182f)));
    let var_1 = _wgslsmith_f_op_f32(-2459f + var_0.c.x);
    let var_2 = true;
    let var_3 = ~_wgslsmith_mult_u32(1u, min(~abs(18231u), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(28559u, 59891u, 1u, 1u), vec4<u32>(32551u, 1u, 4294967295u, 4294967295u), vec4<u32>(10651u, 16393u, 1u, 1u)), ~vec4<u32>(0u, 1u, 67400u, 36864u))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1314f * var_1));
    let var_5 = abs(select(~vec2<u32>(firstLeadingBit(17704u), abs(12504u)), reverseBits(abs(vec2<u32>(var_3, var_3))) ^ select(vec2<u32>(92490u, 1513u) << (vec2<u32>(var_3, var_3) % vec2<u32>(32u)), abs(vec2<u32>(var_3, 816u)), var_2), select(!(!var_2), false, true)));
    let var_6 = 1291u;
    let var_7 = _wgslsmith_mod_vec3_u32(reverseBits(~vec3<u32>(_wgslsmith_add_u32(9242u, 40694u), ~var_6, _wgslsmith_div_u32(62735u, 1u))), countOneBits(countOneBits(~vec3<u32>(var_3, 5644u, 280u))));
    var var_8 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.x, select(-(u_input.b.x ^ u_input.a) ^ u_input.a, u_input.b.x, true), -11994i << (1u % 32u), -_wgslsmith_mult_i32(countOneBits(-1i), -32377i), u_input.b.x);
}

