struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec2<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
    d: f32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32) -> vec4<f32> {
    var var_0 = select(select(select(vec4<bool>(true, all(vec2<bool>(true, true)), false, select(true, false, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), false), all(vec4<bool>(false, true, false, false))), vec4<bool>(true, true, arg_0 != arg_0, true)), !select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(false, true)), all(vec3<bool>(true, false, false)), true, true), vec4<bool>(all(vec3<bool>(false, true, true)), true, all(vec2<bool>(false, true)), false))), vec4<bool>(false, true, u_input.a > firstTrailingBit(_wgslsmith_add_i32(u_input.a, -10355i)), !(_wgslsmith_mult_i32(47241i, u_input.a) < ~(-3475i))), !vec4<bool>(select(any(vec4<bool>(true, true, false, true)), true, any(vec3<bool>(false, false, true))), true, true, all(vec3<bool>(false, false, false))));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2476f * 298f), _wgslsmith_f_op_f32(735f * 1643f))))), ~(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 1u, 50225u), vec3<u32>(4294967295u, arg_0, arg_0) ^ vec3<u32>(30615u, u_input.b, 1u)) << (max(abs(vec3<u32>(arg_0, 1u, 0u)), ~vec3<u32>(4294967295u, 4294967295u, u_input.b)) % vec3<u32>(32u))), Struct_1(!all(vec4<bool>(true, var_0.x, var_0.x, false)), -vec3<i32>(2147483647i, _wgslsmith_div_i32(2147483647i, u_input.a), ~u_input.a), !select(var_0.yy, vec2<bool>(var_0.x, false), 4070u >= arg_0), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.b, 18838u), ~vec4<u32>(arg_0, arg_0, 32546u, u_input.b)), min(vec4<u32>(1u, u_input.b, 93479u, 1u) & vec4<u32>(arg_0, u_input.b, u_input.b, 1u), ~vec4<u32>(arg_0, 18794u, u_input.b, arg_0)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1225f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(571f, -944f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d) * _wgslsmith_f_op_f32(step(175f, var_1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + _wgslsmith_f_op_f32(1000f * var_1.a)))));
    var var_3 = var_1;
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.yz + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.d)), -326f)) - var_2.zw);
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(332f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.d)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_1.a)))));
}

