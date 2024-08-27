struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19>;

var<private> global1: vec4<u32>;

var<private> global2: array<vec4<i32>, 19>;

var<private> global3: f32;

var<private> global4: array<vec2<f32>, 7>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<bool>) -> i32 {
    var var_0 = any(arg_1);
    var var_1 = max(52242u, ~firstTrailingBit(79528u));
    var_0 = false;
    global1 = ~firstLeadingBit(vec4<u32>(~global1.x, global1.x, 41627u, global1.x)) | (vec4<u32>(u_input.b, select(_wgslsmith_sub_u32(global1.x, 1u), ~58563u, arg_1.x), 4294967295u, ~max(66875u, 1u)) & vec4<u32>(~38272u, ~firstTrailingBit(1u), 0u, (51321u << (1u % 32u)) >> (select(u_input.b, global1.x, true) % 32u)));
    var var_2 = vec2<i32>(u_input.e, ~u_input.e);
    return _wgslsmith_mod_i32(min(var_2.x, var_2.x ^ ~(var_2.x & u_input.d.x)), -31099i ^ firstTrailingBit(u_input.e));
}

fn func_2(arg_0: u32) -> Struct_1 {
    global4 = array<vec2<f32>, 7>();
    let var_0 = u_input.a.x;
    let var_1 = _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, u_input.e), vec2<i32>(u_input.e, -71883i), vec2<i32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(24157u, ~u_input.c), 19u)], -2147483647i >> (~u_input.a.x % 32u))), vec2<i32>(global0[_wgslsmith_index_u32(~3312u, 19u)] >> (global1.x % 32u), -44361i) & firstLeadingBit(_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.e, u_input.e), u_input.d.xy), u_input.d.yx)));
    var var_2 = any(vec4<bool>(true, _wgslsmith_mult_i32(~global0[_wgslsmith_index_u32(u_input.a.x, 19u)], -2214i) < ~func_3(vec3<f32>(-1238f, 1000f, 1429f), vec4<bool>(false, false, false, false)), true, true));
    global2 = array<vec4<i32>, 19>();
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -646f));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> vec4<u32> {
    var var_0 = func_2(select(global1.x, ~global1.x, !all(select(vec2<bool>(false, true), vec2<bool>(false, true), false))));
    let var_1 = arg_0;
    global4 = array<vec2<f32>, 7>();
    global4 = array<vec2<f32>, 7>();
    global0 = array<i32, 19>();
    return firstLeadingBit(vec4<u32>(_wgslsmith_sub_u32(global1.x, u_input.a.x), _wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(global1.zyz, vec3<u32>(31376u, 41498u, 50951u)), global1.x), ~u_input.b, _wgslsmith_clamp_u32(84966u, u_input.b, ~28961u)));
}

fn func_1() -> i32 {
    global3 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1266f + 1185f) - -1427f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1079f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-300f, -1000f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1345f)))), all(vec3<bool>(true, true, true))));
    global1 = ~vec4<u32>(4294967295u, ~(~global1.x), u_input.a.x, ~global1.x) << (firstTrailingBit(vec4<u32>(firstTrailingBit(25168u) ^ 4405u, ~(u_input.b >> (35524u % 32u)), 39472u, ~u_input.b)) % vec4<u32>(32u));
    let var_0 = u_input.d.yx;
    global1 = _wgslsmith_mod_vec4_u32(func_4(Struct_1(-1005f), func_2(38813u), global4[_wgslsmith_index_u32(40940u, 7u)]), vec4<u32>(min(_wgslsmith_div_u32(11916u, u_input.b) | ~118971u, 1u), _wgslsmith_add_u32(0u, 7936u), 51907u, 52720u));
    global4 = array<vec2<f32>, 7>();
    return -15616i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(1215f, -1523f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-520f)) * _wgslsmith_f_op_f32(round(-168f))))));
    let var_1 = u_input.d.x;
    var var_2 = firstLeadingBit(1u);
    let var_3 = vec2<i32>(-_wgslsmith_sub_i32(var_1, var_1) ^ _wgslsmith_sub_i32(func_1(), _wgslsmith_mult_i32(_wgslsmith_mod_i32(-1i, global0[_wgslsmith_index_u32(14060u, 19u)]), 24176i >> (u_input.b % 32u))), _wgslsmith_clamp_i32(-29146i, min(_wgslsmith_mult_i32(-u_input.e, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, global0[_wgslsmith_index_u32(0u, 19u)], -1i), vec4<i32>(27759i, var_1, var_1, -16002i))), u_input.d.x), 1i));
    global1 = _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(func_4(Struct_1(func_2(39165u).a), func_2(select(4844u, global1.x, false)), global4[_wgslsmith_index_u32(u_input.c, 7u)]), vec4<u32>(_wgslsmith_div_u32(~4294967295u, global1.x), ~max(0u, 18681u), _wgslsmith_mod_u32(max(1u, 33923u), ~14459u), 60817u)), ~vec4<u32>(u_input.b, 0u, 8494u, ~global1.x) & vec4<u32>(~33242u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 4294967295u), global1.yyy), 0u, _wgslsmith_clamp_u32(~36916u, ~9757u, u_input.b)));
    let var_4 = all(vec4<bool>(true, false, true, select(false, all(vec2<bool>(true, true)), true)));
    let var_5 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(402f - var_0.x), _wgslsmith_f_op_f32(-446f + var_0.x))), _wgslsmith_f_op_f32(ceil(354f)))));
    var var_6 = Struct_1(_wgslsmith_f_op_f32(-var_5.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_6.a * _wgslsmith_f_op_f32(423f + var_5.a)), u_input.a);
}

