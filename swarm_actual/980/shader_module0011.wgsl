struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 25> = array<vec3<i32>, 25>(vec3<i32>(6712i, -29741i, -1i), vec3<i32>(25739i, 0i, -23462i), vec3<i32>(-7044i, 75160i, i32(-2147483648)), vec3<i32>(-21124i, 0i, 5066i), vec3<i32>(1i, -1i, 62956i), vec3<i32>(33834i, -1i, 20692i), vec3<i32>(31180i, -23557i, 52267i), vec3<i32>(35389i, 0i, 1i), vec3<i32>(56789i, -4978i, -30265i), vec3<i32>(2147483647i, -9997i, 0i), vec3<i32>(-20601i, i32(-2147483648), 0i), vec3<i32>(-1i, i32(-2147483648), 56094i), vec3<i32>(0i, -14668i, i32(-2147483648)), vec3<i32>(-15887i, 0i, 0i), vec3<i32>(i32(-2147483648), 41919i, 14938i), vec3<i32>(-21185i, -45049i, -23448i), vec3<i32>(2147483647i, 1i, -38330i), vec3<i32>(32199i, -37399i, 2147483647i), vec3<i32>(1i, 6805i, -1i), vec3<i32>(23073i, -9849i, 1i), vec3<i32>(24963i, i32(-2147483648), -10422i), vec3<i32>(i32(-2147483648), -10844i, 32758i), vec3<i32>(1i, 0i, 2147483647i), vec3<i32>(i32(-2147483648), 19391i, 0i), vec3<i32>(32585i, 2147483647i, 2147483647i));

var<private> global1: Struct_1;

var<private> global2: array<f32, 12> = array<f32, 12>(372f, -855f, -677f, -2380f, 1668f, 828f, -316f, -1000f, 845f, -945f, 115f, -1431f);

var<private> global3: array<i32, 1> = array<i32, 1>(0i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    return ~(1i & -global1.c.x);
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> u32 {
    global2 = array<f32, 12>();
    var var_0 = ~u_input.a.xyw;
    let var_1 = true;
    var var_2 = Struct_1(arg_2.a, vec4<i32>(1i, 1i, _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.c.x, -2489i), vec2<i32>(global1.b.x, var_0.x)), i32(-1i) * -1i), _wgslsmith_div_i32(~(-9588i), select(arg_2.b.x, 19403i, true))), ~global1.c.x), _wgslsmith_add_vec2_i32(vec2<i32>(-countOneBits(0i), arg_2.b.x), vec2<i32>(u_input.a.x | ~2147483647i, func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, global1.d.x, -1594f, -815f) * vec4<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 12u)], global2[_wgslsmith_index_u32(global1.e.x, 12u)], global1.d.x, arg_2.d.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(arg_3, 12u)], _wgslsmith_f_op_f32(step(global1.d.x, _wgslsmith_f_op_f32(ceil(arg_1)))), _wgslsmith_div_f32(-543f, 1426f))), u_input.b.zy);
    return min(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(31157u, arg_2.e.x, 1u, 105250u), vec4<u32>(u_input.b.x, u_input.b.x, 15713u, global1.a.x)) << ((arg_0 >> (5249u % 32u)) % 32u), global1.e.x) << (min(4294967295u, ~global1.e.x) % 32u), global1.a.x);
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: i32) -> Struct_1 {
    let var_0 = vec3<u32>(u_input.b.x, 4294967295u, _wgslsmith_add_u32(func_2(_wgslsmith_add_u32(139604u, 724u), -496f, Struct_1(vec3<u32>(u_input.b.x, 11002u, u_input.b.x), ~u_input.a, u_input.a.xy, _wgslsmith_f_op_vec3_f32(abs(global1.d)), global1.a.zx), ~_wgslsmith_div_u32(12827u, 58428u)), min(func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, u_input.b.x, 103753u, 1u), vec4<u32>(global1.a.x, 0u, global1.a.x, 4294967295u)), _wgslsmith_f_op_f32(f32(-1f) * -958f), Struct_1(vec3<u32>(arg_1, u_input.b.x, global1.a.x), u_input.a, u_input.a.wz, global1.d, u_input.b.xz), u_input.b.x), _wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_1, arg_1), arg_1))));
    var var_1 = !(!all(!select(vec2<bool>(true, true), vec2<bool>(false, true), true)));
    var var_2 = vec4<u32>(max(~65981u, ~_wgslsmith_add_u32(arg_1, var_0.x)), 12130u, ~var_0.x, _wgslsmith_add_u32(~arg_1, countOneBits(4294967295u)));
    var var_3 = !((var_2.x > 1u) && !select(false, true, false));
    var_1 = true;
    return Struct_1(~u_input.b, firstLeadingBit(~global1.b), firstLeadingBit(global1.b.ww), _wgslsmith_f_op_vec3_f32(global1.d - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(global1.d, global1.d)))), var_2.zx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~abs(select(vec3<i32>(-41566i, 46704i, -1i), global0[_wgslsmith_index_u32(1u, 25u)], select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)))), u_input.b.x, -52843i);
    global2 = array<f32, 12>();
    global2 = array<f32, 12>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-988f, 172f)), _wgslsmith_f_op_f32(f32(-1f) * -1047f))) + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(44302u ^ var_0.a.x, 12u)] - _wgslsmith_f_op_f32(f32(-1f) * -284f))), _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(1u, 12u)], global1.d.x, all(vec4<bool>(true, true, true, true)))), global1.d.x, 1080f));
    let var_2 = select(vec3<bool>(all(vec4<bool>(any(vec4<bool>(true, false, true, false)), true, true, false)), all(vec2<bool>(any(vec4<bool>(false, false, false, false)), true)), true), vec3<bool>(true, true, true), false);
    let x = u_input.a;
    s_output = StorageBuffer(~(~min(min(vec4<u32>(10824u, 833u, 43435u, u_input.b.x), vec4<u32>(4294967295u, 4294967295u, 0u, 39789u)), vec4<u32>(23880u, var_0.a.x, var_0.e.x, 29243u) >> (vec4<u32>(19934u, var_0.e.x, 0u, 102724u) % vec4<u32>(32u)))), -u_input.a.xww);
}

