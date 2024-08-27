struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: i32,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_3 = Struct_3(Struct_2(true, 494f), vec3<bool>(false, false, true));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_3) -> bool {
    var var_0 = u_input.c;
    var_0 = -(~vec4<i32>(~(-2147483647i), 11662i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.e.wx, vec2<i32>(0i, -1i)), abs(vec2<i32>(u_input.e.x, 43144i))), u_input.e.x));
    var_0 = u_input.e;
    let var_1 = select(_wgslsmith_mod_vec3_u32(vec3<u32>(50676u, _wgslsmith_mult_u32(u_input.a, 5971u), 1u), _wgslsmith_div_vec3_u32(~vec3<u32>(0u, u_input.b.x, 101314u), min(vec3<u32>(4294967295u, u_input.b.x, u_input.b.x), vec3<u32>(1u, 1u, u_input.b.x)))) ^ _wgslsmith_add_vec3_u32(~(vec3<u32>(u_input.a, 4294967295u, u_input.b.x) ^ vec3<u32>(93159u, 1u, u_input.b.x)), ~(vec3<u32>(u_input.b.x, 1u, u_input.a) & vec3<u32>(1u, 0u, u_input.a))), _wgslsmith_sub_vec3_u32(abs(~vec3<u32>(u_input.a, 9044u, 1126u)), vec3<u32>(reverseBits(u_input.a), firstLeadingBit(u_input.a), u_input.b.x)) << (_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.a, 23567u), vec3<u32>(u_input.b.x, u_input.b.x, 26452u)), ~vec3<u32>(u_input.a, u_input.a, u_input.a)), ~firstLeadingBit(vec3<u32>(u_input.a, u_input.b.x, u_input.b.x))) % vec3<u32>(32u)), global1.b.x);
    var_0 = u_input.c;
    return false;
}

fn func_2() -> vec4<f32> {
    var var_0 = global1.a.b;
    global1 = Struct_3(Struct_2(func_3(Struct_3(global1.a, global1.b)), 584f), select(!(!vec3<bool>(global1.a.a, global1.a.a, global1.a.a)), !global1.b, true));
    var var_1 = _wgslsmith_mult_vec2_i32(u_input.c.xw, (min(_wgslsmith_mod_vec2_i32(u_input.e.xz, u_input.c.yy), -vec2<i32>(u_input.e.x, u_input.e.x)) | u_input.c.zy) >> ((u_input.b & ~(~vec2<u32>(u_input.a, u_input.a))) % vec2<u32>(32u)));
    var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(abs(-var_1.x), -(i32(-1i) * -49746i) | ~var_1.x), max(firstTrailingBit(u_input.e.xw), vec2<i32>(~(-1i), u_input.c.x)));
    global1 = Struct_3(Struct_2(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.a.b + global1.a.b))))), select(vec3<bool>(all(select(vec4<bool>(global1.b.x, global1.b.x, global1.b.x, global1.a.a), vec4<bool>(global1.b.x, true, global1.a.a, global1.b.x), vec4<bool>(global1.b.x, false, true, global1.b.x))), true, all(!global1.b)), !global1.b, !(!select(vec3<bool>(true, global1.b.x, true), global1.b, global1.b))));
    return vec4<f32>(_wgslsmith_f_op_f32(ceil(-622f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1573f + global1.a.b), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-321f, _wgslsmith_f_op_f32(-global1.a.b)) - _wgslsmith_f_op_f32(-796f + -272f))), -330f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.b) + -329f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.a.b)))))));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: vec4<f32>, arg_3: Struct_3) -> Struct_3 {
    global1 = arg_3;
    var var_0 = Struct_3(global1.a, select(global1.b, !select(!global1.b, !arg_3.b, global1.b), true));
    var var_1 = u_input.a ^ max(76268u >> (_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(9548u, 55722u, 86605u), vec3<u32>(arg_1, 4294967295u, 21671u)), ~1u) % 32u), firstLeadingBit(arg_1));
    var var_2 = 812f;
    var_1 = arg_1;
    return arg_3;
}

