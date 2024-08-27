struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<u32>) -> bool {
    global0 = array<f32, 8>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(~0u, 8u)])), vec2<bool>(true, false), vec2<bool>(!(global0[_wgslsmith_index_u32(arg_1.x, 8u)] == _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 8u)])), true), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(0u, arg_1.x, u_input.c)), vec3<u32>(1u, countOneBits(0u), ~0u)), abs(reverseBits(0u)), ~(~_wgslsmith_div_u32(u_input.a.x, 98136u))), 8u)]);
    return !(~arg_1.x >= max(~4294967295u, u_input.e | u_input.e)) && !(arg_1.x >= ~37298u);
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(abs(951f)), select(!vec2<bool>(all(vec3<bool>(arg_2.b.x, arg_2.b.x, arg_2.c.x)), arg_2.c.x), select(arg_2.b, select(vec2<bool>(arg_2.c.x, arg_2.c.x), select(arg_2.b, arg_2.c, arg_2.b.x), !arg_2.c), vec2<bool>(func_3(vec3<i32>(arg_0, -2147483647i, u_input.d.x), vec2<u32>(u_input.e, 1u)), all(vec3<bool>(false, arg_2.b.x, true)))), select(arg_2.c, arg_2.c, all(select(vec4<bool>(false, arg_2.b.x, arg_2.b.x, arg_2.c.x), vec4<bool>(true, arg_2.b.x, true, arg_2.c.x), vec4<bool>(true, arg_2.b.x, true, arg_2.c.x))))), !select(select(select(arg_2.b, arg_2.c, arg_2.b), arg_2.c, !arg_2.c.x), arg_2.c, select(select(vec2<bool>(arg_2.b.x, false), arg_2.c, arg_2.c.x), arg_2.c, select(vec2<bool>(false, arg_2.c.x), vec2<bool>(arg_2.c.x, arg_2.c.x), arg_2.b.x))), _wgslsmith_f_op_f32(trunc(arg_2.d)));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.a * arg_2.d))) - _wgslsmith_f_op_f32(-420f - _wgslsmith_div_f32(arg_2.a, -333f))), _wgslsmith_f_op_f32(190f - var_0.a), true)), arg_2.a));
    let var_2 = arg_2.b;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1499f), !arg_2.b, vec2<bool>(true, any(vec4<bool>(!arg_2.b.x, all(vec2<bool>(false, false)), true, true))), _wgslsmith_f_op_f32(var_0.d * var_0.a));
    let var_4 = vec4<bool>(func_3(_wgslsmith_div_vec3_i32(~vec3<i32>(-35223i, u_input.b, -2147483647i), vec3<i32>(u_input.d.x, arg_0, ~17563i)), ~vec2<u32>(firstLeadingBit(0u), _wgslsmith_clamp_u32(u_input.c, arg_1.x, arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(arg_1.x, 8u)], 303f))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -634f) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 8u)])), all(select(vec3<bool>(true, any(var_0.b), true), !(!vec3<bool>(arg_2.c.x, false, true)), vec3<bool>(false, arg_2.b.x, true))), !var_0.c.x);
    return Struct_1(_wgslsmith_f_op_f32(-1299f + arg_2.d), var_3.b, vec2<bool>(var_4.x, !any(select(vec4<bool>(true, var_0.b.x, var_4.x, var_0.c.x), var_4, var_4))), 638f);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec2<bool>) -> i32 {
    var var_0 = Struct_1(1027f, !vec2<bool>(!arg_2.x, false), arg_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(547f, global0[_wgslsmith_index_u32(34510u, 8u)])))) + _wgslsmith_f_op_f32(740f - _wgslsmith_f_op_f32(arg_1.a * global0[_wgslsmith_index_u32(62435u, 8u)])))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(686f, arg_1.a)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], -697f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(555f, -923f))))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(select(arg_1.a, 154f, -3318i == (_wgslsmith_div_i32(39109i, 30780i) << (u_input.e % 32u)))), vec2<bool>(true, true), vec2<bool>(false, arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(411f))));
    let var_2 = u_input.e < 45064u;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_1.d)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_1.x)), 1002f, any(func_2(u_input.d.x, u_input.a.yy, Struct_1(global0[_wgslsmith_index_u32(49625u, 8u)], arg_2, vec2<bool>(false, var_0.b.x), -734f)).c))))));
    return 31995i;
}

fn func_5(arg_0: vec2<u32>, arg_1: i32, arg_2: vec4<i32>, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = func_2(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(66053i, 2147483647i, arg_2.x >> (4294967295u % 32u), firstLeadingBit(-1i))), vec4<i32>(-25986i, -_wgslsmith_div_i32(-32059i, arg_1), arg_1, ~arg_1)), select(arg_0, u_input.a.xx, vec2<bool>(false, max(arg_0.x, 0u) > min(u_input.a.x, 4294967295u))), Struct_1(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 8u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 8u)]))), vec2<bool>(false, !any(vec3<bool>(false, true, true))), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false)), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.e, 8u)], -565f)));
    global0 = array<f32, 8>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.x, ~u_input.c) >> (~1u % 32u), 8u)]), func_2(u_input.b, vec2<u32>(u_input.a.x, 1u) & vec2<u32>(arg_0.x >> (0u % 32u), 1u), func_2(_wgslsmith_sub_i32(u_input.d.x, arg_3.x), arg_0, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -952f), vec2<bool>(true, true), vec2<bool>(true, var_0.b.x), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(0u, 8u)], var_0.a))))).c, var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-940f, -812f, var_0.c.x))))));
    var_0 = var_1;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1933f))))), select(select(var_0.c, !select(var_0.b, var_1.b, true), true), var_0.c, vec2<bool>(var_1.c.x, true)), select(!vec2<bool>(-34934i == arg_2.x, func_3(u_input.d.zxw, vec2<u32>(9737u, 1u))), !var_0.b, !var_1.c), var_0.d);
    return func_2(_wgslsmith_mod_i32(-(arg_1 | arg_1), arg_2.x << (20185u % 32u)) >> (u_input.c % 32u), u_input.a.zz, func_2(-_wgslsmith_div_i32(-17181i, arg_3.x) << (1u % 32u), arg_0, var_1));
}

