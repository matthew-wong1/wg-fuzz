struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: vec3<u32>,
    c: Struct_1,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: bool;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-884f - 1000f), -1038f)))))), _wgslsmith_f_op_f32(max(305f, 1370f))));
    global1 = true;
    var var_1 = any(vec4<bool>(any(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), false, (u_input.c.x >> (abs(global0.x) % 32u)) == u_input.c.x, any(vec4<bool>(true, true, var_0 != 1087f, false))));
    return _wgslsmith_f_op_f32(abs(-124f));
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    return _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.e.yx, global0.yy), _wgslsmith_div_u32(global0.x, _wgslsmith_div_u32(4294967295u, ~51009u) >> (_wgslsmith_mod_u32(1u, ~u_input.d.x) % 32u)), 13698u);
}

fn func_3() -> bool {
    global1 = any(select(vec3<bool>(true, any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true))), true), select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), true), true), true));
    let var_0 = Struct_3(_wgslsmith_dot_vec3_i32(abs(-(vec3<i32>(u_input.c.x, 54732i, u_input.c.x) & vec3<i32>(-1i, u_input.c.x, 2147483647i))), select(vec3<i32>(abs(u_input.c.x), _wgslsmith_mult_i32(u_input.c.x, -1i), abs(-2147483647i)), vec3<i32>(12544i, u_input.c.x, reverseBits(-20587i)), any(select(vec2<bool>(false, true), vec2<bool>(true, true), true)))), Struct_2(max(-_wgslsmith_mult_vec2_i32(u_input.c.zy, u_input.c.yz), u_input.c.yy), ~1i << ((1u >> (abs(1u) % 32u)) % 32u), Struct_1(~(~vec4<u32>(0u, 38032u, global0.x, 1u)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-659f, 114f, -379f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(979f, 928f, -1001f), vec3<f32>(-734f, -1183f, 431f), false))), 38894u)));
    let var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(~(~abs(var_0.a)), abs(-2147483647i) ^ max(~u_input.c.x, _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(u_input.c.x, -8519i, u_input.c.x))), _wgslsmith_div_i32(~abs(u_input.c.x), 1i), _wgslsmith_mult_i32(-973i, _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 6490i, u_input.c.x), vec3<i32>(var_0.b.a.x, u_input.c.x, 0i))))), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(-2147483647i, u_input.c.x), abs(1i)), ~_wgslsmith_sub_i32(u_input.c.x, u_input.c.x) | (var_0.b.a.x >> (~var_0.b.c.d % 32u)), 10318i, u_input.c.x));
    var var_2 = vec2<u32>(min(~_wgslsmith_dot_vec3_u32(global0.zxy, reverseBits(vec3<u32>(1u, 16551u, u_input.d.x))), 1u), 31431u);
    let var_3 = Struct_3(-_wgslsmith_mod_i32(_wgslsmith_mod_i32(-38938i, var_1.x), -2147483647i), var_0.b);
    return var_3.b.c.b.x != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.b.c.b.x - -965f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-228f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(182f))), _wgslsmith_f_op_f32(f32(-1f) * -1707f), false))) - -619f);
    global1 = 1427f < _wgslsmith_f_op_f32(func_1());
    global0 = _wgslsmith_add_vec4_u32(~(~vec4<u32>(~83438u, u_input.a >> (u_input.d.x % 32u), 54397u ^ u_input.a, ~73325u)), ~vec4<u32>(_wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(1u, 27075u)), _wgslsmith_mod_u32(1u, _wgslsmith_add_u32(u_input.b, u_input.b)), ~_wgslsmith_sub_u32(u_input.d.x, u_input.e.x), ~4294967295u));
    global0 = ~(~(vec4<u32>(1u, ~u_input.e.x, 56454u >> (0u % 32u), 1u) & vec4<u32>(16857u, 4294967295u, 122233u, _wgslsmith_mod_u32(5156u, global0.x))));
    global1 = true;
    global1 = ((~4294967295u << (1u % 32u)) <= _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.e.x, func_2(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 2147483647i))), min(0u, _wgslsmith_mod_u32(69603u, global0.x)))) | func_3();
    var var_1 = _wgslsmith_f_op_f32(-1029f + -1000f);
    var var_2 = Struct_5(!select(true, any(vec4<bool>(false, true, false, true)), false), u_input.e, Struct_1(vec4<u32>(_wgslsmith_clamp_u32(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global0.x, global0.x), u_input.e), u_input.e.x), ~(~u_input.d.x), 4294967295u, ~(~u_input.b)), vec3<f32>(var_0, 1859f, var_0), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -975f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1008f, 138f) * var_0), _wgslsmith_f_op_f32(f32(-1f) * -303f)), _wgslsmith_sub_u32(u_input.d.x, 94852u) >> (_wgslsmith_mult_u32(firstTrailingBit(global0.x), 43863u) % 32u)), ~u_input.e.x, select(vec4<i32>(u_input.c.x, _wgslsmith_sub_i32(u_input.c.x ^ u_input.c.x, u_input.c.x), -22320i, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(1i, firstTrailingBit(0i), -9209i, u_input.c.x), vec4<i32>(u_input.c.x, u_input.c.x, _wgslsmith_clamp_i32(-55572i, -2147483647i, u_input.c.x), u_input.c.x)), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, false, true, true), !any(vec4<bool>(true, true, false, false)))));
    var var_3 = -u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.d, 54772u, u_input.e.x, var_2.d), var_2.c.a) & (var_2.c.a ^ (vec4<u32>(55382u, global0.x, u_input.d.x, 36452u) << (vec4<u32>(u_input.d.x, 43445u, var_2.c.a.x, 0u) % vec4<u32>(32u))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0 + var_2.c.c.x), var_0, _wgslsmith_div_f32(305f, var_2.c.b.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1433f, -1370f, -750f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.c.c.x, -897f, -708f), var_2.c.c) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_2.c.c.x, -1229f)))))), var_2.e, _wgslsmith_clamp_vec2_i32(-vec2<i32>(~1i, ~u_input.c.x), firstLeadingBit(~vec2<i32>(var_2.e.x, -58099i)), _wgslsmith_clamp_vec2_i32(u_input.c.xy, -vec2<i32>(1i, u_input.c.x), -var_2.e.ww)));
}

