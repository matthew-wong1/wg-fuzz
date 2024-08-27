struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
    c: vec3<u32>,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> i32 {
    let var_0 = -243i;
    global0 = array<Struct_2, 2>();
    var var_1 = arg_0;
    let var_2 = !(!vec4<bool>(!all(vec4<bool>(false, arg_0.e.c, false, arg_1.b.x)), _wgslsmith_clamp_i32(var_0, 1i, -1i) <= ~(-16430i), arg_1.b.x | false, true));
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(var_1.a * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_1.a)))), !(!vec3<bool>(!arg_1.b.x, true, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.a, var_1.d.a))), vec2<f32>(-1698f, _wgslsmith_f_op_f32(arg_1.a * -1024f)), var_2.xx)) + vec2<f32>(var_1.a.x, -414f)), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a - 341f)))), select(vec3<bool>(true == var_2.x, false, true), !var_2.xzz, select(vec3<bool>(false, false, var_1.d.b.x), vec3<bool>(var_2.x, false, true), var_2.x)), ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, arg_1.c, u_input.a, 1u), vec4<u32>(arg_0.e.b, 1u, 10028u, arg_1.c)), select(vec4<u32>(35385u, arg_1.c, arg_0.d.c, 1u), vec4<u32>(4294967295u, 0u, 99465u, u_input.a), true)), var_0), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 52479u), 2u)]);
    return 26732i;
}

