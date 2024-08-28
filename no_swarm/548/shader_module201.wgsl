struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: u32) -> vec4<f32> {
    global0 = Struct_1(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(319f, global0.a, global0.b.x, global0.a), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.b.x, global0.a, -1856f, 1995f))))))), 2147483647i);
    return _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_div_f32(-1228f, global0.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.b.x))))), _wgslsmith_f_op_f32(global0.b.x * 1339f))));
}

fn func_2(arg_0: u32) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(246f + 1404f))), ~u_input.b);
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(global0.b.x)), _wgslsmith_f_op_f32(-global0.a), true))))), _wgslsmith_f_op_vec4_f32(func_3(all(vec3<bool>(true, var_0.b <= 13496i, global0.b.x < global0.a)), 1u)), var_0.b);
    let var_1 = var_0;
    global0 = Struct_1(-1232f, vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), -143f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(356f, global0.a, false)) + -2326f)), _wgslsmith_f_op_f32(596f * _wgslsmith_f_op_f32(trunc(-1053f)))), -_wgslsmith_div_i32(var_1.b, _wgslsmith_clamp_i32(u_input.b, var_0.b, var_0.b)) << (u_input.a % 32u));
    let var_2 = firstLeadingBit(u_input.b);
    return Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.x * _wgslsmith_f_op_f32(f32(-1f) * -1543f)), _wgslsmith_f_op_f32(-var_1.a)))), _wgslsmith_add_i32(1i << (~_wgslsmith_div_u32(u_input.c, u_input.c) % 32u), ~(-1i)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    global0 = Struct_1(_wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(round(global0.a))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.a)) - _wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_f_op_f32(-578f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1215f), 529f, select(true, true, false)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(f32(-1f) * -947f), arg_0.b == arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(false, u_input.a)).x)), abs(_wgslsmith_add_i32(-35482i, ~(-24967i))));
    global0 = Struct_1(arg_1.a, global0.b, _wgslsmith_mult_i32(arg_0.b, arg_1.b));
    global0 = Struct_1(arg_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global0.b * vec4<f32>(global0.a, arg_0.a, 2519f, arg_1.a)), global0.b, true)))), _wgslsmith_dot_vec2_i32(vec2<i32>(45198i, _wgslsmith_mult_i32(max(u_input.b, global0.c), _wgslsmith_mod_i32(2147483647i, arg_0.b))), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(arg_1.b, arg_0.b), ~(~vec2<i32>(arg_1.b, arg_1.b)))));
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-300f, arg_1.a, arg_0.a, 1067f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(global0.b, global0.b)), global0.b))), arg_1.b);
    global0 = Struct_1(arg_0.a, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.b * _wgslsmith_f_op_vec4_f32(global0.b * vec4<f32>(arg_0.a, arg_0.a, 1394f, arg_0.a))), global0.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(true, firstTrailingBit(406u)))))), arg_0.b);
    return _wgslsmith_f_op_f32(round(arg_0.a));
}

fn func_5(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_2, arg_3: vec3<bool>) -> i32 {
    let var_0 = ~(~(39726u >> (reverseBits(arg_0.x) % 32u)));
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2.a)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * arg_2.a))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, global0.a, -2663f, global0.a), global0.b)) * vec4<f32>(arg_2.a, _wgslsmith_f_op_f32(select(global0.a, -586f, false)), global0.a, _wgslsmith_f_op_f32(step(-2730f, arg_1)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(global0.b - global0.b)))))), -44695i);
    let var_1 = Struct_1(_wgslsmith_div_f32(arg_2.a, _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_vec4_f32(func_3(true, u_input.c & u_input.a)).x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-339f, 700f, !arg_3.x)), arg_1, _wgslsmith_f_op_f32(max(global0.b.x, _wgslsmith_f_op_f32(1084f + -1000f))), arg_1)), 34486i);
    var var_2 = var_1;
    var var_3 = ~(~_wgslsmith_mod_vec4_u32(min(min(vec4<u32>(u_input.a, 47473u, 85422u, 12460u), vec4<u32>(1u, 32061u, u_input.c, 0u)), abs(vec4<u32>(u_input.c, 4294967295u, arg_0.x, var_0))), vec4<u32>(_wgslsmith_sub_u32(u_input.c, var_0), firstLeadingBit(31114u), reverseBits(var_0), arg_0.x)));
    return _wgslsmith_mod_i32(-reverseBits(_wgslsmith_mult_i32(0i, -13031i)) ^ arg_2.b, 1i);
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.b.x - -1451f), global0.a))), func_5(~vec2<u32>(u_input.a, u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(29059u), Struct_2(1000f, u_input.b))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a - global0.a))), Struct_2(_wgslsmith_f_op_f32(990f - _wgslsmith_f_op_vec4_f32(func_3(arg_0, u_input.c)).x), select(-global0.c, u_input.b, arg_0)), !vec3<bool>(u_input.c < 1u, true, true)));
    let var_1 = ~select(vec4<i32>(var_0.b, u_input.b, ~(0i << (u_input.a % 32u)), countOneBits(-u_input.b)), -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, -40974i, global0.c, 0i) >> (vec4<u32>(u_input.a, u_input.a, u_input.c, 13798u) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(2748i, u_input.b, global0.c, u_input.b))), all(!select(vec2<bool>(arg_0, false), vec2<bool>(false, false), vec2<bool>(arg_0, arg_0))));
    global0 = Struct_1(_wgslsmith_f_op_f32(-550f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - 188f) + 1000f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.b) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, global0.a, global0.b.x, 378f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.b * vec4<f32>(-976f, var_0.a, 188f, var_0.a)))))), ~(~global0.c));
    global0 = Struct_1(_wgslsmith_f_op_f32(func_4(var_0, var_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_0.a)))), var_0.a, var_0.a, global0.b.x)), u_input.b);
    var var_2 = var_1;
    return var_0;
}

