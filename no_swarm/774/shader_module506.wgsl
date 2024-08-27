struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
    c: Struct_3,
    d: u32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_4,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: vec4<i32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: vec3<bool>) -> u32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(arg_1.c.a.b * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-624f)), _wgslsmith_f_op_f32(arg_1.c.a.b * -1604f), true))))), -2194f);
    var var_1 = _wgslsmith_sub_vec3_i32(select(global1.wyx, -vec3<i32>(2147483647i, arg_1.c.b, -19166i) << (arg_1.a % vec3<u32>(32u)), !vec3<bool>(27854u < arg_1.c.c, all(vec4<bool>(false, false, arg_1.b, arg_2.x)), any(vec4<bool>(arg_2.x, arg_2.x, true, true)))), global1.yww);
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * -117f), 1f, _wgslsmith_f_op_f32(abs(411f)), _wgslsmith_f_op_f32(1104f + var_0.x))))));
    var var_3 = select(arg_2, arg_2, 1f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.x))));
    var var_4 = ~vec2<u32>(~arg_1.a.x, ~arg_1.d);
    return 1u;
}

fn func_2(arg_0: vec3<i32>) -> Struct_4 {
    global0 = ~abs(~0u);
    let var_0 = Struct_5(vec4<u32>(countOneBits(_wgslsmith_mult_u32(6458u, select(4294967295u, 4294967295u, true))), 1u << (1u % 32u), 0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(9728u, 0u, 4294967295u), ~vec3<u32>(1u, 49491u, 21816u)) >> (1u % 32u)), Struct_4(vec3<u32>(~func_3(u_input.a, Struct_4(vec3<u32>(4294967295u, 130774u, 124735u), true, Struct_3(Struct_1(u_input.a, 1311f), global1.x, 28778u), 4294967295u), vec3<bool>(true, true, true)), 26519u, 1u), !any(vec2<bool>(true, false)), Struct_3(Struct_1(firstTrailingBit(-7297i), _wgslsmith_div_f32(-544f, 1000f)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_0.x, 17520i), 0i), ~0u), 10151u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -768f) - _wgslsmith_f_op_f32(f32(-1f) * -436f)), _wgslsmith_f_op_f32(1400f * 307f))), Struct_2(Struct_1(_wgslsmith_sub_i32(1i, i32(-1i) * -2147483647i), -1067f), select(vec3<i32>(~1i, i32(-1i) * -6104i, 2147483647i), ~select(arg_0, global1.yxw, vec3<bool>(true, true, true)), true), ~(~_wgslsmith_clamp_u32(4294967295u, 24471u, 4294967295u)), firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(119298u, 0u, 4294967295u), vec3<u32>(0u, 1u, 0u), vec3<u32>(54845u, 1u, 57008u))) >> (_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(1u, 0u, 1u)), vec3<u32>(1u, 115611u, 4294967295u)) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-633f, -1000f) * vec2<f32>(-124f, -214f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-762f, 832f)))))));
    global0 = func_3(arg_0.x, Struct_4(_wgslsmith_mult_vec3_u32(~select(var_0.a.zxz, vec3<u32>(0u, var_0.b.c.c, 4294967295u), var_0.b.b), firstLeadingBit(abs(var_0.b.a))), var_0.b.b, var_0.b.c, ~func_3(~var_0.b.c.b, Struct_4(var_0.a.zwy, true, var_0.b.c, 63800u), vec3<bool>(var_0.b.b, var_0.b.b, true))), select(select(!select(vec3<bool>(var_0.b.b, true, var_0.b.b), vec3<bool>(true, var_0.b.b, false), vec3<bool>(true, var_0.b.b, var_0.b.b)), select(vec3<bool>(var_0.b.b, false, var_0.b.b), !vec3<bool>(var_0.b.b, var_0.b.b, var_0.b.b), select(vec3<bool>(false, false, var_0.b.b), vec3<bool>(var_0.b.b, var_0.b.b, false), vec3<bool>(true, var_0.b.b, false))), !(!vec3<bool>(var_0.b.b, false, var_0.b.b))), vec3<bool>(true, true, true), vec3<bool>(var_0.b.b, var_0.b.b, any(vec3<bool>(var_0.b.b, false, false)))));
    let var_1 = Struct_3(var_0.d.a, ~_wgslsmith_div_i32(-min(-1i, -2147483647i), firstLeadingBit(arg_0.x) & 2147483647i), var_0.b.c.c);
    let var_2 = var_0.b;
    return var_2;
}

fn func_1(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: bool, arg_3: vec4<bool>) -> u32 {
    let var_0 = Struct_5(vec4<u32>(4294967295u, arg_0.c, ~42471u, _wgslsmith_clamp_u32(~0u, _wgslsmith_add_u32(0u, arg_0.c), 1u)), func_2(~vec3<i32>(26220i ^ arg_1.x, u_input.a, _wgslsmith_add_i32(arg_1.x, arg_1.x))), arg_0.a.b, Struct_2(arg_0.a, _wgslsmith_sub_vec3_i32(abs(vec3<i32>(0i, -19187i, arg_1.x) & vec3<i32>(arg_1.x, -2147483647i, global1.x)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -1603i), arg_1), 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global1.x, global1.x, -33519i), vec4<i32>(arg_1.x, arg_0.b, 6992i, arg_1.x)))), 4294967295u, _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.c, 18307u, arg_0.c), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, arg_0.c, 0u), vec3<u32>(1u, arg_0.c, arg_0.c), vec3<u32>(1u, 92525u, 0u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1081f, 641f) - vec2<f32>(arg_0.a.b, arg_0.a.b)) * vec2<f32>(-350f, arg_0.a.b)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.a.b, 1541f))), vec2<f32>(3215f, 231f)))));
    global1 = ~vec4<i32>(global1.x, -global1.x, ~global1.x, -1i) << (_wgslsmith_clamp_vec4_u32(var_0.a, var_0.a, vec4<u32>(3987u, func_2(vec3<i32>(1i, global1.x, -45069i)).d, ~_wgslsmith_clamp_u32(0u, var_0.a.x, 31816u), firstTrailingBit(arg_0.c >> (34585u % 32u)))) % vec4<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 587f, 759f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-922f, var_0.c, var_0.c))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-290f, 1094f, var_0.c)))))));
    global0 = _wgslsmith_mod_u32(reverseBits(~(var_0.b.a.x >> (32703u % 32u))), 1u);
    global0 = 42545u;
    return reverseBits(31503u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_div_u32(~18523u, ~1u), _wgslsmith_sub_u32(~37559u, func_1(Struct_3(Struct_1(global1.x, -993f), u_input.a, 6343u), vec2<i32>(u_input.a, 69090i), false, vec4<bool>(false, false, false, true))), ~(~1u)), vec3<u32>(_wgslsmith_mult_u32(max(4294967295u, 1u), select(1u, ~10601u, true)), _wgslsmith_sub_u32(1u, ~4294967295u), ~0u));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-157f, -422f, _wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_div_f32(1000f, -1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-336f, -971f, 994f, -2911f))))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-348f, 354f, 2304f, 1945f)) - vec4<f32>(151f, -1069f, 1348f, 1682f))))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, vec4<i32>(global1.x, ~(~_wgslsmith_clamp_i32(u_input.a, global1.x, u_input.a)), max(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a, u_input.a, 0i), vec4<i32>(global1.x, -48660i, u_input.a, 2078i)) ^ global1.x, -1i), _wgslsmith_sub_i32(global1.x, 25620i)));
}

