struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: vec2<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: u32;

var<private> global2: array<u32, 17>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = select(!(!(!vec4<bool>(arg_0.d, true, arg_0.a, arg_0.a))), vec4<bool>(true, !(-35919i <= firstTrailingBit(u_input.d.x)), true, true), vec4<bool>(false, all(select(!vec3<bool>(arg_0.a, false, arg_0.a), vec3<bool>(false, arg_0.a, false), all(vec4<bool>(arg_0.d, true, false, arg_0.d)))), true, !arg_0.a));
    global2 = array<u32, 17>();
    global2 = array<u32, 17>();
    return ~_wgslsmith_mod_u32(~(u_input.c | u_input.c), 27396u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> bool {
    let var_0 = ~1i;
    global2 = array<u32, 17>();
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(391f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(410f * 1000f)))))), -991f);
    var var_2 = Struct_2(vec4<i32>(firstLeadingBit(u_input.b), 2147483647i, _wgslsmith_div_i32(var_0, -firstLeadingBit(-1i)), -2147483647i), Struct_1(func_2(arg_1) >= ~(~0u), u_input.d.x, arg_1.b, arg_0.d), arg_1, Struct_1(!arg_0.d, -(1i ^ ~u_input.b), 33607i, true), Struct_1(true, u_input.b, var_0, select(true, arg_0.a, true) | !arg_0.a));
    var var_3 = var_2.b.d;
    return any(!vec4<bool>(all(vec3<bool>(var_2.c.d, arg_0.a, false)), (1u > global2[_wgslsmith_index_u32(u_input.a.x, 17u)]) || !var_2.b.d, arg_1.a, -57943i >= abs(var_0)));
}

