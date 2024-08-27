struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: u32,
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

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32) -> vec3<i32> {
    let var_0 = vec3<i32>(arg_0, firstLeadingBit(-u_input.b), arg_0);
    let var_1 = vec2<bool>(true, select(-2147483647i < u_input.b, -1i > u_input.b, true));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -748f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -955f) + _wgslsmith_f_op_f32(f32(-1f) * -669f))))));
    var_2 = _wgslsmith_f_op_f32(-318f - -217f);
    var var_3 = Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(14015u, 25943u, 4294967295u << (u_input.a % 32u), 60475u), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(u_input.a, 4294967295u, u_input.a, 42408u)), vec4<u32>(~u_input.a, ~u_input.a, ~38952u, u_input.a))), _wgslsmith_clamp_i32(u_input.b, ~_wgslsmith_div_i32(u_input.b | var_0.x, 32994i), ~(~0i)));
    return select(vec3<i32>(firstTrailingBit(var_3.b), -26290i, abs(-52847i)), ~var_0, vec3<bool>(false, true, !(!any(vec4<bool>(true, false, true, var_1.x)))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2) -> i32 {
    let var_0 = 19953u;
    var var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(abs(_wgslsmith_div_u32(var_0, arg_1.c.a.x)), abs(1u), _wgslsmith_mod_u32(~1u, firstLeadingBit(arg_1.c.a.x)), 0u), abs(~_wgslsmith_sub_vec4_u32(vec4<u32>(50888u, u_input.a, u_input.a, var_0), vec4<u32>(1u, arg_1.b.a.x, var_0, arg_1.b.a.x))), vec4<u32>(var_0, ~(~u_input.a), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(58438u, var_0, var_0, var_0), arg_1.b.a), abs(6923u)), 1u)) >> (arg_1.b.a % vec4<u32>(32u));
    var var_2 = ~u_input.b | ~min(~_wgslsmith_add_i32(arg_1.c.b, u_input.b), -_wgslsmith_add_i32(-50013i, 28787i));
    var var_3 = arg_1.c;
    var var_4 = _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(~(vec4<i32>(var_3.b, arg_1.c.b, 8729i, var_3.b) & select(vec4<i32>(2147483647i, var_3.b, u_input.b, arg_1.a.x), vec4<i32>(-22135i, u_input.b, 15143i, 6522i), true)), vec4<i32>(~arg_1.b.b, ~arg_1.e, ~(-15420i), ~arg_1.e) << (vec4<u32>(var_1.x, ~1u, arg_1.b.a.x, abs(49317u)) % vec4<u32>(32u))), vec4<i32>(i32(-1i) * -29600i, 28025i, var_3.b, abs(1i)), vec4<i32>(_wgslsmith_add_i32(2147483647i >> (var_1.x % 32u), -45742i), 2147483647i, 1i, countOneBits(u_input.b) & 31957i) & _wgslsmith_mult_vec4_i32(vec4<i32>(-var_3.b, _wgslsmith_dot_vec3_i32(arg_1.a, arg_1.a), 2147483647i, var_3.b), countOneBits(~vec4<i32>(arg_1.c.b, 42750i, 2147483647i, arg_1.a.x))));
    return ~(-2147483647i);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: bool, arg_3: f32) -> Struct_2 {
    var var_0 = func_2(_wgslsmith_div_i32(abs(-u_input.b), u_input.b) >> (arg_0.a.x % 32u));
    let var_1 = Struct_1(vec4<u32>(~1u, 35083u ^ ((4294967295u >> (1u % 32u)) & u_input.a), u_input.a, countOneBits(arg_1.x)), func_3(vec3<f32>(arg_3, arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - arg_3))), Struct_2(vec3<i32>(_wgslsmith_add_i32(arg_0.b, 2147483647i), i32(-1i) * -2147483647i, _wgslsmith_sub_i32(8418i, 52387i)), arg_0, Struct_1(arg_0.a, i32(-1i) * -2147483647i), _wgslsmith_f_op_f32(floor(-2058f)), -25200i & var_0.x)));
    var var_2 = Struct_1(var_1.a, _wgslsmith_div_i32(arg_0.b << (1u % 32u), 1i));
    var_0 = vec3<i32>(var_1.b, -1i, -func_2(_wgslsmith_mult_i32(arg_0.b, -2147483647i)).x);
    let var_3 = vec3<i32>(var_0.x, ~((var_2.b & var_1.b) & -2147483647i), abs(-max(var_1.b, 1i)) | var_1.b);
    return Struct_2(var_3, Struct_1(~arg_0.a, ~var_1.b), arg_0, arg_3, 0i);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>) -> u32 {
    var var_0 = arg_0.c.a.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(378f)));
    var var_2 = func_1(Struct_1(firstLeadingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_0.b.a, vec4<u32>(arg_0.c.a.x, 9837u, arg_0.c.a.x, 70984u), vec4<u32>(u_input.a, 53261u, arg_0.c.a.x, 19693u)), vec4<u32>(39230u, arg_0.b.a.x, u_input.a, arg_0.c.a.x))), func_2(u_input.b).x), arg_0.b.a, true, arg_0.d);
    let var_3 = !arg_1.yx;
    var_0 = 4294967295u | max(arg_0.c.a.x, 0u);
    return _wgslsmith_dot_vec4_u32(~arg_0.c.a, var_2.c.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~u_input.a, _wgslsmith_mult_u32(1u, u_input.a), u_input.a);
    var_0 = ~(~_wgslsmith_sub_vec3_u32(~vec3<u32>(var_0.x, 35284u, var_0.x) ^ ~vec3<u32>(4294967295u, u_input.a, 3298u), vec3<u32>(var_0.x, 10212u, 1u) & (vec3<u32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(38639u, u_input.a, u_input.a) % vec3<u32>(32u)))));
    var var_1 = firstTrailingBit(18784u);
    var_0 = ~countOneBits(vec3<u32>(0u, func_4(func_1(Struct_1(vec4<u32>(u_input.a, var_0.x, var_0.x, 4294967295u), u_input.b), vec4<u32>(var_0.x, u_input.a, 1u, 0u), true, -288f), vec3<bool>(true, true, false)), ~var_0.x));
    var_1 = u_input.a;
    let var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(-1i, abs(firstLeadingBit(~(-32434i))), u_input.b), select(vec3<i32>(-2147483647i, ~2147483647i, _wgslsmith_mod_i32(5149i, -14798i)), countOneBits(vec3<i32>(1i, -49841i, u_input.b) >> (vec3<u32>(7469u, u_input.a, 25297u) % vec3<u32>(32u))), vec3<bool>(true, true, true)) ^ (~(~vec3<i32>(u_input.b, u_input.b, u_input.b)) | select(select(vec3<i32>(1i, -1i, u_input.b), vec3<i32>(2147483647i, u_input.b, 12357i), vec3<bool>(true, true, false)), vec3<i32>(u_input.b, u_input.b, 2147483647i), vec3<bool>(true, true, true))));
    let var_3 = Struct_1(min(vec4<u32>(1u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(var_0.x, 1u), vec2<u32>(4294967295u, var_0.x), true), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, var_0.x), var_0.zz)), u_input.a >> (_wgslsmith_dot_vec2_u32(var_0.xy, vec2<u32>(u_input.a, u_input.a)) % 32u), func_4(Struct_2(vec3<i32>(-1i, var_2.x, var_2.x), Struct_1(vec4<u32>(4294967295u, u_input.a, 1u, 1u), var_2.x), Struct_1(vec4<u32>(u_input.a, 0u, var_0.x, 55163u), u_input.b), 526f, var_2.x), vec3<bool>(true, true, true))), ~(vec4<u32>(9620u, 97759u, u_input.a, var_0.x) | vec4<u32>(4294967295u, 3844u, 1u, 0u))), u_input.b);
    let var_4 = var_3.b;
    var var_5 = func_1(func_1(var_3, abs(abs(vec4<u32>(19972u, 4294967295u, u_input.a, u_input.a))), any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-474f * -1442f))).b, _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(~(~var_3.a), var_3.a, var_3.a), firstLeadingBit(vec4<u32>(109137u, 0u, ~u_input.a, firstLeadingBit(1u)))), all(vec3<bool>(true, any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true))), false)), 390f);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, select(~4294967295u, var_0.x, any(vec2<bool>(true, true))) >> (1u % 32u), vec4<f32>(var_5.d, _wgslsmith_f_op_f32(func_1(var_5.c, ~var_3.a, all(vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(select(var_5.d, var_5.d, true))).d * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-284f - 715f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(func_1(var_3, vec4<u32>(u_input.a, 4294967295u, var_3.a.x, 1u), true, -1000f).d, _wgslsmith_f_op_f32(abs(var_5.d)))))), 1181f), _wgslsmith_dot_vec3_u32(~var_3.a.ywz, _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(0u, 20858u, 4294967295u)), func_1(Struct_1(var_5.b.a, -25445i), vec4<u32>(1u, 48608u, 1u, 153191u), true, _wgslsmith_f_op_f32(-var_5.d)).c.a.zyy, var_3.a.zxx)));
}