fn func_1() -> f32 {
    global0 = array<f32, 8>();
    var var_0 = func_5(_wgslsmith_mod_vec2_u32(~vec2<u32>(15646u, 55145u), ~(~vec2<u32>(0u, u_input.a.x))) | _wgslsmith_mult_vec2_u32(u_input.a.xy, vec2<u32>(1u, 1u)), 48477i, select(vec4<i32>(u_input.b, ~(~(-2147483647i)), -9768i, -1i), vec4<i32>(_wgslsmith_add_i32(59312i, u_input.b), reverseBits(~(-20662i)), -(~u_input.d.x), func_4(u_input.e < 4294967295u, func_2(u_input.d.x, u_input.a.xx, Struct_1(112f, vec2<bool>(false, false), vec2<bool>(true, false), global0[_wgslsmith_index_u32(u_input.a.x, 8u)])), vec2<bool>(false, false))), !any(vec2<bool>(true, true))), u_input.d.yw);
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.a, -2331f), var_0.a, any(select(!(!vec3<bool>(var_0.c.x, var_0.b.x, var_0.c.x)), select(vec3<bool>(true, var_0.c.x, var_0.b.x), select(vec3<bool>(false, var_0.b.x, var_0.c.x), vec3<bool>(false, true, false), vec3<bool>(true, var_0.c.x, var_0.c.x)), vec3<bool>(false, var_0.b.x, true)), vec3<bool>(true, var_0.c.x, true)))));
    var_0 = func_2(_wgslsmith_add_i32(u_input.d.x, u_input.d.x), vec2<u32>(~61082u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e, u_input.a.x, u_input.e, u_input.e), vec4<u32>(1u, 4294967295u, 31522u, 23127u)) << (~vec4<u32>(u_input.c, 0u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), ~vec4<u32>(u_input.e, u_input.a.x, u_input.a.x, 15177u))), func_2(u_input.d.x, ~(~u_input.a.xz), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1, var_0.d, var_0.c.x)), _wgslsmith_f_op_f32(270f * global0[_wgslsmith_index_u32(u_input.e, 8u)])), vec2<bool>(var_0.c.x, false), !select(var_0.c, var_0.c, vec2<bool>(true, true)), _wgslsmith_f_op_f32(select(var_0.a, var_0.d, var_0.c.x)))));
    let var_2 = !var_0.c.x;
    return _wgslsmith_div_f32(-469f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(731f, -1733f))) + _wgslsmith_f_op_f32(-584f - -637f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_1)), var_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 8>();
    var var_0 = _wgslsmith_f_op_f32(func_1());
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(851f, 217f, global0[_wgslsmith_index_u32(u_input.c, 8u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-540f, -786f, global0[_wgslsmith_index_u32(u_input.e, 8u)]) - vec3<f32>(global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(42073u, 8u)]))))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(54707u, 8u)], _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 555f)), _wgslsmith_f_op_f32(func_1())))));
    global0 = array<f32, 8>();
    global0 = array<f32, 8>();
    var_0 = 645f;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.e, 8u)], global0[_wgslsmith_index_u32(43060u, 8u)])), _wgslsmith_f_op_f32(floor(var_1.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.c, 8u)], var_1.x)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 8u)] - 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.c, 8u)]) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * global0[_wgslsmith_index_u32(23375u, 8u)])))), u_input.d.x, _wgslsmith_sub_vec4_u32(~(vec4<u32>(u_input.a.x, u_input.e, 0u, u_input.a.x) | max(vec4<u32>(u_input.a.x, 39031u, 0u, 0u), vec4<u32>(4294967295u, 73332u, 0u, u_input.c))), vec4<u32>(u_input.e, u_input.c, u_input.c, ~u_input.e)), vec4<f32>(var_1.x, 981f, var_1.x, global0[_wgslsmith_index_u32(u_input.a.x, 8u)]), vec3<u32>(~select(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, u_input.a.x), u_input.a), u_input.a.x, -15452i > u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, u_input.e, 0u, u_input.a.x) & vec4<u32>(u_input.c, 0u, 4294967295u, u_input.c), min(~vec4<u32>(75966u, 1u, u_input.e, u_input.c), reverseBits(vec4<u32>(1u, 45942u, u_input.c, 1u)))), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, u_input.a.x, ~u_input.c), vec3<u32>(u_input.a.x, 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.a.x, u_input.e), u_input.a)))));
}

