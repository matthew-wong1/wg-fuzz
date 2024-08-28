struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: vec4<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20> = array<u32, 20>(3632u, 1u, 5485u, 43234u, 1u, 0u, 54224u, 0u, 25093u, 5205u, 23115u, 50450u, 31113u, 4294967295u, 1u, 48942u, 31647u, 0u, 1u, 4294967295u);

var<private> global1: array<bool, 30>;

var<private> global2: array<vec3<i32>, 22> = array<vec3<i32>, 22>(vec3<i32>(4243i, i32(-2147483648), 4181i), vec3<i32>(-5074i, 18344i, 27181i), vec3<i32>(1i, -35432i, -12600i), vec3<i32>(0i, 0i, 46462i), vec3<i32>(31492i, 0i, 19447i), vec3<i32>(-16965i, 43477i, i32(-2147483648)), vec3<i32>(51237i, -13609i, 0i), vec3<i32>(6395i, 2147483647i, -1i), vec3<i32>(2147483647i, i32(-2147483648), 1i), vec3<i32>(30962i, -1i, 4018i), vec3<i32>(-59002i, 1i, -1i), vec3<i32>(61562i, -31851i, 0i), vec3<i32>(0i, -16118i, -41997i), vec3<i32>(0i, 1i, -20766i), vec3<i32>(-31441i, 35782i, 21842i), vec3<i32>(47132i, i32(-2147483648), -10403i), vec3<i32>(1i, 62594i, -1i), vec3<i32>(1i, -5421i, -1906i), vec3<i32>(1i, -28693i, 0i), vec3<i32>(1i, -16014i, 1i), vec3<i32>(i32(-2147483648), -16538i, -1i), vec3<i32>(2147483647i, 21354i, 1i));

