struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: vec4<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(0u, vec4<f32>(788f, 466f, 209f, 462f)), Struct_1(3410u, vec4<f32>(337f, -1096f, 1742f, -1000f)));

var<private> global1: f32;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> vec3<u32> {
    global0 = Struct_3(arg_1.d, Struct_1(16745u, global0.a.b));
    let var_0 = _wgslsmith_f_op_vec2_f32(-arg_1.b.b.zw);
    global0 = Struct_3(Struct_1(global0.b.a, arg_0.b), arg_1.d);
    global1 = _wgslsmith_f_op_f32(arg_1.c.b.x - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-230f)) - arg_0.b.x))));
    let var_1 = ~(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.d, u_input.c.x, u_input.d), -vec4<i32>(u_input.c.x, u_input.d, -2080i, u_input.c.x)), u_input.c) << ((~_wgslsmith_mult_vec4_u32(vec4<u32>(63168u, global0.a.a, arg_1.c.a, arg_0.a), vec4<u32>(arg_0.a, 4294967295u, u_input.a.x, global0.a.a)) | vec4<u32>(global0.a.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, arg_0.a, u_input.a.x, global0.a.a), vec4<u32>(arg_0.a, 47595u, arg_0.a, arg_0.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.a, 0u, u_input.a.x), vec3<u32>(arg_1.c.a, arg_0.a, 4294967295u)), global0.b.a)) % vec4<u32>(32u)));
    return select(max(vec3<u32>(_wgslsmith_sub_u32(arg_1.c.a, global0.b.a), u_input.a.x, u_input.a.x), vec3<u32>(global0.a.a & 4294967295u, global0.b.a & 50252u, 4294967295u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, global0.a.a, 53285u) >> (vec3<u32>(1u, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), select(vec3<u32>(u_input.a.x, global0.b.a, global0.a.a), vec3<u32>(u_input.a.x, global0.a.a, arg_1.d.a), vec3<bool>(true, arg_2, false))), !select(select(vec3<bool>(arg_2, false, arg_2), vec3<bool>(true, false, arg_2), vec3<bool>(false, arg_2, false)), select(vec3<bool>(true, true, arg_2), vec3<bool>(arg_2, arg_2, arg_2), arg_2), arg_2)) ^ ~vec3<u32>(1466u, ~reverseBits(13051u), 4294967295u);
}

