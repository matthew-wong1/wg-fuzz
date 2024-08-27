struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

var<private> global1: Struct_1 = Struct_1(4294967295u);

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(26623u), Struct_1(0u), Struct_1(4294967295u));

var<private> global3: vec3<u32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_1, 20>();
    return Struct_1(countOneBits(77453u & (22478u & global3.x)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = func_2();
    let var_1 = Struct_1(15426u);
    let var_2 = -(vec2<i32>(select(_wgslsmith_sub_i32(u_input.a.x, 24169i), _wgslsmith_div_i32(-26451i, arg_1.x), all(vec4<bool>(true, true, false, true))), -5792i) ^ abs(~(-vec2<i32>(arg_1.x, arg_1.x))));
    let var_3 = -u_input.a;
    var_0 = func_2();
    return func_2();
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec3<f32>) -> Struct_1 {
    global2 = array<Struct_1, 3>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1293f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x * arg_3.x)))) * arg_2.x) >= arg_3.x;
    var var_1 = func_3(func_3(func_2(), -(~(vec3<i32>(arg_0.x, arg_0.x, 0i) | arg_0.zzx))), ~(-vec3<i32>(-1i, u_input.a.x, u_input.a.x)) & arg_0.yxx);
    let var_2 = arg_2.x;
    var_1 = Struct_1(~_wgslsmith_mod_u32(28599u, global1.a >> (2379u % 32u)));
    return global0[_wgslsmith_index_u32(1u, 20u)];
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(-522f, _wgslsmith_f_op_f32(-1868f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), -1i < _wgslsmith_dot_vec4_i32(u_input.a, -u_input.a))), -1077f, arg_0.x, 416f);
    global0 = array<Struct_1, 20>();
    let var_1 = Struct_1(84338u);
    global2 = array<Struct_1, 3>();
    let var_2 = ~global3.x;
    return arg_2;
}

fn func_6(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = countOneBits(-2147483647i);
    let var_1 = vec2<bool>(arg_1.x, arg_1.x);
    var var_2 = vec2<i32>(_wgslsmith_sub_i32(0i, u_input.a.x), -_wgslsmith_div_i32(-_wgslsmith_add_i32(-5589i, u_input.a.x), ~1i));
    let var_3 = global1.a;
    var var_4 = any(vec4<bool>(var_1.x, true, var_2.x > -17668i, 61628u == ~global3.x));
    return Struct_1(min(countOneBits(reverseBits(global3.x)), _wgslsmith_sub_u32(~31856u >> (1u % 32u), _wgslsmith_sub_u32(4294967295u, func_2().a))));
}

fn func_1() -> bool {
    let var_0 = Struct_1(29798u);
    var var_1 = func_6(func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(241f, -850f, -542f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -999f, -1000f), vec3<f32>(1843f, 885f, -275f), vec3<bool>(false, false, false))), vec3<f32>(1133f, -580f, -243f))), func_4(-_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, -2147483647i, u_input.a.x), u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x)), func_3(func_2(), countOneBits(u_input.a.yyz)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-459f, -1000f, -1004f, 871f) * vec4<f32>(736f, 215f, 1256f, 747f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1289f, -552f, -3216f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1907f, -1371f, 1686f), vec3<f32>(-1206f, 422f, -947f))))), Struct_1(func_4(vec4<i32>(50318i, u_input.a.x, u_input.a.x, 62383i), Struct_1(global1.a), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(324f, 869f, 259f, 1448f), vec4<f32>(1193f, -1143f, -607f, -1493f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2198f, -1500f, -1438f))).a)), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true)), vec2<bool>(!all(vec4<bool>(false, false, true, false)), true), global1.a == 1u));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-427f)), _wgslsmith_div_f32(-201f, -1634f), _wgslsmith_f_op_f32(f32(-1f) * -686f)) - vec3<f32>(1f, 1f, 1f))));
    global3 = vec3<u32>(global3.x, countOneBits(~0u), _wgslsmith_clamp_u32(select(func_3(Struct_1(var_0.a), u_input.a.wyy).a, func_2().a, all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)))), ~var_0.a, ~func_4(vec4<i32>(17808i, u_input.a.x, u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(~0u, 20u)], _wgslsmith_div_vec4_f32(vec4<f32>(127f, var_2.x, -694f, var_2.x), vec4<f32>(-312f, 1000f, var_2.x, var_2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -370f, var_2.x))).a));
    var var_3 = 4294967295u;
    return all(vec4<bool>(true, true, true, any(vec4<bool>(true, true, true, true)) | true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    global0 = array<Struct_1, 20>();
    var var_1 = _wgslsmith_add_i32(~_wgslsmith_clamp_i32(u_input.a.x, -1i, ~(~(-2300i))), _wgslsmith_clamp_i32(u_input.a.x, -21392i, ~(-8220i)));
    let var_2 = Struct_1(_wgslsmith_add_u32(_wgslsmith_mult_u32(global3.x & global3.x, abs(1u)), abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 37062u, 68294u, global3.x), vec4<u32>(49841u, global1.a, global3.x, global3.x)))));
    let var_3 = !vec4<bool>(all(vec2<bool>(true, true)), true, all(vec2<bool>(true, true)), func_1());
    var var_4 = Struct_1(_wgslsmith_add_u32(0u, 74844u));
    let x = u_input.a;
    s_output = StorageBuffer(0u, ~((_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a, 0u, global1.a, 17800u), vec4<u32>(2881u, 2948u, 0u, global1.a)) & ~1u) ^ ~var_4.a));
}

