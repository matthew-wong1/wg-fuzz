struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: f32,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16>;

var<private> global1: array<bool, 1> = array<bool, 1>(true);

var<private> global2: array<i32, 14> = array<i32, 14>(78976i, 1i, -1i, i32(-2147483648), -12478i, -17614i, 1i, -1i, 68760i, -8275i, 0i, -1i, i32(-2147483648), -29877i);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: f32, arg_3: vec4<u32>) -> f32 {
    var var_0 = 17386u;
    global0 = array<i32, 16>();
    var var_1 = true;
    let var_2 = -965f;
    var var_3 = var_2;
    return -325f;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>) -> f32 {
    let var_0 = vec3<u32>(min(u_input.a.x, u_input.b), 0u, 41518u);
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-659f, -622f, -2049f) * vec3<f32>(253f, 614f, -2497f))))) + vec3<f32>(-704f, _wgslsmith_f_op_f32(1263f - _wgslsmith_f_op_f32(func_3(vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 14u)], 1i, -32726i, global0[_wgslsmith_index_u32(4294967295u, 16u)]), arg_0.b, 508f, u_input.a))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-242f, 2117f)), _wgslsmith_f_op_f32(-418f + 871f)))))));
    global2 = array<i32, 14>();
    global0 = array<i32, 16>();
    var var_2 = 0u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1801f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<i32>) -> vec4<f32> {
    global2 = array<i32, 14>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1000f, -256f), _wgslsmith_f_op_f32(func_2(Struct_2(arg_0.x, vec2<i32>(-79226i, global2[_wgslsmith_index_u32(0u, 14u)])), vec4<bool>(global1[_wgslsmith_index_u32(16109u, 1u)], false, true, false)))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(409f, 1518f))) - _wgslsmith_f_op_f32(func_2(Struct_2(11686i, vec2<i32>(-24162i, 2147483647i)), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 1u)], true, false, global1[_wgslsmith_index_u32(u_input.a.x, 1u)])))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1434f)))), -467f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(987f * -635f), -329f))))));
    var var_1 = any(vec3<bool>(!global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 23565u, 351u), ~vec3<u32>(u_input.b, u_input.a.x, 0u)), 1u)], false, !(global2[_wgslsmith_index_u32(u_input.b, 14u)] != ~45624i)));
    let var_2 = Struct_1(var_0.wz, vec3<bool>(true, true, any(!select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 1u)], false, true, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 1u)], false, global1[_wgslsmith_index_u32(1u, 1u)], false), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 1u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 1u)])))), _wgslsmith_f_op_f32(var_0.x + -203f), arg_1.yy, abs(-global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(min(u_input.b, 1049u), u_input.a.x), 14u)]));
    var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.a.x, -152f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_2.c)), _wgslsmith_f_op_f32(f32(-1f) * -497f)), var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-682f - -1724f), _wgslsmith_f_op_f32(abs(var_2.c)), 269f, var_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_2.c, var_2.c, -1006f) + vec4<f32>(var_0.x, var_2.c, -1933f, var_0.x))))));
    return vec4<f32>(-1000f, _wgslsmith_f_op_f32(-var_2.a.x), var_0.x, var_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_1(-vec4<i32>(1i, 2147483647i, -_wgslsmith_mult_i32(-1i, 10707i), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(0i, 1i, 2147483647i, global0[_wgslsmith_index_u32(u_input.b, 16u)])), abs(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 14u)], -8691i, 21406i, global2[_wgslsmith_index_u32(1u, 14u)])))), -_wgslsmith_div_vec4_i32(countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -1i, global2[_wgslsmith_index_u32(u_input.b, 14u)], 0i), vec4<i32>(global0[_wgslsmith_index_u32(7815u, 16u)], -38996i, 33766i, global2[_wgslsmith_index_u32(u_input.a.x, 14u)]), vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 14u)], 50540i, global2[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(0u, 16u)]))), vec4<i32>(max(global0[_wgslsmith_index_u32(47867u, 16u)], 15103i), global2[_wgslsmith_index_u32(1u << (u_input.a.x % 32u), 14u)], ~global2[_wgslsmith_index_u32(1u, 14u)], ~(-61007i)))));
    let var_1 = select(!(!vec4<bool>(true, global1[_wgslsmith_index_u32(1766u, 1u)] && global1[_wgslsmith_index_u32(u_input.b, 1u)], any(vec2<bool>(false, global1[_wgslsmith_index_u32(39557u, 1u)])), true)), select(vec4<bool>(global1[_wgslsmith_index_u32(firstTrailingBit(1u), 1u)], global1[_wgslsmith_index_u32(4294967295u, 1u)], any(!vec3<bool>(global1[_wgslsmith_index_u32(24024u, 1u)], global1[_wgslsmith_index_u32(u_input.a.x, 1u)], true)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 72433u), u_input.a.wzz), 1u)]), vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(36028u, ~u_input.b), 1u)], var_0.x < _wgslsmith_f_op_f32(func_2(Struct_2(global2[_wgslsmith_index_u32(u_input.b, 14u)], vec2<i32>(global2[_wgslsmith_index_u32(0u, 14u)], 0i)), vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 1u)], global1[_wgslsmith_index_u32(40450u, 1u)], global1[_wgslsmith_index_u32(u_input.b, 1u)]))), false, true), vec4<bool>(u_input.b <= firstLeadingBit(u_input.a.x), any(select(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 1u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 1u)]), false)), 1i >= firstLeadingBit(global2[_wgslsmith_index_u32(u_input.b, 14u)]), all(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 1u)], global1[_wgslsmith_index_u32(u_input.a.x, 1u)], global1[_wgslsmith_index_u32(u_input.b, 1u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(u_input.b, 1u)]), vec3<bool>(global1[_wgslsmith_index_u32(15984u, 1u)], global1[_wgslsmith_index_u32(u_input.a.x, 1u)], global1[_wgslsmith_index_u32(u_input.a.x, 1u)]))))), !select(!select(vec4<bool>(true, global1[_wgslsmith_index_u32(28047u, 1u)], global1[_wgslsmith_index_u32(0u, 1u)], false), vec4<bool>(true, true, false, true), true), select(select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.b, 1u)], false), vec4<bool>(false, global1[_wgslsmith_index_u32(79541u, 1u)], false, global1[_wgslsmith_index_u32(0u, 1u)]), true), !vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 1u)], global1[_wgslsmith_index_u32(u_input.a.x, 1u)], global1[_wgslsmith_index_u32(51174u, 1u)]), true), !(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 1u)], global1[_wgslsmith_index_u32(45139u, 1u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 1u)]))));
    var var_2 = Struct_2(-2147483647i, max(firstTrailingBit(min(firstTrailingBit(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], 1i)), vec2<i32>(0i, 1i))), vec2<i32>(-2147483647i, -global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(19336u, 4357u), 14u)])));
    let var_3 = !select(var_1.ww, vec2<bool>(true, any(var_1.wx)), select(select(select(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 1u)]), var_1.wz, var_1.yw), var_1.xy, global1[_wgslsmith_index_u32(u_input.b, 1u)] && false), vec2<bool>(201f > var_0.x, all(var_1.zy)), true));
    let var_4 = select(!vec2<bool>(!any(vec3<bool>(var_3.x, var_1.x, global1[_wgslsmith_index_u32(1u, 1u)])), global1[_wgslsmith_index_u32(u_input.a.x, 1u)]), vec2<bool>(any(!var_1), !(_wgslsmith_f_op_f32(963f + var_0.x) > _wgslsmith_f_op_f32(func_2(Struct_2(-2530i, vec2<i32>(global0[_wgslsmith_index_u32(18091u, 16u)], global2[_wgslsmith_index_u32(47861u, 14u)])), var_1)))), any(!select(vec2<bool>(var_3.x, true), var_3, !vec2<bool>(var_1.x, false))));
    var var_5 = (global0[_wgslsmith_index_u32(1u, 16u)] ^ -2147483647i) > -max(~(-2147483647i) & _wgslsmith_clamp_i32(71235i, 11585i, 8213i), firstTrailingBit(-18643i));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