fn func_6(arg_0: Struct_2) -> i32 {
    var var_0 = func_1(func_2(~_wgslsmith_mod_u32(4294967295u, u_input.c)).b <= arg_0.b);
    var_0 = func_2(1u);
    var_0 = arg_0;
    var_0 = arg_0;
    var var_1 = Struct_2(var_0.a, arg_0.b ^ 14340i);
    return firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_sub_i32(max(firstLeadingBit(2134i), 1i), var_1.b), -1i << (1u % 32u)));
}

fn func_7(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_2 {
    global0 = Struct_1(_wgslsmith_f_op_f32(-745f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a))), _wgslsmith_f_op_vec4_f32(-global0.b), _wgslsmith_dot_vec2_i32(vec2<i32>(abs(_wgslsmith_div_i32(-43226i, -2147483647i)), func_1(all(vec2<bool>(false, true))).b), select(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b, arg_0.x, arg_1.b), vec3<i32>(14354i, 56516i, 40507i)), _wgslsmith_add_i32(arg_0.x, global0.c)), vec2<i32>(-1i) * -arg_0, select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))))));
    let var_0 = vec4<bool>(true, true, true, true);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -826f)))) + 1f);
    global0 = Struct_1(_wgslsmith_f_op_f32(trunc(843f)), global0.b, -arg_0.x >> (abs(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), ~vec2<u32>(u_input.a, u_input.a))) % 32u));
    let var_2 = _wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a))), -1583f));
    return arg_1;
}

fn func_8(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    global0 = Struct_1(907f, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -153f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1129f * -1551f)), _wgslsmith_f_op_f32(-arg_1.b.x)), _wgslsmith_f_op_f32(-global0.a), arg_0.a), -14642i);
    let var_0 = arg_1;
    global0 = var_0;
    let var_1 = _wgslsmith_mult_vec3_i32(~(-_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 2147483647i, arg_1.c), vec3<i32>(var_0.c, -1i, arg_1.c))), abs(vec3<i32>(-func_2(62897u).b, func_6(Struct_2(global0.b.x, global0.c)), arg_0.b)));
    let var_2 = 72592i;
    return Struct_1(-1626f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(global0.b, vec4<f32>(arg_0.a, 1000f, arg_0.a, -209f)))))), func_2(~(~u_input.a)).b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(-2219f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(global0.b)))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, 1595f, global0.a, 281f)), global0.b)))), global0.c);
    global0 = func_8(func_7(~(-_wgslsmith_mult_vec2_i32(vec2<i32>(global0.c, u_input.b), vec2<i32>(1i, global0.c))), Struct_2(global0.a, func_6(func_1(false)))), Struct_1(-1098f, global0.b, -2147483647i));
    let var_0 = func_8(Struct_2(1321f, select(1i, -11048i, true)), Struct_1(global0.b.x, global0.b, -global0.c));
    global0 = Struct_1(func_2(firstLeadingBit(41123u)).a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 184f, global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -633f)))), var_0.c);
    let var_1 = func_7(_wgslsmith_add_vec2_i32(~vec2<i32>(~global0.c, func_2(0u).b), -select(-vec2<i32>(u_input.b, global0.c), vec2<i32>(2147483647i, global0.c), true)), func_1(true));
    let var_2 = !(!vec4<bool>(true, all(vec3<bool>(true, false, false)) && true, false, true));
    global0 = func_8(func_2(~46050u), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(global0.c, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(~u_input.a, abs(~u_input.c))), func_8(var_1, var_0).c, firstLeadingBit(u_input.a), 0i);
}

