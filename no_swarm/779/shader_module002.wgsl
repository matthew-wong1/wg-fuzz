struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24> = array<bool, 24>(true, true, false, false, false, false, false, true, false, true, false, false, false, false, false, true, false, true, true, false, false, true, true, false);

var<private> global1: vec4<u32>;

var<private> global2: bool = true;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>) -> u32 {
    var var_0 = false;
    global0 = array<bool, 24>();
    let var_1 = !vec3<bool>(true & !(!global0[_wgslsmith_index_u32(u_input.a.x, 24u)]), true, all(vec4<bool>(all(vec2<bool>(true, true)), 10533u > u_input.a.x, true, any(vec2<bool>(true, false)))));
    let var_2 = Struct_2(arg_0.a);
    let var_3 = Struct_2(var_2.a);
    return _wgslsmith_div_u32(1u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.a.zzx, ~u_input.a.ywy), arg_0.a.b) ^ 47545u);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1796f, 1971f, 2152f) + vec4<f32>(178f, 241f, 1859f, 929f)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1128f, 759f, 1035f, -2280f), vec4<f32>(-588f, -275f, 857f, -1000f)))))), abs(func_3(Struct_2(Struct_1(vec4<f32>(-957f, -212f, 2133f, 828f), 4294967295u)), ~(vec3<i32>(-1i, -37739i, -25866i) | vec3<i32>(12859i, -67774i, u_input.b)))));
    let var_1 = var_0.b;
    let var_2 = global0[_wgslsmith_index_u32(0u, 24u)];
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(select(var_0.a, _wgslsmith_f_op_vec4_f32(-var_0.a), vec4<bool>(-2442f >= var_0.a.x, global0[_wgslsmith_index_u32(global1.x, 24u)] || global0[_wgslsmith_index_u32(var_0.b, 24u)], true, global0[_wgslsmith_index_u32(var_1, 24u)] && global0[_wgslsmith_index_u32(81677u, 24u)]))), 0u));
    let var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-930f)), var_0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1185f + _wgslsmith_f_op_f32(select(var_0.a.x, var_0.a.x, global0[_wgslsmith_index_u32(80484u, 24u)]))))))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-356f, var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, 1034f, global0[_wgslsmith_index_u32(var_1, 24u)]))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), global1.x);
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> f32 {
    global0 = array<bool, 24>();
    var var_0 = func_2();
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(arg_2.a - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(arg_2.a)))), _wgslsmith_sub_u32(25690u, reverseBits(var_0.b))));
    var var_2 = -29696i;
    global0 = array<bool, 24>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2().a.x - 1076f), _wgslsmith_f_op_f32(-arg_2.a.x));
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(941f * _wgslsmith_f_op_f32(func_4(!global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~global1.x, 233u), 24u)], global0[_wgslsmith_index_u32(u_input.c, 24u)], func_2())));
    let var_1 = _wgslsmith_f_op_f32(trunc(-1000f));
    var var_2 = ~vec3<i32>(_wgslsmith_mult_i32(-9398i, _wgslsmith_clamp_i32(12027i, -40951i >> (1u % 32u), min(u_input.b, 26634i))), -u_input.b, abs(u_input.b));
    var var_3 = false & !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.a, ~u_input.a), ~abs(vec4<u32>(13339u, arg_0.x, 0u, global1.x))), 24u)];
    var_3 = false;
    return Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1769f, var_1, 1000f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-443f, -1303f, 1498f, var_1) - vec4<f32>(-1360f, var_1, -869f, 544f))), vec4<f32>(_wgslsmith_f_op_f32(var_1 + 256f), _wgslsmith_f_op_f32(sign(var_1)), _wgslsmith_div_f32(926f, 192f), _wgslsmith_f_op_f32(-var_1))), 1u));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> vec3<i32> {
    let var_0 = arg_1.a.x;
    global0 = array<bool, 24>();
    var var_1 = _wgslsmith_f_op_f32(-func_2().a.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -934f), arg_1.a.x, -565f) * vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(global0[_wgslsmith_index_u32(1u, 24u)], false, Struct_1(arg_0.a.a, 0u))), _wgslsmith_f_op_f32(func_4(global0[_wgslsmith_index_u32(39965u, 24u)], true, arg_1))), 157f)), func_2().a.x, arg_1.a.x));
    var var_3 = arg_0.a;
    return _wgslsmith_mult_vec3_i32(min(max(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d.x, u_input.b, 2147483647i) >> (vec3<u32>(34566u, 44972u, arg_1.b) % vec3<u32>(32u)), vec3<i32>(u_input.d.x, 62313i, -2147483647i)), ~(-vec3<i32>(u_input.d.x, 2098i, -2147483647i))), firstLeadingBit(min(vec3<i32>(-28134i, u_input.b, u_input.d.x), vec3<i32>(u_input.b, -1i, u_input.d.x)) ^ vec3<i32>(-1i, -30975i, u_input.d.x))), ~vec3<i32>(10857i, u_input.b, u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-(vec4<i32>(-1i) * -abs(vec4<i32>(u_input.b, -28920i, u_input.b, 13i))));
    global1 = min(u_input.a, ~abs(max(u_input.a, u_input.a)) ^ _wgslsmith_clamp_vec4_u32(~vec4<u32>(global1.x, 1u, 1u, 4294967295u) << (vec4<u32>(u_input.c, 86517u, u_input.a.x, 77402u) % vec4<u32>(32u)), ~(u_input.a | u_input.a), vec4<u32>(~58882u, 1u, ~0u, 0u)));
    let var_1 = -func_5(func_1(max(~vec3<u32>(69081u, global1.x, u_input.a.x), select(global1.ywy, vec3<u32>(80043u, 22319u, u_input.c), vec3<bool>(global0[_wgslsmith_index_u32(1u, 24u)], true, false)))), func_1(global1.zyy).a);
    var var_2 = func_1(countOneBits(u_input.a.wyz) & _wgslsmith_add_vec3_u32(max(vec3<u32>(1u, 22942u, global1.x), vec3<u32>(u_input.a.x, 0u, global1.x)), global1.wyw)).a;
    global2 = all(vec2<bool>(true, false));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.b);
}