var<private> global3: Struct_2;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: vec2<i32>, arg_3: Struct_2) -> i32 {
    return -_wgslsmith_add_i32(-19491i, arg_3.a.a);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: bool) -> bool {
    var var_0 = Struct_1(_wgslsmith_mult_i32(i32(-1i) * -2147483647i, global3.a.e.x), arg_1.a.b, !(any(select(global3.a.d.xx, vec2<bool>(false, false), global3.a.d.xx)) || true), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 30u)], (arg_1.a.e.x != arg_0) | (!global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40887u, 20u)], 30u)] & (2147483647i == global3.a.e.x)), !any(!vec4<bool>(true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(70482u, 20u)], 30u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 20u)], 30u)], arg_1.a.c))), abs(vec3<i32>(16565i, _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_0, 1i, arg_0), arg_1.a.e), arg_1.a.e.x)));
    return 75472u != u_input.b.x;
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    var var_0 = vec4<bool>(!func_4(_wgslsmith_mult_i32(func_3(vec3<f32>(arg_2.b, 1082f, 1919f), vec3<u32>(0u, global0[_wgslsmith_index_u32(u_input.b.x, 20u)], u_input.b.x), vec2<i32>(-2147483647i, arg_2.a), Struct_2(global3.a)), 0i), Struct_2(arg_2), select(any(arg_0.zz), true, false)), false, !(true && all(!arg_2.d)), any(vec3<bool>(false, global3.a.c, all(global3.a.d.wx))));
    global2 = array<vec3<i32>, 22>();
    return Struct_1(~select(_wgslsmith_mod_i32(u_input.c.x, 2147483647i), func_3(vec3<f32>(-1225f, global3.a.b, 1000f), vec3<u32>(21630u, 1u, global0[_wgslsmith_index_u32(34138u, 20u)]), u_input.c, Struct_2(Struct_1(-4797i, -253f, false, global3.a.d, global2[_wgslsmith_index_u32(65039u, 22u)]))), !global3.a.d.x) ^ 0i, 373f, true, !arg_2.d, min(~_wgslsmith_div_vec3_i32(global3.a.e, global3.a.e), vec3<i32>(arg_2.e.x, u_input.a, _wgslsmith_sub_i32(~(-1i), -54180i))));
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = _wgslsmith_sub_u32(1u, 0u);
    var var_1 = global3.a.d.x;
    global0 = array<u32, 20>();
    var var_2 = -25144i;
    var var_3 = Struct_2(func_2(vec3<bool>(!all(vec2<bool>(true, false)), false, !global3.a.c), u_input.c.x >> (var_0 % 32u), Struct_1(u_input.a, global3.a.b, true, !(!global3.a.d), vec3<i32>(select(-64530i, u_input.c.x, true), firstTrailingBit(39452i), firstLeadingBit(global3.a.e.x))), _wgslsmith_f_op_f32(global3.a.b + global3.a.b)));
    return -24206i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(0i);
    var var_1 = global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 20u)], 30u)] & true;
    var_1 = func_4(_wgslsmith_add_i32(u_input.d, ~((17791i | global3.a.e.x) << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 20u)], 20u)] % 32u))), Struct_2(Struct_1(var_0, global3.a.b, ~global0[_wgslsmith_index_u32(u_input.b.x, 20u)] < global0[_wgslsmith_index_u32(~1u, 20u)], select(!vec4<bool>(true, true, true, global3.a.d.x), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 30u)], false, global3.a.d.x, true), any(vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 30u)]))), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(68616u, 20u)], 22u)])), any(vec4<bool>(any(!vec3<bool>(true, true, global3.a.d.x)), !(75310u >= u_input.b.x), false, any(global3.a.d.zx))));
    var var_2 = 0u;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -494f), -349f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(248f, global3.a.b)), _wgslsmith_f_op_f32(f32(-1f) * -894f))), _wgslsmith_div_f32(-110f, _wgslsmith_f_op_f32(global3.a.b * 706f)))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-251f + global3.a.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-794f - -780f)));
    var var_4 = func_2(global3.a.d.xwz, var_0, global3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-656f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1104f))))));
    let var_5 = _wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(select(vec4<i32>(var_0, var_4.a, -48331i, var_0), select(vec4<i32>(2147483647i, -54748i, -19327i, -1i), vec4<i32>(1i, -2147483647i, -1i, -2147483647i), global3.a.c), select(global3.a.d, vec4<bool>(false, true, global3.a.d.x, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(57480u, 20u)], 30u)]), vec4<bool>(global3.a.d.x, false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], 30u)], false))), vec4<i32>(max(var_4.e.x, u_input.a), 0i, _wgslsmith_mult_i32(-1i, -2147483647i), -var_4.e.x), select(~vec4<i32>(var_4.e.x, 0i, 1i, var_0), abs(vec4<i32>(global3.a.a, 1i, -2147483647i, 3821i)), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 30u)], var_4.c, global3.a.c, false))), vec4<i32>(_wgslsmith_add_i32(global3.a.e.x, ~(-1i)), _wgslsmith_add_i32(var_4.a, max(-1i, var_0)) | abs(_wgslsmith_sub_i32(11175i, 2147483647i)), select(-firstTrailingBit(0i), ~global3.a.a, global3.a.c), 2147483647i));
    let var_6 = func_2(vec3<bool>(false, var_4.d.x, global3.a.d.x), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(global3.a.a, 2147483647i, -13263i), var_4.e), global3.a.a), global3.a, 1000f);
    let x = u_input.a;
    s_output = StorageBuffer(max(vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b, ~u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(u_input.b.x, 20u)], 12205u), ~vec4<u32>(u_input.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 20u)], 0u, 0u)), 4294967295u), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(16828u, 0u, global0[_wgslsmith_index_u32(5330u, 20u)]), vec3<u32>(u_input.b.x, u_input.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 20u)])), ~global0[_wgslsmith_index_u32(u_input.b.x, 20u)]), 44617u, firstTrailingBit(max(u_input.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 20u)])))));
}

