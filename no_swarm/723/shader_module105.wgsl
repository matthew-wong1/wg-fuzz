struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7>;

var<private> global1: Struct_2;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: vec2<u32>, arg_3: vec4<bool>) -> vec2<u32> {
    var var_0 = Struct_2(Struct_1(arg_2.x | arg_0.x, _wgslsmith_f_op_f32(global1.a.c.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.b), -628f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1474f, 1888f, -1512f, global1.a.c.x)) * _wgslsmith_f_op_vec4_f32(round(global1.a.c))), ~(i32(-1i) * -15690i)), -(~countOneBits(min(global1.d, -40700i))), vec2<u32>(global1.a.a, 15625u), firstLeadingBit(-13804i), 711f);
    var var_1 = Struct_1(var_0.c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e)), _wgslsmith_f_op_f32(step(var_0.e, _wgslsmith_f_op_f32(abs(global1.e)))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.e, _wgslsmith_f_op_f32(sign(-488f)), -1049f, global1.e), var_0.a.c) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-302f * var_0.a.c.x) + _wgslsmith_f_op_f32(f32(-1f) * -1328f)), global1.e, 1290f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.e))))), 1i);
    var var_2 = _wgslsmith_sub_i32(-var_1.d, _wgslsmith_dot_vec4_i32(countOneBits(~(~vec4<i32>(0i, var_0.a.d, var_1.d, 2147483647i))), _wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.c, global1.d, -82476i, -6369i), min(vec4<i32>(global1.b, 0i, -5661i, 2147483647i), vec4<i32>(2147483647i, 0i, -69586i, 2147483647i))) ^ vec4<i32>(min(var_0.b, 2147483647i), _wgslsmith_mult_i32(0i, global1.a.d), abs(-23188i), -var_1.d)));
    let var_3 = arg_0;
    let var_4 = global0[_wgslsmith_index_u32(firstLeadingBit(0u << (var_1.a % 32u)), 7u)];
    return _wgslsmith_mod_vec2_u32(~global1.c, max(vec2<u32>(~var_0.c.x, firstTrailingBit(1u)), vec2<u32>(~arg_0.x, var_3.x & var_1.a)));
}

