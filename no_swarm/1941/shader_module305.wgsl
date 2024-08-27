struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 27>;

var<private> global2: vec4<i32> = vec4<i32>(4616i, 15843i, i32(-2147483648), i32(-2147483648));

var<private> global3: Struct_3;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> Struct_2 {
    let var_0 = global3.c;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1550f * 823f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(119f)) - _wgslsmith_f_op_f32(-1388f - 1506f)))));
    var var_2 = Struct_3(u_input.a, global3.b, global3.c);
    let var_3 = Struct_3(var_0.a, var_2.b, Struct_1(~var_0.a, global3.c.b));
    let var_4 = _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(global2.wy, -(vec2<i32>(global2.x, 1i) & vec2<i32>(0i, global2.x))) << (var_2.b.yz % vec2<u32>(32u)), vec2<i32>(global2.x, countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global2.x, global2.x, 2147483647i), abs(vec4<i32>(-37181i, -31913i, 2147483647i, global2.x))))));
    return Struct_2(Struct_1(var_2.c.a, vec3<bool>(var_0.b.x, false, all(!var_0.b.zz))), Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(41609u, 1u, u_input.a, var_0.a), select(vec4<u32>(0u, var_0.a, 88540u, u_input.a), vec4<u32>(var_0.a, u_input.a, 1732u, var_3.c.a), vec4<bool>(var_2.c.b.x, var_2.c.b.x, true, false))), !(!vec3<bool>(global3.c.b.x, true, global1[_wgslsmith_index_u32(global3.c.a, 27u)]))));
}

fn func_3() -> Struct_2 {
    let var_0 = vec4<u32>(~_wgslsmith_mult_u32(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.a, 34767u, 16279u, u_input.a), vec4<u32>(u_input.a, 70950u, 11546u, global3.c.a))), 80052u), ~23091u, ~global3.b.x, global3.b.x);
    var var_1 = func_2().a;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(255f, -331f))))));
    let var_3 = ~_wgslsmith_clamp_vec3_u32(var_0.zyx, vec3<u32>(1u, ~4294967295u, 1u), reverseBits(_wgslsmith_mod_vec3_u32(global3.b, vec3<u32>(8405u, global3.b.x, 25706u))) << (countOneBits(min(vec3<u32>(0u, var_0.x, var_1.a), global3.b)) % vec3<u32>(32u)));
    global2 = vec4<i32>(~(-2147483647i), global2.x, 0i, -2147483647i) << (select(~countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(global3.b.x, 4294967295u, 73129u, 50115u), var_0)), select(vec4<u32>(_wgslsmith_div_u32(var_0.x, var_1.a), global3.c.a, 29694u >> (0u % 32u), 0u), ~(~var_0), any(!global3.c.b.xx)), global3.c.b.x) % vec4<u32>(32u));
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> Struct_3 {
    var var_0 = arg_2;
    var var_1 = vec3<bool>(any(!vec3<bool>(global2.x < global2.x, true, true)), any(vec2<bool>(arg_2.b.b.x, any(select(vec4<bool>(true, true, arg_1.b.x, global1[_wgslsmith_index_u32(91091u, 27u)]), vec4<bool>(false, arg_1.b.x, arg_1.b.x, false), true)))), global3.c.b.x);
    var var_2 = 28694i;
    let var_3 = global3.c.b.xy;
    global0 = _wgslsmith_f_op_f32(step(-457f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -879f)))))));
    return Struct_3(35073u, _wgslsmith_mult_vec3_u32(~_wgslsmith_mod_vec3_u32(min(vec3<u32>(118735u, 4294967295u, arg_0.a.a), global3.b), global3.b), ~reverseBits(_wgslsmith_sub_vec3_u32(global3.b, vec3<u32>(arg_1.a, 0u, arg_1.a)))), func_3().a);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1) -> u32 {
    let var_0 = global2.x << (1u % 32u);
    global1 = array<bool, 27>();
    var var_1 = _wgslsmith_div_vec2_u32(arg_0.b.zx, global3.b.xz);
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2032f, -1802f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-317f - 191f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 910f)) * 1194f));
    global2 = vec4<i32>(max(var_0, firstLeadingBit(2147483647i)), _wgslsmith_mult_i32(var_0, ~global2.x), _wgslsmith_add_i32(global2.x, -1559i), 46647i);
    return u_input.a;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_3) -> Struct_2 {
    var var_0 = global3.a;
    var_0 = func_5(func_4(func_2(), arg_2.c, func_3()), func_2().a);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!(!(-48766i <= _wgslsmith_mult_i32(global2.x, global2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-842f * 982f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -295f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -204f), _wgslsmith_f_op_f32(-308f + -571f), true)))), Struct_3(u_input.a, max(vec3<u32>(abs(0u), _wgslsmith_div_u32(global3.b.x, 1u), abs(u_input.a)), global3.b), Struct_1(3766u | global3.b.x, vec3<bool>(true, true, true))));
    var var_1 = global2.x;
    let var_2 = vec3<i32>(global2.x, global2.x, global2.x);
    let var_3 = _wgslsmith_clamp_vec4_i32(abs(select(~select(vec4<i32>(-23267i, global2.x, global2.x, -2147483647i), vec4<i32>(1i, 18914i, 45275i, 2147483647i), vec4<bool>(false, global3.c.b.x, global3.c.b.x, global3.c.b.x)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(global2.x, var_2.x, var_2.x, var_2.x), vec4<i32>(58834i, global2.x, global2.x, var_2.x), -vec4<i32>(0i, 2147483647i, var_2.x, var_2.x)), vec4<bool>(var_0.b.b.x, global3.c.b.x, !var_0.b.b.x, any(vec4<bool>(false, true, global1[_wgslsmith_index_u32(113977u, 27u)], global1[_wgslsmith_index_u32(global3.a, 27u)]))))), vec4<i32>(abs(var_2.x), 0i ^ -_wgslsmith_mod_i32(-22923i, global2.x), var_2.x, min(global2.x, var_2.x)), ~abs(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.x, 35113i, var_2.x, global2.x), vec4<i32>(global2.x, 21820i, global2.x, var_2.x)), -vec4<i32>(1i, global2.x, global2.x, global2.x))));
    let var_4 = global2.wx;
    let x = u_input.a;
    s_output = StorageBuffer(0i, global3.b.xy);
}

