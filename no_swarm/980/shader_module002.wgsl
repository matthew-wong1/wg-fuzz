struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(4294967295u, 4208u), vec2<u32>(14836u, 4294967295u), vec2<u32>(1u, 54790u), vec2<u32>(4294967295u, 0u), vec2<u32>(30760u, 0u), vec2<u32>(1u, 7619u), vec2<u32>(37089u, 0u), vec2<u32>(38287u, 0u), vec2<u32>(23177u, 1u), vec2<u32>(0u, 4299u), vec2<u32>(4294967295u, 1u), vec2<u32>(62028u, 40810u), vec2<u32>(1u, 1u), vec2<u32>(81828u, 80217u), vec2<u32>(0u, 0u), vec2<u32>(1u, 0u), vec2<u32>(30003u, 167u));

var<private> global1: array<vec3<i32>, 16> = array<vec3<i32>, 16>(vec3<i32>(-61117i, 1i, 21606i), vec3<i32>(89725i, 1i, -22520i), vec3<i32>(1i, -1i, -44416i), vec3<i32>(i32(-2147483648), 4988i, i32(-2147483648)), vec3<i32>(0i, -7335i, 7668i), vec3<i32>(-1i, 0i, -17968i), vec3<i32>(1i, -38321i, 2147483647i), vec3<i32>(i32(-2147483648), 13716i, 1i), vec3<i32>(2147483647i, 20070i, 2147483647i), vec3<i32>(-20309i, 2147483647i, -1i), vec3<i32>(1i, i32(-2147483648), 0i), vec3<i32>(-7557i, i32(-2147483648), i32(-2147483648)), vec3<i32>(0i, 1i, 6523i), vec3<i32>(2147483647i, 39947i, 46966i), vec3<i32>(-1i, -20515i, -69957i), vec3<i32>(-1i, -1i, 2147483647i));

var<private> global2: f32;

