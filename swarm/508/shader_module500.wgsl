struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25> = array<f32, 25>(-579f, -759f, -391f, -170f, -815f, -742f, -230f, -393f, -1000f, -822f, 1446f, -378f, 744f, 526f, 871f, -303f, -1450f, -747f, -814f, -1451f, 566f, -527f, -969f, 258f, -934f);

var<private> global1: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true));

var<private> global2: vec3<i32>;

var<private> global3: array<vec2<bool>, 30>;

var<private> global4: array<bool, 7>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = vec4<bool>(arg_2.a, all(!vec4<bool>(arg_1.x >= global0[_wgslsmith_index_u32(1u, 25u)], false, !arg_2.a, global4[_wgslsmith_index_u32(_wgslsmith_add_u32(16040u, 35793u), 7u)])), arg_2.a, false);
    global4 = array<bool, 7>();
    var var_1 = false;
    global3 = array<vec2<bool>, 30>();
    global2 = -(_wgslsmith_sub_vec3_i32(vec3<i32>(global2.x, global2.x, -1i), firstLeadingBit(u_input.a.wwy)) << (vec3<u32>(1u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(134395u, 21478u), vec2<u32>(0u, 29842u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 0u), ~vec2<u32>(80273u, 35009u)), _wgslsmith_sub_u32(4294967295u, 4734u)) % vec3<u32>(32u)));
    return _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a.zyy, u_input.a.yzy), u_input.a.ywz);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: vec3<i32>, arg_3: f32) -> vec4<i32> {
    let var_0 = _wgslsmith_dot_vec4_i32(-reverseBits(u_input.a), abs(firstTrailingBit(vec4<i32>(abs(2147483647i), 18469i, global2.x | -10412i, _wgslsmith_mult_i32(global2.x, global2.x)))));
    var var_1 = Struct_1(arg_1.x, _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(abs(global2.x), max(u_input.a.x, -39464i)), ~(~(-44412i)), 10163i, ~countOneBits(-33i)), -vec4<i32>(arg_2.x, -1i, arg_2.x << (28674u % 32u), _wgslsmith_clamp_i32(global2.x, -36005i, u_input.b)), ~(-(~vec4<i32>(1i, arg_2.x, global2.x, arg_2.x)))));
    global4 = array<bool, 7>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_3, global0[_wgslsmith_index_u32(4294967295u, 25u)], 224f, arg_0.x)))))));
    var var_3 = vec2<i32>(13586i & (2147483647i ^ ~(var_0 ^ 2147483647i)), var_0);
    return vec4<i32>(u_input.a.x, u_input.b, global2.x, 2147483647i);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1) -> vec3<i32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(select(-1757f, -582f, global2.x <= _wgslsmith_clamp_i32(-13485i, arg_1.b.x, -u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(25852u, 25u)]))))))));
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(arg_0.yz, arg_0.yy), 25u)] > global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0.x, _wgslsmith_add_u32(arg_0.x >> (reverseBits(19035u) % 32u), ~_wgslsmith_clamp_u32(arg_0.x, 1u, 1u))), 25u)];
    let var_2 = firstTrailingBit(_wgslsmith_add_vec2_i32((vec2<i32>(global2.x, -31782i) >> (reverseBits(vec2<u32>(arg_0.x, 24894u)) % vec2<u32>(32u))) & vec2<i32>(firstLeadingBit(13952i), min(global2.x, arg_1.b.x)), u_input.a.zy));
    let var_3 = arg_0.x;
    var var_4 = -1000f;
    return _wgslsmith_clamp_vec3_i32(u_input.a.xwz, arg_1.b.wyz, ~countOneBits(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(32530u, 25u)])), global1[_wgslsmith_index_u32(1u, 5u)], func_4(vec2<f32>(-844f, var_0.x), global1[_wgslsmith_index_u32(32302u, 5u)], arg_1.b.yxw, var_0.x).xyx, -676f).ywx));
}

