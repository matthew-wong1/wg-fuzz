struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29> = array<i32, 29>(-47198i, i32(-2147483648), -40857i, i32(-2147483648), -14866i, 46384i, 2147483647i, -43134i, 2147483647i, -1i, 22494i, -29201i, 0i, 14080i, 2147483647i, -45247i, 2147483647i, 9784i, 0i, 2147483647i, -11086i, 21890i, 1i, 1480i, i32(-2147483648), 1i, 14464i, 28302i, 2147483647i);

var<private> global1: u32 = 78605u;

var<private> global2: u32 = 1u;

var<private> global3: f32 = 1299f;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec4<u32>) -> bool {
    var var_0 = select(-reverseBits(0i), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(89142u, _wgslsmith_add_u32(~u_input.c.x, firstLeadingBit(u_input.e)) | _wgslsmith_mod_u32(u_input.c.x | 0u, ~arg_2.x)), 29u)], !(any(select(arg_0.b.b.yx, vec2<bool>(arg_0.b.b.x, true), arg_0.b.b.x)) | arg_0.b.b.x));
    let var_1 = _wgslsmith_mult_u32(min(~0u, ~(~0u | _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(329u, 15471u, arg_2.x, 15204u)))), (firstLeadingBit(~arg_2.x) << (u_input.a.x % 32u)) >> ((_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_2.x, 1u), u_input.a.xz), ~vec2<u32>(u_input.e, arg_2.x)) | u_input.a.x) % 32u));
    var_0 = ~global0[_wgslsmith_index_u32(~firstTrailingBit(~arg_2.x), 29u)];
    let var_2 = any(!select(vec4<bool>(select(arg_0.b.b.x, false, false), any(vec4<bool>(true, false, arg_0.b.b.x, false)), any(vec3<bool>(arg_0.b.b.x, false, arg_0.b.b.x)), arg_0.b.b.x), vec4<bool>(u_input.c.x <= 0u, true, true | arg_0.b.b.x, true), select(!vec4<bool>(true, arg_0.b.b.x, true, arg_0.b.b.x), !vec4<bool>(false, arg_0.b.b.x, false, arg_0.b.b.x), select(vec4<bool>(arg_0.b.b.x, arg_0.b.b.x, true, arg_0.b.b.x), vec4<bool>(true, arg_0.b.b.x, arg_0.b.b.x, false), vec4<bool>(arg_0.b.b.x, arg_0.b.b.x, arg_0.b.b.x, true)))));
    var var_3 = _wgslsmith_f_op_f32(round(-507f));
    return any(select(!(!vec3<bool>(arg_0.b.b.x, false, true)), vec3<bool>(all(vec2<bool>(arg_0.b.b.x, true)) | false, u_input.d.x != (global0[_wgslsmith_index_u32(4294967295u, 29u)] | u_input.b), var_2), !all(vec3<bool>(false, var_2, var_2))));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> bool {
    var var_0 = false;
    var var_1 = u_input.a ^ vec4<u32>(u_input.c.x, ~23979u | firstLeadingBit(arg_2), countOneBits(51676u), _wgslsmith_add_u32(4294967295u, arg_2));
    let var_2 = select(vec4<bool>(false, all(vec4<bool>(arg_1.b.x, false, true, !arg_1.b.x)), true, !func_3(Struct_2(-1294f, arg_1), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 116f, arg_0, 285f)), select(vec4<u32>(var_1.x, var_1.x, arg_2, arg_2), vec4<u32>(u_input.c.x, 12321u, 39378u, 0u), arg_1.b.x))), select(vec4<bool>(any(select(arg_1.b.xy, arg_1.b.xy, arg_1.b.x)), all(select(vec4<bool>(arg_1.b.x, true, arg_1.b.x, false), vec4<bool>(false, true, arg_1.b.x, arg_1.b.x), arg_1.b.x)), _wgslsmith_div_f32(arg_0, 1842f) != arg_0, true), vec4<bool>(arg_1.b.x, select(arg_1.b.x && false, arg_1.b.x, select(arg_1.b.x, true, false)), false, _wgslsmith_f_op_f32(-arg_0) > _wgslsmith_f_op_f32(-arg_0)), select(!vec4<bool>(false, arg_1.b.x, false, false), !vec4<bool>(arg_1.b.x, arg_1.b.x, false, arg_1.b.x), select(select(vec4<bool>(arg_1.b.x, false, arg_1.b.x, arg_1.b.x), vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, true), false), !vec4<bool>(arg_1.b.x, arg_1.b.x, false, false), arg_1.b.x))), func_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-562f))), Struct_1(select(13704i, arg_1.a, false), arg_1.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(667f, -1000f, arg_0, 1287f) - vec4<f32>(194f, 1357f, arg_0, 1398f)) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, -358f, arg_0, -690f), vec4<f32>(-1838f, 695f, 586f, arg_0))) - vec4<f32>(_wgslsmith_f_op_f32(-arg_0), 1f, arg_0, -2475f)), vec4<u32>(~firstTrailingBit(21323u), arg_2, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.x, u_input.c.x), vec3<u32>(arg_2, var_1.x, 4294967295u)), _wgslsmith_add_u32(var_1.x, 43121u)), 93904u)));
    var var_3 = ~var_1.x;
    let var_4 = arg_1;
    return true;
}

