struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
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

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, false);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> f32 {
    let var_0 = (_wgslsmith_add_u32(~u_input.a, 1u) ^ _wgslsmith_clamp_u32(_wgslsmith_div_u32(~u_input.a, 1u), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(36266u, 2680u))), u_input.a)) == (~1u & u_input.a);
    global0 = vec4<bool>(!global0.x, var_0, true | !any(select(global0.ww, vec2<bool>(var_0, true), vec2<bool>(var_0, global0.x))), select(true, global0.x, !global0.x));
    var var_1 = Struct_1((-2147483647i >= -_wgslsmith_mod_i32(12512i, u_input.c.x)) & all(select(vec2<bool>(global0.x, false), global0.wz, !vec2<bool>(var_0, false))), firstTrailingBit(_wgslsmith_dot_vec3_i32(~(vec3<i32>(u_input.c.x, -40150i, 2147483647i) | u_input.c.zxx), vec3<i32>(countOneBits(u_input.b.x), _wgslsmith_dot_vec3_i32(u_input.c.yxz, u_input.c.zxw), u_input.b.x))));
    global0 = vec4<bool>(any(select(select(select(global0.zy, global0.zy, var_0), vec2<bool>(true, true), vec2<bool>(true, var_1.a)), !vec2<bool>(true, global0.x), global0.xx)), false, any(select(!(!vec4<bool>(var_0, var_0, true, global0.x)), !select(vec4<bool>(global0.x, false, var_1.a, true), vec4<bool>(true, false, var_1.a, global0.x), vec4<bool>(var_1.a, false, var_1.a, global0.x)), true | all(vec2<bool>(true, false)))), any(global0.xz));
    let var_2 = Struct_1(global0.x, _wgslsmith_div_i32(_wgslsmith_add_i32(var_1.b, _wgslsmith_dot_vec4_i32(min(u_input.c, u_input.c), -vec4<i32>(u_input.c.x, var_1.b, u_input.b.x, u_input.c.x))), u_input.b.x));
    return -336f;
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2) -> f32 {
    let var_0 = select(global0.yxw, global0.wyz, any(vec2<bool>(!(-1i >= arg_0), (u_input.a >> (0u % 32u)) == _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, 4294967295u, 1u)))));
    var var_1 = _wgslsmith_f_op_f32(-arg_2.b.x);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.c.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) + _wgslsmith_div_f32(561f, arg_2.c.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.b.x, arg_2.c.x) - _wgslsmith_f_op_f32(-arg_2.b.x)))));
    var var_3 = Struct_3(u_input.a);
    var_2 = arg_2.b.x;
    return 571f;
}

fn func_1(arg_0: Struct_1) -> vec2<f32> {
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(345f, -1782f), vec2<f32>(-1519f, 337f)))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(func_3(arg_0.b, Struct_3(u_input.a), Struct_2(Struct_1(arg_0.a, 0i), vec2<f32>(976f, -792f), vec2<f32>(-238f, -756f))))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, _wgslsmith_f_op_f32(max(651f, -576f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 2210f)), !global0.x & true)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2) -> bool {
    var var_0 = !global0.x;
    var var_1 = global0.xz;
    var var_2 = Struct_1(true, u_input.b.x);
    var var_3 = !(!(!vec4<bool>(select(true, false, global0.x), !var_2.a, select(global0.x, true, arg_1.a.a), arg_1.a.a)));
    var_1 = vec2<bool>(true, _wgslsmith_dot_vec3_u32(firstTrailingBit(abs(vec3<u32>(0u, u_input.a, u_input.a))), vec3<u32>(abs(54561u), ~1u, 0u)) <= countOneBits(u_input.a));
    return 965i > (-561i << (~_wgslsmith_sub_u32(select(u_input.a, u_input.a, arg_1.a.a), ~u_input.a) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<bool>(true, false, !func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(Struct_1(global0.x, u_input.b.x)))), Struct_2(Struct_1(true, 1i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(440f, 583f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-255f, 2079f) * vec2<f32>(359f, -1265f)))), true);
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), -875f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(565f, -1126f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(2137f, 230f, 1539f), vec3<f32>(763f, 641f, -1791f), global0.xyy))))));
    var var_1 = Struct_1(any(!(!vec4<bool>(global0.x, true, false, true))), 0i);
    var var_2 = ~vec4<u32>(4294967295u, u_input.a, ~1u, ~16851u);
    var_2 = vec4<u32>(~firstLeadingBit(0u), var_2.x, ~u_input.a, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(max(vec4<u32>(u_input.a, 1306u, 41870u, u_input.a), vec4<u32>(4294967295u, u_input.a, u_input.a, 4294967295u)), vec4<u32>(8859u, ~1u, _wgslsmith_dot_vec3_u32(var_2.wxy, var_2.xyz), ~u_input.a)), vec4<u32>(_wgslsmith_sub_u32(u_input.a, 0u) & _wgslsmith_add_u32(u_input.a, 0u), u_input.a, 1u, u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(min(~(~vec4<u32>(u_input.a, var_2.x, 14647u, var_2.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_2.x, 45690u, 62009u, u_input.a), vec4<u32>(u_input.a, 0u, var_2.x, var_2.x))), ~(vec4<u32>(var_2.x, 0u, var_2.x, var_2.x) >> (abs(vec4<u32>(u_input.a, 1u, u_input.a, var_2.x)) % vec4<u32>(32u)))));
}

