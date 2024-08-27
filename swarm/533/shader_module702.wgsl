struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<f32, 32>;

var<private> global2: i32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: Struct_3) -> i32 {
    let var_0 = vec3<bool>(!arg_2.a.d.x, !arg_3.c.a.c, any(!select(arg_3.c.a.d, select(arg_2.a.d, vec4<bool>(arg_3.c.a.c, arg_2.a.d.x, arg_2.a.c, arg_3.c.a.d.x), global0.a), !arg_3.c.a.d.x)));
    var var_1 = vec4<i32>(~abs(1i), 45726i, firstLeadingBit(min(25215i, -abs(32293i))), ~(i32(-1i) * -min(-2111i, -1i)));
    let var_2 = vec2<bool>(true, _wgslsmith_f_op_f32(-arg_1.x) > -348f);
    var var_3 = 1000f >= arg_1.x;
    var var_4 = arg_3;
    return var_1.x;
}

fn func_2(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: f32, arg_3: bool) -> vec4<f32> {
    let var_0 = arg_0.c.a.d;
    global0 = Struct_4(!arg_0.c.a.d);
    let var_1 = vec4<i32>(~(-1i ^ _wgslsmith_dot_vec4_i32(-vec4<i32>(1355i, 2147483647i, -2147483647i, 38110i), ~vec4<i32>(-14104i, -2147483647i, -1i, 1i))), -32798i, ~(~func_3(u_input.a.x, vec2<f32>(-781f, -678f), arg_0.c, Struct_3(arg_0.b.x, vec2<u32>(28655u, 4294967295u), Struct_2(arg_0.c.a, 0u)))) & -1i, -2147483647i);
    let var_2 = 1u;
    global1 = array<f32, 32>();
    return arg_1;
}

fn func_1(arg_0: f32, arg_1: Struct_4, arg_2: vec2<i32>) -> vec2<bool> {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_3(1u, u_input.a.xy, Struct_2(Struct_1(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, 21336u, u_input.a.x, u_input.a.x), false, global0.a), 4294967295u)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, global1[_wgslsmith_index_u32(u_input.a.x, 32u)], -691f, 866f), vec4<f32>(arg_0, global1[_wgslsmith_index_u32(4294967295u, 32u)], -362f, arg_0), vec4<bool>(arg_1.a.x, true, true, false))), -1374f, any(vec4<bool>(global0.a.x, arg_1.a.x, global0.a.x, global0.a.x))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-319f * global1[_wgslsmith_index_u32(u_input.a.x, 32u)]), arg_0, _wgslsmith_f_op_f32(f32(-1f) * -2363f), arg_0))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], global1[_wgslsmith_index_u32(u_input.a.x, 32u)], arg_0, 1567f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1211f, 228f, 568f, 479f), vec4<f32>(arg_0, -1498f, 1047f, -772f)))))));
    return global0.a.xw;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !all(func_1(879f, Struct_4(global0.a), ~_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(16609i, 15322i))));
    let var_1 = -2329i;
    var_0 = !(!any(!global0.a.ywy));
    var var_2 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~min(vec4<u32>(0u, u_input.a.x, 1u, u_input.a.x), select(vec4<u32>(u_input.a.x, 4294967295u, 22468u, 44805u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), true)), ~(~vec4<u32>(0u, u_input.a.x, 4294967295u, 26552u))), 32u)] - global1[_wgslsmith_index_u32(min(~1u, ~(~u_input.a.x)) >> (u_input.a.x % 32u), 32u)]);
    let var_3 = Struct_2(Struct_1(vec4<u32>(~u_input.a.x, 66690u | u_input.a.x, 31072u, u_input.a.x >> (u_input.a.x % 32u)) ^ _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, 34282u, 26687u, 15434u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 8692u), vec4<u32>(4294967295u, 0u, 0u, u_input.a.x), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 63443u))), vec4<u32>(4294967295u, 1u, _wgslsmith_mult_u32(4294967295u, 1u), 1u), any(!(!vec3<bool>(global0.a.x, global0.a.x, false))), vec4<bool>(global0.a.x, any(vec3<bool>(global0.a.x, true, true)), global0.a.x, any(select(vec2<bool>(true, global0.a.x), global0.a.zz, false)))), 32382u);
    global2 = ~(-24030i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(473f, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(38821u, ~var_3.a.a.x), 32u)])));
}

