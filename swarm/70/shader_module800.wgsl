struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
    c: f32,
    d: Struct_3,
    e: Struct_3,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec4<i32>, arg_3: f32) -> vec3<u32> {
    let var_0 = ~u_input.e;
    let var_1 = 0u;
    var var_2 = countOneBits(~abs(reverseBits(vec2<u32>(0u, var_0))) ^ _wgslsmith_add_vec2_u32(~vec2<u32>(var_1, 0u), select(_wgslsmith_mult_vec2_u32(vec2<u32>(31426u, 0u), vec2<u32>(var_0, arg_0.a)), vec2<u32>(arg_0.a, 14373u), vec2<bool>(true, true))));
    var var_3 = arg_1.b.x && !arg_1.b.x;
    var_2 = ~vec2<u32>(1u, select(arg_0.a, ~select(1u, 1u, arg_1.b.x), any(!global0.xw)));
    return reverseBits(min(vec3<u32>(1u, ~var_2.x, ~u_input.e), vec3<u32>(_wgslsmith_div_u32(u_input.e, arg_1.a), var_0, abs(42141u))) >> (~_wgslsmith_add_vec3_u32(vec3<u32>(var_0, 88795u, arg_0.a), ~vec3<u32>(var_0, 15438u, 1u)) % vec3<u32>(32u)));
}

fn func_2(arg_0: Struct_5, arg_1: vec2<i32>) -> i32 {
    let var_0 = -2147483647i;
    let var_1 = Struct_5(vec3<bool>(arg_0.a.x, true, !global0.x));
    var var_2 = ~reverseBits(select(func_3(Struct_3(u_input.e), Struct_4(0u, vec4<bool>(var_1.a.x, false, var_1.a.x, false), 1438f, Struct_3(47720u), Struct_3(4294967295u)), vec4<i32>(var_0, -2147483647i, 2147483647i, var_0), -415f), reverseBits(vec3<u32>(0u, 41012u, u_input.e)), vec3<bool>(var_1.a.x && global0.x, all(vec3<bool>(arg_0.a.x, true, global0.x)), true)));
    let var_3 = arg_0;
    let var_4 = vec2<u32>(u_input.e, ~(~var_2.x));
    return _wgslsmith_div_i32(-39868i, 7111i);
}

