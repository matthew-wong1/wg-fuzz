struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: Struct_2,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
    c: i32,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-396f, vec4<i32>(i32(-2147483648), 25088i, 34851i, 36838i), Struct_2(vec2<u32>(0u, 1271u)), vec3<u32>(1u, 4294967295u, 71573u));

var<private> global1: vec2<i32> = vec2<i32>(0i, 2147483647i);

var<private> global2: array<vec4<u32>, 22> = array<vec4<u32>, 22>(vec4<u32>(13020u, 15579u, 27579u, 0u), vec4<u32>(1u, 1u, 0u, 0u), vec4<u32>(23609u, 25812u, 0u, 1u), vec4<u32>(14266u, 4294967295u, 4294967295u, 62664u), vec4<u32>(4294967295u, 64323u, 1u, 0u), vec4<u32>(39146u, 4294967295u, 4294967295u, 34215u), vec4<u32>(4294967295u, 4294967295u, 45377u, 18249u), vec4<u32>(64174u, 35118u, 23082u, 0u), vec4<u32>(17527u, 1u, 22050u, 1u), vec4<u32>(0u, 1u, 85674u, 4294967295u), vec4<u32>(39674u, 4294967295u, 1u, 1u), vec4<u32>(1u, 6077u, 0u, 4294967295u), vec4<u32>(42891u, 2599u, 1u, 1u), vec4<u32>(0u, 48164u, 40139u, 88745u), vec4<u32>(30981u, 29345u, 22687u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 6412u, 10907u, 4294967295u), vec4<u32>(1u, 3286u, 14423u, 23731u), vec4<u32>(36097u, 1u, 36371u, 43900u), vec4<u32>(48788u, 0u, 4294967295u, 0u), vec4<u32>(0u, 0u, 1u, 0u), vec4<u32>(20389u, 14850u, 4294967295u, 1u));

var<private> global3: array<bool, 13>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_4) -> vec3<u32> {
    var var_0 = ~(arg_0.b.a.x | _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(global0.c.a.x, arg_0.b.a.x), firstTrailingBit(27348u)), vec2<u32>(global0.d.x, max(0u, global0.d.x))));
    global1 = vec2<i32>(28267i, _wgslsmith_dot_vec4_i32(-global0.b, global0.b)) ^ global0.b.yy;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, arg_0.d, -1528f, arg_0.d)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-394f, -615f, 406f, 558f))))));
    global3 = array<bool, 13>();
    var var_2 = min(0i, -1i);
    return _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.b.a.x, global0.c.a.x, global0.c.a.x, arg_0.b.a.x), vec4<u32>(~1u, _wgslsmith_mult_u32(arg_0.b.a.x, 0u), global0.d.x, ~1u)), ~_wgslsmith_add_u32(~arg_0.b.a.x, arg_0.b.a.x), 0u), _wgslsmith_sub_vec3_u32(global0.d, global0.d), global0.d);
}