fn func_4(arg_0: bool, arg_1: Struct_5, arg_2: Struct_4) -> u32 {
    var var_0 = arg_2.c.a;
    var_0 = arg_2.c.c.x;
    let var_1 = firstLeadingBit(abs(~u_input.b) ^ arg_2.b.x);
    let var_2 = vec2<bool>(arg_2.c.a, !((arg_1.b.c.x && all(arg_1.c.c)) || select(!arg_0, all(vec4<bool>(false, arg_1.b.c.x, false, true)), true)));
    var_0 = false;
    return _wgslsmith_dot_vec4_u32(~(~vec4<u32>(min(0u, 3494u), ~4294967295u, 32520u, abs(arg_1.b.d.x))), arg_2.c.d & ~firstLeadingBit(~vec4<u32>(18502u, 43847u, 1u, 95051u)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = vec2<u32>(func_4(arg_1.x, Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(u_input.b))), Struct_1(arg_1.x | false, ~vec3<i32>(4272i, u_input.a, u_input.a), select(arg_1.yy, arg_1.zy, true), ~vec4<u32>(u_input.b, 1u, u_input.b, u_input.b)), Struct_1(true, _wgslsmith_clamp_vec3_i32(vec3<i32>(26611i, -15739i, u_input.a), vec3<i32>(-7731i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, -1i)), arg_1.ww, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(23247u, 1u, 0u, u_input.b))), vec3<i32>(-9916i, 1i, _wgslsmith_div_i32(u_input.a, 1i))), Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -446f), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<u32>(4294967295u, u_input.b, 1u)) >> (~vec3<u32>(u_input.b, 10159u, 4294967295u) % vec3<u32>(32u)), Struct_1(any(vec2<bool>(false, false)), ~vec3<i32>(u_input.a, -19548i, -27249i), select(vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(false, arg_1.x), arg_1.x), ~vec4<u32>(1u, u_input.b, 0u, 62853u)), arg_0.x)), u_input.b);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_sub_u32(54408u, 11000u))).x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.x, 769f)) * _wgslsmith_f_op_f32(round(arg_0.x))));
    var var_2 = vec4<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(520f, 1092f, true)) - _wgslsmith_f_op_f32(266f + arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -204f)))), _wgslsmith_f_op_f32(-arg_0.x));
    var_2 = vec4<f32>(1036f, _wgslsmith_f_op_f32(f32(-1f) * -669f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-430f, -850f, true)), var_2.x)))), -170f);
    let var_3 = ~(~(~_wgslsmith_add_vec4_u32(vec4<u32>(32100u, var_0.x, var_0.x, u_input.b) ^ vec4<u32>(44480u, 102012u, 0u, 0u), abs(vec4<u32>(var_0.x, var_0.x, 46997u, var_0.x)))));
    return Struct_1(true, vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, u_input.a, 28967i), -_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(0i, -1i, -2147483647i), vec3<i32>(-1i, 1i, -48440i))), 1i, 65422i), arg_1.zz, ~var_3);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_5, arg_2: u32, arg_3: u32) -> Struct_3 {
    let var_0 = select(vec3<bool>(~arg_3 >= _wgslsmith_mod_u32(0u, u_input.b), true, all(vec3<bool>(1u < arg_2, func_2(vec2<f32>(arg_1.a.x, 1687f), vec4<bool>(false, arg_1.b.c.x, false, false)).a, false))), select(select(!(!vec3<bool>(arg_0.a, false, true)), vec3<bool>(true, all(vec4<bool>(true, arg_1.b.c.x, arg_0.a, arg_0.a)), true), all(!vec4<bool>(true, true, arg_1.b.a, false))), !select(vec3<bool>(arg_0.c.x, arg_1.c.c.x, false), select(vec3<bool>(false, arg_1.b.a, arg_1.c.c.x), vec3<bool>(false, true, arg_0.a), vec3<bool>(arg_1.b.a, arg_0.a, true)), vec3<bool>(false, true, arg_1.c.a)), arg_1.b.a), select(vec3<bool>(any(select(vec3<bool>(arg_1.c.a, false, false), vec3<bool>(arg_0.c.x, arg_0.c.x, arg_0.a), arg_0.c.x)), !select(arg_0.a, true, false), true), select(!select(vec3<bool>(arg_1.b.a, true, arg_0.c.x), vec3<bool>(arg_0.a, false, arg_0.c.x), vec3<bool>(true, arg_1.c.a, false)), !(!vec3<bool>(false, true, arg_0.c.x)), all(select(vec4<bool>(false, arg_1.c.a, true, arg_0.c.x), vec4<bool>(arg_0.c.x, arg_1.b.a, arg_1.c.a, arg_1.c.c.x), vec4<bool>(arg_0.a, false, false, arg_1.b.c.x)))), !arg_0.a));
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, arg_1.a.x, 470f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(264f, -822f, arg_1.a.x)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_1.a.yww - vec3<f32>(-595f, arg_1.a.x, -1404f)), _wgslsmith_f_op_vec3_f32(arg_1.a.zyw - arg_1.a.zwx), all(arg_0.c)))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(sign(-114f)), 348f, arg_1.a.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(407f, 416f, arg_1.a.x))), vec3<f32>(1014f, 318f, arg_1.a.x)))))));
    let var_2 = arg_0;
    var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1306f - arg_1.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a.x + var_1.x), _wgslsmith_f_op_f32(floor(-1233f))), arg_1.a.x) * vec3<f32>(_wgslsmith_f_op_f32(-1273f - _wgslsmith_f_op_f32(var_1.x * 1482f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.a.x, 1332f, false)) + var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_1.x, -949f), vec3<f32>(706f, 752f, 1123f))) - _wgslsmith_f_op_vec3_f32(step(arg_1.a.xyw, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, 780f, 124f) * arg_1.a.zwx)))))));
    let var_3 = _wgslsmith_mod_vec2_u32(vec2<u32>(var_2.d.x, 0u), vec2<u32>(var_2.d.x, var_2.d.x));
    return Struct_3(vec3<u32>(u_input.b, var_2.d.x, 7964u), Struct_2(arg_1.a.zww, vec3<u32>(arg_1.b.d.x, ~func_4(false, Struct_5(arg_1.a, arg_0, arg_0, var_2.b), Struct_4(429f, vec3<u32>(107237u, arg_2, var_2.d.x), arg_1.c, arg_1.a.x)), reverseBits(abs(1u))), 1u, var_2, Struct_1(!(!arg_0.c.x), arg_0.b, select(arg_0.c, var_2.c, func_2(vec2<f32>(1393f, -698f), vec4<bool>(arg_0.a, var_2.a, true, var_0.x)).c.x), ~arg_1.b.d)), Struct_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_1.a.x)), _wgslsmith_f_op_f32(-arg_1.a.x), arg_1.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.a.zyx)), true)), min(firstLeadingBit(abs(vec3<u32>(var_2.d.x, var_3.x, 0u))), vec3<u32>(~arg_0.d.x, max(0u, arg_1.c.d.x), 1u)), var_3.x, arg_1.b, func_2(arg_1.a.ww, !(!vec4<bool>(false, false, var_2.a, false)))));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_4, arg_2: bool) -> Struct_3 {
    global0 = true;
    var var_0 = func_5(Struct_1(true, arg_1.c.b << (~arg_1.c.d.wxx % vec3<u32>(32u)), arg_1.c.c, countOneBits(_wgslsmith_mod_vec4_u32(firstLeadingBit(arg_1.c.d), arg_1.c.d))), Struct_5(vec4<f32>(-404f, arg_1.d, arg_0.b.a.x, 615f), func_5(func_5(func_2(vec2<f32>(1000f, -1063f), vec4<bool>(arg_2, true, arg_1.c.c.x, false)), Struct_5(vec4<f32>(506f, arg_1.d, arg_0.c.a.x, 459f), arg_0.b.d, Struct_1(true, vec3<i32>(0i, 14220i, arg_0.c.d.b.x), vec2<bool>(arg_0.c.e.c.x, arg_1.c.a), vec4<u32>(u_input.b, 0u, 11182u, arg_0.c.d.d.x)), arg_0.c.d.b), arg_0.b.c, 0u).c.d, Struct_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.a.x, arg_0.b.a.x, 1283f, -596f) - vec4<f32>(arg_1.d, arg_0.c.a.x, arg_1.d, -1000f)), func_2(arg_0.b.a.yz, vec4<bool>(false, arg_1.c.a, arg_0.b.e.c.x, arg_0.c.d.a)), Struct_1(true, vec3<i32>(arg_1.c.b.x, -81788i, 0i), arg_0.c.d.c, arg_1.c.d), _wgslsmith_add_vec3_i32(arg_0.c.e.b, vec3<i32>(arg_0.b.e.b.x, u_input.a, u_input.a))), 4294967295u, arg_0.c.b.x).c.d, func_5(func_2(_wgslsmith_f_op_vec2_f32(arg_0.b.a.xz * vec2<f32>(-309f, arg_1.d)), select(vec4<bool>(false, false, arg_2, arg_2), vec4<bool>(false, arg_0.b.d.a, true, false), false)), Struct_5(vec4<f32>(587f, -1511f, -1491f, -181f), Struct_1(arg_0.b.e.a, vec3<i32>(arg_0.c.d.b.x, arg_1.c.b.x, 36471i), arg_1.c.c, vec4<u32>(36369u, u_input.b, 4294967295u, 4294967295u)), arg_1.c, _wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.c.b.x, u_input.a, 1i), vec3<i32>(u_input.a, arg_0.c.e.b.x, 0i))), u_input.b, arg_1.b.x).b.d, arg_1.c.b), ~u_input.b, arg_1.c.d.x).b.d.c.x;
    let var_1 = !vec4<bool>(func_2(vec2<f32>(arg_1.d, arg_1.a), !select(vec4<bool>(false, arg_0.c.d.a, arg_2, false), vec4<bool>(true, false, true, arg_2), false)).c.x, !(all(vec4<bool>(arg_2, arg_1.c.c.x, arg_0.c.d.a, true)) || false), arg_2, any(!select(vec3<bool>(false, arg_2, false), vec3<bool>(false, arg_0.b.e.c.x, true), vec3<bool>(false, true, false))));
    var var_2 = abs(~_wgslsmith_mod_i32(1i, -21166i));
    var var_3 = true;
    return Struct_3(firstTrailingBit(firstTrailingBit(vec3<u32>(_wgslsmith_clamp_u32(u_input.b, u_input.b, arg_1.c.d.x), reverseBits(arg_1.c.d.x), abs(74489u)))), arg_0.b, func_5(func_5(func_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.c.a.x, 1210f))), var_1), Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d, arg_0.b.a.x, -272f, -889f)), func_5(Struct_1(false, vec3<i32>(-2147483647i, -17186i, arg_1.c.b.x), arg_0.c.e.c, arg_0.b.d.d), Struct_5(vec4<f32>(529f, 1242f, -632f, arg_0.c.a.x), Struct_1(arg_1.c.c.x, vec3<i32>(15487i, u_input.a, arg_0.c.d.b.x), arg_0.b.e.c, arg_0.b.e.d), Struct_1(false, vec3<i32>(u_input.a, u_input.a, 0i), var_1.zx, vec4<u32>(1u, u_input.b, 4947u, 15569u)), arg_1.c.b), 11182u, arg_1.c.d.x).b.e, func_5(Struct_1(var_1.x, arg_1.c.b, vec2<bool>(var_1.x, arg_1.c.a), vec4<u32>(arg_0.b.d.d.x, 40593u, 1u, arg_1.b.x)), Struct_5(vec4<f32>(arg_0.b.a.x, arg_1.d, -1000f, 301f), arg_1.c, arg_0.b.d, arg_0.c.d.b), arg_0.a.x, arg_0.c.e.d.x).b.e, vec3<i32>(0i, arg_1.c.b.x, arg_1.c.b.x)), countOneBits(~u_input.b), ~arg_0.b.b.x).b.d, Struct_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(574f, arg_1.d, -1147f, arg_0.b.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-928f, arg_0.b.a.x, 1182f, -150f))), arg_0.c.e, arg_0.c.e, firstTrailingBit(vec3<i32>(-1i, arg_0.b.e.b.x, 6849i))), _wgslsmith_add_u32(arg_0.c.b.x, ~arg_0.b.b.x), ~(~_wgslsmith_mod_u32(arg_0.b.e.d.x, arg_1.b.x))).c);
}

