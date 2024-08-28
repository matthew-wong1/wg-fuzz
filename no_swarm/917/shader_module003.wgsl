struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec2<f32>(720f, 716f)), Struct_1(vec2<f32>(-706f, 452f)), Struct_1(vec2<f32>(1277f, 763f)), Struct_1(vec2<f32>(111f, 976f)), Struct_1(vec2<f32>(1005f, -249f)), Struct_1(vec2<f32>(-953f, -644f)), Struct_1(vec2<f32>(-1210f, -1510f)), Struct_1(vec2<f32>(892f, 949f)), Struct_1(vec2<f32>(1624f, 1000f)), Struct_1(vec2<f32>(-945f, 1052f)), Struct_1(vec2<f32>(1218f, -146f)), Struct_1(vec2<f32>(-1000f, 1000f)), Struct_1(vec2<f32>(359f, -224f)), Struct_1(vec2<f32>(-1308f, -1437f)), Struct_1(vec2<f32>(-1388f, -544f)), Struct_1(vec2<f32>(579f, 408f)), Struct_1(vec2<f32>(1337f, -884f)), Struct_1(vec2<f32>(-1048f, -1077f)));

var<private> global1: Struct_1;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2, arg_3: u32) -> bool {
    global0 = array<Struct_1, 18>();
    var var_0 = arg_0.b;
    var var_1 = arg_2;
    let var_2 = global0[_wgslsmith_index_u32(1u << (~_wgslsmith_sub_u32(countOneBits(arg_3), ~48575u) % 32u), 18u)];
    let var_3 = Struct_5(u_input.a.x);
    return any(vec4<bool>(true, false, true, any(vec4<bool>(true, -12159i < var_1.c, var_1.b, any(var_1.a.yz)))));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_2(!vec3<bool>(false, any(vec2<bool>(true, true)), all(vec4<bool>(false, false, false, false)) || func_3(Struct_3(vec2<f32>(global1.a.x, 1000f), vec4<f32>(global1.a.x, global1.a.x, global1.a.x, -1560f)), global1.a.x, Struct_2(vec3<bool>(true, true, true), true, 45890i), 0u)), all(vec4<bool>(true, all(vec4<bool>(true, true, true, true)), all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), true)), _wgslsmith_f_op_f32(-global1.a.x) >= _wgslsmith_f_op_f32(-global1.a.x))), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.c.x, -911i, -22742i), vec3<i32>(u_input.b.x, _wgslsmith_mod_i32(u_input.b.x, -2147483647i), 37941i)), u_input.c.zwy));
    var var_1 = Struct_4(global1.a.x);
    let var_2 = _wgslsmith_mult_i32(_wgslsmith_div_i32(max(1i, _wgslsmith_div_i32(1i, _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(11321i, var_0.c)))), -1i), reverseBits(~(_wgslsmith_dot_vec3_i32(u_input.c.xwz, vec3<i32>(1i, 35719i, var_0.c)) ^ (0i | u_input.b.x))));
    global0 = array<Struct_1, 18>();
    var var_3 = vec4<bool>(func_3(Struct_3(global1.a, vec4<f32>(_wgslsmith_f_op_f32(var_1.a - global1.a.x), _wgslsmith_f_op_f32(global1.a.x - global1.a.x), _wgslsmith_f_op_f32(select(global1.a.x, -373f, var_0.b)), 454f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2188f - _wgslsmith_f_op_f32(ceil(-474f))), 231f), var_0, ~_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a.x, 0u, 1u, u_input.a.x)), ~vec4<u32>(0u, u_input.a.x, u_input.a.x, 51161u))), true, any(select(select(vec4<bool>(var_0.a.x, true, var_0.a.x, true), vec4<bool>(true, false, false, var_0.b), select(vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.b), vec4<bool>(true, var_0.b, var_0.a.x, true), vec4<bool>(var_0.b, false, var_0.a.x, true))), select(select(vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true), var_0.b), vec4<bool>(false, var_0.a.x, true, true), select(vec4<bool>(false, var_0.b, true, var_0.a.x), vec4<bool>(false, true, false, false), var_0.a.x)), true)), true);
    return Struct_4(1371f);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_4) -> Struct_3 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, -378f, -1226f, 1000f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, var_0.a, arg_1.a.x, 2629f) - vec4<f32>(2242f, global1.a.x, var_0.a, -500f)))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(arg_0 * arg_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -2132f), -1390f, _wgslsmith_f_op_f32(-1000f * global1.a.x)), vec4<f32>(_wgslsmith_f_op_f32(abs(-1003f)), arg_3.a, _wgslsmith_f_op_f32(-218f + var_0.a), -1024f), vec4<bool>(arg_2.x >= arg_2.x, all(vec2<bool>(true, true)), arg_0 >= arg_3.a, true)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_3.a, 1150f, 1000f, arg_0)))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, global1.a.x, 1292f, 444f) + vec4<f32>(-1000f, global1.a.x, 342f, arg_3.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(217f, arg_3.a, 512f, -1242f)), true))));
    let var_2 = select(vec3<bool>(_wgslsmith_sub_u32(~arg_2.x, arg_2.x) > ~36634u, !(!any(vec4<bool>(false, true, false, true))), true), select(select(vec3<bool>(true, true, true), vec3<bool>(global1.a.x != var_0.a, true, true), true), vec3<bool>(!any(vec3<bool>(true, false, true)), any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true)), (-1i << (u_input.a.x % 32u)) < 1i), true), select(false, all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)))), true));
    let var_3 = var_2.zx;
    return Struct_3(var_1.wx, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(293f, global1.a.x, arg_3.a, arg_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, var_0.a, var_0.a, -944f) + vec4<f32>(162f, var_0.a, var_1.x, arg_3.a))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(322f, var_1.x, arg_3.a, -646f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, arg_0, var_1.x, 106f))), vec4<f32>(936f, arg_0, arg_1.a.x, _wgslsmith_div_f32(arg_1.a.x, 962f)))), var_2.x & (u_input.c.x == -u_input.c.x))));
}

