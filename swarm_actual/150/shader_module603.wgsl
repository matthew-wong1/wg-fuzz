struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: u32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = _wgslsmith_div_f32(-234f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-338f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)))));
    let var_1 = all(select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(false, false), select(true, false, true) && true)) && (firstLeadingBit(~(~u_input.a.x)) < ~0u);
    var var_2 = vec2<u32>(1u, 0u);
    var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x + 1f)), _wgslsmith_f_op_f32(608f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.b.x))))), -535f);
    var_0 = 449f;
    return var_1;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: f32) -> f32 {
    var var_0 = select(arg_2.xx, vec2<bool>(any(!(!vec2<bool>(arg_2.x, false))), any(select(vec4<bool>(arg_2.x, arg_2.x, false, true), !vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), u_input.a.x >= 5293u))), vec2<bool>(all(!arg_2.zy), arg_2.x));
    var_0 = select(!select(vec2<bool>(all(vec3<bool>(var_0.x, var_0.x, var_0.x)), 1u <= arg_0.c), arg_2.yx, true), arg_2.zz, arg_2.x || all(vec3<bool>(arg_2.x, func_3(arg_1), arg_2.x)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(arg_1.a)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -565f), 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)), _wgslsmith_f_op_f32(min(arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x + arg_3) + -871f)))), _wgslsmith_mult_u32(u_input.d, 26250u) >> (select(~(arg_0.c >> (arg_0.c % 32u)), 4294967295u, true) % 32u), u_input.c, arg_1.e);
    let var_2 = arg_1;
    let var_3 = select(arg_2, !(!arg_2), any(arg_2.zx));
    return _wgslsmith_f_op_f32(min(670f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-611f)), -569f))) * _wgslsmith_f_op_f32(trunc(1474f)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_1(vec3<f32>(-1732f, _wgslsmith_f_op_f32(abs(arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-219f - _wgslsmith_f_op_f32(arg_0.x - arg_1)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - _wgslsmith_f_op_f32(func_2(Struct_1(vec3<f32>(1051f, 2402f, arg_1), vec3<f32>(arg_1, 2093f, arg_1), 1u, vec2<i32>(u_input.c.x, -33947i), vec4<i32>(u_input.c.x, u_input.b, -439i, u_input.b)), Struct_1(arg_0, arg_0, 83624u, u_input.c, vec4<i32>(3167i, u_input.c.x, 0i, u_input.b)), vec3<bool>(false, true, false), 1114f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, _wgslsmith_f_op_f32(abs(arg_0.x)))) - vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1804f - 303f))), arg_1)), abs(u_input.d), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(u_input.b, 2147483647i)), max(vec2<i32>(0i, 7631i), vec2<i32>(u_input.b, 1i))) ^ ~(u_input.c & u_input.c), -vec2<i32>(8859i, u_input.b) | (_wgslsmith_mod_vec2_i32(u_input.c, u_input.c) | vec2<i32>(2147483647i, 0i))), vec4<i32>(-u_input.c.x, ~u_input.b, countOneBits(-1i), _wgslsmith_clamp_i32(-_wgslsmith_mod_i32(-29605i, u_input.b), ~(-u_input.c.x), _wgslsmith_div_i32(max(-48318i, u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(-3893i, 1i), u_input.c)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(714f, arg_0.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-379f, var_0.b.x)))), _wgslsmith_f_op_f32(trunc(-634f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0)) * vec3<f32>(arg_0.x, arg_1, _wgslsmith_f_op_f32(func_2(Struct_1(vec3<f32>(var_0.a.x, -480f, var_0.b.x), var_0.b, 43541u, vec2<i32>(36399i, var_0.e.x), var_0.e), Struct_1(arg_0, var_0.a, var_0.c, var_0.e.wy, var_0.e), vec3<bool>(true, false, true), arg_1)))), select(select(vec3<bool>(false, false, false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), false), vec3<bool>(true, any(vec3<bool>(false, false, false)), any(vec4<bool>(false, true, false, true))), vec3<bool>(true, true, true)))), vec3<f32>(2015f, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(f32(-1f) * -1469f)), countOneBits(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(20547u, 50874u, u_input.d), u_input.a.xwy), vec3<u32>(abs(4294967295u), var_0.c, firstTrailingBit(var_0.c)))), u_input.c & ~(abs(u_input.c) << (countOneBits(u_input.a.zw) % vec2<u32>(32u))), -select(vec4<i32>(-18944i, var_0.e.x, u_input.c.x, var_0.e.x) | (vec4<i32>(var_0.e.x, 0i, var_0.e.x, var_0.d.x) >> (vec4<u32>(36344u, u_input.d, 7517u, 0u) % vec4<u32>(32u))), var_0.e, vec4<bool>(true, true, true, true)));
    var var_2 = select(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false), any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)))), select(!vec2<bool>(all(vec4<bool>(true, true, false, false)), true), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true)), vec2<bool>(true, any(vec2<bool>(false, false)))), vec2<bool>(true, true));
    var var_3 = 0i << (_wgslsmith_add_u32(var_1.c, ~102365u & var_1.c) % 32u);
    var var_4 = var_1;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(781f * 875f), _wgslsmith_f_op_f32(ceil(2052f)), _wgslsmith_f_op_f32(1811f + -1673f))))), 1f);
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.x, -2114f) - _wgslsmith_f_op_f32(2262f * _wgslsmith_f_op_f32(-var_0.b.x))), var_0.a.x), _wgslsmith_f_op_vec3_f32(sign(var_0.b)), _wgslsmith_dot_vec2_u32(vec2<u32>(~(~var_0.c), abs(var_0.c)), vec2<u32>(~u_input.a.x, u_input.a.x >> (1u % 32u)) & ~vec2<u32>(1u, 29637u)), var_0.e.xz, vec4<i32>(5385i, 2147483647i, u_input.b, ~_wgslsmith_div_i32(~(-35364i), -2147483647i << (u_input.d % 32u))));
    var var_2 = firstLeadingBit(firstTrailingBit(~(~u_input.e.x)));
    let var_3 = !select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true), any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), -1000f <= var_1.b.x)));
    var var_4 = var_0.a.x;
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1322f, 1497f)) * _wgslsmith_div_f32(-764f, 1224f)));
    let var_6 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 612f, 274f, var_1.a.x))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1051f, var_1.a.x, -1114f, 943f) * vec4<f32>(var_0.b.x, var_1.a.x, -218f, var_1.a.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1762f, 955f, var_0.a.x, var_1.a.x) - vec4<f32>(var_0.a.x, -559f, -495f, var_0.b.x)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.b.x, 1201f, var_1.a.x, var_1.b.x), vec4<f32>(var_0.b.x, var_1.b.x, var_1.a.x, var_1.a.x)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, var_0.b.x, var_1.a.x, var_0.a.x), vec4<f32>(374f, var_1.a.x, -858f, 1000f), vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x))))) - vec4<f32>(-351f, var_1.b.x, _wgslsmith_f_op_f32(1000f * -214f), -465f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_6, ~u_input.a.zz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)));
}

