struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(311f), i32(-2147483648), false);

var<private> global1: array<vec4<f32>, 19>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: u32, arg_3: u32) -> Struct_3 {
    return Struct_3(global0.a, 20149i, global0.c);
}

fn func_3(arg_0: Struct_3) -> u32 {
    let var_0 = !vec2<bool>(all(vec4<bool>(all(vec4<bool>(false, arg_0.c, arg_0.c, false)), arg_0.c, all(vec4<bool>(global0.c, global0.c, global0.c, false)), true)), any(vec4<bool>(false, true, true, all(vec4<bool>(true, global0.c, false, false)))));
    global0 = Struct_3(func_2(-26883i, vec2<f32>(586f, _wgslsmith_f_op_f32(max(arg_0.a.a, _wgslsmith_f_op_f32(ceil(global0.a.a))))), ~33520u, 1u).a, global0.b, true);
    global1 = array<vec4<f32>, 19>();
    let var_1 = ~abs(~select(~vec2<u32>(9970u, 4294967295u), min(vec2<u32>(u_input.a, u_input.a), vec2<u32>(46148u, u_input.a)), select(var_0, var_0, true)));
    var var_2 = u_input.a;
    return 45250u;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: Struct_3) -> vec4<i32> {
    let var_0 = arg_3.a.a;
    let var_1 = -2147483647i;
    var var_2 = vec3<u32>(3787u, 1u, firstTrailingBit(func_3(func_2(-11659i, vec2<f32>(global0.a.a, 182f), u_input.a, 0u)) >> (_wgslsmith_mult_u32(_wgslsmith_sub_u32(17727u, arg_2), _wgslsmith_sub_u32(arg_2, arg_2)) % 32u)));
    global1 = array<vec4<f32>, 19>();
    var var_3 = arg_3.a;
    return firstLeadingBit(_wgslsmith_clamp_vec4_i32(abs(-(vec4<i32>(-1i, -8198i, 0i, global0.b) ^ vec4<i32>(global0.b, arg_3.b, 30680i, -12362i))), reverseBits(_wgslsmith_clamp_vec4_i32(~vec4<i32>(0i, var_1, 2147483647i, global0.b), -vec4<i32>(0i, 2147483647i, 14812i, -10999i), firstLeadingBit(vec4<i32>(arg_3.b, global0.b, 18498i, 2147483647i)))), -vec4<i32>(arg_3.b, global0.b, -2147483647i, arg_3.b) & ~firstTrailingBit(vec4<i32>(arg_3.b, 2147483647i, -1i, arg_3.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-701f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.a) + _wgslsmith_f_op_f32(ceil(global0.a.a))))) - global0.a.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(294f)) + _wgslsmith_div_f32(-125f, 662f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1506f * 925f))))));
    let var_1 = ~_wgslsmith_clamp_vec4_i32(select(vec4<i32>(-4015i, global0.b, -888i, 44998i), vec4<i32>(global0.b, 0i, global0.b, global0.b), global0.c) | vec4<i32>(-1i, global0.b, global0.b, global0.b), vec4<i32>(1i, -2147483647i, global0.b, global0.b) << (vec4<u32>(54005u, 33435u, 13697u, 1u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.b, global0.b, -2147483647i, -2147483647i), func_1(Struct_1(vec4<bool>(true, global0.c, true, global0.c)), Struct_1(vec4<bool>(false, false, false, global0.c)), 25555u, Struct_3(Struct_2(497f), global0.b, global0.c)), _wgslsmith_sub_vec4_i32(vec4<i32>(17745i, global0.b, 40197i, -2147483647i), vec4<i32>(1i, -1i, global0.b, global0.b)))) | _wgslsmith_mult_vec4_i32(reverseBits(countOneBits(vec4<i32>(global0.b, -44151i, global0.b, global0.b))), func_1(Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(false, global0.c, false, false)), ~(~22701u), Struct_3(Struct_2(1171f), i32(-1i) * -16008i, global0.c)));
    global0 = func_2((global0.b | -1i) & reverseBits(func_2(var_1.x, vec2<f32>(-1524f, -524f), u_input.a, 3234u).b << (54634u % 32u)), vec2<f32>(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(var_0 - var_0)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global0.a.a))))), 1u, abs(1u));
    global0 = func_2(global0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(984f, var_0) + vec2<f32>(var_0, global0.a.a)), vec2<f32>(var_0, -1462f), false)))), ~u_input.a, u_input.a);
    var var_2 = Struct_1(!vec4<bool>(global0.c, any(vec3<bool>(false, global0.c, global0.c)), false, false));
    var var_3 = ~(~u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-2172f, global0.a.a))))), -10480i, vec3<f32>(1402f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(930f, var_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.a + _wgslsmith_f_op_f32(-var_0)))), firstLeadingBit(~firstLeadingBit(abs(vec3<u32>(4294967295u, 4294967295u, u_input.a)))), _wgslsmith_f_op_f32(max(1817f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -598f) + _wgslsmith_div_f32(891f, var_0))))));
}

