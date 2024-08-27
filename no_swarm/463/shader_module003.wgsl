struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 0u, 737u);

var<private> global1: array<i32, 28> = array<i32, 28>(-43544i, -1i, -1i, 0i, -1i, i32(-2147483648), 18132i, 56512i, -1i, -13881i, 0i, 40695i, 0i, 48417i, -1i, -76082i, i32(-2147483648), 2250i, 17849i, 2147483647i, 1i, 0i, 1i, -32804i, -9072i, i32(-2147483648), 0i, 1i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> i32 {
    global0 = vec3<u32>(~reverseBits(~max(global0.x, 0u)), 4744u, _wgslsmith_dot_vec3_u32(vec3<u32>(~abs(39260u), ~(~4294967295u), firstLeadingBit(u_input.a.x)), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a.wwz, u_input.a.zww), u_input.a.yxx), _wgslsmith_mod_vec3_u32(~vec3<u32>(0u, 4294967295u, global0.x), abs(vec3<u32>(u_input.a.x, u_input.a.x, arg_0))))));
    global1 = array<i32, 28>();
    let var_0 = -2147483647i;
    var var_1 = ~global0.x;
    let var_2 = arg_2.d;
    return 1i;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec4<i32>) -> bool {
    var var_0 = global0.zx;
    var var_1 = arg_2.x;
    var var_2 = Struct_1(true, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) * arg_1.b.x)), arg_1.b.x), !arg_1.c, -func_3(u_input.a.x, ~(-2104i), Struct_1(arg_1.c.x, arg_1.b, arg_1.c, -7788i), arg_1.a) >> (~min(~u_input.a.x, ~u_input.a.x) % 32u));
    var var_3 = global0.x;
    let var_4 = arg_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.b.x)))) <= -2208f;
}

fn func_1() -> vec2<bool> {
    var var_0 = Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-3233f, 550f), vec2<f32>(752f, 810f))))), vec4<bool>(false, true, !func_2(vec2<i32>(42748i, global1[_wgslsmith_index_u32(64715u, 28u)]), Struct_1(true, vec2<f32>(1153f, -561f), vec4<bool>(true, true, true, true), global1[_wgslsmith_index_u32(0u, 28u)]), vec4<i32>(global1[_wgslsmith_index_u32(83817u, 28u)], -1i, global1[_wgslsmith_index_u32(u_input.a.x, 28u)], -29463i)) & (false & all(vec3<bool>(false, true, true))), func_2(vec2<i32>(abs(global1[_wgslsmith_index_u32(global0.x, 28u)]), ~global1[_wgslsmith_index_u32(global0.x, 28u)]), Struct_1(true, vec2<f32>(1f, 1f), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), false), 31628i), countOneBits(-vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 28u)], global1[_wgslsmith_index_u32(7141u, 28u)], -2147483647i, global1[_wgslsmith_index_u32(4294967295u, 28u)])))), ~(-2147483647i));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-105f, var_0.b.x), var_0.b.x)) - var_0.b.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_0.b.x, var_0.b.x))))))), _wgslsmith_f_op_f32(-var_0.b.x));
    return select(var_0.c.yx, !var_0.c.wy, var_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(all(!select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true), true)), all(select(func_1(), vec2<bool>(true, true), any(vec4<bool>(false, false, false, true)))), true, all(!select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), true)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -126f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(302f - 400f) + _wgslsmith_f_op_f32(sign(-528f)))));
    let var_2 = Struct_1(!(!all(!vec2<bool>(var_0.x, var_0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1, var_1), _wgslsmith_div_vec2_f32(vec2<f32>(var_1, -379f), vec2<f32>(var_1, 1181f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1671f, _wgslsmith_f_op_f32(f32(-1f) * -488f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, 963f) * vec2<f32>(1201f, var_1)))), select(var_0, !(!select(vec4<bool>(false, false, true, var_0.x), var_0, vec4<bool>(var_0.x, var_0.x, true, true))), select(var_0, !vec4<bool>(var_0.x, var_0.x, false, false), select(!vec4<bool>(var_0.x, false, var_0.x, var_0.x), select(var_0, var_0, vec4<bool>(var_0.x, false, false, false)), any(var_0.zx)))), global1[_wgslsmith_index_u32(~(~9406u), 28u)]);
    global1 = array<i32, 28>();
    global0 = u_input.a.zyz;
    global1 = array<i32, 28>();
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.b));
    let var_4 = -var_2.d;
    let x = u_input.a;
    s_output = StorageBuffer(select(min(-_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 37852i, 17785i), vec3<i32>(-2491i, global1[_wgslsmith_index_u32(1u, 28u)], 1i)), vec3<i32>(i32(-1i) * -2147483647i, i32(-1i) * -1i, -6407i)), ~(max(vec3<i32>(1i, var_2.d, 1i), vec3<i32>(15851i, 1i, var_2.d)) ^ firstLeadingBit(vec3<i32>(-2147483647i, 0i, -31878i))), !var_2.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(854f)), var_1, var_2.b.x)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1833f, 1761f, var_3.x) * vec3<f32>(var_2.b.x, var_3.x, var_3.x))))))), 4294967295u);
}