fn func_2() -> f32 {
    var var_0 = Struct_3(Struct_1(~global0.a.a, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(310f * global0.a.b.x), _wgslsmith_div_f32(global0.a.b.x, global0.b.b.x), global0.b.b.x, _wgslsmith_f_op_f32(-global0.b.b.x))))), global0.b);
    global0 = Struct_3(Struct_1(select(_wgslsmith_dot_vec3_u32(func_3(Struct_1(0u, vec4<f32>(-384f, 558f, 1217f, 155f)), Struct_2(var_0.a.b.x, Struct_1(41240u, vec4<f32>(global0.b.b.x, 495f, 1226f, -195f)), global0.a, Struct_1(var_0.a.a, var_0.a.b)), false), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, var_0.a.a), vec3<u32>(0u, 0u, global0.b.a))), 0u, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.b.x, -184f, global0.a.b.x, var_0.a.b.x), global0.b.b, vec4<bool>(true, false, true, true)))) - var_0.a.b)), global0.a);
    let var_1 = Struct_3(Struct_1(0u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b.b))), var_0.b);
    let var_2 = Struct_1(var_0.a.a, global0.b.b);
    var var_3 = ~_wgslsmith_sub_u32(~(global0.a.a ^ var_0.a.a), var_2.a) == var_1.b.a;
    return -1657f;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: u32) -> f32 {
    let var_0 = Struct_2(413f, Struct_1(u_input.a.x, _wgslsmith_f_op_vec4_f32(-arg_1.c.b)), Struct_1(arg_1.b.a >> (65328u % 32u), arg_1.d.b), arg_1.c);
    let var_1 = Struct_3(arg_1.d, Struct_1(76580u | global0.b.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.b.b.x, arg_1.b.b.x, -1256f, 999f)))) - _wgslsmith_f_op_vec4_f32(abs(global0.b.b)))));
    global0 = var_1;
    global0 = var_1;
    var var_2 = select(vec2<bool>((_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_2, 8019u, 58771u), vec4<u32>(global0.b.a, 0u, global0.a.a, 39047u)) & 1u) > (arg_2 >> (0u % 32u)), !(all(vec2<bool>(false, true)) | all(vec3<bool>(true, false, true)))), select(vec2<bool>(false, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, -52100i < arg_0.x)), vec2<bool>(!any(vec4<bool>(false, true, true, true)), (-1i > arg_0.x) == (0i != arg_0.x))), !(!any(vec2<bool>(true, false))));
    return var_0.a;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<i32>) -> vec3<bool> {
    global0 = Struct_3(Struct_1(~0u, global0.a.b), global0.a);
    global1 = _wgslsmith_f_op_f32(func_4(vec4<i32>(-2147483647i, firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_1.x, arg_1.x), 2147483647i)), ~arg_1.x, _wgslsmith_mod_i32(u_input.b, -1i) >> (0u % 32u)), Struct_2(_wgslsmith_f_op_f32(func_2()), global0.a, Struct_1(1u, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.b.b.x, 264f, -519f, -110f)))), global0.a), arg_0.x));
    var var_0 = 4294967295u;
    var var_1 = Struct_3(Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(~arg_0.x, ~u_input.a.x, ~u_input.a.x, _wgslsmith_mult_u32(4294967295u, 0u)), vec4<u32>(_wgslsmith_mult_u32(arg_0.x, arg_0.x), u_input.a.x, max(0u, arg_0.x), global0.b.a)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(global0.b.b + vec4<f32>(1268f, 117f, global0.b.b.x, -154f)), global0.b.b))))), global0.b);
    global0 = Struct_3(Struct_1(select(~reverseBits(1u), abs(select(66909u, arg_0.x, false)), !any(vec3<bool>(false, false, true))), vec4<f32>(-1003f, _wgslsmith_f_op_f32(f32(-1f) * -557f), global0.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-642f - -517f)))), global0.a);
    return select(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), !vec3<bool>(false, true, all(vec2<bool>(true, true))), vec3<bool>(all(vec3<bool>(false, false, true)), all(vec3<bool>(true, false, true)), true)), vec3<bool>(any(vec3<bool>(any(vec2<bool>(true, true)), var_1.b.b.x >= -109f, true)), !(firstLeadingBit(u_input.d) <= arg_1.x), !(!all(vec4<bool>(true, false, true, false)))), vec3<bool>(all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), false)) | (_wgslsmith_clamp_u32(4294967295u, global0.b.a, var_1.b.a) > arg_0.x), all(vec4<bool>(true, 77666i < u_input.c.x, true, false)), firstLeadingBit(arg_1.x) >= 14220i));
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: vec3<f32>, arg_3: vec4<u32>) -> Struct_1 {
    global0 = Struct_3(global0.b, Struct_1(global0.b.a, global0.b.b));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(720f, arg_2.x))) + global0.b.b.x);
    var var_0 = arg_0;
    var var_1 = Struct_2(arg_2.x, global0.b, Struct_1(11148u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.b.x, _wgslsmith_f_op_f32(arg_2.x + arg_2.x), _wgslsmith_f_op_f32(abs(arg_2.x)), global0.a.b.x))), global0.b);
    let var_2 = _wgslsmith_dot_vec4_i32(min(vec4<i32>(_wgslsmith_div_i32(arg_1 & arg_1, ~u_input.b), select(-12347i & u_input.d, 11601i, true), 1i, ~1i), vec4<i32>(~u_input.b, _wgslsmith_div_i32(u_input.d, 38400i), countOneBits(-37778i), u_input.b) << (vec4<u32>(50136u, 4527u, var_1.c.a >> (var_1.d.a % 32u), firstLeadingBit(1u)) % vec4<u32>(32u))), vec4<i32>(abs(arg_1), u_input.b, -max(~14814i, _wgslsmith_add_i32(-23172i, 1i)), -countOneBits(arg_1)));
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.b.b.zx - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b.b.xx))) + global0.b.b.yy);
    global0 = Struct_3(func_5(false, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -75489i), u_input.c.zw), u_input.b, 37942i) << (~global0.b.a % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1000f, 1989f) - vec3<f32>(-1180f, -721f, -104f)) * _wgslsmith_f_op_vec3_f32(-global0.a.b.yzx)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.b.b.x, var_0.x, 2148f), vec3<f32>(global0.b.b.x, var_0.x, 162f), func_1(vec4<u32>(11921u, 27985u, 11500u, u_input.a.x), u_input.c)))), vec4<u32>(global0.b.a, global0.a.a, ~reverseBits(104639u), select(1u, max(global0.b.a, global0.a.a), false))), global0.a);
    var var_1 = vec4<f32>(global0.b.b.x, _wgslsmith_f_op_f32(f32(-1f) * -903f), 554f, _wgslsmith_f_op_f32(-452f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(u_input.c, Struct_2(global0.a.b.x, Struct_1(4294967295u, global0.b.b), global0.a, global0.a), global0.b.a))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -260f)))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_1.x, global0.b.b.x)))) + var_1.x);
    global1 = _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(round(-745f))));
    let var_2 = func_5(!(_wgslsmith_dot_vec4_i32(u_input.c, _wgslsmith_add_vec4_i32(vec4<i32>(61683i, 34977i, u_input.b, 69132i), vec4<i32>(u_input.c.x, u_input.d, 0i, u_input.c.x))) == u_input.d), _wgslsmith_mult_i32(max(2147483647i, _wgslsmith_mod_i32(-1309i, u_input.b)), -u_input.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(round(281f)), _wgslsmith_f_op_f32(-638f - var_0.x), _wgslsmith_div_f32(-1000f, 1000f))))), vec4<u32>(~(~_wgslsmith_clamp_u32(0u, global0.a.a, u_input.a.x)), 36292u, global0.b.a, abs(global0.b.a)));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(674f, global0.b.b.x, true)))), 217f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x + var_2.b.x)), _wgslsmith_div_f32(-1263f, 1234f))) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(var_2.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-210f, global0.b.b.x, var_1.x, -1353f), var_2.b))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.a.b.x + var_2.b.x), _wgslsmith_f_op_f32(f32(-1f) * -618f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1138f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(790f - var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -483f) + 1147f))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_5(true, ~u_input.c.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -1697f, var_2.b.x) * global0.b.b.zxy), countOneBits(vec4<u32>(0u, var_2.a, global0.b.a, 33383u))).b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1393f, -2316f) + _wgslsmith_f_op_f32(f32(-1f) * -919f)))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1113f * func_5(false, u_input.c.x, var_3.wxz, vec4<u32>(4373u, global0.b.a, 61452u, u_input.a.x)).b.x)))));
    var var_4 = _wgslsmith_add_i32(min(2147483647i, u_input.b), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_4(u_input.c, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1124f)) - _wgslsmith_f_op_f32(-var_1.x)), Struct_1(_wgslsmith_clamp_u32(var_2.a, global0.a.a, var_2.a), _wgslsmith_f_op_vec4_f32(exp2(var_2.b))), var_2, func_5(true, u_input.d, var_2.b.zwx, ~vec4<u32>(2869u, var_2.a, u_input.a.x, 3138u))), 0u)), vec2<i32>(_wgslsmith_add_i32(-2147483647i, 2147483647i) | ~_wgslsmith_dot_vec2_i32(u_input.c.wy, vec2<i32>(16921i, u_input.b)), 17993i >> (_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_2.a, 38645u, 0u), vec3<u32>(4294967295u, 4294967295u, var_2.a)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u, global0.b.a), vec3<u32>(u_input.a.x, global0.b.a, global0.b.a))) % 32u)), var_2.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(global0.a.b))), select(u_input.a >> ((firstLeadingBit(u_input.a) | vec2<u32>(22411u, 48039u)) % vec2<u32>(32u)), select(~u_input.a, ~(~vec2<u32>(var_2.a, global0.b.a)), !any(vec2<bool>(true, false))), func_1(vec4<u32>(26520u, global0.a.a, 0u, ~1u), u_input.c).x));
}

