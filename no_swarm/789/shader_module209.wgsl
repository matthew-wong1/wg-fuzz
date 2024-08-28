struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec2<f32>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec4<i32>,
    d: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec3<i32>,
    d: vec2<u32>,
    e: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1>;

var<private> global1: Struct_2;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_2, arg_3: bool) -> vec4<bool> {
    var var_0 = _wgslsmith_mod_i32(~(-2147483647i), arg_2.c.d);
    global0 = array<Struct_2, 1>();
    var var_1 = arg_3;
    var_1 = true;
    var_1 = all(select(select(!(!global1.d.xz), !(!arg_2.d.xx), vec2<bool>(true, true)), arg_2.d.zx, !(!(!global1.c.a.zw))));
    return global1.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_5) -> vec2<f32> {
    var var_0 = Struct_5(arg_2.a, _wgslsmith_add_vec4_i32(abs(_wgslsmith_clamp_vec4_i32(arg_1, max(arg_1, arg_1), vec4<i32>(global1.c.d, 33846i, arg_0.d, -37484i) << (arg_0.e % vec4<u32>(32u)))), -_wgslsmith_mod_vec4_i32(arg_1, vec4<i32>(u_input.a, 1i, -2147483647i, arg_1.x)) | arg_1), abs(4294967295u), reverseBits(max(_wgslsmith_mod_i32(reverseBits(u_input.a), ~global1.c.d), 18084i)));
    let var_1 = Struct_4(arg_0, _wgslsmith_mult_u32(reverseBits(abs(17230u)), _wgslsmith_clamp_u32(17080u ^ global1.c.e.x, ~arg_2.a.d, var_0.c)) < arg_2.a.d, -min(var_0.a.c.wwy | vec3<i32>(2147483647i, var_0.b.x, arg_0.d), arg_2.a.c.xzz), global1.c.e.zw, max(1i, reverseBits(-24313i)));
    global1 = Struct_2(vec4<bool>(((global1.c.e.x ^ arg_0.e.x) | 12342u) == arg_0.e.x, global1.c.a.x, var_0.a.b, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.d.x, arg_2.a.d), global1.c.e.yy), arg_2.c) < 0u), global1.b, arg_0, !select(global1.d, select(arg_0.a.xxw, select(arg_0.a.wzx, vec3<bool>(var_1.b, var_0.a.b, var_1.b), false), true), all(vec2<bool>(true, true))));
    var var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, ~min(var_1.c.x, 31928i) & 2147483647i), _wgslsmith_mult_vec2_i32(vec2<i32>(~24273i & (global1.c.d ^ var_1.c.x), var_1.e), vec2<i32>(_wgslsmith_div_i32(-1165i, firstLeadingBit(-1i)), ~arg_1.x)));
    global0 = array<Struct_2, 1>();
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.b, global1.b.x))), _wgslsmith_f_op_vec2_f32(select(global1.b.zz, vec2<f32>(-898f, -619f), true))), vec2<f32>(var_1.a.b, 1220f), vec2<bool>(var_0.a.b, all(vec2<bool>(false, true))))) - var_1.a.c)));
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.b + -1398f)), _wgslsmith_f_op_f32(floor(240f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.x + global1.c.b) + -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(1546f - global1.b.x))), (_wgslsmith_f_op_f32(global1.c.b - global1.b.x) != global1.b.x) | all(!vec3<bool>(arg_0, false, true)))), _wgslsmith_f_op_vec2_f32(func_4(Struct_1(!func_3(1816f, 368f, global0[_wgslsmith_index_u32(global1.c.e.x, 1u)], global1.c.a.x), global1.c.c.x, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.c.c.x, global1.c.c.x), vec2<f32>(1000f, 130f))))), _wgslsmith_mult_i32(global1.c.d, _wgslsmith_add_i32(5195i, global1.c.d)), abs(global1.c.e)), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.a, _wgslsmith_add_i32(u_input.a, u_input.a), min(u_input.a, global1.c.d)), vec4<i32>(~(-1i), -u_input.a, i32(-1i) * -2147483647i, ~u_input.a)), Struct_5(Struct_3(abs(-2147483647i), false, max(vec4<i32>(2147483647i, arg_1, 19982i, -59855i), vec4<i32>(global1.c.d, arg_1, global1.c.d, u_input.a)), global1.c.e.x), reverseBits(vec4<i32>(1i, 1822i, -2147483647i, 2147483647i)), (4294967295u ^ global1.c.e.x) << (max(25066u, global1.c.e.x) % 32u), reverseBits(global1.c.d)))), global1.c.a.x));
    var var_1 = Struct_5(Struct_3(i32(-1i) * -22197i, (firstLeadingBit(global1.c.e.x) ^ firstLeadingBit(global1.c.e.x)) >= ~59181u, countOneBits(countOneBits(abs(vec4<i32>(41532i, u_input.a, arg_1, arg_1)))), _wgslsmith_dot_vec4_u32(vec4<u32>(~global1.c.e.x, 0u, global1.c.e.x, _wgslsmith_div_u32(global1.c.e.x, 4294967295u)), ~global1.c.e)), firstTrailingBit(-_wgslsmith_add_vec4_i32(vec4<i32>(-21976i, -1i, 62868i, u_input.a), vec4<i32>(9475i, -44649i, 358i, u_input.a))), ~24029u, _wgslsmith_mult_i32(abs(min(u_input.a, arg_1)), (-70523i & arg_1) | 1i) << (_wgslsmith_dot_vec3_u32(~(vec3<u32>(2347u, 4214u, 76228u) & global1.c.e.wxw), ~(~global1.c.e.xxy)) % 32u));
    global1 = global0[_wgslsmith_index_u32(var_1.c, 1u)];
    let var_2 = var_1.a;
    var var_3 = var_2.c.wz;
    return global0[_wgslsmith_index_u32(global1.c.e.x, 1u)];
}

