struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2 = Struct_2(vec3<u32>(1u, 17967u, 2202u), Struct_1(-1i, vec4<bool>(false, false, true, false), 1156f), vec4<u32>(4294967295u, 68071u, 32767u, 0u));

var<private> global2: array<i32, 23>;

var<private> global3: vec2<i32>;

var<private> global4: array<vec3<bool>, 13>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    return Struct_1(firstLeadingBit(global3.x << (_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.c.x, global0.c.x, global0.c.x, global1.c.x), vec4<u32>(u_input.a.x, 0u, 15635u, 27500u)), abs(102855u), 1u) % 32u)), vec4<bool>(global1.b.a > ~_wgslsmith_div_i32(1i, -7455i), true, true, global0.b.b.x), 181f);
}

fn func_3(arg_0: i32) -> vec4<i32> {
    global4 = array<vec3<bool>, 13>();
    var var_0 = Struct_1(0i, !(!select(!global1.b.b, vec4<bool>(true, false, global0.b.b.x, false), true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.c)) + global0.b.c))));
    var var_1 = Struct_1(global3.x >> (global0.c.x % 32u), vec4<bool>(any(func_2().b.ww) || global1.b.b.x, true, global1.b.b.x, false), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.c * global1.b.c), -1232f))), _wgslsmith_f_op_f32(abs(-1000f)))));
    let var_2 = Struct_2(global0.c.wwx, func_2(), u_input.a);
    var var_3 = countOneBits(~(~vec3<u32>(1u, 13833u, ~global0.c.x)));
    return countOneBits(-(~(~(vec4<i32>(-1i, -58196i, global3.x, var_1.a) & vec4<i32>(2147483647i, global1.b.a, 25408i, 3437i)))));
}

