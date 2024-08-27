struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 10> = array<vec4<bool>, 10>(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true));

var<private> global1: vec4<u32>;

var<private> global2: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(true), Struct_2(true), Struct_2(true));

var<private> global3: vec2<f32> = vec2<f32>(436f, 206f);

var<private> global4: vec4<bool>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<f32>) -> f32 {
    global4 = select(select(vec4<bool>(-u_input.b.x >= ~(-2147483647i), (11330u != global1.x) & (arg_1.x < 675f), true, arg_1.x > _wgslsmith_f_op_f32(f32(-1f) * -1298f)), !vec4<bool>(!global4.x, arg_0.x, -1251f >= global3.x, true), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(max(global1.x, 1u), 6528u), 10u)]), global0[_wgslsmith_index_u32(countOneBits(~_wgslsmith_div_u32(u_input.c.x, ~4294967295u)), 10u)], vec4<bool>(global4.x, !select(true, any(global0[_wgslsmith_index_u32(27484u, 10u)]), true), any(select(!arg_0.zy, select(vec2<bool>(arg_0.x, true), arg_0.zz, true), false)), true));
    var var_0 = Struct_1(global0[_wgslsmith_index_u32(abs(select(~countOneBits(74529u), _wgslsmith_mod_u32(~4294967295u, u_input.c.x), true)), 10u)], ~(global1.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 30916u, global1.x, u_input.c.x), ~vec4<u32>(global1.x, u_input.c.x, global1.x, 0u)) % 32u)));
    var var_1 = firstTrailingBit(vec2<u32>(57887u, firstLeadingBit(~var_0.b)));
    global3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.x)))), global3.x) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, global3.x)));
    return -250f;
}

fn func_2() -> vec4<bool> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-139f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3.x)) + _wgslsmith_f_op_f32(func_3(global4.xxz, vec3<f32>(global3.x, 1551f, global3.x))))), _wgslsmith_f_op_f32(-global3.x), global3.x);
    global4 = vec4<bool>(global4.x, false, 0u > u_input.d, any(global4.wxz));
    var var_1 = 83521i;
    var_1 = 0i;
    let var_2 = Struct_1(vec4<bool>(!(false && !global4.x), global4.x, global4.x, all(select(vec4<bool>(global4.x, true, global4.x, true), !global0[_wgslsmith_index_u32(global1.x, 10u)], global0[_wgslsmith_index_u32(u_input.c.x, 10u)]))), _wgslsmith_mult_u32(34316u, u_input.d));
    return !(!var_2.a);
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> bool {
    var var_0 = true;
    var var_1 = vec3<bool>(all(global4.xy), false, true);
    global4 = select(func_2(), select(global0[_wgslsmith_index_u32(u_input.d, 10u)], select(select(global0[_wgslsmith_index_u32(countOneBits(u_input.c.x), 10u)], !vec4<bool>(var_1.x, var_1.x, arg_1.a, false), any(vec2<bool>(var_1.x, global4.x))), global0[_wgslsmith_index_u32(60821u, 10u)], vec4<bool>(arg_1.a, var_1.x, true, false)), true || arg_1.a), func_2());
    let var_2 = Struct_1(select(func_2(), !(!global0[_wgslsmith_index_u32(u_input.c.x, 10u)]), vec4<bool>(arg_1.a, all(func_2().wx), any(global0[_wgslsmith_index_u32(38827u, 10u)]), all(!vec4<bool>(arg_1.a, var_1.x, arg_1.a, false)))), 4294967295u);
    var var_3 = Struct_2(_wgslsmith_f_op_f32(func_3(var_2.a.wyz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global3.x, global3.x, 1000f), vec3<f32>(arg_0, arg_0, arg_0))))) == global3.x);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 10>();
    var var_0 = all(vec4<bool>(func_1(_wgslsmith_f_op_f32(-global3.x), global2[_wgslsmith_index_u32(u_input.c.x, 3u)]), all(!select(global4.wyx, vec3<bool>(false, global4.x, true), false)), false, all(vec4<bool>(global4.x, !global4.x, true, global4.x))));
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global3.x, -1372f))))));
    var var_1 = Struct_1(global0[_wgslsmith_index_u32(0u, 10u)], global1.x);
    var var_2 = Struct_2(var_1.a.x);
    var var_3 = Struct_2(true);
    var_1 = Struct_1(vec4<bool>(true, true, false, (select(var_1.a.x, var_1.a.x, var_2.a) | global4.x) | var_3.a), 49989u);
    var var_4 = Struct_1(select(!global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(1u, 0u), reverseBits(4294967295u)), 10u)], !vec4<bool>(!var_3.a, true, global4.x, true), vec4<bool>(!any(var_1.a.yz), false, var_1.a.x, func_2().x)), 47462u);
    let x = u_input.a;
    s_output = StorageBuffer(-429f, ~(-42355i), select(vec2<u32>(_wgslsmith_mod_u32(var_1.b, 1u), 21119u), u_input.c.wz, var_4.a.zz), _wgslsmith_add_vec3_i32(u_input.b.yzz, u_input.b.yzx));
}

