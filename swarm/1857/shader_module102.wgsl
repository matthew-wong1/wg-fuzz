struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: bool,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<i32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = vec3<bool>(!arg_0.c, all(vec3<bool>(any(select(vec2<bool>(true, arg_0.c), vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(true, true))), arg_0.c, !(arg_0.e.x <= -608f))), select(any(vec3<bool>(true, true, true)), !arg_0.c | true, select(arg_0.c, true && (0u >= u_input.c.x), _wgslsmith_f_op_f32(max(arg_0.e.x, 985f)) <= _wgslsmith_f_op_f32(f32(-1f) * -531f))));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.d.x)))));
    var var_2 = (~_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0.a, 317u, u_input.c.x, 20747u), select(vec4<u32>(arg_0.a, u_input.d, arg_0.a, 1u), vec4<u32>(arg_0.a, 1u, arg_0.a, 51713u), false)) >> (~vec4<u32>(22879u, _wgslsmith_add_u32(u_input.d, u_input.c.x), firstTrailingBit(u_input.c.x), ~u_input.d) % vec4<u32>(32u))) << (~(~_wgslsmith_mult_vec4_u32(vec4<u32>(51047u, 1u, arg_0.a, arg_0.a), reverseBits(vec4<u32>(arg_0.a, arg_0.a, 71869u, arg_0.a)))) % vec4<u32>(32u));
    let var_3 = _wgslsmith_f_op_f32(min(-611f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1372f * var_1) * _wgslsmith_f_op_f32(-349f + -600f)))))));
    var_0 = select(!vec3<bool>(false, any(vec4<bool>(arg_0.c, true, false, var_0.x)), true), !select(select(vec3<bool>(arg_0.c, true, arg_0.c), select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, arg_0.c, var_0.x), arg_0.c), !vec3<bool>(arg_0.c, true, arg_0.c)), select(vec3<bool>(false, true, arg_0.c), !vec3<bool>(var_0.x, var_0.x, var_0.x), !arg_0.c), var_0.x), true);
    return arg_0.b.wz;
}

