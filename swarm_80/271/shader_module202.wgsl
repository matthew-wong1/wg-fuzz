struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
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

var<private> global0: array<bool, 1> = array<bool, 1>(true);

var<private> global1: array<Struct_1, 8>;

var<private> global2: vec4<i32>;

var<private> global3: array<u32, 10> = array<u32, 10>(34866u, 16445u, 4294967295u, 1u, 21420u, 0u, 0u, 0u, 1u, 5625u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: i32, arg_1: f32) -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(69866u, 8u)];
    let var_1 = vec4<i32>(-2147483647i, -2147483647i, arg_0, global2.x);
    var var_2 = !(!vec2<bool>(true, all(!vec3<bool>(true, false, global0[_wgslsmith_index_u32(50224u, 1u)]))));
    let var_3 = Struct_1(1i, var_0.b & _wgslsmith_mod_u32(var_0.b, ~(global3[_wgslsmith_index_u32(61829u, 10u)] >> (1u % 32u))), -_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, -1459i), reverseBits(var_1.xz)), var_1.xy), false);
    global3 = array<u32, 10>();
    return ~countOneBits(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(~var_1, var_1), -arg_0, var_3.c.x));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec3<i32>, arg_3: vec3<u32>) -> vec2<i32> {
    global1 = array<Struct_1, 8>();
    let var_0 = _wgslsmith_dot_vec4_i32(-select(vec4<i32>(~arg_1, 0i ^ u_input.b.x, -33084i, 3618i | arg_2.x), _wgslsmith_add_vec4_i32(abs(vec4<i32>(22574i, u_input.a.x, global2.x, -15984i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 14048i, u_input.a.x, 18674i), vec4<i32>(global2.x, -1i, arg_1, -10429i))), arg_0.d), vec4<i32>(_wgslsmith_mod_i32(-global2.x, 1i) ^ arg_0.a, ((17044i ^ u_input.a.x) ^ arg_2.x) ^ (~arg_0.c.x ^ func_3(34873i, -339f)), -2147483647i, -3431i));
    return -vec2<i32>(_wgslsmith_mod_i32(countOneBits(0i), 35608i), reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, arg_2.x, arg_1), vec3<i32>(2147483647i, arg_0.c.x, -1i)) | _wgslsmith_mult_i32(global2.x, var_0)));
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32((vec2<i32>(41958i, -1i) | (vec2<i32>(u_input.b.x, -32759i) << (vec2<u32>(global3[_wgslsmith_index_u32(0u, 10u)], 18047u) % vec2<u32>(32u)))) | min(vec2<i32>(-1i, u_input.a.x) | vec2<i32>(0i, u_input.b.x), ~global2.yx), func_2(Struct_1(1i ^ u_input.a.x, global3[_wgslsmith_index_u32(25385u, 10u)], vec2<i32>(-34766i, global2.x), any(vec3<bool>(arg_0, false, false))), 1i, _wgslsmith_mod_vec3_i32(global2.wxz, vec3<i32>(-1i, 40345i, -48369i) << (vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(52126u, 10u)], 10u)], 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 10u)], 10u)]) % vec3<u32>(32u))), ~(~vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 10u)], 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)])))), ~max(_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(3001i, u_input.b.x), global2.wy), u_input.b.xy, vec2<i32>(0i, 0i)), vec2<i32>(u_input.b.x, i32(-1i) * -27854i)));
    global0 = array<bool, 1>();
    var var_1 = vec4<bool>(!any(!(!vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 1u)], false))), global0[_wgslsmith_index_u32(11325u << (~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(8726u, 10u)], 10u)] % 32u), 1u)], select(_wgslsmith_dot_vec3_i32(global2.wyw | global2.xyz, u_input.b) > var_0.x, false, select(false, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~global3[_wgslsmith_index_u32(0u, 10u)], 4294967295u), 1u)], all(!vec3<bool>(arg_0, false, false)))), 27673i < global2.x);
    let var_2 = Struct_1(-_wgslsmith_div_i32(_wgslsmith_add_i32(global2.x, 1i), _wgslsmith_clamp_i32(func_2(Struct_1(u_input.b.x, global3[_wgslsmith_index_u32(2322u, 10u)], vec2<i32>(-6452i, var_0.x), true), -84i, global2.zyx, vec3<u32>(global3[_wgslsmith_index_u32(32814u, 10u)], 10868u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 10u)], 10u)])).x, global2.x, -47481i ^ global2.x)), max(~(~min(global3[_wgslsmith_index_u32(4294967295u, 10u)], global3[_wgslsmith_index_u32(1821u, 10u)])), global3[_wgslsmith_index_u32(158u | global3[_wgslsmith_index_u32(89u, 10u)], 10u)] ^ (countOneBits(global3[_wgslsmith_index_u32(1u, 10u)]) >> (abs(global3[_wgslsmith_index_u32(1u, 10u)]) % 32u))), u_input.a, true);
    var var_3 = 895f;
    return global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(13129u, 0u), 8u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.a.x, ~41813u | (countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 10u)], 10u)], 10u)], 10u)], 31299u), vec4<u32>(global3[_wgslsmith_index_u32(21913u, 10u)], 45145u, global3[_wgslsmith_index_u32(2034u, 10u)], global3[_wgslsmith_index_u32(15352u, 10u)]))) | 9036u), global2.xz, true);
    var var_1 = func_1(global0[_wgslsmith_index_u32(var_0.b, 1u)]);
    global2 = -_wgslsmith_mult_vec4_i32(abs(vec4<i32>(global2.x, 7128i >> (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_1.b, 10u)], 10u)] % 32u), -2147483647i, _wgslsmith_mult_i32(21810i, var_0.c.x))), -select(~vec4<i32>(global2.x, var_1.a, -1i, var_1.a), vec4<i32>(11663i, global2.x, -2147483647i, 9645i), any(vec2<bool>(true, false))));
    let var_2 = global1[_wgslsmith_index_u32(0u, 8u)];
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(444f, _wgslsmith_f_op_f32(-722f - _wgslsmith_f_op_f32(2436f * 610f)))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -275f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1010f)))))), !var_0.d));
    global0 = array<bool, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_0.b));
}

