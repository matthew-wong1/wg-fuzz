struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: vec4<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1000f)))), arg_2.x)));
    global0 = Struct_1(true, countOneBits(global0.b), _wgslsmith_dot_vec3_i32(vec3<i32>(-_wgslsmith_div_i32(global0.c, global0.c), ~global0.c << (~arg_1.x % 32u), min(0i, countOneBits(2147483647i))), ~u_input.a ^ ~_wgslsmith_mult_vec3_i32(u_input.a, u_input.a)));
    let var_1 = select(true, any(select(vec3<bool>(false, true, global0.a), vec3<bool>(true, global0.a, global0.a), true)) || !global0.a, any(select(!vec4<bool>(global0.a, true, global0.a, true), !vec4<bool>(true, global0.a, global0.a, global0.a), all(vec4<bool>(global0.a, global0.a, global0.a, true))))) || global0.a;
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_div_f32(-1332f, -411f))), -301f, -242f, _wgslsmith_f_op_f32(-arg_0.x)) + vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(280f)))), _wgslsmith_f_op_f32(-482f - var_0.x), 1806f))));
    let var_3 = Struct_3(_wgslsmith_mult_u32(5430u >> (u_input.d.x % 32u), arg_3.x), ~select(vec2<u32>(global0.b.x ^ 107577u, global0.b.x | 0u), ~reverseBits(vec2<u32>(u_input.d.x, 26254u)), select(!vec2<bool>(var_1, global0.a), !vec2<bool>(true, var_1), true)), vec2<bool>(var_1, !(-global0.c >= global0.c)));
    return 4294967295u;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_3(func_3(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -621f), -176f), _wgslsmith_f_op_f32(ceil(336f)), _wgslsmith_f_op_f32(f32(-1f) * -104f)), select(_wgslsmith_div_vec2_u32(global0.b.yx, vec2<u32>(75074u, 26191u)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, arg_0), global0.b.xz), true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -291f), _wgslsmith_f_op_f32(f32(-1f) * -884f))), vec4<u32>(abs(_wgslsmith_clamp_u32(7378u, u_input.d.x, 1u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, global0.b.x), _wgslsmith_sub_vec2_u32(global0.b.yz, vec2<u32>(global0.b.x, global0.b.x))), firstTrailingBit(arg_0 << (25836u % 32u)), 1u)), global0.b.zz, select(vec2<bool>(global0.a, global0.b.x > _wgslsmith_mult_u32(1u, global0.b.x)), !(!select(vec2<bool>(false, true), vec2<bool>(global0.a, false), global0.a)), firstLeadingBit(abs(43243u)) < (_wgslsmith_div_u32(u_input.d.x, 41411u) << (1u % 32u))));
    var var_1 = Struct_1(true, global0.b, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(global0.c, u_input.a.x, -4751i, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(-31273i, -2147483647i, 1i, 74976i), vec4<i32>(1i, global0.c, u_input.b.x, 1i))) | max(-20850i, -50994i), 35538i));
    global0 = Struct_1(!(firstLeadingBit(-40153i) < -var_1.c), firstLeadingBit(_wgslsmith_mult_vec3_u32(select(var_1.b | vec3<u32>(0u, global0.b.x, global0.b.x), global0.b, vec3<bool>(true, true, true)), global0.b)), 0i);
    global0 = Struct_1(var_1.a, ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, 14950u, var_1.b.x, u_input.d.x), vec4<u32>(4294967295u, u_input.d.x, var_1.b.x, arg_0)) << (~4294967295u % 32u), ~(global0.b.x | u_input.d.x), 1u), i32(-1i) * -countOneBits(global0.c));
    let var_2 = Struct_1(select(var_0.b.x >= min(4294967295u, abs(arg_0)), var_0.c.x, true), ~_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(max(u_input.d.zxy, u_input.d.wwz), var_1.b & var_1.b), abs(~vec3<u32>(arg_0, arg_0, arg_0))), global0.c);
    return var_2;
}

fn func_1() -> u32 {
    global0 = func_2(~(~firstLeadingBit(~u_input.d.x)));
    global0 = func_2(global0.b.x);
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1023f - _wgslsmith_f_op_f32(f32(-1f) * -447f))));
    var var_1 = Struct_3(_wgslsmith_dot_vec4_u32(~select(u_input.d, vec4<u32>(1u, global0.b.x, global0.b.x, 36914u), false) & vec4<u32>(5561u, 71371u, firstLeadingBit(u_input.d.x), ~46047u), vec4<u32>(52073u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global0.b.x), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 4541u), u_input.d.wx)), u_input.d.x, _wgslsmith_sub_u32(93828u ^ u_input.d.x, func_2(56599u).b.x))), func_2(~u_input.d.x).b.yz, select(!vec2<bool>(false, global0.c > -2147483647i), select(vec2<bool>(global0.a, any(vec4<bool>(global0.a, global0.a, global0.a, true))), !vec2<bool>(global0.a, global0.a), true), !(!(!vec2<bool>(global0.a, global0.a)))));
    var var_2 = var_1.c.x;
    return countOneBits(min(~u_input.d.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, 29470u, 0u), u_input.d.xyx), global0.b.x) >> (firstTrailingBit(~u_input.d.x) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f - -784f))) - -208f))));
    var var_1 = _wgslsmith_sub_u32(~u_input.d.x, ~(~global0.b.x << (func_1() % 32u)));
    var_0 = 1386f;
    var var_2 = func_2(4294967295u);
    var_1 = 41541u;
    var_0 = -1293f;
    var var_3 = firstTrailingBit(2147483647i);
    var var_4 = Struct_2(Struct_1(min(_wgslsmith_add_u32(28875u, 1u), global0.b.x) < ~u_input.d.x, ~reverseBits(u_input.d.yzw), select(-2147483647i, -1i, true)), Struct_1(global0.a, ~var_2.b, ~select(35741i, -global0.c, all(vec3<bool>(false, false, var_2.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-750f, -729f) + vec2<f32>(-1669f, -1466f))))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))))));
}

