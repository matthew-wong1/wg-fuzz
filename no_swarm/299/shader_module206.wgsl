struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec2<u32>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: Struct_3 = Struct_3(vec3<f32>(518f, 2467f, -113f), vec2<i32>(-1i, -25049i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(9894u, 27u)];
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -842f) + -575f) - global1.a.x);
    let var_2 = select(vec4<bool>(var_0.b, all(select(vec4<bool>(var_0.b, true, true, var_0.d), vec4<bool>(var_0.b, var_0.b, true, true), var_0.d)) & true, var_0.b, select(var_0.b, var_0.d, var_1 >= global1.a.x)), select(select(!(!vec4<bool>(var_0.b, var_0.d, false, var_0.d)), vec4<bool>(false, !var_0.b, all(vec4<bool>(true, false, false, true)), true), vec4<bool>(var_0.d, true & var_0.d, var_0.d & var_0.b, true)), !vec4<bool>(var_0.b && var_0.d, true, any(vec2<bool>(false, false)), any(vec3<bool>(true, false, var_0.d))), var_0.b), !select(select(select(vec4<bool>(var_0.d, false, var_0.d, var_0.d), vec4<bool>(true, true, true, var_0.b), vec4<bool>(var_0.b, var_0.d, var_0.b, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, var_0.b, var_0.b), var_0.b), any(vec3<bool>(true, false, false))), vec4<bool>(false || var_0.d, var_0.d | var_0.b, !var_0.d, true), !select(true, false, false)));
    let var_3 = var_0.e;
    var var_4 = Struct_1(~(-(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, 60996i, 2147483647i), vec3<i32>(715i, -1i, 43i)) & (vec3<i32>(var_0.a.x, 12925i, -27035i) & u_input.b.wxw))), var_2.x, vec2<u32>(116269u, ~var_0.c.x), select(any(!var_2.xz), any(select(select(var_2.zxx, vec3<bool>(var_2.x, true, var_0.b), vec3<bool>(true, true, true)), select(vec3<bool>(var_0.b, true, var_2.x), vec3<bool>(false, var_0.d, true), false), vec3<bool>(var_2.x, var_0.d, var_0.d))), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -30338i), _wgslsmith_mult_vec2_i32(vec2<i32>(global1.b.x, global1.b.x), vec2<i32>(2147483647i, var_0.a.x))) != (-var_0.a.x | 1i)), vec3<f32>(-1006f, _wgslsmith_f_op_f32(var_3.x - global1.a.x), 406f));
    return _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_sub_u32(_wgslsmith_add_u32(var_4.c.x, _wgslsmith_mod_u32(u_input.a.x, 0u)), ~_wgslsmith_div_u32(71119u, var_0.c.x))), ~_wgslsmith_add_u32(countOneBits(u_input.a.x | 10085u), 1u << (_wgslsmith_mult_u32(4294967295u, var_4.c.x) % 32u)), ~5854u);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(global1.a.x)), 1771f, _wgslsmith_f_op_f32(global1.a.x * _wgslsmith_f_op_f32(ceil(global1.a.x))), global1.a.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1397f * -351f)), 591f, 363f, 1384f)));
    global0 = array<Struct_1, 27>();
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(827f, _wgslsmith_f_op_f32(ceil(1440f)), 659f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2249f, -1008f, -510f) * vec3<f32>(var_0.x, 931f, -985f)))))), abs(~_wgslsmith_sub_vec2_i32(global1.b, _wgslsmith_clamp_vec2_i32(global1.b, vec2<i32>(11125i, global1.b.x), u_input.b.xw))));
    global0 = array<Struct_1, 27>();
    var var_2 = Struct_2(1048f);
    return Struct_1(vec3<i32>(-13198i, -(~(-global1.b.x)), -19284i), _wgslsmith_dot_vec2_u32(u_input.a.yz, ~vec2<u32>(8206u, u_input.a.x)) == countOneBits(~_wgslsmith_add_u32(1u, u_input.a.x)), vec2<u32>(u_input.a.x, func_3()), !(!any(vec4<bool>(false, true, true, false)) || true), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.a * vec3<f32>(var_2.a, 688f, global1.a.x))))))));
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_3) -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(abs(arg_3.a.x)));
    var var_1 = arg_3.a.yx;
    var var_2 = all(select(select(select(select(vec3<bool>(false, true, true), vec3<bool>(arg_2.b, arg_2.b, false), vec3<bool>(false, true, false)), vec3<bool>(true, arg_2.b, false), arg_2.b), select(!vec3<bool>(arg_2.b, true, true), vec3<bool>(arg_2.d, false, true), vec3<bool>(true, false, true)), !all(vec4<bool>(arg_2.d, arg_2.d, arg_2.b, arg_2.b))), !select(vec3<bool>(true, true, true), !vec3<bool>(arg_2.b, arg_2.d, false), !vec3<bool>(true, arg_2.b, true)), arg_2.d));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -150f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.x) + _wgslsmith_f_op_f32(min(1407f, 886f)))))), -1000f);
    let var_3 = 19909u;
    return arg_2.b;
}