fn func_1(arg_0: vec3<f32>) -> vec3<u32> {
    let var_0 = func_6(func_5(func_2(vec2<f32>(arg_0.x, arg_0.x), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true))), Struct_5(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1f, 1f))), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(101f, arg_0.x)), vec4<bool>(true, true, true, true)), func_2(_wgslsmith_div_vec2_f32(arg_0.zz, vec2<f32>(351f, 784f)), vec4<bool>(true, true, true, true)), -vec3<i32>(u_input.a, u_input.a, u_input.a)), 0u | (_wgslsmith_mult_u32(u_input.b, 4294967295u) | ~4294967295u), firstLeadingBit(25882u)), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(~103918u)).x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.x)) * arg_0.x)), ~(~(~vec3<u32>(u_input.b, 42005u, u_input.b))), Struct_1(true, -abs(vec3<i32>(u_input.a, -11083i, u_input.a)), !func_2(arg_0.xz, vec4<bool>(true, true, false, true)).c, ~(vec4<u32>(44079u, u_input.b, u_input.b, u_input.b) << (vec4<u32>(73878u, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u)))), -702f), false);
    let var_1 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(927f + 161f) * -289f) - _wgslsmith_f_op_f32(f32(-1f) * -216f)), _wgslsmith_f_op_f32(var_0.c.a.x + -121f), -667f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b.a.x))), -1000f))), func_5(func_5(func_6(Struct_3(var_0.c.e.d.wyx, var_0.b, Struct_2(vec3<f32>(2169f, var_0.c.a.x, -1127f), var_0.a, 23268u, var_0.c.d, var_0.b.d)), Struct_4(1615f, vec3<u32>(u_input.b, u_input.b, var_0.a.x), var_0.c.e, arg_0.x), -25475i != u_input.a).b.e, Struct_5(vec4<f32>(-414f, arg_0.x, var_0.c.a.x, var_0.b.a.x), func_6(var_0, Struct_4(2712f, vec3<u32>(var_0.b.e.d.x, 13380u, var_0.b.b.x), Struct_1(var_0.c.d.a, var_0.b.d.b, var_0.c.e.c, var_0.b.e.d), 802f), var_0.b.d.c.x).b.e, Struct_1(var_0.c.d.c.x, vec3<i32>(var_0.c.d.b.x, -42637i, var_0.c.d.b.x), vec2<bool>(var_0.b.e.a, false), vec4<u32>(u_input.b, u_input.b, 50011u, var_0.b.d.d.x)), vec3<i32>(12638i, -1i, 0i)), _wgslsmith_div_u32(u_input.b, 0u) << (27486u % 32u), 68312u ^ ~var_0.a.x).c.e, Struct_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.x, arg_0.x, var_0.b.a.x, 735f), vec4<f32>(-585f, var_0.c.a.x, arg_0.x, -907f))), vec4<f32>(var_0.b.a.x, 1244f, var_0.c.a.x, arg_0.x)), var_0.b.e, Struct_1(any(vec3<bool>(false, true, var_0.b.d.a)), func_6(var_0, Struct_4(var_0.c.a.x, var_0.b.b, Struct_1(var_0.c.e.a, vec3<i32>(-28499i, -1i, 2147483647i), vec2<bool>(var_0.b.e.a, var_0.b.e.a), var_0.c.d.d), arg_0.x), var_0.b.d.a).c.e.b, vec2<bool>(var_0.b.d.a, var_0.c.e.c.x), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_0.b.e.d.x, var_0.c.b.x, var_0.b.e.d.x), var_0.b.d.d)), var_0.b.e.b), 70410u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(0u, firstTrailingBit(1u)), ~var_0.b.c)).b.d, Struct_1(func_5(func_5(Struct_1(true, var_0.b.d.b, var_0.c.e.c, var_0.c.d.d), Struct_5(vec4<f32>(arg_0.x, arg_0.x, 372f, -1000f), Struct_1(var_0.b.e.c.x, var_0.c.d.b, var_0.c.e.c, var_0.c.d.d), var_0.b.e, var_0.b.e.b), u_input.b, ~var_0.c.e.d.x).b.e, Struct_5(vec4<f32>(arg_0.x, 267f, arg_0.x, 305f), func_2(arg_0.xz, vec4<bool>(var_0.c.d.a, var_0.c.e.a, var_0.c.d.a, false)), func_2(vec2<f32>(-1014f, -849f), vec4<bool>(var_0.b.e.a, true, true, var_0.c.d.c.x)), var_0.b.d.b >> (vec3<u32>(31981u, 34573u, 0u) % vec3<u32>(32u))), _wgslsmith_dot_vec2_u32(~var_0.a.zx, abs(var_0.a.zx)), ~4294967295u).c.d.a, _wgslsmith_mod_vec3_i32(~var_0.b.e.b, abs(vec3<i32>(27711i, -2147483647i, -1i) << (vec3<u32>(var_0.a.x, var_0.b.e.d.x, u_input.b) % vec3<u32>(32u)))), !func_6(Struct_3(vec3<u32>(u_input.b, 1550u, 0u), var_0.b, Struct_2(arg_0, vec3<u32>(u_input.b, var_0.b.b.x, u_input.b), 0u, Struct_1(var_0.b.e.a, vec3<i32>(var_0.c.d.b.x, u_input.a, var_0.b.e.b.x), var_0.c.e.c, var_0.b.d.d), Struct_1(var_0.c.d.a, vec3<i32>(0i, var_0.c.d.b.x, var_0.c.e.b.x), vec2<bool>(true, false), vec4<u32>(50922u, var_0.a.x, 1u, 0u)))), Struct_4(388f, vec3<u32>(1u, 40321u, 21375u), var_0.c.d, var_0.b.a.x), func_2(arg_0.xz, vec4<bool>(true, false, false, true)).c.x).c.e.c, _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(12147u, 4294967295u, u_input.b, u_input.b)), ~(vec4<u32>(33394u, 18294u, var_0.c.c, u_input.b) | var_0.b.d.d))), func_6(func_6(func_6(func_6(Struct_3(var_0.c.e.d.xyy, Struct_2(arg_0, var_0.b.e.d.xzw, 28007u, var_0.c.e, Struct_1(var_0.b.e.c.x, var_0.b.e.b, var_0.b.e.c, vec4<u32>(var_0.c.d.d.x, var_0.a.x, 0u, var_0.b.c))), var_0.b), Struct_4(-259f, var_0.a, Struct_1(var_0.b.d.a, var_0.c.d.b, var_0.b.e.c, vec4<u32>(u_input.b, 1u, var_0.a.x, var_0.c.c)), var_0.c.a.x), var_0.c.d.a), Struct_4(arg_0.x, var_0.b.d.d.wyw, var_0.c.e, arg_0.x), !var_0.b.e.a), Struct_4(func_6(Struct_3(vec3<u32>(var_0.b.b.x, var_0.c.e.d.x, 0u), Struct_2(vec3<f32>(-200f, -930f, arg_0.x), vec3<u32>(0u, u_input.b, var_0.c.b.x), 1u, var_0.c.e, Struct_1(true, var_0.b.d.b, var_0.b.e.c, var_0.b.e.d)), var_0.b), Struct_4(arg_0.x, vec3<u32>(1u, u_input.b, 26238u), Struct_1(false, vec3<i32>(var_0.c.d.b.x, 23033i, u_input.a), vec2<bool>(false, true), vec4<u32>(var_0.b.c, 28162u, 26150u, 5980u)), 1000f), false).c.a.x, ~var_0.c.b, func_6(var_0, Struct_4(var_0.b.a.x, var_0.a, Struct_1(true, vec3<i32>(u_input.a, u_input.a, 16217i), var_0.c.d.c, var_0.b.d.d), 1000f), true).b.e, _wgslsmith_f_op_f32(-arg_0.x)), true), Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -321f), func_5(var_0.b.d, Struct_5(vec4<f32>(1000f, -1016f, 1176f, 1000f), Struct_1(var_0.b.e.c.x, vec3<i32>(var_0.b.e.b.x, 1i, 44969i), var_0.c.e.c, vec4<u32>(var_0.a.x, 2257u, 10462u, var_0.b.c)), Struct_1(var_0.c.e.c.x, var_0.b.e.b, var_0.b.e.c, var_0.c.d.d), var_0.c.d.b), u_input.b & var_0.c.e.d.x, var_0.a.x).c.d.d.zwx, Struct_1(true, func_5(var_0.b.e, Struct_5(vec4<f32>(-1037f, -507f, 439f, 1999f), var_0.c.d, Struct_1(var_0.b.e.c.x, var_0.b.d.b, var_0.c.d.c, vec4<u32>(var_0.c.b.x, var_0.a.x, 0u, u_input.b)), var_0.c.d.b), 12106u, u_input.b).b.e.b, vec2<bool>(true, true), max(vec4<u32>(4294967295u, 72443u, 555u, u_input.b), vec4<u32>(4294967295u, 16684u, 84295u, 1u))), _wgslsmith_f_op_f32(var_0.c.a.x * -299f)), all(select(select(vec3<bool>(var_0.b.d.a, false, false), vec3<bool>(var_0.b.d.a, true, false), vec3<bool>(false, var_0.b.e.a, var_0.b.e.a)), !vec3<bool>(var_0.c.d.a, var_0.c.d.a, true), select(vec3<bool>(true, var_0.b.d.a, true), vec3<bool>(true, var_0.c.e.a, var_0.c.d.c.x), var_0.b.e.c.x)))).b.d.b);
    global0 = all(!(!var_0.c.e.c));
    var var_2 = ~(4294967295u >> (func_5(func_6(var_0, Struct_4(arg_0.x, vec3<u32>(var_1.c.d.x, var_0.c.d.d.x, var_1.c.d.x), Struct_1(true, vec3<i32>(1i, 1230i, 18243i), vec2<bool>(var_1.b.a, true), vec4<u32>(9525u, var_1.b.d.x, 4294967295u, 4294967295u)), 314f), true).b.d, Struct_5(vec4<f32>(arg_0.x, 695f, -914f, var_0.c.a.x), Struct_1(false, var_1.b.b, vec2<bool>(var_1.c.a, false), vec4<u32>(99356u, var_0.b.b.x, u_input.b, var_1.b.d.x)), var_0.b.d, _wgslsmith_div_vec3_i32(vec3<i32>(42715i, 0i, -11588i), vec3<i32>(var_1.b.b.x, -42647i, var_1.c.b.x))), _wgslsmith_div_u32(func_5(var_0.c.d, Struct_5(vec4<f32>(-1010f, var_1.a.x, var_0.b.a.x, -1000f), Struct_1(var_0.c.e.c.x, vec3<i32>(-30328i, 19105i, 0i), vec2<bool>(var_1.c.a, true), var_0.b.d.d), var_0.c.d, vec3<i32>(1i, 1i, u_input.a)), 47822u, var_1.c.d.x).a.x, ~var_0.c.e.d.x), 0u).a.x % 32u));
    var var_3 = vec3<f32>(_wgslsmith_div_f32(487f, func_6(Struct_3(~var_1.b.d.ywz, Struct_2(var_1.a.yyx, vec3<u32>(1u, var_1.b.d.x, u_input.b), 26824u, var_1.b, Struct_1(false, var_1.c.b, var_0.b.d.c, vec4<u32>(u_input.b, 1u, var_1.c.d.x, 0u))), Struct_2(vec3<f32>(894f, -620f, 555f), vec3<u32>(var_0.c.e.d.x, var_0.c.b.x, 0u), var_1.b.d.x, Struct_1(var_1.c.c.x, vec3<i32>(0i, -1i, var_0.c.d.b.x), var_0.b.d.c, vec4<u32>(var_1.c.d.x, var_0.a.x, 15251u, 0u)), var_1.b)), Struct_4(var_1.a.x, var_1.b.d.xzy, var_0.b.e, -184f), var_1.c.a).c.a.x), _wgslsmith_div_f32(-1153f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) - _wgslsmith_f_op_f32(abs(arg_0.x))) + var_1.a.x)), func_6(func_6(Struct_3(var_1.b.d.zwz & var_0.c.e.d.yzz, Struct_2(vec3<f32>(-132f, var_1.a.x, -977f), vec3<u32>(21310u, 19804u, 1u), 4294967295u, var_1.b, Struct_1(false, var_0.c.e.b, var_1.c.c, vec4<u32>(var_1.b.d.x, var_1.b.d.x, var_0.c.c, var_1.b.d.x))), func_5(Struct_1(false, var_0.b.d.b, vec2<bool>(true, var_0.c.d.a), var_1.b.d), Struct_5(var_1.a, Struct_1(false, var_0.c.e.b, var_1.c.c, vec4<u32>(var_1.b.d.x, 1u, var_0.b.d.d.x, var_1.b.d.x)), Struct_1(true, vec3<i32>(var_1.c.b.x, var_0.b.e.b.x, var_1.d.x), var_1.c.c, vec4<u32>(u_input.b, 29812u, var_0.b.d.d.x, var_1.b.d.x)), var_0.c.e.b), 7403u, u_input.b).b), Struct_4(_wgslsmith_f_op_f32(sign(-331f)), vec3<u32>(16862u, var_1.c.d.x, 4294967295u), var_0.c.e, _wgslsmith_f_op_f32(221f - var_1.a.x)), all(vec2<bool>(true, true))), Struct_4(arg_0.x, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, var_0.c.c, 9455u), vec3<u32>(45909u, var_1.b.d.x, var_1.b.d.x)), var_0.b.d, var_0.b.a.x), all(!(!vec2<bool>(false, var_0.b.e.c.x)))).b.a.x);
    return var_0.b.d.d.xwz;
}

