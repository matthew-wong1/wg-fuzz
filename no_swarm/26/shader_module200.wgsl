struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_3,
    c: Struct_3,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: vec2<bool>) -> vec2<bool> {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(597f)), -1000f, _wgslsmith_f_op_f32(425f * 1000f), -604f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-131f + _wgslsmith_f_op_f32(trunc(-479f)))), 1545f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(875f * -141f)))))));
    let var_1 = -53566i;
    var var_2 = !arg_2.x;
    let var_3 = Struct_1(!vec2<bool>(all(!vec4<bool>(false, false, true, arg_2.x)), true), 43258i, var_0.zwx);
    let var_4 = Struct_3(firstLeadingBit(countOneBits(firstLeadingBit(~59373u))), true, var_3);
    return vec2<bool>(!var_4.b, !arg_2.x);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: vec2<bool>, arg_3: i32) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_div_u32(14211u, _wgslsmith_mod_u32(u_input.b, _wgslsmith_sub_u32(~32908u, ~37648u))), true, Struct_1(func_3(arg_3, vec3<i32>(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, arg_3, arg_3), arg_0), -arg_3), select(select(vec2<bool>(arg_2.x, false), arg_2, true), select(vec2<bool>(arg_2.x, false), arg_2, true), arg_2.x)), ~(-1i ^ arg_3) << ((~4294967295u ^ _wgslsmith_clamp_u32(4294967295u, u_input.b, u_input.b)) % 32u), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-445f, 875f, -1000f))))));
    var_0 = Struct_3(var_0.a, arg_2.x && (arg_2.x & var_0.c.a.x), var_0.c);
    var_0 = Struct_3(u_input.b, arg_2.x, Struct_1(var_0.c.a, _wgslsmith_clamp_i32(reverseBits(-2147483647i), 12286i, (arg_1.x ^ arg_1.x) >> (u_input.a.x % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(var_0.c.c * var_0.c.c))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.c.c.x, var_0.c.c.x, var_0.c.c.x), vec3<f32>(-1401f, var_0.c.c.x, var_0.c.c.x), vec3<bool>(var_0.b, var_0.c.a.x, true))))))));
    var var_1 = var_0.c;
    var var_2 = Struct_2(Struct_1(vec2<bool>(-1i > arg_0.x, true), 6922i, vec3<f32>(var_0.c.c.x, _wgslsmith_f_op_f32(max(1367f, _wgslsmith_f_op_f32(f32(-1f) * -1699f))), -295f)), !(!(!select(vec3<bool>(var_0.b, true, arg_2.x), vec3<bool>(true, true, true), vec3<bool>(false, var_1.a.x, true)))));
    return Struct_1(vec2<bool>(false, !var_2.a.a.x), (_wgslsmith_mult_i32(-42181i, _wgslsmith_clamp_i32(-39403i, -14542i, -2147483647i)) ^ ~(~(-3325i))) & -65975i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.a.c)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool) -> Struct_1 {
    let var_0 = 1117f;
    var var_1 = Struct_5(!select(select(arg_1, vec3<bool>(arg_2, arg_0.a.x, false), !arg_1), arg_1, arg_0.a.x), Struct_3(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(47697u, u_input.b, 39301u, u_input.a.x)), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), 0u, 0u, u_input.b)), _wgslsmith_f_op_f32(arg_0.c.x - -826f) != _wgslsmith_f_op_f32(floor(-2303f)), Struct_1(vec2<bool>(true, arg_0.a.x), ~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b, arg_0.b), vec2<i32>(-1i, 1i)), _wgslsmith_f_op_vec3_f32(-arg_0.c))), Struct_3(u_input.a.x, true, func_2(reverseBits(select(vec3<i32>(arg_0.b, 46778i, 1i), vec3<i32>(-32704i, arg_0.b, arg_0.b), vec3<bool>(arg_0.a.x, true, true))), vec4<i32>(50540i, -1i, firstTrailingBit(arg_0.b), arg_0.b), select(arg_0.a, vec2<bool>(true, true), arg_2 | false), ~(arg_0.b | -18735i))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, -1799f, arg_0.c.x, -245f) + vec4<f32>(-545f, arg_0.c.x, -320f, var_0))), vec4<f32>(_wgslsmith_div_f32(arg_0.c.x, arg_0.c.x), _wgslsmith_f_op_f32(arg_0.c.x * -295f), _wgslsmith_f_op_f32(f32(-1f) * -1449f), _wgslsmith_f_op_f32(min(arg_0.c.x, -199f))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1614f), _wgslsmith_f_op_f32(var_0 + var_0)), 572f, arg_0.c.x, arg_0.c.x), false)));
    var_1 = Struct_5(arg_1, Struct_3(max(var_1.b.a, 44069u), arg_0.a.x, Struct_1(!arg_1.zx, ~_wgslsmith_clamp_i32(arg_0.b, var_1.b.c.b, 2147483647i), vec3<f32>(_wgslsmith_f_op_f32(-1173f * var_0), _wgslsmith_f_op_f32(floor(-452f)), -212f))), var_1.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-679f, -1814f, 942f, var_0) * _wgslsmith_f_op_vec4_f32(-var_1.d)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(var_1.d)))))));
    var_1 = Struct_5(vec3<bool>(!any(func_2(vec3<i32>(2147483647i, 49067i, 2147483647i), vec4<i32>(1i, -2147483647i, 16455i, var_1.b.c.b), vec2<bool>(arg_1.x, true), arg_0.b).a), any(select(vec2<bool>(var_1.a.x, arg_0.a.x), vec2<bool>(false, var_1.c.b), true)), arg_1.x), var_1.b, var_1.b, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(var_1.d + _wgslsmith_f_op_vec4_f32(min(var_1.d, var_1.d))))))));
    var_1 = Struct_5(select(var_1.a, select(var_1.a, !arg_1, true), var_1.a), var_1.c, Struct_3(var_1.c.a, arg_1.x, Struct_1(select(var_1.c.c.a, !vec2<bool>(arg_1.x, var_1.c.c.a.x), arg_2), -1i, _wgslsmith_f_op_vec3_f32(select(var_1.b.c.c, vec3<f32>(-304f, var_0, 814f), select(vec3<bool>(var_1.a.x, true, false), var_1.a, var_1.a))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-229f, 1f, arg_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    return func_2(min(firstLeadingBit(reverseBits(vec3<i32>(0i, 1i, -1517i))), vec3<i32>(-2147483647i, _wgslsmith_mod_i32(-1i, var_1.b.c.b), arg_0.b) << (vec3<u32>(u_input.a.x, reverseBits(var_1.c.a), 4294967295u) % vec3<u32>(32u))), vec4<i32>(select(~arg_0.b >> (~27850u % 32u), -1698i, !(!arg_2)), var_1.b.c.b, arg_0.b, _wgslsmith_add_i32(func_2(vec3<i32>(-41114i, var_1.c.c.b, var_1.c.c.b), vec4<i32>(0i, arg_0.b, arg_0.b, var_1.b.c.b), var_1.c.c.a, var_1.c.c.b).b ^ 16578i, var_1.b.c.b)), !select(arg_0.a, !vec2<bool>(var_1.c.b, arg_2), !all(vec4<bool>(arg_0.a.x, var_1.a.x, var_1.a.x, true))), -29239i);
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: u32, arg_3: vec2<u32>) -> Struct_4 {
    let var_0 = arg_1.a;
    let var_1 = Struct_4(arg_2, Struct_3(110904u, all(func_2(min(vec3<i32>(2147483647i, arg_0, arg_1.a.b), vec3<i32>(arg_1.a.b, -44408i, -2810i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -1i, -16293i, arg_1.a.b), vec4<i32>(5306i, var_0.b, -1i, 0i)), !var_0.a, 6063i << (u_input.b % 32u)).a), var_0));
    let var_2 = Struct_5(arg_1.b, var_1.b, var_1.b, vec4<f32>(1000f, _wgslsmith_f_op_f32(arg_1.a.c.x * _wgslsmith_f_op_f32(var_1.b.c.c.x * _wgslsmith_f_op_f32(f32(-1f) * -1492f))), arg_1.a.c.x, _wgslsmith_div_f32(var_0.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1.a.c.x)), _wgslsmith_f_op_f32(var_0.c.x * -248f)))));
    var var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(func_4(func_2(firstLeadingBit(vec3<i32>(arg_0, 23570i, 2147483647i)), max(vec4<i32>(-36232i, 10214i, -2147483647i, -30500i), vec4<i32>(arg_0, 2147483647i, var_2.c.c.b, 1i)), var_2.b.c.a, ~arg_0), select(select(vec3<bool>(true, true, false), vec3<bool>(arg_1.a.a.x, true, true), var_2.a.x), !arg_1.b, var_0.a.x), false).c.x, -416f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-606f)))), arg_1.a.c);
    let var_4 = _wgslsmith_div_vec2_f32(var_0.c.yz, var_2.c.c.c.xx);
    return var_1;
}

