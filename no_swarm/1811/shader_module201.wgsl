struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<i32, 28> = array<i32, 28>(2481i, 0i, -1i, i32(-2147483648), -40358i, 446i, -1i, i32(-2147483648), 1i, 14229i, -32295i, 2147483647i, -1i, 29503i, -62030i, 2147483647i, -16792i, 1i, 19275i, 0i, 1i, 27519i, -1i, -6418i, 49280i, 20275i, 22855i, 0i);

var<private> global2: Struct_2 = Struct_2(4294967295u, Struct_1(true, vec3<f32>(2099f, 1701f, 985f)), true, Struct_1(false, vec3<f32>(1887f, -220f, 126f)), true);

var<private> global3: array<Struct_4, 2> = array<Struct_4, 2>(Struct_4(vec3<i32>(-10902i, 23712i, i32(-2147483648))), Struct_4(vec3<i32>(2147483647i, -54819i, 17238i)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool, arg_3: Struct_4) -> vec2<i32> {
    var var_0 = ~arg_1.a;
    global2 = Struct_2(abs(_wgslsmith_dot_vec2_u32(~select(vec2<u32>(1u, arg_0.b.a), vec2<u32>(arg_0.c.a, 63587u), arg_2), ~(~vec2<u32>(1u, 18687u)))), global2.d, arg_2, global2.d, all(select(!(!vec4<bool>(arg_0.c.b.a, arg_0.c.d.a, global2.b.a, true)), !select(vec4<bool>(true, global2.e, true, arg_1.d.a), vec4<bool>(arg_2, arg_2, true, arg_0.c.b.a), arg_0.c.d.a), vec4<bool>(any(vec4<bool>(arg_0.b.b.a, true, arg_0.b.e, arg_2)), all(vec4<bool>(true, global2.e, arg_0.b.d.a, true)), false, false && global2.b.a))));
    let var_1 = Struct_3(2094f, arg_1, Struct_2(arg_1.a, arg_0.c.d, all(select(vec4<bool>(false, arg_1.e, arg_2, false), vec4<bool>(global2.b.a, arg_1.c, arg_0.c.b.a, true), arg_1.c)) & (true && arg_2), Struct_1(arg_0.c.e, vec3<f32>(_wgslsmith_f_op_f32(abs(553f)), _wgslsmith_f_op_f32(global2.b.b.x - 822f), -804f)), arg_2));
    var var_2 = vec3<i32>(-1i) * -vec3<i32>(-_wgslsmith_sub_i32(u_input.b, -1i), _wgslsmith_sub_i32(1i, arg_3.a.x), 0i);
    let var_3 = Struct_4(_wgslsmith_div_vec3_i32(vec3<i32>(min(-1i, -u_input.a), var_2.x, 1i), arg_3.a));
    return -var_3.a.zz;
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = firstLeadingBit(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(-(~vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(global2.a, 28u)])), vec2<i32>(u_input.b, _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(global2.a, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)]))), vec2<i32>(u_input.b, _wgslsmith_dot_vec2_i32(func_3(Struct_3(global2.d.b.x, Struct_2(global2.a, global2.b, global2.b.a, Struct_1(false, vec3<f32>(global2.b.b.x, 380f, global2.b.b.x)), arg_0), Struct_2(4294967295u, Struct_1(true, vec3<f32>(206f, 357f, -555f)), arg_0, global2.d, true)), Struct_2(global2.a, Struct_1(arg_0, vec3<f32>(global2.d.b.x, -302f, 1557f)), false, global2.b, global2.b.a), true, Struct_4(vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(21920u, 28u)], -2147483647i))), firstTrailingBit(vec2<i32>(10384i, 13926i))))));
    global0 = reverseBits(_wgslsmith_sub_i32(-15718i, -u_input.b & ~(-1i)));
    var_0 = firstTrailingBit(-_wgslsmith_mod_vec2_i32(vec2<i32>(firstLeadingBit(u_input.a), -global1[_wgslsmith_index_u32(1u, 28u)]), vec2<i32>(select(var_0.x, 30923i, true), _wgslsmith_mult_i32(18627i, u_input.a))));
    global0 = -15398i;
    global1 = array<i32, 28>();
    return Struct_2(global2.a, Struct_1(false, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b.b.x * global2.d.b.x) * _wgslsmith_div_f32(global2.b.b.x, 579f)), _wgslsmith_f_op_f32(max(global2.d.b.x, _wgslsmith_f_op_f32(-global2.d.b.x))), global2.b.b.x)), true, Struct_1(!(!global2.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(global2.d.b)), _wgslsmith_div_vec3_f32(global2.b.b, vec3<f32>(1818f, 333f, 280f)), true)) - _wgslsmith_f_op_vec3_f32(-global2.d.b))), all(!select(select(vec4<bool>(false, global2.c, true, arg_0), vec4<bool>(arg_0, false, false, arg_0), vec4<bool>(false, arg_0, true, true)), !vec4<bool>(arg_0, global2.c, false, true), arg_0 || arg_0)));
}

