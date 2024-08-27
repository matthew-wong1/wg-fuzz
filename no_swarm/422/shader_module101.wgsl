struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, 4294967295u, vec4<bool>(false, false, true, false));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3) -> u32 {
    global0 = Struct_1(global0.a, u_input.b, global0.c);
    var var_0 = Struct_2(Struct_1(true, global0.b, select(select(vec4<bool>(global0.c.x, true, false, global0.c.x), vec4<bool>(global0.c.x, global0.a, global0.c.x, global0.a), global0.a), select(vec4<bool>(true, global0.a, global0.c.x, global0.c.x), global0.c, all(vec3<bool>(false, true, global0.c.x))), !(!global0.c.x))), Struct_1(false, max(~66849u, 21547u), global0.c), Struct_1(true, u_input.c.x, select(!global0.c, global0.c, global0.c)));
    var var_1 = var_0.a;
    var_1 = var_0.a;
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-271f)), 1000f));
    return var_1.b << (min(abs(4294967295u), global0.b) % 32u);
}

fn func_2() -> Struct_2 {
    var var_0 = vec3<i32>(u_input.a.x, i32(-1i) * -firstTrailingBit(u_input.a.x), ~1i);
    let var_1 = max(u_input.c, vec4<u32>(max(68858u, func_3(Struct_3(vec4<i32>(12493i, var_0.x, -51046i, -2147483647i)))), max(func_3(Struct_3(vec4<i32>(var_0.x, u_input.a.x, var_0.x, -54250i))), 34367u), ~(~_wgslsmith_mod_u32(0u, u_input.b)), abs(global0.b)));
    let var_2 = 77016u;
    var var_3 = select(u_input.c.x, var_2, true);
    var var_4 = Struct_1(false, reverseBits(1u), select(global0.c, !global0.c, !global0.a));
    return Struct_2(Struct_1(select(global0.c.x, any(vec4<bool>(global0.a, var_4.a, false, false)), global0.c.x | !var_4.c.x), 25745u, !(!vec4<bool>(true, var_4.c.x, var_4.c.x, global0.c.x))), Struct_1(select(false, global0.c.x, !global0.a), _wgslsmith_div_u32(_wgslsmith_clamp_u32(var_4.b, var_1.x ^ var_2, ~var_2), u_input.c.x), !(!(!global0.c))), Struct_1(all(global0.c.zxw), var_1.x, select(!vec4<bool>(true, var_4.a, global0.a, true), var_4.c, var_4.a)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: vec2<u32>) -> Struct_3 {
    var var_0 = func_2();
    var var_1 = func_2();
    var_0 = Struct_2(func_2().b, Struct_1(true, _wgslsmith_mod_u32(arg_3.x, 4294967295u), !vec4<bool>(arg_0.x, var_0.b.a, all(global0.c), false)), func_2().a);
    return Struct_3(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, abs(~(i32(-1i) * -9128i))));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1, arg_3: vec4<i32>) -> f32 {
    global0 = Struct_1(true || (_wgslsmith_dot_vec2_u32(~u_input.c.wy, _wgslsmith_div_vec2_u32(vec2<u32>(arg_2.b, global0.b), u_input.c.yw)) < 54404u), ~(arg_2.b & (_wgslsmith_clamp_u32(43547u, u_input.b, u_input.b) | 73899u)), vec4<bool>(true, !any(vec3<bool>(global0.a, true, arg_2.a)), !(select(5472u, u_input.b, arg_1) < _wgslsmith_add_u32(53890u, 26256u)), true));
    global0 = Struct_1(abs(0i & arg_0.a.x) < _wgslsmith_div_i32(firstLeadingBit(countOneBits(arg_0.a.x)), -countOneBits(u_input.a.x)), 1u, vec4<bool>(all(vec3<bool>(global0.a, true, arg_1)), arg_1, false, false));
    let var_0 = func_2().c;
    let var_1 = abs(vec3<i32>(_wgslsmith_clamp_i32(arg_3.x, abs(_wgslsmith_mod_i32(arg_0.a.x, -17671i)), _wgslsmith_dot_vec3_i32(~arg_0.a.yyy, -arg_0.a.xyx)), _wgslsmith_add_i32(-select(-1i, u_input.a.x, arg_2.c.x), _wgslsmith_add_i32(-arg_3.x, 2147483647i)), -23410i));
    var var_2 = 92061u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-765f, _wgslsmith_f_op_f32(-1f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(944f))))) + _wgslsmith_f_op_f32(298f - _wgslsmith_div_f32(-853f, _wgslsmith_f_op_f32(1470f - 242f)))));
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = reverseBits(~countOneBits(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 4272i) << (u_input.c % vec4<u32>(32u)))) | -(vec4<i32>(-1i) * -abs(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, 2147483647i)));
    global0 = func_2().b;
    global0 = arg_3;
    let var_1 = -(~31651i);
    global0 = arg_3;
    return Struct_1(any(select(!global0.c, select(global0.c, vec4<bool>(arg_3.a, global0.c.x, false, arg_3.c.x), vec4<bool>(arg_3.a, true, arg_3.c.x, arg_3.c.x)), select(vec4<bool>(false, global0.a, arg_3.c.x, arg_3.c.x), vec4<bool>(arg_3.a, true, false, false), true))) & false, ~_wgslsmith_mult_u32(u_input.b, func_3(Struct_3(vec4<i32>(var_0.x, 14176i, var_0.x, 1i))) & u_input.c.x), !select(!global0.c, arg_3.c, arg_3.c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(false, 18171u, global0.c);
    let var_0 = 1u;
    global0 = func_5(~firstLeadingBit(global0.b) >> (var_0 % 32u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(func_1(vec3<bool>(true, true, true), vec4<bool>(true, global0.a, global0.a, true), vec2<f32>(-713f, -112f), vec2<u32>(1u, u_input.b)), !(global0.b >= 4294967295u), func_2().c, _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, -1921i, 1i, u_input.a.x), vec4<i32>(-2147483647i, -45727i, 4789i, u_input.a.x)), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, -1i, u_input.a.x), vec4<i32>(u_input.a.x, -1i, u_input.a.x, -1i)), countOneBits(vec4<i32>(-61422i, u_input.a.x, u_input.a.x, u_input.a.x))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -714f))), any(!vec4<bool>(global0.a, false, false, global0.a)) | false)), 0u, func_2().a);
    let var_1 = ~u_input.c;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(826f, 675f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(224f, 172f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(847f, -310f) * vec2<f32>(984f, -154f))))), global0.c.yw)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(978f, -760f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-297f, 1000f) + vec2<f32>(-274f, -1190f)), true)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, -1116f))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(175f, 1000f), vec2<f32>(431f, -2714f), true))))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(3861u, func_2().a.b, firstTrailingBit(~var_1.x)), _wgslsmith_clamp_vec4_u32(countOneBits(u_input.c), u_input.c, abs(u_input.c) >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(var_1.x, 4294967295u, 4294967295u, var_1.x), _wgslsmith_add_vec4_u32(vec4<u32>(17251u, 69207u, u_input.b, 55296u), u_input.c)) % vec4<u32>(32u))), ~1u, _wgslsmith_f_op_vec2_f32(max(var_2, var_2)));
}

