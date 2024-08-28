struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 19>;

var<private> global1: Struct_1;

var<private> global2: array<bool, 5> = array<bool, 5>(false, false, true, true, true);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: i32) -> u32 {
    var var_0 = u_input.a & _wgslsmith_dot_vec2_u32(global1.d.yz, global1.d.wy);
    let var_1 = select(vec3<bool>(!((global1.d.x <= arg_2.d.x) || any(global1.b.ww)), false, global2[_wgslsmith_index_u32(countOneBits(global1.d.x), 5u)]), !select(arg_2.b.xxw, select(!vec3<bool>(arg_1.x, true, true), arg_2.b.yxy, vec3<bool>(false, true, global1.b.x)), vec3<bool>(!global1.b.x, global1.b.x, true)), global1.b.www);
    let var_2 = Struct_1(arg_1.wy, global1.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -597f), -808f, all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(global1.c.x * _wgslsmith_f_op_f32(283f * 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-585f, -1495f)))), (min(firstLeadingBit(vec4<u32>(30330u, global1.d.x, 0u, arg_2.d.x)), vec4<u32>(26063u, u_input.a, 10618u, 28203u)) & ~vec4<u32>(1u, arg_2.d.x, arg_2.d.x, arg_2.d.x)) & select(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.d.x, global1.d.x, u_input.a, arg_2.d.x), global1.d), abs(arg_2.d), false), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-627f)))));
    let var_3 = _wgslsmith_dot_vec3_i32(-vec3<i32>(firstTrailingBit(_wgslsmith_dot_vec2_i32(arg_0, arg_0)), ~(-1i & arg_3), countOneBits(2147483647i << (var_2.d.x % 32u))), _wgslsmith_mod_vec3_i32(vec3<i32>(min(_wgslsmith_div_i32(1i, 37150i), ~arg_3), -arg_0.x, _wgslsmith_dot_vec2_i32(arg_0 | vec2<i32>(2147483647i, 2147483647i), arg_0)), vec3<i32>(-arg_3 & (i32(-1i) * -1i), arg_0.x, 1i)));
    var_0 = ~(~0u);
    return 1u;
}

