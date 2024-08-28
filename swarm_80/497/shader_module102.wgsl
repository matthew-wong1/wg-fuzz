struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: i32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: Struct_1) -> bool {
    global0 = abs(7225u);
    var var_0 = Struct_2(select(global1.a, global1.a, (1115f < arg_1.x) == true), -(-1i >> (_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, arg_0.x), vec4<u32>(u_input.c, u_input.c, 1u, u_input.c)), firstLeadingBit(vec4<u32>(8193u, arg_2.a.x, arg_2.a.x, arg_2.a.x))) % 32u)), global1.c, abs(-global1.c.c.x), ~select(u_input.d, vec3<i32>(-23816i, -19571i ^ arg_2.b.x, _wgslsmith_dot_vec2_i32(arg_2.c.yw, vec2<i32>(1i, global1.e.x))), global1.a));
    global1 = Struct_2(~u_input.d.x > _wgslsmith_sub_i32(_wgslsmith_div_i32(0i, abs(u_input.d.x)), -43901i), ((-43508i >> (0u % 32u)) & (global1.b >> (~arg_0.x % 32u))) << (_wgslsmith_mult_u32(0u, 1u) % 32u), Struct_1(vec2<u32>(_wgslsmith_dot_vec2_u32(global1.c.a, reverseBits(var_0.c.a)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.c.a.x, 4294967295u, arg_0.x), vec4<u32>(global1.c.a.x, arg_0.x, var_0.c.a.x, 30130u))), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, -2147483647i, arg_2.d, global1.c.b.x) & _wgslsmith_add_vec4_i32(arg_2.c, vec4<i32>(global1.e.x, global1.d, -5520i, -2147483647i)), arg_2.c, vec4<i32>(1i ^ global1.b, -57616i, _wgslsmith_clamp_i32(global1.d, 1i, -56652i), -arg_2.d)), abs(vec4<i32>(reverseBits(arg_2.b.x), global1.c.c.x, -12295i, select(-1i, 18701i, true))), global1.e.x), -45224i, vec3<i32>(~_wgslsmith_dot_vec2_i32(-arg_2.c.xz, _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, global1.d), vec2<i32>(2147483647i, arg_2.c.x))), -_wgslsmith_add_i32(0i, 38877i), abs(13781i)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, -195f));
    var_0 = Struct_2(global1.a, u_input.d.x, arg_2, ~u_input.b, abs((arg_2.b.zxx << (vec3<u32>(4294967295u, global1.c.a.x, 6272u) % vec3<u32>(32u))) | (var_0.c.b.xww << (vec3<u32>(var_0.c.a.x, 3876u, 0u) % vec3<u32>(32u)))));
    return all(vec2<bool>(true, true));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1) -> vec4<f32> {
    global1 = Struct_2((func_3(global1.c.a, _wgslsmith_div_vec3_f32(vec3<f32>(1051f, -578f, -807f), vec3<f32>(-1014f, 1091f, -621f)), Struct_1(u_input.a, arg_1.c, global1.c.c, global1.d)) || true) || true, _wgslsmith_sub_i32(~(_wgslsmith_clamp_i32(-2147483647i, 6539i, 0i) ^ (-26708i << (0u % 32u))), global1.d | global1.e.x), arg_1, -_wgslsmith_div_i32(1i, ~1i), global1.c.c.yww);
    global1 = Struct_2(true, -u_input.e, arg_1, _wgslsmith_clamp_i32(global1.b, ~u_input.d.x, -1i), global1.e);
    let var_0 = Struct_2(true, _wgslsmith_sub_i32(firstTrailingBit(~(-2147483647i) & _wgslsmith_div_i32(u_input.e, arg_1.b.x)), 85773i), Struct_1(u_input.a, select(global1.c.c, ~select(vec4<i32>(-9462i, global1.c.b.x, 2147483647i, -2147483647i), arg_1.c, vec4<bool>(global1.a, arg_0.x, arg_0.x, true)), !select(vec4<bool>(false, global1.a, false, true), vec4<bool>(true, false, arg_0.x, true), arg_0)), _wgslsmith_mult_vec4_i32(countOneBits(arg_1.b), -vec4<i32>(global1.b, global1.e.x, -3537i, 10261i) & _wgslsmith_mult_vec4_i32(vec4<i32>(0i, global1.d, arg_1.d, u_input.e), vec4<i32>(-17122i, -2147483647i, -10146i, -295i))), _wgslsmith_div_i32(_wgslsmith_clamp_i32(abs(-2892i), 1i, countOneBits(3618i)), max(global1.e.x, arg_1.d >> (8236u % 32u)))), -14367i, vec3<i32>(11214i, _wgslsmith_mod_i32(global1.c.c.x, firstTrailingBit(_wgslsmith_mod_i32(global1.d, global1.c.d))), arg_1.d));
    var var_1 = _wgslsmith_div_i32(var_0.d, _wgslsmith_div_i32(~0i, var_0.c.d));
    let var_2 = arg_0.yxx;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(3083f, 395f, -127f, 973f), vec4<f32>(450f, 643f, -361f, 583f)))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(vec4<f32>(2061f, -1547f, -856f, -1015f) * vec4<f32>(-1000f, 1353f, 1228f, -721f)), select(vec4<bool>(true, true, false, true), arg_0, arg_0.x)))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: vec2<f32>) -> Struct_2 {
    global0 = u_input.c;
    var var_0 = -1i;
    let var_1 = vec4<u32>(~(~27388u) >> ((_wgslsmith_mult_u32(u_input.a.x, 45954u ^ global1.c.a.x) >> (countOneBits(global1.c.a.x) % 32u)) % 32u), ~global1.c.a.x, u_input.c, 107511u);
    var var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_div_f32(-1553f, arg_2.x), arg_0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.wx))))), arg_0.zx));
    global0 = ~select(global1.c.a.x, select(81945u ^ u_input.c, 4294967295u, global1.a), all(!(!vec4<bool>(false, global1.a, true, global1.a))));
    return Struct_2(global1.a, global1.b & -countOneBits(~u_input.d.x), global1.c, _wgslsmith_mod_i32(firstLeadingBit(u_input.b), -1i) >> (countOneBits(global1.c.a.x) % 32u), global1.c.b.zxz);
}

