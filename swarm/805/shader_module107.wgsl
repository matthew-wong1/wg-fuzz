struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(1i, i32(-2147483648), -1735i, 2147483647i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool) -> vec3<f32> {
    var var_0 = Struct_4(0u);
    let var_1 = 27492i;
    global0 = _wgslsmith_mult_vec4_i32(~u_input.c, _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.c, ~(-u_input.c), u_input.c << ((u_input.e | vec4<u32>(u_input.a, 0u, u_input.e.x, 1u)) % vec4<u32>(32u))), vec4<i32>(abs(-global0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, var_1, global0.x), global0.zwx), max(~var_1, 1i), 1i), -vec4<i32>(i32(-1i) * -50409i, u_input.c.x, var_1, var_1)));
    var var_2 = Struct_4(1u ^ ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, 19421u) ^ u_input.e.xy, u_input.e.xz));
    let var_3 = any(vec4<bool>(false, true, -global0.x != (abs(u_input.c.x) >> (~22947u % 32u)), all(vec2<bool>(true, true))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-983f, 1f, -318f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(ceil(-679f)), -1260f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1534f, 334f, -452f)), vec3<bool>(arg_0, any(vec3<bool>(var_3, false, true)), true)))));
}

fn func_2(arg_0: u32) -> vec2<bool> {
    let var_0 = select(select(arg_0, _wgslsmith_mult_u32(10488u, arg_0 >> (arg_0 % 32u)), all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)))), min(abs(max(20773u, 1u)), 4294967295u), ~(~u_input.a) != 18067u);
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(true)) + vec3<f32>(-349f, _wgslsmith_f_op_f32(1000f * -292f), 592f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2381f, -2637f, 1265f)))), vec3<f32>(_wgslsmith_f_op_f32(max(-106f, 497f)), -718f, -1938f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-467f, _wgslsmith_f_op_f32(min(-1538f, -2206f)), 1f))));
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))))).x, _wgslsmith_div_f32(var_1.x, var_1.x), 1f));
    let var_2 = Struct_1(select(vec2<bool>(true, false), select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(false, false), true), vec2<bool>(true, true), true), vec2<bool>(true, all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), -1229f)), var_1.x, -1187f)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1085f, var_1.x)) * _wgslsmith_f_op_f32(-var_1.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(false)).x))));
    return !select(var_2.a, !var_2.a, true);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_4) -> Struct_3 {
    global0 = u_input.c;
    global0 = select(u_input.c, vec4<i32>(-5244i, _wgslsmith_mod_i32(firstLeadingBit(abs(u_input.c.x)), global0.x), u_input.c.x, countOneBits(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(global0.x, u_input.c.x, 6018i), u_input.c.x >> (arg_1.a % 32u)))), select(select(!vec4<bool>(arg_2.a.x, true, false, true), vec4<bool>(true, arg_2.a.x, all(vec4<bool>(false, arg_2.a.x, arg_2.a.x, arg_2.a.x)), true | arg_2.a.x), select(vec4<bool>(arg_2.a.x, arg_2.a.x, true, arg_2.a.x), select(vec4<bool>(arg_2.a.x, arg_2.a.x, false, true), vec4<bool>(false, arg_2.a.x, arg_2.a.x, arg_2.a.x), vec4<bool>(true, arg_2.a.x, arg_2.a.x, arg_2.a.x)), arg_2.a.x)), !vec4<bool>(arg_2.a.x, all(vec4<bool>(true, true, arg_2.a.x, true)), arg_2.a.x, any(vec4<bool>(arg_2.a.x, true, false, arg_2.a.x))), true));
    var var_0 = _wgslsmith_mult_vec2_u32(~vec2<u32>(~(~1u), abs(arg_0 | 0u)), u_input.d);
    global0 = ~select(min(-_wgslsmith_div_vec4_i32(vec4<i32>(global0.x, -20054i, 0i, -2105i), vec4<i32>(global0.x, global0.x, u_input.c.x, 49515i)), ~_wgslsmith_div_vec4_i32(u_input.c, u_input.c)), _wgslsmith_clamp_vec4_i32(-(~vec4<i32>(-2147483647i, global0.x, u_input.c.x, -1337i)), vec4<i32>(-10708i, -38297i, -2147483647i, -15488i), min(u_input.c, -vec4<i32>(2147483647i, 0i, 2147483647i, 12484i))), (_wgslsmith_mult_u32(var_0.x, arg_3.a) & _wgslsmith_mult_u32(12248u, var_0.x)) <= max(firstLeadingBit(arg_3.a), max(arg_3.a, 4294967295u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(934f, arg_2.b.x), _wgslsmith_f_op_f32(ceil(arg_2.b.x)), arg_2.b.x, arg_2.b.x)), vec4<f32>(arg_2.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.b.x), arg_2.b.x)), arg_2.b.x, _wgslsmith_f_op_f32(-156f * _wgslsmith_div_f32(1741f, 296f))))));
    return Struct_3(firstLeadingBit(vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 20347i, 17380i, global0.x), vec4<i32>(u_input.c.x, global0.x, global0.x, global0.x)), u_input.c.x, abs(global0.x) ^ u_input.c.x)), arg_2);
}

