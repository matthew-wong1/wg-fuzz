struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(15496u, 46538u), vec2<u32>(18169u, 29158u), vec2<u32>(1u, 0u), vec2<u32>(41781u, 14952u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 15223u), vec2<u32>(1u, 15553u), vec2<u32>(4294967295u, 21934u), vec2<u32>(6801u, 4294967295u), vec2<u32>(1u, 22091u), vec2<u32>(49825u, 27245u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(31077u, 70702u), vec2<u32>(0u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(63065u, 27315u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(18136u, 4294967295u), vec2<u32>(19151u, 0u), vec2<u32>(1u, 51599u), vec2<u32>(4445u, 62602u), vec2<u32>(1u, 18453u), vec2<u32>(52546u, 29101u));

var<private> global1: vec4<u32>;

var<private> global2: vec2<i32> = vec2<i32>(1i, -44487i);

var<private> global3: array<vec2<bool>, 2>;

var<private> global4: array<vec3<u32>, 9>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<f32>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(min(arg_1.xx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.yx) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.x, -793f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.x, -608f))))))));
    global2 = ~_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_add_i32(0i, ~(-53748i)), u_input.c >> (~16265u % 32u)), ~vec2<i32>(~(-1i), reverseBits(global2.x)));
    global4 = array<vec3<u32>, 9>();
    let var_1 = vec2<i32>(u_input.b, -1i);
    let var_2 = -377f;
    return -1i;
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = ~u_input.e.x;
    global2 = -max(vec2<i32>(1i, 2147483647i) >> (firstTrailingBit(global0[_wgslsmith_index_u32(global1.x, 25u)]) % vec2<u32>(32u)), u_input.a) ^ (vec2<i32>(1i, global2.x) | (vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(u_input.a, u_input.a)));
    global3 = array<vec2<bool>, 2>();
    global1 = ~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 28495u, 4294967295u, 4294967295u), select(vec4<u32>(var_0, 1u, 15542u, u_input.e.x), vec4<u32>(var_0, var_0, 4294967295u, u_input.e.x), vec4<bool>(true, true, false, true))), ~vec4<u32>(var_0, global1.x, 1u, 1u)) ^ ~select(~vec4<u32>(global1.x, 1u, 16240u, 0u), countOneBits(vec4<u32>(var_0, global1.x, u_input.e.x, 4294967295u)), any(vec3<bool>(true, false, true)) || true);
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x))))));
    return 33702u;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec3<bool>) -> u32 {
    var var_0 = arg_0;
    let var_1 = firstLeadingBit(global2.x ^ u_input.b);
    let var_2 = vec4<bool>(true, any(!vec4<bool>(arg_3.x, !arg_3.x, any(vec4<bool>(arg_3.x, arg_3.x, true, false)), arg_3.x)), true, _wgslsmith_mult_u32(abs(_wgslsmith_div_u32(u_input.e.x, 17524u)), _wgslsmith_mod_u32(u_input.e.x, 1u) >> (firstTrailingBit(12217u) % 32u)) < 1u);
    var var_3 = arg_0;
    let var_4 = arg_0;
    return global1.x;
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: f32, arg_3: f32) -> vec3<i32> {
    let var_0 = true;
    var var_1 = ~max(41267u, _wgslsmith_add_u32(u_input.e.x, 1u));
    var var_2 = any(!vec4<bool>(!var_0, true, !var_0, !var_0 && var_0));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.xz, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, arg_2), vec2<f32>(arg_3, 1119f)))))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-641f)), -1420f))) * _wgslsmith_f_op_f32(var_3.a.x * _wgslsmith_f_op_f32(728f - arg_3)));
    return ~vec3<i32>(arg_0 >> (func_4(Struct_1(arg_1.zz), func_3(Struct_1(var_3.a)), Struct_1(var_3.a), vec3<bool>(true, true, false)) % 32u), u_input.a.x, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_i32(39512i, _wgslsmith_add_i32(func_1(vec3<u32>(4294967295u, 2068u, 44126u) | _wgslsmith_sub_vec3_u32(vec3<u32>(28426u, 31135u, 8210u), vec3<u32>(0u, u_input.e.x, u_input.e.x)), vec3<f32>(_wgslsmith_f_op_f32(-1000f * 1174f), _wgslsmith_div_f32(-266f, 114f), _wgslsmith_f_op_f32(304f + -255f))), -1i), -_wgslsmith_dot_vec3_i32(firstTrailingBit(func_2(global2.x, vec3<f32>(1276f, 146f, 1961f), 1650f, 1171f)), vec3<i32>(reverseBits(40537i), -1i, global2.x)));
    let var_1 = u_input.a;
    let var_2 = select((~(vec4<u32>(0u, global1.x, u_input.e.x, 63143u) << (vec4<u32>(global1.x, 15792u, 1u, u_input.e.x) % vec4<u32>(32u))) >> (~vec4<u32>(u_input.e.x, 0u, 10315u, 0u) % vec4<u32>(32u))) | ~(~(~vec4<u32>(u_input.e.x, 75478u, 0u, 10713u))), ~firstTrailingBit(~vec4<u32>(u_input.e.x, 4294967295u, 46322u, global1.x)), true);
    global2 = vec2<i32>(~(-24609i), u_input.d);
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 290f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-520f, -591f))), any(global3[_wgslsmith_index_u32(var_2.x, 2u)]))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(181f, 414f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1109f, -387f) - vec2<f32>(-148f, 1896f)))), vec2<f32>(_wgslsmith_div_f32(202f, -363f), _wgslsmith_f_op_f32(987f + -1323f))))));
    global0 = array<vec2<u32>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(-40618i, ~(~(~var_2)));
}

