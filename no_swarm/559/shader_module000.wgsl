struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1188f, true, -934f, vec4<i32>(1i, 2147483647i, i32(-2147483648), 55736i));

var<private> global1: vec4<i32> = vec4<i32>(2147483647i, -51832i, 2147483647i, -48222i);

var<private> global2: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(select(1f, arg_0.c, true));
    global2 = 1000f;
    var var_1 = Struct_1(163f, all(select(!select(vec4<bool>(arg_0.b, false, arg_0.b, false), vec4<bool>(true, false, global0.b, arg_0.b), false), vec4<bool>(3828i != global0.d.x, global0.b, arg_0.b, global0.b), false)), _wgslsmith_f_op_f32(1333f - _wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.c), var_0)), any(select(vec2<bool>(global0.b, true), vec2<bool>(false, arg_0.b), true))))), vec4<i32>(~(~(~global0.d.x)), global1.x, -(~max(arg_0.d.x, -2147483647i)), 1i >> (~u_input.b % 32u)));
    var var_2 = vec3<bool>(global0.b, !(u_input.d <= -35034i), (_wgslsmith_dot_vec3_i32(global1.www, vec3<i32>(global1.x, u_input.a.x, 2147483647i)) >> (4294967295u % 32u)) <= -2147483647i);
    let var_3 = arg_0;
    return 4294967295u;
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = global0.d >> (~_wgslsmith_sub_vec4_u32(~vec4<u32>(17475u, u_input.b, u_input.b, u_input.b), vec4<u32>(~21563u, ~84206u, ~u_input.b, reverseBits(4294967295u))) % vec4<u32>(32u));
    let var_1 = u_input.b;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-567f - global0.c) - global0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(169f - global0.a))) - _wgslsmith_f_op_f32(-global0.c)));
    let var_2 = vec4<u32>(func_3(Struct_1(_wgslsmith_f_op_f32(340f + global0.c), -526f != global0.c, global0.a, vec4<i32>(arg_0, global1.x, arg_0, 19428i))) & firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, 4294967295u, u_input.b) >> (vec3<u32>(var_1, var_1, var_1) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1, var_1, u_input.b), vec3<u32>(u_input.b, 28004u, var_1)))), var_1, abs(~(~5758u)), _wgslsmith_dot_vec4_u32(vec4<u32>(~var_1, u_input.b, 0u, ~u_input.b), ~abs(vec4<u32>(4294967295u, var_1, 1u, u_input.b) & vec4<u32>(var_1, var_1, var_1, var_1))));
    return Struct_1(-243f, (firstLeadingBit(var_2.x) | ~var_2.x) > 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1331f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.c))))), global0.d);
}

fn func_1() -> vec3<u32> {
    global1 = _wgslsmith_clamp_vec4_i32(-abs(global0.d), u_input.c, u_input.c);
    global0 = Struct_1(-269f, global0.b, _wgslsmith_f_op_f32(444f * _wgslsmith_f_op_f32(global0.a * global0.a)), _wgslsmith_sub_vec4_i32(global0.d, vec4<i32>(13841i, _wgslsmith_mult_i32(-global1.x, -32255i), _wgslsmith_mod_i32(global0.d.x, u_input.c.x), -12519i)));
    var var_0 = func_2(~12215i);
    return _wgslsmith_add_vec3_u32(~_wgslsmith_sub_vec3_u32(max(vec3<u32>(u_input.b, 4294967295u, 70322u), vec3<u32>(u_input.b, 4294967295u, 25932u)), vec3<u32>(39897u, u_input.b, 30418u)) & firstTrailingBit(~vec3<u32>(1u, u_input.b, u_input.b)), abs(reverseBits(vec3<u32>(u_input.b, 0u, u_input.b) & vec3<u32>(u_input.b, 4294967295u, u_input.b))) >> (select(vec3<u32>(~u_input.b, 1u, countOneBits(u_input.b)), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 16429u, 33271u), ~vec3<u32>(u_input.b, u_input.b, 1271u)), vec3<bool>(var_0.b && global0.b, var_0.b || false, global0.b)) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(u_input.b, u_input.b, 34332u)) << (_wgslsmith_div_vec3_u32(abs(func_1()), reverseBits(~vec3<u32>(4294967295u, u_input.b, u_input.b))) % vec3<u32>(32u)));
    global0 = func_2(global1.x);
    let var_1 = 1u;
    var var_2 = global0.d.wyw;
    var var_3 = func_2(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(global0.d.xzw | ~vec3<i32>(global1.x, 55425i, 0i), min(global0.d.zyy, u_input.a)), var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1546f), _wgslsmith_div_f32(-1448f, var_3.a), _wgslsmith_f_op_f32(abs(var_3.a)), 1056f)) - vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -553f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -199f) + -966f), _wgslsmith_f_op_f32(-var_3.a), -1000f)), vec3<u32>(66577u, ~_wgslsmith_div_u32(1u, var_1), ~_wgslsmith_div_u32(reverseBits(var_1), reverseBits(var_1))), _wgslsmith_f_op_f32(round(242f)), 8432i);
}

