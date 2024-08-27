struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: Struct_1,
    d: vec3<i32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 11>;

var<private> global1: array<vec2<bool>, 32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    global0 = array<vec4<i32>, 11>();
    let var_0 = Struct_1(!any(vec4<bool>(true, true, true, true)), _wgslsmith_mult_vec2_u32(u_input.e.xw, u_input.e.wx), ~_wgslsmith_mod_u32(min(~0u, _wgslsmith_mult_u32(u_input.b.x, u_input.b.x)), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.e.x, u_input.b.x), u_input.e.xw)), vec3<u32>(44791u, _wgslsmith_div_u32(~_wgslsmith_div_u32(0u, u_input.e.x), 0u), _wgslsmith_add_u32(0u, 1u)), u_input.c.x);
    let var_1 = var_0.e;
    return _wgslsmith_sub_u32(select(_wgslsmith_sub_u32(~81451u, u_input.e.x), 8165u, any(!vec4<bool>(false, var_0.a, var_0.a, false))) >> (~(~(~u_input.e.x)) % 32u), u_input.e.x);
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_div_i32(u_input.a.x, max(u_input.c.x, _wgslsmith_mod_i32(-45941i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, -1i, 2147483647i), vec3<i32>(0i, u_input.c.x, u_input.d.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-508f, 115f, 1254f, -714f) + vec4<f32>(-2180f, -443f, 384f, -316f))))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(645f, 1177f, -560f, _wgslsmith_f_op_f32(116f + -1124f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-889f, -1491f, -1000f, -505f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(368f, -1000f, 1169f, 337f)))))), Struct_1(-u_input.d.x >= (_wgslsmith_mult_i32(u_input.d.x, 2147483647i) >> (func_3() % 32u)), u_input.e.xx, 66799u, firstTrailingBit(abs(vec3<u32>(11163u, arg_0, arg_0))), u_input.c.x), reverseBits(vec3<i32>(countOneBits(u_input.d.x), -1i, 0i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-632f, 1494f)), -558f, _wgslsmith_f_op_f32(abs(-1087f)), -2041f))));
    let var_1 = select(vec2<bool>(all(!select(vec3<bool>(var_0.c.a, var_0.c.a, var_0.c.a), vec3<bool>(false, false, false), vec3<bool>(var_0.c.a, var_0.c.a, false))), !(!var_0.c.a)), vec2<bool>(var_0.c.a, (_wgslsmith_f_op_f32(sign(454f)) == _wgslsmith_f_op_f32(var_0.b.x * 1402f)) && true), global1[_wgslsmith_index_u32(abs(~32386u) << (arg_0 % 32u), 32u)]);
    var_0 = Struct_2(_wgslsmith_div_i32(u_input.d.x, firstLeadingBit(_wgslsmith_div_i32(u_input.a.x, -24466i) ^ firstTrailingBit(1i))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(var_0.e, var_0.b)), vec4<f32>(-984f, var_0.e.x, var_0.b.x, 209f)))))), Struct_1(any(vec3<bool>(true, u_input.e.x >= arg_0, !var_1.x)), var_0.c.d.zz, _wgslsmith_mod_u32(~(~14823u), 1u), var_0.c.d, -u_input.d.x & ~_wgslsmith_mod_i32(19194i, u_input.a.x)), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(var_0.d, vec3<i32>(1i, ~var_0.a, firstLeadingBit(var_0.a))), vec3<i32>(u_input.a.x, -2147483647i, _wgslsmith_mult_i32(-u_input.d.x, -u_input.d.x))), vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.e.x)), var_0.b.x, _wgslsmith_f_op_f32(min(1616f, -1543f)), var_0.b.x));
    let var_2 = u_input.c.wxx;
    var var_3 = Struct_2(var_0.c.e, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, 1095f, var_0.e.x, -2400f)), var_0.b))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(var_0.e, vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, 2360f))), vec4<f32>(var_0.e.x, 691f, var_0.b.x, var_0.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(var_0.e, var_0.e)) + _wgslsmith_f_op_vec4_f32(step(var_0.e, var_0.e))))), var_0.c, vec3<i32>(reverseBits(-_wgslsmith_mod_i32(2147483647i, -19122i)), i32(-1i) * -firstTrailingBit(u_input.a.x), var_0.c.e), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.b.x, -1466f, 254f, var_0.e.x), var_0.e))) + _wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.x, 800f, var_0.e.x, -739f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.e.x, var_0.b.x, var_0.b.x, var_0.e.x), var_0.b))))));
    return Struct_2(_wgslsmith_div_i32(0i, -720i), var_0.e, Struct_1(var_1.x, vec2<u32>(u_input.b.x, 72112u), _wgslsmith_mod_u32(abs(func_3()), 34702u), u_input.b, -(var_3.c.e ^ var_0.a) & (select(u_input.c.x, var_2.x, false) >> (firstLeadingBit(33601u) % 32u))), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, -19294i, reverseBits(var_2.x)), var_3.d | var_0.d) & select(var_2, vec3<i32>(abs(-20795i), i32(-1i) * -1113i, -9246i), var_3.c.a), vec4<f32>(986f, _wgslsmith_f_op_f32(1360f + _wgslsmith_f_op_f32(abs(671f))), _wgslsmith_f_op_f32(-var_3.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1000f, var_0.e.x)), _wgslsmith_f_op_f32(1000f * var_3.b.x), var_1.x)) + -1012f)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: bool) -> bool {
    global1 = array<vec2<bool>, 32>();
    var var_0 = ~vec3<u32>(u_input.e.x, firstTrailingBit(~u_input.e.x), ~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(8342u, 17652u, u_input.b.x), vec3<u32>(1u, 12028u, 16709u))));
    global1 = array<vec2<bool>, 32>();
    let var_1 = func_2(1u);
    var var_2 = var_1.e.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.xx;
    var var_1 = _wgslsmith_mod_vec4_i32(u_input.c, -_wgslsmith_clamp_vec4_i32(global0[_wgslsmith_index_u32(~(~18465u), 11u)], firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-2429i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(2147483647i, -1i, u_input.c.x, u_input.d.x))), reverseBits(u_input.c)));
    global1 = array<vec2<bool>, 32>();
    var var_2 = Struct_4(vec4<bool>(true, !(!func_1(vec2<f32>(488f, -727f), vec3<bool>(false, true, true), true)), all(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false)), false), var_0.x, Struct_3(-680f), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1582f, 1460f)) - -1249f)));
    global0 = array<vec4<i32>, 11>();
    var_1 = vec4<i32>(1i, reverseBits(-_wgslsmith_add_i32(1i, 1i)), ~_wgslsmith_mod_i32(-var_1.x, 2147483647i), _wgslsmith_add_i32(43029i, i32(-1i) * -2663i));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1280f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.d.a)))));
    var var_4 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, countOneBits(firstLeadingBit(min(_wgslsmith_mult_vec3_u32(u_input.b, u_input.e.www), select(vec3<u32>(var_2.b, var_2.b, var_0.x), u_input.b, var_2.a.x)))), _wgslsmith_clamp_u32(~1u, var_0.x, 0u));
}