fn func_2(arg_0: Struct_2) -> vec4<bool> {
    global1 = arg_0;
    let var_0 = arg_0;
    global1 = Struct_2(global1.a, _wgslsmith_mult_i32(arg_0.b, _wgslsmith_add_i32(var_0.b, -2147483647i)) | _wgslsmith_dot_vec3_i32(-countOneBits(vec3<i32>(-25595i, global1.a.d, var_0.a.d)), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, 4750i) ^ vec3<i32>(global1.b, 0i, var_0.b), reverseBits(vec3<i32>(2147483647i, -1i, global1.d)))), abs(abs(func_3(~vec3<u32>(global1.a.a, 29232u, global1.a.a), _wgslsmith_mult_i32(-1i, global1.b), var_0.c, !vec4<bool>(true, global0[_wgslsmith_index_u32(arg_0.c.x, 7u)], false, global0[_wgslsmith_index_u32(0u, 7u)])))), -2147483647i, arg_0.a.b);
    global1 = Struct_2(Struct_1(var_0.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -325f), _wgslsmith_f_op_f32(-1967f - _wgslsmith_f_op_f32(arg_0.e * -2891f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.a.c - _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.c.x, var_0.a.c.x, -285f, var_0.a.c.x), vec4<f32>(-1273f, arg_0.a.b, global1.e, arg_0.a.c.x)))), u_input.c), 67947i, ~var_0.c, 0i, arg_0.e);
    var var_1 = select(all(select(!vec3<bool>(false, global0[_wgslsmith_index_u32(global1.c.x, 7u)], global0[_wgslsmith_index_u32(64133u, 7u)]), select(select(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.a.a, 7u)], global0[_wgslsmith_index_u32(39077u, 7u)], false), vec3<bool>(global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(global1.c.x, 7u)], global0[_wgslsmith_index_u32(33507u, 7u)]), global0[_wgslsmith_index_u32(var_0.a.a, 7u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(arg_0.a.a, 7u)], global0[_wgslsmith_index_u32(arg_0.c.x, 7u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(global1.c.x, 7u)], global0[_wgslsmith_index_u32(arg_0.a.a, 7u)]), vec3<bool>(global0[_wgslsmith_index_u32(arg_0.a.a, 7u)], global0[_wgslsmith_index_u32(var_0.c.x, 7u)], global0[_wgslsmith_index_u32(5242u, 7u)])), vec3<bool>(global0[_wgslsmith_index_u32(68374u, 7u)], true, false)), vec3<bool>(global0[_wgslsmith_index_u32(firstTrailingBit(74461u), 7u)], u_input.a >= u_input.a, true))), select(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.c.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(global1.a.a, 0u), arg_0.c)), 7u)], any(!select(vec4<bool>(global0[_wgslsmith_index_u32(global1.c.x, 7u)], global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(var_0.a.a, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)]), vec4<bool>(global0[_wgslsmith_index_u32(100011u, 7u)], global0[_wgslsmith_index_u32(6842u, 7u)], global0[_wgslsmith_index_u32(global1.c.x, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)]), global0[_wgslsmith_index_u32(global1.c.x, 7u)])), any(!vec3<bool>(global0[_wgslsmith_index_u32(74753u, 7u)], true, global0[_wgslsmith_index_u32(29874u, 7u)]))), global0[_wgslsmith_index_u32(global1.c.x, 7u)]);
    return select(vec4<bool>(all(select(!vec3<bool>(global0[_wgslsmith_index_u32(arg_0.a.a, 7u)], true, true), !vec3<bool>(global0[_wgslsmith_index_u32(1u, 7u)], false, global0[_wgslsmith_index_u32(global1.a.a, 7u)]), global0[_wgslsmith_index_u32(countOneBits(var_0.c.x), 7u)])), !any(select(vec3<bool>(global0[_wgslsmith_index_u32(52152u, 7u)], false, false), vec3<bool>(global0[_wgslsmith_index_u32(var_0.c.x, 7u)], false, false), global0[_wgslsmith_index_u32(155768u, 7u)])), global0[_wgslsmith_index_u32(~func_3(~vec3<u32>(arg_0.a.a, global1.c.x, 44302u), 8069i, select(var_0.c, arg_0.c, vec2<bool>(global0[_wgslsmith_index_u32(global1.a.a, 7u)], true)), !vec4<bool>(true, true, global0[_wgslsmith_index_u32(0u, 7u)], false)).x, 7u)], global0[_wgslsmith_index_u32(11146u, 7u)]), select(!vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.a.a, global1.a.a), 7u)], all(vec4<bool>(global0[_wgslsmith_index_u32(arg_0.c.x, 7u)], false, true, global0[_wgslsmith_index_u32(1u, 7u)])), false, false), select(vec4<bool>(true, true, true, true), !vec4<bool>(global0[_wgslsmith_index_u32(var_0.a.a, 7u)], global0[_wgslsmith_index_u32(arg_0.c.x, 7u)], true, global0[_wgslsmith_index_u32(10836u, 7u)]), vec4<bool>(any(vec4<bool>(false, global0[_wgslsmith_index_u32(arg_0.c.x, 7u)], global0[_wgslsmith_index_u32(17479u, 7u)], false)), var_0.a.a < 0u, global0[_wgslsmith_index_u32(var_0.a.a ^ var_0.c.x, 7u)], false)), !(!select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(var_0.a.a, 7u)], true), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.c.x, 7u)], false, false, true), true))), vec4<bool>(~38115u <= countOneBits(_wgslsmith_mod_u32(arg_0.a.a, arg_0.a.a)), ~(var_0.a.d | var_0.d) < ~_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(global1.b, -37290i)), all(!select(vec2<bool>(global0[_wgslsmith_index_u32(global1.c.x, 7u)], global0[_wgslsmith_index_u32(global1.a.a, 7u)]), vec2<bool>(global0[_wgslsmith_index_u32(var_0.c.x, 7u)], false), vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 7u)]))), global0[_wgslsmith_index_u32(var_0.c.x, 7u)]));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: i32) -> Struct_1 {
    global0 = array<bool, 7>();
    var var_0 = global0[_wgslsmith_index_u32(4294967295u, 7u)];
    var var_1 = vec2<bool>((_wgslsmith_mult_u32(abs(global1.a.a), countOneBits(66235u)) > _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(global1.c, vec2<u32>(25456u, 85133u)), ~4294967295u)) & any(!func_2(Struct_2(Struct_1(4294967295u, global1.e, vec4<f32>(-581f, -757f, global1.a.c.x, -1107f), u_input.b.x), arg_2, vec2<u32>(4294967295u, 4294967295u), 1i, -1344f))), true);
    var var_2 = _wgslsmith_f_op_f32(-global1.a.b);
    var var_3 = func_2(Struct_2(global1.a, global1.a.d, arg_1, _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(select(u_input.a, arg_0.x, false), arg_0.x)), global1.e)).zyz;
    return Struct_1(~_wgslsmith_div_u32(_wgslsmith_mult_u32(77189u, global1.a.a), arg_1.x) | ~(~arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.e) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.e * global1.e))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(389f + -1171f), -709f)))), _wgslsmith_f_op_vec4_f32(-global1.a.c), ~1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(_wgslsmith_mult_u32(1u, global1.a.a)) | global1.c.x;
    global0 = array<bool, 7>();
    let var_1 = u_input.c;
    var var_2 = Struct_2(func_1(~(~vec2<i32>(-2147483647i, 1i)), firstLeadingBit(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_0, 17881u), global1.c), countOneBits(vec2<u32>(var_0, 54154u)))), ~min(0i, max(global1.b, -25i))), firstTrailingBit(-(var_1 >> (var_0 % 32u))), ~abs(firstTrailingBit(vec2<u32>(4294967295u, var_0))), _wgslsmith_dot_vec3_i32(vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(40031i, 0i, var_1, global1.b), vec4<i32>(var_1, 1i, 1i, -1i)), 1i, _wgslsmith_sub_i32(select(1i, global1.b, true), reverseBits(10981i))), vec3<i32>(var_1, 2147483647i, i32(-1i) * -23414i)), -2096f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

