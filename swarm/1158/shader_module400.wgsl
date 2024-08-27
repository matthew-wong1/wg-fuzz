struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<i32, 3> = array<i32, 3>(2147483647i, 7260i, i32(-2147483648));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<bool>) -> vec2<u32> {
    global1 = array<i32, 3>();
    let var_0 = _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.a, u_input.a) << (u_input.a % vec4<u32>(32u)), ~firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(61117u, u_input.c, u_input.a.x, 29130u), u_input.a)));
    let var_1 = ~1u;
    var var_2 = _wgslsmith_f_op_f32(trunc(-414f));
    let var_3 = Struct_2(1i);
    return _wgslsmith_sub_vec2_u32(var_0.zy << (var_0.yz % vec2<u32>(32u)), vec2<u32>(var_1, firstLeadingBit(1u)) >> (vec2<u32>(var_0.x, ~1u) % vec2<u32>(32u)));
}

fn func_2() -> Struct_2 {
    global0 = Struct_2(_wgslsmith_add_i32(global0.a, select(u_input.b, _wgslsmith_sub_i32(firstTrailingBit(global0.a), ~u_input.b), all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), true)))));
    let var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x << (1u % 32u), firstLeadingBit(u_input.c)), func_3(vec4<bool>(true, true, true, true))), ~firstTrailingBit(func_3(vec4<bool>(true, true, true, true)).x), 0u);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1469f);
    return Struct_2(-(~_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(~0u, 3u)], 1i)));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    global1 = array<i32, 3>();
    global1 = array<i32, 3>();
    var var_0 = _wgslsmith_f_op_f32(185f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1341f) - _wgslsmith_f_op_f32(step(413f, -750f))) - -546f)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -303f))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1919f, _wgslsmith_f_op_f32(345f + -258f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1855f, -474f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1825f, 1653f), vec2<f32>(-1588f, -921f))) * vec2<f32>(482f, -1655f)) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-567f, 2611f) * vec2<f32>(-937f, 341f)), vec2<f32>(1000f, -2215f)))))), false, _wgslsmith_f_op_vec3_f32(vec3<f32>(-252f, _wgslsmith_f_op_f32(-229f + _wgslsmith_f_op_f32(floor(-2730f))), 828f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-1425f + 115f), -466f, _wgslsmith_f_op_f32(round(-370f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1066f, -949f, -422f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1184f, -1175f, 919f)), vec3<bool>(true, true, true))), select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true))))), vec2<u32>(~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 67205u), vec2<u32>(u_input.a.x, 17293u))), ~24602u));
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-667f, var_1.a.x))), var_1.a.x)), _wgslsmith_f_op_f32(var_1.c.x * 388f)), -_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(4294967295u, 3u)], -u_input.b) > _wgslsmith_sub_i32(1i, global0.a), _wgslsmith_f_op_vec3_f32(var_1.c * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -829f, var_1.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(414f, -961f, 867f) - vec3<f32>(var_1.c.x, var_1.c.x, var_1.c.x)))), var_1.c)), reverseBits(u_input.a.yy) >> (_wgslsmith_add_vec2_u32(u_input.a.zz, u_input.a.zw) % vec2<u32>(32u)));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec2<i32>) -> vec2<f32> {
    global0 = func_2();
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.c.zy + vec2<f32>(arg_2.c.x, -1537f)) + arg_2.a))))));
}

fn func_1() -> i32 {
    var var_0 = u_input.b;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5(func_4(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1689f))), func_4(Struct_2(2147483647i)), vec2<i32>(_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(u_input.a.x, 3u)], global0.a, -1i), 1i))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_5(Struct_1(vec2<f32>(170f, -1000f), true, vec3<f32>(158f, -1000f, -1000f), u_input.a.wz), -2491f, Struct_1(vec2<f32>(-1609f, 1628f), true, vec3<f32>(-1000f, 257f, 1000f), vec2<u32>(u_input.a.x, 27102u)), vec2<i32>(2376i, 23706i)))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-721f, 946f))))))), all(vec3<bool>(all(vec2<bool>(true, true)), true, all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(651f, 1234f, _wgslsmith_f_op_f32(-814f * 359f)), vec3<f32>(_wgslsmith_f_op_f32(step(2159f, 458f)), 1f, -938f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-191f, -685f, 456f) + vec3<f32>(-1514f, -665f, -1000f)))))), select(_wgslsmith_sub_vec2_u32(~firstLeadingBit(vec2<u32>(3516u, u_input.c)), ~u_input.a.xy), reverseBits(u_input.a.xw), vec2<bool>(any(vec4<bool>(false, false, true, true)) == true, false)));
    let var_2 = !vec2<bool>(true, all(!select(vec2<bool>(var_1.b, true), vec2<bool>(var_1.b, var_1.b), vec2<bool>(var_1.b, var_1.b))));
    global0 = Struct_2(global0.a);
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.a), func_4(func_2()).b, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.x, _wgslsmith_f_op_f32(-var_1.a.x), var_1.a.x) + var_1.c), ~select(firstTrailingBit(_wgslsmith_div_vec2_u32(var_1.d, vec2<u32>(1u, u_input.c))), ~(vec2<u32>(4294967295u, 1u) | u_input.a.wx), vec2<bool>(true, select(true, true, true))));
    return _wgslsmith_mult_i32(-min(-17763i, global1[_wgslsmith_index_u32(abs(2314u), 3u)]), countOneBits(~reverseBits(u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(_wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(28931i, global0.a, u_input.b, global0.a) & vec4<i32>(2147483647i, u_input.b, 1i, global0.a), select(vec4<i32>(-6821i, 30819i, 3785i, 0i), vec4<i32>(0i, global1[_wgslsmith_index_u32(0u, 3u)], 2147483647i, 1i), false), vec4<i32>(-10728i, -2147483647i, global0.a, -3568i)), vec4<i32>(1i, global1[_wgslsmith_index_u32(4294967295u, 3u)], func_1(), ~func_1())));
    var var_0 = !select(select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), false), vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), false)), select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, select(true, true, false), true));
    var var_1 = _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(328f, -709f, false)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-164f, 101f)) * 1370f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1039f)))), any(var_0.xz) && ((9583i & (u_input.b >> (0u % 32u))) <= global1[_wgslsmith_index_u32(4294967295u, 3u)])));
    var var_2 = var_0.x;
    global1 = array<i32, 3>();
    global1 = array<i32, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1978f, 2051f, -693f, 466f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-207f, 739f, -468f, -1352f) + vec4<f32>(352f, -1666f, -688f, -330f)))))))), ~global0.a, vec3<i32>(-u_input.b, global0.a, 0i));
}