fn func_2(arg_0: i32) -> f32 {
    global0 = array<vec2<u32>, 19>();
    let var_0 = Struct_1(vec2<bool>(global2[_wgslsmith_index_u32(global1.d.x | _wgslsmith_div_u32(~u_input.a, func_3(vec2<i32>(arg_0, arg_0), global1.b, Struct_1(global1.a, global1.b, global1.c, vec4<u32>(u_input.a, u_input.a, global1.d.x, 22936u), global1.c.x), arg_0)), 5u)], true), vec4<bool>(false, all(vec4<bool>(global1.a.x, any(vec2<bool>(false, global1.a.x)), global2[_wgslsmith_index_u32(~global1.d.x, 5u)], !global2[_wgslsmith_index_u32(17035u, 5u)])), _wgslsmith_f_op_f32(global1.e * _wgslsmith_f_op_f32(global1.c.x - 986f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -336f)), global1.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.c.x, global1.c.x, global1.e), vec3<f32>(global1.c.x, -275f, global1.e), vec3<bool>(global2[_wgslsmith_index_u32(61036u, 5u)], global1.a.x, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.c - vec3<f32>(global1.e, global1.c.x, 1072f))), !vec3<bool>(false, false, global1.a.x)))), firstLeadingBit(~vec4<u32>(global1.d.x, 4294967295u, max(0u, u_input.a), global1.d.x << (global1.d.x % 32u))), global1.e);
    global2 = array<bool, 5>();
    global2 = array<bool, 5>();
    let var_1 = _wgslsmith_dot_vec4_i32(-firstLeadingBit(vec4<i32>(arg_0, -1i, arg_0, arg_0)) ^ ~_wgslsmith_div_vec4_i32(vec4<i32>(-354i, -79054i, arg_0, 19393i), ~vec4<i32>(arg_0, 0i, arg_0, -1i)), _wgslsmith_add_vec4_i32(abs(vec4<i32>(-1i) * -vec4<i32>(arg_0, arg_0, -10716i, arg_0)), firstTrailingBit(min(vec4<i32>(11284i, -1i, -1i, arg_0), vec4<i32>(arg_0, arg_0, arg_0, 2147483647i)))));
    return _wgslsmith_f_op_f32(ceil(-1000f));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec4<f32> {
    var var_0 = ~_wgslsmith_mult_u32(global1.d.x, abs(firstLeadingBit(arg_0.d.x)) << (arg_1.d.x % 32u));
    let var_1 = abs(4294967295u >> (~arg_1.d.x % 32u)) ^ _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(u_input.a, 19u)] & ~(vec2<u32>(global1.d.x, global1.d.x) & global1.d.yy), vec2<u32>(~1u, arg_1.d.x));
    global0 = array<vec2<u32>, 19>();
    let var_2 = arg_1.c;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(exp2(global1.c.x)), _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(~37095i)) * global1.e)));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(-669f, -379f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(533f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_2.x, 2030f, global1.c.x))))))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: f32) -> f32 {
    let var_0 = -vec3<i32>(_wgslsmith_mod_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -12774i, 1i), vec3<i32>(-40803i, -2554i, 2147483647i)), -4039i), firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-10175i, -11295i) >> (vec2<u32>(u_input.a, 61192u) % vec2<u32>(32u)), vec2<i32>(-51771i, -2147483647i))), _wgslsmith_sub_i32(-9205i, firstTrailingBit(-1i)) | (~(-2147483647i) >> (firstLeadingBit(1u) % 32u)));
    var var_1 = vec3<i32>(-9496i, 1i, ~_wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(var_0.x, 9651i), -1i), reverseBits(var_0.x), abs(1i)));
    let var_2 = vec4<bool>(true, global1.b.x, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(firstLeadingBit(0u) ^ _wgslsmith_dot_vec4_u32(arg_1.d, vec4<u32>(arg_1.d.x, 107873u, 42935u, arg_1.d.x)), ~1u << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.d.x, 729u, global1.d.x, global1.d.x), vec4<u32>(1u, u_input.a, 0u, u_input.a)) % 32u)), reverseBits(arg_1.d.x), countOneBits(4294967295u)), 5u)], arg_1.a.x);
    var_1 = _wgslsmith_add_vec3_i32(select(min(max(var_0, vec3<i32>(var_0.x, var_1.x, -1i)), vec3<i32>(~var_1.x, _wgslsmith_mod_i32(var_0.x, 2049i), ~var_1.x)), _wgslsmith_mult_vec3_i32(select(vec3<i32>(-10408i, -8261i, -66139i), _wgslsmith_sub_vec3_i32(vec3<i32>(var_1.x, var_1.x, var_0.x), vec3<i32>(var_0.x, 0i, var_0.x)), global2[_wgslsmith_index_u32(arg_1.d.x, 5u)]), vec3<i32>(-5387i, firstLeadingBit(var_1.x), 1i)), select(vec3<bool>(all(arg_1.b.yx), true, false), global1.b.wwy, !vec3<bool>(arg_1.b.x, var_2.x, global2[_wgslsmith_index_u32(0u, 5u)]))), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(-1i, -2147483647i | var_1.x, 0i), 23626i, var_1.x), select(countOneBits(vec3<i32>(36461i, var_0.x, var_0.x)), var_0 << (vec3<u32>(31641u, 47700u, global1.d.x) % vec3<u32>(32u)), (true || arg_1.a.x) & (global1.d.x < 8188u)), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(var_0, var_0), countOneBits(var_0)) ^ vec3<i32>(var_1.x, -1i, 19240i)));
    let var_3 = arg_3;
    return -1019f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 19>();
    var var_0 = Struct_1(!select(vec2<bool>(false, any(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 5u)]))), vec2<bool>(select(global2[_wgslsmith_index_u32(6539u, 5u)], true, true), true), true), global1.b, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(func_4(-320f, Struct_1(vec2<bool>(true, global1.a.x), global1.b, global1.c, vec4<u32>(39852u, global1.d.x, 25839u, 4294967295u), global1.e), _wgslsmith_f_op_vec4_f32(func_1(Struct_1(vec2<bool>(global2[_wgslsmith_index_u32(41011u, 5u)], global1.b.x), vec4<bool>(global2[_wgslsmith_index_u32(12205u, 5u)], true, global2[_wgslsmith_index_u32(1u, 5u)], global2[_wgslsmith_index_u32(u_input.a, 5u)]), vec3<f32>(-1393f, 859f, global1.e), global1.d, global1.c.x), Struct_1(global1.a, global1.b, vec3<f32>(-1061f, -1050f, global1.e), vec4<u32>(u_input.a, 1u, u_input.a, 60401u), -710f), global2[_wgslsmith_index_u32(481u, 5u)])), -2032f)), -732f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.c.x + global1.e)))))), firstLeadingBit(select(vec4<u32>(u_input.a, 76864u, 0u, max(4294967295u, u_input.a)), ~(~vec4<u32>(0u, u_input.a, 12032u, u_input.a)), select(true, true, global1.b.x) | true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-320f * 1277f)));
    var_0 = Struct_1(!global1.a, select(vec4<bool>(_wgslsmith_div_f32(global1.e, 448f) < global1.e, false, false, global1.a.x), !vec4<bool>(global2[_wgslsmith_index_u32(~u_input.a, 5u)], var_0.d.x >= 1u, false, true), !select(var_0.b, global1.b, true)), _wgslsmith_f_op_vec4_f32(func_1(Struct_1(var_0.b.ww, global1.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e, 857f, var_0.e)) + global1.c), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.d.x, 999u, 55813u, 1u), vec4<u32>(25884u, global1.d.x, u_input.a, 1u)), min(var_0.d, vec4<u32>(global1.d.x, var_0.d.x, u_input.a, 29553u))), -382f), Struct_1(global1.b.xz, global1.b, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global1.c), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(484f, -272f, 684f), global1.c, global1.a.x)))), countOneBits(var_0.d), _wgslsmith_f_op_f32(var_0.e + _wgslsmith_f_op_f32(f32(-1f) * -897f))), any(select(!vec4<bool>(true, false, var_0.a.x, false), select(global1.b, var_0.b, global2[_wgslsmith_index_u32(u_input.a, 5u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(global1.d.x, 5u)], false, global2[_wgslsmith_index_u32(1u, 5u)], var_0.b.x), var_0.b, false))))).wzz, _wgslsmith_mult_vec4_u32(reverseBits(_wgslsmith_mult_vec4_u32(var_0.d, vec4<u32>(var_0.d.x, var_0.d.x, var_0.d.x, u_input.a)) & _wgslsmith_mult_vec4_u32(vec4<u32>(global1.d.x, u_input.a, var_0.d.x, 82649u), vec4<u32>(4294967295u, global1.d.x, 1u, u_input.a))), ~firstLeadingBit(global1.d) & _wgslsmith_add_vec4_u32(select(vec4<u32>(28409u, 69566u, u_input.a, global1.d.x), vec4<u32>(u_input.a, var_0.d.x, 4294967295u, global1.d.x), global2[_wgslsmith_index_u32(4294967295u, 5u)]), select(var_0.d, vec4<u32>(global1.d.x, 87693u, 0u, 38140u), vec4<bool>(false, false, global2[_wgslsmith_index_u32(var_0.d.x, 5u)], var_0.b.x)))), 231f);
    var var_1 = global1.c;
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.e - _wgslsmith_div_f32(global1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x + var_0.e) - _wgslsmith_f_op_f32(var_1.x - global1.e)))), _wgslsmith_f_op_f32(global1.c.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(-2147483647i)) - global1.e))));
    var var_3 = vec2<bool>(var_0.b.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(29494u, 40523u, 53560u), global1.d.xxz), vec3<u32>(u_input.a, u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d.x, u_input.a), vec2<u32>(0u, var_0.d.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_0.c))), 2147483647i);
}