fn func_2(arg_0: vec3<i32>, arg_1: i32) -> Struct_3 {
    var var_0 = abs(func_3(Struct_1(u_input.c.x, _wgslsmith_div_vec4_i32(vec4<i32>(-1i, arg_0.x, arg_0.x, 0i) << (vec4<u32>(55248u, 0u, u_input.d, u_input.c.x) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 540i, -37312i, 1i), vec4<i32>(36027i, 1i, arg_1, arg_0.x))), true, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -287f), _wgslsmith_f_op_f32(-257f - -838f), _wgslsmith_f_op_f32(f32(-1f) * -291f), _wgslsmith_f_op_f32(round(551f))), vec3<f32>(1000f, _wgslsmith_f_op_f32(step(517f, 256f)), _wgslsmith_f_op_f32(f32(-1f) * -1472f)))));
    var_0 = vec2<i32>(reverseBits(abs(func_3(Struct_1(23340u, vec4<i32>(arg_0.x, 2147483647i, arg_0.x, arg_1), false, vec4<f32>(1588f, -1056f, -1546f, 917f), vec3<f32>(1276f, 341f, -926f))).x)), -19100i);
    return Struct_3(Struct_1(u_input.c.x, ~abs(firstLeadingBit(vec4<i32>(2147483647i, var_0.x, 76374i, 0i))), false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-417f, _wgslsmith_f_op_f32(max(127f, -1251f)), _wgslsmith_f_op_f32(f32(-1f) * -938f), -851f)), vec3<f32>(1f, 1f, 1f)), Struct_2(1000f, vec4<u32>(u_input.c.x, u_input.c.x, u_input.d, _wgslsmith_mod_u32(53898u, _wgslsmith_dot_vec2_u32(u_input.c, u_input.c)))), vec4<i32>(-max(-arg_0.x, ~1i), -8497i, _wgslsmith_sub_i32(25675i, var_0.x), u_input.b.x), vec3<bool>(true, true, all(vec4<bool>(any(vec2<bool>(false, true)), true, true, true))));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>) -> Struct_2 {
    let var_0 = any(!arg_0.d) | !arg_0.a.c;
    let var_1 = select(true, arg_0.d.x, u_input.a < _wgslsmith_add_i32(arg_0.c.x ^ arg_0.a.b.x, 23201i)) || arg_0.d.x;
    var var_2 = Struct_3(Struct_1(arg_1.x, firstTrailingBit(arg_0.c), (arg_0.a.b.x != 29259i) || var_1, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_0.a.e.x)), -2119f, arg_0.b.a, arg_0.b.a) * vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0.a.d.x)), 1f, _wgslsmith_f_op_f32(-arg_0.b.a), _wgslsmith_f_op_f32(min(-1880f, arg_0.a.e.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(491f, 1820f, arg_0.a.d.x), arg_0.a.d.xww, select(var_1, true, true))))), func_2(vec3<i32>(1i, -(-1i >> (arg_1.x % 32u)), u_input.b.x), -44567i).b, _wgslsmith_add_vec4_i32(arg_0.a.b, -vec4<i32>(-13372i, i32(-1i) * -33587i, arg_0.a.b.x & u_input.b.x, 1i)), arg_0.d);
    let var_3 = Struct_3(var_2.a, func_2(arg_0.a.b.yww, u_input.b.x).b, max(vec4<i32>(arg_0.c.x, var_2.c.x | _wgslsmith_mod_i32(-7983i, u_input.b.x), 4387i, ~var_2.c.x), arg_0.c), select(!select(vec3<bool>(arg_0.a.c, false, true), vec3<bool>(true, false, false), var_1), vec3<bool>(true, all(vec4<bool>(false, var_0, false, true)), false), false));
    var_2 = func_2(-(~func_2(vec3<i32>(32588i, var_2.a.b.x, 0i), -2147483647i).c.wxz), arg_0.c.x);
    return func_2(-(arg_0.c.wwx | reverseBits(~vec3<i32>(var_2.c.x, arg_0.c.x, -2147483647i))), firstTrailingBit(firstLeadingBit(-20759i))).b;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_3 {
    var var_0 = -1500f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.e.x * arg_2.a)) * _wgslsmith_f_op_f32(-arg_0.x)), arg_1.e.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.x + -304f) * _wgslsmith_f_op_f32(trunc(arg_1.d.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -280f))));
    var var_1 = func_2(_wgslsmith_add_vec3_i32(arg_1.b.yxw, firstLeadingBit(arg_1.b.wyy)), _wgslsmith_add_i32(-1i, countOneBits(firstLeadingBit(~49432i)))).c.yw;
    let var_2 = arg_1.c || (((272f <= _wgslsmith_f_op_f32(-1591f + arg_1.e.x)) & !arg_1.c) || true);
    var var_3 = func_2(vec3<i32>(min(57323i, -2147483647i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_1.x, u_input.b.x, u_input.e) ^ vec4<i32>(18324i, u_input.e, 0i, u_input.a), _wgslsmith_mult_vec4_i32(vec4<i32>(24998i, arg_1.b.x, u_input.b.x, -4303i), arg_1.b)), _wgslsmith_clamp_i32(0i, _wgslsmith_dot_vec4_i32(min(vec4<i32>(73080i, arg_1.b.x, arg_1.b.x, 0i), vec4<i32>(u_input.a, u_input.b.x, u_input.a, 0i)), firstTrailingBit(vec4<i32>(arg_1.b.x, 1i, arg_1.b.x, 1i))), 51919i), 111212i << (~u_input.c.x % 32u)), -31751i).d.x;
    return func_2(vec3<i32>(_wgslsmith_div_i32(arg_1.b.x, ~arg_1.b.x), reverseBits(1972i), u_input.e) >> (_wgslsmith_mult_vec3_u32(func_2(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.b.x, 0i, 25915i), vec3<i32>(2898i, var_1.x, var_1.x)), _wgslsmith_dot_vec4_i32(arg_1.b, arg_1.b)).b.b.ywx, countOneBits(max(vec3<u32>(arg_1.a, u_input.c.x, arg_2.b.x), vec3<u32>(u_input.d, arg_1.a, arg_2.b.x)))) % vec3<u32>(32u)), func_3(func_2(~arg_1.b.xyz, 78189i).a).x);
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    var var_0 = func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - arg_0.e.x) * arg_0.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1046f) - 276f))), arg_0, func_4(func_2(countOneBits(vec3<i32>(u_input.e, u_input.a, arg_0.b.x)), 12051i), ~vec4<u32>(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x), _wgslsmith_mod_u32(0u, u_input.c.x), _wgslsmith_sub_u32(arg_0.a, arg_0.a), select(4294967295u, u_input.d, arg_0.c))));
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(arg_0.e - _wgslsmith_f_op_vec3_f32(-var_0.a.e))));
    let var_2 = arg_0.c;
    var var_3 = var_0.a;
    var_0 = func_2(vec3<i32>(-abs(_wgslsmith_dot_vec4_i32(var_0.a.b, vec4<i32>(arg_0.b.x, -22911i, -2147483647i, var_3.b.x))), firstLeadingBit(-select(u_input.a, 21012i, var_0.a.c)), 2147483647i), ~func_2(arg_0.b.zyw, ~(~62i)).c.x);
    return var_0.b;
}