fn func_7(arg_0: Struct_1, arg_1: vec3<u32>) -> vec3<i32> {
    let var_0 = false;
    let var_1 = !select(vec3<bool>(true, func_5(arg_0, Struct_5(vec4<f32>(-1208f, 620f, -120f, -1152f), Struct_1(arg_0.a, arg_0.b, arg_0.c, vec4<u32>(10384u, arg_0.d.x, 0u, u_input.b)), Struct_1(false, vec3<i32>(18412i, arg_0.b.x, 6283i), vec2<bool>(false, var_0), vec4<u32>(0u, 67470u, 1u, arg_0.d.x)), vec3<i32>(arg_0.b.x, -1i, u_input.a)), arg_1.x, func_2(vec2<f32>(-167f, 220f), vec4<bool>(arg_0.c.x, false, true, var_0)).d.x).c.d.c.x, any(!vec3<bool>(true, arg_0.c.x, true))), select(vec3<bool>(all(vec4<bool>(arg_0.c.x, true, var_0, false)), !arg_0.c.x, true), vec3<bool>(!var_0, true, var_0 && true), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(arg_0.b.x, 24708i)) >= _wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_0.b.x, 22543i, arg_0.b.x), vec4<i32>(arg_0.b.x, 38485i, arg_0.b.x, -45435i))), any(select(select(vec3<bool>(arg_0.c.x, var_0, var_0), vec3<bool>(true, arg_0.c.x, arg_0.a), vec3<bool>(arg_0.c.x, var_0, var_0)), vec3<bool>(var_0, true, true), func_5(Struct_1(false, arg_0.b, vec2<bool>(false, arg_0.c.x), arg_0.d), Struct_5(vec4<f32>(-1081f, -958f, -577f, -236f), arg_0, arg_0, vec3<i32>(1671i, arg_0.b.x, u_input.a)), 10103u, 1u).c.d.a)));
    global0 = true;
    global0 = var_0;
    var var_2 = min(0i, -1i) << (func_4(true, Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1262f, 354f, -931f, -410f), vec4<f32>(809f, -188f, 675f, 1000f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-272f, -779f, 249f, -1823f) - vec4<f32>(617f, 1000f, -1000f, 589f))), arg_0, Struct_1(arg_0.c.x, arg_0.b, vec2<bool>(var_1.x, var_0), arg_0.d & arg_0.d), arg_0.b), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(462f - -762f) * _wgslsmith_f_op_f32(f32(-1f) * -1783f)), vec3<u32>(arg_1.x, arg_0.d.x, 41053u) & _wgslsmith_sub_vec3_u32(arg_1, arg_0.d.yxw), func_5(arg_0, Struct_5(vec4<f32>(1296f, -1643f, -132f, 436f), arg_0, arg_0, vec3<i32>(arg_0.b.x, -43275i, arg_0.b.x)), ~arg_1.x, 4294967295u).c.e, -1000f)) % 32u);
    return _wgslsmith_mod_vec3_i32(-(arg_0.b ^ reverseBits(arg_0.b)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(4795i, u_input.a, -12133i, 7700i) & vec4<i32>(1i, -57113i, u_input.a, arg_0.b.x), vec4<i32>(-18277i, u_input.a, 1i, -1i)), -arg_0.b.x, -(~u_input.a))) & vec3<i32>(reverseBits(-3777i), countOneBits(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, u_input.a), arg_0.b), -1i)), _wgslsmith_dot_vec2_i32(func_5(Struct_1(true, vec3<i32>(-77748i, 2147483647i, u_input.a), vec2<bool>(var_1.x, false), arg_0.d), Struct_5(vec4<f32>(-517f, -757f, 402f, -1025f), Struct_1(arg_0.a, arg_0.b, vec2<bool>(var_0, true), vec4<u32>(arg_1.x, 371u, u_input.b, 56262u)), Struct_1(var_0, vec3<i32>(arg_0.b.x, 0i, -1i), var_1.xz, arg_0.d), vec3<i32>(2167i, 0i, 4507i)), u_input.b, _wgslsmith_dot_vec4_u32(arg_0.d, arg_0.d)).c.d.b.zy, arg_0.b.xy << (~vec2<u32>(33018u, 1u) % vec2<u32>(32u))));
}

