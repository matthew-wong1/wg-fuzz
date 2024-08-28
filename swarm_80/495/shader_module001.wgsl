struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec4<bool>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_2,
    d: bool,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1571f, 1575f, 480f);

var<private> global1: array<f32, 29> = array<f32, 29>(-443f, -428f, -288f, -557f, -1000f, 1328f, 672f, 1065f, -1804f, 1635f, 283f, -220f, -394f, 874f, -789f, 1629f, 836f, 820f, 146f, 833f, 784f, -476f, -548f, -1548f, -1224f, -1419f, -701f, 1395f, -783f);

var<private> global2: array<vec3<bool>, 6>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: f32, arg_3: vec2<f32>) -> bool {
    var var_0 = Struct_5(u_input.a);
    global1 = array<f32, 29>();
    var var_1 = Struct_4(Struct_2(vec4<bool>(arg_0.x, false, !arg_0.x && true, ~var_0.a >= 1u), Struct_1(vec2<bool>(true, arg_0.x), any(vec3<bool>(true, arg_0.x, false)), arg_0, u_input.b, _wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.d.x) & vec2<u32>(arg_1, 1u), vec2<u32>(arg_1, var_0.a) & vec2<u32>(72569u, 0u)))), Struct_3(vec4<i32>(min(_wgslsmith_clamp_i32(1i, u_input.b, -25293i), -16996i), ~select(u_input.b, -9800i, true), _wgslsmith_clamp_i32(u_input.c.x, 2147483647i, 532i), firstTrailingBit(-u_input.b)), Struct_2(arg_0, Struct_1(select(vec2<bool>(true, true), vec2<bool>(arg_0.x, arg_0.x), false), arg_0.x, arg_0, _wgslsmith_dot_vec2_i32(vec2<i32>(-42150i, u_input.b), vec2<i32>(-31798i, -1i)), _wgslsmith_mod_vec2_u32(u_input.d.yx, u_input.d.zz)))), Struct_2(select(vec4<bool>(all(vec4<bool>(arg_0.x, true, false, arg_0.x)), any(arg_0.zx), all(vec2<bool>(arg_0.x, arg_0.x)), true), !vec4<bool>(true, arg_0.x, false, false), select(arg_0.x, true, arg_3.x == arg_3.x)), Struct_1(select(!vec2<bool>(arg_0.x, true), arg_0.wy, arg_0.x), true, arg_0, _wgslsmith_clamp_i32(-2147483647i, -1i, 1i) ^ ~u_input.c.x, vec2<u32>(reverseBits(22063u), ~var_0.a))), arg_0.x);
    global2 = array<vec3<bool>, 6>();
    global2 = array<vec3<bool>, 6>();
    return any(select(!vec4<bool>(all(vec2<bool>(var_1.a.b.b, true)), false, false, false), var_1.a.b.c, arg_0));
}

fn func_2() -> i32 {
    var var_0 = u_input.b;
    let var_1 = vec3<f32>(-204f, 510f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(~4294967295u), 29u)]));
    var var_2 = Struct_2(vec4<bool>(!(!all(global2[_wgslsmith_index_u32(u_input.a, 6u)])), !all(vec2<bool>(true, true)), true, true), Struct_1(vec2<bool>(true, (u_input.c.x < -28545i) | (var_1.x == var_1.x)), all(vec4<bool>(func_3(vec4<bool>(false, false, true, false), 4294967295u, global1[_wgslsmith_index_u32(98579u, 29u)], global0.zx), true, u_input.b > u_input.b, func_3(vec4<bool>(true, false, false, false), u_input.a, -282f, vec2<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 29u)], global1[_wgslsmith_index_u32(0u, 29u)])))), vec4<bool>(_wgslsmith_mult_u32(0u, 0u) <= u_input.a, false, true, any(vec4<bool>(false, true, false, true))), 0i, _wgslsmith_mult_vec2_u32(~(u_input.d.yy >> (u_input.d.yy % vec2<u32>(32u))), abs(select(vec2<u32>(75023u, u_input.a), u_input.d.yx, false)))));
    var_2 = Struct_2(!vec4<bool>(all(select(vec3<bool>(var_2.a.x, var_2.a.x, true), vec3<bool>(true, true, var_2.a.x), var_2.b.b)), all(select(var_2.b.c, var_2.b.c, false)), true, var_2.b.a.x), var_2.b);
    global0 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(u_input.d.x, 29u)])))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(min(4294967295u, firstLeadingBit(4294967295u)), 29u)] * var_1.x), 1000f)), var_1.x);
    return ~(-1i ^ firstTrailingBit(~(-8725i)));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec2<u32>, arg_3: i32) -> Struct_2 {
    let var_0 = func_2();
    let var_1 = firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(firstLeadingBit(arg_0), var_0), u_input.c.zx));
    var var_2 = Struct_4(Struct_2(vec4<bool>(all(vec3<bool>(true, true, true)), any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false))), true, true), Struct_1(vec2<bool>(false, true), all(!global2[_wgslsmith_index_u32(24845u, 6u)]), vec4<bool>(var_0 < arg_3, func_3(vec4<bool>(true, true, false, true), u_input.a, global0.x, vec2<f32>(966f, arg_1)), true, true), _wgslsmith_clamp_i32(0i, 0i, arg_3), _wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(u_input.a, arg_2.x)), ~u_input.d.wy, ~arg_2))), Struct_3(u_input.c, Struct_2(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), Struct_1(vec2<bool>(true, true), true, vec4<bool>(true, true, true, true), ~(-1i), vec2<u32>(u_input.a, u_input.d.x)))), Struct_2(vec4<bool>(true, _wgslsmith_div_f32(816f, 1231f) >= global0.x, arg_3 < min(-973i, 28813i), true), Struct_1(vec2<bool>(true, true), all(vec2<bool>(true, false)) | true, vec4<bool>(false, var_1.x >= 44354i, true, false), _wgslsmith_mod_i32(arg_3, 11165i) & (var_1.x >> (7589u % 32u)), vec2<u32>(1u, u_input.a >> (138680u % 32u)))), any(vec2<bool>(any(vec2<bool>(false, true)), true)));
    var var_3 = var_2.b.b.b.a.x;
    let var_4 = vec4<u32>(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(~arg_2.x, 1u, 0u), vec3<u32>(arg_2.x, ~33768u, u_input.a)), ~u_input.d.zwx), _wgslsmith_sub_u32(_wgslsmith_add_u32(abs(arg_2.x) | u_input.d.x, 275u), firstTrailingBit(_wgslsmith_dot_vec2_u32(select(arg_2, u_input.d.xz, vec2<bool>(true, false)), ~vec2<u32>(u_input.a, u_input.d.x)))), var_2.c.b.e.x);
    return var_2.c;
}