fn func_1(arg_0: vec3<u32>, arg_1: f32) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(ceil(arg_1));
    var var_1 = func_4(min(_wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.d, u_input.e.zw), 4294967295u << (u_input.e.x % 32u)), 4294967295u), abs(arg_0.x | 1u)), Struct_2(~(~26202u), u_input.e.x), Struct_1(select(!func_2(40174u), select(vec2<bool>(false, false), vec2<bool>(false, false), true), _wgslsmith_f_op_f32(trunc(2167f)) != _wgslsmith_f_op_f32(arg_1 - arg_1)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1, arg_1, -744f)))))), Struct_4(36109u));
    global0 = max(_wgslsmith_mult_vec4_i32(reverseBits(u_input.c), firstTrailingBit(vec4<i32>(-1i, countOneBits(global0.x), reverseBits(-2147483647i), var_1.a.x))), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-15760i, min(-21460i, 22463i)), ~(18869i << (arg_0.x % 32u))), ~_wgslsmith_dot_vec4_i32(-u_input.c, ~u_input.c), ~u_input.c.x, _wgslsmith_sub_i32(global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-39074i, global0.x, 2147483647i, -37300i), max(vec4<i32>(global0.x, 40782i, global0.x, -40261i), vec4<i32>(76786i, var_1.a.x, global0.x, -18560i))))));
    let var_2 = arg_0;
    var var_3 = func_4(_wgslsmith_dot_vec3_u32(select(var_2, ~u_input.e.xzx << (firstTrailingBit(arg_0) % vec3<u32>(32u)), vec3<bool>(func_2(4294967295u).x, true, var_1.b.a.x | true)), _wgslsmith_sub_vec3_u32(abs(var_2), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.x, u_input.b, 21833u), vec3<u32>(1u, var_2.x, 18476u))) & _wgslsmith_sub_vec3_u32(u_input.e.wxx, ~vec3<u32>(u_input.d.x, arg_0.x, 0u))), Struct_2(1u, _wgslsmith_mod_u32(~(u_input.e.x << (0u % 32u)), _wgslsmith_div_u32(reverseBits(20335u), _wgslsmith_mod_u32(0u, var_2.x)))), func_4(var_2.x, Struct_2(4294967295u, ~arg_0.x), func_4(~_wgslsmith_div_u32(var_2.x, 33763u), Struct_2(~0u, ~1u), var_1.b, Struct_4(reverseBits(arg_0.x))).b, Struct_4(1u)).b, Struct_4(~(arg_0.x << (~38396u % 32u)))).b;
    return var_1.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1500f, -2160f, -940f) * vec3<f32>(-293f, 1000f, -1123f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-591f, 1312f, 342f) * vec3<f32>(-1000f, -1000f, 417f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(vec3<u32>(_wgslsmith_mult_u32(0u, 0u), u_input.b, ~u_input.e.x), 759f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-276f, 1000f, -1870f)))));
    global0 = u_input.c;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-1000f * var_0.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, 1530f)) * _wgslsmith_f_op_f32(-func_4(u_input.b, Struct_2(4294967295u, 19396u), Struct_1(vec2<bool>(true, true), vec3<f32>(-235f, var_0.x, -137f)), Struct_4(1029u)).b.b.x))), _wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(-232f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(537f)) - _wgslsmith_f_op_f32(var_0.x * var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-648f))), !any(vec2<bool>(false, true))))));
    global0 = vec4<i32>(36174i, -2147483647i, ~1i, _wgslsmith_sub_i32(35795i, u_input.c.x)) & -(~u_input.c);
    var var_2 = max(global0.yy, u_input.c.xz);
    var_2 = ~((~(vec2<i32>(u_input.c.x, 28480i) ^ global0.ww) << (u_input.d % vec2<u32>(32u))) << (vec2<u32>(countOneBits(abs(u_input.e.x)), _wgslsmith_mod_u32(47888u, ~0u)) % vec2<u32>(32u)));
    let var_3 = global0.wzx;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<u32>(select(u_input.a, u_input.e.x, true), _wgslsmith_add_u32(1u, 0u) << (_wgslsmith_mult_u32(u_input.b, u_input.b) % 32u), 8955u)), firstTrailingBit(-18492i), max(abs(abs(vec3<i32>(13674i, 1i, 1i))) << ((_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e.x, u_input.d.x, u_input.b), vec3<u32>(u_input.d.x, 0u, u_input.b)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 15403u, 4294967295u), u_input.e.xyw) % vec3<u32>(32u))) % vec3<u32>(32u)), select(vec3<i32>(var_3.x, ~29722i, 2147483647i), global0.xxx, true)));
}