fn func_2() -> vec3<i32> {
    global2 = _wgslsmith_sub_vec3_i32(u_input.a.ywy, _wgslsmith_mod_vec3_i32(u_input.a.xzx, ~vec3<i32>(-27049i, u_input.a.x, ~(-2147483647i))));
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(0u, 25u)], 1000f, global0[_wgslsmith_index_u32(4294967295u, 25u)]), vec3<f32>(797f, global0[_wgslsmith_index_u32(32309u, 25u)], -524f))))))));
    var var_1 = Struct_1(global4[_wgslsmith_index_u32(~(~max(~37480u, 4294967295u)), 7u)], ~countOneBits(vec4<i32>(global2.x, _wgslsmith_dot_vec3_i32(u_input.a.wzy, vec3<i32>(1i, u_input.a.x, u_input.b)), 37933i, global2.x)));
    var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(726f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(4294967295u, 25u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(40323u, 25u)])) * _wgslsmith_f_op_f32(var_0.x - -637f))))));
    global0 = array<f32, 25>();
    return _wgslsmith_mod_vec3_i32(func_5(vec3<u32>(~(~4294967295u), 1u, max(8671u, _wgslsmith_div_u32(35076u, 38919u))), Struct_1(var_1.a, func_4(_wgslsmith_f_op_vec2_f32(var_0.zz * var_0.yz), vec3<bool>(false, global4[_wgslsmith_index_u32(4294967295u, 7u)], var_1.a), func_3(1000f, vec4<f32>(global0[_wgslsmith_index_u32(1u, 25u)], 601f, 188f, -1751f), Struct_1(global4[_wgslsmith_index_u32(0u, 7u)], vec4<i32>(8483i, u_input.b, 0i, u_input.a.x))), var_0.x))), ~(~vec3<i32>(-2147483647i, global2.x ^ -26510i, countOneBits(var_1.b.x))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = func_2() ^ vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(max(global2.xy, arg_0.b.wz), -u_input.a.wy), 2147483647i), u_input.b, ~(-u_input.b) ^ u_input.b);
    global1 = array<vec3<bool>, 5>();
    global0 = array<f32, 25>();
    global0 = array<f32, 25>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(step(121f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -320f) * -1867f) - global0[_wgslsmith_index_u32(1u, 25u)]), 454f);
    return true;
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec4<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-arg_1);
    global1 = array<vec3<bool>, 5>();
    global2 = vec3<i32>(arg_2.b.x, _wgslsmith_clamp_i32(arg_0.b.x, arg_0.b.x, select(abs(arg_0.b.x) << (0u % 32u), 1i, arg_0.b.x == _wgslsmith_sub_i32(global2.x, arg_2.b.x))), -1i);
    let var_1 = arg_2;
    var var_2 = !global1[_wgslsmith_index_u32(~abs(abs(~47555u)), 5u)];
    return abs(~1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(global3[_wgslsmith_index_u32(func_6(Struct_1(any(vec4<bool>(global4[_wgslsmith_index_u32(11082u, 7u)], false, true, global4[_wgslsmith_index_u32(1u, 7u)])), vec4<i32>(global2.x, 1i, -2147483647i, -1i) >> (vec4<u32>(47736u, 40084u, 1u, 14279u) % vec4<u32>(32u))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1632f))), Struct_1(true, u_input.a), vec4<bool>(false, select(global4[_wgslsmith_index_u32(4294967295u, 7u)], global4[_wgslsmith_index_u32(0u, 7u)], true), !global4[_wgslsmith_index_u32(1u, 7u)], func_1(Struct_1(global4[_wgslsmith_index_u32(1u, 7u)], u_input.a), Struct_1(false, vec4<i32>(u_input.a.x, global2.x, 9987i, 2147483647i))))), 30u)]) && false;
    let var_1 = -731f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(6360u, 25u)] - global0[_wgslsmith_index_u32(1u, 25u)]), var_1, any(global3[_wgslsmith_index_u32(1u, 30u)]))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * -460f) * global0[_wgslsmith_index_u32(~23047u, 25u)]))));
}