fn func_6(arg_0: f32, arg_1: Struct_4, arg_2: i32, arg_3: Struct_2) -> Struct_3 {
    let var_0 = ~vec2<u32>(~_wgslsmith_div_u32(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.b, u_input.a.x), vec4<u32>(u_input.b, u_input.b, 4294967295u, arg_1.b.a))), u_input.b);
    let var_1 = Struct_3(var_0.x, arg_3.a.a.x & arg_3.b.x, arg_3.a);
    var var_2 = _wgslsmith_f_op_f32(-1035f * _wgslsmith_f_op_f32(sign(func_5(-2147483647i, arg_3, 1u, u_input.a).b.c.c.x)));
    var_2 = 276f;
    var_2 = -1000f;
    return Struct_3(_wgslsmith_add_u32(~(~1u), _wgslsmith_add_u32(arg_1.b.a, 51554u)), ~_wgslsmith_add_u32(arg_1.b.a, arg_1.a << (48893u % 32u)) > var_1.a, Struct_1(arg_3.b.xz, _wgslsmith_add_i32(arg_1.b.c.b, var_1.c.b) ^ _wgslsmith_div_i32(-arg_3.a.b, 18377i), func_2(_wgslsmith_add_vec3_i32(vec3<i32>(var_1.c.b, arg_1.b.c.b, 44054i), vec3<i32>(-1i, var_1.c.b, var_1.c.b)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_2, var_1.c.b, arg_3.a.b, arg_1.b.c.b), vec4<i32>(arg_1.b.c.b, arg_3.a.b, 1i, 2147483647i)), var_1.c.a, arg_1.b.c.b).c));
}

