struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.a.x;
    return Struct_1(2091f);
}

fn func_3() -> vec2<i32> {
    var var_0 = select(vec4<bool>(true, all(vec2<bool>(true, true)), true, (u_input.a.x >> (u_input.b % 32u)) <= _wgslsmith_dot_vec3_u32(u_input.a.zyy, max(u_input.a.yxx, vec3<u32>(u_input.a.x, 18145u, u_input.a.x)))), vec4<bool>(any(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(false, false, true, false), false)), true, true, true), !(!vec4<bool>(select(false, true, false), true, any(vec2<bool>(true, false)), true)));
    var_0 = select(!vec4<bool>(var_0.x, true, true, 0u == (0u ^ u_input.c.x)), !vec4<bool>(all(select(vec2<bool>(true, var_0.x), var_0.xw, var_0.x)), max(1u, u_input.b) <= u_input.c.x, !var_0.x, false), vec4<bool>(true, true, all(!select(vec4<bool>(true, true, false, var_0.x), vec4<bool>(var_0.x, false, var_0.x, false), false)), (13023u << (~u_input.c.x % 32u)) != (~u_input.b ^ u_input.b)));
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, -348f, 775f, -1000f), vec4<f32>(-372f, 726f, -119f, 1382f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(608f, 1220f, -536f, -111f) + vec4<f32>(2097f, -463f, -227f, 2123f)) - vec4<f32>(1049f, -214f, 1304f, 567f))), vec4<f32>(_wgslsmith_f_op_f32(round(155f)), 1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-169f - 730f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(659f, 746f) + _wgslsmith_f_op_f32(select(1055f, -655f, var_0.x)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-162f, 1000f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-799f, -1308f, var_0.x)), -393f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -533f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-628f, 655f))))));
    var var_2 = Struct_2(var_1.x);
    var var_3 = Struct_1(var_2.a);
    return vec2<i32>(_wgslsmith_sub_i32(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 18310i, -4039i), vec3<i32>(45737i, -45043i, -14451i)) & -1i), ~1i), _wgslsmith_dot_vec2_i32(-(~(vec2<i32>(0i, 0i) << (u_input.a.zw % vec2<u32>(32u)))), firstLeadingBit(vec2<i32>(reverseBits(-4755i), _wgslsmith_sub_i32(3653i, 2147483647i)))));
}

