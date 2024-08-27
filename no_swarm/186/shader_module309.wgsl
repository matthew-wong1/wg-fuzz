struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec2<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec2<u32> = vec2<u32>(1u, 31659u);

var<private> global2: Struct_4;

var<private> global3: array<f32, 19> = array<f32, 19>(-985f, -617f, 216f, -448f, 619f, -564f, -1049f, 448f, -260f, 1822f, 416f, 375f, -270f, -1037f, -1706f, -753f, 1036f, 1000f, 1939f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_4) -> f32 {
    global2 = arg_0;
    global0 = arg_1;
    var var_0 = arg_2.a;
    return -1189f;
}

fn func_2() -> bool {
    global3 = array<f32, 19>();
    var var_0 = vec4<bool>(global0.x, !global0.x && global0.x, all(select(!vec4<bool>(global0.x, true, global0.x, true), vec4<bool>(true, any(vec2<bool>(global0.x, global0.x)), true, true), 1774f <= _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(6192u, 19u)]))), true);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(113f, global3[_wgslsmith_index_u32(4294967295u, 19u)]), _wgslsmith_f_op_f32(func_3(Struct_4(global2.b.a.x, Struct_2(global2.b.a, vec4<u32>(global1.x, 29089u, 4294967295u, u_input.d)), vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 19u)], global2.a), 21003u), vec4<bool>(global0.x, global0.x, true, global0.x), Struct_1(false, vec4<i32>(-1i, -15186i, u_input.a.x, 2147483647i)), Struct_4(1080f, global2.b, vec2<f32>(1207f, -613f), 1u))), var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -972f), global2.a)));
    var var_2 = Struct_1(false, firstLeadingBit(_wgslsmith_clamp_vec4_i32(~select(vec4<i32>(-1i, -1i, -2147483647i, u_input.c), vec4<i32>(u_input.a.x, u_input.c, -2147483647i, u_input.c), true), vec4<i32>(select(u_input.c, u_input.a.x, true), u_input.a.x << (u_input.d % 32u), 2147483647i, u_input.a.x), -vec4<i32>(6663i, 2147483647i, u_input.a.x, -2147483647i))));
    var var_3 = global2.b.b.zwy;
    return -17145i != u_input.a.x;
}

fn func_1(arg_0: bool, arg_1: vec4<u32>) -> u32 {
    global0 = vec4<bool>(false, func_2(), false, true);
    global2 = Struct_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -391f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 19u)] - _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 19u)])) * global2.c.x), !(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1.x, global1.x, 4294967295u), 19u)] > -585f))), global2.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(674f, global2.b.a.x)))) + vec2<f32>(_wgslsmith_f_op_f32(max(global2.b.a.x, -163f)), 154f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.c + global2.b.a) * _wgslsmith_f_op_vec2_f32(-global2.c)))), arg_1.x);
    global3 = array<f32, 19>();
    var var_0 = u_input.e.x != 1u;
    var var_1 = Struct_4(259f, global2.b, vec2<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 19u)], 248f), abs(_wgslsmith_div_u32(~global2.b.b.x, firstLeadingBit(1597u) << (global1.x % 32u))));
    return ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~var_1.d, 39930u, u_input.d), vec4<u32>(var_1.d, 4294967295u, _wgslsmith_sub_u32(0u, u_input.b.x), 1u)));
}

fn func_4(arg_0: u32) -> Struct_2 {
    var var_0 = vec3<i32>(u_input.c, _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_sub_i32(u_input.c, max(u_input.c, u_input.a.x))), 1i) | (abs(countOneBits(vec3<i32>(0i, 2147483647i, 0i)) >> (global2.b.b.zxz % vec3<u32>(32u))) ^ select(vec3<i32>(u_input.c, firstLeadingBit(1i), _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.c, u_input.a.x))), vec3<i32>(max(u_input.c, u_input.c), u_input.a.x, 1i), vec3<bool>(true, true, global0.x || false)));
    let var_1 = vec4<i32>(0i, u_input.c, reverseBits(_wgslsmith_add_i32(~_wgslsmith_div_i32(var_0.x, -27228i), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<i32>(-1i, 2147483647i, u_input.a.x)), -1i))), 1i);
    global3 = array<f32, 19>();
    global3 = array<f32, 19>();
    let var_2 = i32(-1i) * -u_input.c;
    return Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 19u)]), _wgslsmith_f_op_f32(ceil(global2.c.x))) - global2.c))), select(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(~global2.b.b, vec4<u32>(25280u, 25954u, arg_0, global1.x)), global2.b.b & global2.b.b, ~(~vec4<u32>(global1.x, 1u, global1.x, global2.d))), ~min(vec4<u32>(u_input.b.x, 17862u, u_input.e.x, 1u), _wgslsmith_mult_vec4_u32(global2.b.b, global2.b.b)), true));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_2 {
    var var_0 = arg_1;
    var var_1 = arg_1;
    var var_2 = 0i;
    var var_3 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1342f), arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1107f, _wgslsmith_f_op_f32(ceil(global2.a))) + vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(arg_0.a.x * global2.c.x)))), global2.b.b.x);
    global3 = array<f32, 19>();
    return global2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !global0.xwz;
    var var_1 = Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -572f))), -205f)), func_5(func_4(func_1(var_0.x, global2.b.b) & u_input.e.x), Struct_1(var_0.x, countOneBits(vec4<i32>(2147483647i, -1i, u_input.c, 15695i))), !select(vec2<bool>(false, true), !vec2<bool>(var_0.x, true), all(global0.zww))), vec2<f32>(1462f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2237f * global3[_wgslsmith_index_u32(global1.x << (global2.b.b.x % 32u), 19u)])))), global2.b.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec2<u32>(32564u, global2.b.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.a), -918f))) * _wgslsmith_f_op_f32(step(-403f, global2.c.x))));
}