fn func_8(arg_0: Struct_4) -> StorageBuffer {
    var var_0 = Struct_2(vec3<f32>(_wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(-976f + -138f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(arg_0.a)), _wgslsmith_div_f32(-743f, _wgslsmith_div_f32(arg_0.d, arg_0.d)))), -760f), arg_0.c.d.wyz, countOneBits(~_wgslsmith_div_u32(~arg_0.b.x, u_input.b << (u_input.b % 32u))), Struct_1(func_6(Struct_3(~arg_0.b, func_5(Struct_1(arg_0.c.c.x, arg_0.c.b, arg_0.c.c, vec4<u32>(14016u, 4294967295u, u_input.b, arg_0.b.x)), Struct_5(vec4<f32>(arg_0.a, -996f, 1368f, -1759f), arg_0.c, arg_0.c, arg_0.c.b), u_input.b, 4294967295u).b, func_6(Struct_3(arg_0.c.d.zwz, Struct_2(vec3<f32>(arg_0.d, arg_0.d, 160f), vec3<u32>(u_input.b, arg_0.c.d.x, arg_0.c.d.x), u_input.b, Struct_1(arg_0.c.c.x, arg_0.c.b, arg_0.c.c, vec4<u32>(4294967295u, 4294967295u, arg_0.c.d.x, arg_0.c.d.x)), arg_0.c), Struct_2(vec3<f32>(365f, arg_0.d, arg_0.a), arg_0.c.d.zwy, 24364u, Struct_1(true, arg_0.c.b, vec2<bool>(false, arg_0.c.a), arg_0.c.d), arg_0.c)), Struct_4(arg_0.d, vec3<u32>(u_input.b, 30804u, 29278u), arg_0.c, arg_0.d), arg_0.c.a).b), Struct_4(arg_0.d, ~arg_0.c.d.xxz, arg_0.c, arg_0.d), arg_0.c.c.x && arg_0.c.a).b.e.c.x, vec3<i32>(0i, ~14557i, arg_0.c.b.x) ^ func_5(func_6(Struct_3(vec3<u32>(82010u, arg_0.b.x, u_input.b), Struct_2(vec3<f32>(arg_0.d, arg_0.a, arg_0.d), arg_0.c.d.xyy, 4294967295u, arg_0.c, arg_0.c), Struct_2(vec3<f32>(arg_0.d, arg_0.a, arg_0.d), arg_0.b, 105733u, Struct_1(true, vec3<i32>(-2147483647i, arg_0.c.b.x, 41500i), vec2<bool>(true, true), vec4<u32>(u_input.b, arg_0.c.d.x, 1037u, arg_0.b.x)), arg_0.c)), arg_0, arg_0.c.c.x).b.d, Struct_5(vec4<f32>(1000f, arg_0.a, -1399f, -223f), Struct_1(false, arg_0.c.b, arg_0.c.c, vec4<u32>(0u, 25118u, 36550u, 21250u)), arg_0.c, arg_0.c.b), arg_0.c.d.x, countOneBits(u_input.b)).b.e.b, func_2(vec2<f32>(_wgslsmith_f_op_f32(-717f - arg_0.a), _wgslsmith_f_op_f32(-1531f + 308f)), !(!vec4<bool>(false, arg_0.c.a, false, false))).c, ~vec4<u32>(~1u, func_1(vec3<f32>(328f, -545f, arg_0.d)).x, u_input.b, 48525u)), arg_0.c);
    var var_1 = vec4<bool>(var_0.e.c.x, var_0.e.a, false, !all(vec4<bool>(all(vec4<bool>(arg_0.c.a, var_0.d.c.x, true, true)), !var_0.e.c.x, !arg_0.c.a, var_0.e.a)));
    global0 = (1u ^ func_5(Struct_1(all(var_1.yz), select(arg_0.c.b, arg_0.c.b, vec3<bool>(true, true, var_0.d.a)), !vec2<bool>(arg_0.c.a, false), ~vec4<u32>(1u, 52019u, var_0.e.d.x, 0u)), Struct_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(276f, -164f, arg_0.d, 811f) + vec4<f32>(var_0.a.x, arg_0.d, 450f, arg_0.d)), Struct_1(var_0.e.a, vec3<i32>(1316i, arg_0.c.b.x, -9368i), var_1.yx, vec4<u32>(arg_0.b.x, u_input.b, u_input.b, 26699u)), func_5(Struct_1(true, var_0.d.b, vec2<bool>(var_1.x, true), vec4<u32>(u_input.b, var_0.b.x, u_input.b, 124u)), Struct_5(vec4<f32>(845f, 799f, arg_0.d, -1000f), arg_0.c, Struct_1(var_1.x, arg_0.c.b, vec2<bool>(var_0.e.c.x, arg_0.c.c.x), vec4<u32>(arg_0.c.d.x, arg_0.b.x, arg_0.c.d.x, 42283u)), arg_0.c.b), 4294967295u, 15659u).b.d, arg_0.c.b), ~arg_0.c.d.x, _wgslsmith_sub_u32(~var_0.b.x, func_4(var_0.e.a, Struct_5(vec4<f32>(1000f, -409f, var_0.a.x, var_0.a.x), Struct_1(arg_0.c.a, arg_0.c.b, var_0.d.c, arg_0.c.d), arg_0.c, vec3<i32>(var_0.d.b.x, 1i, var_0.d.b.x)), Struct_4(var_0.a.x, arg_0.c.d.yzz, arg_0.c, var_0.a.x)))).b.e.d.x) != func_4(var_0.e.a, Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, arg_0.d, 408f, arg_0.d)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1704f, var_0.a.x, 173f, arg_0.d)))), var_0.e, arg_0.c, ~(vec3<i32>(u_input.a, u_input.a, 0i) >> (arg_0.b % vec3<u32>(32u)))), arg_0);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d - 742f)))), 379f));
    global0 = arg_0.c.a;
    return StorageBuffer(var_0.b, var_0.a.zz);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_8(Struct_4(-365f, vec3<u32>(1u, 20779u, _wgslsmith_dot_vec3_u32(vec3<u32>(11409u, 29043u, u_input.b), vec3<u32>(1u, u_input.b, 46940u))) & _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(0u, 29590u, u_input.b)), Struct_1(true, func_7(Struct_1(true, vec3<i32>(-31965i, 0i, 2147483647i), vec2<bool>(false, true), vec4<u32>(1u, u_input.b, u_input.b, u_input.b)), func_1(vec3<f32>(1506f, 1904f, -837f))), vec2<bool>(true, true), firstTrailingBit(abs(vec4<u32>(u_input.b, 61729u, u_input.b, u_input.b)))), -817f));
}

