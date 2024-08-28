struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec3<i32>,
    d: u32,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10>;

var<private> global1: array<bool, 22> = array<bool, 22>(true, false, true, false, true, false, false, false, false, true, true, true, true, false, true, true, true, false, true, true, false, false);

var<private> global2: vec4<f32>;

var<private> global3: array<u32, 9>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a) - _wgslsmith_f_op_f32(max(444f, arg_1.a))) - arg_3.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-974f + -534f))))));
    var var_1 = ~arg_2;
    let var_2 = false;
    var_1 = arg_0.x;
    var var_3 = Struct_5(~6358u, ~(~abs(64150u) | ~firstTrailingBit(40092u)), vec3<i32>(select(2147483647i, 2147483647i, all(!vec4<bool>(var_2, false, false, true))), -1428i, arg_0.x));
    return 1708f;
}

fn func_2() -> Struct_1 {
    global0 = array<bool, 10>();
    global3 = array<u32, 9>();
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(817f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.x)) - _wgslsmith_f_op_f32(func_3(u_input.b, Struct_1(global2.x), 32795i, Struct_1(211f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.x, global2.x)) + global2.x))));
    return Struct_1(_wgslsmith_div_f32(-2002f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1333f)) - _wgslsmith_f_op_f32(floor(global2.x))) + global2.x)));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<f32>) -> u32 {
    var var_0 = func_2();
    let var_1 = Struct_2(arg_1.a);
    var var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b.yyw, u_input.b.wzw) | select(~_wgslsmith_mod_vec3_i32(vec3<i32>(0i, 2147483647i, -1358i), vec3<i32>(1i, u_input.a, u_input.b.x)), ~(~u_input.b.wyw), any(vec4<bool>(false, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 9u)], 10u)], true, global0[_wgslsmith_index_u32(0u, 10u)]))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-59922i >> (0u % 32u), ~(-1i), u_input.a, _wgslsmith_sub_i32(13817i, u_input.b.x)), reverseBits(vec4<i32>(0i, 2147483647i, 1i, u_input.a))), _wgslsmith_mod_i32(u_input.a, firstLeadingBit(-36889i)), u_input.c));
    var var_3 = u_input.c;
    let var_4 = u_input.b.xzy | vec3<i32>(46448i, select(1i ^ (u_input.c >> (0u % 32u)), -_wgslsmith_clamp_i32(u_input.a, u_input.b.x, u_input.a), global3[_wgslsmith_index_u32(4294967295u, 9u)] != global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(13688u, 9u)], 9u)], 9u)], 9u)] << (0u % 32u), 9u)]), countOneBits(u_input.a));
    return global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(~firstTrailingBit(countOneBits(global3[_wgslsmith_index_u32(4294967295u, 9u)])), 9u)], 9u)];
}

