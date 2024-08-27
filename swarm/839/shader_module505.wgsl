struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, false);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<f32>) -> f32 {
    return arg_3.x;
}

fn func_3() -> vec2<f32> {
    var var_0 = Struct_2(0u);
    var var_1 = Struct_2(~_wgslsmith_dot_vec4_u32(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, u_input.c, 6513u, 1u), vec4<u32>(u_input.d, 1u, u_input.c, 0u))), vec4<u32>(0u >> (u_input.a % 32u), u_input.c | u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<u32>(0u, var_0.a, 0u, 29706u)), _wgslsmith_add_u32(0u, u_input.a))));
    global0 = _wgslsmith_mult_vec4_i32(max(countOneBits(~max(vec4<i32>(2147483647i, global0.x, global0.x, 7853i), vec4<i32>(u_input.b, global0.x, -2147483647i, 1i))), ~_wgslsmith_div_vec4_i32(vec4<i32>(global0.x, -9219i, u_input.b, 10256i) | vec4<i32>(global0.x, -33818i, u_input.b, -1i), min(vec4<i32>(1i, global0.x, u_input.b, global0.x), vec4<i32>(u_input.b, u_input.b, global0.x, u_input.b)))), min(select(reverseBits(countOneBits(vec4<i32>(u_input.b, global0.x, global0.x, global0.x))), _wgslsmith_sub_vec4_i32(max(vec4<i32>(37516i, global0.x, -6409i, 1i), vec4<i32>(2147483647i, u_input.b, u_input.b, 1i)), vec4<i32>(-74356i, global0.x, -37021i, 2147483647i) | vec4<i32>(-8820i, 9471i, 30305i, u_input.b)), vec4<bool>(true, any(vec3<bool>(global1.x, false, global1.x)), true, -25274i == u_input.b)), abs(vec4<i32>(-11303i, _wgslsmith_clamp_i32(u_input.b, global0.x, u_input.b), _wgslsmith_dot_vec2_i32(global0.xz, global0.yz), -1i))));
    var var_2 = any(select(!select(!vec4<bool>(global1.x, global1.x, true, global1.x), select(vec4<bool>(global1.x, false, global1.x, true), vec4<bool>(global1.x, global1.x, true, global1.x), false), true), vec4<bool>(true, all(global1.wx) | global1.x, !any(global1.wwx), true), !(!(!vec4<bool>(global1.x, global1.x, global1.x, true)))));
    global1 = vec4<bool>(((all(vec4<bool>(false, global1.x, global1.x, false)) && false) | true) | (any(select(vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(global1.x, false, false, false), vec4<bool>(true, false, global1.x, true))) || any(!vec4<bool>(true, true, global1.x, false))), any(!global1.xwz), ~(~var_1.a) != ~var_0.a, true);
    return vec2<f32>(-343f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-386f + 616f) * -2623f), _wgslsmith_f_op_f32(func_1(Struct_2(0u), Struct_2(0u), Struct_2(4294967295u), _wgslsmith_f_op_vec3_f32(vec3<f32>(567f, -1933f, 745f) - vec3<f32>(521f, 1393f, 562f)))), any(select(global1.xy, global1.yy, false))))));
}

