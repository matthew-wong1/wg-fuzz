struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(4294967295u, 65948u, 4294967295u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> vec3<i32> {
    global0 = Struct_1(countOneBits(vec3<u32>(min(u_input.d.x, min(u_input.d.x, 16838u)), 19263u << (reverseBits(global0.a.x) % 32u), 66873u)));
    var var_0 = Struct_1(abs(vec3<u32>(_wgslsmith_mod_u32(u_input.d.x, 1u) & global0.a.x, ~_wgslsmith_sub_u32(1u, u_input.c.x), ~u_input.a)));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1903f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2094f))) + _wgslsmith_f_op_f32(f32(-1f) * -142f))));
    var var_2 = abs(countOneBits(~select(_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, u_input.b.x), _wgslsmith_div_i32(-2147483647i, -17539i), any(vec4<bool>(true, true, arg_0, arg_0)))));
    var var_3 = _wgslsmith_sub_i32(~u_input.b.x, -u_input.b.x << ((var_0.a.x >> (var_0.a.x % 32u)) % 32u));
    return abs(vec3<i32>(u_input.b.x, -1090i, u_input.b.x >> (1u % 32u))) | ~_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 25523i, -7357i), vec3<i32>(-25116i, u_input.b.x, 2147483647i)) >> (_wgslsmith_mod_vec3_u32(global0.a, global0.a) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, 60000i, u_input.b.x), vec3<i32>(1i, -53835i, u_input.b.x)) | -vec3<i32>(-2147483647i, -2147483647i, -2833i));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = -u_input.b.x;
    var var_1 = func_3(true);
    var var_2 = Struct_1(u_input.d);
    global0 = Struct_1(~(abs(~u_input.d) ^ (~vec3<u32>(27827u, 1u, 4294967295u) | arg_0.a)));
    var_2 = Struct_1(abs(_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, arg_0.a.x, global0.a.x)), arg_0.a) ^ ~_wgslsmith_mod_vec3_u32(u_input.d, global0.a)));
    return arg_0;
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    global0 = Struct_1(arg_0.xzx);
    var var_0 = func_2(Struct_1(vec3<u32>(arg_0.x, arg_0.x, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(arg_0, vec4<u32>(32513u, u_input.d.x, global0.a.x, arg_0.x)), vec4<u32>(4294967295u, arg_0.x, 0u, 58229u)))), u_input.b.x);
    var var_1 = func_2(Struct_1(vec3<u32>(func_2(func_2(Struct_1(arg_0.zxx), 23090i), u_input.b.x).a.x, 4294967295u, _wgslsmith_add_u32(~arg_0.x, ~global0.a.x))), reverseBits(countOneBits(_wgslsmith_mult_i32(40074i, u_input.b.x))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1386f) - -646f), 1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + 1087f), _wgslsmith_f_op_f32(trunc(1515f))) * _wgslsmith_f_op_f32(-1147f + _wgslsmith_f_op_f32(-126f - 847f))) - 820f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(843f, -1845f, false))), _wgslsmith_div_f32(-2024f, _wgslsmith_div_f32(-905f, -2074f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-692f, 478f) - _wgslsmith_f_op_f32(-137f + 1669f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(625f - -273f) - 709f), true)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2509f, 2242f)) * 194f)))));
    var_0 = func_2(Struct_1(firstTrailingBit(_wgslsmith_sub_vec3_u32(var_0.a, vec3<u32>(17566u, 96045u, global0.a.x)))), ~(-u_input.b.x));
    return func_2(Struct_1(reverseBits(var_0.a)), func_3(any(vec4<bool>(true, false, all(vec2<bool>(true, false)), true))).x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(_wgslsmith_add_i32(~u_input.b.x, select(5732i, u_input.b.x, abs(u_input.b.x) <= _wgslsmith_add_i32(u_input.b.x, u_input.b.x))), -firstTrailingBit(~u_input.b.x), u_input.b.x);
    var var_1 = -920f;
    global0 = func_1((vec4<u32>(global0.a.x, _wgslsmith_add_u32(39819u, global0.a.x), _wgslsmith_mult_u32(24202u, 48190u), countOneBits(67854u)) & vec4<u32>(24404u, ~65264u, _wgslsmith_mod_u32(1u, u_input.a), countOneBits(0u))) << (~countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.a.x, 38865u, global0.a.x, 0u), vec4<u32>(global0.a.x, 0u, u_input.a, u_input.d.x))) % vec4<u32>(32u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-842f, -417f)), vec2<f32>(-266f, 1f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(736f, -649f)) - vec2<f32>(-374f, 1226f))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1286f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -622f) * -657f)));
    global0 = func_1(firstLeadingBit(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(global0.a.x, 1u, 35076u, 1u), vec4<u32>(u_input.d.x, 0u, u_input.d.x, 11528u)), vec4<u32>(global0.a.x, ~u_input.a, reverseBits(u_input.d.x), global0.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(0i));
}

