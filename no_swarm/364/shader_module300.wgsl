struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<i32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec2<f32>,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: Struct_4,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(362f * -184f)), _wgslsmith_f_op_f32(step(2480f, -1035f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-643f - 169f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(435f, -337f, -364f), vec3<f32>(1414f, 2068f, 140f), false)))), vec3<f32>(146f, _wgslsmith_f_op_f32(-1135f - -325f), _wgslsmith_f_op_f32(486f + -1573f)), false)))));
    var var_1 = arg_2;
    var var_2 = arg_2;
    var var_3 = vec3<i32>(-16158i, _wgslsmith_mod_i32(2147483647i, -_wgslsmith_clamp_i32(select(var_1.a.c.x, 0i, false), -27363i, arg_2.a.c.x | var_2.a.c.x)), reverseBits(-_wgslsmith_mult_i32(var_1.a.c.x, 2147483647i) | _wgslsmith_dot_vec4_i32(vec4<i32>(17251i, var_2.a.c.x, 1i, arg_2.a.c.x), vec4<i32>(53016i, arg_0.x, 1i, 2147483647i) | vec4<i32>(var_2.a.c.x, -1i, var_2.a.c.x, 0i))));
    let var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1816f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - -1453f), _wgslsmith_f_op_f32(floor(1000f))), all(vec4<bool>(true, _wgslsmith_f_op_f32(sign(-1191f)) == -785f, false, arg_2.a.e))));
    return var_1.a;
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> Struct_3 {
    var var_0 = ~(~(-1i));
    var var_1 = func_2(min(vec3<i32>(-2147483647i << (arg_0.a.x % 32u), arg_0.c.x, arg_0.c.x), vec3<i32>(_wgslsmith_sub_i32(i32(-1i) * -2147483647i, -arg_0.c.x), arg_0.c.x, -1i)), select(!(!(!vec3<bool>(arg_1, arg_0.e, false))), !select(vec3<bool>(false, true, true), vec3<bool>(arg_0.e, arg_0.e, true), vec3<bool>(false, arg_0.e, false)), !(!arg_1 | true)), Struct_2(arg_0));
    let var_2 = vec2<bool>(var_1.d >= select(u_input.a.x, arg_0.a.x, var_1.e), !(var_1.e && arg_1));
    let var_3 = firstTrailingBit(~(~reverseBits(_wgslsmith_mult_u32(u_input.c.x, u_input.a.x))));
    var var_4 = func_2(-vec3<i32>(_wgslsmith_sub_i32(var_1.c.x, arg_0.c.x), -5163i, 1i), vec3<bool>(arg_0.e, true, ~(~u_input.d.x) > ~_wgslsmith_mod_u32(0u, var_3)), Struct_2(arg_0));
    return Struct_3(Struct_2(Struct_1(vec3<u32>(11942u, ~21901u, countOneBits(var_3)), _wgslsmith_f_op_f32(select(1000f, -2654f, false)) > 187f, var_4.c >> (var_1.a.zx % vec2<u32>(32u)), var_4.a.x, func_2(~vec3<i32>(var_4.c.x, var_1.c.x, 2147483647i), select(vec3<bool>(true, arg_1, false), vec3<bool>(var_1.b, arg_0.b, false), vec3<bool>(var_1.e, arg_0.b, true)), Struct_2(Struct_1(vec3<u32>(1u, var_1.a.x, u_input.d.x), true, vec2<i32>(1i, 26145i), 24965u, true))).e)), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -148f), 1646f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(294f)) + _wgslsmith_f_op_f32(-1637f * 505f)))), 1000f, _wgslsmith_f_op_f32(-1f)), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1401f, 1179f) * _wgslsmith_f_op_f32(ceil(-956f))), _wgslsmith_f_op_f32(813f * 143f))), 134f), Struct_2(Struct_1(vec3<u32>(var_4.d | 24742u, _wgslsmith_div_u32(1u, 31756u), 12831u), true, vec2<i32>(-1i) * -var_4.c, var_1.a.x, true)), func_2(vec3<i32>(var_4.c.x, 1i, arg_0.c.x) & reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(0i, arg_0.c.x, arg_0.c.x), vec3<i32>(-43392i, -1i, -2147483647i))), !vec3<bool>(true || var_4.e, arg_1, select(false, arg_1, false)), Struct_2(arg_0)).d);
}

