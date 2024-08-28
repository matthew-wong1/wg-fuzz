struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: bool,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(604f, false), 25166u, 6730i, 33127i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec3<i32>) -> vec4<i32> {
    var var_0 = arg_1.b.a.b;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(350f))))))), arg_0.c.b);
    let var_2 = _wgslsmith_div_f32(1156f, _wgslsmith_f_op_f32(arg_1.b.a.a + _wgslsmith_div_f32(-1703f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1705f, 1376f)))));
    let var_3 = arg_1.b.a;
    var var_4 = arg_1;
    return vec4<i32>(var_4.a.c, _wgslsmith_mult_i32(var_4.a.d, -_wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_2.x), u_input.a.xy)), ~(~var_4.a.d), var_4.a.d) & (u_input.a | ~(~vec4<i32>(var_4.b.c, 50328i, 19404i, global0.d) & u_input.a));
}

fn func_2(arg_0: bool) -> Struct_3 {
    var var_0 = abs(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-17215i, global0.d, 2147483647i, global0.d) | u_input.a, ~countOneBits(vec4<i32>(-6459i, global0.c, global0.d, -6933i))), ~countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, global0.c, u_input.a.x, -76387i), vec4<i32>(u_input.a.x, -2147483647i, global0.c, -2147483647i)))));
    var var_1 = Struct_5(global0.a.a);
    var var_2 = !select(global0.a.b, false, !(global0.b < 4294967295u)) & !(!arg_0 & arg_0);
    var_0 = u_input.a | ~select(-func_3(Struct_2(vec3<f32>(var_1.a, 684f, -599f), 1000f, global0.a, Struct_1(530f, false), global0.b), Struct_4(Struct_3(Struct_1(var_1.a, global0.a.b), global0.b, global0.c, var_0.x), Struct_3(Struct_1(var_1.a, arg_0), 58842u, 37366i, -43995i), true), vec3<i32>(global0.c, global0.c, 4018i)), u_input.a, true);
    var var_3 = true;
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(var_1.a + 561f), arg_0), ~(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b, global0.b, 0u, 25050u) << (vec4<u32>(global0.b, 82117u, 1u, global0.b) % vec4<u32>(32u)), ~vec4<u32>(36999u, global0.b, 38856u, global0.b)) ^ global0.b), _wgslsmith_div_i32(max(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(var_0.xx, vec2<i32>(2147483647i, 0i)), vec2<i32>(global0.d, u_input.a.x)), var_0.x), u_input.a.x), _wgslsmith_add_i32(func_3(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.a, global0.a.a, global0.a.a) * vec3<f32>(var_1.a, var_1.a, -278f)), -218f, Struct_1(global0.a.a, false), global0.a, global0.b), Struct_4(Struct_3(Struct_1(var_1.a, arg_0), global0.b, -81500i, -2147483647i), Struct_3(Struct_1(633f, false), global0.b, -1i, 2147483647i), true), -(var_0.wzx << (vec3<u32>(global0.b, 6841u, 47975u) % vec3<u32>(32u)))).x, 0i));
}

fn func_1() -> Struct_3 {
    global0 = Struct_3(global0.a, global0.b, 34794i, _wgslsmith_add_i32(global0.d, _wgslsmith_div_i32(reverseBits(1i), -35219i)));
    global0 = func_2(true);
    let var_0 = ~abs(u_input.a.x);
    let var_1 = abs(0u << (_wgslsmith_sub_u32(_wgslsmith_div_u32(57380u, 107u) | ~global0.b, 1u) % 32u));
    let var_2 = func_2(!any(vec2<bool>(global0.a.b, all(vec4<bool>(true, global0.a.b, global0.a.b, true)))));
    return Struct_3(var_2.a, ~_wgslsmith_div_u32(var_1, 84895u), -1i, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(_wgslsmith_clamp_i32(-25660i, var_0, u_input.a.x), firstTrailingBit(var_2.d))), u_input.a.zy));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global0 = func_1();
    var var_0 = !vec2<bool>(true, global0.a.b);
    let var_1 = Struct_3(Struct_1(1221f, false), _wgslsmith_sub_u32(~1u, global0.b) << (33463u % 32u), global0.c, ~(~(-23755i)));
    global0 = Struct_3(func_2(global0.a.a < _wgslsmith_f_op_f32(2732f * var_1.a.a)).a, _wgslsmith_dot_vec2_u32(firstTrailingBit(abs(vec2<u32>(var_1.b, var_1.b) & vec2<u32>(31285u, 6660u))), vec2<u32>(_wgslsmith_div_u32(global0.b, func_1().b), global0.b)), func_3(Struct_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-590f, var_1.a.a, var_1.a.a)))), _wgslsmith_f_op_f32(select(global0.a.a, _wgslsmith_f_op_f32(trunc(var_1.a.a)), false)), Struct_1(_wgslsmith_f_op_f32(global0.a.a - 1818f), select(global0.a.b, var_0.x, var_1.a.b)), func_1().a, 0u), Struct_4(Struct_3(func_2(true).a, _wgslsmith_mod_u32(33540u, var_1.b), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d, u_input.a.x, global0.d, 2147483647i), vec4<i32>(var_1.c, -27779i, var_1.c, global0.c)), _wgslsmith_dot_vec4_i32(vec4<i32>(-15744i, u_input.a.x, -12654i, 2147483647i), vec4<i32>(global0.d, var_1.c, var_1.d, global0.c))), func_1(), func_1().a.b), vec3<i32>(-_wgslsmith_sub_i32(-18114i, var_1.c), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, 0i, 2147483647i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.d, u_input.a.x, var_1.d), vec3<i32>(-42186i, 2147483647i, -4734i), u_input.a.zww)), max(global0.c, _wgslsmith_div_i32(2147483647i, 36042i)))).x, global0.d & -u_input.a.x);
    var var_2 = Struct_5(_wgslsmith_div_f32(184f, -190f));
    let var_3 = vec2<bool>(_wgslsmith_div_f32(1061f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2457f)) * -2234f)) <= -562f, true);
    var_2 = Struct_5(_wgslsmith_f_op_f32(-func_2(all(vec4<bool>(true, true, true, true))).a.a));
    var var_4 = Struct_4(var_1, var_1, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(var_2.a, 135f), 437f, global0.a.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-233f, var_1.a.a, var_4.b.a.a) - vec3<f32>(-318f, 406f, var_2.a))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.a.a.a, _wgslsmith_f_op_f32(step(427f, -146f)), -918f) * _wgslsmith_div_vec3_f32(vec3<f32>(-2071f, var_2.a, 818f), vec3<f32>(var_4.b.a.a, global0.a.a, -250f))))));
}