fn func_4(arg_0: Struct_2) -> Struct_4 {
    var var_0 = global0.x;
    let var_1 = arg_0;
    let var_2 = func_1(4862i, _wgslsmith_f_op_f32(sign(global0.x)), var_1.b.e, var_1.b.d);
    var var_3 = _wgslsmith_clamp_i32(var_2.b.d, -2147483647i, -_wgslsmith_add_i32(_wgslsmith_mod_i32(countOneBits(var_1.b.d), countOneBits(-1733i)), u_input.c.x));
    let var_4 = !var_1.b.c;
    return Struct_4(func_1(12578i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(501f, 1047f))), reverseBits(var_1.b.e), reverseBits(arg_0.b.d)), Struct_3(u_input.c, var_1), Struct_2(func_1(~2147483647i, _wgslsmith_f_op_f32(-2681f - _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(u_input.d.x, 29u)], -1727f, true))), abs(abs(vec2<u32>(arg_0.b.e.x, arg_0.b.e.x))), _wgslsmith_dot_vec2_i32(reverseBits(u_input.c.zw), vec2<i32>(0i, var_1.b.d))).b.c, func_1(_wgslsmith_mult_i32(u_input.b, func_1(var_1.b.d, -760f, vec2<u32>(u_input.d.x, var_1.b.e.x), 13243i).b.d), 440f, ~var_2.b.e, u_input.c.x).b), false);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: i32) -> Struct_4 {
    var var_0 = Struct_4(arg_1.c, func_4(Struct_2(vec4<bool>(any(arg_1.c.b.c.zxx), true, true, func_4(Struct_2(vec4<bool>(arg_1.a.a.x, arg_1.d, arg_1.b.b.b.b, false), arg_1.c.b)).a.a.x), func_1(22889i, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(90134u, 29u)]), arg_1.a.b.e, arg_2 | 5540i).b)).b, func_4(arg_1.a).c, true | !(arg_2 <= 0i));
    let var_1 = abs(_wgslsmith_div_i32(func_2(), -1i));
    let var_2 = 32969u;
    var var_3 = arg_1.b.a;
    let var_4 = Struct_5(~firstLeadingBit(abs(1u)));
    return arg_1;
}

fn func_6(arg_0: bool, arg_1: Struct_4, arg_2: bool, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = select(func_4(Struct_2(!vec4<bool>(false, arg_2, arg_1.c.b.b, true), Struct_1(!arg_1.a.b.a, global0.x != 867f, !arg_1.a.a, 0i, abs(arg_1.b.b.b.e)))).b.b.a.ywx, vec3<bool>(false, arg_1.b.b.a.x, true), vec3<bool>(func_1(max(arg_1.c.b.d | arg_1.b.b.b.d, ~10095i), global1[_wgslsmith_index_u32(u_input.d.x, 29u)], vec2<u32>(1u, arg_1.c.b.e.x), -2147483647i).b.b, !arg_0, arg_0));
    global1 = array<f32, 29>();
    var var_1 = 42092i;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1014f);
    global2 = array<vec3<bool>, 6>();
    return arg_1.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(u_input.b);
    global2 = array<vec3<bool>, 6>();
    global1 = array<f32, 29>();
    let var_1 = u_input.d;
    let var_2 = true;
    let var_3 = func_6(false, func_5(vec2<u32>(var_1.x, ~u_input.d.x), func_4(func_1(var_0, _wgslsmith_f_op_f32(ceil(-716f)), var_1.xw, ~var_0)), ~31608i), false, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global0.yx), global0.yy)) * vec2<f32>(_wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(-404f - 813f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(2042f, global0.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