fn func_4(arg_0: Struct_3) -> Struct_5 {
    let var_0 = ~(_wgslsmith_add_vec3_u32(func_2(vec3<i32>(-26624i, -2147483647i, -61481i), vec3<bool>(false, arg_0.d.a.b, arg_0.d.a.b), arg_0.d).a, vec3<u32>(u_input.d.x, u_input.d.x, 4294967295u)) ^ (~_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.e, 23441u, 136669u), u_input.c) & arg_0.d.a.a));
    var var_1 = ~vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(var_0, ~vec3<u32>(14601u, 35299u, 0u)), _wgslsmith_mod_vec3_u32(var_0, ~vec3<u32>(u_input.a.x, u_input.d.x, arg_0.a.a.a.x))), 12525u);
    var_1 = vec2<u32>(firstTrailingBit(_wgslsmith_mult_u32(4294967295u, _wgslsmith_clamp_u32(1u, abs(arg_0.e), firstLeadingBit(arg_0.a.a.d)))), var_0.x);
    let var_2 = var_1.x;
    return Struct_5(Struct_4(arg_0.a, max(_wgslsmith_mod_u32(u_input.d.x, u_input.a.x), abs(1u))), func_3(func_3(func_2(vec3<i32>(1i, arg_0.a.a.c.x, 25364i) ^ vec3<i32>(arg_0.a.a.c.x, arg_0.d.a.c.x, arg_0.a.a.c.x), !vec3<bool>(arg_0.d.a.b, true, arg_0.a.a.b), func_3(Struct_1(var_0, false, vec2<i32>(1i, 9669i), 40480u, arg_0.d.a.b), arg_0.a.a.e).d), !func_3(Struct_1(vec3<u32>(arg_0.e, arg_0.e, 32454u), true, vec2<i32>(arg_0.d.a.c.x, arg_0.a.a.c.x), 53640u, arg_0.a.a.b), arg_0.d.a.e).d.a.b).a.a, true).d, Struct_4(func_3(func_2(countOneBits(vec3<i32>(-8543i, arg_0.d.a.c.x, arg_0.d.a.c.x)), select(vec3<bool>(true, false, arg_0.d.a.e), vec3<bool>(true, false, arg_0.d.a.b), vec3<bool>(arg_0.a.a.b, arg_0.a.a.e, false)), func_3(arg_0.a.a, arg_0.a.a.b).a), false).d, 34128u), Struct_4(arg_0.d, countOneBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, arg_0.a.a.a.x, 1u, 4633u), u_input.a))));
}

