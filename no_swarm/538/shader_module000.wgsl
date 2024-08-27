struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
    d: f32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: vec3<u32>) -> Struct_2 {
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    var var_0 = vec3<u32>(1u, 37373u, 0u);
    let var_1 = arg_0;
    let var_2 = !(!(!(!(arg_0.d != -1074f))));
    return var_1;
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    var var_0 = vec3<f32>(arg_2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.d)))), _wgslsmith_f_op_f32(-432f * _wgslsmith_f_op_f32(-arg_3.d)));
    var var_1 = countOneBits(arg_1.e.x);
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(arg_1.d * 455f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_2.d, _wgslsmith_f_op_f32(ceil(arg_3.d))), arg_1.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-557f + _wgslsmith_f_op_f32(arg_1.d + 372f)) + func_2(Struct_2(~arg_1.b.a.zy, func_2(Struct_2(vec2<u32>(40583u, arg_3.b.a.x), Struct_1(vec4<u32>(arg_2.b.a.x, arg_2.a.x, arg_2.c, arg_0)), arg_2.c, -406f, arg_1.e), u_input.a.x, vec3<u32>(44918u, 1u, arg_2.b.a.x)).b, _wgslsmith_dot_vec3_u32(arg_1.b.a.xyz, vec3<u32>(arg_1.b.a.x, 83981u, 25472u)), arg_1.d, select(vec2<i32>(23092i, u_input.a.x), arg_2.e, vec2<bool>(false, true))), firstTrailingBit(_wgslsmith_div_i32(-2147483647i, -2147483647i)), abs(vec3<u32>(arg_3.a.x, 49442u, arg_3.a.x))).d));
    var var_2 = func_2(arg_2, arg_1.e.x, ~countOneBits(arg_3.b.a.zwz));
    var var_3 = var_0.zx;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.d) + 212f);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_1.a.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(arg_1.c, arg_1.b.a.x), 4294967295u, arg_1.b.a.x, _wgslsmith_div_u32(0u, arg_1.b.a.x)), vec4<u32>(18454u, 4294967295u, arg_1.a.x, arg_1.b.a.x) | max(vec4<u32>(4294967295u, arg_1.a.x, arg_1.a.x, 4294967295u), vec4<u32>(arg_1.b.a.x, 4294967295u, 4294967295u, arg_1.c))), ~_wgslsmith_dot_vec2_u32(~arg_1.a, vec2<u32>(arg_1.a.x, 50383u) & vec2<u32>(26773u, arg_1.a.x)))), 1u)];
    return func_2(Struct_2(vec2<u32>(~abs(7210u), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(arg_1.b.a.zwy, arg_1.b.a.xwx), ~arg_1.b.a.xyx)), global0[_wgslsmith_index_u32(96116u, 1u)], 54896u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1476f), 885f)), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, u_input.a.x), abs(func_2(arg_1, arg_1.e.x, vec3<u32>(4294967295u, 36851u, arg_1.b.a.x)).e), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.e.x, arg_1.e.x), reverseBits(arg_1.e)))), -2147483647i, func_2(func_2(Struct_2(var_0.a.xx, func_2(Struct_2(vec2<u32>(var_0.a.x, var_0.a.x), Struct_1(var_0.a), var_0.a.x, -1154f, vec2<i32>(arg_1.e.x, -1i)), arg_1.e.x, var_0.a.zyz).b, ~var_0.a.x, -1868f, vec2<i32>(u_input.a.x, -1i)), select(_wgslsmith_div_i32(0i, 7197i), -6436i, select(true, true, true)), arg_1.b.a.zwz), select(_wgslsmith_mult_i32(u_input.a.x, -12247i), ~u_input.a.x, (arg_1.c <= var_0.a.x) || all(vec2<bool>(false, false))), vec3<u32>(_wgslsmith_dot_vec2_u32(var_0.a.zy, ~vec2<u32>(var_0.a.x, 0u)), min(30562u, min(1u, var_0.a.x)), 4294967295u | _wgslsmith_div_u32(0u, arg_1.a.x))).b.a.yyy).b;
}

fn func_1(arg_0: Struct_2) -> i32 {
    let var_0 = _wgslsmith_dot_vec2_u32(~min(arg_0.a, _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.b.a.x, 1u), vec2<u32>(73322u, 9402u))), ~(arg_0.b.a.yx & _wgslsmith_div_vec2_u32(select(arg_0.a, arg_0.b.a.wz, vec2<bool>(false, false)), firstTrailingBit(vec2<u32>(arg_0.c, 49636u)))));
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    var var_1 = Struct_1(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(arg_0.b.a, _wgslsmith_div_vec4_u32(arg_0.b.a, arg_0.b.a)), vec4<u32>(28123u, ~25935u, _wgslsmith_dot_vec4_u32(arg_0.b.a, arg_0.b.a), 1u)), arg_0.b.a));
    var_1 = func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(216f + arg_0.d), _wgslsmith_f_op_f32(127f - arg_0.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_div_u32(var_1.a.x, arg_0.a.x), Struct_2(arg_0.a, Struct_1(vec4<u32>(arg_0.a.x, arg_0.a.x, var_0, 36725u)), var_1.a.x, arg_0.d, vec2<i32>(89271i, 43925i)), func_2(Struct_2(vec2<u32>(arg_0.b.a.x, 4294967295u), arg_0.b, var_0, arg_0.d, arg_0.e), arg_0.e.x, vec3<u32>(0u, 1u, arg_0.c)), func_2(Struct_2(var_1.a.yy, Struct_1(vec4<u32>(1u, var_1.a.x, 51449u, 0u)), 4294967295u, -1000f, arg_0.e), -30906i, vec3<u32>(arg_0.b.a.x, arg_0.c, arg_0.c)))) * arg_0.d), _wgslsmith_f_op_f32(-arg_0.d)), arg_0);
    return arg_0.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    var var_0 = all(vec2<bool>(!select(true, true, any(vec3<bool>(true, true, true))), true));
    let var_1 = func_1(Struct_2(~vec2<u32>(abs(4294967295u), 1u), global0[_wgslsmith_index_u32(6829u, 1u)], _wgslsmith_mod_u32(~select(1u, 27372u, true), 0u), -1689f, vec2<i32>(u_input.a.x, 1i)));
    let var_2 = func_2(func_2(func_2(func_2(Struct_2(vec2<u32>(0u, 52838u), Struct_1(vec4<u32>(1u, 0u, 1425u, 92978u)), 26360u, 162f, u_input.a.xx), -u_input.a.x, ~vec3<u32>(0u, 0u, 0u)), u_input.a.x, vec3<u32>(1u, 1u, _wgslsmith_mult_u32(3693u, 18241u))), -2147483647i, _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 4294967295u, ~4294967295u), abs(~vec3<u32>(67268u, 43527u, 15950u)), vec3<u32>(1u, 1u, 1u))), -2147483647i, ~countOneBits(_wgslsmith_mod_vec3_u32(~vec3<u32>(10550u, 1u, 21979u), vec3<u32>(1u, 1u, 1u))));
    global0 = array<Struct_1, 1>();
    var var_3 = select(!vec2<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true))), ~var_2.b.a.x >= 10956u), !vec2<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))), true), !select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, false)), var_2.b.a.x >= 11335u), any(vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.d, var_2.d, var_2.d), vec3<f32>(var_2.d, 574f, var_2.d))))));
}

