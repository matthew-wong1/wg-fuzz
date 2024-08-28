struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<u32>, 17>;

var<private> global2: array<i32, 2>;

var<private> global3: array<u32, 8>;

var<private> global4: i32 = 0i;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1196f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1172f)) * 247f));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0, var_0)));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))));
    let var_3 = _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * _wgslsmith_f_op_f32(-var_1)))) + _wgslsmith_f_op_f32(-var_2)));
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, var_3)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, var_1)), vec2<f32>(-351f, -1336f)), vec2<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(abs(-628f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 334f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_0))))));
    return select(!vec3<bool>(any(vec4<bool>(true, true, true, true)), ~0i > firstTrailingBit(2147483647i), all(vec2<bool>(true, true))), select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), any(vec2<bool>(true, true))), !vec3<bool>(true, all(vec3<bool>(true, true, false)), true), true), !(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(false, true, false))));
}

fn func_2() -> Struct_1 {
    let var_0 = ~global3[_wgslsmith_index_u32(0u, 8u)];
    var var_1 = _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(global1[_wgslsmith_index_u32(0u, 17u)], ~global1[_wgslsmith_index_u32(2936u, 17u)]), reverseBits(~vec3<u32>(~1u, global3[_wgslsmith_index_u32(select(global3[_wgslsmith_index_u32(u_input.a.x, 8u)], global3[_wgslsmith_index_u32(35861u, 8u)], true), 8u)], 9945u ^ u_input.a.x)));
    let var_2 = Struct_1(func_3(), _wgslsmith_div_vec4_u32(reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, var_0, 1u, 28353u), ~vec4<u32>(var_1.x, var_0, global3[_wgslsmith_index_u32(767u, 8u)], var_1.x))), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(6398u, u_input.a.x, 12420u, global3[_wgslsmith_index_u32(0u, 8u)]) << (vec4<u32>(1u, 1u, 23542u, u_input.a.x) % vec4<u32>(32u)), max(vec4<u32>(var_0, 4294967295u, 22600u, 17597u), vec4<u32>(106525u, global3[_wgslsmith_index_u32(u_input.a.x, 8u)], global3[_wgslsmith_index_u32(4294967295u, 8u)], var_0)), ~vec4<u32>(u_input.a.x, 0u, var_0, 0u)), ~(vec4<u32>(global3[_wgslsmith_index_u32(var_1.x, 8u)], 4294967295u, var_1.x, global3[_wgslsmith_index_u32(4294967295u, 8u)]) & vec4<u32>(var_1.x, var_1.x, 4294967295u, var_0)))), any(vec2<bool>(false, func_3().x)), global2[_wgslsmith_index_u32(4294967295u, 2u)] < global2[_wgslsmith_index_u32(31884u, 2u)]);
    var var_3 = ~_wgslsmith_div_u32(10741u, var_1.x);
    global4 = countOneBits(_wgslsmith_mult_i32(~25662i, _wgslsmith_sub_i32(firstLeadingBit(max(global2[_wgslsmith_index_u32(38481u, 2u)], global2[_wgslsmith_index_u32(65081u, 2u)])), -16547i)));
    return Struct_1(func_3(), firstTrailingBit(~(~vec4<u32>(58985u, global3[_wgslsmith_index_u32(var_2.b.x, 8u)], 1u, 1u)) ^ vec4<u32>(u_input.a.x, reverseBits(1u), reverseBits(9148u), abs(var_1.x))), var_2.c, !(304f == _wgslsmith_f_op_f32(ceil(1073f))));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: i32) -> f32 {
    let var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(max(15520i, _wgslsmith_mod_i32(-global2[_wgslsmith_index_u32(1u, 2u)], 1i)), 9561i, arg_0), reverseBits(vec3<i32>(~1i, 1i, 1i)), ~vec3<i32>(abs(_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 8u)], 2u)], 0i)), -29574i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(12723u, 8u)], 2u)], 0i, -22850i), vec4<i32>(arg_0, arg_2, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 8u)], 2u)], 6512i)), _wgslsmith_div_vec4_i32(vec4<i32>(20263i, 40804i, 16918i, -1i), vec4<i32>(-2147483647i, arg_0, arg_2, 11940i)))));
    let var_1 = !(!(!select(vec2<bool>(false, true), select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, true), arg_1), arg_1)));
    let var_2 = func_2();
    let var_3 = 2679f;
    let var_4 = var_2;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(-29648i, true, _wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 2u)], 9743i, 36999i), vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 2u)], global2[_wgslsmith_index_u32(13981u, 2u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 8u)], 2u)])))) * 106f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(838f - -389f) + _wgslsmith_f_op_f32(f32(-1f) * -2041f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(260f, 1000f, false)) + -604f) - _wgslsmith_f_op_f32(f32(-1f) * -836f))));
    var var_1 = Struct_1(vec3<bool>(func_2().d | false, true, true), func_2().b, -410f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), true);
    var var_2 = _wgslsmith_mod_i32(abs(global2[_wgslsmith_index_u32(1u, 2u)]), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(var_1.b.x, 2u)], 23685i) | vec2<i32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 2u)], -19617i), min(-vec2<i32>(2147483647i, -1i), ~vec2<i32>(-1i, global2[_wgslsmith_index_u32(21164u, 2u)]))), 8546i));
    var_2 = i32(-1i) * -8860i;
    var var_3 = func_2();
    let var_4 = ~abs(vec4<i32>(~global2[_wgslsmith_index_u32(abs(var_3.b.x), 2u)], global2[_wgslsmith_index_u32(~(~4294967295u), 2u)], -1i, -15631i));
    let var_5 = vec2<i32>(global2[_wgslsmith_index_u32(var_1.b.x, 2u)] >> ((var_3.b.x & abs(68138u)) % 32u), var_4.x) ^ -firstLeadingBit(~_wgslsmith_add_vec2_i32(var_4.yw, vec2<i32>(global2[_wgslsmith_index_u32(var_3.b.x, 2u)], global2[_wgslsmith_index_u32(var_1.b.x, 2u)])));
    var var_6 = vec2<bool>(false, func_3().x);
    let var_7 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(232f, firstTrailingBit(_wgslsmith_div_i32(-1i, ~(-var_4.x))));
}

