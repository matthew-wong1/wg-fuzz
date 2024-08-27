struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(-1166f, 1312f), vec2<f32>(-1000f, 715f), vec2<f32>(278f, 124f), vec2<f32>(-572f, -141f), vec2<f32>(-395f, 1011f), vec2<f32>(-1496f, 184f), vec2<f32>(1143f, 599f), vec2<f32>(1000f, 495f), vec2<f32>(-719f, 522f), vec2<f32>(-1439f, -1422f), vec2<f32>(1290f, 738f), vec2<f32>(803f, -1045f));

var<private> global1: array<vec3<i32>, 1> = array<vec3<i32>, 1>(vec3<i32>(i32(-2147483648), 2147483647i, 1i));

var<private> global2: vec2<u32> = vec2<u32>(4294967295u, 30039u);

var<private> global3: array<vec4<bool>, 20> = array<vec4<bool>, 20>(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false));

var<private> global4: vec3<i32> = vec3<i32>(31829i, -36424i, 1i);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec3<f32>, arg_3: vec2<i32>) -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1171f)))));
    var var_1 = Struct_1(var_0.a.a);
    let var_2 = !select(vec3<bool>(any(global3[_wgslsmith_index_u32(global2.x, 20u)]) & any(arg_1), true, !(true & arg_1.x)), vec3<bool>(arg_1.x, all(!global3[_wgslsmith_index_u32(1u, 20u)]), true), select(var_0.a.a < var_1.a, arg_1.x, arg_1.x));
    let var_3 = ~(0u >> ((u_input.a & abs(4294967295u)) % 32u));
    var var_4 = Struct_2(var_0.a);
    return global3[_wgslsmith_index_u32(~abs(u_input.a), 20u)];
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = ~global4.x;
    global3 = array<vec4<bool>, 20>();
    global3 = array<vec4<bool>, 20>();
    global0 = array<vec2<f32>, 12>();
    let var_1 = global2.x;
    return !func_3(arg_0.a, !select(vec2<bool>(true, true), vec2<bool>(true, false), true), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(-1738f - arg_0.a.a), arg_1.a) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a, arg_1.a, 288f), vec3<f32>(450f, arg_0.a.a, -1477f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, arg_0.a.a, arg_1.a) * vec3<f32>(1000f, arg_0.a.a, -1000f)), all(vec2<bool>(true, false))))), -(~(-global4.zz)));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec4<bool>) -> bool {
    global3 = array<vec4<bool>, 20>();
    var var_0 = Struct_2(Struct_1(arg_0.a));
    let var_1 = Struct_2(Struct_1(-1000f));
    return arg_2.x;
}

fn func_1(arg_0: vec4<bool>) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1441f, _wgslsmith_f_op_f32(560f + _wgslsmith_f_op_f32(floor(-176f))))), -1000f)) * 338f);
    let var_1 = abs(select(10345i, ~_wgslsmith_mod_i32(global4.x, -u_input.b.x), true));
    global2 = vec2<u32>(u_input.a, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1u, global2.x, 58481u, 89917u)), ~vec4<u32>(1u, 4294967295u, global2.x, u_input.a)) >> (32236u % 32u), 1u));
    global3 = array<vec4<bool>, 20>();
    let var_2 = vec4<bool>(!arg_0.x, true, arg_0.x, func_4(Struct_1(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(step(var_0, var_0)))), 0i, select(vec4<bool>(arg_0.x, false, false, arg_0.x), !func_2(Struct_2(Struct_1(-352f)), Struct_1(-947f)), arg_0)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1018f, var_0, var_0), vec3<f32>(-251f, var_0, 744f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -1780f, -653f) + vec3<f32>(485f, var_0, var_0))))));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: vec2<f32>) -> i32 {
    var var_0 = any(vec3<bool>(true, true, !(3688i == u_input.b.x) & (global4.x > (u_input.b.x | 13979i))));
    global4 = _wgslsmith_clamp_vec3_i32(-u_input.b, _wgslsmith_mult_vec3_i32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(~u_input.a, 2703u, 4294967295u), u_input.a), 1u)], global1[_wgslsmith_index_u32(select(12380u, global2.x, true), 1u)] >> (~abs(vec3<u32>(u_input.a, 0u, 0u)) % vec3<u32>(32u))), abs(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(global1[_wgslsmith_index_u32(0u, 1u)] >> (vec3<u32>(global2.x, 25227u, 104671u) % vec3<u32>(32u)), global1[_wgslsmith_index_u32(84357u, 1u)] ^ global1[_wgslsmith_index_u32(115426u, 1u)]), vec3<i32>(max(global4.x, 0i), global4.x, 5503i), global1[_wgslsmith_index_u32(~global2.x, 1u)])));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_div_f32(arg_2.x, -1905f))) * arg_2.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_1(vec4<bool>(true, false, false, true))).x) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1594f * arg_1.x))))));
    var var_2 = Struct_2(var_1);
    var var_3 = var_1;
    return abs(u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(func_5(_wgslsmith_div_vec2_i32(global4.yz, vec2<i32>(global4.x, global4.x)) >> (~vec2<u32>(0u, 25597u) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(func_1(!global3[_wgslsmith_index_u32(4294967295u, 20u)])), global0[_wgslsmith_index_u32(6074u, 12u)]), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, global4.x, global4.x, 2147483647i) ^ vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, global4.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(global4.x, global4.x, 32561i, u_input.b.x), vec4<i32>(u_input.b.x, 0i, global4.x, u_input.b.x), vec4<i32>(-1i, -19992i, u_input.b.x, -2147483647i))) & abs(-global4.x), 1i, 1i) & ~vec4<i32>(reverseBits(~(-5688i)), firstLeadingBit(select(u_input.b.x, -1i, false)), i32(-1i) * -2147483647i, global4.x);
    var var_1 = -global4.x;
    var var_2 = _wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a, 83559u), countOneBits(u_input.a)), _wgslsmith_sub_u32(global2.x, 4294967295u)) >> (_wgslsmith_add_u32(~43895u, global2.x) % 32u);
    var var_3 = u_input.b.x;
    var var_4 = ~countOneBits(select(9711u, 25335u, any(func_3(Struct_1(216f), vec2<bool>(false, true), vec3<f32>(-228f, -1310f, 139f), u_input.b.zx).ywz)));
    let var_5 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1208f)), 920f)));
    global1 = array<vec3<i32>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.a ^ 4294967295u, global2.x), _wgslsmith_mod_u32(abs(5304u), _wgslsmith_mod_u32(u_input.a, 12773u >> (0u % 32u))) | reverseBits(0u));
}