fn func_1(arg_0: bool) -> vec4<i32> {
    let var_0 = func_4(_wgslsmith_f_op_f32(270f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.a.x * _wgslsmith_div_f32(global1.a.x, global1.a.x))))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.a))), u_input.a, func_2());
    global1 = global0[_wgslsmith_index_u32(4294967295u, 18u)];
    var var_1 = func_4(_wgslsmith_f_op_f32(var_0.b.x - var_0.b.x), global0[_wgslsmith_index_u32(u_input.a.x, 18u)], min(~vec2<u32>(881u ^ u_input.a.x, select(0u, u_input.a.x, arg_0)), vec2<u32>(~max(29366u, u_input.a.x), 4294967295u >> (~4294967295u % 32u))), func_2());
    var var_2 = Struct_5(u_input.a.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1917f, var_1.b.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.a))))));
    return firstTrailingBit(_wgslsmith_mult_vec4_i32(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, 0i, 2147483647i), vec4<i32>(u_input.b.x, u_input.c.x, 14018i, 2147483647i), vec4<i32>(u_input.c.x, -1i, u_input.b.x, u_input.b.x)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, 0i, u_input.c.x, 2147483647i), u_input.c), vec4<bool>(true, arg_0, true, true)) | _wgslsmith_clamp_vec4_i32(~u_input.c, vec4<i32>(u_input.c.x, -37674i, u_input.b.x, u_input.c.x), vec4<i32>(24279i, 2147483647i, u_input.c.x, u_input.b.x)), -(vec4<i32>(-1i) * -vec4<i32>(u_input.c.x, 1i, 4012i, 6109i))));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(min(global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(global1.a.x * global1.a.x)))))));
    global0 = array<Struct_1, 18>();
    var var_1 = u_input.a.x;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(arg_1.yz - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1.a.x), global1.a.x) - vec2<f32>(-2133f, _wgslsmith_f_op_f32(trunc(var_0.a))))));
    var var_3 = arg_1.yy;
    return Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(global1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global1.a)) - vec2<f32>(-648f, arg_1.x)), vec2<bool>(any(vec2<bool>(false, false)), true))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(vec4<i32>(~(u_input.b.x >> (u_input.a.x % 32u)), -_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), abs(1i), ~u_input.c.x) | func_1(all(vec3<bool>(true, true, true))), vec3<f32>(global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)))));
    var var_0 = u_input.c.x;
    var var_1 = !all(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), all(vec3<bool>(false, false, true))), !all(vec4<bool>(false, true, false, false))));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-860f, -794f)) - func_5(abs(u_input.c) | _wgslsmith_sub_vec4_i32(vec4<i32>(4655i, -1i, 68707i, -1i), vec4<i32>(u_input.c.x, -1i, u_input.c.x, 12273i)), vec3<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -646f)).a));
    var var_2 = Struct_5(u_input.a.x);
    var_1 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1029f, global1.a.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.a.x)))) < 1064f);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(~(~0u), ~var_2.a, u_input.a.x));
}

