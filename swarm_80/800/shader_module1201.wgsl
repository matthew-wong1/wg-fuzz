struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<f32>,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1i, 2147483647i);

var<private> global1: array<vec4<bool>, 20> = array<vec4<bool>, 20>(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_2) -> bool {
    return false;
}

fn func_2(arg_0: i32) -> f32 {
    let var_0 = Struct_2(select(vec2<bool>(true, true), select(vec2<bool>(true, u_input.a.x >= 1i), vec2<bool>(true, true), !func_3(vec3<i32>(global0.x, -1i, u_input.a.x), true, Struct_2(vec2<bool>(false, true), Struct_1(-320f), vec2<f32>(114f, 362f), u_input.d, Struct_1(-412f)))), select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(false, true, any(vec3<bool>(true, false, true))))), Struct_1(_wgslsmith_f_op_f32(1235f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(225f)) * _wgslsmith_f_op_f32(ceil(322f))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1059f, -377f) - vec2<f32>(2496f, -1353f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1124f, 768f)))))))), _wgslsmith_add_vec4_i32(abs(abs(u_input.d)), reverseBits(max(abs(u_input.a), u_input.a))), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(1f))))));
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1517f - var_0.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(845f))), -1084f), _wgslsmith_f_op_f32(-var_0.e.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-134f - var_1.e.a), var_1.b.a))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-710f, var_0.c.x, 741f, var_1.b.a))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.a, var_1.c.x, var_1.e.a, var_1.b.a) + vec4<f32>(430f, var_0.e.a, 1112f, var_1.e.a)))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1127f, var_1.c.x, var_0.e.a, var_1.c.x))))))));
    let var_3 = 1857i;
    var var_4 = all(!vec2<bool>(var_0.a.x, !var_0.a.x));
    return -187f;
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: bool) -> i32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -603f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(arg_1.x, 521f)))), arg_1.x, countOneBits(u_input.c.x) <= u_input.c.x)), arg_2 & (arg_0 != _wgslsmith_f_op_f32(-arg_1.x)))), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-849f - arg_0))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 * arg_1.x))), _wgslsmith_f_op_f32(-arg_0), arg_2)))));
    global0 = -countOneBits(firstTrailingBit(u_input.a.zx));
    var var_1 = Struct_2(!select(select(!vec2<bool>(arg_2, false), vec2<bool>(true, true), all(global1[_wgslsmith_index_u32(u_input.e.x, 20u)])), vec2<bool>(true, arg_2 | true), select(select(vec2<bool>(false, arg_2), vec2<bool>(true, arg_2), vec2<bool>(arg_2, true)), !vec2<bool>(false, arg_2), vec2<bool>(true, true))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -938f) + var_0.x)), vec2<f32>(_wgslsmith_f_op_f32(func_2(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 24720i, 2147483647i), vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x)))), _wgslsmith_f_op_f32(func_2(-31249i))), countOneBits(firstLeadingBit(vec4<i32>(u_input.d.x, global0.x, -6785i, u_input.d.x))) << (~vec4<u32>(u_input.c.x, u_input.e.x, 0u, 1u) % vec4<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(-var_0.x)));
    global1 = array<vec4<bool>, 20>();
    return global0.x;
}

fn func_1() -> vec2<i32> {
    var var_0 = -func_4(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-460f, 452f))), true)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-258f, 248f))), _wgslsmith_f_op_f32(func_2(_wgslsmith_mult_i32(global0.x, u_input.d.x))), _wgslsmith_div_f32(-942f, -1648f), -691f), firstLeadingBit(19248i) < global0.x);
    let var_1 = !(all(vec2<bool>(true, true)) | (true | !func_3(u_input.a.yyw, true, Struct_2(vec2<bool>(false, true), Struct_1(155f), vec2<f32>(-364f, 1000f), vec4<i32>(global0.x, 0i, -33190i, global0.x), Struct_1(428f)))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -422f);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(2191f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-159f - _wgslsmith_f_op_f32(-1338f + -1089f)), 1092f))));
    let var_4 = -_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(20828i, u_input.d.x, -1i, 17597i)), vec4<i32>(-2147483647i, -2147483647i, global0.x, u_input.a.x)), ~(~vec4<i32>(1i, global0.x, -9795i, -1i)), ~vec4<i32>(2147483647i, -2147483647i, 0i, 9532i)) ^ -reverseBits(u_input.d);
    return firstLeadingBit(var_4.xx);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = u_input.a.zz;
    global0 = var_0 >> (vec2<u32>(~firstLeadingBit(min(133811u, u_input.b)), 83456u) % vec2<u32>(32u));
    let var_1 = vec2<i32>(_wgslsmith_dot_vec3_i32(~u_input.a.yyx, min(vec3<i32>(u_input.a.x, -2147483647i, -1i), u_input.a.yxy) >> (u_input.c.zzw % vec3<u32>(32u))), global0.x & -5843i);
    var var_2 = firstTrailingBit(u_input.c.yzx ^ firstLeadingBit(~u_input.c.xwx));
    let var_3 = _wgslsmith_mult_vec3_u32(u_input.c.yyy, ~_wgslsmith_clamp_vec3_u32(u_input.c.xwx, vec3<u32>(u_input.b, ~11589u, abs(var_2.x)), ~(~vec3<u32>(41156u, 7541u, u_input.e.x))));
    global1 = array<vec4<bool>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -612f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(680f * -1535f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1215f, 646f, true)) + _wgslsmith_f_op_f32(-1000f * 1003f)))), _wgslsmith_add_u32(abs(_wgslsmith_add_u32(~u_input.e.x, ~u_input.b)), ~_wgslsmith_dot_vec3_u32(var_3 & var_3, _wgslsmith_mod_vec3_u32(vec3<u32>(81514u, 4294967295u, u_input.c.x), vec3<u32>(var_2.x, var_2.x, 107564u)))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(294f + 544f)), _wgslsmith_f_op_f32(-307f + -1488f))), _wgslsmith_div_f32(-739f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-255f * -804f), _wgslsmith_f_op_f32(trunc(634f)))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(810f * -390f)))));
}

