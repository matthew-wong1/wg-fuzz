struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec3<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<bool, 6> = array<bool, 6>(true, false, true, false, true, true);

var<private> global2: array<Struct_1, 13>;

var<private> global3: u32;

var<private> global4: f32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: u32, arg_1: bool) -> f32 {
    return -487f;
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> vec3<bool> {
    global1 = array<bool, 6>();
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -217f) - -602f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(arg_0, arg_1.b.x | global1[_wgslsmith_index_u32(4294967295u, 6u)]))))));
    global2 = array<Struct_1, 13>();
    global2 = array<Struct_1, 13>();
    let var_0 = arg_1;
    return select(var_0.b.yxy, !vec3<bool>(all(select(arg_1.b.yz, arg_1.b.ww, global1[_wgslsmith_index_u32(arg_1.a, 6u)])), arg_1.b.x & (global1[_wgslsmith_index_u32(46076u, 6u)] | false), ~7981u > _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(0u, arg_1.a, arg_0, arg_1.a))), !(false | !any(var_0.b.wxy)));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: vec2<i32>) -> Struct_3 {
    global4 = -365f;
    let var_0 = Struct_1(_wgslsmith_f_op_f32(arg_1 * arg_1), select(!select(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 6u)], global1[_wgslsmith_index_u32(u_input.c.x, 6u)], global1[_wgslsmith_index_u32(u_input.c.x, 6u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(6864u, 6u)], global1[_wgslsmith_index_u32(u_input.c.x, 6u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 6u)], global1[_wgslsmith_index_u32(3433u, 6u)])), vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 6u)], true), !vec3<bool>(false, global1[_wgslsmith_index_u32(84515u, 6u)], true)), select(select(!vec3<bool>(false, false, global1[_wgslsmith_index_u32(66648u, 6u)]), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 6u)], global1[_wgslsmith_index_u32(8793u, 6u)], global1[_wgslsmith_index_u32(1u, 6u)]), global1[_wgslsmith_index_u32(u_input.c.x, 6u)]), select(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 6u)], true, true), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 6u)], true, true), false), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 6u)], true, true), !global1[_wgslsmith_index_u32(u_input.c.x, 6u)]), func_2(u_input.c.x ^ 41295u, Struct_2(u_input.c.x, vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 6u)], global1[_wgslsmith_index_u32(u_input.c.x, 6u)], true, true)))), select(select(vec3<bool>(true, true, global1[_wgslsmith_index_u32(4294967295u, 6u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 6u)], true, global1[_wgslsmith_index_u32(u_input.c.x, 6u)]), true), !select(vec3<bool>(true, global1[_wgslsmith_index_u32(28408u, 6u)], global1[_wgslsmith_index_u32(57468u, 6u)]), vec3<bool>(global1[_wgslsmith_index_u32(21036u, 6u)], global1[_wgslsmith_index_u32(u_input.c.x, 6u)], false), global1[_wgslsmith_index_u32(u_input.c.x, 6u)]), false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(arg_1 * -1068f))));
    global3 = u_input.c.x;
    global2 = array<Struct_1, 13>();
    global4 = -100f;
    return Struct_3(var_0, u_input.c.zyx, Struct_2(u_input.c.x, !vec4<bool>(var_0.b.x, all(var_0.b), global1[_wgslsmith_index_u32(u_input.c.x, 6u)], arg_2.x != 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-countOneBits(vec3<i32>(_wgslsmith_add_i32(-19847i, u_input.b), u_input.b, ~u_input.a)), 113f, _wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -abs(vec2<i32>(u_input.b, -2147483647i)), countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(5836i, u_input.a), vec2<i32>(u_input.b, 0i)) >> (_wgslsmith_mult_vec2_u32(u_input.c.zw, vec2<u32>(1u, 4294967295u)) % vec2<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_f32(603f - var_0.a.a) < _wgslsmith_div_f32(-1592f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1728f)));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(305f * var_0.a.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(576f))) - var_0.a.c.x)) != _wgslsmith_f_op_f32(f32(-1f) * -218f);
    let var_3 = func_1(-(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(3443i, 2147483647i, u_input.a), vec3<i32>(u_input.b, 1i, u_input.b)), -2147483647i, u_input.b) >> (u_input.c.wzw % vec3<u32>(32u))), 1576f, vec2<i32>(u_input.b, _wgslsmith_add_i32(u_input.a, 0i))).a;
    global0 = ~(reverseBits(~reverseBits(u_input.c.x)) | (~(~1u) >> (abs(~u_input.c.x) % 32u)));
    var var_4 = func_1(vec3<i32>(u_input.a, -u_input.a, 16851i | -u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3.c.x, _wgslsmith_f_op_f32(sign(-1129f))))), vec2<i32>(reverseBits(11385i), u_input.a)).c.b.wx;
    let var_5 = _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~1u, reverseBits(1u)), vec3<u32>(var_0.c.a, 0u, countOneBits(67628u))), ~(~40197u)), _wgslsmith_add_u32(~40209u, ~func_1(vec3<i32>(u_input.b, -29543i, -1i), var_3.c.x, vec2<i32>(u_input.a, 1i)).c.a << (firstLeadingBit(~41708u) % 32u)));
    let var_6 = func_1(max(vec3<i32>(firstLeadingBit(u_input.a), -u_input.b, -19201i), _wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.b, u_input.a, u_input.a), select(vec3<i32>(u_input.a, 1i, -58984i), vec3<i32>(-1i, -2147483647i, u_input.b), vec3<bool>(false, false, var_4.x)))) >> (vec3<u32>(_wgslsmith_div_u32(35737u, 1u), u_input.c.x, firstLeadingBit(16541u)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1142f, -662f))), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, _wgslsmith_add_i32(~u_input.b, -2147483647i)), vec2<i32>(1i >> (_wgslsmith_mult_u32(18252u, var_0.c.a) % 32u), ~(-20549i)), _wgslsmith_clamp_vec2_i32(max(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -13434i), vec2<i32>(u_input.a, 2147483647i)), ~vec2<i32>(-1i, u_input.b)), select(select(vec2<i32>(-968i, -9825i), vec2<i32>(u_input.a, -46160i), true), abs(vec2<i32>(1i, u_input.b)), !var_0.a.b.x), _wgslsmith_mod_vec2_i32(select(vec2<i32>(u_input.a, 0i), vec2<i32>(u_input.b, -43012i), var_0.a.b.xy), vec2<i32>(u_input.b, u_input.a)))));
    global4 = 343f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a) * -688f), (_wgslsmith_add_u32(0u, _wgslsmith_mod_u32(u_input.c.x, 0u)) | (66228u >> (_wgslsmith_mod_u32(u_input.c.x, var_0.c.a) % 32u))) >> (var_0.b.x % 32u), var_3.a, vec3<u32>(u_input.c.x, 1u, _wgslsmith_mult_u32(countOneBits(4294967295u), _wgslsmith_div_u32(23785u, select(7171u, 0u, var_2)))), abs(vec2<u32>(var_5, var_0.b.x)));
}