fn func_1() -> vec3<i32> {
    var var_0 = func_4(_wgslsmith_f_op_f32(-global1.a.x), u_input.a.xz, func_2(), Struct_3(_wgslsmith_div_vec3_f32(global1.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -106f, global1.a.x))), reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(global1.b.x, global1.b.x), vec2<i32>(u_input.b.x, u_input.b.x)) ^ global1.b)));
    var var_1 = ~select(vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, 4294967295u), u_input.a.x, ~u_input.a.x), u_input.a.x), u_input.a.zx, !(!select(vec2<bool>(false, false), vec2<bool>(true, false), true)));
    var_1 = u_input.a.xz;
    var_0 = !(func_2().d || !any(vec3<bool>(false, true, true)));
    let var_2 = Struct_2(653f);
    return vec3<i32>((global1.b.x & -countOneBits(-1i)) | abs(_wgslsmith_sub_i32(~10363i, _wgslsmith_dot_vec3_i32(u_input.b.wxy, vec3<i32>(12188i, -29551i, -33109i)))), 80595i, 10152i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_1(), true || select(true, all(vec3<bool>(true, true, true)), !any(vec3<bool>(false, true, true))), ~(~vec2<u32>(25966u, ~69782u)), any(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), true), func_2().b)), global1.a);
    global1 = Struct_3(var_0.e, ~countOneBits(-u_input.b.xy) >> (vec2<u32>(~(~u_input.a.x), 1u) % vec2<u32>(32u)));
    global0 = array<Struct_1, 27>();
    let var_1 = !vec4<bool>(!(all(vec3<bool>(var_0.d, false, var_0.d)) | var_0.b), abs(~214u) < ~u_input.a.x, all(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, var_0.d, var_0.d), vec4<bool>(false, var_0.b, var_0.d, true)), !vec4<bool>(false, false, true, var_0.b), u_input.a.x > 1u)), func_2().e.x < global1.a.x);
    global1 = Struct_3(var_0.e, ~vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.a.x, u_input.b.x, global1.b.x, 2147483647i), u_input.b >> (vec4<u32>(0u, u_input.a.x, u_input.a.x, var_0.c.x) % vec4<u32>(32u))), u_input.b.x));
    var var_2 = select(abs(-global1.b.x), i32(-1i) * -1281i, _wgslsmith_clamp_u32(func_3(), 0u, u_input.a.x) != _wgslsmith_dot_vec4_u32(min(select(vec4<u32>(u_input.a.x, 135876u, 25787u, u_input.a.x), vec4<u32>(62422u, u_input.a.x, 4294967295u, 4294967295u), true), ~vec4<u32>(55963u, 12534u, 62750u, u_input.a.x)), ~(~vec4<u32>(26039u, 1u, var_0.c.x, var_0.c.x))));
    global1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(func_2().e.x * _wgslsmith_f_op_f32(-618f + -711f)), _wgslsmith_f_op_f32(-545f * _wgslsmith_f_op_f32(f32(-1f) * -773f)), _wgslsmith_f_op_f32(max(var_0.e.x, global1.a.x))), select(_wgslsmith_mult_vec2_i32(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(11204i, u_input.b.x), u_input.b.yy)), _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(var_0.a.zy, u_input.b.wy, vec2<i32>(u_input.b.x, -3293i)), global1.b)), min(vec2<i32>(u_input.b.x, 1i), vec2<i32>(global1.b.x, -8450i)), all(select(select(vec3<bool>(true, false, var_0.b), var_1.xxx, var_1.x), var_1.yyw, !vec3<bool>(var_0.d, var_1.x, true)))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-397f - -785f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.a.x, -413f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -107f), _wgslsmith_f_op_f32(round(var_0.e.x))))), _wgslsmith_mult_u32(20931u, 49623u), _wgslsmith_sub_i32(max(~(-5750i), func_2().a.x) & -_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), -2147483647i), u_input.a, vec4<f32>(global1.a.x, 1257f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_0.e.x, _wgslsmith_f_op_f32(698f - 2440f), true)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -952f)))));
}

