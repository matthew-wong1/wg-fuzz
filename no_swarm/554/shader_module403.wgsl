struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<i32> = vec2<i32>(28688i, 73322i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: u32, arg_3: f32) -> i32 {
    let var_0 = !(arg_1.x | true) || select(!global0.a, any(global0.c), true);
    var var_1 = global0.b;
    var var_2 = 1i;
    return -1i;
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    global1 = select(vec2<i32>(~func_3(vec2<f32>(global0.b.c, -235f), !vec2<bool>(global0.c.x, false), ~49208u, _wgslsmith_f_op_f32(-1096f + 600f)), 2147483647i), _wgslsmith_div_vec2_i32(vec2<i32>(firstTrailingBit(_wgslsmith_mod_i32(global0.b.b.x, 19382i)), -35376i), (_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(82547i, 17045i)) << (~vec2<u32>(global0.b.a, global0.b.a) % vec2<u32>(32u))) & global0.b.b.xx), !global0.c);
    let var_0 = -vec4<i32>(-2147483647i, 2147483647i, _wgslsmith_dot_vec3_i32(global0.b.b, max(abs(global0.b.b), global0.b.b >> (vec3<u32>(0u, u_input.d, global0.b.a) % vec3<u32>(32u)))), u_input.c);
    var var_1 = Struct_2(false & all(vec4<bool>(true, false, global0.c.x, any(vec3<bool>(global0.c.x, global0.a, global0.a)))), Struct_1(~7570u, global0.b.b, global0.b.c), global0.c);
    global1 = abs(_wgslsmith_div_vec2_i32(var_0.ww, ~(~min(global0.b.b.yx, vec2<i32>(0i, 4934i)))));
    let var_2 = Struct_2(any(global0.c), global0.b, vec2<bool>(any(select(!var_1.c, vec2<bool>(global0.a, global0.c.x), !vec2<bool>(var_1.c.x, var_1.c.x))), !global0.c.x));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1426f), _wgslsmith_f_op_f32(var_1.b.c - _wgslsmith_f_op_f32(-546f + arg_0.x))))));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec2<bool>) -> u32 {
    let var_0 = Struct_1(4294967295u, _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(0i, arg_1.b.b.x), countOneBits(global0.b.b.zy)), global1.x, abs(0i)), arg_1.b.b | global0.b.b), global0.b.c);
    global1 = min(vec2<i32>(_wgslsmith_dot_vec2_i32(-var_0.b.xx, arg_1.b.b.zz), _wgslsmith_dot_vec2_i32(select(-vec2<i32>(var_0.b.x, -36276i), select(vec2<i32>(1i, 5000i), var_0.b.xx, arg_2), vec2<bool>(true, true)), _wgslsmith_mod_vec2_i32(vec2<i32>(global0.b.b.x, -7922i), arg_1.b.b.xy >> (vec2<u32>(0u, global0.b.a) % vec2<u32>(32u))))), ~max(abs(vec2<i32>(arg_1.b.b.x, u_input.c)), -vec2<i32>(u_input.c, arg_1.b.b.x)));
    global0 = Struct_2(all(select(global0.c, global0.c, !vec2<bool>(false, arg_1.a))), Struct_1(min(55626u, global0.b.a), firstLeadingBit(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(global0.b.b, vec3<i32>(-44205i, 0i, global1.x)), global0.b.b)), 412f), select(vec2<bool>(any(!vec3<bool>(global0.c.x, arg_1.a, arg_2.x)), false), vec2<bool>(global0.c.x, all(select(vec4<bool>(arg_2.x, arg_1.a, arg_1.c.x, true), vec4<bool>(arg_2.x, true, true, global0.a), vec4<bool>(false, true, true, global0.a)))), global0.c));
    let var_1 = !(!vec3<bool>(!arg_1.c.x && !arg_2.x, true, false));
    global0 = Struct_2(var_1.x, Struct_1(_wgslsmith_sub_u32(global0.b.a, global0.b.a), select(arg_1.b.b, _wgslsmith_mod_vec3_i32(abs(arg_1.b.b), -vec3<i32>(0i, -1i, -25447i)), _wgslsmith_dot_vec2_u32(vec2<u32>(27377u, global0.b.a), vec2<u32>(arg_1.b.a, 1u)) >= var_0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(247f)), _wgslsmith_f_op_f32(f32(-1f) * -382f))), var_1.xy);
    return abs(~abs(global0.b.a));
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    let var_0 = abs(global0.b.b.x);
    var var_1 = Struct_1(func_4(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.c, 1139f, global0.b.c)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.b.c, global0.b.c, -821f), vec3<f32>(global0.b.c, global0.b.c, 289f)))))), Struct_2(false, Struct_1(_wgslsmith_div_u32(32412u, 4294967295u), _wgslsmith_mult_vec3_i32(global0.b.b, global0.b.b), _wgslsmith_f_op_f32(floor(global0.b.c))), select(arg_0.xw, select(arg_0.xw, global0.c, false), vec2<bool>(true, true))), !global0.c), global0.b.b, _wgslsmith_f_op_f32(-global0.b.c));
    var_1 = global0.b;
    global0 = Struct_2((-1i & var_1.b.x) != ((global0.b.b.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-7406i, -67278i, -33984i, global1.x), vec4<i32>(6580i, -8492i, var_1.b.x, u_input.c))) >> (countOneBits(~1u) % 32u)), Struct_1(abs(1u), min(vec3<i32>(min(-9085i, var_0), var_1.b.x ^ 2147483647i, 10536i), var_1.b), 188f), select(!arg_0.zy, vec2<bool>(global0.c.x, true), select(all(vec4<bool>(false, true, false, arg_0.x)), true, true)));
    let var_2 = global0.b;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(826f, 173f))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(abs(4702i & global1.x), global0.b.b.x), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, u_input.c, 28412i), vec3<i32>(14479i, -1i, u_input.c)), _wgslsmith_mod_vec3_i32(vec3<i32>(global0.b.b.x, global1.x, 2147483647i), global0.b.b)), min(~global0.b.b, firstLeadingBit(vec3<i32>(u_input.c, global1.x, global1.x))))), u_input.c | u_input.c);
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.c, global0.b.c)) - _wgslsmith_div_vec2_f32(vec2<f32>(-209f, global0.b.c), vec2<f32>(global0.b.c, 1529f)))) - vec2<f32>(_wgslsmith_f_op_f32(func_1(vec4<bool>(true, false, false, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.c), _wgslsmith_f_op_f32(trunc(global0.b.c))))) * vec2<f32>(_wgslsmith_f_op_f32(floor(317f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-322f * _wgslsmith_div_f32(global0.b.c, -970f))))));
    var var_1 = 1i;
    let var_2 = _wgslsmith_div_i32(countOneBits(global1.x), u_input.c);
    var var_3 = global0.b;
    var var_4 = _wgslsmith_div_f32(global0.b.c, global0.b.c);
    global0 = Struct_2(false, global0.b, select(!(!select(global0.c, global0.c, vec2<bool>(global0.a, global0.a))), vec2<bool>(all(select(vec4<bool>(global0.c.x, global0.c.x, false, global0.c.x), vec4<bool>(false, true, global0.c.x, false), vec4<bool>(true, false, global0.a, true))), true), select(vec2<bool>(any(vec2<bool>(true, global0.c.x)), select(true, global0.a, false)), select(select(global0.c, global0.c, true), !global0.c, select(vec2<bool>(true, true), global0.c, vec2<bool>(global0.a, false))), vec2<bool>(all(global0.c), !global0.a))));
    let var_5 = global0.b;
    var var_6 = Struct_1(_wgslsmith_mult_u32(func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-710f)), _wgslsmith_f_op_f32(-var_0.x)), Struct_2(any(vec4<bool>(false, global0.a, true, true)), Struct_1(u_input.d, var_5.b, -393f), vec2<bool>(global0.a, global0.c.x)), vec2<bool>(!global0.c.x, !global0.a)), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_5.a, var_5.a, 0u), firstTrailingBit(vec3<u32>(16526u, global0.b.a, global0.b.a))) ^ var_5.a), abs(global0.b.b), _wgslsmith_f_op_f32(-500f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c << (19152u % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), 730f)), var_6.c, true)) * _wgslsmith_div_f32(751f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -456f)))));
}

