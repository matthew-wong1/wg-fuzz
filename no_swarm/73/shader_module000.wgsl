struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
    e: i32,
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

var<private> global0: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(2147483647i, 2147483647i, 2147483647i, 2147483647i), vec4<i32>(2147483647i, -16330i, i32(-2147483648), i32(-2147483648)));

var<private> global1: array<i32, 24>;

var<private> global2: u32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = ~vec4<u32>(_wgslsmith_sub_u32(0u, u_input.d.x), countOneBits(~firstTrailingBit(32286u)), ~4294967295u, min(54808u, _wgslsmith_mult_u32(u_input.d.x, u_input.d.x)) | _wgslsmith_add_u32(u_input.d.x, ~28358u));
    var var_1 = Struct_1(global0[_wgslsmith_index_u32(u_input.d.x, 2u)], vec2<i32>(u_input.c, 0i), _wgslsmith_add_i32(arg_0 | 32696i, _wgslsmith_add_i32(u_input.e, _wgslsmith_mod_i32(_wgslsmith_div_i32(-1i, u_input.a.x), arg_0))), select(max(reverseBits(37951i) & _wgslsmith_add_i32(arg_0, -6357i), u_input.e), firstLeadingBit(global1[_wgslsmith_index_u32(select(_wgslsmith_div_u32(var_0.x, 28616u), _wgslsmith_mult_u32(27074u, 27462u), false), 24u)]), any(vec2<bool>(true, true))));
    var var_2 = Struct_1(min(select(global0[_wgslsmith_index_u32(countOneBits(18339u), 2u)], vec4<i32>(i32(-1i) * -14117i, _wgslsmith_dot_vec3_i32(var_1.a.zwz, u_input.b), reverseBits(2147483647i), firstLeadingBit(11098i)), vec4<bool>(true, true, any(vec2<bool>(true, true)), u_input.d.x != u_input.d.x)), _wgslsmith_sub_vec4_i32(global0[_wgslsmith_index_u32(1230u, 2u)] >> (vec4<u32>(63542u, var_0.x, u_input.d.x, 22084u) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global1[_wgslsmith_index_u32(4294967295u, 24u)], 30745i, -1i), global0[_wgslsmith_index_u32(1u, 2u)]), ~var_1.b.x, global1[_wgslsmith_index_u32(var_0.x, 24u)], firstLeadingBit(2147483647i)))), u_input.b.xy, global1[_wgslsmith_index_u32(var_0.x, 24u)], -1i);
    var var_3 = ~9781u;
    var var_4 = var_0.zxw;
    return !select(true, !any(vec4<bool>(false, true, true, false)), all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), true)));
}