fn func_2() -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()), vec2<f32>(-1174f, _wgslsmith_f_op_f32(-631f * _wgslsmith_f_op_f32(select(-1000f, 929f, global1.x))))), select(u_input.b, firstTrailingBit(-(7503i << (0u % 32u))), true), countOneBits(4294967295u), true);
    var var_1 = Struct_1(var_0.a, 0i, select(0u, _wgslsmith_clamp_u32(var_0.c >> (_wgslsmith_div_u32(9173u, var_0.c) % 32u), _wgslsmith_mod_u32(countOneBits(u_input.c), abs(0u)), var_0.c), true), !var_0.d);
    let var_2 = _wgslsmith_dot_vec4_i32(~(~vec4<i32>(65094i, -1i, 75280i, -46291i) << ((vec4<u32>(52321u, 4294967295u, 34973u, 4294967295u) & vec4<u32>(var_0.c, u_input.a, u_input.a, var_1.c)) % vec4<u32>(32u))), vec4<i32>(var_1.b, reverseBits((var_0.b & global0.x) >> (107023u % 32u)), _wgslsmith_add_i32(countOneBits(-var_0.b), 40703i), 0i));
    let var_3 = global1.wxy;
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_0.a * var_0.a), vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_div_f32(216f, _wgslsmith_div_f32(var_0.a.x, var_1.a.x))))), _wgslsmith_div_i32(_wgslsmith_mod_i32(var_2, ~_wgslsmith_dot_vec4_i32(vec4<i32>(28210i, -2147483647i, var_0.b, var_1.b), vec4<i32>(3744i, u_input.b, 0i, -14432i))), 2147483647i), ~countOneBits(_wgslsmith_mod_u32(_wgslsmith_sub_u32(18690u, var_1.c), 1u)), true);
    return (firstLeadingBit(~abs(vec3<u32>(u_input.d, 4294967295u, var_1.c))) & vec3<u32>(9930u, 1u, min(var_0.c, _wgslsmith_div_u32(u_input.d, 57473u)))) << (min((~vec3<u32>(u_input.c, 4294967295u, var_0.c) << (~vec3<u32>(u_input.d, 14937u, u_input.a) % vec3<u32>(32u))) | vec3<u32>(_wgslsmith_mult_u32(u_input.d, 0u), ~4294967295u, 51617u), _wgslsmith_add_vec3_u32(~countOneBits(vec3<u32>(var_0.c, var_0.c, u_input.a)), select(vec3<u32>(var_0.c, 0u, 4043u), max(vec3<u32>(9377u, u_input.d, 3732u), vec3<u32>(var_0.c, u_input.a, var_1.c)), false && var_3.x))) % vec3<u32>(32u));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1) -> vec4<i32> {
    global1 = select(vec4<bool>((arg_1.c >> (~1u % 32u)) <= arg_0.x, all(vec4<bool>(arg_1.d, true, true, any(vec3<bool>(false, global1.x, arg_1.d)))), all(!select(vec3<bool>(false, global1.x, true), vec3<bool>(false, global1.x, global1.x), global1.wyw)), false), select(!(!vec4<bool>(global1.x, arg_1.d, false, true)), vec4<bool>(arg_1.d, any(vec2<bool>(true, true)), false & all(vec4<bool>(global1.x, false, false, global1.x)), true), select(any(global1.xzy) | arg_1.d, !global1.x, global1.x)), select(true, true, !global1.x));
    var var_0 = global0.x < ~(~(-_wgslsmith_sub_i32(1i, 35695i)));
    var var_1 = vec2<i32>(reverseBits(~37705i << (0u % 32u)), max(-u_input.b, arg_1.b));
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x + -1000f) + _wgslsmith_f_op_f32(arg_1.a.x - arg_1.a.x))), arg_1.a.x), countOneBits(885i), 0u, any(!select(!global1.zyx, !global1.xxw, vec3<bool>(arg_1.d, arg_1.d, global1.x))));
    var var_3 = Struct_2(~24470u);
    return ~_wgslsmith_add_vec4_i32(-vec4<i32>(-u_input.b, global0.x, firstTrailingBit(2147483647i), 0i), firstTrailingBit(vec4<i32>(-var_1.x, global0.x | 34546i, var_1.x >> (1u % 32u), global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec4_i32(-(~(~vec4<i32>(global0.x, -10774i, global0.x, -34092i))) << (select(~vec4<u32>(u_input.a, 0u, u_input.a, 4294967295u) | vec4<u32>(1u, 1u, 74492u, 13296u), select(vec4<u32>(53505u, 55342u, u_input.d, u_input.c) << (vec4<u32>(u_input.d, u_input.c, 69630u, 40338u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.c), vec4<u32>(u_input.d, 19565u, u_input.a, 1u)), global0.x > u_input.b), vec4<bool>(1u == u_input.d, false, global1.x, true)) % vec4<u32>(32u)), ~vec4<i32>(-16584i, 22016i, -2147483647i, -global0.x) << (~vec4<u32>(_wgslsmith_clamp_u32(37847u, u_input.a, 0u), u_input.a << (u_input.a % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 31559u, u_input.a, u_input.c), vec4<u32>(u_input.a, 13680u, u_input.d, 0u)), u_input.c) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-661f, -302f, true)))), _wgslsmith_f_op_f32(-139f + -525f), all(select(vec4<bool>(true, true, false, false), vec4<bool>(global1.x, true, true, global1.x), vec4<bool>(global1.x, true, true, true)))))), 724f);
    let var_2 = _wgslsmith_f_op_f32(func_1(Struct_2(reverseBits(_wgslsmith_sub_u32(u_input.a, u_input.a))), Struct_2(1u), Struct_2(u_input.a), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -126f, 1000f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 642f, 1566f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -843f, -229f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-955f, -313f, 271f)))))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1543f, 1347f, var_2, var_2) * vec4<f32>(var_1, 1000f, var_2, var_1)) - vec4<f32>(var_2, var_2, var_1, var_1)), vec4<f32>(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-var_1), -1929f, var_2)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-240f, -1691f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2)) + _wgslsmith_f_op_f32(148f * var_1))) - vec4<f32>(_wgslsmith_f_op_f32(abs(440f)), var_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_2, var_1)), -1900f), _wgslsmith_f_op_f32(var_1 * _wgslsmith_div_f32(var_1, -187f)))));
    var_0 = _wgslsmith_add_vec4_i32(~(~firstLeadingBit(-vec4<i32>(u_input.b, 8668i, 35486i, 0i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-15525i, -var_0.x, _wgslsmith_add_i32(_wgslsmith_div_i32(-1i, -2147483647i), 52203i | global0.x), min(-1i, 1i)), min(func_4(func_2(), Struct_1(vec2<f32>(var_3.x, var_1), global0.x, 4294967295u, global1.x)), vec4<i32>(1i, u_input.b, func_4(vec3<u32>(u_input.d, 0u, 0u), Struct_1(var_3.yy, u_input.b, 21356u, false)).x, -1i)), vec4<i32>(u_input.b, _wgslsmith_dot_vec3_i32(global0.zxy, -var_0.wwy), ~global0.x, -5964i)));
    let var_4 = Struct_2(u_input.c);
    let var_5 = 0i;
    let var_6 = !(!(!global1.xz));
    let var_7 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-287f, _wgslsmith_f_op_f32(max(var_2, -1028f))))) * var_3.wy), -1i, 80886u, !var_6.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(max(6252u, u_input.c), var_4.a, ~abs(firstLeadingBit(0u))), -1i);
}