fn func_1() -> u32 {
    var var_0 = vec2<i32>(-_wgslsmith_mult_i32(func_2(Struct_5(vec3<bool>(false, global0.x, true)), vec2<i32>(u_input.c, 2147483647i)), i32(-1i) * -12364i), _wgslsmith_clamp_i32(i32(-1i) * -29870i, _wgslsmith_dot_vec2_i32(~vec2<i32>(11010i, u_input.b.x), reverseBits(vec2<i32>(u_input.a.x, 2147483647i))), u_input.b.x)) >> (min(vec2<u32>(_wgslsmith_div_u32(abs(55676u), 4294967295u), _wgslsmith_div_u32(~0u, u_input.e ^ u_input.e)), abs(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.e, 22151u), abs(vec2<u32>(35971u, u_input.e))))) % vec2<u32>(32u));
    var var_1 = global0.xx;
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-888f, -2754f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -229f) + -159f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(745f, _wgslsmith_f_op_f32(-255f + 172f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-257f, -641f, 386f))) + vec3<f32>(_wgslsmith_f_op_f32(select(279f, -1017f, true)), -751f, _wgslsmith_f_op_f32(ceil(-313f))))));
    var var_3 = func_3(Struct_3(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.e, 4294967295u, 1u, u_input.e), select(vec4<u32>(1u, u_input.e, u_input.e, 26990u), vec4<u32>(0u, 82453u, 44087u, u_input.e), global0.x)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.e, u_input.e, 18216u, u_input.e), vec4<u32>(u_input.e, 20122u, u_input.e, 0u) | vec4<u32>(0u, 44450u, u_input.e, 1u)))), Struct_4(75314u, select(select(!vec4<bool>(false, var_1.x, false, var_1.x), select(vec4<bool>(global0.x, false, var_1.x, false), vec4<bool>(var_1.x, false, var_1.x, true), var_1.x), !global0.x), !select(vec4<bool>(true, false, global0.x, false), vec4<bool>(false, var_1.x, var_1.x, var_1.x), false), var_1.x), _wgslsmith_f_op_f32(floor(591f)), Struct_3(4865u), Struct_3(~30091u)), -select(vec4<i32>(7302i, -4098i, _wgslsmith_mult_i32(u_input.d, var_0.x), 45130i), ~vec4<i32>(u_input.d, u_input.d, -78792i, 1i), !(!vec4<bool>(true, global0.x, true, var_1.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-732f * -1796f) + _wgslsmith_f_op_f32(f32(-1f) * -299f))))).x;
    return 94211u;
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: vec3<u32>) -> Struct_2 {
    var var_0 = Struct_5(!arg_1.b.xyw);
    var var_1 = true;
    var_1 = !all(select(select(!arg_1.b, vec4<bool>(false, true, global0.x, false), global0.x), vec4<bool>(any(arg_1.b.xz), true, arg_1.b.x, !var_0.a.x), arg_1.b.x));
    let var_2 = Struct_5(vec3<bool>(true, all(vec3<bool>(var_0.a.x, true, arg_1.b.x)), !arg_1.b.x));
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(arg_1.c, arg_1.c)))), 266f));
    return Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3) - _wgslsmith_div_vec2_f32(var_3, var_3)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3), vec2<f32>(var_3.x, 1200f))), abs(countOneBits(u_input.d)), arg_0));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_5) -> Struct_3 {
    global0 = !(!select(vec4<bool>(false, !arg_2.a.x, true, !global0.x), vec4<bool>(true, any(global0.wy), false, true), false));
    global0 = vec4<bool>(global0.x || global0.x, all(select(vec4<bool>(any(vec2<bool>(arg_2.a.x, global0.x)), true, arg_2.a.x, all(vec4<bool>(global0.x, arg_2.a.x, false, global0.x))), select(!vec4<bool>(global0.x, arg_2.a.x, global0.x, false), vec4<bool>(true, global0.x, false, false), vec4<bool>(true, global0.x, false, arg_2.a.x)), select(select(vec4<bool>(arg_2.a.x, true, arg_2.a.x, false), vec4<bool>(arg_2.a.x, global0.x, arg_2.a.x, global0.x), global0.x), vec4<bool>(global0.x, false, global0.x, global0.x), true))), true, global0.x);
    let var_0 = global0.x;
    global0 = !select(vec4<bool>(!arg_2.a.x, true || (u_input.e <= 0u), true, all(select(global0.xw, vec2<bool>(true, false), arg_2.a.x))), select(select(vec4<bool>(arg_2.a.x, false, arg_2.a.x, false), select(vec4<bool>(true, arg_2.a.x, global0.x, false), vec4<bool>(true, arg_2.a.x, arg_2.a.x, global0.x), arg_2.a.x), select(vec4<bool>(global0.x, arg_2.a.x, global0.x, true), vec4<bool>(true, global0.x, true, arg_2.a.x), false)), select(vec4<bool>(arg_2.a.x, arg_2.a.x, false, global0.x), !vec4<bool>(false, arg_2.a.x, global0.x, arg_2.a.x), true), !(38676i <= u_input.a.x)), !select(select(vec4<bool>(true, false, false, arg_2.a.x), vec4<bool>(arg_2.a.x, arg_2.a.x, true, global0.x), false), vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(arg_2.a.x, arg_2.a.x, false, global0.x)));
    global0 = !select(select(!vec4<bool>(global0.x, false, false, global0.x), select(!vec4<bool>(arg_2.a.x, arg_2.a.x, true, global0.x), !vec4<bool>(true, global0.x, true, global0.x), true), arg_2.a.x), !(!select(vec4<bool>(arg_2.a.x, arg_2.a.x, global0.x, false), vec4<bool>(arg_2.a.x, true, global0.x, false), global0.x)), vec4<bool>(!any(vec4<bool>(true, true, true, global0.x)), false, !(!global0.x), true));
    return Struct_3(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-firstTrailingBit(~(-1i)) ^ (i32(-1i) * -22067i), firstLeadingBit(u_input.b.x), u_input.b.x);
    var var_1 = func_5(func_4(var_0.x, Struct_4(4294967295u << (func_1() % 32u), select(select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(true, global0.x, global0.x, true), global0.x), select(vec4<bool>(false, global0.x, true, true), vec4<bool>(global0.x, false, global0.x, false), true), select(vec4<bool>(false, false, global0.x, false), vec4<bool>(true, global0.x, true, global0.x), global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-491f * -578f) - _wgslsmith_f_op_f32(f32(-1f) * -830f)), Struct_3(u_input.e ^ 4294967295u), Struct_3(~u_input.e)), vec3<u32>(_wgslsmith_mult_u32(u_input.e, u_input.e) << (~4294967295u % 32u), ~27220u ^ ~u_input.e, abs(u_input.e))), Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-770f, 517f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-297f, -674f) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-906f, -827f)))))), -1i, var_0.x), Struct_5(select(!select(global0.yxy, global0.xzx, global0.x), select(!vec3<bool>(global0.x, true, global0.x), !vec3<bool>(global0.x, true, global0.x), true), global0.ywz)));
    var_1 = Struct_3(var_1.a);
    var var_2 = Struct_1(vec2<f32>(1f, 1f), -(i32(-1i) * -2147483647i), 0i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_1.a ^ 1u, var_1.a, func_5(func_4(var_0.x, Struct_4(15280u, vec4<bool>(global0.x, true, true, true), var_2.a.x, Struct_3(u_input.e), Struct_3(1u)), ~vec3<u32>(var_1.a, u_input.e, var_1.a)), Struct_1(vec2<f32>(1f, 1f), -42769i, ~12005i), Struct_5(global0.wwy)).a, var_1.a));
}

