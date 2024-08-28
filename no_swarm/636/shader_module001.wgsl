struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-6941i, 0i, 2147483647i, 1i);

var<private> global1: u32;

var<private> global2: vec3<bool>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: f32) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_2, _wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-999f, arg_0), vec2<f32>(arg_2, arg_2))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_2, -548f))))))));
    var var_1 = Struct_1(!all(select(select(vec4<bool>(false, global2.x, global2.x, false), vec4<bool>(true, true, global2.x, global2.x), vec4<bool>(global2.x, false, false, true)), !vec4<bool>(global2.x, true, true, false), select(vec4<bool>(global2.x, global2.x, false, global2.x), vec4<bool>(global2.x, global2.x, global2.x, true), vec4<bool>(true, global2.x, true, global2.x)))), ~vec2<i32>(2147483647i, -global0.x) | (global0.zy >> (_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, u_input.a), firstTrailingBit(vec2<u32>(1u, u_input.a))) % vec2<u32>(32u))));
    global1 = ~_wgslsmith_div_u32(1u, ~81924u);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_div_f32(-2296f, var_0.x), !global2.x)) + arg_1)));
    global0 = _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -select(~vec4<i32>(var_1.b.x, global0.x, var_1.b.x, -18042i), vec4<i32>(global0.x, var_1.b.x, -2147483647i, -2147483647i) ^ vec4<i32>(global0.x, global0.x, global0.x, -1i), !vec4<bool>(true, var_1.a, var_1.a, false)), vec4<i32>(_wgslsmith_dot_vec2_i32((vec2<i32>(2147483647i, global0.x) << (vec2<u32>(u_input.a, 972u) % vec2<u32>(32u))) | -var_1.b, abs(vec2<i32>(-7056i, var_1.b.x))), abs(-(~var_1.b.x)), select(-46610i, -9082i & var_1.b.x, false) & -2147483647i, abs(abs(select(var_1.b.x, -48830i, global2.x)))));
    return vec4<i32>(_wgslsmith_dot_vec3_i32(~global0.zwy, vec3<i32>(var_1.b.x ^ global0.x, 0i, ~var_1.b.x)), _wgslsmith_add_i32(1i, max(-2900i, -31721i)), reverseBits(-1i), ~(global0.x << (14092u % 32u)) >> (max(~u_input.a, u_input.a) % 32u)) | vec4<i32>(var_1.b.x, -1910i, min(global0.x, var_1.b.x) | _wgslsmith_sub_i32(1i, var_1.b.x), _wgslsmith_div_i32(2147483647i, _wgslsmith_clamp_i32(countOneBits(var_1.b.x), ~25302i, firstLeadingBit(var_1.b.x))));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = vec2<bool>(arg_1.a, any(!(!vec4<bool>(false, arg_1.a, false, arg_1.a))));
    global0 = func_3(_wgslsmith_f_op_f32(f32(-1f) * -1252f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -1001f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1027f)), _wgslsmith_f_op_f32(f32(-1f) * -829f)))) << (~_wgslsmith_div_vec4_u32(~arg_2, ~vec4<u32>(arg_2.x, arg_2.x, 4294967295u, 4294967295u)) % vec4<u32>(32u));
    var_0 = vec2<bool>(false, global2.x);
    let var_1 = ~vec4<i32>(-9298i, -(func_3(-790f, -355f, -540f).x | _wgslsmith_mod_i32(2147483647i, arg_1.b.x)), ~_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(global0.x, 35864i, global0.x, -20584i)), vec4<i32>(2147483647i, global0.x, arg_1.b.x, 2147483647i) << (vec4<u32>(arg_0, 79417u, 1u, arg_0) % vec4<u32>(32u))), 1i);
    global1 = _wgslsmith_dot_vec4_u32(arg_2, ~(~vec4<u32>(arg_0 & 0u, ~arg_0, arg_2.x, ~arg_0)));
    return Struct_1(var_0.x, countOneBits(vec2<i32>(abs(arg_1.b.x), _wgslsmith_clamp_i32(global0.x, arg_1.b.x, global0.x))) ^ arg_1.b);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    global2 = vec3<bool>(any(vec2<bool>(false, arg_3.a && global2.x)), arg_0.a, true);
    var var_1 = select(select(vec3<bool>(any(vec4<bool>(arg_0.a, false, true, false)), true, ~u_input.a == u_input.a), !(!(!vec3<bool>(var_0.a, var_0.a, global2.x))), select(!select(vec3<bool>(false, false, arg_3.a), vec3<bool>(global2.x, arg_0.a, arg_3.a), false), vec3<bool>(true, arg_1.x != arg_1.x, true), max(arg_0.b.x, global0.x) > 1i)), select(!(!(!vec3<bool>(arg_3.a, var_0.a, false))), vec3<bool>(func_2(1u, arg_3, _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, 55104u), vec4<u32>(u_input.a, 27769u, u_input.a, 0u))).a, true == all(vec3<bool>(var_0.a, true, false)), global2.x), vec3<bool>(!arg_0.a, var_0.a || func_2(u_input.a, arg_3, vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)).a, !(global2.x & false))), !(!vec3<bool>(var_0.a, all(vec3<bool>(true, var_0.a, true)), func_2(u_input.a, Struct_1(arg_0.a, arg_0.b), vec4<u32>(u_input.a, u_input.a, 1u, 58246u)).a)));
    var var_2 = arg_1.x;
    global2 = select(select(!(!vec3<bool>(true, false, arg_0.a)), !select(select(vec3<bool>(arg_3.a, false, var_1.x), vec3<bool>(global2.x, false, false), var_1.x), !vec3<bool>(false, arg_0.a, false), vec3<bool>(false, false, false)), select(select(vec3<bool>(true, var_0.a, false), vec3<bool>(false, true, true), false), vec3<bool>(global2.x, !var_0.a, false), vec3<bool>(!var_0.a, true, true))), !vec3<bool>(all(vec2<bool>(true, false)), true, any(global2.zx) | arg_0.a), select(vec3<bool>(!(u_input.a > 10386u), false, global2.x), !vec3<bool>(arg_3.a, !arg_0.a, arg_2 <= 1i), all(global2.yz)));
    return func_2(~u_input.a, arg_3, vec4<u32>(1u, reverseBits(max(~u_input.a, 0u)), ~_wgslsmith_mult_u32(u_input.a, max(4294967295u, u_input.a)), firstLeadingBit(~firstTrailingBit(20740u))));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: i32) -> Struct_1 {
    var var_0 = func_4(arg_0, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1))))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-103f, arg_1), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-649f, 418f)) * vec2<f32>(-176f, arg_1)))))), -reverseBits(2147483647i), func_2(34956u, Struct_1((arg_2 ^ 4294967295u) <= ~30356u, global0.xw), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 31895u, u_input.a), ~vec4<u32>(u_input.a, arg_2, u_input.a, 0u))));
    let var_1 = min(~vec3<u32>(4294967295u, u_input.a, firstLeadingBit(arg_2 ^ arg_2)), min(vec3<u32>(~u_input.a, firstTrailingBit(~1u), 1u), vec3<u32>(_wgslsmith_sub_u32(0u, u_input.a), _wgslsmith_mult_u32(~u_input.a, _wgslsmith_clamp_u32(arg_2, arg_2, 1u)), _wgslsmith_mult_u32(arg_2 | 4294967295u, arg_2))));
    global2 = vec3<bool>(!(2351i < select(21082i & global0.x, -882i, all(global2.xz))), any(!select(!vec3<bool>(global2.x, false, false), vec3<bool>(arg_0.a, true, var_0.a), all(vec2<bool>(true, true)))), (var_1.x << (_wgslsmith_add_u32(arg_2, 41754u ^ arg_2) % 32u)) >= 60304u);
    var_0 = arg_0;
    global1 = reverseBits(14526u);
    return func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a, 0u) | _wgslsmith_mod_vec2_u32(var_1.xz, vec2<u32>(arg_2, arg_2)), var_1.yx), func_4(Struct_1(_wgslsmith_div_i32(1201i, 97593i) == -var_0.b.x, func_3(_wgslsmith_f_op_f32(arg_1 - 175f), 505f, _wgslsmith_f_op_f32(-arg_1)).yy), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, arg_1), vec2<f32>(-396f, arg_1))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1233f, arg_1) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -124f)))), _wgslsmith_mult_i32(~arg_0.b.x, -31102i), func_4(arg_0, vec2<f32>(_wgslsmith_f_op_f32(1484f - arg_1), -172f), i32(-1i) * -var_0.b.x, arg_0)), ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 0u, u_input.a, 0u), vec4<u32>(4294967295u, u_input.a, 1u, 27770u)), arg_2, var_1.x, 0u) & min(max(_wgslsmith_sub_vec4_u32(vec4<u32>(9235u, u_input.a, 59196u, var_1.x), vec4<u32>(4294967295u, arg_2, var_1.x, 1862u)), select(vec4<u32>(var_1.x, var_1.x, 4294967295u, arg_2), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), vec4<bool>(arg_0.a, false, false, global2.x))), vec4<u32>(firstTrailingBit(u_input.a), ~arg_2, var_1.x, abs(4294967295u))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> f32 {
    let var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(-33884i, ~(i32(-1i) * -21944i)), ~arg_1.b.x >> ((4294967295u << (arg_2 % 32u)) % 32u), 17305i, arg_0.b.x), select(~countOneBits(vec4<i32>(1i, global0.x, arg_0.b.x, -2147483647i)), vec4<i32>(firstTrailingBit(arg_1.b.x), -arg_0.b.x, 77201i, 1i) >> (firstLeadingBit(min(vec4<u32>(u_input.a, arg_2, arg_2, arg_2), vec4<u32>(arg_2, arg_2, 0u, 34656u))) % vec4<u32>(32u)), true));
    global0 = vec4<i32>(1i, firstTrailingBit(3823i), -_wgslsmith_mult_i32(arg_1.b.x, 0i), _wgslsmith_clamp_i32(i32(-1i) * -7150i, 1i, arg_1.b.x));
    let var_1 = 0u << ((u_input.a >> (u_input.a % 32u)) % 32u);
    global0 = abs(vec4<i32>(var_0.x, -22185i, func_4(func_2(35759u, func_1(Struct_1(global2.x, var_0.yx), -1000f, 1u, 0i), vec4<u32>(var_1, var_1, 70020u, 17898u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2287f, 569f) - vec2<f32>(-982f, -2174f)) * vec2<f32>(-1000f, -582f)), firstTrailingBit(_wgslsmith_add_i32(global0.x, -40524i)), func_2(~0u, arg_1, ~vec4<u32>(4294967295u, 11626u, u_input.a, 0u))).b.x, 1i));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1443f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(428f + -1365f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -521f)) * 1346f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(1313f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_1(Struct_1(global2.x, global0.xx), -1911f, 4294967295u, global0.x), Struct_1(global2.x, vec2<i32>(-60687i, global0.x)), ~u_input.a)))));
    global2 = vec3<bool>(global2.x, global2.x, global2.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(2147483647i, 1i, _wgslsmith_sub_i32(~global0.x | ~global0.x, _wgslsmith_mod_i32(global0.x, reverseBits(global0.x)))), ~(-1i) & global0.x);
}