fn func_1(arg_0: vec4<u32>) -> bool {
    global1 = ~arg_0.x;
    global1 = reverseBits(_wgslsmith_sub_u32(u_input.a.x, u_input.c.x));
    global0 = array<i32, 29>();
    let var_0 = vec2<bool>(false, all(select(vec2<bool>(true, func_2(-857f, Struct_1(-7435i, vec3<bool>(true, false, false)), 49085u)), vec2<bool>(true, true), !all(vec4<bool>(true, true, true, false)))));
    var var_1 = ~(~(u_input.e | _wgslsmith_div_u32(56867u, arg_0.x)));
    return _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(arg_0.zyw, countOneBits(arg_0.zxz)), u_input.e) == u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.a ^ firstLeadingBit(firstTrailingBit(u_input.a)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1212f, -918f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(737f * -590f)))))), Struct_1(_wgslsmith_dot_vec4_i32(u_input.d, u_input.d), !select(select(vec3<bool>(true, var_0, var_0), vec3<bool>(var_0, var_0, var_0), var_0), select(vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, var_0, var_0), var_0), select(vec3<bool>(false, var_0, false), vec3<bool>(var_0, false, var_0), vec3<bool>(var_0, var_0, false)))));
    var var_2 = vec4<f32>(-813f, 105f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + _wgslsmith_f_op_f32(-var_1.a)))), _wgslsmith_f_op_f32(915f * var_1.a));
    let var_3 = var_1.b;
    var_2 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -1366f) * _wgslsmith_f_op_f32(-var_2.x)), var_1.a)), var_2.x, _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(543f - var_1.a)))));
    let var_4 = var_1.b;
    let var_5 = _wgslsmith_clamp_u32(~13384u, _wgslsmith_dot_vec3_u32(max(u_input.a.xzw, _wgslsmith_div_vec3_u32(u_input.a.zyz, vec3<u32>(u_input.a.x, u_input.e, 0u))), ~(u_input.c & u_input.c)), 15560u) <= _wgslsmith_div_u32(28763u, ~(~_wgslsmith_mult_u32(u_input.e, 1u)));
    var var_6 = _wgslsmith_sub_vec2_i32(vec2<i32>(select(-2147483647i, abs(-43780i), var_1.b.b.x), ~global0[_wgslsmith_index_u32(u_input.a.x, 29u)]), ~(-vec2<i32>(global0[_wgslsmith_index_u32(1u, 29u)], var_4.a)));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, var_1.b.a, global0[_wgslsmith_index_u32(u_input.c.x, 29u)]);
}