fn func_1() -> Struct_2 {
    let var_0 = ~abs(~(vec3<u32>(u_input.b, u_input.b, 18455u) << (vec3<u32>(16749u, u_input.b, u_input.a.x) % vec3<u32>(32u))));
    let var_1 = _wgslsmith_dot_vec2_i32(firstLeadingBit(abs(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-46678i, 311i), vec2<i32>(-2147483647i, -2147483647i)), i32(-1i) * -2147483647i))), reverseBits(vec2<i32>(-abs(-1i), 1i)));
    var var_2 = func_6(352f, func_5(var_1, Struct_2(func_4(func_2(vec3<i32>(-6235i, 0i, var_1), vec4<i32>(45729i, 1i, -1i, var_1), vec2<bool>(false, false), var_1), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), true), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), _wgslsmith_clamp_u32(select(var_0.x, 53326u, true), ~u_input.b, _wgslsmith_add_u32(21674u, 1u) << (u_input.a.x % 32u)), select(~var_0.yx >> (vec2<u32>(8534u, u_input.a.x) % vec2<u32>(32u)), var_0.xx | vec2<u32>(12712u, 64014u), func_4(func_2(vec3<i32>(var_1, var_1, 14098i), vec4<i32>(var_1, 0i, var_1, var_1), vec2<bool>(false, true), var_1), vec3<bool>(false, false, false), func_2(vec3<i32>(var_1, var_1, var_1), vec4<i32>(var_1, -1i, var_1, 2147483647i), vec2<bool>(false, false), var_1).a.x).a.x)), var_1, Struct_2(Struct_1(vec2<bool>(all(vec3<bool>(false, false, false)), false), var_1, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1281f, -1690f, -294f), vec3<f32>(-934f, 2288f, -1000f), vec3<bool>(true, false, true))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(2892f, 2159f, 115f), vec3<f32>(-918f, 1412f, 878f)))))), select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(all(vec4<bool>(true, true, true, true)), true, false), false)));
    var_2 = func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.c.c.x - 1010f))) * -1144f)), func_5(var_2.c.b, Struct_2(Struct_1(var_2.c.a, var_2.c.b, vec3<f32>(707f, var_2.c.c.x, var_2.c.c.x)), select(!vec3<bool>(true, true, var_2.b), select(vec3<bool>(true, var_2.c.a.x, true), vec3<bool>(var_2.b, var_2.b, false), var_2.b), select(vec3<bool>(true, var_2.b, true), vec3<bool>(true, true, true), false))), min(4294967295u, 1u), abs(_wgslsmith_add_vec2_u32(min(var_0.xz, var_0.xx), vec2<u32>(4294967295u, var_2.a)))), var_2.c.b ^ abs(_wgslsmith_sub_i32(var_1, ~(-2147483647i))), Struct_2(var_2.c, vec3<bool>(any(select(vec3<bool>(var_2.c.a.x, var_2.c.a.x, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), all(vec2<bool>(var_2.c.a.x, false)), reverseBits(20780i) >= var_2.c.b)));
    var var_3 = Struct_2(Struct_1(!var_2.c.a, ~(~var_2.c.b) | var_1, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_2.c.c))), vec3<f32>(_wgslsmith_f_op_f32(806f * var_2.c.c.x), var_2.c.c.x, func_6(-118f, Struct_4(u_input.b, Struct_3(5716u, false, var_2.c)), var_2.c.b, Struct_2(Struct_1(var_2.c.a, var_1, vec3<f32>(var_2.c.c.x, var_2.c.c.x, var_2.c.c.x)), vec3<bool>(var_2.b, false, false))).c.c.x))), select(select(!(!vec3<bool>(var_2.c.a.x, var_2.c.a.x, false)), select(select(vec3<bool>(true, false, true), vec3<bool>(var_2.c.a.x, false, true), false), select(vec3<bool>(var_2.c.a.x, var_2.b, false), vec3<bool>(var_2.c.a.x, false, var_2.c.a.x), vec3<bool>(var_2.b, true, false)), vec3<bool>(var_2.c.a.x, var_2.b, var_2.b)), true), select(!(!vec3<bool>(var_2.c.a.x, var_2.b, var_2.c.a.x)), select(vec3<bool>(var_2.b, var_2.c.a.x, var_2.b), !vec3<bool>(var_2.b, var_2.c.a.x, true), select(vec3<bool>(false, var_2.c.a.x, false), vec3<bool>(var_2.c.a.x, var_2.c.a.x, true), vec3<bool>(false, var_2.b, var_2.b))), !select(vec3<bool>(true, var_2.c.a.x, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false))), true));
    return Struct_2(Struct_1(vec2<bool>(true, false), -58978i, var_3.a.c), select(vec3<bool>(true, true, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_1), vec2<i32>(-47363i, var_2.c.b)) >= var_1), select(var_3.b, select(var_3.b, var_3.b, var_3.b.x), select(var_3.b, var_3.b, !var_3.b)), select(var_3.b, !var_3.b, false)));
}