fn func_4(arg_0: vec3<i32>, arg_1: bool) -> u32 {
    global1 = array<i32, 24>();
    return min(42833u, 1u);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec3<bool> {
    let var_0 = ~vec2<u32>(func_4(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-2147483647i, arg_1.c, global1[_wgslsmith_index_u32(u_input.d.x, 24u)]), ~vec3<i32>(global1[_wgslsmith_index_u32(u_input.d.x, 24u)], 2147483647i, 6748i), vec3<i32>(0i, -24615i, u_input.b.x) << (u_input.d.zwz % vec3<u32>(32u))), func_3(0i)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(9276u, u_input.d.x, u_input.d.x), vec3<u32>(u_input.d.x, u_input.d.x, 4294967295u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, 0u), vec3<u32>(42957u, 87710u, u_input.d.x), vec3<u32>(u_input.d.x, 4294967295u, u_input.d.x))), ~_wgslsmith_mod_vec3_u32(u_input.d.xzy, u_input.d.zzx)));
    var var_1 = Struct_1(arg_1.a, vec2<i32>(16855i, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(23184u, u_input.d.x, 1u, 27805u), _wgslsmith_div_vec4_u32(~u_input.d, u_input.d)), 24u)]), firstLeadingBit(-3039i), (arg_1.a.x & global1[_wgslsmith_index_u32(0u, 24u)]) ^ (_wgslsmith_mod_i32(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(var_0.x, 24u)], -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.d.x, 24u)], global1[_wgslsmith_index_u32(39223u, 24u)], 2147483647i), vec3<i32>(u_input.e, arg_0.c, u_input.e))) << (_wgslsmith_div_u32(u_input.d.x & 13175u, ~u_input.d.x) % 32u)));
    let var_2 = arg_1.a.x <= -arg_0.d;
    var var_3 = vec3<bool>(var_2, var_2, false);
    var_1 = Struct_1(abs(_wgslsmith_div_vec4_i32(vec4<i32>(~(-2147483647i), global1[_wgslsmith_index_u32(99179u, 24u)], arg_1.a.x, ~global1[_wgslsmith_index_u32(0u, 24u)]), ~(global0[_wgslsmith_index_u32(u_input.d.x, 2u)] & var_1.a))), var_1.a.xx, 1i, arg_1.b.x | abs(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(1107i, u_input.e), var_1.a.zz))));
    return vec3<bool>(false, var_3.x, all(select(!var_3.zz, select(var_3.xy, select(var_3.zz, vec2<bool>(true, arg_2), var_2), var_3.x), arg_2)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec4<i32>) -> vec4<i32> {
    global2 = _wgslsmith_mod_u32(firstTrailingBit(25875u & ~_wgslsmith_clamp_u32(u_input.d.x, 1u, 4294967295u)), _wgslsmith_dot_vec3_u32(u_input.d.wzz, _wgslsmith_add_vec3_u32(vec3<u32>(~93537u, 42855u, ~u_input.d.x), vec3<u32>(5420u, u_input.d.x, ~u_input.d.x))));
    let var_0 = func_2(arg_1, arg_0, arg_2.x);
    global2 = firstTrailingBit(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(0u, _wgslsmith_clamp_u32(0u, 69225u, u_input.d.x), max(4294967295u, 0u), _wgslsmith_mult_u32(u_input.d.x, 0u))) ^ u_input.d.x);
    var var_1 = arg_1.a.xyw;
    var_1 = arg_3.xyz;
    return vec4<i32>(1i >> (1u % 32u), global1[_wgslsmith_index_u32(u_input.d.x, 24u)], _wgslsmith_mod_i32(-u_input.e, abs(arg_1.c)), arg_3.x) | ~select(vec4<i32>(~var_1.x, _wgslsmith_clamp_i32(arg_3.x, arg_3.x, arg_0.c), u_input.c, 1i), ~arg_0.a >> (vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 1u) % vec4<u32>(32u)), vec4<bool>(true, var_0.x, false | var_0.x, false));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>) -> vec2<bool> {
    var var_0 = abs(reverseBits(select(firstTrailingBit(vec3<u32>(0u, arg_1.x, 44635u)), vec3<u32>(arg_1.x, arg_1.x, u_input.d.x) | vec3<u32>(u_input.d.x, arg_1.x, arg_1.x), true)));
    global1 = array<i32, 24>();
    global1 = array<i32, 24>();
    let var_1 = ~arg_0.c;
    global2 = 0u;
    return select(func_2(arg_0, arg_0, any(vec2<bool>(true, true))).yx, !(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_5(Struct_1(global0[_wgslsmith_index_u32(~(~0u), 2u)], vec2<i32>(0i, -30122i), 2147483647i >> (select(u_input.d.x, 19724u, false) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(4083i, global1[_wgslsmith_index_u32(u_input.d.x, 24u)], u_input.e, global1[_wgslsmith_index_u32(0u, 24u)]), func_1(Struct_1(global0[_wgslsmith_index_u32(27963u, 2u)], u_input.a, 29192i, 15112i), Struct_1(vec4<i32>(-1i, global1[_wgslsmith_index_u32(u_input.d.x, 24u)], global1[_wgslsmith_index_u32(u_input.d.x, 24u)], -7682i), u_input.b.yz, 1i, u_input.c), vec3<bool>(true, false, false), global0[_wgslsmith_index_u32(1u, 2u)]))), ~(u_input.d.xwy & u_input.d.zzz));
    global2 = select(~abs(u_input.d.x), u_input.d.x, !(!var_0.x));
    let var_1 = vec3<f32>(549f, -1275f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(288f, 128f) * 658f), -1453f))));
    let var_2 = _wgslsmith_add_vec2_u32(abs(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.d.xxw, vec3<u32>(u_input.d.x, 3992u, 4294967295u)), u_input.d.x)), _wgslsmith_sub_vec2_u32(~vec2<u32>(45800u, 92210u) | ~u_input.d.yy, u_input.d.wz)) ^ firstTrailingBit(_wgslsmith_mult_vec2_u32(min(u_input.d.wx, u_input.d.xw) | _wgslsmith_add_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), u_input.d.zw), ~vec2<u32>(1u, u_input.d.x)));
    global2 = var_2.x;
    var var_3 = 63569i;
    global1 = array<i32, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(abs(u_input.d), _wgslsmith_mult_vec4_u32(abs(u_input.d), vec4<u32>(var_2.x, 1u, 4294967295u | u_input.d.x, _wgslsmith_add_u32(2635u, u_input.d.x)))));
}