fn func_1(arg_0: f32) -> Struct_3 {
    global0 = Struct_2(~vec3<u32>(global0.c.x, min(54223u, global0.c.x) >> (1u % 32u), ~global1.c.x), func_2(), ~vec4<u32>(_wgslsmith_dot_vec3_u32(global1.a, ~vec3<u32>(global0.a.x, 26746u, 29575u)), _wgslsmith_add_u32(~global1.a.x, 1u), _wgslsmith_mult_u32(~0u, abs(global0.c.x)), abs(global0.a.x)));
    var var_0 = ~(~_wgslsmith_add_vec4_i32(func_3(abs(2147483647i)), ~vec4<i32>(global0.b.a, -4231i, global3.x, global3.x)));
    let var_1 = min(var_0.yz, _wgslsmith_div_vec2_i32(vec2<i32>(-1i, _wgslsmith_dot_vec2_i32(var_0.zy, vec2<i32>(var_0.x, var_0.x))), vec2<i32>(-(-6748i << (global0.c.x % 32u)), 28317i)));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-205f, -780f) - vec2<f32>(global1.b.c, -752f)) * vec2<f32>(global1.b.c, global1.b.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1.b.c, global0.b.c), vec2<f32>(arg_0, 317f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1758f, -1095f) * vec2<f32>(360f, arg_0))), vec2<f32>(_wgslsmith_div_f32(global1.b.c, global1.b.c), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 2087f) * vec2<f32>(666f, 270f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(429f, -2332f), vec2<f32>(-1223f, global1.b.c)) + vec2<f32>(1088f, arg_0)))));
    var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-460f + -1387f), _wgslsmith_f_op_f32(747f * global1.b.c)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1.b.c, 220f), vec2<f32>(-1050f, -1672f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, arg_0) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1167f, global0.b.c))))))));
    return Struct_3(~firstLeadingBit(countOneBits(vec4<i32>(var_1.x, -2147483647i, 0i, global2[_wgslsmith_index_u32(4294967295u, 23u)]))), Struct_2(global1.c.xzz, Struct_1(countOneBits(1i), global0.b.b, global0.b.c), select(global1.c, global1.c, global0.b.b)), select(global1.b.b, vec4<bool>(true, global1.b.a < ~global2[_wgslsmith_index_u32(0u, 23u)], false, global0.b.b.x), 2147483647i <= _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global3.x, 0i), vec2<i32>(2147483647i, global2[_wgslsmith_index_u32(global1.c.x, 23u)])), var_1)));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    let var_0 = Struct_3(arg_0.a, arg_0.b, !vec4<bool>(any(vec4<bool>(false, global1.b.b.x, arg_0.c.x, false)), true, false, all(!global1.b.b)));
    global2 = array<i32, 23>();
    var var_1 = !select(var_0.c.wx, !(!arg_0.c.zw), any(!(!vec2<bool>(false, global1.b.b.x))));
    let var_2 = func_1(-209f).b.b;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1043f, global1.b.c, 1059f, 1307f) - vec4<f32>(var_0.b.b.c, global0.b.c, 303f, -1898f)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2551f, var_0.b.b.c, var_2.c, arg_2.c)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.c, global1.b.c, var_0.b.b.c, arg_0.b.b.c) - vec4<f32>(-663f, 667f, global1.b.c, -123f)), vec4<f32>(-1000f, global0.b.c, global0.b.c, arg_0.b.b.c), arg_2.b)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.c, var_2.c, global0.b.c, -957f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.c, 1394f, arg_0.b.b.c, arg_2.c))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-367f, 333f, 1147f, -602f), vec4<f32>(var_2.c, 141f, arg_0.b.b.c, 1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c, global0.b.c, -718f, -115f)))))));
    return Struct_2(vec3<u32>(0u, abs(~func_1(217f).b.c.x), _wgslsmith_mult_u32(~(30074u >> (global0.a.x % 32u)), ~arg_0.b.a.x)), func_2(), vec4<u32>(29799u | ~(u_input.a.x | 4294967295u), arg_0.b.a.x, ~1u, abs(abs(arg_0.b.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 17011i;
    var var_1 = global1.b.a & 16077i;
    var var_2 = global0.b.b.x;
    let var_3 = Struct_3(-(~vec4<i32>(83722i, min(var_0, 1i), -4027i, ~15392i)), func_4(func_1(global0.b.c), abs(-2147483647i), Struct_1(countOneBits(2147483647i), global0.b.b, _wgslsmith_f_op_f32(trunc(global0.b.c))), func_1(func_1(-643f).b.b.c).c.x), vec4<bool>(!func_4(Struct_3(vec4<i32>(-18773i, -3840i, -4310i, var_0), Struct_2(vec3<u32>(0u, u_input.a.x, 15801u), Struct_1(32982i, vec4<bool>(global0.b.b.x, false, false, global0.b.b.x), global0.b.c), global0.c), global0.b.b), global0.b.a, global0.b, false).b.b.x & !func_1(-278f).c.x, select(~global1.b.a >= -10820i, global1.b.b.x, any(global4[_wgslsmith_index_u32(~0u, 13u)])), _wgslsmith_div_i32(global0.b.a << (14004u % 32u), ~global0.b.a) > -1i, false));
    var var_4 = vec2<u32>(_wgslsmith_dot_vec3_u32(global0.a, vec3<u32>(4294967295u, 1u, var_3.b.c.x)), 4294967295u);
    let var_5 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.c, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 809f) * 453f) + -1132f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2340f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.b.c, 182f, var_3.b.b.c), vec3<f32>(global0.b.c, -1122f, global0.b.c))))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-116f, var_3.b.b.c, 776f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(func_4(var_3, 1i, var_3.b.b, true).b.c, _wgslsmith_f_op_f32(trunc(1000f)), func_1(global0.b.c).b.b.c)), !(global1.b.b.x || true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1735f, 845f, var_5.c))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.c, -520f, -972f) - vec3<f32>(global1.b.c, global1.b.c, 1107f))))));
}

