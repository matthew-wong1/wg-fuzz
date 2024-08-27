struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(8408u, 1u));

var<private> global1: array<vec3<f32>, 5>;

var<private> global2: array<bool, 11>;

var<private> global3: bool = true;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(860f, arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(arg_2, 661f)))) * arg_2))));
    global3 = global0.a.x >= abs(57007u);
    global0 = arg_0;
    global1 = array<vec3<f32>, 5>();
    let var_1 = arg_0;
    return vec2<u32>(arg_0.a.x, ~0u);
}

fn func_2(arg_0: vec3<u32>) -> bool {
    var var_0 = Struct_1(~_wgslsmith_clamp_vec2_u32(arg_0.xy, func_3(Struct_1(global0.a), 1i, 1607f), vec2<u32>(arg_0.x, 26378u) & (u_input.d ^ vec2<u32>(u_input.b.x, 48582u))));
    var var_1 = true;
    let var_2 = Struct_1((~countOneBits(vec2<u32>(13578u, u_input.b.x)) ^ ~(~global0.a)) << (vec2<u32>(_wgslsmith_sub_u32(83338u, ~var_0.a.x), 1u) % vec2<u32>(32u)));
    let var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(411f, 313f, 1608f, -143f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1183f, 1301f, 278f, 1681f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-240f, 109f, -342f, 315f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-326f, 598f, -957f, 1157f) * vec4<f32>(411f, 1000f, 283f, 380f)))))));
    let var_4 = all(!vec4<bool>(any(!vec3<bool>(true, global2[_wgslsmith_index_u32(var_2.a.x, 11u)], false)), true, global2[_wgslsmith_index_u32(u_input.a, 11u)], true));
    return var_4;
}

fn func_1(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = !vec2<bool>(func_2(~abs(vec3<u32>(1u, 46174u, 4294967295u))), global2[_wgslsmith_index_u32(0u, 11u)]);
    var var_1 = _wgslsmith_dot_vec4_u32(~max(firstTrailingBit(abs(vec4<u32>(1u, 0u, 4294967295u, global0.a.x))), vec4<u32>(~0u, arg_0.a.x, ~1u, _wgslsmith_sub_u32(global0.a.x, arg_0.a.x))), ~abs(~(~vec4<u32>(54721u, 4294967295u, 0u, arg_0.a.x))));
    var var_2 = Struct_1(_wgslsmith_clamp_vec2_u32(select(vec2<u32>(u_input.c, global0.a.x) >> (vec2<u32>(global0.a.x, 4294967295u) % vec2<u32>(32u)), global0.a, vec2<bool>(true, true)) << (vec2<u32>(~u_input.d.x, 50000u) % vec2<u32>(32u)), ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, arg_0.a.x), u_input.b)), vec2<u32>(arg_0.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, global0.a.x, 30861u) | vec3<u32>(96814u, 21864u, u_input.c), vec3<u32>(arg_0.a.x, 4294967295u, 0u)))));
    var var_3 = arg_0;
    var var_4 = !select(select(vec3<bool>(false, select(true, global2[_wgslsmith_index_u32(34452u, 11u)], true), var_0.x), select(vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 11u)], true), !vec3<bool>(false, global2[_wgslsmith_index_u32(global0.a.x, 11u)], true), vec3<bool>(false, var_0.x, false)), !(!vec3<bool>(var_0.x, true, global2[_wgslsmith_index_u32(u_input.c, 11u)]))), !select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 30632u), 11u)]), all(!select(vec2<bool>(false, true), vec2<bool>(global2[_wgslsmith_index_u32(1u, 11u)], true), vec2<bool>(false, global2[_wgslsmith_index_u32(0u, 11u)]))));
    return StorageBuffer(49746u, vec2<f32>(-1348f, -1127f), -max(select(select(vec4<i32>(1i, 1i, 0i, 2147483647i), vec4<i32>(-3362i, 2147483647i, -1i, -10057i), vec4<bool>(var_4.x, var_4.x, var_0.x, var_0.x)), vec4<i32>(1i, -55924i, 16938i, 55197i), select(vec4<bool>(true, global2[_wgslsmith_index_u32(global0.a.x, 11u)], var_0.x, true), vec4<bool>(true, var_0.x, false, global2[_wgslsmith_index_u32(0u, 11u)]), false)), max(vec4<i32>(-1i, -17524i, 2147483647i, -15568i), -vec4<i32>(1525i, 0i, 2147483647i, -2147483647i))), ~_wgslsmith_add_vec2_i32(abs(select(vec2<i32>(-28996i, 1i), vec2<i32>(51663i, 2007i), var_4.zy)), ~vec2<i32>(1i, 1i)), max(~(~vec3<u32>(u_input.a, arg_0.a.x, var_3.a.x) << (vec3<u32>(u_input.b.x, var_3.a.x, 3542u) % vec3<u32>(32u))), vec3<u32>(0u, ~43863u, arg_0.a.x) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(23661u, u_input.b.x, arg_0.a.x), ~vec3<u32>(global0.a.x, var_3.a.x, 4294967295u)) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-843f)), _wgslsmith_f_op_f32(round(1000f)), global2[_wgslsmith_index_u32(max(u_input.a, global0.a.x), 11u)] | (1259u <= u_input.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1228f)), _wgslsmith_f_op_f32(trunc(690f))));
    let var_1 = Struct_1(~global0.a);
    let var_2 = ~_wgslsmith_sub_vec2_i32(select(reverseBits(vec2<i32>(2147483647i, 9899i)), -vec2<i32>(1i, 1i), global2[_wgslsmith_index_u32(~var_1.a.x | ~4294967295u, 11u)]), vec2<i32>(firstTrailingBit(2147483647i), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, -2892i, 9126i), vec3<i32>(-1i, -2147483647i, 1i), vec3<i32>(-2147483647i, 1i, -1i)), vec3<i32>(34554i, 2147483647i, 0i))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))));
    var var_4 = var_1;
    var var_5 = vec2<u32>(u_input.b.x, _wgslsmith_mult_u32(_wgslsmith_mod_u32(max(_wgslsmith_div_u32(var_1.a.x, 83680u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.b.x, 0u, 102684u), vec4<u32>(var_1.a.x, var_1.a.x, global0.a.x, 4294967295u))), ~var_1.a.x), ~var_4.a.x));
    var var_6 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(f32(-1f) * -363f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_3, var_3)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + 744f), false)), global2[_wgslsmith_index_u32(countOneBits(~var_4.a.x), 11u)]));
    let x = u_input.a;
    s_output = func_1(Struct_1(var_1.a));
}

