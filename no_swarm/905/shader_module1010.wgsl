struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<f32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 914f;

var<private> global1: Struct_3;

var<private> global2: Struct_2 = Struct_2(-625f, 1u, Struct_1(true, 0u, vec2<f32>(194f, 1240f), -88455i, true));

var<private> global3: vec2<f32> = vec2<f32>(121f, -282f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> bool {
    let var_0 = min(u_input.b.zy, ~(_wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, u_input.a), vec2<u32>(1u, global2.b)) & _wgslsmith_mod_vec2_u32(~u_input.b.ww, vec2<u32>(u_input.b.x, global2.b))));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(1898f - _wgslsmith_f_op_f32(-global2.a)))));
    var var_2 = Struct_3(_wgslsmith_dot_vec3_u32(max(reverseBits(abs(vec3<u32>(2465u, global1.a, global1.d.b))), vec3<u32>(4301u, var_0.x ^ global2.c.b, 47775u)), vec3<u32>(min(_wgslsmith_mod_u32(36737u, var_0.x), _wgslsmith_sub_u32(var_0.x, var_0.x)), global2.c.b, global2.b)), global1.d, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global1.d.c))), global1.d, min(2147483647i, abs(global2.c.d)));
    var var_3 = Struct_1(var_2.d.a | (var_2.b.a || all(vec2<bool>(var_2.b.e, var_2.b.e))), abs(~u_input.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(965f, 941f), _wgslsmith_f_op_f32(select(-489f, _wgslsmith_f_op_f32(ceil(-1332f)), global2.c.a & false)))), _wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(global2.c.d, var_2.e), var_2.e, _wgslsmith_sub_i32(var_2.e, global1.b.d)), i32(-1i) * -global1.b.d), var_2.b.d), global1.d.a);
    var var_4 = Struct_1(false, _wgslsmith_mod_u32(select(var_0.x, 4294967295u, true), 4294967295u), vec2<f32>(global3.x, _wgslsmith_f_op_f32(select(535f, _wgslsmith_f_op_f32(round(var_2.d.c.x)), any(vec3<bool>(var_3.e, false, true))))), global2.c.d, true);
    return var_3.a;
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    global2 = Struct_2(_wgslsmith_f_op_f32(select(global1.d.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.c.x - global1.c.x)))), global1.d.a)), 1u, Struct_1(global1.d.e, 0u, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1389f), global2.a), 0i, ~global1.b.d < _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -40348i, arg_0.e), vec3<i32>(global1.d.d, arg_0.e, -10717i))));
    let var_0 = Struct_1(arg_0.d.a, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b.zyw, vec3<u32>(4294967295u, 37310u, u_input.b.x)), vec3<u32>(1u, u_input.a, global1.a) & vec3<u32>(0u, 4294967295u, global1.d.b)), u_input.b.zyy), _wgslsmith_div_u32(reverseBits(global1.b.b), 107099u)), arg_0.d.c, -global2.c.d, !arg_0.b.a);
    var var_1 = vec3<bool>(false, func_3(), false);
    let var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.c.x)), global1.d.c.x), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0.c.x)), arg_0.b.c.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.a - _wgslsmith_f_op_f32(exp2(var_0.c.x))))));
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-495f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-953f - _wgslsmith_f_op_f32(max(2711f, 1783f))) - _wgslsmith_f_op_f32(exp2(var_0.c.x))) * 1064f)));
    return Struct_3(_wgslsmith_sub_u32(global2.c.b, var_0.b), var_0, arg_0.c, Struct_1(647f <= arg_0.b.c.x, ~abs(_wgslsmith_dot_vec2_u32(u_input.b.wz, u_input.b.yy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c * _wgslsmith_f_op_vec2_f32(exp2(global1.b.c)))), _wgslsmith_div_i32(var_0.d, firstTrailingBit(global2.c.d)) >> (~1u % 32u), true), global2.c.d << (1u % 32u));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_3) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.b.c.x - global3.x)));
    return _wgslsmith_f_op_f32(global2.c.c.x - 871f);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(func_4(func_2(Struct_3(~(~108171u), Struct_1(arg_3.c.a, global1.b.b ^ global2.b, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.c.x, 1000f))), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.d, arg_2.d, -16133i), vec3<i32>(-7721i, arg_0.c.d, 0i)), !global2.c.e), vec2<f32>(-1458f, _wgslsmith_f_op_f32(-523f * 1484f)), Struct_1(all(vec3<bool>(false, true, global2.c.a)), _wgslsmith_mod_u32(u_input.b.x, 17194u), _wgslsmith_div_vec2_f32(global2.c.c, arg_0.c.c), 2147483647i, all(vec3<bool>(arg_3.c.a, false, global1.d.e))), 1i)), _wgslsmith_dot_vec3_i32(firstTrailingBit(max(vec3<i32>(arg_3.c.d, arg_0.c.d, 1i), vec3<i32>(global2.c.d, arg_3.c.d, arg_3.c.d))), ~(vec3<i32>(-2147483647i, -19929i, 0i) | vec3<i32>(arg_2.d, -2170i, 7030i))) >> (~0u % 32u), Struct_3(select(_wgslsmith_sub_u32(arg_0.c.b, 1u), countOneBits(4294967295u), arg_3.c.a), func_2(Struct_3(_wgslsmith_clamp_u32(4294967295u, arg_2.b, arg_0.c.b), Struct_1(global1.d.e, 0u, vec2<f32>(-861f, global1.b.c.x), arg_2.d, false), _wgslsmith_f_op_vec2_f32(select(arg_3.c.c, vec2<f32>(-1480f, 409f), true)), Struct_1(global2.c.e, 3853u, vec2<f32>(arg_2.c.x, 139f), -2147483647i, false), i32(-1i) * -1i)).d, _wgslsmith_f_op_vec2_f32(global2.c.c + vec2<f32>(1f, _wgslsmith_f_op_f32(sign(global1.c.x)))), global2.c, -(1i & firstLeadingBit(arg_0.c.d)))));
    let var_1 = arg_3;
    let var_2 = arg_1.x;
    let var_3 = _wgslsmith_div_vec3_u32(abs(~(firstTrailingBit(u_input.b.xyx) >> (vec3<u32>(global1.b.b, arg_0.c.b, 13959u) % vec3<u32>(32u)))), ~u_input.b.yxy);
    let var_4 = arg_3.c;
    return global2.c.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = select(vec2<bool>(true, global2.c.a), !vec2<bool>(global1.d.e, global2.c.a), !vec2<bool>(global2.c.e, global2.c.a));
    let var_2 = global1.d.c.x;
    var var_3 = Struct_1(true, ~((~global1.d.b ^ func_1(Struct_2(global3.x, 0u, global2.c), vec2<f32>(-314f, global2.c.c.x), Struct_1(false, 4294967295u, global1.d.c, -2147483647i, var_1.x), Struct_2(-179f, 0u, Struct_1(true, 65382u, global2.c.c, global1.d.d, var_1.x)))) >> (1u % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.c.c), _wgslsmith_f_op_vec2_f32(-global2.c.c))), -3941i, var_1.x && true);
    var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1280f, _wgslsmith_f_op_f32(f32(-1f) * -424f))), vec3<i32>(1i, countOneBits(global1.d.d), _wgslsmith_sub_i32(-5164i | var_3.d, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_3.d, var_3.d, 2147483647i), vec4<i32>(var_3.d, -1i, -2147483647i, -1i)))) ^ max(vec3<i32>(max(global2.c.d, global2.c.d), 0i, global1.e), ~countOneBits(vec3<i32>(global1.d.d, 29398i, global2.c.d))));
}

