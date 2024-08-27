struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: bool,
    d: f32,
    e: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<f32>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 29>;

var<private> global1: vec2<u32> = vec2<u32>(63553u, 0u);

var<private> global2: array<Struct_5, 24>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    global0 = array<vec2<f32>, 29>();
    var var_0 = vec4<bool>(false, true, select(true, _wgslsmith_f_op_f32(trunc(645f)) <= arg_0, true), arg_1.b >= ~u_input.c);
    let var_1 = _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-_wgslsmith_dot_vec3_i32(arg_2.c.zyx, vec3<i32>(u_input.c, 25575i, u_input.c)), -2594i)), u_input.a & vec2<i32>(firstTrailingBit(65148i) >> (28621u % 32u), ~_wgslsmith_dot_vec3_i32(arg_2.c.ywy, vec3<i32>(1i, u_input.c, -2147483647i))));
    var var_2 = Struct_4(Struct_3(Struct_2(arg_2.c.x, _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, 988f), _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(arg_1.d, 29u)] + global0[_wgslsmith_index_u32(13224u, 29u)]))), false, !var_0.x && (u_input.a.x < (53158i << (global1.x % 32u))), _wgslsmith_f_op_f32(f32(-1f) * -864f), global1.x), Struct_2(_wgslsmith_mult_i32(var_1, _wgslsmith_dot_vec2_i32(arg_2.c.xx, vec2<i32>(9318i, 2147483647i))) | _wgslsmith_add_i32(-1i, 1i), vec2<f32>(arg_0, arg_0)));
    let var_3 = vec3<i32>(~_wgslsmith_clamp_i32(countOneBits(0i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.b, 2147483647i, u_input.c, arg_1.c.x), arg_2.c), firstLeadingBit(59421i)), abs(var_2.b.a), 35779i) & _wgslsmith_clamp_vec3_i32(arg_1.c.xyy, reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, var_2.b.a, 1i), arg_1.c.wyw)), arg_1.c.xyz);
    return var_0.xwz;
}

