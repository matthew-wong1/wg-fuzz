struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_1 = Struct_1(true, -196f, 0u, 31246u, vec4<f32>(-488f, 223f, 1961f, -1805f));

var<private> global2: vec3<bool>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<f32>) -> vec3<bool> {
    let var_0 = ~reverseBits(~(~vec2<u32>(34445u, global1.d)));
    var var_1 = Struct_1(any(!vec2<bool>(false, global2.x)), _wgslsmith_f_op_f32(abs(arg_0.x)), ~(~global0.x | 17448u), _wgslsmith_mod_u32(global1.d, ~global1.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(arg_0.x)), global1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b + arg_0.x) * _wgslsmith_f_op_f32(trunc(arg_0.x))), 127f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(436f, global1.e.x)))));
    global2 = vec3<bool>(true, 1u == firstTrailingBit(~0u), !all(vec2<bool>(global1.a, true)));
    let var_2 = Struct_1(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.x, 1814f, -1304f >= var_1.b)) - _wgslsmith_f_op_f32(-arg_0.x))), global0.x, _wgslsmith_dot_vec2_u32(~((vec2<u32>(var_1.d, global0.x) ^ u_input.d) >> (max(u_input.e.zy, var_0) % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(vec2<u32>(firstTrailingBit(1u), ~51278u), vec2<u32>(countOneBits(1u), 34211u))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2076f), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-548f))), _wgslsmith_f_op_f32(abs(arg_0.x))));
    let var_3 = select(global1.a, 37183i > (-u_input.b >> (global1.c % 32u)), ~(~max(var_2.c, 0u)) == firstTrailingBit(48100u));
    return select(!vec3<bool>(var_2.a, global2.x || true, !var_2.a), vec3<bool>(!all(select(vec4<bool>(var_1.a, true, var_1.a, false), vec4<bool>(global1.a, var_2.a, false, true), global2.x)), !(-125f > var_2.b), false), any(select(vec3<bool>(all(vec4<bool>(true, true, true, true)), var_3, false), select(select(vec3<bool>(var_1.a, false, global1.a), vec3<bool>(true, false, true), false), vec3<bool>(false, var_3, var_1.a), vec3<bool>(global1.a, true, global1.a)), false)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: vec2<u32>) -> i32 {
    global2 = !func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_0 * vec2<f32>(-477f, 726f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b, global1.b) - vec2<f32>(1074f, global1.e.x)), vec2<bool>(false, global2.x)))));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.e.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_1 = Struct_1((var_0 > arg_0.x) && true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-438f, 702f), _wgslsmith_f_op_f32(ceil(416f))))), _wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(reverseBits(37766u), ~9878u, global0.x) << (_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 42322u, 6967u), vec3<u32>(u_input.d.x, 1u, 0u)) % vec3<u32>(32u))), global1.c >> ((global1.c | global0.x) % 32u), global1.e);
    let var_2 = Struct_1(var_1.a, -1001f, reverseBits(1u), 0u, _wgslsmith_f_op_vec4_f32(select(var_1.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-916f, -1714f, global1.b, -1097f), vec4<f32>(var_1.b, var_0, 1615f, arg_0.x))))), !vec4<bool>(all(vec3<bool>(var_1.a, global1.a, global1.a)), global1.a, false, !global1.a))));
    global0 = vec2<u32>(u_input.e.x, _wgslsmith_add_u32(29861u, max(max(max(9017u, 1u), 27486u), ~(~var_2.d))));
    return ~arg_1.x;
}

fn func_1() -> Struct_1 {
    global0 = u_input.e.xz;
    var var_0 = -322f;
    global0 = vec2<u32>(u_input.c, u_input.d.x);
    let var_1 = (vec2<i32>(countOneBits(u_input.b) & -69788i, 1i) | vec2<i32>(func_2(vec2<f32>(global1.b, global1.b), firstTrailingBit(vec2<i32>(u_input.b, -38872i)), u_input.e.yy), -15028i)) | vec2<i32>(-4048i, u_input.b);
    var var_2 = !(global2.x || !all(select(vec3<bool>(true, true, global2.x), vec3<bool>(true, true, global1.a), vec3<bool>(true, global2.x, false))));
    return Struct_1(false, global1.e.x, 1u, _wgslsmith_add_u32(_wgslsmith_sub_u32(17827u, u_input.d.x) << (u_input.e.x % 32u), _wgslsmith_sub_u32(u_input.c, global0.x)), _wgslsmith_f_op_vec4_f32(global1.e + vec4<f32>(_wgslsmith_f_op_f32(global1.e.x + _wgslsmith_f_op_f32(abs(-1255f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.e.x - -368f))), _wgslsmith_f_op_f32(step(-1337f, global1.e.x)), global1.b)));
}

