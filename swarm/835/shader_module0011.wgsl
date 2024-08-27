struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 1> = array<vec3<i32>, 1>(vec3<i32>(-39688i, 1i, 2147483647i));

var<private> global1: array<bool, 10>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<i32> {
    global0 = array<vec3<i32>, 1>();
    var var_0 = all(select(vec4<bool>(global1[_wgslsmith_index_u32(5114u, 10u)], false, firstTrailingBit(2147483647i) == (u_input.a.x >> (u_input.c.x % 32u)), global1[_wgslsmith_index_u32(abs(~u_input.c.x), 10u)]), vec4<bool>(!global1[_wgslsmith_index_u32(4294967295u, 10u)] && global1[_wgslsmith_index_u32(min(u_input.c.x, u_input.c.x), 10u)], true, !any(vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 10u)], true, global1[_wgslsmith_index_u32(u_input.c.x, 10u)])), !global1[_wgslsmith_index_u32(u_input.c.x, 10u)]), !select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 10u)], global1[_wgslsmith_index_u32(2964u, 10u)], global1[_wgslsmith_index_u32(u_input.c.x, 10u)]), vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(20250u, 10u)]), vec4<bool>(global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(u_input.c.x, 10u)], global1[_wgslsmith_index_u32(u_input.c.x, 10u)], global1[_wgslsmith_index_u32(u_input.c.x, 10u)])), !vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 10u)], true, global1[_wgslsmith_index_u32(u_input.c.x, 10u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 10u)], true, false, false), vec4<bool>(global1[_wgslsmith_index_u32(41106u, 10u)], global1[_wgslsmith_index_u32(13058u, 10u)], true, global1[_wgslsmith_index_u32(u_input.c.x, 10u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 10u)], global1[_wgslsmith_index_u32(u_input.c.x, 10u)], global1[_wgslsmith_index_u32(u_input.c.x, 10u)], global1[_wgslsmith_index_u32(33694u, 10u)])))));
    var_0 = global1[_wgslsmith_index_u32(~u_input.c.x, 10u)];
    var var_1 = Struct_1(~0u, u_input.a.x >> (28912u % 32u), u_input.c.yy);
    var var_2 = Struct_1(~(~_wgslsmith_add_u32(15272u ^ var_1.a, 30527u)), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.b, var_1.b, u_input.b, u_input.b), vec4<i32>(~1i, u_input.b, ~var_1.b, i32(-1i) * -19394i)), vec4<i32>(_wgslsmith_dot_vec2_i32(abs(u_input.a), select(u_input.a, vec2<i32>(-4263i, 33137i), true)), ~(-var_1.b), -max(var_1.b, u_input.b), 29201i)), ~u_input.c.yw);
    return min((firstLeadingBit(abs(vec4<i32>(2147483647i, var_2.b, 0i, var_2.b))) ^ ~(-vec4<i32>(var_1.b, u_input.b, 13941i, var_2.b))) >> (~vec4<u32>(37216u, _wgslsmith_sub_u32(var_1.a, 4294967295u), 1u, u_input.c.x << (1u % 32u)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_sub_i32(1i, _wgslsmith_add_i32(var_1.b, -8535i)), -2147483647i, -29329i, var_2.b) & vec4<i32>(var_2.b, 2147483647i, 13587i, _wgslsmith_sub_i32(countOneBits(36697i), u_input.a.x)));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: vec2<bool>) -> vec3<f32> {
    var var_0 = u_input.c.yw;
    var var_1 = u_input.a;
    let var_2 = u_input.b;
    var var_3 = vec3<i32>(-_wgslsmith_dot_vec3_i32(-select(global0[_wgslsmith_index_u32(31989u, 1u)], global0[_wgslsmith_index_u32(var_0.x, 1u)], true), -firstTrailingBit(global0[_wgslsmith_index_u32(var_0.x, 1u)])), _wgslsmith_dot_vec4_i32(-(~vec4<i32>(-2147483647i, -22649i, -1i, u_input.b)) >> (u_input.c % vec4<u32>(32u)), -func_3()), -1i);
    let var_4 = vec2<f32>(-735f, -178f);
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(681f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1190f)))))));
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = firstLeadingBit(min(vec4<i32>(5332i, u_input.b ^ _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, arg_3.b), vec2<i32>(54000i, arg_3.b)), arg_3.b, u_input.b), vec4<i32>(-u_input.a.x, 2147483647i >> (arg_1 % 32u), ~u_input.a.x, _wgslsmith_div_i32(2147483647i, u_input.a.x)) >> ((u_input.c & ~u_input.c) % vec4<u32>(32u))));
    global1 = array<bool, 10>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(252f, 892f, -600f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -307f, 317f), vec3<f32>(-1244f, 961f, -1306f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(arg_2, u_input.b, arg_0)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(906f, 467f, 917f)))))));
    global1 = array<bool, 10>();
    let var_2 = !(!vec3<bool>(true, arg_2, true));
    return select(vec4<bool>(var_2.x, !var_2.x, -1i <= -_wgslsmith_clamp_i32(arg_3.b, u_input.b, 18942i), arg_0.x), select(!(!select(vec4<bool>(arg_0.x, false, var_2.x, false), vec4<bool>(false, var_2.x, var_2.x, arg_0.x), vec4<bool>(true, false, arg_2, false))), vec4<bool>(all(vec4<bool>(false, global1[_wgslsmith_index_u32(arg_1, 10u)], true, var_2.x)), arg_2, global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(119765u, 32847u, u_input.c.x), 10u)], any(!arg_0)), !(!global1[_wgslsmith_index_u32(38496u, 10u)]) & global1[_wgslsmith_index_u32(u_input.c.x, 10u)]), !(!(!arg_2)) || any(!vec3<bool>(arg_2, true, arg_2)));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    return Struct_1(_wgslsmith_mult_u32(firstTrailingBit(4294967295u), ~(~(u_input.c.x | 0u))), firstLeadingBit(u_input.b), ~_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(select(arg_2.c, vec2<u32>(4294967295u, 4294967295u), arg_0.x), _wgslsmith_sub_vec2_u32(arg_2.c, arg_2.c), countOneBits(vec2<u32>(57204u, arg_3.c.x))), ~(~u_input.c.yy)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(!select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 10u)], true, true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 10u)], global1[_wgslsmith_index_u32(u_input.c.x, 10u)], true, global1[_wgslsmith_index_u32(4294967295u, 10u)]), vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(u_input.c.x, 10u)])), vec4<bool>(all(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 10u)], global1[_wgslsmith_index_u32(u_input.c.x, 10u)])), true, true, global1[_wgslsmith_index_u32(u_input.c.x, 10u)]), true), select(select(func_1(vec2<bool>(true, false), max(u_input.c.x, u_input.c.x), global1[_wgslsmith_index_u32(49169u, 10u)] && global1[_wgslsmith_index_u32(63442u, 10u)], Struct_1(u_input.c.x, 11422i, vec2<u32>(u_input.c.x, u_input.c.x))), select(vec4<bool>(true, true, global1[_wgslsmith_index_u32(3813u, 10u)], global1[_wgslsmith_index_u32(u_input.c.x, 10u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 10u)], false, true), true), select(vec4<bool>(false, global1[_wgslsmith_index_u32(100539u, 10u)], true, global1[_wgslsmith_index_u32(4294967295u, 10u)]), !vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 10u)], global1[_wgslsmith_index_u32(11779u, 10u)], false), true)), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 10u)], true, select(true, false, true), false), select(!vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(u_input.c.x, 10u)]), vec4<bool>(global1[_wgslsmith_index_u32(~u_input.c.x, 10u)], all(vec4<bool>(global1[_wgslsmith_index_u32(0u, 10u)], false, global1[_wgslsmith_index_u32(0u, 10u)], false)), false, false), all(!vec2<bool>(global1[_wgslsmith_index_u32(8899u, 10u)], global1[_wgslsmith_index_u32(u_input.c.x, 10u)])))), Struct_1(~firstLeadingBit(u_input.c.x), 1i, _wgslsmith_mult_vec2_u32(~(~vec2<u32>(u_input.c.x, u_input.c.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.c.ww)))), Struct_1(1u, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a.x, -501i), -u_input.a), vec2<u32>(~_wgslsmith_mult_u32(u_input.c.x, u_input.c.x), u_input.c.x)));
    let var_1 = Struct_1(~u_input.c.x, -var_0.b, u_input.c.zw);
    global1 = array<bool, 10>();
    global0 = array<vec3<i32>, 1>();
    var var_2 = !(!func_1(select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(76214u, 10u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 10u)]), !vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(var_1.a, 10u)])), ~44819u, all(vec3<bool>(true, false, true)) && (false || global1[_wgslsmith_index_u32(11339u, 10u)]), Struct_1(1u >> (u_input.c.x % 32u), firstTrailingBit(2147483647i), select(var_0.c, var_1.c, false))).zz);
    let var_3 = select(select(!vec2<bool>(!var_2.x, false), !vec2<bool>(global1[_wgslsmith_index_u32(34706u, 10u)], var_1.a == 4294967295u), true), vec2<bool>(true, true), var_2.x);
    global1 = array<bool, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + vec4<f32>(-308f, 805f, -490f, 1281f))))), 1i, select(~u_input.c, firstLeadingBit(u_input.c), !func_1(vec2<bool>(var_3.x, global1[_wgslsmith_index_u32(var_1.a, 10u)]), _wgslsmith_mult_u32(33096u, var_0.c.x), true, Struct_1(var_0.c.x, 39468i, vec2<u32>(u_input.c.x, 53915u)))));
}