fn func_2() -> bool {
    let var_0 = -5476i;
    global2 = array<Struct_5, 24>();
    let var_1 = Struct_3(Struct_2(max(-37321i, _wgslsmith_mult_i32(1i, -9664i)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(4294967295u, 29u)])))))), true, (2147483647i <= var_0) && true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(257f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-299f)), -568f))), 3798u);
    let var_2 = _wgslsmith_f_op_f32(-484f * -712f);
    var var_3 = Struct_4(Struct_3(var_1.a, true, any(func_3(_wgslsmith_f_op_f32(-var_1.a.b.x), Struct_1(var_0, u_input.b, vec4<i32>(var_1.a.a, -1i, -18802i, 1i), 20974u), Struct_1(var_0, 26975i, vec4<i32>(-14550i, 13163i, u_input.b, 45670i), global1.x))), 2643f, _wgslsmith_clamp_u32(var_1.e, _wgslsmith_sub_u32(~var_1.e, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global1.x, var_1.e), vec3<u32>(global1.x, var_1.e, 1u))), 1u)), Struct_2(var_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(global1.x >> (4294967295u % 32u), 29u)]) - global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, var_1.e) << (max(global1.x, var_1.e) % 32u), 29u)])));
    return func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2)))), Struct_1(-12452i, countOneBits(reverseBits(~250i)), ~(~(-vec4<i32>(1i, var_1.a.a, var_1.a.a, 0i))), global1.x), Struct_1(-32990i, reverseBits(firstLeadingBit(var_0) >> (global1.x % 32u)), select(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_3.b.a, -1i, var_1.a.a, var_0), vec4<i32>(var_1.a.a, 2147483647i, 0i, 0i), vec4<i32>(0i, 1i, 0i, var_0)), ~vec4<i32>(var_0, -2147483647i, var_3.b.a, var_1.a.a)), ~select(vec4<i32>(u_input.c, var_0, var_3.b.a, -27340i), vec4<i32>(11745i, -28601i, var_0, var_3.b.a), vec4<bool>(false, true, false, var_3.a.b)), !select(vec4<bool>(var_1.c, false, true, false), vec4<bool>(false, false, var_3.a.c, true), false)), 4294967295u)).x;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<f32>) -> Struct_4 {
    var var_0 = vec4<bool>(!any(vec3<bool>(true, true, true)) & func_2(), any(vec2<bool>(false, select(false, true, true))), all(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false))), select(select(true, any(vec2<bool>(false, true)), true) | false, !(!select(true, false, true)), !select(true, true, true)));
    var var_1 = max(global1.x, ~global1.x);
    var var_2 = select(!vec2<bool>(var_0.x, !(false & var_0.x)), var_0.wy, any(!(!vec4<bool>(var_0.x, false, false, true))));
    let var_3 = Struct_2(~(~(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a) | -u_input.a.x)), _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, global1.x), 29u)] * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), -537f)));
    let var_4 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x))), -1305f, arg_0.x), vec3<f32>(_wgslsmith_f_op_f32(var_3.b.x - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-280f + 583f), _wgslsmith_f_op_f32(f32(-1f) * -534f), var_0.x))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))));
    return Struct_4(Struct_3(var_3, false, true, -1000f, _wgslsmith_div_u32(30230u, firstLeadingBit(~global1.x))), Struct_2(firstTrailingBit(u_input.c), _wgslsmith_f_op_vec2_f32(sign(arg_0.zx))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: Struct_5) -> vec2<u32> {
    global2 = array<Struct_5, 24>();
    global1 = min(vec2<u32>(17492u, ~0u), ~_wgslsmith_mod_vec2_u32(~vec2<u32>(global1.x, 7313u) & arg_0.yz, firstLeadingBit(arg_0.yy ^ vec2<u32>(arg_0.x, 4294967295u))));
    var var_0 = vec3<i32>(~_wgslsmith_dot_vec3_i32(max(firstTrailingBit(vec3<i32>(u_input.b, 7110i, -27281i)), abs(vec3<i32>(arg_3.a.a.a.a, arg_3.a.a.a.a, arg_3.d))), vec3<i32>(~arg_2.b.a, u_input.a.x >> (4294967295u % 32u), arg_3.d)), arg_2.a.a.a >> (abs(0u) % 32u), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(38360i, -9076i, -78928i) | select(vec3<i32>(u_input.a.x, arg_3.a.a.a.a, 17908i), vec3<i32>(arg_3.a.a.a.a, u_input.a.x, u_input.a.x), arg_3.a.a.b)), vec3<i32>(u_input.b, -1i, 1i)));
    let var_1 = Struct_3(arg_2.a.a, true, !arg_2.a.c, arg_1.x, global1.x);
    let var_2 = Struct_1(var_1.a.a, ~2147483647i ^ abs(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.a.a, arg_3.d, arg_2.a.a.a), vec3<i32>(-2147483647i, 49731i, 26587i)), vec3<i32>(2147483647i, u_input.c, 0i) | vec3<i32>(-1i, -16192i, arg_2.b.a))), ~max(firstLeadingBit(vec4<i32>(arg_3.a.a.a.a, u_input.c, var_1.a.a, 1i)) >> (vec4<u32>(arg_0.x, arg_0.x, 53665u, 82251u) % vec4<u32>(32u)), firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, 32059i, -24403i, u_input.b), vec4<i32>(-2147483647i, -2503i, 1i, u_input.b)))), ~func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_3.a.b.b.x, var_1.d, arg_1.x) - vec4<f32>(419f, -442f, var_1.a.b.x, -1014f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-902f, arg_2.b.b.x, -1000f) * _wgslsmith_f_op_vec3_f32(-arg_3.b.wxw))).a.e);
    return reverseBits(vec2<u32>(~1u, ~arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 29>();
    let var_0 = global0[_wgslsmith_index_u32(global1.x, 29u)];
    global1 = func_4(vec3<u32>(1u, ~_wgslsmith_mult_u32(13156u, 52643u), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 4294967295u, global1.x, 37799u), vec4<u32>(global1.x, global1.x, 0u, 15540u)), 34031u)), vec2<f32>(-925f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_0.x))))), func_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-807f, var_0.x, -1000f, 688f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1134f, var_0.x) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, var_0.x, 1000f))))), global2[_wgslsmith_index_u32(firstLeadingBit(global1.x), 24u)]) ^ ~firstLeadingBit(vec2<u32>(func_1(vec4<f32>(var_0.x, -695f, var_0.x, var_0.x), vec3<f32>(284f, 209f, -139f)).a.e, countOneBits(2231u)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    var var_2 = Struct_2(_wgslsmith_clamp_i32(1i, _wgslsmith_clamp_i32(-min(0i, u_input.b), ~u_input.a.x ^ -56360i, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c, 32496i), u_input.a)), i32(-1i) * -71727i), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -116f), var_1));
    let var_3 = global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1164f, var_1))));
}

