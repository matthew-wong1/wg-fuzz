struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: u32 = 0u;

var<private> global2: array<bool, 16>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_2) -> f32 {
    global1 = u_input.a.x;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.a.d.x, _wgslsmith_f_op_f32(step(arg_0.b.x, 1094f))) - _wgslsmith_f_op_f32(-arg_2.a.b.x));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec2<i32>, arg_3: vec2<u32>) -> f32 {
    global2 = array<bool, 16>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-245f, global0.b.x)), global0.c.a.d.x), _wgslsmith_f_op_f32(func_1(Struct_3(_wgslsmith_f_op_vec4_f32(ceil(global0.c.a.d)), _wgslsmith_f_op_vec2_f32(-global0.b), Struct_2(global0.c.a), false), !select(vec4<bool>(global2[_wgslsmith_index_u32(arg_1, 16u)], false, global2[_wgslsmith_index_u32(29857u, 16u)], true), vec4<bool>(global2[_wgslsmith_index_u32(arg_1, 16u)], global2[_wgslsmith_index_u32(5371u, 16u)], false, true), vec4<bool>(false, false, global2[_wgslsmith_index_u32(arg_0, 16u)], global0.d)), global0.c)), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global0.a + vec4<f32>(global0.b.x, -325f, global0.a.x, global0.c.a.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global0.c.a.a, 1000f, global0.a.x)), true))))), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global0.a, vec4<f32>(global0.a.x, 168f, -893f, -934f), global2[_wgslsmith_index_u32(4294967295u, 16u)])) * global0.a)));
    var var_1 = arg_2.x;
    return _wgslsmith_f_op_f32(func_1(Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, -1029f, -1941f, 1000f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, var_0.b.x, 1000f, -1408f))), vec2<f32>(-954f, var_0.a), Struct_2(global0.c.a), !(!global2[_wgslsmith_index_u32(1u, 16u)])), vec4<bool>(_wgslsmith_sub_u32(max(20149u, 46459u), u_input.e) > arg_1, all(select(!vec4<bool>(global0.d, var_0.c, var_0.c, true), select(vec4<bool>(global0.c.a.c, true, true, global2[_wgslsmith_index_u32(0u, 16u)]), vec4<bool>(false, global0.d, var_0.c, var_0.c), vec4<bool>(false, false, false, false)), global2[_wgslsmith_index_u32(firstTrailingBit(15128u), 16u)])), any(select(select(vec4<bool>(var_0.c, true, global0.c.a.c, false), vec4<bool>(global0.d, false, false, false), vec4<bool>(global2[_wgslsmith_index_u32(arg_3.x, 16u)], var_0.c, global0.c.a.c, false)), vec4<bool>(true, var_0.c, true, false), select(vec4<bool>(true, global0.c.a.c, false, global2[_wgslsmith_index_u32(17702u, 16u)]), vec4<bool>(var_0.c, var_0.c, global2[_wgslsmith_index_u32(u_input.d.x, 16u)], global2[_wgslsmith_index_u32(95u, 16u)]), vec4<bool>(var_0.c, false, var_0.c, global2[_wgslsmith_index_u32(4294967295u, 16u)])))), (!global2[_wgslsmith_index_u32(arg_1, 16u)] & true) | global0.d), global0.c));
}

fn func_2(arg_0: vec2<bool>, arg_1: i32) -> f32 {
    let var_0 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(global0.a - global0.c.a.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, -480f, global0.a.x, global0.a.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(global0.a, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(962f, 868f, 470f, global0.b.x))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.c.a.a, global0.b.x, global0.b.x, global0.a.x), vec4<f32>(global0.c.a.b.x, global0.a.x, -1902f, global0.c.a.b.x), vec4<bool>(true, arg_0.x, false, true))))))), _wgslsmith_f_op_vec2_f32(global0.a.yz - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(func_3(u_input.a.x, u_input.d.x, u_input.c.zy, u_input.d.zy))))), Struct_2(global0.c.a), arg_0.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(vec4<f32>(-2302f, _wgslsmith_f_op_f32(global0.c.a.a - _wgslsmith_f_op_f32(f32(-1f) * -1856f)), _wgslsmith_f_op_f32(global0.c.a.d.x + -191f), global0.c.a.a), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(369f, _wgslsmith_f_op_f32(func_1(Struct_3(global0.c.a.d, vec2<f32>(global0.c.a.d.x, -550f), global0.c, global2[_wgslsmith_index_u32(52443u, 16u)]), !vec4<bool>(false, true, global2[_wgslsmith_index_u32(0u, 16u)], global0.d), global0.c))))), global0.c, false);
    global0 = Struct_3(vec4<f32>(-1647f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(vec2<bool>(false, global2[_wgslsmith_index_u32(42173u, 16u)]), 35082i)))))), -502f, global0.a.x), global0.c.a.d.wz, global0.c, global0.d);
    var var_0 = min(1u, _wgslsmith_dot_vec3_u32((vec3<u32>(u_input.d.x, 4294967295u, u_input.e) >> (u_input.d % vec3<u32>(32u))) ^ ~vec3<u32>(3315u, u_input.d.x, 10924u), ~_wgslsmith_div_vec3_u32(u_input.d, u_input.d))) > 498u;
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(~0i, 27331i), u_input.b), u_input.c.x);
    let var_2 = vec4<bool>(true, select(false, true, true), true != (global0.c.a.c | true), (i32(-1i) * -u_input.c.x) < u_input.b);
    var_0 = any(var_2.xwz);
    var var_3 = countOneBits(_wgslsmith_div_i32(u_input.c.x, 1i));
    let var_4 = Struct_3(vec4<f32>(_wgslsmith_div_f32(global0.c.a.b.x, 290f), global0.a.x, -933f, -1515f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(global0.b, _wgslsmith_f_op_vec2_f32(-global0.a.wz), select(select(vec2<bool>(global2[_wgslsmith_index_u32(21697u, 16u)], false), var_2.ww, vec2<bool>(true, var_2.x)), !var_2.xy, select(vec2<bool>(true, false), var_2.xw, true)))), _wgslsmith_f_op_vec2_f32(-global0.b))), Struct_2(global0.c.a), !var_2.x);
    var var_5 = vec3<bool>(true, select(false, !all(vec2<bool>(true, false)) || true, !(!var_4.c.a.c)), all(var_2.yww));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(var_4.c.a.d.xx, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_4.c.a.b.xx)), global0.b)), var_2.xy)), reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, -19663i, -u_input.b), ~vec4<i32>(0i, u_input.c.x, u_input.b, 1i))));
}

