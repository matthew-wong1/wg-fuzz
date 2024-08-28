struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    var var_0 = vec3<u32>(~(~_wgslsmith_mod_u32(61933u, u_input.a)), firstLeadingBit(45676u), abs(u_input.a) << (_wgslsmith_add_u32(26494u, 1u) % 32u)) ^ ~(~(~(~vec3<u32>(u_input.a, 1u, 21782u))));
    var var_1 = -2772i;
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(807f, 1514f, 1722f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1120f, -1127f, 543f) + vec3<f32>(651f, 793f, -650f))))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -725f), _wgslsmith_f_op_f32(-267f * 220f), _wgslsmith_f_op_f32(select(118f, -218f, false))))), vec3<bool>(!any(vec2<bool>(true, true)), all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true))), true))) * vec3<f32>(246f, -1000f, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-612f)) - _wgslsmith_f_op_f32(f32(-1f) * -520f)))));
    var var_4 = max(var_0.x, var_0.x) | min(~var_0.x, _wgslsmith_add_u32(~1u, _wgslsmith_dot_vec2_u32(var_0.xy, vec2<u32>(u_input.a, 8265u))) | _wgslsmith_mult_u32(~var_0.x, 1u));
    return all(vec3<bool>(true, true, true));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    var var_0 = !vec4<bool>(func_3(), false, true, true);
    let var_1 = -684f;
    global0 = array<Struct_1, 26>();
    return select(false, var_0.x, (true || var_0.x) & true);
}

fn func_1(arg_0: Struct_2) -> bool {
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    let var_0 = vec3<bool>(!func_2(arg_0, firstLeadingBit(vec4<u32>(43833u, u_input.a, u_input.a, u_input.a)), arg_0, global0[_wgslsmith_index_u32(u_input.a, 26u)]), true, 4294967295u == abs(u_input.a));
    var var_1 = vec3<i32>(_wgslsmith_mult_i32(max(min(~(-1i), 2147483647i), _wgslsmith_mod_i32(arg_0.b.x, arg_0.b.x)), abs(20250i)), -(~firstTrailingBit(~arg_0.b.x)), 54505i);
    var var_2 = arg_0;
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    var var_0 = 16159u;
    var var_1 = !(!vec4<bool>(true, false, func_1(Struct_2(vec2<f32>(500f, 800f), u_input.b.wyz)), firstLeadingBit(u_input.b.x) > _wgslsmith_div_i32(u_input.b.x, u_input.b.x)));
    var var_2 = (vec3<i32>(-_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, -12896i, u_input.b.x, u_input.b.x)), -_wgslsmith_clamp_i32(-2147483647i, u_input.b.x, u_input.b.x), _wgslsmith_add_i32(select(-30832i, -1i, var_1.x), i32(-1i) * -2147483647i)) << (firstTrailingBit(max(vec3<u32>(1u, 1u, 1u), vec3<u32>(u_input.a, 0u, u_input.a))) % vec3<u32>(32u))) ^ firstTrailingBit(vec3<i32>(i32(-1i) * -u_input.b.x, i32(-1i) * -u_input.b.x, _wgslsmith_dot_vec4_i32(u_input.b >> (vec4<u32>(u_input.a, 0u, 4294967295u, 51685u) % vec4<u32>(32u)), vec4<i32>(8261i, u_input.b.x, 1i, 58410i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(1521f, -2289f), vec2<f32>(-111f, -843f))))))), vec3<i32>(0i << (u_input.a % 32u), abs(u_input.b.x) ^ _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.b.zxx, u_input.b.yzx), u_input.b.wzy), 1i), _wgslsmith_mult_vec2_i32(vec2<i32>(-var_2.x, -1i), var_2.yz) | u_input.b.yz);
}

