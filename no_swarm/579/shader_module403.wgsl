struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
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

var<private> global0: array<u32, 23> = array<u32, 23>(4294967295u, 1u, 22917u, 0u, 1u, 59447u, 16153u, 17635u, 0u, 1u, 4294967295u, 1u, 2023u, 4294967295u, 14040u, 6692u, 34678u, 17733u, 15392u, 4294967295u, 1u, 74936u, 73449u);

var<private> global1: Struct_2 = Struct_2(Struct_1(4294967295u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    global1 = Struct_2(global1.a);
    global1 = Struct_2(Struct_1(_wgslsmith_sub_u32(global1.a.a, 101447u)));
    global1 = Struct_2(Struct_1(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(30079u, 23885u, global0[_wgslsmith_index_u32(global1.a.a, 23u)], 0u), vec4<u32>(1u, 0u, global1.a.a, 58396u)), _wgslsmith_mult_vec4_u32(vec4<u32>(20402u, global0[_wgslsmith_index_u32(global1.a.a, 23u)], 37991u, global1.a.a), vec4<u32>(global0[_wgslsmith_index_u32(42609u, 23u)], 37167u, 0u, 1u))), ~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(0u, 23u)], 24445u))));
    global1 = Struct_2(global1.a);
    global1 = Struct_2(global1.a);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1064f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(475f))));
}

fn func_2(arg_0: vec2<i32>) -> f32 {
    global0 = array<u32, 23>();
    global0 = array<u32, 23>();
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    let var_1 = global1.a.a > global1.a.a;
    let var_2 = Struct_5(u_input.b);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, 2045f, var_0.b), var_0.a.zwx))))) - _wgslsmith_f_op_f32(round(var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1100f))))))));
}

fn func_4(arg_0: i32, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = vec3<u32>(global1.a.a, 46641u, 570u);
    global0 = array<u32, 23>();
    var var_1 = ~vec2<i32>(reverseBits(-_wgslsmith_clamp_i32(arg_0, 0i, -1i)), abs(46917i));
    let var_2 = Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(arg_1, arg_1), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-452f - -1000f) + _wgslsmith_f_op_f32(arg_1.x + arg_1.x)), -1610f, _wgslsmith_f_op_f32(-arg_1.x), -960f)), -1200f);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_1, vec4<f32>(-266f, var_2.a.x, 1452f, -158f)))));
    return global1.a;
}

fn func_1() -> Struct_2 {
    global1 = Struct_2(func_4(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-24455i, -14388i, u_input.b.x, 10488i), firstTrailingBit(vec4<i32>(u_input.b.x, u_input.b.x, 27470i, 14896i))), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, 1i, u_input.b.x, u_input.b.x), -vec4<i32>(-62213i, 10453i, u_input.b.x, -12654i))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-830f)) * _wgslsmith_f_op_f32(func_2(u_input.b.yy))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1413f + -987f)), _wgslsmith_f_op_f32(-2043f * _wgslsmith_f_op_f32(-398f - 636f)), 600f)));
    let var_0 = !all(select(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true), true));
    let var_1 = select(true, any(select(vec3<bool>(any(vec4<bool>(var_0, true, var_0, var_0)), true, false), select(vec3<bool>(true, true, true), vec3<bool>(var_0, false, true), all(vec4<bool>(var_0, false, false, var_0))), select(!vec3<bool>(false, true, var_0), !vec3<bool>(var_0, false, var_0), select(vec3<bool>(true, true, var_0), vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, true, var_0))))), any(vec3<bool>(var_0, !var_0, !var_0)));
    global0 = array<u32, 23>();
    return Struct_2(global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 23>();
    global1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-950f);
}