fn func_1(arg_0: i32, arg_1: vec3<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(407f, 1320f, 221f, global1.b.x), vec4<f32>(-896f, -316f, 208f, 581f))) - vec4<f32>(global1.c.c.x, -337f, global1.b.x, arg_1.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.b.x, arg_1.x, 763f, -897f), vec4<f32>(1021f, -266f, arg_1.x, -1502f), false)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.c.c.x, arg_1.x, global1.b.x, global1.b.x))))))));
    global1 = func_2(global1.c.a.x, global1.c.d);
    global0 = array<Struct_2, 1>();
    var var_1 = Struct_5(Struct_3(~(10087i | u_input.a) << (global1.c.e.x % 32u), false, reverseBits(vec4<i32>(-17069i, -16565i, -17325i, arg_0)) >> (firstLeadingBit(global1.c.e) % vec4<u32>(32u)), global1.c.e.x), reverseBits(-firstTrailingBit(vec4<i32>(-1i, 18656i, u_input.a, global1.c.d))) & select(vec4<i32>(1i, -28128i, 0i, abs(44058i)), -vec4<i32>(-3375i, arg_0, global1.c.d, global1.c.d), !(!global1.a.x)), abs(~global1.c.e.x), max(-966i, 46547i));
    var var_2 = !global1.a;
    return !func_3(-1071f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.x))), global0[_wgslsmith_index_u32(reverseBits(0u), 1u)], false).x;
}

