struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<f32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    return true & !all(select(global0.yy, select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(global0.x, false)));
}

fn func_2(arg_0: f32) -> vec2<u32> {
    global0 = vec3<bool>(global0.x, global0.x, select(true, true, func_3()));
    global0 = vec3<bool>(true, all(!select(select(vec3<bool>(global0.x, true, false), vec3<bool>(false, false, true), true), vec3<bool>(false, global0.x, global0.x), select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, true, global0.x), vec3<bool>(true, global0.x, global0.x)))), true);
    var var_0 = Struct_1(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1799f)) + arg_0), ~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 53070u, 0u, 4294967295u), select(vec4<u32>(1u, 1640u, 26063u, 4294967295u), vec4<u32>(23592u, 1u, 14484u, 4294967295u), global0.x)), (1552u << (1u % 32u)) | _wgslsmith_dot_vec3_u32(vec3<u32>(39547u, 30935u, 30145u), vec3<u32>(35234u, 31180u, 19949u))));
    var var_1 = ~countOneBits(~(~vec4<u32>(0u, 65510u, 19177u, 1u)));
    let var_2 = Struct_2(-554f, var_1.x);
    return vec2<u32>(var_1.x, 61694u);
}

fn func_1() -> vec2<bool> {
    var var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(1u, ~16344u) | firstLeadingBit(func_2(-2197f)), func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1799f) + _wgslsmith_f_op_f32(-386f + -2222f))))));
    var var_1 = Struct_1(939f, _wgslsmith_f_op_f32(363f + -1018f), _wgslsmith_sub_u32(var_0.x, ~var_0.x) | 41103u);
    let var_2 = reverseBits(vec3<i32>(_wgslsmith_mod_i32(~u_input.b, u_input.b), u_input.a, u_input.a));
    var var_3 = var_2.x;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(round(-568f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1471f * _wgslsmith_f_op_f32(-1525f * _wgslsmith_f_op_f32(select(876f, 404f, global0.x))))), ~abs(var_0.x) ^ ~_wgslsmith_div_u32(var_0.x, var_1.c));
    return vec2<bool>(func_3(), global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<bool>(global0.x, all(select(select(global0.yx, vec2<bool>(global0.x, global0.x), !global0.x), global0.yz, select(!vec2<bool>(global0.x, global0.x), vec2<bool>(false, true), func_1()))), global0.x);
    let var_0 = (firstTrailingBit(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, 71737u, 1u), vec4<u32>(1u, 0u, 4402u, 31946u))) ^ ~abs(vec4<u32>(1u, 1u, 1u, 1u))) >> (vec4<u32>(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f)).x, select(_wgslsmith_mult_u32(~72303u, 0u), _wgslsmith_div_u32(func_2(-651f).x, _wgslsmith_mod_u32(4294967295u, 49216u)), all(global0.zy)), min(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(36742u, 0u, 4294967295u)), 1u), _wgslsmith_div_u32(192u, 13457u)) % vec4<u32>(32u));
    var var_1 = _wgslsmith_div_u32(~select(18860u, ~var_0.x, global0.x), ~var_0.x);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(864f, -1220f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-101f - 317f)))) + 1957f), 21298u);
    var var_3 = vec4<i32>(min(abs(u_input.a), u_input.a), u_input.a, _wgslsmith_mod_i32(i32(-1i) * -10422i, u_input.a), _wgslsmith_dot_vec2_i32(~(-vec2<i32>(u_input.b, u_input.b)) & _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.b), vec2<i32>(u_input.a, u_input.b)), select(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(2147483647i, -32526i)), vec2<i32>(u_input.a, u_input.b)), abs(vec2<i32>(u_input.b, 1300i)) | -vec2<i32>(-21642i, 28929i), any(!global0.xx))));
    let var_4 = vec3<f32>(var_2.b, var_2.a, -1295f);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, countOneBits(~(~2147483647i)), _wgslsmith_clamp_i32(~firstTrailingBit(-867i), u_input.a, -2147483647i), (-2147483647i >> (abs(1u) % 32u)) ^ _wgslsmith_dot_vec2_i32(~vec2<i32>(var_3.x, -8932i), vec2<i32>(var_3.x, var_3.x))), _wgslsmith_f_op_f32(var_4.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1831f, 1039f) + 731f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-759f, var_2.b, -110f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_4.x, var_2.b, 1112f))))) + var_4), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1333f)))))) - var_4.yz), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-961f)))));
}

