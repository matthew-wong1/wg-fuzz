struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<i32, 20> = array<i32, 20>(36558i, 2147483647i, i32(-2147483648), -945i, 2755i, -21207i, -74968i, -1i, 3217i, 2147483647i, 2147483647i, 0i, 1i, -1i, -1i, -31908i, -24822i, 35743i, 2147483647i, -9124i);

var<private> global2: array<Struct_1, 13>;

var<private> global3: f32;

var<private> global4: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<i32>) -> vec3<bool> {
    var var_0 = _wgslsmith_add_i32(u_input.a, 2147483647i);
    let var_1 = ~(~(~(~vec3<u32>(1u, u_input.d, global4.d)) ^ countOneBits(~vec3<u32>(u_input.d, global4.d, 57580u))));
    global1 = array<i32, 20>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(290f + _wgslsmith_f_op_f32(-global4.a)) - global4.a)));
    var_0 = global1[_wgslsmith_index_u32(1u, 20u)];
    return !select(!vec3<bool>(true, all(global4.b.zx), 148f != var_2), !(!(!global4.b)), select(arg_0.x, global4.b.x, arg_0.x) || global4.b.x);
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: u32) -> f32 {
    global1 = array<i32, 20>();
    global2 = array<Struct_1, 13>();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-848f * -498f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -199f)))));
    global1 = array<i32, 20>();
    var var_1 = _wgslsmith_mod_vec3_i32(select(-abs(vec3<i32>(25522i, arg_1, 9638i)), vec3<i32>(_wgslsmith_clamp_i32(2147483647i, _wgslsmith_mult_i32(global4.c.x, -1i), _wgslsmith_div_i32(-12585i, arg_1)), -31054i, -13561i), !global4.b), max(_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.a, 35356i, u_input.a), vec3<i32>(-23556i, firstLeadingBit(23684i), u_input.b)), ~(-min(vec3<i32>(arg_1, -52812i, 24066i), vec3<i32>(-88969i, arg_1, u_input.a)))));
    return global4.a;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    global1 = array<i32, 20>();
    var var_0 = _wgslsmith_sub_i32(abs(_wgslsmith_dot_vec3_i32(min(vec3<i32>(-57530i, -2147483647i, 3378i) << (vec3<u32>(u_input.c.x, arg_0.c.d, global4.d) % vec3<u32>(32u)), vec3<i32>(arg_0.e.c.x, 14168i, 2147483647i)), -vec3<i32>(30400i, 7852i, arg_0.c.c.x))), -global1[_wgslsmith_index_u32(~arg_1.d, 20u)]);
    var var_1 = select(vec3<u32>(global4.d, _wgslsmith_add_u32(~u_input.d, _wgslsmith_div_u32(~0u, max(4294967295u, 55514u))), 0u), countOneBits(abs(~vec3<u32>(1u, arg_0.a.d, 52346u) << (vec3<u32>(53230u, 4294967295u, 1u) % vec3<u32>(32u)))), func_2(!select(!global4.b.yx, arg_1.b.yx, arg_0.c.b.x), vec3<i32>(~(~arg_1.c.x), -1i, 6186i)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-124f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, arg_1.a)), 0i, ~4294967295u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -151f))) - 167f)));
    var var_3 = _wgslsmith_f_op_f32(-arg_0.e.a);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -509f) * 627f), !(!vec3<bool>(true, -2147483647i > global1[_wgslsmith_index_u32(0u, 20u)], false)), _wgslsmith_add_vec2_i32(reverseBits(arg_1.c), vec2<i32>(-(i32(-1i) * -43557i), _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_1.c.x, arg_0.a.c.x, -1i, -56559i), vec4<i32>(-2147483647i, -3586i, -34256i, 0i) >> (vec4<u32>(global4.d, global4.d, arg_0.e.d, arg_1.d) % vec4<u32>(32u))))), select(~0u, ~31658u, !all(select(vec4<bool>(arg_1.b.x, true, false, false), vec4<bool>(global4.b.x, false, arg_1.b.x, false), true))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: i32, arg_3: bool) -> Struct_1 {
    let var_0 = firstTrailingBit(vec4<i32>(~1i, global4.c.x, -arg_1.x, -2147483647i));
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-550f, -624f)));
    let var_2 = Struct_3(arg_0.e.a);
    global0 = _wgslsmith_mod_u32(4294967295u, _wgslsmith_clamp_u32(39405u, global4.d, global4.d));
    global0 = _wgslsmith_clamp_u32(abs(~abs(arg_0.e.d << (global4.d % 32u))), 44676u, arg_0.a.d);
    return func_1(arg_0, arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_4(Struct_2(func_1(Struct_2(Struct_1(global4.a, global4.b, vec2<i32>(1i, global4.c.x), 4294967295u), u_input.a, Struct_1(684f, global4.b, global4.c, global4.d), ~39973i, Struct_1(global4.a, vec3<bool>(false, true, global4.b.x), vec2<i32>(global4.c.x, 18998i), 1u)), global2[_wgslsmith_index_u32(global4.d, 13u)]), _wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(global4.d, 20u)], 1i, global1[_wgslsmith_index_u32(13715u, 20u)]), vec3<i32>(global4.c.x, 0i, 2147483647i)), -vec3<i32>(2147483647i, 28784i, -2147483647i))), func_1(Struct_2(Struct_1(-301f, vec3<bool>(false, global4.b.x, global4.b.x), global4.c, 1u), u_input.b, global2[_wgslsmith_index_u32(global4.d, 13u)], i32(-1i) * -14813i, global2[_wgslsmith_index_u32(abs(52519u), 13u)]), global2[_wgslsmith_index_u32(u_input.c.x, 13u)]), _wgslsmith_dot_vec2_i32(max(~global4.c, _wgslsmith_mod_vec2_i32(global4.c, global4.c)), global4.c), func_1(Struct_2(global2[_wgslsmith_index_u32(func_1(Struct_2(global2[_wgslsmith_index_u32(u_input.d, 13u)], -37976i, global2[_wgslsmith_index_u32(u_input.c.x, 13u)], global4.c.x, global2[_wgslsmith_index_u32(0u, 13u)]), global2[_wgslsmith_index_u32(4294967295u, 13u)]).d, 13u)], 0i, func_1(Struct_2(Struct_1(global4.a, global4.b, global4.c, global4.d), global4.c.x, global2[_wgslsmith_index_u32(global4.d, 13u)], 23093i, global2[_wgslsmith_index_u32(3783u, 13u)]), global2[_wgslsmith_index_u32(54606u, 13u)]), u_input.b, func_1(Struct_2(global2[_wgslsmith_index_u32(u_input.d, 13u)], -70693i, global2[_wgslsmith_index_u32(82936u, 13u)], global1[_wgslsmith_index_u32(global4.d, 20u)], global2[_wgslsmith_index_u32(1u, 13u)]), Struct_1(1915f, global4.b, vec2<i32>(-2147483647i, global4.c.x), 6107u))), Struct_1(_wgslsmith_f_op_f32(trunc(1815f)), global4.b, global4.c, 1u))), -firstTrailingBit(vec3<i32>(-global1[_wgslsmith_index_u32(0u, 20u)], func_1(Struct_2(global2[_wgslsmith_index_u32(4335u, 13u)], 24560i, global2[_wgslsmith_index_u32(0u, 13u)], global4.c.x, Struct_1(global4.a, vec3<bool>(global4.b.x, global4.b.x, global4.b.x), vec2<i32>(25242i, -44251i), 116541u)), global2[_wgslsmith_index_u32(global4.d, 13u)]).c.x, u_input.a)), -u_input.a, global4.b.x);
    let var_0 = !vec4<bool>(!(!global4.b.x), true, countOneBits(u_input.b) != ~1i, true);
    var var_1 = func_1(Struct_2(global2[_wgslsmith_index_u32(reverseBits(func_1(Struct_2(global2[_wgslsmith_index_u32(u_input.d, 13u)], 5369i, global2[_wgslsmith_index_u32(0u, 13u)], u_input.b, Struct_1(224f, var_0.xyy, global4.c, 4294967295u)), func_4(Struct_2(global2[_wgslsmith_index_u32(0u, 13u)], -1199i, global2[_wgslsmith_index_u32(u_input.d, 13u)], global1[_wgslsmith_index_u32(4294967295u, 20u)], Struct_1(global4.a, vec3<bool>(false, var_0.x, global4.b.x), global4.c, 15081u)), vec3<i32>(54707i, -832i, 2147483647i), global1[_wgslsmith_index_u32(u_input.d, 20u)], var_0.x)).d), 13u)], _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, u_input.b, -1i), vec3<i32>(global4.c.x, -2147483647i, 5268i)), -vec3<i32>(global4.c.x, global1[_wgslsmith_index_u32(u_input.c.x, 20u)], -1i)) | _wgslsmith_clamp_i32(-2147483647i, -1i, 0i), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global4.a))), var_0.xwz, max(global4.c, max(global4.c, global4.c)), min(global4.d ^ 26089u, global4.d)), global1[_wgslsmith_index_u32(83090u, 20u)], Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.a, -1000f)), vec3<bool>(true, true, true), vec2<i32>(-35792i, global4.c.x), 4294967295u)), func_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1001f), !vec3<bool>(false, var_0.x, false), vec2<i32>(u_input.b, -42846i) & vec2<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 20u)], global1[_wgslsmith_index_u32(u_input.d, 20u)]), 1u), _wgslsmith_div_i32(2147483647i, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, global4.d), 20u)]), global2[_wgslsmith_index_u32(0u & (u_input.c.x ^ 979u), 13u)], countOneBits(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(0u, 20u)], u_input.b)), global2[_wgslsmith_index_u32(global4.d, 13u)]), (select(vec3<i32>(global1[_wgslsmith_index_u32(25279u, 20u)], 0i, 1i), vec3<i32>(6101i, -3819i, u_input.a), false) & min(vec3<i32>(-2147483647i, global4.c.x, u_input.b), vec3<i32>(-49161i, global1[_wgslsmith_index_u32(4294967295u, 20u)], -47522i))) ^ abs(_wgslsmith_div_vec3_i32(vec3<i32>(6563i, global4.c.x, -952i), vec3<i32>(global4.c.x, -28463i, global4.c.x))), -2147483647i, all(vec2<bool>(false, true))));
    var var_2 = -821f;
    var_1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(select(var_1.d, 0u, var_0.x), u_input.d), 13u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(-146f)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~0u, _wgslsmith_dot_vec4_u32(~select(vec4<u32>(0u, 0u, 51347u, global4.d), vec4<u32>(u_input.d, u_input.c.x, 17981u, 4294967295u), var_0), vec4<u32>(1u, ~var_1.d, u_input.d, ~u_input.d))), 20u)]);
}