fn func_5(arg_0: Struct_5) -> vec2<bool> {
    let var_0 = func_3(func_2(_wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, 1i), _wgslsmith_div_vec3_i32(vec3<i32>(-80078i, 1i, arg_0.d.a.a.c.x), vec3<i32>(arg_0.a.a.a.c.x, arg_0.b.a.c.x, -18881i))) | firstLeadingBit(vec3<i32>(arg_0.a.a.a.c.x, -2147483647i, arg_0.b.a.c.x)), !select(vec3<bool>(false, arg_0.b.a.e, true), select(vec3<bool>(true, arg_0.a.a.a.e, arg_0.a.a.a.b), vec3<bool>(arg_0.a.a.a.e, arg_0.d.a.a.e, arg_0.b.a.b), false), select(vec3<bool>(false, arg_0.c.a.a.b, false), vec3<bool>(arg_0.c.a.a.b, arg_0.a.a.a.e, true), true)), arg_0.d.a), 76254u <= (firstLeadingBit(func_2(vec3<i32>(arg_0.b.a.c.x, -1i, arg_0.d.a.a.c.x), vec3<bool>(false, arg_0.c.a.a.b, false), arg_0.b).a.x) & arg_0.c.b));
    var var_1 = false;
    var var_2 = func_4(Struct_3(func_3(var_0.d.a, !arg_0.a.a.a.b && (arg_0.d.a.a.b | true)).a, var_0.b, _wgslsmith_f_op_vec2_f32(var_0.b.zz + _wgslsmith_f_op_vec2_f32(-vec2<f32>(824f, var_0.c.x))), func_4(func_3(func_2(vec3<i32>(14703i, -51237i, 0i), vec3<bool>(arg_0.d.a.a.b, false, true), Struct_2(arg_0.c.a.a)), 1i == arg_0.c.a.a.c.x)).a.a, _wgslsmith_mult_u32(62989u, 0u << (1u % 32u))));
    let var_3 = func_4(Struct_3(arg_0.b, var_0.b, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.c, var_0.c) - _wgslsmith_div_vec2_f32(var_0.b.yz, vec2<f32>(-712f, 498f))))), arg_0.a.a, _wgslsmith_dot_vec2_u32(abs(var_0.a.a.a.xx ^ var_0.d.a.a.yy), arg_0.d.a.a.a.zx)));
    var_1 = arg_0.b.a.b;
    return select(select(!(!(!vec2<bool>(false, var_3.d.a.a.b))), !(!(!vec2<bool>(arg_0.c.a.a.e, true))), vec2<bool>(false, var_0.d.a.e & !arg_0.d.a.a.e)), vec2<bool>(arg_0.a.a.a.b, false), vec2<bool>(func_4(func_3(arg_0.c.a.a, !var_0.a.a.b)).a.a.a.e, true));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_mult_u32(u_input.b.x, u_input.b.x);
    let var_1 = 24124u;
    let var_2 = select(vec2<bool>(true, false), !vec2<bool>(any(vec3<bool>(true, true, true)), !any(vec3<bool>(true, false, false))), func_5(func_4(func_3(func_2(vec3<i32>(-22382i, 16056i, 1i), vec3<bool>(false, true, false), Struct_2(Struct_1(vec3<u32>(var_1, var_1, var_1), false, vec2<i32>(-26969i, -62488i), var_1, true))), false))));
    var var_3 = Struct_2(Struct_1(select(func_2(select(vec3<i32>(-2147483647i, -3854i, 50144i), vec3<i32>(-5364i, -1i, -1i), var_2.x), vec3<bool>(true, true, var_2.x), func_4(Struct_3(Struct_2(Struct_1(vec3<u32>(4294967295u, 43949u, var_1), var_2.x, vec2<i32>(39789i, 29548i), 55333u, false)), vec4<f32>(-157f, 1103f, 152f, 1087f), vec2<f32>(1076f, -1053f), Struct_2(Struct_1(u_input.b, true, vec2<i32>(32811i, 1i), 4294967295u, var_2.x)), 53235u)).b).a, ~firstLeadingBit(vec3<u32>(u_input.b.x, 4294967295u, u_input.c.x)), !(var_2.x || false)), true, func_3(Struct_1(func_4(Struct_3(Struct_2(Struct_1(u_input.b, var_2.x, vec2<i32>(54451i, 1i), 2035u, var_2.x)), vec4<f32>(-1345f, 1691f, -628f, -1886f), vec2<f32>(-1000f, -1591f), Struct_2(Struct_1(u_input.c, true, vec2<i32>(-1i, 1i), u_input.b.x, var_2.x)), 71497u)).d.a.a.a, true, vec2<i32>(0i, 2147483647i), ~0u, var_2.x), var_2.x).a.a.c, var_1, true));
    var_3 = Struct_2(Struct_1(_wgslsmith_clamp_vec3_u32(var_3.a.a ^ vec3<u32>(var_1, var_3.a.a.x, var_1), func_4(Struct_3(Struct_2(var_3.a), vec4<f32>(441f, 486f, 138f, -241f), vec2<f32>(-371f, 2838f), Struct_2(var_3.a), var_1)).b.a.a, _wgslsmith_mult_vec3_u32(u_input.c | u_input.c, vec3<u32>(u_input.a.x, 6402u, 10124u))), !var_3.a.e, firstTrailingBit(min(_wgslsmith_sub_vec2_i32(vec2<i32>(var_3.a.c.x, 1i), vec2<i32>(-1i, -45559i)), select(vec2<i32>(-1i, var_3.a.c.x), var_3.a.c, var_2))), _wgslsmith_mult_u32(~(16630u & var_1), var_3.a.d), true));
    return Struct_3(func_4(Struct_3(func_3(func_2(vec3<i32>(1092i, -6154i, -40780i), vec3<bool>(var_2.x, false, var_3.a.b), Struct_2(var_3.a)), true).d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(280f, 1517f)) * _wgslsmith_div_vec2_f32(vec2<f32>(-1126f, -832f), vec2<f32>(1000f, -1000f))), Struct_2(Struct_1(vec3<u32>(u_input.c.x, 19806u, 551u), var_2.x, var_3.a.c, var_1, var_3.a.b)), _wgslsmith_div_u32(u_input.a.x, var_1) | ~19556u)).c.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -832f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -925f), _wgslsmith_f_op_f32(f32(-1f) * -2115f)))), 1090f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1414f - _wgslsmith_f_op_f32(882f + -919f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1016f, -676f))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(select(1263f, -1826f, true))))), func_3(Struct_1(firstLeadingBit(u_input.c), var_2.x, var_3.a.c, _wgslsmith_add_u32(~var_3.a.d, var_3.a.a.x), any(vec3<bool>(true, true, true))), var_2.x).d, ~((var_1 << (var_1 % 32u)) & 19656u));
}