fn func_4(arg_0: Struct_1) -> vec4<bool> {
    global1 = Struct_1(true, -608f, 46093u, u_input.e.x, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(global1.e, vec4<f32>(global1.e.x, -1962f, -1000f, arg_0.e.x)))))));
    global1 = arg_0;
    global2 = !func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.e.zw) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.b, 644f), vec2<f32>(global1.e.x, global1.b)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.e.zw - vec2<f32>(1000f, arg_0.e.x)))));
    var var_0 = 725f;
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(-(~u_input.b), firstTrailingBit(_wgslsmith_sub_i32(u_input.b, u_input.b)), -19187i), (~u_input.b >> (abs(63189u) % 32u)) | 1i, countOneBits(u_input.b)), select(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b) ^ firstLeadingBit(vec3<i32>(20139i, u_input.b, 1i)), -(vec3<i32>(u_input.b, u_input.b, 66875i) & vec3<i32>(u_input.b, 1i, -2147483647i))), ~firstTrailingBit(abs(vec3<i32>(u_input.b, u_input.b, u_input.b))), vec3<bool>(true, true, true)));
    return select(!vec4<bool>(global2.x, arg_0.a, true == (u_input.e.x == global1.d), true), vec4<bool>(any(!vec4<bool>(global2.x, global1.a, false, global2.x)), all(vec4<bool>(arg_0.c != u_input.d.x, arg_0.a, false, all(global2.xx))), arg_0.a, true), abs(_wgslsmith_add_i32(~(-72267i), ~2147483647i)) > (_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), firstTrailingBit(vec2<i32>(20440i, 1433i))) | _wgslsmith_mult_i32(-1i, ~(-1i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<u32>(global0.x, _wgslsmith_div_u32(_wgslsmith_add_u32(global0.x & 4294967295u, ~51864u) >> ((u_input.e.x & 1u) % 32u), firstLeadingBit(~0u)));
    global0 = vec2<u32>(23035u, 8824u);
    let var_0 = func_4(func_1());
    global1 = Struct_1(true, -1000f, firstTrailingBit(global0.x), ~countOneBits(select(~u_input.d.x, 54663u ^ global1.c, var_0.x)), global1.e);
    var var_1 = -(~reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, -9933i), reverseBits(vec4<i32>(0i, u_input.b, -24565i, -2147483647i)), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) << (vec4<u32>(global0.x, global0.x, global1.d, 1u) % vec4<u32>(32u)))));
    let var_2 = true;
    let var_3 = -39828i;
    var var_4 = var_3;
    var var_5 = Struct_1(!any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - global1.b) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -594f) * 124f) + -1011f)), _wgslsmith_div_u32(~global1.c, _wgslsmith_dot_vec4_u32(vec4<u32>(abs(global1.d), ~global1.c, ~global1.d, abs(u_input.a)), max(vec4<u32>(global0.x, 4294967295u, u_input.d.x, global0.x), vec4<u32>(27663u, 0u, global1.d, global1.c)) | vec4<u32>(32100u, 4294967295u, 26858u, global1.d))), ~u_input.e.x >> (global1.d % 32u), _wgslsmith_f_op_vec4_f32(global1.e * vec4<f32>(1513f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1037f)), global1.b, -1094f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_5.b * 254f), _wgslsmith_f_op_f32(global1.b + var_5.e.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_5.e.x), _wgslsmith_f_op_f32(abs(1000f))))), var_5.e.x, 0u, ~max(var_5.d, _wgslsmith_sub_u32(0u, u_input.a)));
}

