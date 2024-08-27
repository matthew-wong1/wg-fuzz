struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 26>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> i32 {
    global0 = array<vec4<u32>, 26>();
    global0 = array<vec4<u32>, 26>();
    global0 = array<vec4<u32>, 26>();
    global0 = array<vec4<u32>, 26>();
    var var_0 = vec3<i32>(0i, -1i, _wgslsmith_mult_i32(-(~0i), -1i));
    return _wgslsmith_div_i32(firstTrailingBit(-_wgslsmith_dot_vec2_i32(var_0.xx, var_0.zz) << (1u % 32u)), -1i);
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    global0 = array<vec4<u32>, 26>();
    var var_0 = ~u_input.b;
    var var_1 = vec2<i32>(abs(-1i), -arg_0);
    let var_2 = arg_1.b;
    var var_3 = min(-vec2<i32>(_wgslsmith_mod_i32(504i, var_1.x), arg_0), abs(vec2<i32>(2147483647i, arg_0))) | select(firstTrailingBit(abs(vec2<i32>(var_1.x, var_1.x)) >> ((u_input.a.yy << (vec2<u32>(var_2.b, 0u) % vec2<u32>(32u))) % vec2<u32>(32u))), max(vec2<i32>(22158i, _wgslsmith_mult_i32(arg_0, 0i)), -vec2<i32>(arg_0, arg_0)), all(vec2<bool>(true, true)));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, var_2.a.x, -180f, -1430f) - var_2.a), _wgslsmith_div_vec4_f32(var_2.a, var_2.a)))), ~(~_wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, u_input.b), arg_1.b.b)));
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = vec4<u32>(0u, arg_0.b, ~1u, ~arg_0.b);
    var var_1 = _wgslsmith_f_op_f32(-939f + arg_0.a.x);
    var var_2 = min(u_input.a, countOneBits(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.b, 1u, arg_0.b, 2947u), vec4<u32>(u_input.b, u_input.b, 0u, arg_0.b), global0[_wgslsmith_index_u32(u_input.b, 26u)]), vec4<u32>(var_0.x, arg_0.b, 1u, 4294967295u) ^ u_input.a)) >> (_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, 67454u), max(global0[_wgslsmith_index_u32(var_0.x, 26u)], vec4<u32>(0u, var_0.x, 1u, 1u)), vec4<u32>(36402u, 52407u, arg_0.b, 1u) ^ vec4<u32>(30075u, 57322u, arg_0.b, 32752u)), ~countOneBits(vec4<u32>(47602u, var_0.x, arg_0.b, u_input.b))) % vec4<u32>(32u)));
    let var_3 = Struct_2(874f, func_3(func_2(), Struct_2(arg_0.a.x, Struct_1(arg_0.a, ~var_2.x))));
    global0 = array<vec4<u32>, 26>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-472f)) * _wgslsmith_f_op_f32(f32(-1f) * -1398f)) * -1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-258f, 328f, -395f, 1081f), vec4<f32>(401f, -2081f, 876f, -276f), true))), u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_i32(-70388i, abs(-4028i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -913f)), vec2<f32>(var_0, var_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-661f, -2157f) + vec2<f32>(var_0, -2398f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-312f, var_0)), true))), countOneBits(select(vec3<i32>(1i, 1i, 1i), vec3<i32>(-1i, min(20181i, -25794i), 1i), vec3<bool>(any(vec4<bool>(true, true, false, false)), true, true))));
}

