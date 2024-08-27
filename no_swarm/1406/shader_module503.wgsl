struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec2<i32> {
    var var_0 = any(vec4<bool>(!any(vec4<bool>(false, true, true, true)), true, true, (u_input.a.x > u_input.a.x) == any(vec3<bool>(true, true, false)))) && true;
    var var_1 = Struct_1(vec4<i32>(_wgslsmith_sub_i32(1i, (2147483647i << (0u % 32u)) >> (~4294967295u % 32u)), -(i32(-1i) * -45885i), -32910i, _wgslsmith_dot_vec2_i32(min(select(vec2<i32>(26148i, 27203i), vec2<i32>(-2147483647i, 0i), vec2<bool>(true, false)), vec2<i32>(0i, 24588i)), vec2<i32>(4114i, min(42235i, 1i)))));
    var var_2 = Struct_2(Struct_1(var_1.a), Struct_1(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.x, var_1.a.x, 0i, 45353i), var_1.a ^ vec4<i32>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x)), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_1.a.x, 38417i), -1i, 2147483647i), select(countOneBits(62308i), var_1.a.x, false), var_1.a.x)), ~(u_input.a.x | ((64812u << (u_input.a.x % 32u)) >> (~0u % 32u))));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(216f, 689f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(768f, -125f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(183f, 480f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1441f, -153f) - vec2<f32>(503f, -1418f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1538f, -1000f)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(946f, -276f)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-122f, -323f), vec2<f32>(2438f, 502f))))))));
    var_0 = any(vec3<bool>(!((var_2.c >> (48923u % 32u)) <= var_2.c), false, false));
    return select(abs(~(var_2.b.a.wy | vec2<i32>(22770i, var_2.a.a.x))), _wgslsmith_clamp_vec2_i32(reverseBits(var_2.a.a.zx), vec2<i32>(-1268i, 1i), var_2.a.a.ww), !select(vec2<bool>(any(vec4<bool>(true, false, false, false)), all(vec3<bool>(true, false, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))), all(vec2<bool>(true, true))));
}

