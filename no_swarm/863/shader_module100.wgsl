struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 30>;

var<private> global1: u32 = 4294967295u;

var<private> global2: Struct_2;

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool) -> bool {
    var var_0 = firstTrailingBit(vec3<u32>(_wgslsmith_mod_u32(~u_input.a, u_input.a), 4895u, u_input.a));
    var_0 = vec3<u32>(4294967295u, _wgslsmith_div_u32(40025u, u_input.a), ~(_wgslsmith_sub_u32(u_input.a, 4294967295u) & ~1u));
    let var_1 = Struct_4(Struct_2(any(!(!global2.d)), global2.b, global2.c, vec4<bool>(u_input.b.x > -36940i, !(arg_0.x < 155f), ~var_0.x > 4294967295u, true)), Struct_2(true, Struct_1(-15782i), global2.c, select(!select(global2.d, vec4<bool>(true, arg_1, false, global2.a), vec4<bool>(global2.d.x, global2.d.x, false, false)), !select(vec4<bool>(arg_1, arg_1, false, true), vec4<bool>(true, global2.a, true, false), vec4<bool>(true, global2.a, global2.a, global2.d.x)), vec4<bool>(any(vec2<bool>(global2.d.x, global2.d.x)), global2.d.x, true, all(global2.d.yx)))));
    let var_2 = var_1;
    let var_3 = var_0.xx;
    return any(var_2.b.d.xwy);
}

fn func_2(arg_0: vec3<f32>, arg_1: f32) -> Struct_1 {
    global0 = array<vec3<f32>, 30>();
    global2 = Struct_2(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(233f, arg_0.x, arg_0.x, 447f)))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-111f, 315f, arg_0.x, -1268f) - vec4<f32>(arg_0.x, -956f, 1951f, arg_1))))), false), Struct_1(global3.a), global2.b, select(!select(vec4<bool>(global2.a, global2.d.x, global2.d.x, true), select(global2.d, vec4<bool>(global2.d.x, global2.a, global2.d.x, false), global2.a), select(vec4<bool>(global2.d.x, true, global2.d.x, global2.d.x), global2.d, global2.d)), vec4<bool>(any(!vec2<bool>(global2.d.x, global2.a)), all(global2.d), (global3.a >> (u_input.a % 32u)) == u_input.b.x, true), global2.d.x));
    global2 = Struct_2(!select(true, !(false && global2.d.x), global2.a), Struct_1(~(~(-2147483647i | global3.a))), Struct_1(~_wgslsmith_clamp_i32(2147483647i, u_input.b.x, 32773i) & -firstTrailingBit(24842i)), select(global2.d, vec4<bool>(!global2.d.x, global2.a & any(global2.d), true, !(!global2.d.x)), !(!any(global2.d.wx))));
    global0 = array<vec3<f32>, 30>();
    let var_0 = ~u_input.a;
    return global2.c;
}

fn func_1(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, ~9678u), ~u_input.a) << (_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, u_input.a)), _wgslsmith_add_vec2_u32(abs(vec2<u32>(77199u, 0u)), vec2<u32>(u_input.a, 4294967295u))) % 32u), u_input.a, ~_wgslsmith_sub_u32(4294967295u, u_input.a));
    var var_1 = -1i;
    let var_2 = true;
    var_1 = max(26963i, -1i);
    global1 = 4294967295u;
    return Struct_2(false, global2.c, func_2(global0[_wgslsmith_index_u32(2313u, 30u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1366f)))), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_1(!(!select(vec4<bool>(global2.a, global2.d.x, true, false), global2.d, global2.d.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1923f), 417f))));
    let var_1 = var_0.a.d;
    let var_2 = Struct_2(any(vec2<bool>(any(global2.d), any(select(vec3<bool>(var_0.a.a, false, true), vec3<bool>(global2.d.x, true, true), var_0.a.a)))), func_1(!vec4<bool>(true, global2.a, true, all(vec3<bool>(true, var_0.a.d.x, global2.a)))).c, func_1(!vec4<bool>(!var_1.x, global2.a, true, u_input.a < 0u)).b, !var_0.a.d);
    let var_3 = _wgslsmith_sub_u32(min(25127u, ~u_input.a), _wgslsmith_mod_u32(min(~u_input.a, _wgslsmith_div_u32(u_input.a, 19420u)) | (_wgslsmith_mult_u32(u_input.a, 4294967295u) | ~1u), ~max(1u, _wgslsmith_sub_u32(u_input.a, u_input.a))));
    let var_4 = true;
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(317f, var_0.b) - -119f), -1392f, var_4))));
    var var_6 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(step(1023f, _wgslsmith_div_f32(-367f, var_0.b))), _wgslsmith_f_op_f32(var_5 * _wgslsmith_f_op_f32(f32(-1f) * -1191f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3, -1102f);
}

