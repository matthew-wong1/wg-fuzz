struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: f32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(2147483647i, -35343i);

var<private> global1: i32 = 2147483647i;

var<private> global2: vec2<f32> = vec2<f32>(334f, -279f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: vec2<u32>) -> i32 {
    let var_0 = arg_2.x;
    let var_1 = Struct_3(_wgslsmith_sub_u32(~(~46080u), ~(47183u | arg_2.x)) << (~13882u % 32u), ((_wgslsmith_dot_vec2_u32(arg_2, vec2<u32>(arg_2.x, var_0)) | 40219u) ^ 17181u) | _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(arg_2, select(vec2<u32>(113634u, 1u), arg_2, false)), (arg_2.x << (var_0 % 32u)) & max(arg_2.x, var_0)), Struct_2(!(!vec3<bool>(arg_0.b, arg_0.b, true)), Struct_1(-30142i, -541f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, arg_0.c, global2.x), vec3<f32>(arg_0.a, -318f, arg_0.c))))));
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1897f, arg_0.a)), _wgslsmith_f_op_vec2_f32(-arg_1), select(var_1.c.a.zz, vec2<bool>(var_1.c.a.x, arg_0.b), vec2<bool>(var_1.c.a.x, false)))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.c.b.b, 804f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_1.c.b.c.xy), arg_1))))));
    let var_2 = _wgslsmith_f_op_f32(global2.x * -389f);
    var var_3 = abs(countOneBits(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.b.zx, -u_input.b.zx), select(_wgslsmith_mult_i32(1i, -57462i), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, -2147483647i), vec2<i32>(global0.x, u_input.b.x)), false), _wgslsmith_div_i32(u_input.a, u_input.b.x) & (var_1.c.b.a | u_input.b.x), ~(var_1.c.b.a | var_1.c.b.a))));
    return var_3.x;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.b.c.x), global2.x)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.x))));
    var var_1 = ~5494u;
    let var_2 = Struct_1(~arg_2.b.a, arg_1.b.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, _wgslsmith_f_op_f32(-var_0.c), -348f))));
    var_1 = 0u;
    global2 = vec2<f32>(_wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.b.c.x))))), _wgslsmith_f_op_f32(-var_0.a));
    return 9765i;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec4<i32>) -> vec2<i32> {
    var var_0 = arg_1.c;
    let var_1 = ~(~arg_0.b.a ^ ~_wgslsmith_dot_vec2_i32(-u_input.b.zy, ~arg_3.xx));
    return _wgslsmith_sub_vec2_i32(-(vec2<i32>(-arg_3.x, 1i) | ~abs(vec2<i32>(arg_3.x, arg_1.a))), _wgslsmith_clamp_vec2_i32(vec2<i32>(func_4(func_3(Struct_4(arg_0.b.c.x, arg_0.a.x, var_0.x), vec2<f32>(-1133f, arg_0.b.c.x), vec2<u32>(4294967295u, 15955u)), arg_0, arg_0), var_1), abs(_wgslsmith_add_vec2_i32(arg_3.yx, u_input.b.xx)) & _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(arg_3.zz, u_input.b.yy), max(vec2<i32>(-11524i, -7118i), vec2<i32>(arg_1.a, global0.x))), countOneBits(_wgslsmith_add_vec2_i32(~vec2<i32>(arg_1.a, arg_0.b.a), countOneBits(u_input.b.yz)))));
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    return Struct_1(-1i, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))), _wgslsmith_f_op_vec3_f32(abs(arg_0.c)));
}

fn func_1(arg_0: bool) -> Struct_3 {
    var var_0 = func_5(Struct_1(_wgslsmith_dot_vec2_i32(u_input.b.yz, func_2(Struct_2(vec3<bool>(true, false, arg_0), Struct_1(u_input.b.x, -746f, vec3<f32>(global2.x, 1230f, 834f))), Struct_1(u_input.b.x, -501f, vec3<f32>(global2.x, global2.x, -685f)), _wgslsmith_div_vec3_u32(vec3<u32>(5681u, 30186u, 7076u), vec3<u32>(1u, 41986u, 1u)), select(vec4<i32>(-19758i, global0.x, -46051i, 73278i), vec4<i32>(global0.x, global0.x, 0i, 34614i), arg_0))), global2.x, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, 1790f, -1004f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1345f, global2.x, global2.x)))))), -2147483647i);
    let var_1 = vec2<bool>(arg_0, true && !arg_0);
    let var_2 = -618f;
    var var_3 = Struct_2(vec3<bool>(true, true, true), Struct_1(-_wgslsmith_sub_i32(var_0.a, var_0.a) ^ (~(-564i) << (_wgslsmith_add_u32(0u, 1u) % 32u)), _wgslsmith_f_op_f32(f32(-1f) * -1128f), func_5(Struct_1(global0.x & global0.x, _wgslsmith_f_op_f32(-2020f + 456f), var_0.c), 24062i).c));
    var var_4 = var_3.b;
    return Struct_3(~_wgslsmith_div_u32(firstLeadingBit(90456u) & _wgslsmith_dot_vec3_u32(vec3<u32>(24641u, 0u, 2807u), vec3<u32>(1u, 1u, 1u)), countOneBits(~0u)), ~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 34529u), vec2<u32>(44967u, 4294967295u)), abs(max(1u, 0u))), Struct_2(var_3.a, func_5(var_3.b, min(u_input.a, 1i))));
}

fn func_6(arg_0: u32, arg_1: Struct_3, arg_2: bool) -> Struct_5 {
    global0 = func_2(arg_1.c, Struct_1(-(i32(-1i) * -31120i), arg_1.c.b.b, arg_1.c.b.c), ~(~vec3<u32>(arg_0, 29778u, arg_0)) << (~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, arg_0, arg_1.a), vec3<u32>(27698u, 0u, arg_1.a)) % vec3<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.c.b.a, 53329i, global0.x, 1i), vec4<i32>(-1i, global0.x, u_input.b.x, -41193i) >> (vec4<u32>(arg_1.a, arg_0, arg_1.b, 4294967295u) % vec4<u32>(32u))) << (_wgslsmith_sub_vec4_u32(min(vec4<u32>(arg_0, arg_0, arg_1.a, 73984u), vec4<u32>(1u, arg_0, arg_0, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, arg_1.b, 4294967295u, 4294967295u), vec4<u32>(33995u, 0u, 21074u, arg_1.a))) % vec4<u32>(32u))) >> (_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(firstTrailingBit(select(vec2<u32>(arg_1.b, 60157u), vec2<u32>(6285u, 4294967295u), arg_1.c.a.x)), ~abs(vec2<u32>(0u, 98368u))), countOneBits(vec2<u32>(firstLeadingBit(arg_1.b), arg_0))) % vec2<u32>(32u));
    global0 = vec2<i32>(abs(1i), func_4(~u_input.b.x, arg_1.c, arg_1.c));
    return Struct_5(-vec2<i32>(1i, 1i), u_input.b, arg_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.x;
    let var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 124f) + global2.x), !(!any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_2 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -190f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-648f, var_1.a))), global2.x)));
    let var_3 = func_6(1u, func_1(var_1.b), false);
    let var_4 = Struct_2(vec3<bool>(var_3.c.a.x, !(!var_1.b), var_1.b), var_3.c.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_3.b.x, u_input.c, _wgslsmith_div_i32(0i, 23093i)), u_input.b, ~max(~(~11108u), 1u), ~(~countOneBits(vec3<i32>(var_3.c.b.a, 2147483647i, 2147483647i)) | ((var_3.b ^ var_3.b) ^ u_input.b)));
}

