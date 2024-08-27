struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 32>;

var<private> global1: Struct_1 = Struct_1(vec3<u32>(0u, 0u, 0u), vec4<i32>(27678i, 2147483647i, 1i, i32(-2147483648)));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = global1.a.x;
    let var_1 = arg_0;
    global1 = Struct_1(_wgslsmith_add_vec3_u32(arg_2.a, _wgslsmith_clamp_vec3_u32(~_wgslsmith_mod_vec3_u32(arg_1.a, vec3<u32>(arg_2.a.x, 75997u, arg_1.a.x)), ~firstTrailingBit(vec3<u32>(49597u, 1u, arg_2.a.x)), vec3<u32>(4294967295u, global1.a.x, 0u))), abs(arg_2.b));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-2204f * -1027f)) - _wgslsmith_f_op_f32(f32(-1f) * -1791f)))));
    var var_3 = global1.b.xy;
    return ~arg_1.a;
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(func_3(false, Struct_1(vec3<u32>(56335u, 6501u, arg_1.x), reverseBits(global1.b)), Struct_1(~global1.a, global1.b)), vec4<i32>(32597i, _wgslsmith_div_i32(arg_3.a.b.x, ~(-1i)), 48360i, -1i)));
    global1 = arg_3.a;
    var_0 = Struct_2(Struct_1(~select(~vec3<u32>(66532u, arg_3.a.a.x, arg_3.a.a.x), vec3<u32>(var_0.a.a.x, arg_1.x, var_0.a.a.x), true), countOneBits(max(vec4<i32>(38811i, 2147483647i, 2147483647i, global1.b.x), vec4<i32>(15440i, -80851i, var_0.a.b.x, arg_3.a.b.x)))));
    var var_1 = _wgslsmith_f_op_f32(-arg_0);
    var var_2 = _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1239f, -1015f), _wgslsmith_f_op_f32(f32(-1f) * -1413f))))));
    return vec4<bool>(true, true, true, true);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool, arg_3: u32) -> bool {
    global1 = Struct_1(~countOneBits(global1.a), -_wgslsmith_mod_vec4_i32(vec4<i32>(global1.b.x, arg_0.b.x, u_input.a, 15064i), vec4<i32>(0i, 34110i, _wgslsmith_clamp_i32(-37850i, 1i, -1i), _wgslsmith_dot_vec2_i32(arg_0.b.zy, arg_0.b.wx))));
    global0 = array<vec3<i32>, 32>();
    let var_0 = vec2<u32>(arg_3, _wgslsmith_mult_u32(26303u, 32240u));
    var var_1 = arg_3;
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1f))));
    return (select(false, true, any(arg_1)) & !any(vec4<bool>(arg_2, arg_2, arg_2, true))) && !(arg_1.x | !arg_2);
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: f32, arg_3: bool) -> u32 {
    var var_0 = select(vec2<bool>(true, true), !(!select(select(vec2<bool>(false, arg_3), vec2<bool>(arg_3, true), true), vec2<bool>(true, arg_3), select(arg_3, false, arg_3))), func_4(arg_0.a, !vec3<bool>(arg_3, false, global1.a.x > arg_0.a.a.x), !all(func_2(-1000f, global1.a, global1.b.x, Struct_2(arg_0.a))), 0u));
    var var_1 = vec2<u32>(~(~1u & arg_1.x), arg_1.x) << (firstLeadingBit(_wgslsmith_add_vec2_u32(arg_1.yy, ~(~arg_0.a.a.yx))) % vec2<u32>(32u));
    return ~(~(~44154u) << (countOneBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global1.a.x), global1.a.xz)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(abs(_wgslsmith_clamp_i32(-25381i, u_input.a, u_input.a ^ -37741i)) | 0i, -u_input.a, _wgslsmith_mult_i32(min(select(-1692i, ~0i, true), u_input.a), u_input.a));
    global0 = array<vec3<i32>, 32>();
    var var_1 = Struct_1(vec3<u32>(~(global1.a.x << (global1.a.x % 32u)), global1.a.x, _wgslsmith_add_u32(abs(abs(49149u)), 4294967295u >> (func_1(Struct_2(Struct_1(global1.a, global1.b)), vec3<u32>(1u, global1.a.x, 1u), -1652f, true) % 32u))), vec4<i32>(_wgslsmith_mult_i32(i32(-1i) * -1i, _wgslsmith_mod_i32(~u_input.a, 0i)), _wgslsmith_mod_i32(~var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 0i, 22583i), var_0)) << ((abs(global1.a.x) << (_wgslsmith_add_u32(1u, 29246u) % 32u)) % 32u), 1i, global1.b.x));
    var var_2 = Struct_2(Struct_1(vec3<u32>(27104u, ~global1.a.x, func_3(true, Struct_1(var_1.a, var_1.b), Struct_1(var_1.a, vec4<i32>(3675i, global1.b.x, var_1.b.x, global1.b.x))).x), select(global1.b, -max(global1.b, var_1.b), select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true)))));
    var_2 = Struct_2(var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * -232f)), vec4<u32>(1u, global1.a.x, var_2.a.a.x >> (~countOneBits(var_1.a.x) % 32u), global1.a.x));
}

