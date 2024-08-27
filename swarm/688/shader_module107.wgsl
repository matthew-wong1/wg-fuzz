struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec3<i32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<bool>,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: vec2<f32>,
    d: vec2<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<vec3<f32>, 25> = array<vec3<f32>, 25>(vec3<f32>(603f, -985f, -1016f), vec3<f32>(717f, -1000f, 1557f), vec3<f32>(-434f, -636f, -495f), vec3<f32>(-606f, 1058f, 1006f), vec3<f32>(-655f, 1210f, 361f), vec3<f32>(-747f, 863f, 651f), vec3<f32>(-818f, -821f, 543f), vec3<f32>(473f, 687f, 835f), vec3<f32>(-888f, -683f, -1266f), vec3<f32>(124f, -580f, 944f), vec3<f32>(545f, 1000f, -113f), vec3<f32>(-877f, 277f, -1609f), vec3<f32>(-1164f, -1000f, -101f), vec3<f32>(-373f, 820f, -1267f), vec3<f32>(1869f, 1312f, 1095f), vec3<f32>(1431f, 2241f, -950f), vec3<f32>(-590f, -408f, 460f), vec3<f32>(101f, -233f, 999f), vec3<f32>(1000f, 1269f, 499f), vec3<f32>(435f, -369f, 108f), vec3<f32>(-249f, 1673f, -833f), vec3<f32>(-567f, 442f, -151f), vec3<f32>(785f, -1000f, -414f), vec3<f32>(776f, 749f, -219f), vec3<f32>(1000f, -1000f, -430f));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> bool {
    var var_0 = Struct_2(Struct_1(~1u, !vec2<bool>(arg_2.b.x | false, true), arg_0.c), _wgslsmith_dot_vec2_u32(global0.zx, ~vec2<u32>(4294967295u, 32146u)), arg_0, vec3<i32>(arg_2.c.x, arg_1.c.c.x, -arg_0.c.x), arg_1.e);
    let var_1 = !select(vec3<bool>((arg_1.c.c.x | -52544i) < 2147483647i, all(select(vec3<bool>(var_0.a.b.x, var_0.a.b.x, false), vec3<bool>(arg_1.a.b.x, arg_2.b.x, arg_0.b.x), var_0.c.b.x)), ~global0.x <= (arg_0.a << (arg_1.a.a % 32u))), !vec3<bool>(false, true, arg_1.c.b.x), vec3<bool>(-354f == _wgslsmith_f_op_f32(-var_0.e.x), var_0.a.b.x, all(select(vec2<bool>(arg_1.a.b.x, var_0.a.b.x), var_0.a.b, false))));
    global1 = array<vec3<f32>, 25>();
    global1 = array<vec3<f32>, 25>();
    var_0 = Struct_2(Struct_1(_wgslsmith_sub_u32((global0.x & 14208u) >> (global0.x % 32u), (var_0.b | global0.x) | arg_0.a), vec2<bool>(true | arg_2.b.x, true), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(max(vec3<i32>(-9713i, 5007i, arg_0.c.x), var_0.a.c), reverseBits(vec3<i32>(u_input.a, 30828i, var_0.a.c.x)), ~vec3<i32>(-15600i, 1804i, u_input.a)), var_0.d)), 33176u, Struct_1(_wgslsmith_dot_vec2_u32(global0.zx << ((global0.yy | vec2<u32>(12711u, global0.x)) % vec2<u32>(32u)), vec2<u32>(arg_1.b ^ 1u, global0.x & global0.x)), !var_1.xz, arg_0.c), ~_wgslsmith_clamp_vec3_i32(arg_1.a.c, var_0.a.c, var_0.c.c), arg_1.e);
    return arg_2.b.x;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: vec4<i32>, arg_3: vec3<i32>) -> f32 {
    var var_0 = ~(~min(_wgslsmith_add_vec3_u32(~arg_1, vec3<u32>(global0.x, 58601u, arg_1.x)), vec3<u32>(global0.x, 38810u, 4294967295u)));
    var var_1 = vec4<bool>(!(!all(arg_0)), !arg_0.x, true, true);
    global0 = countOneBits(~arg_1) | _wgslsmith_add_vec3_u32(~_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, 52304u, global0.x), vec3<u32>(arg_1.x, 0u, global0.x)), arg_1), vec3<u32>(~_wgslsmith_add_u32(var_0.x, var_0.x), select(global0.x, _wgslsmith_mult_u32(arg_1.x, arg_1.x), true), 2613u));
    let var_2 = _wgslsmith_mult_i32(2147483647i, u_input.a);
    let var_3 = Struct_2(Struct_1(_wgslsmith_div_u32(global0.x, _wgslsmith_dot_vec3_u32(countOneBits(arg_1), firstLeadingBit(arg_1))), vec2<bool>(func_3(Struct_1(0u, vec2<bool>(false, true), arg_2.xyw), Struct_2(Struct_1(15704u, var_1.yx, vec3<i32>(0i, u_input.c.x, -8155i)), 1u, Struct_1(global0.x, vec2<bool>(arg_0.x, arg_0.x), vec3<i32>(1i, var_2, arg_3.x)), u_input.c.yzz, vec4<f32>(1446f, -569f, 1294f, -1000f)), Struct_1(55010u, var_1.xw, vec3<i32>(arg_2.x, -2147483647i, 2147483647i))), all(select(vec4<bool>(var_1.x, true, true, arg_0.x), vec4<bool>(arg_0.x, true, true, var_1.x), vec4<bool>(arg_0.x, true, false, var_1.x)))), max(_wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(-1i, arg_3.x, u_input.c.x)), vec3<i32>(arg_2.x, arg_3.x, var_2)), -arg_3)), 4294967295u, Struct_1(select(~(~40989u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 22899u, 7399u, var_0.x) << (vec4<u32>(31565u, arg_1.x, 4294967295u, global0.x) % vec4<u32>(32u)), abs(vec4<u32>(6766u, global0.x, 2017u, 0u))), true), arg_0.xz, _wgslsmith_mult_vec3_i32(min(vec3<i32>(u_input.b.x, u_input.b.x, arg_2.x), ~u_input.c.wzy), arg_3)), ~abs(~(u_input.c.xyw >> (vec3<u32>(15234u, 29891u, arg_1.x) % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -516f), _wgslsmith_f_op_f32(f32(-1f) * -584f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(862f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1254f - 729f), _wgslsmith_f_op_f32(trunc(-1639f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(765f, 2294f, 728f, -987f) - vec4<f32>(553f, 226f, 601f, -643f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(638f, -1202f, 161f, 565f), vec4<f32>(339f, 1611f, -992f, 277f)), _wgslsmith_div_vec4_f32(vec4<f32>(1168f, 689f, 1268f, 1588f), vec4<f32>(-1000f, 301f, 176f, -259f)), true)))));
    return _wgslsmith_div_f32(-449f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_3.e.x + var_3.e.x))));
}

