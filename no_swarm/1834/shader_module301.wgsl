struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(199f, 451f, -607f, 1000f);

var<private> global1: f32;

var<private> global2: array<u32, 29>;

var<private> global3: Struct_1 = Struct_1(35030u);

var<private> global4: array<Struct_1, 21>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<bool>) -> bool {
    let var_0 = vec3<bool>(1i > u_input.b.x, !(u_input.b.x < 2147483647i), !any(vec3<bool>(!arg_0.x, !arg_0.x, arg_0.x)));
    global3 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global3.a, 29u)], ~countOneBits(~(global3.a & global3.a))), 21u)];
    var var_1 = Struct_3(Struct_2(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.e, (u_input.d & u_input.d) | ~u_input.e), 21u)], vec2<u32>(global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(95079u, 29u)], 60382u), 29u)], firstLeadingBit(1u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)) + global0.wwz))), !vec3<bool>(all(vec2<bool>(false, var_0.x)), any(!var_0.zz), select(arg_0.x, any(var_0), arg_0.x)), 0u);
    var_1 = Struct_3(var_1.a, vec3<bool>(false, false, true), ~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d.x, u_input.e.x, 1u), firstTrailingBit(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(6215u, 29u)], 29u)], u_input.e.x, 4294967295u))), countOneBits(countOneBits(vec3<u32>(u_input.e.x, 4294967295u, 0u)))));
    let var_2 = Struct_3(Struct_2(Struct_1(firstTrailingBit(0u)), u_input.e, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(global0.ywx, vec3<f32>(-1476f, global0.x, -322f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.c.x, global0.x, -1403f) - vec3<f32>(274f, global0.x, var_1.a.c.x))))))), select(var_0, select(!(!var_0), var_1.b, any(vec4<bool>(arg_0.x, false, var_0.x, false)) & arg_0.x), !select(!var_1.b.x, any(var_1.b), false)), global3.a | 0u);
    return var_0.x;
}

fn func_2(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = !any(arg_0.b.xx);
    let var_1 = all(vec3<bool>(select(arg_0.b.x, arg_0.a.c.x < _wgslsmith_f_op_f32(-arg_0.a.c.x), 1167f > _wgslsmith_f_op_f32(-global0.x)), !func_3(vec2<bool>(true, var_0)), true));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), -2131f) + -585f), arg_0.a.c.x, global0.x, _wgslsmith_f_op_f32(-arg_0.a.c.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(global0.www, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, global0.x, 355f), arg_0.a.c)), arg_0.b.x))))));
    global4 = array<Struct_1, 21>();
    return _wgslsmith_clamp_vec4_u32(~select(~vec4<u32>(arg_2.a, arg_2.a, 4294967295u, global3.a), max(vec4<u32>(1u, u_input.a, 34576u, arg_0.a.a.a), vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], u_input.d.x, u_input.e.x)), !arg_1.x) ^ ~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, u_input.e.x), 29u)], 29u)], global2[_wgslsmith_index_u32(u_input.c, 29u)], arg_0.c, 1u), select(vec4<u32>(_wgslsmith_sub_u32(arg_0.c, 30794u), ~(~1u), countOneBits(select(11555u, arg_0.c, false)), 44263u), vec4<u32>(arg_0.c, ~(~arg_0.c), arg_2.a, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 25283u, global3.a), vec4<u32>(global3.a, 3175u, u_input.c, arg_0.a.b.x))), true), ~max(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.c, arg_0.a.a.a, arg_0.a.a.a, 19274u), vec4<u32>(global2[_wgslsmith_index_u32(50376u, 29u)], 4294967295u, 0u, global3.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, arg_2.a, 1u, 4294967295u), vec4<u32>(4294967295u, 19317u, 39844u, 0u))), vec4<u32>(~arg_2.a, 1u, max(14034u, arg_0.a.a.a), 29715u)));
}

fn func_1(arg_0: bool) -> Struct_3 {
    var var_0 = Struct_1(min(_wgslsmith_dot_vec4_u32(firstLeadingBit(func_2(Struct_3(Struct_2(global4[_wgslsmith_index_u32(4294967295u, 21u)], u_input.e, global0.wzy), vec3<bool>(arg_0, arg_0, true), u_input.a), vec4<bool>(arg_0, arg_0, arg_0, true), Struct_1(53208u))), vec4<u32>(~global3.a, ~u_input.c, global2[_wgslsmith_index_u32(u_input.e.x >> (global2[_wgslsmith_index_u32(3028u, 29u)] % 32u), 29u)], ~21914u)), _wgslsmith_add_u32(global2[_wgslsmith_index_u32(min(~u_input.c, global2[_wgslsmith_index_u32(0u, 29u)]), 29u)], 1u)));
    var var_1 = i32(-1i) * -(~_wgslsmith_sub_i32(select(u_input.b.x, -68005i, arg_0), -1i));
    let var_2 = 4580i;
    var var_3 = ~firstTrailingBit(_wgslsmith_clamp_u32(~global2[_wgslsmith_index_u32(73253u, 29u)], var_0.a, global3.a)) & _wgslsmith_sub_u32(u_input.e.x, max(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(u_input.c, 29u)], global2[_wgslsmith_index_u32(1u, 29u)], 0u) >> (_wgslsmith_add_u32(global3.a, var_0.a) % 32u), ~(~u_input.c)));
    global3 = global4[_wgslsmith_index_u32(1u, 21u)];
    return Struct_3(Struct_2(global4[_wgslsmith_index_u32(min(_wgslsmith_add_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(23733u, 29u)], global3.a), 1u), var_0.a & u_input.a), 21u)], u_input.d, global0.wzz), select(vec3<bool>(arg_0, any(vec4<bool>(arg_0, arg_0, arg_0, false)) && true, any(select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(true, arg_0, false, arg_0), arg_0))), !select(vec3<bool>(true, true, false), !vec3<bool>(true, arg_0, false), true), true), ~global3.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0.x;
    var var_0 = func_1(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))) && true);
    var var_1 = vec2<bool>(select(all(var_0.b.xz), var_0.b.x, -258f == _wgslsmith_f_op_f32(abs(var_0.a.c.x))), !(_wgslsmith_clamp_u32(global3.a >> (global2[_wgslsmith_index_u32(global3.a, 29u)] % 32u), 4294967295u, var_0.a.b.x) < _wgslsmith_dot_vec4_u32(~vec4<u32>(39116u, u_input.a, global3.a, global2[_wgslsmith_index_u32(4294967295u, 29u)]), select(vec4<u32>(4031u, 0u, 30044u, global3.a), vec4<u32>(4294967295u, 39191u, 4294967295u, global2[_wgslsmith_index_u32(2380u, 29u)]), var_0.b.x))));
    let var_2 = global4[_wgslsmith_index_u32(~16184u, 21u)];
    var var_3 = var_0.a;
    var_1 = !vec2<bool>(var_1.x, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~_wgslsmith_div_u32(~var_0.c, 2093u), _wgslsmith_sub_u32(~_wgslsmith_mult_u32(var_3.a.a, global2[_wgslsmith_index_u32(var_0.a.b.x, 29u)]), _wgslsmith_dot_vec2_u32(var_3.b, u_input.d))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global0.wx))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(var_3.c.x, var_3.c.x)), global0.x))));
}