fn func_1() -> Struct_2 {
    global1 = func_4(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1223f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -669f), -1281f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1557f) * _wgslsmith_f_op_f32(min(1000f, 983f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(563f - -626f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_2(!vec4<bool>(global1.a, false, false, true), global1.c))))), abs(u_input.b), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-281f, 368f)) * -507f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(910f + -165f))));
    global0 = ~_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_div_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 114244u, global1.c.a.x, 1u), vec4<u32>(u_input.c, global1.c.a.x, 0u, 15736u)))) | ~(1u >> (~firstTrailingBit(global1.c.a.x) % 32u));
    global0 = ~func_4(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1369f, 523f, global1.a)), _wgslsmith_f_op_f32(1532f + -384f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-108f - 1000f), 2556f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1891f * -763f), _wgslsmith_f_op_f32(1230f - -625f), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-977f)) * 496f)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.d, u_input.d), -global1.b), u_input.e), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec4_f32(func_2(select(vec4<bool>(global1.a, false, global1.a, false), vec4<bool>(false, false, global1.a, global1.a), vec4<bool>(global1.a, global1.a, global1.a, true)), global1.c)).xw, vec2<f32>(-594f, _wgslsmith_div_f32(2141f, 150f)), !func_3(vec2<u32>(1u, 25806u), vec3<f32>(-1074f, 1262f, 222f), Struct_1(vec2<u32>(u_input.a.x, 0u), vec4<i32>(u_input.b, 37866i, 2147483647i, 1i), global1.c.c, 2147483647i))))).c.a.x;
    var var_0 = 1u;
    var_0 = max(u_input.a.x, _wgslsmith_mult_u32(_wgslsmith_sub_u32(~u_input.c, _wgslsmith_div_u32(0u, ~u_input.a.x)), 4294967295u));
    return func_4(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1841f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(477f)), _wgslsmith_div_f32(-1362f, 905f)))), 1f, -1682f), _wgslsmith_clamp_i32(2147483647i, abs(select(max(u_input.e, u_input.e), global1.e.x, any(vec4<bool>(global1.a, false, true, global1.a)))), 1i), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(max(158f, 1061f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1353f, -2267f))))))));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> i32 {
    global1 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(545f, arg_0, arg_0, -1751f), vec4<f32>(1007f, 458f, arg_0, -582f), true)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-243f, -147f, arg_0, arg_0), vec4<f32>(arg_0, 425f, arg_0, arg_0))), !vec4<bool>(arg_1.a, arg_1.a, global1.a, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0, -901f, arg_0, arg_0))))))), -43401i, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0), -157f) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-686f, 1122f), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(150f, arg_0), vec2<f32>(-2504f, arg_0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-675f, -659f)))), select(select(vec2<bool>(global1.a, arg_1.a), vec2<bool>(true, true), true), select(vec2<bool>(true, global1.a), vec2<bool>(false, true), vec2<bool>(arg_1.a, global1.a)), global1.a)))));
    let var_0 = Struct_1(_wgslsmith_add_vec2_u32((arg_1.c.a & ~vec2<u32>(19527u, 4294967295u)) << (vec2<u32>(~17962u, firstLeadingBit(arg_1.c.a.x)) % vec2<u32>(32u)), vec2<u32>(arg_2.a.x, 1u)), vec4<i32>(global1.d, _wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.e, -57292i), ~arg_2.b.x, ~abs(7411i)), 2147483647i, _wgslsmith_mod_i32(_wgslsmith_div_i32(arg_3, -58728i), ~global1.e.x) >> (arg_1.c.a.x % 32u)), arg_1.c.c | func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(538f, arg_0, arg_0, -2010f), vec4<f32>(-782f, 293f, 1124f, 145f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 1000f, arg_0) - vec4<f32>(1000f, arg_0, -661f, arg_0))), -1502i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 624f)))).c.b, 39882i);
    let var_1 = Struct_2(!(!(true | arg_1.a) != all(!vec2<bool>(arg_1.a, false))), arg_2.d, arg_1.c, arg_3, vec3<i32>(arg_2.b.x & max(24426i, 4687i), countOneBits(~(-2147483647i)), _wgslsmith_div_i32(var_0.d, 68433i)));
    var var_2 = var_1.c;
    var_2 = Struct_1(_wgslsmith_mult_vec2_u32(global1.c.a, select(arg_1.c.a, _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 28803u), vec2<u32>(1u, var_0.a.x), global1.c.a), ~vec2<u32>(55203u, 1u)), vec2<bool>(global1.a, true))), firstLeadingBit(reverseBits(var_0.b) ^ (vec4<i32>(-2147483647i, var_1.c.c.x, -19246i, -1i) >> (~vec4<u32>(arg_2.a.x, 0u, 0u, arg_1.c.a.x) % vec4<u32>(32u)))), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 2147483647i, firstLeadingBit(~(-2147483647i)), 2147483647i), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(~global1.c.b, _wgslsmith_mult_vec4_i32(vec4<i32>(var_2.c.x, arg_2.d, 0i, 1i), global1.c.c)), ~_wgslsmith_add_vec4_i32(vec4<i32>(-55832i, global1.b, 46342i, global1.c.d), vec4<i32>(1i, var_0.b.x, 2147483647i, 74545i)))), -reverseBits(-1307i));
    return _wgslsmith_div_i32(18777i, _wgslsmith_div_i32(var_1.d, global1.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2968f;
    let var_1 = func_5(var_0, func_1(), func_1().c, global1.c.d);
    global0 = _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(4294967295u, global1.c.a.x, 50704u, global1.c.a.x)) ^ ~_wgslsmith_mod_vec4_u32(~vec4<u32>(18478u, 1u, u_input.a.x, u_input.c), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 25552u, u_input.a.x, 10414u), vec4<u32>(global1.c.a.x, 61450u, 0u, global1.c.a.x))), select(~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.c.a.x, 9692u, u_input.a.x, 48147u), vec4<u32>(u_input.a.x, 4294967295u, u_input.c, u_input.c)), firstLeadingBit(vec4<u32>(45927u, u_input.c, 4294967295u, 8198u))), vec4<u32>(0u, global1.c.a.x, _wgslsmith_div_u32(4294967295u, ~global1.c.a.x), u_input.c), select(!vec4<bool>(global1.a, true, false, true), !select(vec4<bool>(false, true, true, global1.a), vec4<bool>(global1.a, false, false, global1.a), vec4<bool>(global1.a, global1.a, global1.a, global1.a)), vec4<bool>(global1.a, true, u_input.d.x > var_1, global1.a))));
    global1 = func_1();
    var var_2 = global1.a;
    let x = u_input.a;
    s_output = StorageBuffer(~(~select(select(global1.c.b.ww, vec2<i32>(-29995i, var_1), global1.a), global1.c.c.zz, !global1.a)), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.d.xx & vec2<i32>(-2147483647i, u_input.e), min(vec2<i32>(var_1, 34179i), vec2<i32>(var_1, 1i))), ~vec2<i32>(global1.d, 20717i)) | _wgslsmith_mod_vec2_i32(max(vec2<i32>(u_input.e, global1.c.c.x) | global1.c.b.xz, vec2<i32>(27380i, -7115i)), _wgslsmith_sub_vec2_i32(u_input.d.xx, -u_input.d.yx)), _wgslsmith_clamp_vec2_i32(-u_input.d.yx, vec2<i32>(-2147483647i, _wgslsmith_mult_i32(0i, var_1)), _wgslsmith_div_vec2_i32(global1.e.xz, u_input.d.yz) >> ((u_input.a >> ((global1.c.a | u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u))), ~vec3<u32>(~4294967295u, reverseBits(1u << (global1.c.a.x % 32u)), 40661u >> ((global1.c.a.x << (4294967295u % 32u)) % 32u)), vec2<i32>(~_wgslsmith_mult_i32(2147483647i, -global1.b), firstTrailingBit(~(-101050i)) >> (~4294967295u % 32u)));
}