fn func_1(arg_0: vec2<bool>) -> vec3<i32> {
    global2 = func_2((~u_input.a > -2147483647i) | true);
    global1 = array<i32, 28>();
    global0 = 1i;
    global3 = array<Struct_4, 2>();
    let var_0 = !(!(4294967295u < global2.a));
    return ~countOneBits(select(-vec3<i32>(u_input.a, global1[_wgslsmith_index_u32(global2.a, 28u)], global1[_wgslsmith_index_u32(0u, 28u)]), -vec3<i32>(u_input.b, u_input.b, -2147483647i), !vec3<bool>(true, arg_0.x, false)) ^ firstLeadingBit(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)], u_input.a) & vec3<i32>(3008i, global1[_wgslsmith_index_u32(3075u, 28u)], 1i)));
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> vec3<i32> {
    var var_0 = select(!select(vec4<bool>(global2.e, false, true, global2.e), !(!vec4<bool>(true, global2.b.a, global2.d.a, arg_1.c)), select(!vec4<bool>(true, arg_1.c, arg_1.c, false), !vec4<bool>(arg_1.d.a, false, false, false), vec4<bool>(arg_1.e, true, false, global2.e))), !(!vec4<bool>(!global2.d.a, -2147483647i == global1[_wgslsmith_index_u32(arg_1.a, 28u)], global2.e, global2.c)), all(select(select(select(vec4<bool>(false, global2.e, arg_1.b.a, true), vec4<bool>(false, global2.e, global2.b.a, true), true), vec4<bool>(global2.c, true, arg_1.c, false), select(vec4<bool>(false, true, global2.d.a, arg_1.b.a), vec4<bool>(false, true, true, false), vec4<bool>(true, true, arg_1.d.a, true))), !(!vec4<bool>(true, arg_1.b.a, true, arg_1.d.a)), select(!vec4<bool>(global2.c, global2.d.a, global2.d.a, false), vec4<bool>(arg_1.e, global2.b.a, true, false), select(vec4<bool>(false, false, arg_1.b.a, arg_1.b.a), vec4<bool>(false, false, arg_1.c, arg_1.d.a), vec4<bool>(global2.b.a, true, arg_1.e, global2.d.a))))));
    var var_1 = (!func_2(all(vec4<bool>(arg_1.b.a, arg_1.c, var_0.x, false))).c & all(!(!var_0.ywz))) == (_wgslsmith_div_f32(-698f, _wgslsmith_f_op_f32(-global2.b.b.x)) != -1542f);
    let var_2 = ~(~global1[_wgslsmith_index_u32(~(~1u), 28u)]);
    global0 = select(~global1[_wgslsmith_index_u32(arg_1.a, 28u)], _wgslsmith_sub_i32(~var_2, arg_0), !all(select(vec2<bool>(global2.d.a, arg_1.c), vec2<bool>(global2.c, true), false))) << (_wgslsmith_add_u32(arg_1.a, 19072u) % 32u);
    var var_3 = _wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(min(vec2<i32>(-21341i, 1i), vec2<i32>(var_2, 16191i)), vec2<i32>(0i, global1[_wgslsmith_index_u32(4294967295u, 28u)])), (~(-vec2<i32>(-2147483647i, 0i)) & max(abs(vec2<i32>(arg_0, -7276i)), vec2<i32>(-1i, var_2) & vec2<i32>(-29851i, 2147483647i))) >> (vec2<u32>(global2.a, global2.a) % vec2<u32>(32u)));
    return abs(~_wgslsmith_clamp_vec3_i32(firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(-790i, 13967i, u_input.a), vec3<i32>(var_2, u_input.b, var_3.x))), vec3<i32>(global1[_wgslsmith_index_u32(~global2.a, 28u)], -34455i | arg_0, min(u_input.b, 1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(34416i, var_3.x, 0i), min(vec3<i32>(0i, -1631i, 1i), vec3<i32>(-24763i, -41304i, var_3.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -48024i;
    let var_1 = _wgslsmith_f_op_f32(-161f + -2014f);
    var var_2 = func_4(_wgslsmith_dot_vec3_i32(select(select(vec3<i32>(var_0, u_input.b, 0i), func_1(vec2<bool>(global2.c, global2.c)), global2.d.a), vec3<i32>(-var_0, -u_input.a, global1[_wgslsmith_index_u32(1u, 28u)] << (4294967295u % 32u)), true & (global1[_wgslsmith_index_u32(0u, 28u)] == var_0)), vec3<i32>(1i, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(42640u, 82817u, 1u), max(vec3<u32>(11024u, global2.a, global2.a), vec3<u32>(4294967295u, global2.a, 13963u))), 28u)], countOneBits(global1[_wgslsmith_index_u32(~54582u, 28u)]))), func_2(true));
    let var_3 = -2147483647i;
    var var_4 = -555f;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec2<u32>(global2.a, global2.a))) | _wgslsmith_sub_vec2_u32(vec2<u32>(global2.a, global2.a) ^ ~vec2<u32>(5688u, 1u), firstLeadingBit(~vec2<u32>(4294967295u, global2.a))), _wgslsmith_mod_u32(global2.a, global2.a), reverseBits(~vec4<u32>(22567u, 38257u, 4294967295u, global2.a)) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(global2.a, global2.a), ~global2.a, 0u, global2.a), abs(vec4<u32>(global2.a, global2.a, global2.a, 4294967295u))), firstTrailingBit(1i));
}

