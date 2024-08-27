struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec4<f32>,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: Struct_3;

var<private> global2: array<Struct_1, 31>;

var<private> global3: f32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    var var_0 = arg_0.b.x;
    let var_1 = 31955u;
    let var_2 = 2147483647i;
    var var_3 = arg_1.b;
    global3 = arg_1.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-951f, arg_1.a)) * _wgslsmith_f_op_f32(floor(global1.c)))))));
}

fn func_2(arg_0: bool, arg_1: vec4<f32>) -> Struct_3 {
    var var_0 = 486f;
    global2 = array<Struct_1, 31>();
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(func_3(global1.a, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-230f, arg_1.x)) - -203f)), true, arg_1, all(global1.a.b.zx), !arg_0)));
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.x, 1000f, -2096f, global1.c)));
    return Struct_3(global2[_wgslsmith_index_u32(36794u, 31u)], _wgslsmith_mod_i32(-1i, -reverseBits(1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(arg_1.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_2)), 1944f))), global1.d);
}

fn func_4(arg_0: Struct_3) -> i32 {
    var var_0 = 45398i;
    let var_1 = 2147483647i;
    let var_2 = 4294967295u;
    global1 = Struct_3(func_2(arg_0.a.b.x, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2136f, arg_0.c, 194f, -513f) + vec4<f32>(1274f, 348f, arg_0.c, global1.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2491f, 970f, arg_0.c, 1024f)))))).a, 2147483647i, arg_0.c, _wgslsmith_add_i32(arg_0.d, ~_wgslsmith_mult_i32(~(-1i), countOneBits(arg_0.d))));
    let var_3 = -9584i;
    return -33081i;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_3) -> Struct_1 {
    var var_0 = Struct_3(func_2(select(any(vec2<bool>(false, arg_2.a.b.x)), true, !(!arg_2.a.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1.c * arg_2.c), arg_2.c, _wgslsmith_f_op_f32(global1.c - global1.c), _wgslsmith_f_op_f32(-683f - arg_2.c)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c, arg_2.c, global1.c, -1301f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(422f, arg_2.c, global1.c, arg_2.c))))).a, _wgslsmith_mod_i32(abs((i32(-1i) * -1i) & _wgslsmith_add_i32(global1.d, 73994i)), -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c, global1.c) - global1.c) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-929f, 652f)))), -23256i);
    var var_1 = Struct_3(Struct_1(global1.a.a, vec3<bool>(any(select(global1.a.b.yz, arg_2.a.b.xx, vec2<bool>(true, true))), (global1.a.b.x | arg_2.a.b.x) || false, var_0.c <= _wgslsmith_f_op_f32(step(arg_2.c, 2005f)))), var_0.d, 140f, -30261i);
    let var_2 = global1.a;
    let var_3 = -_wgslsmith_clamp_vec3_i32(arg_0.xwz, -max(select(vec3<i32>(-2147483647i, global1.b, 42163i), arg_0.wxy, global1.a.b.x), arg_0.wyw), min(vec3<i32>(var_0.d, arg_2.b, arg_2.b), vec3<i32>(arg_2.b, arg_0.x, -2147483647i)) | min(vec3<i32>(global1.b, global1.d, 8509i) | arg_0.zyz, ~arg_0.www));
    var var_4 = var_0.c;
    return func_2(!var_0.a.b.x, vec4<f32>(arg_2.c, var_0.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.c, -552f))), _wgslsmith_f_op_f32(-502f * 1498f))), arg_2.c)).a;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<i32>) -> Struct_3 {
    let var_0 = global1.a.b.x;
    let var_1 = -154f;
    var var_2 = func_5(vec4<i32>(1i, -(i32(-1i) * -1i), _wgslsmith_mod_i32(-countOneBits(arg_1.x), (arg_1.x & global1.b) << (4876u % 32u)), _wgslsmith_div_i32(func_4(func_2(global1.a.b.x, vec4<f32>(global1.c, global1.c, -1583f, -1297f))), global1.b)), Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(44140u, 75368u, global1.a.a.x, 69884u), ~vec4<u32>(3241u, 0u, 0u, u_input.a)), ~(~53543u), abs(_wgslsmith_clamp_u32(16079u, global1.a.a.x, 0u)), arg_0.x), !func_2(!global1.a.b.x, vec4<f32>(var_1, var_1, global1.c, global1.c)).a.b), func_2(func_2(!global1.a.b.x & global1.a.b.x, vec4<f32>(_wgslsmith_f_op_f32(min(595f, 1452f)), -1232f, _wgslsmith_f_op_f32(var_1 + global1.c), -609f)).a.b.x, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1, var_1, 1000f, -246f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, var_1, var_1) + vec4<f32>(global1.c, var_1, 680f, -345f)))))));
    var var_3 = ~global1.a.a.zzz;
    let var_4 = Struct_3(global2[_wgslsmith_index_u32(1u, 31u)], _wgslsmith_add_i32(arg_1.x, _wgslsmith_sub_i32(-reverseBits(-2147483647i), 1i | arg_1.x)), global1.c, ~(-2147483647i));
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(global1.a.a.ww, vec2<i32>(abs(~1i), 26234i));
    global2 = array<Struct_1, 31>();
    global3 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-576f + 343f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.c)))), -1002f), 63692u);
}

