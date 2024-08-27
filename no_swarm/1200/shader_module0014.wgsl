struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<i32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<f32>, 3>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<f32> {
    var var_0 = true;
    var_0 = 114095u != _wgslsmith_div_u32(u_input.a, 1u);
    let var_1 = -1i;
    let var_2 = u_input.b;
    global0 = abs(_wgslsmith_clamp_i32(~_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.d.x, 8781i, var_1), firstLeadingBit(vec3<i32>(var_1, 37375i, u_input.d.x))), _wgslsmith_mult_i32(~34873i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.d.x, var_1), -1331i)), abs(firstLeadingBit(_wgslsmith_div_i32(var_1, u_input.d.x)))));
    return global1[_wgslsmith_index_u32(1u, 3u)];
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: Struct_4) -> vec3<u32> {
    var var_0 = Struct_2(arg_2.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, arg_0.x, 1045f, 215f), vec4<f32>(-839f, arg_0.x, -373f, -173f), arg_2.d)))) * _wgslsmith_f_op_vec4_f32(func_3())));
    let var_1 = Struct_3((false || var_0.a.a) & (min(~(-1i), 0i >> (arg_2.b.b.x % 32u)) < var_0.a.c.x), var_0.a, reverseBits(~countOneBits(firstLeadingBit(vec2<i32>(-3106i, u_input.d.x)))), select(arg_2.d, arg_2.d, true));
    global0 = i32(-1i) * -1i;
    var var_2 = _wgslsmith_add_u32(~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(~70360u, 24984u << (u_input.a % 32u)), ~abs(0u), 2882u), 1u);
    let var_3 = Struct_1(!(!(false | arg_2.d.x) | var_0.a.e), min(var_1.b.b, _wgslsmith_mult_vec4_u32(~reverseBits(vec4<u32>(1u, 0u, u_input.c.x, arg_3.b)), vec4<u32>(var_0.a.b.x, arg_3.b, 1u, var_1.b.b.x))), vec4<i32>(45069i, arg_2.c.x << (~(~4294967295u) % 32u), arg_3.a, -2147483647i), any(select(!(!vec2<bool>(true, var_0.a.a)), vec2<bool>(var_1.a | var_1.b.e, !var_0.a.a), vec2<bool>(arg_3.a < var_0.a.c.x, false))), any(select(select(var_1.d.xzx, !vec3<bool>(var_0.a.a, var_0.a.e, var_0.a.e), var_1.d.xwy), var_1.d.wyz, !(!var_0.a.d))));
    return ~vec3<u32>(0u, arg_3.b, 11235u);
}

