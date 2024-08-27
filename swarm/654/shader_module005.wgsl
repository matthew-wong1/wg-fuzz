struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<i32>(1i, 45193i, 31000i), 211f, Struct_1(true));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<i32>) -> f32 {
    global0 = Struct_2(abs(min(~arg_2, -global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1071f)), global0.c);
    let var_0 = arg_0;
    var var_1 = u_input.c.x;
    var var_2 = arg_1;
    var var_3 = vec2<f32>(var_2.x, global0.b);
    return 833f;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2) -> vec3<i32> {
    global0 = arg_1;
    global0 = arg_1;
    global0 = Struct_2(global0.a, arg_1.b, Struct_1(global0.c.a));
    var var_0 = arg_1;
    var var_1 = Struct_1(any(select(vec4<bool>(var_0.c.a, all(vec2<bool>(true, true)), arg_1.b != -2255f, false), !select(vec4<bool>(global0.c.a, false, var_0.c.a, false), vec4<bool>(global0.c.a, global0.c.a, arg_1.c.a, true), false), select(vec4<bool>(var_0.c.a, arg_1.c.a, arg_1.c.a, global0.c.a), !vec4<bool>(false, false, var_0.c.a, global0.c.a), vec4<bool>(global0.c.a, arg_1.c.a, global0.c.a, false)))));
    return _wgslsmith_add_vec3_i32(~vec3<i32>(min(var_0.a.x, 0i), _wgslsmith_mod_i32(var_0.a.x, global0.a.x), ~var_0.a.x) ^ -vec3<i32>(-63095i, var_0.a.x, 26774i), abs(_wgslsmith_add_vec3_i32(-firstLeadingBit(arg_1.a), _wgslsmith_clamp_vec3_i32(-var_0.a, arg_1.a, _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -41804i, var_0.a.x), vec3<i32>(-72380i, -9346i, var_0.a.x))))));
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: u32) -> vec3<i32> {
    global0 = Struct_2(vec3<i32>(global0.a.x, 1i | abs(u_input.a), 1i & global0.a.x) << (vec3<u32>(~61956u, ~_wgslsmith_add_u32(u_input.b.x, arg_2), 1u) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global0.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, -1284f, arg_1, -920f)), vec3<i32>(u_input.d.x, 57487i, u_input.d.x))))), global0.c);
    let var_0 = func_3(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(714f, 446f, 989f, 918f) + vec4<f32>(global0.b, arg_1, 1640f, arg_1)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1, global0.b, global0.b, 510f), vec4<f32>(-1022f, global0.b, global0.b, global0.b))))))), Struct_2(vec3<i32>(global0.a.x, abs(_wgslsmith_add_i32(1i, global0.a.x)), (global0.a.x << (4294967295u % 32u)) ^ -2147483647i), -862f, global0.c));
    var var_1 = max(vec4<i32>(31122i & max(global0.a.x << (arg_2 % 32u), u_input.a), -u_input.a, ~(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -1i, -33516i, 30536i), vec4<i32>(u_input.d.x, u_input.d.x, 35248i, 28016i)) | u_input.d.x), 1i), firstTrailingBit(max(reverseBits(vec4<i32>(-2784i, -2147483647i, u_input.d.x, -27927i)), _wgslsmith_add_vec4_i32(vec4<i32>(1i, global0.a.x, 5262i, var_0.x), firstTrailingBit(vec4<i32>(u_input.a, u_input.a, 56124i, global0.a.x))))));
    var var_2 = Struct_2(_wgslsmith_mod_vec3_i32(-_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(var_0, vec3<i32>(-25321i, global0.a.x, 0i)), abs(global0.a)), -vec3<i32>(abs(var_1.x), ~u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -36642i, u_input.a), global0.a))), 962f, global0.c);
    return vec3<i32>(var_2.a.x, var_0.x, 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(vec3<i32>(reverseBits(-2147483647i), u_input.a, _wgslsmith_sub_i32(-2147483647i, -1i) >> (1u % 32u)), global0.b, Struct_1(global0.c.a));
    global0 = Struct_2(func_1(vec2<bool>(all(vec3<bool>(true, true, true)), all(vec4<bool>(false, false, true, false))), -982f, countOneBits(~firstTrailingBit(1u))), _wgslsmith_f_op_f32(step(global0.b, -308f)), Struct_1(true));
    let var_0 = 0u;
    global0 = Struct_2(-vec3<i32>(-53435i | firstTrailingBit(global0.a.x), _wgslsmith_div_i32(global0.a.x, global0.a.x), i32(-1i) * -1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.b, 1100f, all(select(vec2<bool>(true, false), vec2<bool>(global0.c.a, true), global0.c.a))))), global0.c);
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) + global0.b), _wgslsmith_f_op_f32(min(global0.b, -883f)), global0.b, -302f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-1266f + global0.b), _wgslsmith_f_op_f32(global0.b - -881f), 1f, global0.b)))))));
    global0 = Struct_2(global0.a, _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(round(global0.b))), global0.c);
    global0 = Struct_2(~(~(-func_1(vec2<bool>(global0.c.a, global0.c.a), var_1.x, var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, -153f, global0.c.a))), global0.c);
    var var_2 = any(select(select(select(vec4<bool>(global0.c.a, true, global0.c.a, true), select(vec4<bool>(true, global0.c.a, global0.c.a, true), vec4<bool>(false, global0.c.a, global0.c.a, global0.c.a), vec4<bool>(false, global0.c.a, global0.c.a, true)), !vec4<bool>(global0.c.a, true, false, true)), vec4<bool>(global0.b > global0.b, true, global0.c.a, global0.c.a & global0.c.a), !(!vec4<bool>(true, false, global0.c.a, global0.c.a))), !select(select(vec4<bool>(global0.c.a, global0.c.a, global0.c.a, false), vec4<bool>(global0.c.a, false, false, global0.c.a), vec4<bool>(true, global0.c.a, global0.c.a, global0.c.a)), vec4<bool>(false, false, global0.c.a, global0.c.a), vec4<bool>(false, global0.c.a, global0.c.a, global0.c.a)), true));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c >> ((vec4<u32>(var_0, ~var_0, u_input.c.x, _wgslsmith_mult_u32(4294967295u, var_0)) << (min(_wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(u_input.b.x, 12991u, 13718u, var_0)), select(u_input.c, u_input.c, vec4<bool>(global0.c.a, false, global0.c.a, false))) % vec4<u32>(32u))) % vec4<u32>(32u)), select(_wgslsmith_sub_i32(-(i32(-1i) * -9168i), -_wgslsmith_clamp_i32(-22034i, global0.a.x, u_input.a)), abs(_wgslsmith_mult_i32(-global0.a.x, _wgslsmith_div_i32(-1i, -61650i))), global0.c.a));
}

