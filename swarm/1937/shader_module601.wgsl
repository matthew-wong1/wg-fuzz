struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: Struct_3,
    d: vec3<f32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: f32) -> f32 {
    global0 = Struct_1(true, !(!(!global0.b)));
    global0 = Struct_1(!(!all(vec3<bool>(false, false, false))), _wgslsmith_add_u32(_wgslsmith_add_u32(~27847u, ~u_input.a.x), ~(~4294967295u)) < _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(1u, 23439u, 36461u)), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), ~(vec3<u32>(18953u, 3010u, 1u) ^ vec3<u32>(u_input.a.x, 54879u, 1u))));
    var var_0 = select(-vec3<i32>(0i, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-47356i, 22556i, 16943i), vec3<i32>(4442i, 0i, -6242i)), -1992i >> (u_input.a.x % 32u)), -20975i), ~vec3<i32>(select(1i, 0i, false), ~(-2147483647i), 1i), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(trunc(417f)))))) < arg_0);
    let var_1 = Struct_3(Struct_2(Struct_1(!(!global0.b), false), Struct_1(global0.a, global0.a), ~(-firstLeadingBit(vec3<i32>(var_0.x, -3805i, -2147483647i))), Struct_1(global0.b, global0.a & true)), Struct_1(global0.a, global0.b), ~u_input.a.x & u_input.a.x, Struct_2(Struct_1(!select(false, global0.b, global0.a), _wgslsmith_f_op_f32(arg_0 + arg_0) < _wgslsmith_f_op_f32(-arg_0)), Struct_1(global0.b, false), vec3<i32>(-_wgslsmith_mod_i32(var_0.x, 15960i), -(var_0.x ^ var_0.x), _wgslsmith_div_i32(2147483647i & var_0.x, var_0.x)), Struct_1(global0.b, true)), Struct_2(Struct_1(any(vec3<bool>(false, global0.a, true)), true), Struct_1(global0.a, global0.b), _wgslsmith_div_vec3_i32(select(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, var_0.x, 2147483647i), vec3<i32>(0i, var_0.x, var_0.x)), vec3<i32>(2147483647i, var_0.x, 41551i) | vec3<i32>(var_0.x, var_0.x, -8979i), vec3<bool>(global0.b, global0.a, false)), vec3<i32>(abs(var_0.x), abs(var_0.x), _wgslsmith_clamp_i32(var_0.x, var_0.x, var_0.x))), Struct_1(global0.a, all(vec2<bool>(true, true)))));
    let var_2 = var_1.c;
    return arg_0;
}

fn func_2() -> i32 {
    global0 = Struct_1(true, any(!vec3<bool>(true, global0.b, select(global0.b, true, true))));
    var var_0 = vec4<u32>(0u, max(~u_input.a.x, u_input.a.x), 2540u, ~firstTrailingBit(32045u >> (~u_input.a.x % 32u)));
    let var_1 = Struct_1(true, false);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(559f, 1452f) + _wgslsmith_f_op_f32(floor(237f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(526f, -631f))))), _wgslsmith_f_op_f32(max(1521f, _wgslsmith_f_op_f32(func_3(-826f)))), true)), 911f);
    var_0 = ~(vec4<u32>(_wgslsmith_div_u32(~var_0.x, ~u_input.a.x), var_0.x, 1u, 0u) & vec4<u32>(~(u_input.a.x | 34932u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(29111u, var_0.x), u_input.a), select(u_input.a.x, 85978u, true), abs(firstLeadingBit(7629u))));
    return _wgslsmith_add_i32(-4952i, 38845i);
}

fn func_1(arg_0: vec3<i32>, arg_1: i32) -> i32 {
    let var_0 = countOneBits(u_input.a);
    var var_1 = firstLeadingBit(_wgslsmith_div_i32(arg_0.x, (_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, -1i, 21329i, arg_0.x), vec4<i32>(arg_1, -1i, arg_1, -2665i)) ^ (arg_1 << (12245u % 32u))) & reverseBits(_wgslsmith_mult_i32(20773i, 0i))));
    var_1 = 0i;
    var_1 = _wgslsmith_mult_i32(1i, _wgslsmith_clamp_i32(0i ^ func_2(), ~15781i << (~(~0u) % 32u), _wgslsmith_div_i32(reverseBits(arg_1), -arg_1)));
    let var_2 = vec3<f32>(-1118f, 1668f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -660f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1383f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-362f * -1658f) + -1000f))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec3<i32>(1i, 1i, _wgslsmith_mod_i32(func_1(-vec3<i32>(2147483647i, 5397i, 8922i), 35564i), min(-6953i, ~(-13872i))));
    let var_1 = abs(abs(_wgslsmith_dot_vec2_u32(~firstTrailingBit(vec2<u32>(u_input.a.x, 0u)), vec2<u32>(~5344u, 0u))));
    global0 = Struct_1(global0.a == global0.b, 1u > abs(u_input.a.x));
    let var_2 = -1i;
    let var_3 = abs(~var_1);
    var var_4 = Struct_3(Struct_2(Struct_1(~var_3 != ~4294967295u, true), Struct_1(!global0.b, global0.a), select(firstLeadingBit(var_0) << ((vec3<u32>(32858u, var_1, u_input.a.x) | vec3<u32>(6881u, 4294967295u, var_1)) % vec3<u32>(32u)), ~vec3<i32>(-14328i, var_0.x, var_0.x), all(vec3<bool>(true, global0.b, false)) & !global0.b), Struct_1(global0.a, !select(global0.b, global0.b, global0.b))), Struct_1(_wgslsmith_mult_u32(0u, ~var_3) == ~u_input.a.x, !select(false, false, true)), 4294967295u, Struct_2(Struct_1(true, !(var_2 < var_0.x)), Struct_1(any(select(vec2<bool>(global0.b, true), vec2<bool>(false, false), global0.a)), select(false, global0.b, global0.a && true)), _wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(18837i, var_2, var_2)), vec3<i32>(-1i, var_0.x, 28130i)) << (vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1, 48562u), u_input.a), 1u, 107222u) % vec3<u32>(32u)), Struct_1(false, !(global0.a == global0.a))), Struct_2(Struct_1(all(select(vec2<bool>(false, true), vec2<bool>(global0.b, true), global0.a)), global0.a), Struct_1(all(!vec2<bool>(global0.b, global0.a)), !global0.b), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(var_0, var_0), _wgslsmith_mod_vec3_i32(vec3<i32>(var_2, var_2, var_2), var_0)), _wgslsmith_div_vec3_i32(vec3<i32>(var_2, var_2, var_2), var_0), -var_0), Struct_1(!global0.a, true)));
    var var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(637f, 395f, -815f))) * vec3<f32>(-336f, 1306f, -619f))), vec3<f32>(1f, 1f, 1f), select(!vec3<bool>(true, global0.b, false), select(!vec3<bool>(var_4.d.b.b, false, false), !vec3<bool>(false, var_4.d.b.a, false), select(vec3<bool>(true, false, true), vec3<bool>(var_4.d.a.a, true, false), global0.b)), true))));
    let x = u_input.a;
    s_output = StorageBuffer(select(firstLeadingBit(vec2<i32>(~(-35331i), var_2)), vec2<i32>(abs(_wgslsmith_add_i32(var_0.x, var_2)), countOneBits(var_0.x)), any(vec3<bool>(global0.a, var_4.b.a, global0.a))), var_2, countOneBits(abs(~var_0.x)) ^ -firstTrailingBit(abs(-2147483647i)), vec2<i32>(5960i, ~(_wgslsmith_mod_i32(-7107i, 4160i) | (-2636i & var_2))));
}