fn func_1() -> Struct_2 {
    var var_0 = u_input.e.zx;
    let var_1 = vec3<bool>(~21507u != ~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 1u), vec2<u32>(85086u, 1u)), true, global1.b.x);
    var var_2 = func_4(true, u_input.b.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1797f, global1.a.b, global1.a.b, -407f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1906f, global1.a.b, 1000f, global1.a.b)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.b, global1.a.b, global1.a.b, 1653f))))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_2())))), Struct_3(global1.a, select(global1.b, select(!global1.b, var_1, global1.b), !(!var_1))));
    var var_3 = !select(vec4<bool>(true, !var_2.b.x, all(vec4<bool>(false, var_1.x, true, var_1.x)), !(!var_1.x)), !select(vec4<bool>(var_1.x, var_2.b.x, true, global1.a.a), select(vec4<bool>(global1.a.a, false, var_2.a.a, true), vec4<bool>(var_1.x, var_2.a.a, true, false), vec4<bool>(false, var_2.b.x, var_2.a.a, var_1.x)), !var_1.x), select(any(!global1.b.yz), select(true, true, false), !var_2.a.a));
    let var_4 = Struct_3(Struct_2(select(true, true, (u_input.b.x & 28432u) >= (22271u | u_input.b.x)), 1f), var_2.b);
    return func_4(all(vec2<bool>(var_3.x, global1.b.x)), 4294967295u, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a.b, var_2.a.b, global1.a.b, -1000f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(922f, global1.a.b, 654f, global1.a.b) * vec4<f32>(var_2.a.b, global1.a.b, global1.a.b, -1952f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2755f, global1.a.b, -329f, var_2.a.b)), !vec4<bool>(var_3.x, var_4.a.a, false, var_3.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.b, 270f, -500f, -938f) * vec4<f32>(1288f, var_4.a.b, var_2.a.b, -545f)))))), var_4).a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(func_1(), select(func_4(all(vec4<bool>(global1.b.x, global1.b.x, false, false)), ~(~u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-218f, 1824f, global1.a.b, 886f), vec4<f32>(1000f, global1.a.b, global1.a.b, -104f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.b, -203f, global1.a.b, global1.a.b) - vec4<f32>(-577f, global1.a.b, global1.a.b, -839f))), func_4(any(global1.b.xz), _wgslsmith_mult_u32(0u, 81458u), vec4<f32>(global1.a.b, -1796f, 1680f, -775f), Struct_3(Struct_2(false, global1.a.b), global1.b))).b, !func_4(any(global1.b.zz), _wgslsmith_dot_vec2_u32(u_input.b, u_input.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(2276f, -293f, 1930f, global1.a.b) - vec4<f32>(-519f, global1.a.b, 588f, -208f)), func_4(global1.b.x, u_input.a, vec4<f32>(-593f, global1.a.b, 1822f, -1038f), Struct_3(global1.a, vec3<bool>(false, false, global1.b.x)))).b, true & (true || global1.a.a)));
    var var_0 = vec3<u32>(51656u, _wgslsmith_clamp_u32(u_input.a, u_input.b.x, ~(~u_input.a)), select(_wgslsmith_clamp_u32(~1u, 0u, ~4294967295u), u_input.b.x, false));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(vec2<u32>(u_input.b.x, abs(var_0.x))), select(vec4<i32>(_wgslsmith_mod_i32(-u_input.e.x, u_input.e.x & u_input.d), u_input.c.x, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-94039i, u_input.d), u_input.c.xy), abs(-2147483647i)), _wgslsmith_div_vec4_i32(min(u_input.e << (vec4<u32>(u_input.a, var_0.x, var_0.x, var_0.x) % vec4<u32>(32u)), u_input.e | vec4<i32>(1i, u_input.d, -6929i, 6142i)), u_input.e), false), -2173f);
}

