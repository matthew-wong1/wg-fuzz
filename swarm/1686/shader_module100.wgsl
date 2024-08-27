struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = -1872f;
    global0 = -arg_0.a;
    global0 = -arg_1.a;
    let var_2 = Struct_1(abs(_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(global0.x, -1i, arg_0.a.x, 7753i) | arg_2.a), arg_1.a)));
    return Struct_1(vec4<i32>(~47674i, ~var_2.a.x, var_0.a.x, _wgslsmith_div_i32(var_0.a.x, arg_2.a.x)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = vec2<i32>(_wgslsmith_div_i32(global0.x, -13753i), abs(_wgslsmith_clamp_i32(arg_0.a.x, arg_0.a.x, _wgslsmith_clamp_i32(arg_1.a.x, 0i, 50557i))));
    global0 = _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(firstLeadingBit(reverseBits(countOneBits(arg_1.a))), vec4<i32>(var_0.x, i32(-1i) * -global0.x, _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_sub_i32(u_input.e, global0.x), global0.x), -2147483647i)), arg_0.a);
    global0 = arg_1.a;
    let var_1 = true;
    let var_2 = func_2(arg_1, arg_1, arg_0, firstTrailingBit(1u));
    return -1529f;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: bool) -> f32 {
    global0 = -arg_1.a >> (~vec4<u32>(~_wgslsmith_div_u32(4294967295u, 4294967295u), _wgslsmith_mult_u32(reverseBits(u_input.d.x), ~u_input.a), 60615u, 1u | (73679u ^ u_input.a)) % vec4<u32>(32u));
    var var_0 = _wgslsmith_f_op_f32(523f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1536f)) + -438f))));
    let var_1 = ~u_input.d.x;
    return _wgslsmith_f_op_f32(func_3(func_2(arg_1, arg_1, Struct_1(reverseBits(-vec4<i32>(u_input.b, global0.x, -1i, arg_1.a.x))), min(max(_wgslsmith_dot_vec2_u32(u_input.d, u_input.d), var_1), 23875u)), arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-110f * -1069f), _wgslsmith_f_op_f32(f32(-1f) * -185f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1456f, 283f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1148f, 1357f))))));
    var var_1 = ~vec2<u32>(reverseBits(u_input.a), _wgslsmith_clamp_u32(0u, u_input.d.x, 27009u));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<bool>(false, false, true, false), Struct_1(vec4<i32>(u_input.c.x, global0.x, global0.x, 2147483647i)), true))), _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(f32(-1f) * -1525f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(f32(-1f) * -1122f)))), _wgslsmith_f_op_f32(var_0.x + -180f));
    var_1 = u_input.d;
    let var_3 = _wgslsmith_f_op_f32(-1344f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(331f)) - _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(trunc(2457f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(select(746f, var_0.x, all(vec2<bool>(true, true)) && (var_1.x < var_1.x))), var_3));
}

