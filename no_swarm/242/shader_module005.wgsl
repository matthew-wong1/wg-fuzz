struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: i32,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32 = 3344f;

var<private> global2: u32 = 35962u;

var<private> global3: array<i32, 25>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_3) -> i32 {
    var var_0 = !(!vec4<bool>(global0.a.x, arg_0.a.a.x, arg_0.c.a.x, !arg_0.c.a.x));
    global0 = arg_0.a;
    let var_1 = !global0.a;
    global2 = 10088u;
    global0 = arg_0.b;
    return global0.c;
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_3) -> u32 {
    var var_0 = global0.c;
    let var_1 = arg_2;
    let var_2 = Struct_1(vec3<bool>(true, all(vec4<bool>(any(vec3<bool>(true, arg_2.c.a.x, arg_2.b.a.x)), arg_2.c.a.x, arg_2.c.a.x, true)), any(vec4<bool>(true, false, select(arg_2.c.a.x, false, true), var_1.c.a.x))), _wgslsmith_f_op_f32(-801f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-820f - -436f))))), _wgslsmith_add_i32(var_1.c.c, global0.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(904f, -1000f, global0.d.x), _wgslsmith_f_op_vec3_f32(ceil(arg_2.a.d)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.d.x, arg_2.b.b) * _wgslsmith_f_op_f32(f32(-1f) * -1032f)), _wgslsmith_f_op_f32(select(global0.d.x, var_1.a.d.x, true)), 827f)), _wgslsmith_f_op_f32(step(global0.e, -552f)));
    let var_3 = arg_2.a;
    var var_4 = Struct_4(vec4<i32>((-1i >> (_wgslsmith_mod_u32(17011u, u_input.a) % 32u)) << ((~4294967295u & ~u_input.a) % 32u), var_1.b.c, -abs(i32(-1i) * -83574i), select(1i, var_1.a.c, !all(vec2<bool>(arg_2.b.a.x, false)))), 48252u);
    return arg_1;
}

fn func_1(arg_0: bool, arg_1: vec4<f32>) -> Struct_3 {
    var var_0 = Struct_4(_wgslsmith_mod_vec4_i32(vec4<i32>(1i ^ func_2(Struct_3(Struct_1(global0.a, -719f, -1i, vec3<f32>(1091f, -1064f, arg_1.x), -261f), Struct_1(vec3<bool>(arg_0, true, arg_0), global0.b, -1i, vec3<f32>(-1678f, -1000f, global0.b), global0.b), Struct_1(vec3<bool>(true, global0.a.x, arg_0), global0.b, global3[_wgslsmith_index_u32(18959u, 25u)], arg_1.xwx, 1539f))), firstLeadingBit(global0.c >> (62660u % 32u)), firstTrailingBit(~global3[_wgslsmith_index_u32(u_input.a, 25u)]), -global0.c >> (u_input.a % 32u)), vec4<i32>(~global3[_wgslsmith_index_u32(43225u, 25u)], abs(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.c, 34043i, -1i), vec3<i32>(global3[_wgslsmith_index_u32(1u, 25u)], 0i, global0.c))), _wgslsmith_div_i32(global0.c >> (4294967295u % 32u), ~(-37935i)), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, 1u) | u_input.a, 25u)])), 47337u << (select(reverseBits(func_3(vec4<bool>(false, false, true, arg_0), u_input.a, Struct_3(Struct_1(global0.a, global0.b, 2147483647i, vec3<f32>(arg_1.x, -802f, -205f), arg_1.x), Struct_1(global0.a, -272f, global3[_wgslsmith_index_u32(u_input.a, 25u)], arg_1.yxz, global0.b), Struct_1(vec3<bool>(global0.a.x, true, true), -610f, global3[_wgslsmith_index_u32(u_input.a, 25u)], arg_1.zwx, -1245f)))), ~(~u_input.a), global0.a.x) % 32u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * -527f))));
    global3 = array<i32, 25>();
    var var_2 = select(!vec3<bool>(true, arg_0, true), global0.a, !(~(~(-1i)) > ((var_0.a.x >> (1u % 32u)) ^ _wgslsmith_mod_i32(-1i, 2147483647i))));
    let var_3 = var_0.b;
    return Struct_3(Struct_1(global0.a, 462f, firstTrailingBit(countOneBits(global3[_wgslsmith_index_u32(var_0.b, 25u)])), _wgslsmith_f_op_vec3_f32(-arg_1.ywy), 179f), Struct_1(select(global0.a, global0.a, !(global3[_wgslsmith_index_u32(u_input.a, 25u)] >= global0.c)), var_1, global0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-349f, -833f, -1000f) + arg_1.yzy)))), 1023f), Struct_1(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -1884f), 52510i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1, -307f, 686f), vec3<f32>(global0.d.x, global0.d.x, global0.d.x)), global0.d)), var_1));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec3<i32>) -> Struct_2 {
    global2 = abs(u_input.a);
    var var_0 = global0.d;
    var var_1 = Struct_4(vec4<i32>(global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(46362u, 4294967295u) & vec2<u32>(u_input.a, 11341u), vec2<u32>(27359u, 4294967295u) | vec2<u32>(4294967295u, u_input.a)), 25u)], arg_1.a.c, ~reverseBits(arg_2.x >> (69393u % 32u)), -(39829i & _wgslsmith_dot_vec2_i32(arg_2.xx, vec2<i32>(1i, arg_1.b.c)))), u_input.a);
    var var_2 = 44358u;
    var var_3 = arg_1;
    return Struct_2(global0.b, -297f, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 25>();
    global2 = u_input.a;
    var var_0 = false;
    var var_1 = _wgslsmith_sub_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(abs(u_input.a), 25u)], 2147483647i, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, u_input.a), 25u)], global0.c), min(vec4<i32>(global3[_wgslsmith_index_u32(u_input.a, 25u)], global3[_wgslsmith_index_u32(63736u, 25u)], global3[_wgslsmith_index_u32(6450u, 25u)], -1i), vec4<i32>(0i, global0.c, global0.c, -58188i))), abs(-select(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.c, global3[_wgslsmith_index_u32(u_input.a, 25u)], 4158i, 16603i), vec4<i32>(-1i, 0i, global3[_wgslsmith_index_u32(22856u, 25u)], global0.c), vec4<i32>(global0.c, -1i, global3[_wgslsmith_index_u32(1u, 25u)], 24524i)), vec4<i32>(1i, global0.c, global3[_wgslsmith_index_u32(u_input.a, 25u)], global0.c), true)));
    var var_2 = func_4(_wgslsmith_f_op_f32(-global0.b), func_1(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.b, -1392f, global0.d.x, 378f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, global0.d.x, global0.b, global0.e))))), countOneBits(vec3<i32>(-1i) * -abs(var_1.xxx)));
    var var_3 = ~firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(firstTrailingBit(1u), ~42666u), ~vec2<u32>(u_input.a, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_f32(var_2.a + var_2.a), _wgslsmith_mult_vec4_u32(~firstLeadingBit(vec4<u32>(8582u, var_3.x, 278u, u_input.a)), vec4<u32>(u_input.a | 1u, u_input.a, var_3.x, _wgslsmith_sub_u32(31229u, ~u_input.a))), 25619u, var_1.xyx);
}

