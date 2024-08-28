struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

var<private> global1: vec4<f32>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<f32> {
    global1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(global1.x * global1.x), _wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_div_f32(1613f, 1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global1.x, -1000f), global1.x, _wgslsmith_f_op_f32(ceil(-1245f)), _wgslsmith_f_op_f32(f32(-1f) * -308f)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(-424f - global1.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global1.x)))), _wgslsmith_f_op_f32(ceil(global1.x)), _wgslsmith_f_op_f32(-global1.x))))));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -663f, 1552f, global1.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-800f, 1362f, -578f, global1.x))), vec4<bool>(global0.x, true, global0.x, false))), vec4<f32>(_wgslsmith_f_op_f32(1000f * -1643f), 222f, _wgslsmith_f_op_f32(global1.x - global1.x), global1.x)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, -688f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1627f, global1.x, global1.x, 706f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1305f, 482f, 1374f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, global1.x) + vec4<f32>(global1.x, -1000f, 478f, -866f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1565f, _wgslsmith_f_op_f32(global1.x * global1.x), -159f, _wgslsmith_f_op_f32(floor(global1.x))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.x, -1053f, 659f, 1840f))))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: bool, arg_3: vec4<f32>) -> vec2<f32> {
    let var_0 = select(~(~countOneBits(vec3<u32>(arg_0.x, 5957u, u_input.d)) & vec3<u32>(min(u_input.d, 4294967295u), arg_1.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, arg_1.c.x), vec3<u32>(4294967295u, u_input.d, arg_1.b)))), _wgslsmith_mult_vec3_u32(vec3<u32>(~countOneBits(arg_1.c.x), reverseBits(arg_0.x) | u_input.d, 0u), _wgslsmith_clamp_vec3_u32(~max(vec3<u32>(27345u, 67788u, u_input.d), vec3<u32>(17602u, 1u, u_input.d)), ~abs(vec3<u32>(1u, arg_0.x, 0u)), vec3<u32>(0u, _wgslsmith_mult_u32(109046u, arg_0.x), countOneBits(16227u)))), !global0.x == !(arg_3.x != _wgslsmith_f_op_f32(-126f * global1.x)));
    let var_1 = arg_1;
    var var_2 = _wgslsmith_sub_u32(arg_0.x, u_input.d);
    let var_3 = arg_2;
    var_2 = reverseBits(16608u);
    return arg_3.zy;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<bool>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_4(reverseBits(abs(~vec2<u32>(1u, u_input.d))), Struct_1(!arg_1.x, ~max(u_input.d, u_input.d), countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, 1u), vec2<u32>(u_input.d, u_input.d))), u_input.a.x), any(select(vec4<bool>(global0.x, arg_1.x, arg_1.x, true), !vec4<bool>(global0.x, true, false, true), vec4<bool>(global0.x, arg_1.x, arg_1.x, global0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, global1.x, arg_0.x, arg_0.x) * vec4<f32>(global1.x, -245f, global1.x, 775f))))))));
    let var_1 = Struct_1(!any(select(select(vec4<bool>(false, false, arg_1.x, false), vec4<bool>(true, true, arg_1.x, false), false), select(vec4<bool>(true, arg_1.x, true, true), vec4<bool>(true, global0.x, global0.x, arg_1.x), vec4<bool>(global0.x, global0.x, arg_1.x, arg_1.x)), any(vec2<bool>(arg_1.x, arg_1.x)))), 1u, _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(u_input.d, u_input.d, 13990u), ~u_input.d) & (firstTrailingBit(vec2<u32>(66778u, u_input.d)) & vec2<u32>(u_input.d, u_input.d)), _wgslsmith_div_vec2_u32(vec2<u32>(44936u, 47227u), _wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(u_input.d, u_input.d)), vec2<u32>(u_input.d, 17975u) | vec2<u32>(u_input.d, u_input.d))), ~reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(1u, 26004u)))), abs(_wgslsmith_div_i32(~u_input.c.x, u_input.b.x << (_wgslsmith_sub_u32(74212u, 1u) % 32u))));
    var var_2 = Struct_2(~var_1.b);
    global1 = vec4<f32>(arg_0.x, var_0.x, global1.x, arg_0.x);
    global0 = arg_1;
    return 34970i;
}