fn func_6(arg_0: Struct_3, arg_1: f32) -> Struct_2 {
    var var_0 = Struct_4(Struct_2(Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, 10848u) << (arg_0.d.a.a % vec3<u32>(32u)), ~vec3<u32>(4294967295u, arg_0.d.a.d, 36040u)), !arg_0.a.a.b, arg_0.d.a.c, 73873u, true)), 4294967295u);
    let var_1 = vec2<bool>(arg_0.d.a.b & !any(vec4<bool>(false, arg_0.d.a.e, arg_0.a.a.e, false)), select(52072i > (arg_0.a.a.c.x & (arg_0.a.a.c.x << (arg_0.e % 32u))), func_2(abs(vec3<i32>(-1i, arg_0.d.a.c.x, 2147483647i)) << (u_input.b % vec3<u32>(32u)), select(vec3<bool>(var_0.a.a.e, arg_0.a.a.e, arg_0.d.a.e), vec3<bool>(true, true, arg_0.d.a.b), true), var_0.a).b, 4294967295u < _wgslsmith_dot_vec2_u32(~u_input.a.yx, ~u_input.b.xy)));
    var var_2 = firstLeadingBit(_wgslsmith_add_vec2_i32(~arg_0.d.a.c, ~(func_3(var_0.a.a, var_1.x).d.a.c & _wgslsmith_mult_vec2_i32(var_0.a.a.c, arg_0.a.a.c))));
    var_0 = Struct_4(func_1().d, var_0.b & arg_0.a.a.d);
    var_0 = Struct_4(var_0.a, func_2(~firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(-20788i, -43842i, arg_0.d.a.c.x), vec3<i32>(var_0.a.a.c.x, arg_0.a.a.c.x, -1i))), select(vec3<bool>(arg_0.d.a.b || false, func_4(Struct_3(Struct_2(var_0.a.a), arg_0.b, arg_0.c, Struct_2(var_0.a.a), var_0.b)).d.a.a.e, true), select(vec3<bool>(arg_0.a.a.e, var_0.a.a.b, var_1.x), vec3<bool>(false, arg_0.d.a.b, true), select(vec3<bool>(false, false, false), vec3<bool>(arg_0.a.a.e, true, false), var_1.x)), vec3<bool>(!arg_0.d.a.e, !var_0.a.a.e, !var_0.a.a.e)), func_4(func_3(arg_0.a.a, false)).a.a).d);
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_1(), 316f);
    var var_1 = _wgslsmith_add_vec3_u32(func_3(func_4(func_3(Struct_1(vec3<u32>(var_0.a.d, 4294967295u, u_input.c.x), var_0.a.b, var_0.a.c, 27102u, false), !var_0.a.e)).d.a.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(727f)))) < -632f).d.a.a, abs(var_0.a.a));
    let var_2 = Struct_3(func_3(Struct_1(vec3<u32>(~var_1.x, _wgslsmith_mult_u32(8336u, var_0.a.d), ~var_0.a.d), func_5(Struct_5(Struct_4(Struct_2(var_0.a), var_0.a.d), Struct_2(var_0.a), Struct_4(Struct_2(Struct_1(var_0.a.a, false, vec2<i32>(var_0.a.c.x, -4287i), 1u, true)), 1u), Struct_4(Struct_2(var_0.a), u_input.b.x))).x, _wgslsmith_div_vec2_i32(var_0.a.c, ~var_0.a.c), ~20003u, func_3(Struct_1(var_0.a.a, var_0.a.b, var_0.a.c, var_0.a.a.x, var_0.a.e), var_0.a.b).d.a.b | true), !any(!vec2<bool>(var_0.a.e, var_0.a.e))).a, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -452f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1321f))), 1541f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -966f), _wgslsmith_f_op_f32(sign(1650f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-390f, 1000f, -1000f, -855f), vec4<f32>(-2187f, -613f, 1000f, 2098f)) - vec4<f32>(1411f, -1000f, -691f, 2426f)), vec4<f32>(_wgslsmith_div_f32(-385f, 1531f), -347f, _wgslsmith_f_op_f32(round(1615f)), -969f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(735f * 1137f)), _wgslsmith_f_op_f32(step(-1876f, _wgslsmith_f_op_f32(max(-1083f, 792f))))) + vec2<f32>(-955f, _wgslsmith_f_op_f32(f32(-1f) * -1155f))), func_6(func_1(), 286f), u_input.b.x);
    var var_3 = all(select(!(!(!vec4<bool>(var_0.a.e, var_0.a.e, true, true))), vec4<bool>(all(vec2<bool>(true, false)), !var_0.a.e, var_0.a.e, !(!var_2.a.a.e)), select(select(select(vec4<bool>(true, var_0.a.e, var_2.d.a.b, false), vec4<bool>(false, false, false, var_0.a.e), vec4<bool>(var_2.d.a.e, var_2.a.a.b, true, false)), vec4<bool>(false, var_2.a.a.e, true, false), var_0.a.c.x > 46192i), vec4<bool>(false, var_2.d.a.e, var_0.a.b != var_0.a.b, false | var_2.a.a.e), false)));
    let var_4 = _wgslsmith_clamp_i32(34009i, -1i, _wgslsmith_mult_i32(abs(countOneBits(var_0.a.c.x)), -var_0.a.c.x));
    let var_5 = var_2;
    var var_6 = vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(var_1.x, 0u << (~var_0.a.a.x % 32u), ~abs(0u), u_input.d.x)), 1u);
    var var_7 = max(vec4<u32>(997u, ~u_input.a.x, _wgslsmith_mult_u32(~abs(u_input.b.x), _wgslsmith_sub_u32(58799u, var_5.d.a.d)), 26429u), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(var_5.a.a.d, var_0.a.d, 37154u, var_1.x) << (u_input.a % vec4<u32>(32u)), ~vec4<u32>(35951u, var_6.x, 64783u, var_5.d.a.d)), firstTrailingBit(vec4<u32>(_wgslsmith_clamp_u32(var_0.a.a.x, var_1.x, var_1.x), 40588u, ~38044u, var_1.x))));
    let var_8 = _wgslsmith_mult_u32(max(max(~var_0.a.a.x, countOneBits(~105965u)), 0u), max(var_6.x, var_0.a.d));
    let x = u_input.a;
    s_output = StorageBuffer(~(-vec4<i32>(2147483647i, _wgslsmith_mod_i32(-1i, 2147483647i), 1i, ~8326i)), vec2<i32>(0i, _wgslsmith_sub_i32(5018i, _wgslsmith_clamp_i32(select(17896i, var_0.a.c.x, false), 0i, var_2.a.a.c.x | 1i))), ~(~(-vec3<i32>(1i, var_2.d.a.c.x, var_2.a.a.c.x))), 1u, reverseBits(vec4<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-2147483647i, 0i, var_2.a.a.c.x, var_4), vec4<i32>(var_0.a.c.x, var_2.d.a.c.x, var_0.a.c.x, -2547i), vec4<bool>(true, true, false, var_5.d.a.e)), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 70788i, 0i, 47440i), vec4<i32>(var_5.a.a.c.x, 2147483647i, 8703i, var_5.d.a.c.x))), var_4, var_2.a.a.c.x, -(~(-2147483647i)))));
}

