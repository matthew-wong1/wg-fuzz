struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: vec3<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>) -> bool {
    var var_0 = !arg_0.a.x;
    var_0 = all(arg_1.xz);
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.c.d))) <= _wgslsmith_f_op_f32(f32(-1f) * -616f);
    var_0 = arg_1.x;
    var_0 = arg_1.x;
    return true;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    var var_0 = Struct_3(vec2<bool>(any(select(vec4<bool>(arg_1.b.x, false, true, true), !vec4<bool>(true, arg_3.b.x, arg_1.b.x, false), !vec4<bool>(arg_3.b.x, false, true, false))), all(select(vec3<bool>(true, false, false), !vec3<bool>(arg_1.b.x, true, arg_1.b.x), arg_3.b.x))), vec2<i32>(~(-1i), ~(~arg_0.x)), arg_2, 1i);
    var_0 = Struct_3(arg_1.b, ~min(vec2<i32>(-2147483647i, u_input.e.x), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, -75799i), u_input.e)) << (max(vec2<u32>(_wgslsmith_add_u32(u_input.d, 4294967295u), 1u), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(56929u, var_0.c.a), u_input.c, vec2<u32>(0u, u_input.c.x)), abs(u_input.c))) % vec2<u32>(32u)), arg_2, u_input.e.x);
    var_0 = Struct_3(arg_3.b, -(vec2<i32>(abs(arg_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, var_0.b.x, arg_0.x), vec4<i32>(-2147483647i, 2147483647i, 14329i, arg_0.x))) & var_0.b), Struct_2(12101u, _wgslsmith_f_op_vec4_f32(ceil(var_0.c.b)), -1000f, _wgslsmith_f_op_f32(-2250f - arg_2.b.x)), min(u_input.b ^ 1i, 1i));
    let var_1 = Struct_3(select(!select(var_0.a, select(vec2<bool>(var_0.a.x, true), vec2<bool>(false, false), var_0.a), arg_3.b), select(vec2<bool>(false, true), var_0.a, select(var_0.a, vec2<bool>(arg_1.b.x, false), !var_0.a.x)), any(select(vec2<bool>(true, arg_3.b.x), var_0.a, true))), ~(vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.b.x, arg_0.x), var_0.b)), Struct_2(343u, arg_2.b, _wgslsmith_f_op_f32(max(593f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-233f, 515f))))), _wgslsmith_f_op_f32(arg_1.c + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -576f), _wgslsmith_f_op_f32(471f + arg_1.c)))), 1i);
    var var_2 = arg_0.x;
    return arg_1.b.x;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> i32 {
    var var_0 = vec2<bool>((1i > min(arg_1 << (u_input.c.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_1, -2147483647i, 1i), vec4<i32>(-53884i, u_input.e.x, arg_1, -1527i)))) && (true || (true && all(vec4<bool>(false, true, true, false)))), func_4(select(select(vec3<i32>(-2147483647i, arg_1, 0i), select(vec3<i32>(-12512i, 2147483647i, u_input.b), vec3<i32>(arg_0, -2965i, arg_0), vec3<bool>(false, false, true)), func_3(Struct_3(vec2<bool>(false, false), u_input.a, arg_2, u_input.b), vec3<bool>(false, true, false))), countOneBits(countOneBits(vec3<i32>(arg_1, -2147483647i, arg_1))), vec3<bool>(false, true, any(vec2<bool>(false, true)))), Struct_1(vec3<f32>(201f, _wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(318f * 705f)), select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(false, true), vec2<bool>(true, true)), arg_2.d), arg_2, Struct_1(arg_2.b.xyw, vec2<bool>(all(vec3<bool>(true, false, true)), all(vec3<bool>(false, true, true))), _wgslsmith_f_op_f32(floor(arg_2.d)))));
    let var_1 = Struct_2((0u >> ((~arg_2.a << (1u % 32u)) % 32u)) ^ arg_2.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_2.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.b), _wgslsmith_div_vec4_f32(arg_2.b, vec4<f32>(arg_2.d, arg_2.b.x, arg_2.c, arg_2.c))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-472f, arg_2.b.x, -187f, -1259f)))))), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(153f + arg_2.b.x)) - arg_2.b.x) + arg_2.b.x), _wgslsmith_f_op_f32(floor(arg_2.d)));
    var_0 = !(!vec2<bool>(var_0.x, !any(vec3<bool>(false, false, var_0.x))));
    var var_2 = Struct_3(!vec2<bool>(!var_0.x, all(vec3<bool>(false, var_0.x, var_0.x))), select(select(u_input.a, _wgslsmith_mult_vec2_i32(-vec2<i32>(arg_1, arg_1), select(vec2<i32>(u_input.e.x, -18067i), vec2<i32>(1i, u_input.e.x), var_0.x)), vec2<bool>(true, func_3(Struct_3(vec2<bool>(var_0.x, var_0.x), u_input.a, var_1, 22711i), vec3<bool>(false, true, var_0.x)))), _wgslsmith_sub_vec2_i32(vec2<i32>(10081i, arg_1), u_input.a >> (vec2<u32>(25016u, 4294967295u) % vec2<u32>(32u))), true), var_1, 0i);
    var var_3 = Struct_3(vec2<bool>(true, !(var_2.b.x <= _wgslsmith_clamp_i32(arg_0, arg_0, arg_1))), -vec2<i32>(-1i, -1i) & ~max(select(vec2<i32>(arg_1, u_input.b), u_input.e, true), select(vec2<i32>(-1i, -2147483647i), vec2<i32>(arg_0, -1088i), false)), var_1, countOneBits(~(~(-arg_0))));
    return u_input.a.x | (abs(_wgslsmith_dot_vec2_i32(u_input.e, _wgslsmith_sub_vec2_i32(var_3.b, vec2<i32>(arg_1, var_3.b.x)))) << (max(~firstLeadingBit(var_2.c.a), var_3.c.a) % 32u));
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: f32, arg_3: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(round(arg_2));
    var var_1 = Struct_1(arg_1.c.b.zyy, arg_3.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3.c.b.x))));
    let var_2 = !(!select(!(!vec3<bool>(arg_3.a.x, false, arg_3.a.x)), vec3<bool>(true, false, true), vec3<bool>(-423f <= var_1.c, arg_3.a.x | var_1.b.x, true)));
    var var_3 = vec2<i32>(u_input.b, _wgslsmith_mod_i32(-firstTrailingBit(arg_1.b.x | arg_3.d), arg_1.b.x));
    var var_4 = Struct_2(~u_input.d, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(arg_3.c.b * arg_1.c.b), arg_1.c.b)), var_0, _wgslsmith_f_op_f32(sign(-1118f)));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-360f * _wgslsmith_f_op_f32(exp2(var_1.c))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(288f * arg_1.c.b.x)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.c * -1972f), arg_1.c.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec2<bool>(func_3(Struct_3(vec2<bool>(true, true), u_input.a, arg_1.c, arg_3.b.x), select(var_2, vec3<bool>(true, true, arg_1.a.x), var_2)) || arg_1.a.x, !func_3(Struct_3(arg_3.a, arg_3.b, Struct_2(arg_0, arg_3.c.b, arg_1.c.d, 757f), arg_1.b.x), vec3<bool>(false, false, true))), _wgslsmith_f_op_f32(var_1.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)) - _wgslsmith_f_op_f32(-2308f + -199f))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: Struct_3) -> u32 {
    let var_0 = func_5(~countOneBits(15217u ^ min(68864u, u_input.c.x)), arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-742f)) + -1149f))), Struct_3(select(vec2<bool>(arg_0.x == true, false || arg_3.a.x), !vec2<bool>(arg_3.a.x, arg_0.x), select(!arg_3.a, arg_0.yx, arg_3.a)), vec2<i32>(arg_3.b.x, 3710i), Struct_2(1u, arg_1.b, 563f, 1518f), _wgslsmith_mult_i32(-1i, func_2(u_input.a.x, u_input.e.x, arg_1) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-18750i, arg_3.b.x, 0i), vec3<i32>(12809i, -7834i, 2147483647i)))));
    var var_1 = Struct_3(func_5(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.c, vec2<u32>(u_input.d, 51080u) & u_input.c), _wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(arg_3.c.a, u_input.c.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 53576u), vec2<u32>(u_input.d, u_input.d)))), arg_3, arg_1.c, arg_3).b, _wgslsmith_div_vec2_i32(arg_3.b, ~(~(~u_input.e))), Struct_2(~4294967295u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(arg_3.c.c)), _wgslsmith_div_f32(-1347f, arg_2.x), _wgslsmith_f_op_f32(-arg_1.d), _wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-520f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-134f)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.c.d + arg_1.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.c)) - arg_2.x)))), _wgslsmith_clamp_i32(u_input.b, _wgslsmith_div_i32(u_input.e.x, _wgslsmith_dot_vec2_i32(-arg_3.b, vec2<i32>(-2147483647i, u_input.e.x))), _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_3.b.x, -2147483647i, u_input.b), -vec3<i32>(arg_3.b.x, arg_3.d, arg_3.b.x)) >> ((u_input.c.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 11881u, 289u), vec4<u32>(70652u, 4294967295u, arg_1.a, u_input.d)) % 32u)) % 32u)));
    var_1 = Struct_3(var_0.b, -u_input.e, arg_3.c, _wgslsmith_mult_i32(func_2(arg_3.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_3.b.x, 0i, 0i), vec4<i32>(arg_3.b.x, -1i, 1i, -26703i)), Struct_2(var_1.c.a, vec4<f32>(arg_2.x, var_1.c.c, -860f, arg_3.c.b.x), 2129f, 563f)), -2147483647i) << (13308u % 32u));
    var var_2 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-func_5(min(0u, var_1.c.a), Struct_3(arg_0.yy, vec2<i32>(1i, u_input.b), Struct_2(arg_1.a, vec4<f32>(-1465f, -1054f, arg_2.x, -510f), arg_1.b.x, 1621f), u_input.e.x), 1f, Struct_3(arg_0.zw, arg_3.b, arg_1, -2147483647i)).c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.a.x)) * _wgslsmith_f_op_f32(-arg_1.c))), _wgslsmith_f_op_f32(-arg_3.c.c)), arg_3.c.b.zwz));
    var var_3 = _wgslsmith_sub_vec3_i32(select(~(-vec3<i32>(1i, -2147483647i, -8822i) << (_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.a, u_input.c.x, arg_1.a), vec3<u32>(var_1.c.a, 12718u, u_input.d)) % vec3<u32>(32u))), -vec3<i32>(u_input.a.x << (70179u % 32u), -6434i, min(-16714i, 9884i)), !arg_0.zww), ~(-vec3<i32>(-27599i, -15166i, var_1.d)));
    return _wgslsmith_mult_u32(~u_input.c.x, ~15764u);
}