fn func_6(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: bool) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-272f, arg_2.a, arg_2.a) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(664f, arg_2.a, arg_0.a))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, arg_2.a, -793f)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, -898f, 543f)))))))));
    var var_1 = func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_0.zz))), Struct_1(28286u, vec4<i32>(u_input.b.x, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, u_input.e, u_input.b.x, u_input.e), vec4<i32>(u_input.a, u_input.e, 1i, 41813i))), select(u_input.e, ~u_input.a, -1000f > arg_0.a), u_input.b.x), !all(select(vec2<bool>(arg_3, arg_3), vec2<bool>(false, arg_3), vec2<bool>(arg_3, arg_3))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(var_0.x, arg_0.a), 390f, arg_0.a) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(214f, 346f, arg_2.a, -252f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(2064f, -666f, -2470f, arg_0.a) - vec4<f32>(-1000f, -236f, arg_0.a, arg_0.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, arg_0.a, 817f) - vec3<f32>(arg_2.a, -1000f, arg_2.a))))), arg_0).a.d.x;
    var var_2 = 78962u;
    var var_3 = vec2<i32>(62954i, min(_wgslsmith_mod_i32(reverseBits(i32(-1i) * -2147483647i), u_input.b.x << (~40654u % 32u)), max(4331i, _wgslsmith_dot_vec2_i32(u_input.b, u_input.b) >> (_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(1396u, 0u)) % 32u))));
    return firstTrailingBit(_wgslsmith_sub_vec3_i32(abs(-vec3<i32>(var_3.x, u_input.e, var_3.x)) >> (arg_0.b.zzw % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 37057i, 55204i, 0i), vec4<i32>(0i, 1357i, u_input.a, -1i)), ~var_3.x, _wgslsmith_sub_i32(u_input.e, 1i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec3_i32(func_6(Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(529f - -518f))), vec4<u32>(u_input.c.x, _wgslsmith_mult_u32(1u, u_input.c.x), _wgslsmith_mult_u32(0u, 67236u), 1173u ^ u_input.c.x)), u_input.c, func_1(Struct_1(_wgslsmith_add_u32(u_input.c.x, 4294967295u), -vec4<i32>(2147483647i, 1i, 1i, u_input.a), false, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1850f, -156f, 125f, -2230f))), vec3<f32>(-1549f, -580f, 464f))), false), vec3<i32>(func_3(Struct_1(~u_input.c.x, select(vec4<i32>(u_input.b.x, u_input.b.x, -10620i, u_input.b.x), vec4<i32>(-44101i, u_input.a, u_input.b.x, u_input.e), vec4<bool>(true, false, true, true)), true, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1500f, -373f, -361f) * vec4<f32>(-475f, -473f, -1352f, -934f)), vec3<f32>(976f, -2124f, -653f))).x, 7834i, max(select(u_input.b.x, -2147483647i, true) ^ -2147483647i, reverseBits(reverseBits(0i)))));
    var var_1 = u_input.c.x;
    var var_2 = select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -764f))), func_5(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1005f, -774f))), Struct_1(u_input.d, vec4<i32>(66039i, -20432i, var_0.x, u_input.a), false, vec4<f32>(-362f, 423f, 2077f, 945f), vec3<f32>(-836f, -812f, 1811f)), Struct_2(431f, vec4<u32>(u_input.d, 4294967295u, u_input.d, 34993u))).a, func_1(func_5(vec2<f32>(-558f, 672f), Struct_1(0u, vec4<i32>(0i, -2147483647i, 1i, 0i), false, vec4<f32>(-437f, -1457f, 155f, -565f), vec3<f32>(-920f, -1000f, 327f)), Struct_2(-1109f, vec4<u32>(u_input.d, 1u, u_input.d, u_input.d))).a)).a.b.x < func_6(Struct_2(_wgslsmith_f_op_f32(1471f * -346f), vec4<u32>(u_input.d, u_input.c.x, u_input.c.x, 1u)), ~u_input.c, Struct_2(_wgslsmith_f_op_f32(1088f * -978f), ~vec4<u32>(u_input.c.x, 56378u, 12688u, u_input.c.x)), true).x);
    var var_3 = vec2<f32>(-782f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -520f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1135f, -227f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(725f - -597f) - _wgslsmith_f_op_f32(floor(1530f))))));
    var var_4 = _wgslsmith_dot_vec3_u32(vec3<u32>(52634u, u_input.c.x, _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.c.x >> (0u % 32u), 1u), _wgslsmith_sub_u32(u_input.c.x, u_input.c.x))), countOneBits(func_4(Struct_3(Struct_1(u_input.d, vec4<i32>(-36674i, 0i, var_0.x, u_input.b.x), var_2.x, vec4<f32>(-911f, var_3.x, var_3.x, var_3.x), vec3<f32>(-591f, var_3.x, -769f)), Struct_2(var_3.x, vec4<u32>(u_input.c.x, u_input.c.x, u_input.d, 29916u)), vec4<i32>(2147483647i, u_input.b.x, 2147483647i, 44346i), vec3<bool>(true, var_2.x, false)), vec4<u32>(u_input.c.x, u_input.d, 38867u, 6688u)).b.wyx) ^ ~(~(vec3<u32>(28837u, 50499u, u_input.d) >> (vec3<u32>(u_input.d, u_input.d, u_input.d) % vec3<u32>(32u)))));
    var var_5 = true;
    let var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d);
}

