struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, false));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = Struct_1(!vec2<bool>(all(select(vec4<bool>(arg_0.a, false, true, true), vec4<bool>(true, arg_0.a, true, global0.a.x), vec4<bool>(arg_0.a, true, true, global0.a.x))), all(vec3<bool>(global0.a.x, global0.a.x, false))));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -120f)))))));
    var_0 = Struct_1(vec2<bool>(false, any(!vec3<bool>(arg_0.a, arg_0.a, arg_0.a))));
    let var_2 = _wgslsmith_div_vec3_u32(firstTrailingBit(~u_input.d.zyx), u_input.d.zxw);
    var_0 = Struct_1(select(!vec2<bool>(any(vec3<bool>(arg_0.a, false, true)), true), select(select(var_0.a, vec2<bool>(var_0.a.x, false), select(vec2<bool>(true, arg_0.a), vec2<bool>(false, false), true)), vec2<bool>(9898u >= var_2.x, !global0.a.x), global0.a), true));
    return _wgslsmith_add_u32(_wgslsmith_add_u32(~4294967295u, _wgslsmith_sub_u32(firstLeadingBit(0u), firstTrailingBit(var_2.x << (19249u % 32u)))), _wgslsmith_div_u32(~_wgslsmith_mult_u32(min(25311u, 4294967295u), 49099u), (u_input.d.x ^ u_input.e.x) >> (1u % 32u)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = Struct_3(Struct_1(global0.a), func_3(Struct_2(arg_0)), arg_0, global0.a.x, Struct_1(vec2<bool>(true, any(!vec3<bool>(global0.a.x, false, false)))));
    let var_1 = reverseBits(min(vec2<u32>(var_0.b, _wgslsmith_clamp_u32(u_input.e.x, 14379u, _wgslsmith_mod_u32(var_0.b, 0u))), abs(vec2<u32>(var_0.b, 23587u))));
    global0 = var_0.a;
    global0 = var_0.a;
    var var_2 = 0i;
    return Struct_1(vec2<bool>(select(var_0.d, true, global0.a.x), false));
}

fn func_4(arg_0: Struct_3) -> bool {
    var var_0 = _wgslsmith_f_op_f32(ceil(585f));
    global0 = Struct_1(select(select(select(!global0.a, vec2<bool>(global0.a.x, global0.a.x), false), func_2(true).a, false), !arg_0.a.a, arg_0.a.a));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-267f)) - _wgslsmith_f_op_f32(ceil(-690f))) * -127f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -833f), -482f))), _wgslsmith_f_op_f32(abs(749f)), -1537f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(581f, 573f, -792f, _wgslsmith_f_op_f32(floor(1319f))))) + vec4<f32>(-366f, 817f, -2264f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2318f + -1343f) - _wgslsmith_f_op_f32(-1149f + 551f)))));
    let var_2 = Struct_2(arg_0.d);
    var var_3 = select(-24022i, min(~u_input.c.x, u_input.a.x & firstLeadingBit(u_input.c.x)), any(!select(vec4<bool>(true, arg_0.a.a.x, var_2.a, var_2.a), select(vec4<bool>(global0.a.x, false, false, true), vec4<bool>(false, arg_0.d, true, arg_0.e.a.x), true), select(vec4<bool>(true, var_2.a, true, false), vec4<bool>(global0.a.x, true, arg_0.c, false), true))));
    return !var_2.a;
}

fn func_1() -> Struct_2 {
    global0 = Struct_1(select(!(!global0.a), global0.a, !(!vec2<bool>(true, global0.a.x))));
    let var_0 = vec4<i32>(~u_input.a.x ^ (~_wgslsmith_dot_vec3_i32(u_input.c, u_input.a) | 1i), u_input.c.x, -34559i, max(u_input.c.x, min(u_input.a.x << (u_input.d.x % 32u), 10908i)) << (1u % 32u));
    let var_1 = Struct_3(Struct_1(vec2<bool>(!(global0.a.x | true), global0.a.x)), ~4294967295u, !func_4(Struct_3(func_2(true), ~u_input.b, true, true, func_2(global0.a.x))), ~4294967295u > abs(~u_input.b), Struct_1(!global0.a));
    var var_2 = abs(-firstLeadingBit(~(-u_input.c.x)));
    global0 = var_1.e;
    return Struct_2(!(!var_1.e.a.x));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec2<i32>, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = vec2<u32>(20933u, 1u);
    var var_1 = Struct_1(global0.a);
    return Struct_1(var_1.a);
}

fn func_6(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_mod_vec3_i32((vec3<i32>(-7321i, _wgslsmith_sub_i32(u_input.c.x, -2147483647i), ~u_input.c.x) & u_input.c) & vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x & 2147483647i, select(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, 4952i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, 0i, u_input.c.x), vec3<i32>(-1i, u_input.c.x, 17512i))), -1i, !arg_0.a.x), abs(-_wgslsmith_sub_i32(-34339i, u_input.c.x))));
    global0 = arg_0;
    let var_1 = !select(!select(vec2<bool>(false, true), vec2<bool>(global0.a.x, arg_0.a.x), any(global0.a)), !vec2<bool>(any(vec4<bool>(true, global0.a.x, false, false)), any(vec3<bool>(arg_0.a.x, arg_0.a.x, true))), !(!global0.a));
    var_0 = vec3<i32>(-1i, max(reverseBits(_wgslsmith_mult_i32(reverseBits(var_0.x), -u_input.c.x)), -var_0.x), ~var_0.x);
    var_0 = _wgslsmith_div_vec3_i32(u_input.c, _wgslsmith_mod_vec3_i32(~(vec3<i32>(-9625i, u_input.a.x, 42952i) >> (~u_input.d.xyx % vec3<u32>(32u))), abs(~vec3<i32>(var_0.x, 1i, u_input.c.x))));
    return ~vec4<i32>(-(~_wgslsmith_mult_i32(u_input.c.x, var_0.x)), var_0.x, _wgslsmith_clamp_i32(0i, ~_wgslsmith_div_i32(0i, var_0.x), firstLeadingBit(-11420i)), u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = global0.a.x;
    let var_2 = vec2<u32>(u_input.e.x, _wgslsmith_dot_vec2_u32(~u_input.d.yx | u_input.e, _wgslsmith_mod_vec2_u32(~vec2<u32>(39134u, u_input.e.x), reverseBits(vec2<u32>(u_input.e.x, u_input.e.x)))));
    let var_3 = func_6(func_5(func_1(), ~vec3<u32>(_wgslsmith_mod_u32(4275u, 75570u), _wgslsmith_dot_vec4_u32(vec4<u32>(13630u, 2087u, 37027u, var_2.x), vec4<u32>(1406u, var_2.x, var_2.x, var_2.x)), u_input.e.x), -(~vec2<i32>(u_input.c.x, -2147483647i)) << (min(u_input.e, vec2<u32>(23048u, 4294967295u)) % vec2<u32>(32u)), countOneBits(var_2)));
    var var_4 = _wgslsmith_dot_vec3_u32(u_input.d.xzy, ~(~vec3<u32>(4243u, var_2.x, ~var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-2871f, -1045f), vec2<f32>(1749f, 495f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-726f, -1313f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-396f, 1000f))))), firstTrailingBit(var_3), u_input.d);
}

