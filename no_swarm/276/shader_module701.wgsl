struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = arg_1;
    return 1u;
}

fn func_3() -> vec2<i32> {
    global0 = array<u32, 1>();
    let var_0 = vec2<bool>(true, false || (reverseBits(_wgslsmith_clamp_u32(41849u, 0u, global0[_wgslsmith_index_u32(1u, 1u)])) < _wgslsmith_mod_u32(~u_input.a, ~1u)));
    global0 = array<u32, 1>();
    let var_1 = select(!(true || all(vec2<bool>(false, true))), select(false, var_0.x, var_0.x), true);
    var var_2 = 32917u;
    return select((u_input.c.zy & ~reverseBits(vec2<i32>(9230i, u_input.d))) | _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, u_input.e), countOneBits(vec2<i32>(u_input.d, u_input.c.x))), _wgslsmith_clamp_vec2_i32(~u_input.c.xy, _wgslsmith_div_vec2_i32(vec2<i32>(-11027i, -2147483647i), vec2<i32>(-30528i, -4056i)), vec2<i32>(1i, u_input.e)), vec2<i32>(u_input.c.x, 1i)), vec2<i32>(abs(firstLeadingBit(~(-14953i))), firstLeadingBit(~_wgslsmith_clamp_i32(43081i, -2147483647i, -3592i))), !vec2<bool>(false, all(select(vec3<bool>(false, false, var_0.x), vec3<bool>(false, false, false), false))));
}

fn func_1(arg_0: Struct_1) -> vec2<i32> {
    global0 = array<u32, 1>();
    global0 = array<u32, 1>();
    let var_0 = vec4<u32>(1u, 4294967295u, ~_wgslsmith_dot_vec4_u32(~arg_0.b | firstLeadingBit(vec4<u32>(4294967295u, 72427u, global0[_wgslsmith_index_u32(arg_0.b.x, 1u)], 21896u)), ~vec4<u32>(arg_0.b.x, 4294967295u, u_input.a, 32400u)), func_2(all(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false))), arg_0, Struct_1(arg_0.a, firstLeadingBit(arg_0.b) >> (arg_0.b % vec4<u32>(32u)), u_input.c.yw, vec2<f32>(-423f, 324f), _wgslsmith_div_vec4_f32(arg_0.e, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.a.x, arg_0.e.x, -1525f, -552f), arg_0.e))))));
    var var_1 = arg_0;
    var var_2 = Struct_1(var_1.a, vec4<u32>(var_0.x, var_0.x, max(15478u, _wgslsmith_mod_u32(firstLeadingBit(1u), _wgslsmith_mult_u32(arg_0.b.x, arg_0.b.x))), ~11840u), func_3(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(arg_0.e.x - -595f), _wgslsmith_f_op_f32(arg_0.d.x + 107f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -147f), arg_0.e.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(arg_0.e, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(441f, -1792f, -574f, -1280f))))))));
    return -(u_input.c.zw ^ _wgslsmith_add_vec2_i32(u_input.c.xz << (vec2<u32>(var_1.b.x, 47459u) % vec2<u32>(32u)), vec2<i32>(arg_0.c.x, arg_0.c.x) | vec2<i32>(u_input.d, -50068i))) << (_wgslsmith_clamp_vec2_u32(~(~u_input.b), ~(~vec2<u32>(1u, 0u)), vec2<u32>(328u, global0[_wgslsmith_index_u32(u_input.b.x, 1u)])) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 1>();
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(f32(-1f) * -1552f)), vec4<u32>(~global0[_wgslsmith_index_u32(38237u, 1u)], abs(_wgslsmith_add_u32(0u, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], 32729u))), 1u, abs(u_input.b.x)), select(-vec2<i32>(-1i & u_input.d, 2147483647i), -(~func_1(Struct_1(vec2<f32>(543f, 1319f), vec4<u32>(15078u, u_input.b.x, global0[_wgslsmith_index_u32(25191u, 1u)], u_input.a), u_input.c.xx, vec2<f32>(590f, 222f), vec4<f32>(-1000f, -912f, 552f, 227f)))), vec2<bool>(true, true)), vec2<f32>(845f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2194f, -686f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1545f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(156f, 505f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-358f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1621f - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -310f), false)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1280f, 293f)) * var_0.e.zx)), _wgslsmith_clamp_vec4_u32(var_0.b, ~(firstTrailingBit(vec4<u32>(4075u, var_0.b.x, u_input.b.x, var_0.b.x)) << (var_0.b % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(var_0.b, (var_0.b << (var_0.b % vec4<u32>(32u))) ^ abs(vec4<u32>(var_0.b.x, global0[_wgslsmith_index_u32(u_input.a, 1u)], var_0.b.x, 1u)), vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, 73752u, 0u), var_0.b), var_0.b.x, _wgslsmith_mod_u32(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.b.x, 1u)], 1u)], 1u)], 1u)], 1u)], 1u)])))), vec2<i32>(u_input.d | 1i, func_1(Struct_1(var_0.a, var_0.b, u_input.c.yz, vec2<f32>(var_0.d.x, var_0.e.x), var_0.e)).x << (0u % 32u)), var_0.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_0.e)), vec4<f32>(var_0.d.x, -240f, var_0.e.x, var_0.e.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.x, var_0.d.x, var_0.e.x, 1000f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1014f, -275f, var_0.d.x))), var_0.e, true))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1139f, var_0.d.x) + vec2<f32>(var_0.d.x, var_1.d.x))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(507f * var_0.a.x), _wgslsmith_f_op_f32(var_0.a.x * var_1.e.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.x, 101f)))) - _wgslsmith_f_op_vec2_f32(var_1.d * var_0.a));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-937f))));
    var var_4 = Struct_1(var_0.d, ~var_1.b, func_3(), _wgslsmith_f_op_vec2_f32(exp2(var_2)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(327f, -265f, -467f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e.x)))));
    global0 = array<u32, 1>();
    var var_5 = ~(max(u_input.b >> (u_input.b % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(103276u, global0[_wgslsmith_index_u32(0u, 1u)]), vec2<u32>(4294967295u, var_1.b.x)), var_1.b.yy << (var_1.b.yy % vec2<u32>(32u)))) << (~var_1.b.zx % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.c, _wgslsmith_sub_vec4_i32(~vec4<i32>(var_0.c.x, 0i, var_0.c.x, 12975i), vec4<i32>(~1i, var_1.c.x, ~var_4.c.x, abs(var_0.c.x))), vec4<bool>(true, true, true, true)), max(~(_wgslsmith_div_vec2_i32(vec2<i32>(-40833i, -29781i), vec2<i32>(-38568i, var_4.c.x)) >> (countOneBits(u_input.b) % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(~var_1.c, var_4.c), ~select(var_1.c, vec2<i32>(-2147483647i, 1i), vec2<bool>(true, false)))));
}

