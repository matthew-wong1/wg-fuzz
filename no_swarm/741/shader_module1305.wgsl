struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec3<bool> = vec3<bool>(false, false, false);

var<private> global2: array<bool, 25>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>) -> vec3<bool> {
    let var_0 = -u_input.b;
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(233f, global0.x, global0.x))))), vec2<bool>(false, global1.x || global1.x)));
    global0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.a.a.x, _wgslsmith_f_op_f32(step(785f, 1092f)), 1028f < global0.x)) + 459f), global0.x), vec2<f32>(_wgslsmith_f_op_f32(global0.x * -307f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1071f) * _wgslsmith_f_op_f32(f32(-1f) * -570f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_1.a.a.x)), _wgslsmith_f_op_f32(213f + 1000f)))))));
    global1 = vec3<bool>(!((u_input.b.x ^ max(var_0.x, u_input.b.x)) <= _wgslsmith_div_i32(2147483647i, i32(-1i) * -1i)), select(any(!select(vec3<bool>(false, var_1.a.b.x, var_1.a.b.x), vec3<bool>(global2[_wgslsmith_index_u32(0u, 25u)], var_1.a.b.x, var_1.a.b.x), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 25u)], false, false))), global1.x, arg_0.x), arg_0.x);
    var var_2 = false;
    return !select(vec3<bool>(any(!vec3<bool>(true, global2[_wgslsmith_index_u32(43230u, 25u)], false)), true, !(true || arg_0.x)), !vec3<bool>(true, all(vec4<bool>(false, arg_0.x, true, global1.x)), true), true);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<u32>, arg_3: vec3<bool>) -> vec3<bool> {
    return select(!select(vec3<bool>(true, global2[_wgslsmith_index_u32(306u, 25u)] | arg_1.x, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_2.x, arg_2.x), 25u)]), func_3(vec2<bool>(true, true)), arg_1), arg_1, func_3(vec2<bool>(true, arg_0.b.x | true)));
}

fn func_1(arg_0: bool) -> vec2<f32> {
    var var_0 = abs(0i);
    global1 = select(select(func_2(Struct_1(vec3<f32>(global0.x, global0.x, -626f), vec2<bool>(true, global1.x)), select(!vec3<bool>(true, false, global2[_wgslsmith_index_u32(64214u, 25u)]), !vec3<bool>(global1.x, global1.x, false), !vec3<bool>(global1.x, arg_0, true)), _wgslsmith_div_vec2_u32(u_input.a.xx, ~vec2<u32>(u_input.a.x, 23576u)), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), !select(vec3<bool>(arg_0, false, true), vec3<bool>(false, false, global2[_wgslsmith_index_u32(u_input.a.x, 25u)]), vec3<bool>(true, global1.x, false)), !select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 25u)], false, global2[_wgslsmith_index_u32(u_input.a.x, 25u)]), vec3<bool>(global2[_wgslsmith_index_u32(26445u, 25u)], true, global2[_wgslsmith_index_u32(u_input.a.x, 25u)]), vec3<bool>(false, arg_0, true))), func_3(vec2<bool>(select(false, true, true), all(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 25u)], true, global1.x, false))))), func_3(!(!func_3(global1.zz).zz)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, 51734u), select(u_input.a.yy, reverseBits(u_input.a.yz), vec2<bool>(global1.x, global2[_wgslsmith_index_u32(u_input.a.x, 25u)]))), 25u)] | !(!any(vec3<bool>(arg_0, false, arg_0))));
    var var_1 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(1131f, global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(298f - -1064f) - _wgslsmith_f_op_f32(floor(1045f))), -1000f), !func_3(global1.xz).zx));
    var_0 = -2147483647i;
    global1 = func_3(vec2<bool>(arg_0, true));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(1f * -752f), global0.x))), _wgslsmith_f_op_vec2_f32(ceil(var_1.a.a.zy)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-global0.x);
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_1(global2[_wgslsmith_index_u32(u_input.a.x, 25u)])), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(max(-139f, -899f))), !vec2<bool>(false, all(global1.zy) & any(vec4<bool>(global2[_wgslsmith_index_u32(0u, 25u)], global2[_wgslsmith_index_u32(u_input.a.x, 25u)], true, global2[_wgslsmith_index_u32(4294967295u, 25u)])))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 488f, global0.x)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x))), global1.zx));
    let var_2 = vec2<bool>(var_1.a.b.x, !select(true, true, true && global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x)), 25u)]));
    var_0 = -933f;
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1598f, 1785f, 1092f) + var_1.a.a))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -632f, 262f)))), vec3<bool>(global2[_wgslsmith_index_u32(0u, 25u)] | true, 31961i < u_input.b.x, func_3(var_1.a.b).x)))), select(!(!func_2(Struct_1(vec3<f32>(var_1.a.a.x, var_1.a.a.x, -182f), var_1.a.b), vec3<bool>(true, false, global2[_wgslsmith_index_u32(45945u, 25u)]), u_input.a.zy, vec3<bool>(true, true, true)).yx), var_1.a.b, select(select(vec2<bool>(true, global1.x), !global1.xx, !global1.yy), !(!global1.yx), var_1.a.b)));
    var var_4 = !select(vec3<bool>(!global2[_wgslsmith_index_u32(u_input.a.x ^ 4294967295u, 25u)], !(global2[_wgslsmith_index_u32(1u, 25u)] & global1.x), var_1.a.b.x), !vec3<bool>(u_input.a.x >= u_input.a.x, !var_3.b.x, true), !(_wgslsmith_f_op_f32(1000f * var_1.a.a.x) == _wgslsmith_f_op_f32(min(-1007f, 846f))));
    var var_5 = var_3.a.x;
    var var_6 = vec3<i32>(_wgslsmith_add_i32(firstLeadingBit(-2147483647i), max(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 25844i, u_input.b.x, -1i) & vec4<i32>(1i, u_input.b.x, u_input.b.x, -12324i), firstTrailingBit(vec4<i32>(u_input.b.x, 2147483647i, 55569i, 2147483647i))), _wgslsmith_dot_vec2_i32(u_input.b.yy, u_input.b.yz) & countOneBits(2147483647i))), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, _wgslsmith_mult_i32(i32(-1i) * -20762i, -9667i)), vec2<i32>(-13884i, ~1i)), ~_wgslsmith_mod_i32(u_input.b.x, u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.x, ~(u_input.b.x >> (u_input.a.x % 32u)), vec4<u32>(_wgslsmith_div_u32(~0u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a.x, 51726u, 0u, u_input.a.x)), vec4<u32>(u_input.a.x, u_input.a.x, 25232u, 0u))), 30579u, u_input.a.x, u_input.a.x), 70032i & _wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, var_6.x, u_input.b.x, 0i), vec4<i32>(-33986i, -1i, var_6.x, 0i))), -(~(-2147483647i))));
}