fn func_1(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_clamp_vec2_u32(select(u_input.a.yy, firstLeadingBit(_wgslsmith_add_vec2_u32(~u_input.a.zx, vec2<u32>(global2[_wgslsmith_index_u32(u_input.c, 17u)], u_input.a.x))), !any(vec3<bool>(false, true, false))), u_input.a.xy, _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 1u >> (u_input.c % 32u)), u_input.a.xx), abs(vec2<u32>(func_2(Struct_1(true, -29647i, u_input.b, false)), 106631u))));
    let var_1 = vec3<i32>(~u_input.b, u_input.d.x, 11706i);
    var var_2 = Struct_2(~countOneBits(_wgslsmith_sub_vec4_i32(max(vec4<i32>(2147483647i, 2147483647i, u_input.d.x, var_1.x), vec4<i32>(var_1.x, u_input.d.x, u_input.d.x, u_input.d.x)), vec4<i32>(u_input.b, 2147483647i, u_input.d.x, -1i) & vec4<i32>(68167i, var_1.x, -26500i, -14741i))), Struct_1(true, -98018i, countOneBits(-_wgslsmith_mult_i32(var_1.x, -28563i)), true), Struct_1(!func_3(Struct_1(false, 2147483647i, -1i, true), Struct_1(false, var_1.x, var_1.x, false), all(vec2<bool>(false, true))), -2147483647i, u_input.b, true), Struct_1(false, ~(-_wgslsmith_sub_i32(-6966i, -2489i)), _wgslsmith_add_i32(~u_input.b, var_1.x), select(true, select(true, true, select(true, false, true)), true)), Struct_1(all(vec3<bool>(any(vec2<bool>(false, false)), true, true)), select(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 2147483647i, var_1.x, 2147483647i), vec4<i32>(-73640i, u_input.d.x, var_1.x, 48978i)), u_input.b, true) | -17887i, u_input.b, true));
    let var_3 = Struct_3(_wgslsmith_div_vec3_i32(countOneBits(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, u_input.d.x, var_2.a.x), vec3<i32>(36910i, 0i, -2147483647i)), vec3<i32>(0i, var_2.e.b, var_1.x))), var_2.a.wxz), arg_0.x, vec2<i32>(~(-1i), -4550i), -700f);
    let var_4 = firstLeadingBit(var_2.a);
    return Struct_2(~_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -66871i, var_4.x, 24807i), vec4<i32>(u_input.b, 34741i, 8114i, u_input.d.x)), var_4), firstLeadingBit(vec4<i32>(var_3.a.x, var_1.x, -19867i, u_input.d.x))), var_2.b, var_2.e, Struct_1(var_2.c.a, ~(~var_4.x), (var_3.a.x & 78409i) | countOneBits(2147483647i), any(!select(vec2<bool>(false, var_2.c.a), vec2<bool>(var_2.e.a, var_2.e.a), var_2.d.a))), var_2.d);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: Struct_2) -> i32 {
    let var_0 = vec2<u32>(global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 17u)], 17u)], ~4294967295u) >> (0u % 32u), 17u)], ~countOneBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 26987u), vec3<u32>(0u, global2[_wgslsmith_index_u32(u_input.c, 17u)], 4294967295u))));
    global0 = var_0.x;
    global2 = array<u32, 17>();
    let var_1 = -1201f;
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(72396u, 1u), ~var_0.x), 17u)];
    return _wgslsmith_mult_i32(-abs(1i), arg_2.c.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!(!any(vec4<bool>(true, false, false, true)) == true), 60476i, max(_wgslsmith_clamp_i32(16622i, -u_input.b, -20111i), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(125f, 613f, 373f, -334f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(666f, -436f, 1225f)), func_1(vec4<f32>(-990f, -1918f, 964f, 1605f))) & -(-1i << (global2[_wgslsmith_index_u32(4294967295u, 17u)] % 32u))), false);
    var var_1 = Struct_2(-(-(vec4<i32>(2147483647i, var_0.b, var_0.c, var_0.b) | vec4<i32>(u_input.b, 1i, 54959i, u_input.b)) ^ _wgslsmith_clamp_vec4_i32(-vec4<i32>(-1i, -2147483647i, 44384i, u_input.d.x), firstTrailingBit(vec4<i32>(var_0.c, var_0.c, u_input.b, u_input.b)), ~vec4<i32>(u_input.b, u_input.d.x, u_input.d.x, u_input.d.x))), func_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1465f, 1081f, -663f, -1000f) - vec4<f32>(-561f, 1884f, 1000f, 156f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(588f, 688f, 400f, -578f), vec4<f32>(457f, 648f, 1214f, 1000f))), _wgslsmith_div_vec4_f32(vec4<f32>(842f, -765f, -1000f, 2022f), vec4<f32>(908f, -223f, 1305f, -420f))))))).b, func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -240f), -895f, _wgslsmith_f_op_f32(f32(-1f) * -1937f), _wgslsmith_f_op_f32(min(-683f, -396f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2071f, 841f, 887f, -143f), vec4<f32>(-1276f, -217f, -1112f, 1000f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(124f, -356f, 1000f, 322f))))).e, Struct_1(all(vec4<bool>(!var_0.a, var_0.a, func_3(Struct_1(true, u_input.d.x, 20002i, true), Struct_1(var_0.a, 6201i, u_input.b, var_0.a), var_0.d), true)), 2147483647i, 0i, (!var_0.a & var_0.a) && false), Struct_1(false, _wgslsmith_sub_i32(2147483647i, _wgslsmith_div_i32(_wgslsmith_div_i32(var_0.b, -1i), -24151i)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -33519i, ~var_0.b), max(firstLeadingBit(vec3<i32>(31983i, 21079i, 12107i)), select(vec3<i32>(var_0.c, 26433i, u_input.d.x), vec3<i32>(u_input.b, 5280i, 1i), var_0.d))), !any(vec4<bool>(true, var_0.a, var_0.d, false))));
    var var_2 = firstLeadingBit(firstTrailingBit(-var_1.e.b));
    global1 = 0u;
    var var_3 = Struct_2(-firstLeadingBit(select(vec4<i32>(u_input.d.x, 0i, u_input.b, u_input.b), ~var_1.a, true)), func_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(897f, -866f, var_1.b.d))), -523f, _wgslsmith_f_op_f32(f32(-1f) * -1832f), 530f)).b, var_1.e, var_1.d, func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(964f, 722f, -900f, 1389f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-718f, 354f, 2300f, -1312f))))).b);
    var var_4 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1083f))));
}