fn func_4(arg_0: vec2<i32>) -> vec3<i32> {
    let var_0 = u_input.a;
    global0 = -2665f;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1228f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(356f)), _wgslsmith_f_op_f32(f32(-1f) * -158f), false))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-679f + 700f)) + -890f)));
    var var_1 = vec2<u32>(~max(0u, ~1u), u_input.b);
    var_1 = _wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, ~10407u), select(~u_input.a.yz << ((var_0.wx ^ ~u_input.a.yy) % vec2<u32>(32u)), var_0.wx, any(vec2<bool>(true, true))));
    return ~countOneBits(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 0i, arg_0.x) & vec3<i32>(arg_0.x, 1i, arg_0.x), vec3<i32>(arg_0.x, -11679i, arg_0.x)), reverseBits(reverseBits(vec3<i32>(arg_0.x, -79897i, arg_0.x))), select(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, arg_0.x), vec3<i32>(arg_0.x, arg_0.x, -12249i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-19130i, arg_0.x, 39113i), vec3<i32>(arg_0.x, -4886i, 2147483647i)), all(vec4<bool>(true, true, false, true)))));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1533f);
    let var_0 = ~(~func_4(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), select(vec2<i32>(-1i, 3510i), vec2<i32>(15258i, 2147483647i), vec2<bool>(false, false)), func_3())));
    let var_1 = _wgslsmith_f_op_f32(sign(arg_3.a));
    global0 = arg_1;
    let var_2 = all(vec2<bool>(_wgslsmith_add_i32(var_0.x, 18116i) <= max(0i, 2147483647i), false)) && false;
    return Struct_2(_wgslsmith_f_op_f32(step(-856f, _wgslsmith_f_op_f32(max(var_1, arg_3.a)))));
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> f32 {
    var var_0 = Struct_4(~(~_wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(u_input.c.x, 59334u)), vec2<u32>(71281u, u_input.b) >> (vec2<u32>(4294967295u, u_input.c.x) % vec2<u32>(32u)))));
    let var_1 = 124081u;
    var var_2 = _wgslsmith_clamp_vec4_i32(min(vec4<i32>(_wgslsmith_div_i32(10559i, -12385i), ~10420i, 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-24683i, 2147483647i), vec2<i32>(47628i, -1i))), vec4<i32>(select(-1i, -29314i, arg_0), _wgslsmith_sub_i32(0i, 1i), 1i, ~(-10060i))) >> (vec4<u32>(var_1, u_input.c.x, var_1, abs(0u) << (~var_0.a.x % 32u)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(-8562i, 36701i, 1i, 0i), vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(1i, 1i, 1i, 1i), !(false | arg_0)), vec4<i32>(1i, 1i, 1i, 1i)), reverseBits(vec4<i32>(-1i) * -countOneBits(vec4<i32>(-2147483647i, 2147483647i, 2147483647i, -31811i))));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1515f);
    global0 = 652f;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -1261f;
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(!(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x) != u_input.b), func_2(func_1(), 1f, u_input.a.zy, Struct_1(-1000f)))), _wgslsmith_f_op_f32(func_1().a - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-464f + -1035f), _wgslsmith_f_op_f32(-1238f - 1620f)))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1330f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1098f + 303f) + _wgslsmith_f_op_f32(sign(-365f)))))));
    var var_0 = vec4<bool>(!any(vec4<bool>(true, true, true, true)), !(!(!(u_input.a.x < u_input.c.x))), true, true);
    let var_1 = _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), abs(countOneBits(select(vec2<i32>(1i, 2147483647i), vec2<i32>(56715i, 1i), vec2<bool>(false, var_0.x))))), ~vec2<i32>(1i, func_4(vec2<i32>(1i, -23805i)).x) | (select(vec2<i32>(1i, 0i), _wgslsmith_add_vec2_i32(vec2<i32>(14705i, 37731i), vec2<i32>(1i, 46971i)), var_0.yz) | -max(vec2<i32>(2147483647i, -12301i), vec2<i32>(57762i, -2147483647i))), select(func_3(), _wgslsmith_sub_vec2_i32(~vec2<i32>(-19147i, -1i), -firstTrailingBit(vec2<i32>(-16000i, -18413i))), vec2<bool>(var_0.x, true)));
    var_0 = !select(select(vec4<bool>(true, all(vec2<bool>(true, var_0.x)), true, all(vec2<bool>(var_0.x, var_0.x))), !vec4<bool>(var_0.x, var_0.x, false, var_0.x), var_0.x), vec4<bool>(true, false, true, select(!var_0.x, true, false)), true & var_0.x);
    var_0 = select(!(!(!select(vec4<bool>(false, true, var_0.x, true), vec4<bool>(false, var_0.x, true, true), true))), vec4<bool>(!all(vec3<bool>(false, true, false)), true, var_0.x, all(!(!vec3<bool>(var_0.x, false, true)))), select(!vec4<bool>(49181u >= u_input.c.x, var_0.x, all(vec2<bool>(var_0.x, true)), true), vec4<bool>(var_0.x, true, all(vec2<bool>(false, true)), !all(vec2<bool>(true, var_0.x))), vec4<bool>(true, !(!var_0.x), !var_0.x != any(var_0.yy), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, 37702i, 1i), vec3<i32>(var_1.x, -31423i, 1i)) < abs(2147483647i))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    var var_2 = vec4<bool>(true, all(select(select(select(vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(false, false, var_0.x, var_0.x), var_0.x), select(vec4<bool>(true, false, var_0.x, true), vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x)), select(vec4<bool>(false, false, false, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), var_0.x)), vec4<bool>(u_input.c.x >= u_input.b, !var_0.x, true, !var_0.x), (true & var_0.x) | true)), true, true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, 8942i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(907f)) - -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1110f))));
}