fn func_1(arg_0: vec3<f32>, arg_1: bool) -> vec4<f32> {
    var var_0 = _wgslsmith_clamp_i32(u_input.c.x, func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, global1.x, -1000f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -251f, -215f) * global1.wyy)), !vec3<bool>(true, false, arg_1)), _wgslsmith_div_i32(u_input.b.x, -u_input.b.x)) <= _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, -firstTrailingBit(i32(-1i) * -2147483647i));
    let var_1 = _wgslsmith_f_op_vec2_f32(-arg_0.zx);
    var var_2 = !select(!vec4<bool>(false, false, any(vec4<bool>(false, true, false, true)), !global0.x), vec4<bool>(!(!arg_1), arg_1, true, true), all(!global0.zx));
    var var_3 = _wgslsmith_div_i32(-19i, _wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(-56351i, 60396i) & u_input.b.x, -2147483647i), ~2147483647i));
    var_2 = vec4<bool>(!all(var_2.yyx) != true, select(all(select(select(var_2.zz, global0.xy, var_2.wx), vec2<bool>(arg_1, false), all(vec2<bool>(true, false)))), true, !all(var_2.zzz)), (-firstTrailingBit(14572i) << (u_input.d % 32u)) != (func_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.x, -1175f, arg_0.x))), var_2.zxw) & u_input.a.x), var_2.x & (0u == u_input.d));
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -563f, 292f, 1527f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(firstLeadingBit(u_input.d), 60985u);
    let var_1 = !(!vec4<bool>(_wgslsmith_div_i32(27689i, u_input.c.x) < u_input.b.x, any(global0.yx), all(select(vec2<bool>(false, false), vec2<bool>(global0.x, true), global0.xx)), !global0.x));
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1390f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - global1.x) - global1.x), _wgslsmith_f_op_f32(-global1.x))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, -1012f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, 2211f) + global1.zyw)), all(vec3<bool>(true, true, var_1.x)))), vec4<f32>(-401f, global1.x, _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(floor(global1.x))), _wgslsmith_div_f32(872f, _wgslsmith_f_op_vec2_f32(func_4(var_0, Struct_1(var_1.x, 1u, vec2<u32>(u_input.d, 33336u), u_input.c.x), false, vec4<f32>(-180f, global1.x, -1452f, global1.x))).x)), true)));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-1618f, 855f)), global1.x, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, global1.x, global1.x, -1000f), vec4<f32>(-710f, global1.x, global1.x, global1.x))), vec4<f32>(global1.x, global1.x, 266f, global1.x))), vec4<f32>(global1.x, _wgslsmith_f_op_vec4_f32(func_1(global1.zzy, true)).x, 404f, global1.x), true)));
    let var_2 = ~u_input.d;
    global1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.x, 616f, global1.x, 1000f), vec4<f32>(global1.x, global1.x, global1.x, 481f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(744f, global1.x, 1121f, global1.x) + vec4<f32>(global1.x, 1310f, global1.x, global1.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global1.x, -1729f), -220f, _wgslsmith_f_op_f32(-global1.x), global1.x) + vec4<f32>(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -702f), global1.x, -546f)), _wgslsmith_f_op_vec4_f32(func_1(vec3<f32>(1023f, 1732f, global1.x), -1279f <= global1.x)).x < _wgslsmith_f_op_f32(step(global1.x, -1103f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -684f), -1346f, max(~firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, var_0.x, u_input.d), vec3<u32>(var_2, 15583u, var_0.x))), var_2), _wgslsmith_f_op_vec4_f32(func_3()).ww, ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~var_0, ~vec2<u32>(var_2, var_0.x)), var_0));
}