fn func_6(arg_0: i32, arg_1: vec2<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-291f, _wgslsmith_f_op_f32(1235f - 2283f))), _wgslsmith_div_f32(func_5(arg_1.x, Struct_3(vec2<bool>(false, false), vec2<i32>(arg_0, arg_0), Struct_2(25218u, vec4<f32>(1050f, -285f, 1197f, 1352f), -2210f, 1180f), -2147483647i), -288f, Struct_3(vec2<bool>(true, false), vec2<i32>(-1i, arg_0), Struct_2(arg_1.x, vec4<f32>(-1901f, -248f, -1531f, -1107f), -495f, -2097f), u_input.b)).a.x, _wgslsmith_f_op_f32(floor(207f))))), _wgslsmith_f_op_f32(floor(1302f)), _wgslsmith_f_op_f32(-1f)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1198f), _wgslsmith_f_op_f32(floor(1071f)), func_5(arg_1.x, Struct_3(vec2<bool>(false, false), vec2<i32>(10790i, 10125i), Struct_2(arg_1.x, vec4<f32>(-1384f, 1678f, -1000f, 425f), -1180f, 210f), arg_0), 2301f, Struct_3(vec2<bool>(true, false), u_input.a, Struct_2(2485u, vec4<f32>(1924f, 502f, -685f, -1936f), -1085f, 442f), arg_0)).c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1875f, 1219f, 183f)) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-223f, 1017f, -324f))))), false)));
    var var_1 = 28266u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(min(28795u, 58613u), arg_1.x, 57646u, ~(~u_input.c.x)), select(vec4<u32>(7707u, arg_1.x, 69322u, 1u) & vec4<u32>(arg_1.x, 51201u, arg_1.x, 31544u), _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(arg_1.x, 1u, arg_1.x, 1u)), abs(vec4<u32>(arg_1.x, arg_1.x, 1u, 1u))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), false), 4294967295u <= u_input.c.x))) % 32u);
    var_1 = 4294967295u;
    var_1 = min(countOneBits(1u), 1u);
    var_1 = 0u;
    return Struct_2(arg_1.x | ~4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-957f, var_0.x, var_0.x, -1070f)) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, 298f), vec4<f32>(var_0.x, 1198f, var_0.x, 1231f)))))), var_0.x, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) + -2126f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-748f + -163f) + _wgslsmith_f_op_f32(var_0.x + 506f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 833f))), 904f, _wgslsmith_f_op_f32(trunc(-1014f))), vec2<bool>(true, true), 1000f);
    let var_2 = func_6(-max(i32(-1i) * -73904i, u_input.b), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, 16002u), vec2<u32>(45669u, 35059u), vec2<u32>(u_input.c.x, u_input.c.x)), ~u_input.c), u_input.c, vec2<u32>(~4294967295u, func_1(vec4<bool>(false, true, true, true), Struct_2(0u, vec4<f32>(-526f, var_1.c, var_1.a.x, -1626f), var_1.a.x, var_1.a.x), vec3<f32>(var_1.c, -720f, 1000f), Struct_3(var_1.b, u_input.e, Struct_2(u_input.c.x, vec4<f32>(var_1.a.x, var_1.c, var_1.a.x, var_1.a.x), 1225f, var_1.c), -68654i)))), vec2<u32>(~u_input.d, u_input.d)));
    let var_3 = !func_5(0u, Struct_3(func_5(~1682u, Struct_3(vec2<bool>(false, var_1.b.x), u_input.e, var_2, u_input.e.x), -422f, Struct_3(vec2<bool>(false, true), vec2<i32>(u_input.e.x, var_0), var_2, u_input.b)).b, -u_input.a, Struct_2(~u_input.c.x, _wgslsmith_f_op_vec4_f32(step(var_2.b, vec4<f32>(var_2.c, var_1.c, var_2.c, 1686f))), _wgslsmith_div_f32(-823f, var_2.d), var_2.b.x), _wgslsmith_div_i32(var_0, u_input.a.x) | ~(-1i)), var_1.c, Struct_3(vec2<bool>(true, true), _wgslsmith_clamp_vec2_i32(vec2<i32>(10080i, -540i), u_input.a, u_input.e << (vec2<u32>(var_2.a, 54142u) % vec2<u32>(32u))), Struct_2(0u, _wgslsmith_div_vec4_f32(vec4<f32>(681f, 1000f, var_2.c, var_1.a.x), var_2.b), _wgslsmith_f_op_f32(-var_2.d), _wgslsmith_div_f32(var_2.c, -421f)), var_0 | -4399i)).b.x;
    var var_4 = vec4<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(~var_2.a, 1u, u_input.c.x << (4294967295u % 32u), u_input.d), _wgslsmith_mod_vec4_u32(vec4<u32>(var_2.a, 29839u, var_2.a, u_input.d), vec4<u32>(26853u, 68722u, var_2.a, 1u)) ^ vec4<u32>(85988u, 0u, 27000u, u_input.d))), ~(~(u_input.d ^ var_2.a)), _wgslsmith_mod_u32(abs(reverseBits(31584u)) >> (1u % 32u), 18630u), var_2.a & _wgslsmith_mod_u32(~u_input.d & select(64174u, var_2.a, true), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(var_2.a, 1u, var_2.a, u_input.d)), _wgslsmith_add_vec4_u32(vec4<u32>(var_2.a, 201u, u_input.c.x, 99974u), vec4<u32>(4294967295u, 0u, 58917u, var_2.a)))));
    let var_5 = Struct_3(var_1.b, vec2<i32>(~func_2(_wgslsmith_mult_i32(var_0, -2147483647i), var_0, func_6(-63423i, var_4.yy)), _wgslsmith_dot_vec4_i32(firstTrailingBit(countOneBits(vec4<i32>(var_0, u_input.b, -33074i, -5772i))), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.e.x, -11676i, -2147483647i, 62003i), ~vec4<i32>(var_0, 61484i, -1i, u_input.b)))), func_6(var_0, vec2<u32>(52366u, firstTrailingBit(~u_input.d))), u_input.b);
    let var_6 = func_6(~var_0, vec2<u32>(func_6(_wgslsmith_mod_i32(abs(var_5.b.x), var_0), max(vec2<u32>(var_2.a, u_input.d), _wgslsmith_div_vec2_u32(vec2<u32>(92411u, 75998u), u_input.c))).a, 27228u));
    let var_7 = -_wgslsmith_mod_i32(u_input.b, ~_wgslsmith_div_i32(u_input.a.x & -2147483647i, u_input.e.x));
    var var_8 = var_5.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-228f, var_1.a.x)))), 1325f) - _wgslsmith_f_op_vec2_f32(floor(var_2.b.yx))), var_5.c.c, _wgslsmith_f_op_f32(f32(-1f) * -146f), _wgslsmith_mod_vec3_u32(abs(select(vec3<u32>(var_4.x, 9377u, u_input.d), ~vec3<u32>(var_2.a, u_input.d, 4294967295u), true)), ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_4.x, var_4.x, 1u), ~vec3<u32>(0u, 4294967295u, 0u), var_4.zyy)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.b.x, var_2.d, 152f))), _wgslsmith_f_op_vec3_f32(var_5.c.b.wxw + var_6.b.wzx), vec3<bool>(true, var_3, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1492f, -624f, var_5.c.b.x))), _wgslsmith_f_op_vec3_f32(-var_1.a))));
}

