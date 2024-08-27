struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(i32(-2147483648), -1130i), vec3<i32>(-27183i, 10668i, 44676i), vec3<f32>(-1458f, 2256f, -1184f), 1u);

var<private> global1: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> u32 {
    global1 = Struct_1(global1.b.xx, -global0.b, _wgslsmith_f_op_vec3_f32(-global0.c), min(~_wgslsmith_clamp_u32(global0.d, ~global1.d, abs(global0.d)), min(31799u, ~0u)));
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x))), -1723f, 1947f, global1.c.x));
    var var_1 = firstTrailingBit(vec2<u32>(0u, firstLeadingBit(global1.d)));
    var_1 = ~vec2<u32>(4294967295u, var_1.x);
    let var_2 = u_input.a;
    return _wgslsmith_mod_u32(~global1.d, 4294967295u);
}

fn func_2(arg_0: f32) -> bool {
    global0 = Struct_1(_wgslsmith_mod_vec2_i32((vec2<i32>(1i, global1.b.x) & vec2<i32>(2147483647i, global0.b.x)) & abs(vec2<i32>(u_input.b.x, 1i)), _wgslsmith_sub_vec2_i32(-vec2<i32>(global1.a.x, -39211i), vec2<i32>(-18650i, global0.b.x) & u_input.b.zw)) << (vec2<u32>(func_3(), ~_wgslsmith_div_u32(global1.d, global1.d)) % vec2<u32>(32u)), vec3<i32>(10149i, i32(-1i) * -5712i, -18260i), vec3<f32>(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + 2326f) + 186f), global0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -398f)), _wgslsmith_mult_u32(~firstLeadingBit(~0u), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.d, ~global0.d, global0.d), vec3<u32>(min(1u, 82352u), global1.d, ~global1.d))));
    global1 = Struct_1(_wgslsmith_add_vec2_i32(global1.b.zy | firstTrailingBit(-vec2<i32>(2147483647i, global1.b.x)), -global0.a), global0.b, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global0.c))), reverseBits(firstTrailingBit(func_3()) | global1.d));
    let var_0 = false & any(vec2<bool>(false, true));
    var var_1 = Struct_1(abs(global1.b.zx), vec3<i32>(-14880i, _wgslsmith_sub_i32(0i & _wgslsmith_dot_vec2_i32(vec2<i32>(global1.a.x, -1i), vec2<i32>(-2147483647i, global1.a.x)), -global0.b.x), min(u_input.a, -11187i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(437f, -137f, arg_0), vec3<f32>(arg_0, 191f, arg_0), false))))))), ~(~0u));
    global1 = Struct_1(vec2<i32>(-1i, min(-1i, _wgslsmith_mod_i32(-global1.a.x, u_input.b.x))), firstTrailingBit(global0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(-801f * -629f), _wgslsmith_f_op_f32(round(var_1.c.x))))), ~78377u);
    return all(vec2<bool>(!(!var_0 | var_0), any(vec3<bool>(var_0, var_0, var_0))));
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_clamp_vec2_i32(global0.a, global1.b.yy, global0.a), ~global1.b, global1.c, _wgslsmith_sub_u32(32675u, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.d, 1u, global1.d, 19155u), vec4<u32>(10090u, arg_2.x, arg_1, arg_1)))) << (~arg_2.x % 32u));
    var var_1 = u_input.b;
    global1 = var_0;
    global0 = var_0;
    global1 = Struct_1(select(min(vec2<i32>(4936i, var_1.x), vec2<i32>(global1.b.x, ~u_input.b.x)), vec2<i32>(firstLeadingBit(34474i), ~(-35373i)), select(!vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(all(vec4<bool>(arg_0.x, false, true, arg_0.x)), false), arg_0.x)), firstLeadingBit(countOneBits(abs(global1.b >> (vec3<u32>(global0.d, arg_1, 33154u) % vec3<u32>(32u))))), vec3<f32>(-1168f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x - var_0.c.x)) * -321f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(829f + var_0.c.x) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-309f, global1.c.x)))), 20188u);
    return Struct_1(vec2<i32>(global1.a.x, 0i), vec3<i32>(u_input.a, u_input.a, 22159i), global0.c, _wgslsmith_div_u32(~0u, 46695u));
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> u32 {
    let var_0 = !(!select(vec2<bool>(global1.b.x > 0i, false), vec2<bool>(true, true), vec2<bool>(true, true)));
    global1 = func_4(vec2<bool>(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c.x * global0.c.x), _wgslsmith_f_op_f32(-global0.c.x))), false), firstLeadingBit(firstLeadingBit(_wgslsmith_add_u32(21849u, 70355u))), _wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(global1.d, abs(4294967295u))), vec2<u32>(abs(4294967295u), ~25613u) << ((arg_1.yw | vec2<u32>(arg_1.x, arg_0)) % vec2<u32>(32u))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(max(global0.d, global1.d), firstTrailingBit(func_1(global0.d, _wgslsmith_sub_vec4_u32(vec4<u32>(global0.d, 2713u, global0.d, global1.d), vec4<u32>(16187u, global0.d, global1.d, 1u)))), firstLeadingBit(~global1.d)), _wgslsmith_mod_vec3_u32(~firstTrailingBit(~vec3<u32>(global0.d, 0u, global0.d)), abs(vec3<u32>(~10592u, global0.d, global1.d))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(global1.c.x, global1.c.x, 1030f, global0.c.x), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-635f, global1.c.x, -402f, -1211f), vec4<f32>(1000f, global0.c.x, global0.c.x, global1.c.x))))))));
    let var_2 = func_4(select(vec2<bool>(true, true), select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(true, false), false), true), vec2<bool>(false, global0.c.x < -775f), true), !(!select(vec2<bool>(true, true), vec2<bool>(false, true), false))), global0.d, var_0.yz);
    let var_3 = var_2;
    global1 = var_3;
    global1 = func_4(select(vec2<bool>(func_2(_wgslsmith_f_op_f32(-var_3.c.x)), true), vec2<bool>(true, true), !any(vec2<bool>(true, true))), global1.d, _wgslsmith_mod_vec2_u32(vec2<u32>(max(select(40717u, 67471u, false), _wgslsmith_mod_u32(1u, var_0.x)), var_2.d), min(~(~var_0.xy), ~(~var_0.yz))));
    let var_4 = Struct_1(_wgslsmith_mult_vec2_i32(var_3.a, vec2<i32>(var_3.b.x, var_3.b.x)), u_input.b.wyz, var_3.c, ~(~(1u >> (global0.d % 32u))));
    var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(global0.d, ~_wgslsmith_mod_u32(21242u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_2.d, var_2.d, var_4.d), vec4<u32>(9895u, var_4.d, 1u, 0u))), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.d, 51445u, 28722u, 0u), ~vec4<u32>(global0.d, global1.d, global1.d, var_2.d)), firstLeadingBit(~4294967295u))), ~vec3<u32>(~27255u, global1.d, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, global1.d), vec3<u32>(global1.d, 1u, var_3.d))) << (firstLeadingBit(vec3<u32>(~var_2.d, _wgslsmith_mult_u32(var_4.d, 1u), global1.d)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_mult_i32(firstTrailingBit(firstTrailingBit(-8399i)), max(~(-1i), -9839i))), 120f, select(reverseBits(vec2<u32>(var_4.d ^ var_2.d, 20725u)), ~var_0.zy, true), ~vec2<u32>(max(firstLeadingBit(var_3.d), 40243u), ~(~40901u)), ~(~global1.d));
}

