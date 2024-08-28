struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: Struct_1,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2) -> vec2<i32> {
    global0 = vec4<i32>(firstLeadingBit(countOneBits(global0.x | -u_input.b.x)), 0i, -_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-21596i, arg_0.a.x, u_input.b.x, -54608i) >> (vec4<u32>(32978u, arg_0.e.a, 28249u, u_input.a.x) % vec4<u32>(32u)), -vec4<i32>(18330i, -1i, 37118i, -52691i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, arg_0.a.x, -1i, 0i), vec4<i32>(-19501i, arg_0.b.x, 32174i, -2147483647i))), firstTrailingBit(abs(vec4<i32>(arg_0.d.x, u_input.b.x, global0.x, -1i)))), firstTrailingBit(-8397i ^ (1i >> (arg_0.c.a % 32u))) ^ arg_0.d.x);
    let var_0 = Struct_3(u_input.b.x, vec3<bool>(!all(vec2<bool>(true, true)), arg_0.a.x <= _wgslsmith_mod_i32(~0i, abs(u_input.b.x)), false), Struct_1(_wgslsmith_div_u32(u_input.c, ~0u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(arg_0.e.b + vec2<f32>(518f, 139f)), arg_0.e.d.zw))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e.c - _wgslsmith_div_f32(arg_0.c.c, 1441f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.b.x, arg_0.e.d.x, arg_0.e.b.x, 1184f))), vec4<f32>(-329f, arg_0.e.c, arg_0.c.c, _wgslsmith_f_op_f32(-arg_0.e.b.x)))));
    let var_1 = u_input.b.x;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1675f)) + _wgslsmith_f_op_f32(exp2(var_0.c.c))), _wgslsmith_f_op_f32(max(-1103f, _wgslsmith_f_op_f32(floor(-622f)))))))), -809f);
    let var_3 = Struct_4(1f, u_input.b.x, _wgslsmith_f_op_vec3_f32(trunc(var_0.c.d.yzx)));
    return ~(-abs(-u_input.b));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_4) -> vec3<bool> {
    global0 = select(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_3.b, -global0.x, arg_3.b << (1u % 32u), arg_0.b.x), -max(vec4<i32>(5878i, 41125i, global0.x, -64022i), vec4<i32>(arg_3.b, u_input.b.x, global0.x, arg_2.x)), ~(vec4<i32>(arg_2.x, -1i, u_input.b.x, 0i) >> (vec4<u32>(arg_0.e.a, u_input.a.x, 71697u, u_input.c) % vec4<u32>(32u)))), vec4<i32>(select(~u_input.b.x, -2147483647i, arg_0.e.a >= 48186u), select(i32(-1i) * -10235i, arg_2.x | u_input.b.x, any(vec3<bool>(true, false, false))), -2147483647i, abs(-1i))), ~vec4<i32>(reverseBits(7038i), reverseBits(arg_0.a.x) << ((arg_0.e.a << (19816u % 32u)) % 32u), ~select(-28104i, u_input.b.x, true), ~_wgslsmith_div_i32(57786i, 51325i)), _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(global0.zw, vec2<i32>(global0.x, 0i)), ~0i), 1i) >= u_input.b.x);
    var var_0 = select(0u, ~(~4294967295u), select(true, false, (arg_3.b == global0.x) && true)) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(1u, 2599u), 0u), vec2<u32>(_wgslsmith_mod_u32(1u >> (arg_0.e.a % 32u), max(6377u, 26073u)), u_input.c));
    var_0 = _wgslsmith_mult_u32(reverseBits(_wgslsmith_div_u32(19012u, 41948u)), 53646u);
    var var_1 = arg_0.e.a;
    return !select(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false)), select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(true, true)), 7343u >= u_input.c, true), true), false);
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_4) -> Struct_1 {
    var var_0 = !select(func_4(Struct_2(reverseBits(vec2<i32>(-45014i, u_input.b.x)), global0.www << (vec3<u32>(u_input.c, 84517u, 4294967295u) % vec3<u32>(32u)), Struct_1(arg_1, vec2<f32>(arg_0.x, 118f), arg_2.c.x, vec4<f32>(arg_2.c.x, arg_0.x, arg_0.x, -877f)), func_3(Struct_2(vec2<i32>(-2147483647i, -19684i), vec3<i32>(u_input.b.x, arg_2.b, u_input.b.x), Struct_1(71287u, arg_0, 1000f, vec4<f32>(115f, arg_0.x, 741f, 245f)), u_input.b, Struct_1(arg_1, arg_0, arg_0.x, vec4<f32>(arg_0.x, -1386f, -435f, -685f)))), Struct_1(48069u, vec2<f32>(424f, arg_0.x), 2750f, vec4<f32>(arg_2.a, 341f, -464f, -928f))), _wgslsmith_f_op_f32(exp2(1f)), -_wgslsmith_clamp_vec2_i32(global0.yx, vec2<i32>(0i, arg_2.b), vec2<i32>(global0.x, arg_2.b)), Struct_4(_wgslsmith_f_op_f32(944f * -875f), reverseBits(u_input.b.x), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.x, arg_2.c.x, arg_0.x), arg_2.c)))), vec3<bool>(!all(vec2<bool>(true, false)), any(vec3<bool>(true, true, true)), any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(-arg_2.c.x) < -1909f);
    var var_1 = _wgslsmith_f_op_f32(floor(arg_0.x));
    var var_2 = Struct_1(~1u, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a, arg_2.c.x)), _wgslsmith_f_op_vec2_f32(-arg_0), true)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.c.yx))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-arg_2.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(668f, -1424f, 294f, arg_0.x))))));
    global0 = vec4<i32>(global0.x | 1i, firstTrailingBit(i32(-1i) * -global0.x) >> (~_wgslsmith_add_u32(1u, 35435u) % 32u), select(global0.x, 1i, true), -min(_wgslsmith_sub_i32(-global0.x, countOneBits(u_input.b.x)), u_input.b.x));
    var var_3 = _wgslsmith_f_op_f32(856f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-2053f)))));
    return Struct_1(_wgslsmith_div_u32(var_2.a, min(firstLeadingBit(~0u), arg_1 ^ 0u)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_2.d.x - arg_0.x), _wgslsmith_f_op_f32(-1817f - var_2.d.x)), _wgslsmith_f_op_vec2_f32(-var_2.b)), -293f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -578f), _wgslsmith_f_op_f32(min(arg_2.a, -1741f)), _wgslsmith_f_op_f32(arg_0.x - arg_2.c.x), -536f))));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: vec3<f32>) -> vec2<f32> {
    let var_0 = Struct_3(9277i, vec3<bool>(true, -(64136i >> (arg_0.x % 32u)) < 51708i, true), func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-590f, _wgslsmith_f_op_f32(step(arg_2.x, 481f))) + vec2<f32>(_wgslsmith_f_op_f32(654f + 177f), _wgslsmith_f_op_f32(abs(947f)))), ~(~(arg_0.x | 1u)), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.x))), _wgslsmith_mult_i32(_wgslsmith_mult_i32(-1i, global0.x), _wgslsmith_div_i32(arg_1, 40685i)), _wgslsmith_div_vec3_f32(vec3<f32>(arg_2.x, 1111f, arg_2.x), arg_2))));
    global0 = -_wgslsmith_div_vec4_i32(vec4<i32>(-1i, _wgslsmith_sub_i32(select(var_0.a, var_0.a, var_0.b.x), countOneBits(var_0.a)), global0.x, -_wgslsmith_sub_i32(u_input.b.x, 2601i)), vec4<i32>(var_0.a, max(i32(-1i) * -1i, 0i), countOneBits(-2147483647i >> (1u % 32u)), -(~global0.x)));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(round(-1000f)), u_input.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2 * arg_2), arg_2), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-783f, arg_2.x, 724f)))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(247f, var_0.c.d.x, -451f), _wgslsmith_f_op_vec3_f32(arg_2 + arg_2), var_0.b))))));
    var var_2 = !select(func_4(Struct_2(vec2<i32>(var_0.a, arg_1), global0.xyw ^ vec3<i32>(arg_1, 2147483647i, 54316i), func_2(vec2<f32>(arg_2.x, var_1.c.x), 723u, Struct_4(1173f, -205i, vec3<f32>(-689f, 864f, arg_2.x))), _wgslsmith_mult_vec2_i32(vec2<i32>(global0.x, global0.x), global0.zz), func_2(vec2<f32>(var_0.c.c, var_1.c.x), u_input.a.x, var_1)), var_0.c.d.x, vec2<i32>(-54449i, arg_1), Struct_4(var_1.c.x, ~u_input.b.x, arg_2)).zy, !var_0.b.yx, false);
    global0 = -max(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, var_0.a, global0.x), vec4<i32>(-9873i, arg_1, arg_1, arg_1), vec4<i32>(var_1.b, 1408i, -31699i, -1592i)) >> (vec4<u32>(var_0.c.a, arg_0.x, var_0.c.a, arg_0.x) % vec4<u32>(32u)), -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, global0.x, var_0.a, 35889i), vec4<i32>(global0.x, var_1.b, -27628i, -13345i))) ^ ~vec4<i32>(1i, -_wgslsmith_mod_i32(arg_1, arg_1), _wgslsmith_mod_i32(~(-7007i), global0.x), i32(-1i) * -2147483647i);
    return var_1.c.yy;
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(vec2<i32>(~(-_wgslsmith_add_i32(-7513i, global0.x)), -1i), -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, abs(-10751i), 2147483647i >> (u_input.a.x % 32u)), global0.zzw), Struct_1(arg_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(arg_0.d.yw, vec2<f32>(arg_2.c, arg_2.b.x))), _wgslsmith_f_op_vec2_f32(floor(arg_2.d.yz)))), arg_0.d.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.c, 1000f, 494f, -840f), arg_2.d))))), vec2<i32>(~(-1663i), 1i), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.c, arg_2.b.x), arg_2.d.xy) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1130f, arg_2.b.x))))), ~arg_0.a >> (~firstTrailingBit(arg_0.a) % 32u), Struct_4(-1000f, u_input.b.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2.b.x, 1000f, arg_0.b.x))), _wgslsmith_f_op_vec3_f32(-arg_2.d.wwx)))));
    global0 = ~select(abs(~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a.x, global0.x, u_input.b.x, var_0.a.x), vec4<i32>(-2147483647i, var_0.a.x, u_input.b.x, -10663i), vec4<i32>(57319i, global0.x, 0i, u_input.b.x))), abs(reverseBits(~vec4<i32>(-33164i, var_0.a.x, -7442i, 1i))), arg_1);
    global0 = min(reverseBits(abs(firstTrailingBit(countOneBits(vec4<i32>(global0.x, 0i, var_0.a.x, global0.x))))), select(firstTrailingBit(-vec4<i32>(var_0.d.x, global0.x, 1i, 1i)) << ((abs(vec4<u32>(4294967295u, 1u, 1019u, arg_0.a)) | vec4<u32>(90080u, var_0.c.a, 97083u, 454u)) % vec4<u32>(32u)), ~_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(global0.x, 32480i, 17865i, var_0.a.x)), vec4<i32>(global0.x, 0i, 0i, 1i)), !vec4<bool>(arg_1, arg_1, arg_0.a >= arg_2.a, true)));
    var var_1 = Struct_3(global0.x >> (_wgslsmith_mod_u32(arg_2.a, abs(var_0.e.a) ^ _wgslsmith_sub_u32(arg_2.a, u_input.a.x)) % 32u), func_4(Struct_2(vec2<i32>(-37388i, u_input.b.x ^ global0.x), min(var_0.b, abs(vec3<i32>(3857i, 38812i, 2147483647i))), Struct_1(4294967295u, vec2<f32>(-737f, var_0.e.b.x), _wgslsmith_f_op_f32(arg_0.c - arg_2.b.x), vec4<f32>(1045f, -1005f, 852f, arg_2.c)), select(global0.zy, -vec2<i32>(1i, 21404i), true), Struct_1(1u, _wgslsmith_f_op_vec2_f32(vec2<f32>(-698f, arg_2.c) * var_0.e.b), _wgslsmith_f_op_f32(-var_0.e.b.x), _wgslsmith_f_op_vec4_f32(-arg_0.d))), -2079f, _wgslsmith_mult_vec2_i32(-var_0.d, global0.wy), Struct_4(_wgslsmith_f_op_f32(arg_0.d.x * -1696f), func_3(Struct_2(global0.zx, vec3<i32>(5204i, 4321i, -2147483647i), arg_0, vec2<i32>(0i, 27619i), arg_2)).x, vec3<f32>(_wgslsmith_f_op_f32(-129f - 1000f), _wgslsmith_div_f32(-1335f, -507f), _wgslsmith_f_op_f32(-1241f * var_0.e.d.x)))), arg_0);
    let var_2 = select(~firstTrailingBit(vec3<u32>(var_1.c.a, 6418u, 57181u) << (vec3<u32>(arg_2.a, arg_2.a, var_0.c.a) % vec3<u32>(32u))), ~vec3<u32>(min(var_0.c.a, arg_0.a), var_1.c.a & u_input.c, 0u), !(!vec3<bool>(true, var_1.b.x, true))) >> (countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(~1u, ~34268u, _wgslsmith_add_u32(var_0.c.a, arg_2.a)), _wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, arg_2.a, 4397u)), select(vec3<u32>(31725u, 23862u, 89512u), vec3<u32>(10340u, 20233u, 67645u), var_1.b.x)))) % vec3<u32>(32u));
    return func_2(arg_0.d.wx, u_input.a.x, Struct_4(_wgslsmith_f_op_f32(floor(-1171f)), u_input.b.x, vec3<f32>(arg_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.c.c, -2054f)) + _wgslsmith_f_op_f32(step(699f, arg_0.c))), _wgslsmith_f_op_f32(var_0.c.d.x - _wgslsmith_f_op_f32(max(1721f, arg_0.c))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(46666u, 2794u, u_input.c) & vec3<u32>(5621u, u_input.a.x, u_input.c), min(vec3<u32>(0u, 0u, u_input.a.x), ~vec3<u32>(u_input.a.x, 14003u, u_input.c))), vec2<f32>(1522f, _wgslsmith_f_op_f32(max(-1157f, _wgslsmith_f_op_f32(-1163f - 1340f)))), _wgslsmith_f_op_f32(trunc(204f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1074f, -896f, -1256f, -1722f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(939f, 232f, -1252f, -121f))))))), false, Struct_1(0u, _wgslsmith_f_op_vec2_f32(func_1(vec3<u32>(20932u, u_input.a.x, 17197u) | ~vec3<u32>(u_input.c, 75957u, u_input.a.x), -countOneBits(global0.x), vec3<f32>(_wgslsmith_f_op_f32(701f * -1802f), _wgslsmith_f_op_f32(-1000f + -1233f), _wgslsmith_f_op_f32(floor(-1062f))))), 342f, vec4<f32>(1f, 1f, 1f, 1f)));
    var_0 = func_5(Struct_1(u_input.c, vec2<f32>(_wgslsmith_f_op_f32(floor(117f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * var_0.c) + _wgslsmith_f_op_f32(-235f + -2578f))), -527f, vec4<f32>(1f, 1f, 1f, 1f)), true, func_5(func_2(_wgslsmith_f_op_vec2_f32(func_1(vec3<u32>(0u, var_0.a, 54941u), global0.x, _wgslsmith_f_op_vec3_f32(-var_0.d.xwy))), ~(670u << (1u % 32u)), Struct_4(_wgslsmith_f_op_f32(sign(-1511f)), 20650i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-706f, 1607f, var_0.b.x)))), ~(global0.x & 9631i) > ~(-60128i), func_5(Struct_1(select(var_0.a, 20796u, false), var_0.b, var_0.d.x, _wgslsmith_f_op_vec4_f32(ceil(var_0.d))), true, Struct_1(_wgslsmith_sub_u32(u_input.a.x, 0u), _wgslsmith_f_op_vec2_f32(-var_0.b), -377f, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.b.x, var_0.c, -699f, -727f)))))));
    var var_1 = Struct_4(func_2(_wgslsmith_f_op_vec2_f32(var_0.d.yx + _wgslsmith_div_vec2_f32(var_0.d.yy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 442f)))), firstLeadingBit(4294967295u), Struct_4(var_0.d.x, _wgslsmith_div_i32(reverseBits(0i), u_input.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0.d.wwy, var_0.d.yyx, true))))).b.x, 1i, func_5(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.d.wz) - _wgslsmith_div_vec2_f32(var_0.b, vec2<f32>(257f, 258f))), 75325u, Struct_4(_wgslsmith_f_op_f32(var_0.d.x - -107f), 65217i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, var_0.b.x, var_0.c)))), true, Struct_1(u_input.a.x & _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, u_input.c), u_input.a), var_0.d.zx, -573f, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(var_0.d)))))).d.yyz);
    var var_2 = select(vec3<u32>(~(~46577u), var_0.a, select(countOneBits(22701u), ~var_0.a, true)), _wgslsmith_mult_vec3_u32(~select(vec3<u32>(42502u, u_input.c, 0u), vec3<u32>(u_input.c, u_input.c, 11354u), vec3<bool>(false, true, false)), ~vec3<u32>(0u, 0u, 0u)), func_4(Struct_2(select(vec2<i32>(1i, -14607i), global0.yx, true), global0.wyw | vec3<i32>(-21655i, -9943i, global0.x), Struct_1(0u, var_1.c.xy, -1000f, var_0.d), -vec2<i32>(var_1.b, 17770i), func_5(Struct_1(1u, vec2<f32>(var_1.c.x, -762f), var_1.a, var_0.d), false, Struct_1(u_input.c, vec2<f32>(var_0.b.x, -1000f), 221f, vec4<f32>(-155f, var_1.c.x, var_0.c, 307f)))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(step(var_0.b.x, var_1.c.x))), vec2<i32>(_wgslsmith_mult_i32(u_input.b.x, -2147483647i), 18621i | global0.x), Struct_4(var_0.d.x, global0.x << (64969u % 32u), vec3<f32>(var_1.a, var_0.c, -1852f))).x) | ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(14157u, var_0.a, u_input.a.x), vec3<u32>(1u, var_0.a, u_input.a.x)) ^ reverseBits(firstLeadingBit(vec3<u32>(1u, 0u, var_0.a))));
    let var_3 = Struct_3(global0.x, func_4(Struct_2(-u_input.b, _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(global0.wwx, global0.zzy, vec3<i32>(-15746i, var_1.b, global0.x)), global0.xyy), Struct_1(28620u, var_0.b, _wgslsmith_f_op_f32(min(-756f, 1304f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1498f, -671f, var_1.a, var_1.c.x) * var_0.d)), u_input.b, Struct_1(var_2.x, vec2<f32>(-1000f, var_1.a), -1053f, _wgslsmith_f_op_vec4_f32(var_0.d - var_0.d))), _wgslsmith_f_op_f32(select(var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f), true)), ~vec2<i32>(~var_1.b, -1i), Struct_4(var_1.c.x, _wgslsmith_div_i32(i32(-1i) * -1i, -u_input.b.x), _wgslsmith_div_vec3_f32(vec3<f32>(578f, var_0.c, var_1.a), var_1.c))), Struct_1(4294967295u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_1.a)), var_1.c.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.d * var_0.d)))));
    var_2 = _wgslsmith_mod_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(29012u, 78496u, 1u), min(vec3<u32>(u_input.a.x, u_input.c, 0u), vec3<u32>(var_2.x, 58657u, var_3.c.a)), vec3<u32>(4294967295u, var_3.c.a, 4294967295u)), select(vec3<u32>(reverseBits(u_input.a.x), _wgslsmith_add_u32(0u, 7108u), 1u), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.a, u_input.c, 1u), vec3<u32>(var_0.a, var_2.x, u_input.a.x)) >> ((vec3<u32>(1u, u_input.c, u_input.a.x) ^ vec3<u32>(4294967295u, var_3.c.a, 0u)) % vec3<u32>(32u)), select(var_3.b, !vec3<bool>(var_3.b.x, true, var_3.b.x), !var_3.b.x))) & vec3<u32>(var_3.c.a, ~u_input.c, u_input.a.x);
    var_0 = Struct_1(1897u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-788f * -1683f), _wgslsmith_f_op_f32(abs(382f))))), _wgslsmith_f_op_f32(f32(-1f) * -1200f), _wgslsmith_f_op_vec4_f32(select(var_3.c.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.c.x, -253f, var_3.c.b.x, var_0.d.x), vec4<f32>(var_1.a, 326f, var_1.a, -297f))), vec4<f32>(var_0.c, 1000f, -887f, 1638f), any(vec4<bool>(var_3.b.x, var_3.b.x, var_3.b.x, var_3.b.x)))) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_0.d, vec4<f32>(var_0.d.x, var_0.d.x, 1366f, 2502f)), _wgslsmith_f_op_vec4_f32(select(var_3.c.d, var_0.d, vec4<bool>(false, var_3.b.x, false, true))))), vec4<bool>(2487f < var_0.b.x, _wgslsmith_f_op_f32(select(var_3.c.d.x, var_3.c.d.x, false)) >= var_1.c.x, var_3.b.x, !var_3.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec4_u32(vec4<u32>(var_3.c.a, 11601u, 0u, 31523u) << (vec4<u32>(var_2.x, var_0.a, var_3.c.a, var_0.a) % vec4<u32>(32u)), vec4<u32>(u_input.a.x, 0u, 0u, 1u)) >> (~(~vec4<u32>(var_3.c.a, var_3.c.a, 6721u, 0u)) % vec4<u32>(32u)));
}

