struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 20>;

var<private> global2: bool = true;

var<private> global3: vec3<u32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> vec3<i32> {
    global0 = 241f;
    var var_0 = !vec4<bool>(69789i < _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 5224i, 2147483647i, 1i), -vec4<i32>(-1i, u_input.a, u_input.a, u_input.a)), true, true, true);
    global3 = ~arg_0.ywy;
    let var_1 = Struct_3(abs(arg_0.xw), ~global3.x);
    var var_2 = -321f;
    return vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(~u_input.d, vec4<i32>(0i, 2147483647i, arg_1.a.x, u_input.d.x)), arg_1.a.x), u_input.d.xy), countOneBits(u_input.a), -(min(24869i, arg_1.a.x) ^ 2147483647i) & _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.d.x & u_input.d.x, -arg_1.a.x), _wgslsmith_div_i32(~11097i, i32(-1i) * -3726i), firstTrailingBit(u_input.d.x | arg_1.a.x)));
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> u32 {
    let var_0 = any(!vec2<bool>(false, arg_0.b));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -229f), false, Struct_1(func_3(abs(~vec4<u32>(global3.x, 0u, 671u, 0u)), arg_0.c)));
    let var_2 = !select(vec4<bool>(true, all(!vec3<bool>(arg_0.b, var_0, var_0)), !arg_0.b, select(arg_0.b, false, !arg_0.b)), !(!select(vec4<bool>(false, var_0, true, var_1.b), vec4<bool>(true, arg_0.b, var_0, var_1.b), arg_0.b)), select(vec4<bool>(var_1.a == var_1.a, any(vec4<bool>(arg_0.b, true, arg_0.b, var_0)), false & var_1.b, var_0), select(select(vec4<bool>(var_0, var_0, true, var_1.b), vec4<bool>(false, true, false, arg_0.b), arg_0.b), !vec4<bool>(false, arg_0.b, var_1.b, var_1.b), true), select(select(var_1.b, true, var_0), !var_0, var_0)));
    var var_3 = vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1974f))), 997f);
    var var_4 = _wgslsmith_div_f32(214f, -488f);
    return 1u;
}

fn func_1() -> Struct_2 {
    global1 = array<Struct_1, 20>();
    let var_0 = max(vec2<u32>(~_wgslsmith_sub_u32(~13205u, func_2(Struct_2(109f, false, Struct_1(u_input.d.xyy)), u_input.d.x)), 52104u), _wgslsmith_add_vec2_u32(abs(vec2<u32>(_wgslsmith_add_u32(56971u, global3.x), ~global3.x)), ~(~u_input.b.yx)));
    return Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -578f), all(vec3<bool>(true, true, true)), Struct_1(-select(vec3<i32>(u_input.d.x, 0i, u_input.a) & u_input.d.wwx, vec3<i32>(u_input.d.x, u_input.d.x, -16009i), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_u32(abs(~(~abs(1u))), 4468u);
    var var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_1.a, -1127f))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-428f, func_1().a, _wgslsmith_f_op_f32(var_1.a * 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, var_1.a, var_1.a)), vec3<bool>(true, !var_1.b, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, 207f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(765f, 480f))))), _wgslsmith_div_vec4_u32(vec4<u32>(~13376u, countOneBits(~38387u), _wgslsmith_mult_u32(global3.x << (u_input.b.x % 32u), _wgslsmith_clamp_u32(var_0, 1u, u_input.c.x)), u_input.b.x), ~reverseBits(~vec4<u32>(0u, global3.x, var_0, 44854u))), -(vec2<i32>(0i, _wgslsmith_dot_vec2_i32(var_1.c.a.zx, vec2<i32>(var_1.c.a.x, var_1.c.a.x))) & max(countOneBits(vec2<i32>(48592i, u_input.d.x)), var_1.c.a.yy)));
}