fn func_5(arg_0: Struct_3, arg_1: bool) -> vec3<bool> {
    var var_0 = func_2(arg_0.b, -arg_0.a);
    var var_1 = var_0.c.e.xy;
    var_0 = func_2(arg_0.b, max(abs(-1i), u_input.a) >> (firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_add_u32(global1.c.e.x, var_1.x), func_2(true, 0i).c.e.x)) % 32u));
    var var_2 = any(var_0.a);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(func_2(-13412i != u_input.a, abs(abs(-54243i))).b.x * global1.c.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(var_0.b.x)))), global1.c.c.x)), _wgslsmith_div_f32(-537f, var_0.c.c.x)), _wgslsmith_f_op_f32(abs(global1.c.c.x)), _wgslsmith_f_op_f32(-1687f * -819f));
    return !vec3<bool>(_wgslsmith_f_op_f32(round(var_0.b.x)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1693f * var_0.c.c.x) * var_0.b.x), (~u_input.a >= 58643i) && !(global1.c.e.x > 65972u), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = vec3<i32>(23738i, u_input.a, firstTrailingBit(24356i << (global1.c.e.x % 32u)) ^ global1.c.d);
    global0 = array<Struct_2, 1>();
    let var_2 = !func_5(Struct_3(-_wgslsmith_mult_i32(u_input.a, 1i), select(true, global1.c.a.x, global1.c.a.x), vec4<i32>(global1.c.d, 2147483647i, reverseBits(u_input.a), _wgslsmith_mult_i32(var_1.x, 7917i)), 20811u), func_1(-u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.b.x, 664f, 234f))))));
    global1 = Struct_2(vec4<bool>(select(!global1.d.x, all(vec4<bool>(var_2.x, false, var_2.x, false)), func_3(-1195f, 161f, Struct_2(vec4<bool>(global1.c.a.x, false, global1.c.a.x, true), vec3<f32>(global1.c.c.x, -537f, global1.c.b), Struct_1(vec4<bool>(true, global1.c.a.x, global1.a.x, false), 1309f, global1.c.c, 0i, vec4<u32>(global1.c.e.x, global1.c.e.x, global1.c.e.x, 0u)), vec3<bool>(false, global1.a.x, global1.a.x)), false).x) || all(!global1.c.a), any(!(!vec2<bool>(var_2.x, var_2.x))), func_1(-1002i, global1.b), _wgslsmith_f_op_f32(ceil(1985f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1770f, global1.c.b)))), vec3<f32>(global1.c.c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(105f))))), global1.c.b), Struct_1(vec4<bool>(any(func_3(global1.c.c.x, 412f, Struct_2(vec4<bool>(global1.d.x, global1.d.x, var_2.x, global1.d.x), global1.b, global1.c, vec3<bool>(var_2.x, true, global1.c.a.x)), false).yyx), !var_2.x & true, _wgslsmith_f_op_f32(global1.c.b - -1172f) >= _wgslsmith_f_op_f32(-global1.b.x), true), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b.x, global1.c.b) + _wgslsmith_f_op_f32(-1278f - global1.c.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(func_2(var_2.x, 39958i).c, vec4<i32>(global1.c.d, global1.c.d, -31047i, u_input.a), Struct_5(Struct_3(61223i, true, vec4<i32>(1i, u_input.a, -18973i, -29411i), global1.c.e.x), vec4<i32>(-16807i, -3793i, 15496i, -1i), global1.c.e.x, -12091i))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-334f, global1.c.b))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.b, global1.b.x) - vec2<f32>(global1.b.x, -327f))))), global1.c.d, global1.c.e), vec3<bool>((select(global1.c.d, 1953i, false) & min(u_input.a, 3434i)) < ~(-1i), all(global1.a), !(-1i >= -var_1.x)));
    let var_3 = global1.c;
    let var_4 = var_3.d;
    let x = u_input.a;
    s_output = StorageBuffer(~80754u, -_wgslsmith_add_vec3_i32(var_1, _wgslsmith_div_vec3_i32(var_1, var_1) ^ vec3<i32>(var_1.x, var_3.d, var_1.x)), -var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec2_f32(func_4(global1.c, vec4<i32>(var_3.d, 15791i, 11373i, 0i), Struct_5(Struct_3(u_input.a, var_3.a.x, vec4<i32>(u_input.a, -2147483647i, u_input.a, var_1.x), var_3.e.x), vec4<i32>(-32048i, 0i, var_1.x, var_1.x), var_3.e.x, -2147483647i))).x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1410f)))) - global1.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global1.b))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, 236f, var_3.b) + global1.b))));
}

