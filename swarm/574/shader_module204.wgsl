struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24> = array<bool, 24>(true, true, true, false, false, true, true, false, false, false, false, false, true, false, true, false, false, true, false, true, true, false, false, false);

var<private> global1: array<f32, 7> = array<f32, 7>(-884f, 351f, -889f, 1000f, -1459f, 1207f, -2197f);

var<private> global2: array<bool, 1>;

var<private> global3: u32 = 0u;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = vec3<bool>(true, false, global2[_wgslsmith_index_u32(~u_input.c.x, 1u)]);
    global3 = reverseBits(~67954u);
    global1 = array<f32, 7>();
    let var_1 = Struct_2(_wgslsmith_mod_vec2_u32(select(abs(u_input.c.yy), u_input.c.zz, var_0.yy), vec2<u32>(countOneBits(max(118504u, 0u)), _wgslsmith_sub_u32(u_input.e.x, u_input.e.x) & _wgslsmith_mod_u32(4294967295u, 4294967295u))), Struct_1(!select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 24u)], global2[_wgslsmith_index_u32(64074u, 1u)], global0[_wgslsmith_index_u32(u_input.b, 24u)], var_0.x), vec4<bool>(var_0.x, false, global2[_wgslsmith_index_u32(122494u, 1u)], global0[_wgslsmith_index_u32(0u, 24u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.e.x, 24u)], var_0.x, false)), vec4<bool>(true, false, var_0.x, false), select(vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(var_0.x, false, var_0.x, global2[_wgslsmith_index_u32(3127u, 1u)]), var_0.x)), any(!select(var_0, vec3<bool>(false, false, false), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 1u)], false, var_0.x))), 56091u), _wgslsmith_mod_i32(abs(firstLeadingBit(u_input.d.x)), _wgslsmith_sub_i32(u_input.d.x, u_input.d.x)), Struct_1(!select(select(vec4<bool>(var_0.x, global2[_wgslsmith_index_u32(u_input.a, 1u)], true, false), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(u_input.e.x, 24u)], false, false), false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 24u)], global0[_wgslsmith_index_u32(u_input.a, 24u)], false, var_0.x), select(vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(u_input.c.x, 1u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 24u)], global2[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(1u, 24u)], false), true)), 2630f < _wgslsmith_f_op_f32(-659f * global1[_wgslsmith_index_u32(1u, 7u)]), u_input.c.x & ~(~19403u)), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 1u)], (global1[_wgslsmith_index_u32(0u, 7u)] > _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(33513u, 7u)]))) | (global2[_wgslsmith_index_u32(u_input.c.x, 1u)] && true), false));
    return var_1.d.b;
}

fn func_2(arg_0: Struct_4) -> i32 {
    let var_0 = vec2<bool>(true, true);
    global3 = _wgslsmith_mult_u32(firstLeadingBit(0u), _wgslsmith_add_u32(reverseBits(~_wgslsmith_mod_u32(u_input.c.x, 73168u)), 0u));
    let var_1 = arg_0.a.yy;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -855f);
    let var_3 = !any(select(select(vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(114498u, 24u)]), vec4<bool>(true, var_0.x, false, global2[_wgslsmith_index_u32(51783u, 1u)]), select(vec4<bool>(false, true, var_0.x, false), vec4<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 24u)], true), true)), vec4<bool>(true, false, true, func_3()), vec4<bool>(func_3(), all(vec3<bool>(var_0.x, global2[_wgslsmith_index_u32(arg_0.a.x, 1u)], var_0.x)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.e.x, var_1.x), 24u)], global0[_wgslsmith_index_u32(u_input.a, 24u)] || global0[_wgslsmith_index_u32(5097u, 24u)])));
    return _wgslsmith_mult_i32(-_wgslsmith_div_i32(u_input.d.x, arg_0.b), -u_input.d.x);
}

fn func_1(arg_0: vec4<i32>) -> bool {
    var var_0 = _wgslsmith_mod_i32(~func_2(Struct_4(_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.c.x, u_input.b, 46365u), u_input.c), arg_0.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1531f, -1000f, -608f) + vec3<f32>(-1489f, 454f, global1[_wgslsmith_index_u32(97640u, 7u)])))), 19203i);
    var var_1 = _wgslsmith_mod_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_div_i32(2147483647i, 33601i), arg_0.x, -1i), arg_0.zwz ^ -vec3<i32>(u_input.d.x, 2147483647i, arg_0.x)), vec3<i32>(u_input.d.x, -91755i, -1i));
    let var_2 = vec4<i32>(u_input.d.x, arg_0.x, u_input.d.x, ~(_wgslsmith_dot_vec3_i32(u_input.d.yyy, select(u_input.d.xzw, vec3<i32>(1i, -1i, arg_0.x), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 1u)], true, true))) >> (u_input.b % 32u)));
    var var_3 = true || !all(vec2<bool>(true, true));
    global2 = array<bool, 1>();
    return global0[_wgslsmith_index_u32(countOneBits(~4294967295u), 24u)];
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> vec3<u32> {
    global3 = _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.c.wz, u_input.c.xx), firstTrailingBit(~4294967295u & u_input.a)) | firstTrailingBit(1u);
    var var_0 = Struct_3(u_input.e.x);
    global0 = array<bool, 24>();
    var var_1 = u_input.c.x;
    let var_2 = Struct_3(u_input.b);
    return _wgslsmith_clamp_vec3_u32(~u_input.e, vec3<u32>(15693u, ~var_2.a, abs(~_wgslsmith_sub_u32(39063u, var_0.a))), ~select(abs(vec3<u32>(14884u, var_0.a, u_input.b)), u_input.e, vec3<bool>(arg_1, true, global1[_wgslsmith_index_u32(83235u, 7u)] <= 2588f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-u_input.d.x);
    var var_1 = ~_wgslsmith_div_u32(4294967295u, _wgslsmith_div_u32(~(~u_input.e.x), select(21668u, u_input.c.x & 1u, false)));
    global2 = array<bool, 1>();
    let var_2 = func_4(func_1(select(-u_input.d, u_input.d, false)), global0[_wgslsmith_index_u32(21476u, 24u)], Struct_1(!(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 24u)], true, global0[_wgslsmith_index_u32(u_input.c.x, 24u)], false)), global0[_wgslsmith_index_u32(~4294967295u, 24u)], abs(u_input.c.x) & reverseBits(u_input.b)));
    let var_3 = 4294967295u;
    var_1 = _wgslsmith_add_u32(~(~(~u_input.b)) & ~_wgslsmith_dot_vec2_u32(firstTrailingBit(var_2.yx), countOneBits(vec2<u32>(32528u, u_input.b))), 2292u);
    let var_4 = global2[_wgslsmith_index_u32(29237u, 1u)];
    global0 = array<bool, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, 6751u, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(max(abs(var_3), u_input.e.x), 7u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1256f, global1[_wgslsmith_index_u32(var_3, 7u)]))))), ~(vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.d.wxw, vec3<i32>(u_input.d.x, u_input.d.x, 2147483647i)), 0i, -55996i) & vec3<i32>(-10410i, u_input.d.x, u_input.d.x)));
}