fn func_7(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = 9694i;
    var_0 = ~_wgslsmith_sub_i32(_wgslsmith_mod_i32(select(_wgslsmith_mod_i32(-6633i, 27525i), 2147483647i, false), -countOneBits(arg_2.a.b)), 3813i);
    var_0 = func_6(327f, Struct_4(_wgslsmith_dot_vec2_u32(arg_3.yx, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, arg_3.x, 11807u), vec4<u32>(arg_3.x, 68479u, arg_0, 4294967295u)), max(arg_0, 1u))), Struct_3(~(~arg_0), !(false != arg_2.a.a.x), arg_2.a)), arg_1.x, Struct_2(arg_2.a, func_1().b)).c.b;
    var var_1 = i32(-1i) * -2147483647i;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.c.x, arg_2.a.c.x, arg_2.a.c.x, arg_2.a.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1482f, -182f, -1291f, -1000f) * vec4<f32>(arg_2.a.c.x, 602f, -1000f, -1079f))))));
    return func_5(firstLeadingBit(min(32014i, _wgslsmith_div_i32(-25454i, _wgslsmith_dot_vec4_i32(vec4<i32>(-12849i, arg_1.x, 0i, arg_2.a.b), vec4<i32>(arg_2.a.b, arg_2.a.b, arg_1.x, arg_2.a.b))))), Struct_2(arg_2.a, vec3<bool>(1000f == arg_2.a.c.x, false, arg_2.b.x)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a.x, 8043u | u_input.b, arg_3.x & arg_3.x), vec3<u32>(53685u << (arg_3.x % 32u), 0u, arg_3.x)), vec2<u32>(1u, u_input.a.x)).b.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(u_input.a.x, Struct_3(u_input.a.x, (abs(u_input.a.x) & reverseBits(u_input.a.x)) > 122444u, func_7(~1u, (vec2<i32>(-15975i, 39419i) >> (vec2<u32>(u_input.a.x, u_input.b) % vec2<u32>(32u))) & -vec2<i32>(60109i, 1i), func_1(), countOneBits(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)) >> ((vec3<u32>(39282u, u_input.b, 21669u) >> (vec3<u32>(u_input.b, u_input.b, 0u) % vec3<u32>(32u))) % vec3<u32>(32u)))));
    var var_1 = select(!(2147483647i < var_0.b.c.b), func_2(~((vec3<i32>(var_0.b.c.b, -2147483647i, var_0.b.c.b) ^ vec3<i32>(2147483647i, var_0.b.c.b, var_0.b.c.b)) & (vec3<i32>(-2147483647i, 11790i, var_0.b.c.b) ^ vec3<i32>(var_0.b.c.b, var_0.b.c.b, var_0.b.c.b))), vec4<i32>(firstLeadingBit(var_0.b.c.b), 14099i, -2147483647i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_0.b.c.b, var_0.b.c.b, var_0.b.c.b, -8969i)), vec4<i32>(var_0.b.c.b, 5806i, var_0.b.c.b, 31251i))), var_0.b.c.a, var_0.b.c.b).a.x, _wgslsmith_f_op_f32(min(func_5(func_5(-914i, Struct_2(var_0.b.c, vec3<bool>(false, var_0.b.b, true)), u_input.b, u_input.a).b.c.b, func_1(), 24610u, vec2<u32>(u_input.a.x, var_0.b.a)).b.c.c.x, _wgslsmith_f_op_f32(-func_4(Struct_1(vec2<bool>(true, var_0.b.c.a.x), -1372i, vec3<f32>(-798f, 1604f, var_0.b.c.c.x)), vec3<bool>(false, var_0.b.c.a.x, var_0.b.b), var_0.b.b).c.x))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-168f - _wgslsmith_f_op_f32(var_0.b.c.c.x + 628f)), 521f));
    let var_2 = Struct_4(_wgslsmith_dot_vec2_u32(vec2<u32>(12719u, 0u), ~(~(~u_input.a))), var_0.b);
    var var_3 = _wgslsmith_f_op_f32(-var_2.b.c.c.x);
    var var_4 = ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(20192u, var_2.b.a, 45858u), vec3<u32>(1u, 114502u, u_input.a.x), vec3<u32>(1u, 81657u, 29794u)), ~vec3<u32>(35484u, var_2.a, 1u)), select(~vec3<u32>(0u, 16173u, var_2.b.a), min(vec3<u32>(var_2.b.a, var_0.b.a, 20771u), vec3<u32>(0u, var_2.a, var_0.a)), !vec3<bool>(true, false, var_2.b.b))), min(54082u, ~max(4294967295u, var_0.b.a)));
    var var_5 = !vec4<bool>(func_1().b.x, any(select(func_1().b, select(vec3<bool>(true, true, var_2.b.b), vec3<bool>(var_2.b.c.a.x, var_0.b.c.a.x, false), true), select(vec3<bool>(var_2.b.c.a.x, var_2.b.c.a.x, true), vec3<bool>(false, var_2.b.c.a.x, var_2.b.b), var_0.b.c.a.x))), true, false);
    let var_6 = _wgslsmith_f_op_vec2_f32(-var_2.b.c.c.xz);
    var var_7 = ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(firstTrailingBit(var_2.a), ~var_0.a, ~var_2.b.a, var_0.a), vec4<u32>(_wgslsmith_div_u32(var_2.a, u_input.b), ~104699u, _wgslsmith_mod_u32(4180u, var_0.b.a), 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1821f, var_6.x, -282f, var_6.x), vec4<f32>(1822f, var_2.b.c.c.x, var_0.b.c.c.x, var_2.b.c.c.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.c.c.x, -191f, var_6.x, 1238f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(166f, var_6.x, -397f, var_0.b.c.c.x), vec4<f32>(1846f, var_6.x, -2017f, var_0.b.c.c.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_6.x, var_2.b.c.c.x, 1036f, var_6.x)))))), ~_wgslsmith_add_u32(~var_2.a, 4294967295u));
}

