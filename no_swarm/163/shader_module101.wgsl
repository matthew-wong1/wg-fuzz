struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 1>;

var<private> global1: bool = true;

var<private> global2: array<Struct_1, 3>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> i32 {
    var var_0 = u_input.b.x;
    let var_1 = _wgslsmith_dot_vec4_u32(~u_input.a, u_input.a);
    global2 = array<Struct_1, 3>();
    global0 = array<vec2<f32>, 1>();
    global2 = array<Struct_1, 3>();
    return 2147483647i;
}

fn func_2() -> i32 {
    global0 = array<vec2<f32>, 1>();
    var var_0 = ~(-(-_wgslsmith_mod_i32(-1i, 1i) | func_3(Struct_1(vec4<f32>(-1686f, -495f, 374f, -1000f), false), _wgslsmith_f_op_f32(f32(-1f) * -594f))));
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(168f, 474f, -360f, 172f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 644f, -194f, 1143f))), vec4<f32>(1f, 1f, 1f, 1f), select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), false)), true))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-237f, -1085f, true)) - -377f))), _wgslsmith_f_op_f32(trunc(-1000f)), -719f, -1830f)));
    let var_2 = firstLeadingBit(_wgslsmith_mult_vec2_i32(-abs(vec2<i32>(1i, -20875i)), countOneBits(countOneBits(vec2<i32>(-16933i, 2147483647i)))));
    let var_3 = vec4<f32>(804f, var_1.x, var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2077f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(303f * var_1.x), -927f, true)))));
    return _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(-(reverseBits(vec4<i32>(var_2.x, 0i, var_2.x, var_2.x)) & -vec4<i32>(var_2.x, 0i, var_2.x, var_2.x)), vec4<i32>(~39373i, var_2.x, ~var_2.x, -(~18791i))), _wgslsmith_mult_i32(var_2.x, var_2.x));
}

fn func_1() -> f32 {
    global0 = array<vec2<f32>, 1>();
    var var_0 = abs(vec3<i32>(0i, -max(i32(-1i) * -29411i, i32(-1i) * -1220i), ~func_2()));
    var var_1 = select(u_input.a.x, 1u, any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), 25173u >= u_input.a.x), vec4<bool>(true, true, true, true), vec4<bool>(select(true, true, true), false, any(vec2<bool>(false, false)), true))));
    var var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2128f, -759f, -573f, -2033f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1026f, 356f, 1000f, 1544f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(1117f)), _wgslsmith_f_op_f32(f32(-1f) * -700f), _wgslsmith_f_op_f32(step(-865f, 467f)), -412f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, 660f, -1000f, 1045f), vec4<f32>(843f, 420f, -1568f, 569f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-974f, 1299f, -368f, -235f) + vec4<f32>(-899f, -723f, -631f, 1000f)))))));
    var var_3 = var_2.zyz;
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -176f), _wgslsmith_f_op_f32(f32(-1f) * -553f)), _wgslsmith_f_op_f32(f32(-1f) * -774f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -300f) * _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1842f)) + -241f))), false);
    var var_1 = vec2<u32>(~_wgslsmith_dot_vec3_u32(u_input.b, min(vec3<u32>(88010u, 1u, u_input.b.x), ~vec3<u32>(u_input.b.x, 1u, 32129u))), u_input.b.x ^ 22997u);
    global2 = array<Struct_1, 3>();
    global0 = array<vec2<f32>, 1>();
    global2 = array<Struct_1, 3>();
    global1 = 1u != ~abs(~var_1.x ^ ~var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_f32(-var_0.a.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a.x))), 293f, -309f), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~u_input.b, ~u_input.b), var_1.x & reverseBits(4294967295u)), ~reverseBits(_wgslsmith_div_u32(var_1.x, u_input.b.x))), ~var_1.x);
}