var<private> global3: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(~(~arg_1), 17u)];
    global2 = _wgslsmith_f_op_f32(exp2(global3.b.x));
    let var_1 = _wgslsmith_add_vec4_u32(max(firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1, 19457u, 1579u, 50015u), ~vec4<u32>(u_input.b.x, 127703u, 5492u, arg_1))), ~(~(vec4<u32>(var_0.x, var_0.x, 4294967295u, 38512u) | vec4<u32>(4294967295u, var_0.x, 4294967295u, 0u)))), reverseBits(vec4<u32>(min(var_0.x, arg_1), u_input.b.x, ~66286u, 1u)) << ((vec4<u32>(32703u, 350u, arg_1 ^ arg_1, ~var_0.x) >> (max(~vec4<u32>(0u, 6033u, 46391u, u_input.b.x), vec4<u32>(var_0.x, var_0.x, u_input.b.x, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_2 = firstLeadingBit(u_input.c);
    var var_3 = Struct_1(select(select(select(global3.a, global3.a, !global3.c.x), vec4<bool>(true, true, !global3.a.x, false), vec4<bool>(20994u != arg_1, !global3.c.x, false | global3.a.x, true)), !select(vec4<bool>(true, global3.c.x, global3.c.x, false), !global3.a, true), !(!vec4<bool>(global3.a.x, global3.a.x, false, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3.b.x, -1417f, arg_0.a.x, -409f))) + global3.b)) * vec4<f32>(768f, _wgslsmith_f_op_f32(ceil(-1000f)), arg_0.a.x, global3.b.x)), !select(!(!vec2<bool>(global3.c.x, global3.c.x)), select(global3.c, select(vec2<bool>(global3.c.x, global3.a.x), vec2<bool>(global3.a.x, false), global3.a.zx), global3.c.x), true));
    return ~reverseBits(4294967295u);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: vec3<i32>, arg_3: vec3<f32>) -> bool {
    let var_0 = min(max(_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.b.x, 3603u) & u_input.b.x, 0u), _wgslsmith_div_u32(_wgslsmith_add_u32(~arg_1.x, 0u), abs(u_input.b.x) >> (~u_input.b.x % 32u))), ~(~(~u_input.b.x)) | max(func_3(Struct_2(vec2<f32>(arg_3.x, arg_3.x), u_input.c.xz), _wgslsmith_div_u32(u_input.b.x, 0u)), arg_1.x));
    var var_1 = firstLeadingBit(1u);
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -132f);
    global3 = Struct_1(select(select(vec4<bool>(u_input.c.x != 17562i, false, global3.c.x & true, any(vec3<bool>(global3.c.x, true, true))), vec4<bool>(global3.c.x, any(arg_0.yyx), arg_1.x > arg_1.x, !arg_0.x), !vec4<bool>(false, global3.c.x, false, false)), global3.a, !vec4<bool>(true, all(arg_0.xx), arg_1.x >= 79812u, global3.a.x)), vec4<f32>(468f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.b.x, _wgslsmith_f_op_f32(-global3.b.x))), -1188f, -1000f), vec2<bool>(!any(global3.a), all(!select(vec2<bool>(true, global3.a.x), global3.c, vec2<bool>(true, false)))));
    global0 = array<vec2<u32>, 17>();
    return global3.c.x && false;
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec2<bool>, arg_3: Struct_1) -> u32 {
    let var_0 = Struct_1(!select(global3.a, vec4<bool>(func_2(arg_3.a, vec3<u32>(1u, 54423u, u_input.b.x), global1[_wgslsmith_index_u32(u_input.b.x, 16u)], vec3<f32>(arg_3.b.x, 1000f, 1372f)), !arg_3.c.x, 124f == arg_1, all(vec2<bool>(arg_2.x, false))), vec4<bool>(any(arg_3.a.zyw), true, true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_3.b.x, 375f, -135f, arg_3.b.x), arg_3.b, true)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1199f, global3.b.x, arg_1, arg_3.b.x) + arg_3.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 850f, global3.b.x, arg_1) - vec4<f32>(global3.b.x, 586f, -1056f, 1000f)))), !arg_3.c);
    let var_1 = var_0;
    let var_2 = select(arg_3.a.ywz, select(arg_3.a.yzy, var_1.a.xyx, !global3.a.yzx), var_1.a.wwx);
    let var_3 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(arg_0, arg_0, 2147483647i, u_input.c.x)) ^ max(vec4<i32>(-44680i, -21184i, u_input.a, -2438i), vec4<i32>(-1i, u_input.a, 1i, 1i)), select(_wgslsmith_mod_vec4_i32(vec4<i32>(22800i, arg_0, u_input.c.x, -9814i), vec4<i32>(9478i, 0i, 1i, -18620i)), ~vec4<i32>(-2147483647i, -1i, 2147483647i, arg_0), true)), vec4<i32>(-u_input.a, arg_0 & 2147483647i, u_input.c.x, -arg_0) << (vec4<u32>(~54235u, ~80652u, ~u_input.b.x, u_input.b.x) % vec4<u32>(32u))), u_input.c.x);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_3.b.x * _wgslsmith_f_op_f32(var_1.b.x + -483f)), var_1.b.x)))));
    return func_3(Struct_2(var_0.b.xz, _wgslsmith_mod_vec2_i32(u_input.c.xx, vec2<i32>(arg_0, reverseBits(u_input.a)))), ~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~_wgslsmith_mod_vec3_i32(global1[_wgslsmith_index_u32(func_1(-2147483647i, -608f, vec2<bool>(false, true), Struct_1(vec4<bool>(true, false, global3.a.x, true), global3.b, vec2<bool>(global3.a.x, true))), 16u)] & abs(u_input.c), ~(~u_input.c)));
    global0 = array<vec2<u32>, 17>();
    global0 = array<vec2<u32>, 17>();
    global0 = array<vec2<u32>, 17>();
    let var_1 = Struct_1(global3.a, _wgslsmith_div_vec4_f32(global3.b, vec4<f32>(-612f, -1116f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(933f, global3.b.x)))), _wgslsmith_f_op_f32(global3.b.x - _wgslsmith_f_op_f32(round(1125f))))), select(!select(vec2<bool>(global3.c.x, true), vec2<bool>(true, true), any(vec3<bool>(global3.a.x, global3.c.x, true))), select(select(select(global3.a.wy, vec2<bool>(true, global3.c.x), global3.c.x), vec2<bool>(global3.a.x, false), false), select(select(vec2<bool>(false, global3.c.x), global3.a.zz, global3.a.x), select(vec2<bool>(true, global3.a.x), global3.c, vec2<bool>(global3.a.x, false)), func_2(global3.a, vec3<u32>(20402u, u_input.b.x, 83173u), global1[_wgslsmith_index_u32(0u, 16u)], vec3<f32>(394f, 1107f, -119f))), global3.c.x), !select(select(global3.a.yw, global3.a.xy, false), !global3.a.yy, var_0.x != -2147483647i)));
    let var_2 = global1[_wgslsmith_index_u32(select(u_input.b.x, _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(0u, 17u)], u_input.b), all(select(!select(vec2<bool>(var_1.a.x, var_1.c.x), vec2<bool>(var_1.c.x, global3.c.x), global3.a.x), !global3.a.xw, global3.a.yy))), 16u)];
    var var_3 = vec4<bool>(global3.a.x, true, !var_1.a.x, global3.c.x || all(!(!global3.a.xyw)));
    let var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global3.b.x, _wgslsmith_f_op_f32(global3.b.x - _wgslsmith_f_op_f32(global3.b.x * 1618f))), vec2<f32>(global3.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(257f - -168f) - -164f)))), select(~vec2<i32>(_wgslsmith_sub_i32(var_2.x, var_2.x), u_input.a), var_0.yz, false));
    global3 = Struct_1(!vec4<bool>(false, all(!vec3<bool>(var_1.a.x, global3.a.x, true)), 16732u != ~u_input.b.x, global3.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-200f, -1000f, var_1.b.x, -910f), vec4<f32>(global3.b.x, 1788f, var_1.b.x, 274f), var_1.a)), _wgslsmith_f_op_vec4_f32(-global3.b))) - _wgslsmith_div_vec4_f32(global3.b, vec4<f32>(_wgslsmith_f_op_f32(var_1.b.x + global3.b.x), var_1.b.x, 1153f, var_4.a.x))), !var_3.wz);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(175f, _wgslsmith_f_op_f32(-var_1.b.x)), var_4.a.x, var_1.b.x, _wgslsmith_f_op_f32(abs(var_4.a.x))), abs(23483i), vec3<i32>(-(countOneBits(-1i) << (_wgslsmith_div_u32(u_input.b.x, 29397u) % 32u)), _wgslsmith_mod_i32(firstLeadingBit(var_0.x), var_2.x) & u_input.c.x, ~(-max(2147483647i, -12286i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1187f, global3.b.x))));
}