fn func_2() -> u32 {
    var var_0 = select(_wgslsmith_mod_i32(firstTrailingBit(-1i), 1i), ~_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, 1i), func_3()), all(select(vec4<bool>(true, all(vec3<bool>(false, true, false)), any(vec4<bool>(true, true, false, false)), all(vec4<bool>(false, true, true, false))), vec4<bool>(true, true, true, true), select(all(vec2<bool>(true, false)), all(vec4<bool>(true, true, false, false)), all(vec2<bool>(false, true))))));
    var var_1 = any(vec2<bool>(any(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), vec3<bool>(false, true, false), false)), false));
    var_1 = any(vec4<bool>(true, false, any(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), all(vec3<bool>(true, false, true)))), (~1u >= (13225u | u_input.a.x)) & any(vec2<bool>(true, true))));
    var var_2 = Struct_1(min(firstTrailingBit(select(vec4<i32>(-1i, 36308i, 2147483647i, 12044i), abs(vec4<i32>(48221i, -2147483647i, -2147483647i, -16232i)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), true))), select(vec4<i32>(-1i, ~29988i, _wgslsmith_add_i32(-14353i, -1i), 1i), vec4<i32>(1i, 1i, 1i, 1i), select(true, false, true) || true)));
    var_1 = any(!vec3<bool>(true, true, all(vec4<bool>(true, false, false, false)) & true));
    return ~28672u;
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: vec2<bool>, arg_3: i32) -> vec2<u32> {
    var var_0 = vec4<u32>(29603u, func_2(), u_input.a.x << (_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a.x, 99859u, 1u)), abs(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) & vec3<u32>(u_input.a.x, 44238u, 4294967295u)) % 32u), u_input.a.x);
    var var_1 = Struct_2(Struct_1(select(firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, arg_3), vec4<i32>(0i, arg_3, arg_3, arg_3))), _wgslsmith_clamp_vec4_i32(~vec4<i32>(arg_0, arg_0, arg_0, arg_3), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_3, arg_0, arg_0, -6393i), vec4<i32>(0i, arg_0, arg_3, -35677i)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_3, arg_0, arg_3, arg_3), vec4<i32>(arg_0, arg_0, arg_3, 2764i))), arg_2.x)), Struct_1(_wgslsmith_add_vec4_i32(select(vec4<i32>(19948i, 1i, -12577i, 24757i), vec4<i32>(arg_3, 36070i, 23183i, arg_3), select(vec4<bool>(true, false, true, false), vec4<bool>(true, arg_2.x, true, arg_2.x), vec4<bool>(false, false, arg_2.x, arg_2.x))), vec4<i32>(_wgslsmith_sub_i32(arg_0, arg_3), _wgslsmith_mod_i32(-1i, -21374i), -2147483647i, 16290i))), ~(~var_0.x));
    var var_2 = Struct_1(firstLeadingBit(var_1.a.a & -var_1.a.a));
    var var_3 = Struct_2(Struct_1(_wgslsmith_div_vec4_i32(var_2.a, select(select(var_2.a, var_1.b.a, true), vec4<i32>(arg_0, var_2.a.x, -1i, var_2.a.x) << (vec4<u32>(var_1.c, var_0.x, 1u, 0u) % vec4<u32>(32u)), select(vec4<bool>(true, true, arg_2.x, arg_2.x), vec4<bool>(false, false, true, false), arg_2.x)))), Struct_1(var_1.b.a >> (~(~vec4<u32>(var_0.x, var_0.x, 6324u, u_input.a.x)) % vec4<u32>(32u))), 7785u);
    let var_4 = var_3.a.a.ww;
    return _wgslsmith_div_vec2_u32(var_0.yw, var_0.xz & _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(47779u, var_3.c)) ^ var_0.yy, var_0.ww));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_dot_vec2_u32(func_1(_wgslsmith_sub_i32(_wgslsmith_add_i32(27412i, 1i), ~(-1i)), vec4<f32>(1007f, 1f, 836f, 283f), vec2<bool>(false, false), 1i), vec2<u32>(1u & u_input.a.x, u_input.a.x) << (vec2<u32>(u_input.a.x, 4294967295u) % vec2<u32>(32u)));
    var var_1 = Struct_1(~(~abs(vec4<i32>(-1i, -1i, -36927i, -2147483647i))));
    let var_2 = vec2<i32>(var_1.a.x, select(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.x | 289i, -1i, 8160i, _wgslsmith_dot_vec4_i32(vec4<i32>(14931i, var_1.a.x, 0i, -1i), var_1.a)), -firstLeadingBit(vec4<i32>(-1i, -19727i, -3745i, var_1.a.x))), 2147483647i, true));
    var var_3 = Struct_2(Struct_1(vec4<i32>(-53786i << (select(u_input.a.x, 15424u, false) % 32u), -26417i, 1i, var_2.x)), Struct_1(var_1.a), u_input.a.x);
    let var_4 = -vec4<i32>(_wgslsmith_clamp_i32(2147483647i, _wgslsmith_sub_i32(~1i, var_1.a.x), var_1.a.x), var_1.a.x, _wgslsmith_mult_i32(-reverseBits(var_2.x), -4955i), min(_wgslsmith_add_i32(~(-26773i), var_2.x), var_3.b.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-1i, _wgslsmith_add_i32(var_1.a.x, max(var_1.a.x, -var_1.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(-528f, -787f), vec2<f32>(723f, 298f)), _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 1483f), vec2<f32>(629f, 1362f)))))), ~(~vec3<u32>(4294967295u, max(43711u, 28279u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.c, u_input.a.x, 1u, u_input.a.x), vec4<u32>(u_input.a.x, 0u, u_input.a.x, var_3.c)))), ~var_2, select(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), abs(vec3<u32>(var_3.c, 9354u, var_3.c) & vec3<u32>(u_input.a.x, u_input.a.x, 0u)), ~(~vec3<u32>(1u, var_3.c, 2921u))), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(40614u, 0u, u_input.a.x), firstLeadingBit(vec3<u32>(u_input.a.x, var_3.c, var_3.c))), countOneBits(vec3<u32>(u_input.a.x, 27080u, 103022u)) << (vec3<u32>(u_input.a.x, 2179u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 69919u, 3172u), max(vec3<u32>(0u, u_input.a.x, var_3.c), vec3<u32>(42305u, 1u, var_3.c)))), true));
}