fn func_2(arg_0: u32) -> f32 {
    global0 = Struct_3(1000f, vec4<i32>(_wgslsmith_div_i32(-global0.b.x, ~u_input.a.x) ^ -global1.x, -2147483647i, u_input.a.x, u_input.b.x), Struct_2(~_wgslsmith_mod_vec2_u32(global0.c.a, ~global0.d.zz)), select(_wgslsmith_mult_vec3_u32(vec3<u32>(~34730u, 4294967295u, _wgslsmith_mod_u32(global0.c.a.x, 17425u)), ~global0.d), abs(~vec3<u32>(global0.c.a.x, arg_0, 74905u)), !select(global3[_wgslsmith_index_u32(global0.d.x, 13u)], global3[_wgslsmith_index_u32(arg_0, 13u)], global3[_wgslsmith_index_u32(4294967295u, 13u)]) | select(true, true, any(vec3<bool>(false, true, global3[_wgslsmith_index_u32(17234u, 13u)])))));
    let var_0 = _wgslsmith_f_op_f32(min(global0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + global0.a))));
    global0 = Struct_3(var_0, min(global0.b, vec4<i32>(countOneBits(1i), firstTrailingBit(global1.x) | (global1.x & -1i), _wgslsmith_add_i32(-1i, ~u_input.b.x), -61993i)), Struct_2(select(global0.d.yz, global0.c.a, !select(vec2<bool>(false, false), vec2<bool>(global3[_wgslsmith_index_u32(global0.c.a.x, 13u)], true), vec2<bool>(global3[_wgslsmith_index_u32(58451u, 13u)], false)))), max(vec3<u32>(arg_0, ~global0.d.x, 6727u), global0.d));
    global0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -198f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(ceil(global0.a)))))), vec4<i32>(~(-(-2147483647i ^ global1.x)), max(select(-u_input.a.x, select(global0.b.x, u_input.a.x, false), any(vec3<bool>(global3[_wgslsmith_index_u32(67380u, 13u)], global3[_wgslsmith_index_u32(arg_0, 13u)], true))), 2147483647i >> (global0.d.x % 32u)), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b.x, -2147483647i, global1.x, u_input.b.x) >> ((vec4<u32>(4294967295u, 46821u, global0.d.x, global0.c.a.x) << (vec4<u32>(global0.d.x, arg_0, arg_0, global0.c.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)), ~(~vec4<i32>(global0.b.x, -9886i, -1i, 1i))), ~0i), global0.c, _wgslsmith_mod_vec3_u32(global0.d, _wgslsmith_add_vec3_u32(global0.d, ~(vec3<u32>(1u, 1u, 60257u) << (vec3<u32>(1u, global0.d.x, 70743u) % vec3<u32>(32u))))));
    var var_1 = _wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(_wgslsmith_add_u32(36906u, 0u), arg_0, 0u)), global0.d ^ _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, global0.d.x | global0.d.x, arg_0), firstLeadingBit(func_3(Struct_4(vec3<bool>(global3[_wgslsmith_index_u32(arg_0, 13u)], global3[_wgslsmith_index_u32(14324u, 13u)], true), global0.c, 2147483647i, global0.a, -7334i)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -900f), global0.a)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1000f))))));
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: bool) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(sign(global0.a)), _wgslsmith_f_op_f32(func_2(global0.d.x))) * vec3<f32>(global0.a, global0.a, global0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global3[_wgslsmith_index_u32(firstLeadingBit(~88427u), 13u)];
    var var_1 = Struct_2(global0.d.zy);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(reverseBits(global0.b.wyy), -2147483647i, any(vec2<bool>(global3[_wgslsmith_index_u32(global0.d.x, 13u)], false)))) * vec3<f32>(_wgslsmith_f_op_f32(191f + -199f), _wgslsmith_f_op_f32(step(global0.a, global0.a)), 633f));
    global3 = array<bool, 13>();
    let var_3 = Struct_4(select(vec3<bool>(any(select(vec3<bool>(false, global3[_wgslsmith_index_u32(global0.d.x, 13u)], global3[_wgslsmith_index_u32(var_1.a.x, 13u)]), vec3<bool>(true, true, false), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 13u)], global3[_wgslsmith_index_u32(var_1.a.x, 13u)], false))), any(!vec2<bool>(global3[_wgslsmith_index_u32(2462u, 13u)], false)), any(select(vec4<bool>(false, global3[_wgslsmith_index_u32(3071u, 13u)], true, global3[_wgslsmith_index_u32(global0.c.a.x, 13u)]), vec4<bool>(global3[_wgslsmith_index_u32(var_1.a.x, 13u)], false, true, false), vec4<bool>(global3[_wgslsmith_index_u32(var_1.a.x, 13u)], false, true, global3[_wgslsmith_index_u32(0u, 13u)])))), select(vec3<bool>(all(vec3<bool>(true, false, true)), true, false), vec3<bool>(any(vec4<bool>(global3[_wgslsmith_index_u32(global0.c.a.x, 13u)], global3[_wgslsmith_index_u32(var_1.a.x, 13u)], false, true)), global0.a <= 416f, true), any(vec4<bool>(false, true, true, true)) && true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-global0.a)) != -165f), global0.c, u_input.a.x, global0.a, _wgslsmith_clamp_i32(global0.b.x, global0.b.x, _wgslsmith_sub_i32(-u_input.a.x ^ u_input.a.x, select(i32(-1i) * -1i, global1.x >> (var_1.a.x % 32u), true))));
    global3 = array<bool, 13>();
    var_1 = Struct_2(vec2<u32>(var_3.b.a.x, _wgslsmith_sub_u32(countOneBits(var_1.a.x | var_1.a.x), ~var_1.a.x)));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(121f, _wgslsmith_f_op_f32(var_2.x + -370f), _wgslsmith_f_op_f32(-global0.a), var_3.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.d, var_3.d, 686f, -1448f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-360f, var_3.d, global0.a, -787f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_3.d, -419f)))), true)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec4<i32>(_wgslsmith_div_i32(i32(-1i) * -992i, ~u_input.a.x), firstTrailingBit(min(-52316i, -2147483647i)), -2147483647i, u_input.b.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1861f, global0.a) - _wgslsmith_f_op_f32(trunc(var_4.x))), _wgslsmith_f_op_f32(var_2.x + -1000f)) * -932f));
}