fn func_1() -> vec4<f32> {
    global0 = u_input.d.x;
    var var_0 = u_input.c.xy;
    var var_1 = Struct_1(true, ~vec4<u32>(_wgslsmith_mod_u32(~u_input.c.x, var_0.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.b, u_input.b), ~u_input.c), _wgslsmith_mod_u32(50539u, ~u_input.c.x), firstTrailingBit(100182u) | ~var_0.x), vec4<i32>(~(-9514i), abs(max(i32(-1i) * -6727i, -2147483647i)), u_input.d.x, 1i), true | !all(vec3<bool>(true, false, false)), all(vec2<bool>(true, true)));
    var var_2 = _wgslsmith_add_vec3_u32(~vec3<u32>(12790u, ~84002u, var_0.x), countOneBits(~(~func_2(vec3<f32>(2101f, -862f, -253f), global1[_wgslsmith_index_u32(var_0.x, 3u)], Struct_3(true, Struct_1(var_1.a, var_1.b, vec4<i32>(1i, var_1.c.x, u_input.d.x, 1i), false, var_1.d), var_1.c.wx, vec4<bool>(var_1.e, true, false, true)), Struct_4(37105i, 843u)))));
    var_1 = Struct_1(!all(select(select(vec4<bool>(var_1.e, var_1.a, var_1.e, true), vec4<bool>(true, true, true, var_1.d), vec4<bool>(true, false, true, false)), vec4<bool>(false, true, var_1.d, var_1.e), select(var_1.d, true, false))), var_1.b, (vec4<i32>(-1i) * -countOneBits(vec4<i32>(var_1.c.x, -48860i, 1i, u_input.d.x))) ^ max(var_1.c, _wgslsmith_mod_vec4_i32(~var_1.c, var_1.c)), !(_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(20777u, var_1.b.x), u_input.c.yx)) >= min(_wgslsmith_clamp_u32(1u, var_0.x, var_2.x), ~u_input.c.x)), any(vec2<bool>(true, true)));
    return global1[_wgslsmith_index_u32(1u, 3u)];
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_2) -> u32 {
    global0 = firstTrailingBit(arg_1);
    global1 = array<vec4<f32>, 3>();
    let var_0 = vec4<bool>(arg_3.a.a, any(!(!select(vec3<bool>(false, arg_3.a.a, arg_3.a.a), vec3<bool>(true, false, true), vec3<bool>(false, true, arg_3.a.e)))), arg_3.a.a, arg_3.a.d);
    let var_1 = -1i > select(i32(-1i) * -51124i, 1i, _wgslsmith_f_op_f32(-arg_3.b.x) <= 350f);
    global0 = firstLeadingBit(_wgslsmith_mult_i32((i32(-1i) * -2147483647i) & min(countOneBits(arg_1), _wgslsmith_mod_i32(u_input.d.x, arg_3.a.c.x)), firstLeadingBit(1i) | _wgslsmith_div_i32(arg_1, arg_1)));
    return abs(abs(_wgslsmith_mult_u32(~abs(arg_3.a.b.x), 23503u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_sub_vec2_i32(select(u_input.d, min(u_input.d, u_input.d) | reverseBits(vec2<i32>(-12333i, -2147483647i)), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true), any(vec2<bool>(false, false)))), _wgslsmith_clamp_vec2_i32(u_input.d, ~(~vec2<i32>(1i, u_input.d.x)), (u_input.d << (u_input.c.yy % vec2<u32>(32u))) >> (~u_input.c.xx % vec2<u32>(32u))));
    var var_1 = vec4<bool>(false, !(!(false && (4294967295u > u_input.a))), !((_wgslsmith_f_op_f32(select(-365f, 508f, false)) == _wgslsmith_f_op_f32(f32(-1f) * -563f)) & !all(vec4<bool>(true, true, true, true))), false);
    let var_2 = Struct_1(!(!var_1.x), vec4<u32>(_wgslsmith_mod_u32(1u, 18006u), func_4(_wgslsmith_f_op_f32(ceil(1f)), -countOneBits(var_0.x), _wgslsmith_f_op_vec4_f32(func_1()), Struct_2(Struct_1(var_1.x, vec4<u32>(u_input.c.x, 1u, 1u, u_input.a), vec4<i32>(var_0.x, var_0.x, 1i, var_0.x), var_1.x, var_1.x), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-926f, 945f, -213f, -1059f), vec4<f32>(-981f, -2481f, 665f, -793f))))), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 1u), _wgslsmith_div_vec2_u32(u_input.c.yy, u_input.c.zx)), max(u_input.c.x, ~4294967295u)), firstTrailingBit(20599u) << (u_input.b % 32u)), _wgslsmith_mult_vec4_i32(~firstLeadingBit(vec4<i32>(var_0.x, 2147483647i, var_0.x, 1i)), vec4<i32>(-1i) * -abs(vec4<i32>(-1i, -1i, u_input.d.x, u_input.d.x))), !any(!vec4<bool>(true, false, var_1.x, var_1.x)), true);
    var var_3 = _wgslsmith_f_op_f32(681f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-367f * _wgslsmith_f_op_f32(-1991f - -1690f)) - -1748f)));
    let var_4 = Struct_3(true, Struct_1(true, firstLeadingBit(vec4<u32>(24952u | u_input.c.x, ~19967u, _wgslsmith_mult_u32(15808u, u_input.c.x), 85585u | u_input.a)), var_2.c, !(true | var_1.x), !(var_2.b.x > _wgslsmith_add_u32(36171u, 29532u))), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d.x, -3121i | u_input.d.x), var_2.c.yz) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(-var_0.x, u_input.d.x), ~(~var_2.c.wy), u_input.d), vec4<bool>(!var_2.d, true, all(vec2<bool>(any(vec3<bool>(var_1.x, var_2.d, false)), true)), true));
    var_1 = select(vec4<bool>(true, false, var_4.b.a, var_2.d), var_4.d, !(!all(select(vec4<bool>(var_4.d.x, var_1.x, var_1.x, true), var_4.d, var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f))), global1[_wgslsmith_index_u32(~(~(~0u)), 3u)], var_4, Struct_4((var_4.c.x >> (87567u % 32u)) ^ u_input.d.x, _wgslsmith_clamp_u32(countOneBits(1u), 0u, 0u))).zz, vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(350f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1424f)))), 955f, _wgslsmith_div_f32(-1860f, -2490f), _wgslsmith_f_op_f32(max(-764f, -1089f))));
}