fn func_4(arg_0: Struct_5, arg_1: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(func_3(select(select(u_input.b, u_input.b, select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 22u)], true, global1[_wgslsmith_index_u32(10068u, 22u)], global0[_wgslsmith_index_u32(arg_1.x, 10u)]), vec4<bool>(global1[_wgslsmith_index_u32(22444u, 22u)], global0[_wgslsmith_index_u32(24302u, 10u)], false, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(20524u, 9u)], 22u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.a, 9u)], 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(23992u, 22u)]))), select(~u_input.b, ~vec4<i32>(2147483647i, u_input.a, -12828i, arg_0.c.x), all(select(vec2<bool>(global0[_wgslsmith_index_u32(arg_0.b, 10u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_1.x, 9u)], 9u)], 10u)]), vec2<bool>(false, true), true))), !(select(true, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(31263u, 9u)], 10u)], true) != global0[_wgslsmith_index_u32(~arg_1.x, 10u)])), func_2(), _wgslsmith_dot_vec4_i32(-(~u_input.b), _wgslsmith_add_vec4_i32(~(-vec4<i32>(arg_0.c.x, arg_0.c.x, 2147483647i, 0i)), vec4<i32>(~arg_0.c.x, _wgslsmith_div_i32(73876i, 1i), 0i, u_input.a))), func_2()));
    let var_1 = func_2();
    var var_2 = select(!select(false, true, false), global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(func_1(_wgslsmith_div_vec3_f32(vec3<f32>(var_0, var_1.a, -1565f), vec3<f32>(-733f, var_0, 570f)), func_2(), global2.zzw), global3[_wgslsmith_index_u32(1u, 9u)]), 22u)], !all(vec4<bool>(false, 57258u >= arg_0.a, !global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 9u)], 10u)], global0[_wgslsmith_index_u32(firstTrailingBit(0u), 10u)])));
    let var_3 = _wgslsmith_mod_vec2_i32(~_wgslsmith_mod_vec2_i32(-_wgslsmith_mod_vec2_i32(u_input.b.ww, arg_0.c.xz), firstLeadingBit(u_input.b.zy << (vec2<u32>(arg_0.b, 44931u) % vec2<u32>(32u)))), vec2<i32>(_wgslsmith_add_i32(firstTrailingBit(select(2147483647i, 14651i, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(192063u, 9u)], 10u)])), -2147483647i), abs(arg_0.c.x)));
    var var_4 = min(vec2<i32>(reverseBits(~_wgslsmith_div_i32(1i, arg_0.c.x)), reverseBits(1i)), min(vec2<i32>(u_input.b.x >> (reverseBits(arg_0.a) % 32u), abs(~var_3.x)), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.c.x | u_input.b.x, min(17261i, -2147483647i)), _wgslsmith_mod_vec2_i32(~u_input.b.zw, u_input.b.zw), -vec2<i32>(arg_0.c.x, -13612i))));
    return select(arg_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(0u, arg_1.x & 28816u, ~43678u), arg_1.x, 4294967295u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(21922u, arg_0.b, 4294967295u, 4294967295u), vec4<u32>(arg_0.a, 1u, arg_0.a, global3[_wgslsmith_index_u32(0u, 9u)])) % 32u), ~global3[_wgslsmith_index_u32(arg_1.x, 9u)] >> (_wgslsmith_dot_vec2_u32(arg_1.xx, arg_1.yz) % 32u)), ~_wgslsmith_sub_vec4_u32(abs(vec4<u32>(19785u, arg_1.x, 1u, arg_0.a)), vec4<u32>(72728u, arg_1.x, arg_0.b, arg_1.x))), !global0[_wgslsmith_index_u32(countOneBits(~14119u), 10u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(!(all(vec3<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)], 9u)], 10u)], true, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 9u)], 9u)], 9u)], 22u)])) || (4521i <= u_input.a)), global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(47334u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(7937u, 9u)], 9u)], 9u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(41020u, 9u)], 9u)], 9u)], 9u)], 9u)], 9u)], 9u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 9u)], 9u)], 9u)], 9u)]), vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 9u)], 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 9u)], 9u)], 9u)], 4294967295u)) >> (_wgslsmith_clamp_u32(~global3[_wgslsmith_index_u32(46980u, 9u)], _wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)], 9u)], 9u)], 9u)], 9u)], 9u)], 9u)], global3[_wgslsmith_index_u32(1u, 9u)], 0u, 4294967295u), vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)], 9u)], 5231u, 68553u)), 1u) % 32u), 9u)], 22u)], global1[_wgslsmith_index_u32(func_4(Struct_5(func_1(global2.zwx, Struct_1(1006f), global2.ywz), 1u, u_input.b.xyw), ~_wgslsmith_mult_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(39366u, 9u)], global3[_wgslsmith_index_u32(81251u, 9u)], global3[_wgslsmith_index_u32(43994u, 9u)]), vec3<u32>(0u, global3[_wgslsmith_index_u32(4294967295u, 9u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 9u)], 9u)]))), 22u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2085f, -488f, -3070f)), Struct_1(global2.x), global2.wwx), 63830u), 9u)], 22u)]), !select(select(vec4<bool>(true, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 9u)], 9u)], 22u)], true, false), select(vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(30388u, 10u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)], 22u)]), vec4<bool>(false, true, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 9u)], 22u)], false), vec4<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(27552u, 9u)], 9u)], 9u)], 10u)], false, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 9u)], 10u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(34312u, 9u)], 9u)], 9u)], 22u)])), select(vec4<bool>(global0[_wgslsmith_index_u32(99392u, 10u)], global1[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(3516u, 9u)], 10u)], global0[_wgslsmith_index_u32(75872u, 10u)]), vec4<bool>(global1[_wgslsmith_index_u32(1u, 22u)], false, true, true), vec4<bool>(false, false, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 9u)], 10u)], false))), !select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(8327u, 22u)], true), vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(57826u, 22u)]), vec4<bool>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 9u)], 9u)], 22u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 9u)], 22u)], false, true)), any(!vec2<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(16924u, 9u)], 10u)], false))), (_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 31968u, 0u, 4294967295u), vec4<u32>(1u, 0u, global3[_wgslsmith_index_u32(30400u, 9u)], 9631u)), global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 9u)], 9u)], 9u)], 9u)]) <= abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 9u)], 9u)] << (0u % 32u), 9u)])) && true);
    global1 = array<bool, 22>();
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(global2.yxw * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.x, -1676f, global2.x), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2.x, -1903f, 1239f))), any(vec2<bool>(false, false))))))), global2.wyx));
    var var_2 = _wgslsmith_dot_vec3_i32(firstLeadingBit(~u_input.b.yyz), _wgslsmith_mod_vec3_i32(countOneBits(~(-vec3<i32>(61947i, 0i, 2147483647i))), -vec3<i32>(u_input.b.x, _wgslsmith_mult_i32(u_input.a, u_input.a), reverseBits(28399i))));
    let var_3 = select(var_0.xyw, !var_0.wzy, select(var_0.x | global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~1u, 9u)], 9u)], 9u)] << (42793u % 32u), 22u)], any(!vec4<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(15840u, 9u)], 9u)], 9u)], 10u)], true, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 9u)], 9u)], 22u)], global1[_wgslsmith_index_u32(13563u, 22u)])), any(select(var_0.zx, select(vec2<bool>(true, false), var_0.yz, vec2<bool>(var_0.x, true)), !global0[_wgslsmith_index_u32(21877u, 10u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, u_input.a), ~vec2<i32>(u_input.a, abs(u_input.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(var_1.x - 265f), _wgslsmith_div_f32(-1470f, var_1.x), -991f), _wgslsmith_div_vec3_f32(vec3<f32>(global2.x, -693f, -1177f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -790f, -841f)))))), _wgslsmith_add_vec2_u32(vec2<u32>(~global3[_wgslsmith_index_u32(countOneBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(6255u, 9u)], 9u)], 9u)], 9u)], 9u)], 9u)]), 9u)], 0u), _wgslsmith_mod_vec2_u32(vec2<u32>(select(3087u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(16558u, 9u)], 9u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(93834u, 9u)], 22u)]), _wgslsmith_sub_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(11821u, 9u)], 9u)], 9u)], 0u)), vec2<u32>(1u, 1u))), -101f, max(global3[_wgslsmith_index_u32(0u, 9u)], 7884u));
}