fn func_2(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: i32) -> vec3<bool> {
    let var_0 = Struct_4(vec4<i32>(reverseBits(arg_2), arg_1.x, i32(-1i) * -arg_1.x, _wgslsmith_div_i32(u_input.b, _wgslsmith_sub_i32(firstLeadingBit(406i), abs(-25562i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.b)))), arg_0.e.xwx, arg_0.d, arg_0.e);
    let var_1 = Struct_2((_wgslsmith_mult_i32(arg_1.x, func_3(Struct_3(vec3<f32>(arg_0.b, -745f, -931f), vec3<bool>(arg_0.d.x, arg_0.d.x, true), vec2<f32>(var_0.b, -1608f), Struct_1(arg_0.b, var_0.d, u_input.a, arg_0.a.x), global0[_wgslsmith_index_u32(var_0.e.x, 2u)]), Struct_1(arg_0.b, var_0.d, 25697u, 2147483647i))) & 1i) ^ arg_0.a.x, u_input.a, true);
    let var_2 = ~min(_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(var_1.b, u_input.a, 0u)), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(var_0.e.wwx, var_0.c), var_0.e.yww)), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(var_0.c.x, 4294967295u), _wgslsmith_add_u32(0u, 29823u), u_input.a), var_0.c >> (vec3<u32>(0u, 9716u, 0u) % vec3<u32>(32u))));
    return arg_0.d;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: vec3<bool>, arg_3: i32) -> Struct_4 {
    var var_0 = ~abs(vec4<u32>(10683u, 4294967295u, u_input.a, 14276u) | ~vec4<u32>(u_input.a, 104776u, u_input.a, 1u));
    var_0 = min(abs(vec4<u32>(reverseBits(firstLeadingBit(0u)), firstTrailingBit(~var_0.x), var_0.x, 47684u)), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_0.x, u_input.a, 4294967295u, 90387u)), abs(vec4<u32>(4410u, 8464u, var_0.x, u_input.a))), var_0.x, ~_wgslsmith_clamp_u32(63918u, 0u, var_0.x), u_input.a), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_0.x, 42133u, var_0.x), vec4<u32>(21000u, 2079u, var_0.x, u_input.a)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(110f, 202f, -244f, -1000f), vec4<f32>(-1000f, -1133f, -223f, 891f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1301f, 667f, 757f, -992f) * vec4<f32>(474f, -365f, 189f, -663f)))))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -374f), -228f, _wgslsmith_f_op_f32(185f - 700f), _wgslsmith_f_op_f32(934f * 1385f))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(226f, 177f, 135f, -791f) + vec4<f32>(1094f, -749f, -116f, 687f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1603f, -2484f, 322f, -655f))))))));
    var var_2 = vec2<f32>(2028f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x)), var_1.x)) + _wgslsmith_f_op_f32(1682f - -247f)));
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2589f))))))));
    return Struct_4(_wgslsmith_mod_vec4_i32(firstTrailingBit(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_3, 26582i, arg_3, u_input.b), vec4<i32>(u_input.c.x, arg_3, u_input.c.x, -90307i)), vec4<i32>(arg_3, u_input.c.x, u_input.b, arg_3))), countOneBits(select(firstLeadingBit(vec4<i32>(u_input.c.x, u_input.c.x, arg_3, arg_3)), reverseBits(vec4<i32>(arg_3, arg_3, 51526i, arg_3)), var_2.x < var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, var_3))))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.x, 1u, u_input.a), vec4<u32>(var_0.x, 0u, u_input.a, 18476u)), var_0.x, u_input.a), var_0.zzy ^ var_0.zxw), select(vec3<bool>(any(arg_1), !(!arg_1.x), true), vec3<bool>(true, (2147483647i < arg_3) || true, arg_1.x), false), _wgslsmith_sub_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, u_input.a, var_0.x, u_input.a), vec4<u32>(77239u, 4294967295u, var_0.x, var_0.x), vec4<u32>(var_0.x, 1u, 18973u, 76474u)) >> (vec4<u32>(1u, var_0.x, var_0.x, 4294967295u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(var_0.x, u_input.a, u_input.a, 1u)), vec4<u32>(~var_0.x, u_input.a | 0u, var_0.x, _wgslsmith_mult_u32(var_0.x, 79837u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(60260u, var_0.x, 17093u, 36532u), vec4<u32>(42348u, 89733u, 1u, 9771u)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_4) -> vec4<i32> {
    global0 = array<Struct_2, 2>();
    let var_0 = func_4(!select(select(select(vec3<bool>(arg_1.d.x, arg_1.d.x, true), vec3<bool>(arg_1.d.x, true, arg_1.d.x), vec3<bool>(arg_1.d.x, arg_1.d.x, false)), !arg_1.d, func_2(Struct_4(arg_0, -250f, arg_1.e.zwz, arg_1.d, vec4<u32>(arg_1.e.x, 59222u, 53448u, 1325u)), vec4<i32>(-3908i, 1i, arg_0.x, arg_1.a.x), u_input.c.x)), !vec3<bool>(false, true, arg_1.d.x), arg_1.d.x), !select(select(!vec4<bool>(true, true, true, arg_1.d.x), select(vec4<bool>(arg_1.d.x, arg_1.d.x, true, true), vec4<bool>(arg_1.d.x, arg_1.d.x, arg_1.d.x, false), vec4<bool>(false, true, arg_1.d.x, false)), true), vec4<bool>(any(arg_1.d), arg_1.d.x, false, !arg_1.d.x), arg_1.d.x), select(select(!(!arg_1.d), arg_1.d, vec3<bool>(true, false, true)), vec3<bool>(select(any(arg_1.d.zy), true, true), -arg_0.x >= _wgslsmith_div_i32(arg_0.x, arg_0.x), any(vec4<bool>(arg_1.d.x, true, true, arg_1.d.x))), vec3<bool>(true, !any(arg_1.d.zz), (u_input.a ^ 52277u) == ~0u)), reverseBits(u_input.b));
    return arg_1.a & var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 2>();
    var var_0 = ~(firstTrailingBit(vec4<i32>(11850i, -1i, -47014i, 40941i) | vec4<i32>(u_input.b, u_input.c.x, u_input.b, u_input.b)) | func_1(countOneBits(vec4<i32>(u_input.c.x, 1i, u_input.b, u_input.b)) ^ ~vec4<i32>(u_input.b, 11852i, 0i, -1i), Struct_4(min(vec4<i32>(u_input.b, u_input.c.x, -10824i, u_input.c.x), vec4<i32>(-37056i, -1i, u_input.c.x, 2147483647i)), 1000f, vec3<u32>(u_input.a, 1u, u_input.a), vec3<bool>(false, false, false), _wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, 0u), vec4<u32>(0u, 1u, 10107u, u_input.a)))));
    var var_1 = vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1791f) + 582f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-580f)))) + _wgslsmith_f_op_f32(sign(-953f)))), _wgslsmith_f_op_f32(sign(237f)), _wgslsmith_div_f32(1000f, -155f));
    var_0 = func_1(~(-(vec4<i32>(88728i, u_input.b, -63852i, -2147483647i) >> (vec4<u32>(u_input.a, 9515u, 28846u, 15362u) % vec4<u32>(32u)))), func_4(!vec3<bool>(true, true, 52419u > u_input.a), vec4<bool>(true, true, true, true), vec3<bool>(true, true, true), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, -10551i, 0i, u_input.b), vec4<i32>(var_0.x, 2147483647i, var_0.x, u_input.c.x) | vec4<i32>(var_0.x, 1i, var_0.x, u_input.c.x)), _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(var_0.x, u_input.c.x, u_input.b, 1i)), vec4<i32>(u_input.c.x, u_input.b, var_0.x, u_input.b)))));
    var var_2 = func_2(func_4(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, func_4(vec3<bool>(true, true, true), vec4<bool>(true, true, true, false), vec3<bool>(true, true, false), var_0.x).d.x)), !vec4<bool>(true, true, 0i < var_0.x, -1835f >= var_1.x), vec3<bool>(54597i > u_input.b, true, false), reverseBits(_wgslsmith_dot_vec4_i32(~vec4<i32>(13274i, -6222i, var_0.x, -1i), ~vec4<i32>(0i, -28071i, 2147483647i, u_input.c.x)))), firstTrailingBit(select(-vec4<i32>(-21055i, 0i, var_0.x, -103i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 13017i, 39211i, -20760i), -vec4<i32>(36931i, u_input.c.x, u_input.b, var_0.x), select(vec4<i32>(var_0.x, 2147483647i, 16423i, u_input.c.x), vec4<i32>(var_0.x, 2147483647i, 12424i, u_input.c.x), true)), vec4<bool>(true, all(vec3<bool>(true, true, true)), true, true))), min(_wgslsmith_mult_i32(-21351i, -var_0.x >> (36399u % 32u)), var_0.x)).yy;
    let var_3 = all(func_2(func_4(vec3<bool>(var_2.x, true, all(vec2<bool>(var_2.x, var_2.x))), !(!vec4<bool>(var_2.x, true, var_2.x, var_2.x)), func_4(vec3<bool>(var_2.x, true, var_2.x), select(vec4<bool>(var_2.x, false, false, true), vec4<bool>(var_2.x, var_2.x, false, true), vec4<bool>(var_2.x, true, false, false)), vec3<bool>(var_2.x, var_2.x, var_2.x), ~u_input.b).d, reverseBits(-var_0.x)), abs(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, var_0.x, 1577i, -1i), vec4<i32>(var_0.x, 0i, u_input.c.x, 2147483647i)))), var_0.x).yz);
    let var_4 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_1.x) + _wgslsmith_f_op_f32(var_1.x * var_1.x))), var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1567f), var_1.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-151f, -375f, var_1.x, var_1.x)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x) - vec4<f32>(1106f, -608f, -971f, -1918f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, 400f, 1304f, 1599f))), vec4<f32>(-1441f, 692f, 1156f, 1000f)))), _wgslsmith_mult_u32(firstTrailingBit(~u_input.a), ~u_input.a) > u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(~max(func_4(select(vec3<bool>(true, var_3, var_2.x), vec3<bool>(var_2.x, true, false), vec3<bool>(false, false, var_2.x)), select(vec4<bool>(var_2.x, true, var_2.x, var_3), vec4<bool>(var_3, var_3, false, var_2.x), var_3), vec3<bool>(var_2.x, true, false), -1i).e, _wgslsmith_mult_vec4_u32(abs(vec4<u32>(u_input.a, 33904u, u_input.a, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), vec4<u32>(59840u, u_input.a, 40093u, 1u), vec4<u32>(u_input.a, u_input.a, 46775u, u_input.a)))), var_0.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_4.x, -826f, _wgslsmith_f_op_f32(max(-276f, var_4.x))))), var_4.wxw, vec3<bool>(any(!vec4<bool>(true, false, false, var_3)), !var_3, true))));
}

