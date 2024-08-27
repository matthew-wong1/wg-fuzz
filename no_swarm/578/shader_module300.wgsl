struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, true), false, i32(-2147483648), vec3<f32>(-987f, 1000f, -990f));

var<private> global1: array<u32, 4> = array<u32, 4>(0u, 27545u, 0u, 28357u);

var<private> global2: vec2<u32> = vec2<u32>(0u, 1u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3) -> vec3<f32> {
    global0 = Struct_1(global0.a, true, global0.c, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1176f, -1565f, global0.d.x))))))));
    let var_0 = select(!vec3<bool>(true, false, arg_0.a), vec3<bool>(true, any(select(!vec4<bool>(true, arg_0.a, global0.b, arg_0.a), !vec4<bool>(true, true, arg_0.a, global0.b), all(vec2<bool>(false, false)))), arg_0.a), !(min(99466u, _wgslsmith_div_u32(0u, global1[_wgslsmith_index_u32(4294967295u, 4u)])) < _wgslsmith_clamp_u32(~global1[_wgslsmith_index_u32(0u, 4u)], u_input.a.x, 4294967295u)));
    global0 = Struct_1(select(select(!global0.a, select(!vec2<bool>(var_0.x, arg_0.a), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, global0.a.x)), any(vec3<bool>(false, arg_0.a, true))), !(!vec2<bool>(global0.a.x, arg_0.a))), select(global0.a, vec2<bool>(!var_0.x, any(vec4<bool>(true, global0.a.x, false, false))), !all(global0.a)), !select(select(vec2<bool>(var_0.x, var_0.x), var_0.xy, vec2<bool>(false, global0.b)), select(vec2<bool>(false, arg_0.a), var_0.xx, true), !global0.a)), any(select(!vec3<bool>(global0.b, var_0.x, false), vec3<bool>(global1[_wgslsmith_index_u32(global2.x, 4u)] >= 4912u, any(var_0), var_0.x), global0.c == 2147483647i)), -_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global0.c ^ global0.c, -3739i), ~(-vec3<i32>(global0.c, -1i, -18120i))), _wgslsmith_f_op_vec3_f32(-global0.d));
    var var_1 = !(global0.d.x != global0.d.x);
    global2 = abs(vec2<u32>(max(~4294967295u, _wgslsmith_add_u32(global2.x, 78913u)), ~_wgslsmith_mult_u32(0u, u_input.a.x)) & vec2<u32>(1u ^ _wgslsmith_clamp_u32(global2.x, 11804u, global2.x), global1[_wgslsmith_index_u32(countOneBits(u_input.a.x >> (0u % 32u)), 4u)]));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.x, -1475f, 719f))))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(552f, 1360f, 1363f) * _wgslsmith_div_vec3_f32(global0.d, _wgslsmith_f_op_vec3_f32(global0.d * global0.d))), global0.d)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = Struct_3(!global0.a.x);
    var var_1 = u_input.a.x;
    let var_2 = global0.d;
    var var_3 = -1i;
    global1 = array<u32, 4>();
    return Struct_1(!global0.a, false, -35890i, _wgslsmith_f_op_vec3_f32(func_3(Struct_3(true))));
}

fn func_1() -> vec2<u32> {
    let var_0 = Struct_2(func_2(global0.a.x), Struct_1(!(!global0.a), global0.b, 39898i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d.x, global0.d.x, global0.d.x) - vec3<f32>(494f, 509f, -1015f)) + global0.d))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-817f, 416f))))))), ~vec3<i32>(~(~2147483647i), 2147483647i, countOneBits(1i)));
    let var_1 = u_input.a.x;
    let var_2 = false;
    global0 = func_2(var_2 | var_0.a.a.x);
    global1 = array<u32, 4>();
    return select(~(~vec2<u32>(_wgslsmith_mod_u32(24721u, var_1), global1[_wgslsmith_index_u32(u_input.a.x, 4u)] << (var_1 % 32u))), u_input.a.zy, !any(select(!vec3<bool>(var_2, false, false), !vec3<bool>(false, var_2, true), !vec3<bool>(true, true, var_2))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(false);
    global2 = vec2<u32>(~1u, _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a.x, ~global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(1u, 4u)], 14733u), 4u)]), ~32167u));
    let var_1 = global0.d.xy;
    global2 = func_1();
    var var_2 = func_2(!var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.c, 2147483647i, var_2.c, global0.c), vec4<i32>(1i, -22241i, global0.c, var_2.c)), ~global0.c, ~abs(-1i), countOneBits(global0.c ^ 13204i)), abs(abs(max(vec4<i32>(-6447i, global0.c, global0.c, global0.c), vec4<i32>(4584i, global0.c, global0.c, -1i)))), true), 1u);
}