fn func_1() -> Struct_1 {
    let var_0 = vec4<u32>(4294967295u, firstTrailingBit(1u), global0.x, global0.x);
    global1 = array<vec3<f32>, 25>();
    var var_1 = vec3<f32>(-868f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1099f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -160f), _wgslsmith_f_op_f32(func_2(vec3<bool>(true, true, false), vec3<u32>(105787u, 16675u, global0.x), vec4<i32>(-50659i, 74156i, u_input.b.x, u_input.b.x), u_input.c.yzy)))))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1161f + -497f), _wgslsmith_f_op_f32(abs(1643f))))));
    var_1 = vec3<f32>(-477f, var_1.x, 166f);
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(4294967295u, 25u)]))) + global1[_wgslsmith_index_u32(var_0.x, 25u)]);
    return Struct_1(~global0.x, select(select(vec2<bool>(all(vec2<bool>(false, true)), true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(true, true)), any(vec3<bool>(true, true, true))), select(vec2<bool>(true, var_1.x > var_1.x), vec2<bool>(true, true), true), any(vec2<bool>(true, true))), countOneBits(u_input.c.zxz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = ~vec4<u32>(82314u, 2663u, reverseBits(1u), 4294967295u);
    global0 = firstLeadingBit(vec3<u32>(~_wgslsmith_mod_u32(select(4294967295u, 49705u, false), ~var_1.x), _wgslsmith_div_u32(firstTrailingBit(~0u), 360u), min(_wgslsmith_dot_vec3_u32(abs(var_1.zyx), firstTrailingBit(vec3<u32>(4294967295u, var_0.a, global0.x))), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 58419u), vec2<u32>(var_0.a, var_0.a)))));
    var_0 = Struct_1(~var_0.a, vec2<bool>(all(!select(vec4<bool>(var_0.b.x, true, var_0.b.x, var_0.b.x), vec4<bool>(true, true, var_0.b.x, false), vec4<bool>(false, true, var_0.b.x, var_0.b.x))), false), -(~u_input.c.xzx));
    let var_2 = ~vec2<u32>(1u, ~func_1().a);
    var var_3 = Struct_2(func_1(), var_1.x, Struct_1(var_1.x, select(var_0.b, var_0.b, vec2<bool>(var_0.b.x, any(vec2<bool>(true, var_0.b.x)))), _wgslsmith_add_vec3_i32(vec3<i32>(~(-2147483647i), _wgslsmith_sub_i32(var_0.c.x, -2147483647i), i32(-1i) * -1i), var_0.c)), firstTrailingBit(u_input.c.xwy) << (vec3<u32>(_wgslsmith_add_u32(~11265u, 1u >> (var_2.x % 32u)), var_0.a, 28888u) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-913f, -1242f, -1540f, 866f))))));
    var var_4 = !vec2<bool>(func_3(var_3.a, Struct_2(Struct_1(var_2.x, vec2<bool>(var_0.b.x, var_3.a.b.x), vec3<i32>(0i, u_input.b.x, 2147483647i)), 10579u, var_3.c, vec3<i32>(18378i, u_input.c.x, 43978i), var_3.e), var_3.c) || var_0.b.x, true);
    var var_5 = -var_0.c.x >> (_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(var_1.yzz, ~var_1.xyw), ~var_1.xyy) % 32u);
    global1 = array<vec3<f32>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-8768i, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(min(u_input.c.x, 20942i), u_input.c.x << (global0.x % 32u), -43892i), ~_wgslsmith_add_i32(var_3.d.x, var_3.d.x), -6709i), var_0.c.x));
}

