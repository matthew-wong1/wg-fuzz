struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
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

var<private> global0: Struct_3 = Struct_3(vec4<i32>(16798i, 0i, 58047i, 2147483647i));

var<private> global1: Struct_3;

var<private> global2: array<bool, 31> = array<bool, 31>(true, false, false, false, false, false, false, true, true, false, true, true, false, true, true, true, false, false, true, false, true, true, true, false, true, false, false, true, true, false, true);

var<private> global3: array<vec2<bool>, 22> = array<vec2<bool>, 22>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: f32, arg_1: f32) -> f32 {
    let var_0 = all(!select(select(select(vec4<bool>(true, global2[_wgslsmith_index_u32(58327u, 31u)], false, global2[_wgslsmith_index_u32(1u, 31u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 31u)], false, true), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 31u)], true, global2[_wgslsmith_index_u32(u_input.a.x, 31u)], global2[_wgslsmith_index_u32(u_input.a.x, 31u)])), vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 31u)], global2[_wgslsmith_index_u32(u_input.d, 31u)], global2[_wgslsmith_index_u32(u_input.c.x, 31u)], global2[_wgslsmith_index_u32(4294967295u, 31u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(31336u, 31u)], global2[_wgslsmith_index_u32(75683u, 31u)], false, true), vec4<bool>(true, global2[_wgslsmith_index_u32(28708u, 31u)], true, true), vec4<bool>(false, false, global2[_wgslsmith_index_u32(0u, 31u)], false))), select(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 31u)], true, global2[_wgslsmith_index_u32(u_input.c.x, 31u)], true), !vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 31u)], false, global2[_wgslsmith_index_u32(1u, 31u)]), all(vec3<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 31u)], true, true))), any(select(vec3<bool>(true, global2[_wgslsmith_index_u32(81036u, 31u)], global2[_wgslsmith_index_u32(44692u, 31u)]), vec3<bool>(global2[_wgslsmith_index_u32(22759u, 31u)], false, true), vec3<bool>(global2[_wgslsmith_index_u32(u_input.d, 31u)], false, true)))));
    let var_1 = -1i;
    let var_2 = ~1427u;
    var var_3 = !(!(!vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(0u, 31u)])));
    global3 = array<vec2<bool>, 22>();
    return _wgslsmith_f_op_f32(max(856f, _wgslsmith_f_op_f32(abs(-453f))));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: u32) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_0.x, arg_0.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-211f, -966f, arg_0.x))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1662f), -726f, _wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, 832f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.x, -842f, arg_0.x), vec3<f32>(arg_0.x, arg_0.x, 1000f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.x, 2479f, -492f)))))))));
    global3 = array<vec2<bool>, 22>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(step(-374f, -498f)), 680f, -1000f)))));
    let var_2 = 231f;
    var var_3 = Struct_1(vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(global0.a.wxz, ~vec3<i32>(global0.a.x, 1958i, u_input.b)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.x, var_2, 1594f), vec3<f32>(var_0.x, arg_0.x, var_0.x))))))) - vec3<f32>(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(-var_1.x)))), var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.x * -1969f), arg_0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.x))))));
}

fn func_2(arg_0: vec2<f32>) -> StorageBuffer {
    var var_0 = 2147483647i;
    var var_1 = Struct_2(Struct_1(-vec3<i32>(1i, 0i, -1i) << (min(firstLeadingBit(vec3<u32>(u_input.c.x, u_input.c.x, u_input.a.x)), ~vec3<u32>(0u, u_input.c.x, 118775u)) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec2<f32>(arg_0.x, arg_0.x), true, 108132u)))))), !(!(!global3[_wgslsmith_index_u32(min(u_input.a.x, u_input.c.x), 22u)])), false);
    var var_2 = Struct_3(vec4<i32>(~u_input.b, u_input.b, 1i, _wgslsmith_mult_i32(11498i, 21169i)));
    let var_3 = Struct_2(var_1.a, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.b.x - arg_0.x))), -1166f))), global3[_wgslsmith_index_u32(u_input.d, 22u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(arg_0.x)))) <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(arg_0.x, arg_0.x)))));
    var_0 = firstLeadingBit(_wgslsmith_dot_vec2_i32(var_3.a.a.yz, global0.a.wz));
    return StorageBuffer(302f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -min(global1.a.yyy, _wgslsmith_clamp_vec3_i32(min(reverseBits(vec3<i32>(-2147483647i, -2147483647i, -34319i)), -vec3<i32>(global1.a.x, 0i, -2147483647i)), select(vec3<i32>(-2183i, global0.a.x, -4762i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, -13392i, global0.a.x), global0.a.wzz), select(vec3<bool>(false, true, global2[_wgslsmith_index_u32(77813u, 31u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.d, 31u)], false), global2[_wgslsmith_index_u32(u_input.c.x, 31u)])), global0.a.xzz ^ ~vec3<i32>(u_input.b, u_input.b, global1.a.x)));
    let x = u_input.a;
    s_output = func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(-892f, 771f)) + -1126f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(246f * -293f)) + -1000f)));
}

