struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<bool>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(50174u, -2261i, Struct_1(0u, 177f)), vec2<f32>(922f, 741f), 14280u);

var<private> global1: i32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_5, arg_2: Struct_1, arg_3: f32) -> vec2<bool> {
    global0 = arg_1.a;
    var var_0 = Struct_5(Struct_3(arg_1.a.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b, 587f)))), 0u), vec3<bool>(arg_1.b.x, arg_1.b.x, !((arg_1.b.x && true) & true)), 1i);
    var var_1 = arg_2;
    global1 = 53340i;
    var var_2 = Struct_3(Struct_2(arg_1.a.c, _wgslsmith_sub_i32(0i | u_input.c, global0.a.b << (~4294967295u % 32u)), Struct_1(~u_input.e, _wgslsmith_f_op_f32(-439f + _wgslsmith_f_op_f32(select(global0.a.c.b, 241f, false))))), vec2<f32>(1334f, arg_0), 1u);
    return select(select(!vec2<bool>(any(vec3<bool>(var_0.b.x, var_0.b.x, arg_1.b.x)), any(vec4<bool>(var_0.b.x, true, false, false))), select(var_0.b.yz, !select(var_0.b.yx, arg_1.b.zz, var_0.b.yz), !select(vec2<bool>(true, var_0.b.x), var_0.b.yy, vec2<bool>(arg_1.b.x, true))), !(!arg_1.b.xz)), select(!var_0.b.zx, select(vec2<bool>(true, var_0.b.x), select(arg_1.b.xz, var_0.b.zy, true), select(var_0.b.xz, !vec2<bool>(var_0.b.x, false), select(var_0.b.yx, var_0.b.zx, vec2<bool>(true, true)))), !((var_2.a.b ^ var_0.a.a.b) < u_input.b.x)), false);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec4<bool>, arg_3: Struct_1) -> i32 {
    global0 = Struct_3(global0.a, _wgslsmith_f_op_vec2_f32(-global0.b), 59703u);
    var var_0 = select(vec3<bool>(!arg_0.x, arg_2.x, arg_2.x), !arg_2.zwz, select(!select(select(vec3<bool>(arg_2.x, false, arg_2.x), vec3<bool>(true, arg_0.x, arg_0.x), true), vec3<bool>(true, arg_2.x, true), select(vec3<bool>(arg_2.x, arg_0.x, arg_2.x), vec3<bool>(true, arg_2.x, arg_2.x), vec3<bool>(arg_2.x, false, arg_2.x))), vec3<bool>(!any(vec2<bool>(true, arg_2.x)), arg_2.x, all(select(arg_2, arg_2, vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)))), select(arg_2.xzy, select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), vec3<bool>(any(vec4<bool>(arg_2.x, false, arg_0.x, true)), all(arg_2.wy), true))));
    global1 = ~_wgslsmith_dot_vec4_i32(min(vec4<i32>(countOneBits(u_input.d), u_input.b.x, _wgslsmith_mod_i32(global0.a.b, global0.a.b), u_input.c), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.c, u_input.c, -1561i), vec4<i32>(global0.a.b, 90119i, u_input.c, -2147483647i)), vec4<i32>(45460i, 1i, u_input.b.x, global0.a.b))), -_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, global0.a.b, -1i, 1i), vec4<i32>(global0.a.b, -29150i, global0.a.b, global0.a.b)) << (arg_1 % vec4<u32>(32u)));
    var var_1 = global0.a.c.b;
    var var_2 = Struct_3(Struct_2(arg_1.x, u_input.d, global0.a.c), _wgslsmith_f_op_vec2_f32(-global0.b), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(max(~arg_1.zy, firstLeadingBit(vec2<u32>(0u, 7895u))), arg_1.xw & vec2<u32>(84212u, u_input.e)), firstTrailingBit(_wgslsmith_add_u32(min(global0.c, u_input.a), min(4294967295u, u_input.e)))));
    return _wgslsmith_add_i32(var_2.a.b, global0.a.b) | global0.a.b;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<i32>) -> f32 {
    let var_0 = Struct_3(global0.a, global0.b, 4294967295u);
    global0 = var_0;
    let var_1 = !vec3<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)), !(!any(vec4<bool>(true, false, false, false))), false);
    global0 = Struct_3(global0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.b.x * 746f), _wgslsmith_div_f32(-225f, -830f))), abs(select(u_input.a << (u_input.a % 32u), 4294967295u, !var_1.x)));
    var var_2 = vec2<i32>(func_4(func_3(var_0.a.c.b, Struct_5(var_0, vec3<bool>(var_1.x, var_1.x, true), arg_1.x), Struct_1(u_input.a, 1321f), -1000f), ~_wgslsmith_sub_vec4_u32(vec4<u32>(19079u, u_input.e, var_0.c, global0.a.a), vec4<u32>(12413u, arg_0.x, arg_0.x, 57241u)), select(select(vec4<bool>(true, true, var_1.x, false), vec4<bool>(true, true, false, true), true), !vec4<bool>(true, false, var_1.x, var_1.x), true), Struct_1(select(45694u, 4294967295u, var_1.x), _wgslsmith_f_op_f32(212f - global0.a.c.b))), 0i) & u_input.b.zy;
    return 646f;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_2 {
    global1 = ~(~(-57101i));
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(269f, arg_1.c.b, -517f, 1000f))) + vec4<f32>(_wgslsmith_div_f32(-411f, global0.b.x), global0.a.c.b, arg_1.c.b, _wgslsmith_f_op_f32(select(390f, arg_1.c.b, false)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.c.b, _wgslsmith_f_op_f32(ceil(-1873f)))) - -389f), arg_1.c.b, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1068f), global0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_0, vec4<i32>(-10774i, global0.a.b, u_input.d, global0.a.b))))), _wgslsmith_f_op_f32(-arg_1.c.b)), select(select(vec4<bool>(false, true, true, arg_1.c.a != global0.c), vec4<bool>(true, true, true, true), select(true, false, any(vec3<bool>(true, true, false)))), vec4<bool>(all(func_3(global0.b.x, Struct_5(Struct_3(arg_1, vec2<f32>(global0.b.x, global0.b.x), arg_0.x), vec3<bool>(true, true, false), u_input.d), Struct_1(34201u, -1268f), 723f)), all(vec2<bool>(false, false)), !(global0.a.c.b == global0.b.x), false), true)));
    var var_1 = vec3<u32>(97499u, 20712u, arg_0.x);
    var var_2 = Struct_3(Struct_2(_wgslsmith_div_u32(~max(100666u, global0.a.c.a), 1u), global0.a.b, Struct_1(reverseBits(countOneBits(19917u)), arg_1.c.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - global0.b.x)))), ~(~0u));
    var var_3 = Struct_3(arg_1, var_2.b, 1u);
    return Struct_2(_wgslsmith_dot_vec4_u32(~reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.x, global0.a.a, 4294967295u, var_2.c), vec4<u32>(4294967295u, 59523u, var_1.x, 34814u))), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(73756u, var_3.c, 1u, 42846u)), vec4<u32>(max(1u, 4294967295u), firstLeadingBit(arg_1.c.a), abs(0u), _wgslsmith_mult_u32(var_1.x, global0.c)))), -(var_3.a.b & (_wgslsmith_sub_i32(1i, arg_1.b) | -1i)), Struct_1(var_2.c, _wgslsmith_f_op_f32(max(-455f, var_2.a.c.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_u32(~(~global0.a.c.a), 13046u, _wgslsmith_dot_vec2_u32(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, global0.c), vec2<u32>(1u, 0u))), vec2<u32>(~(~global0.c), u_input.e)));
    var_0 = 72385u;
    let var_1 = global0.c;
    let var_2 = select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), ~min(2147483647i, global0.a.b) <= 891i), vec3<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)), false, (4294967295u > u_input.e) || !(u_input.e <= 4294967295u)), false);
    var var_3 = func_1(_wgslsmith_mod_vec2_u32(~max(vec2<u32>(u_input.e, 34882u), vec2<u32>(u_input.e, 74377u)), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(105348u, global0.a.a), u_input.e), firstTrailingBit(vec2<u32>(18803u, u_input.a)))), global0.a);
    var var_4 = var_3.c;
    let var_5 = ~vec3<u32>(var_4.a, var_3.a, _wgslsmith_mod_u32(u_input.a & global0.c, 1u)) & ~(~firstLeadingBit(vec3<u32>(var_4.a, 4294967295u, var_4.a)) | select(vec3<u32>(8350u, 0u, var_4.a), ~vec3<u32>(global0.a.c.a, global0.c, var_3.a), !var_2.x));
    let var_6 = Struct_4(Struct_1(global0.c, _wgslsmith_f_op_f32(f32(-1f) * -1247f)), global0.a.c, func_1(~_wgslsmith_sub_vec2_u32(select(vec2<u32>(u_input.a, var_4.a), vec2<u32>(var_5.x, global0.a.a), var_2.xz), _wgslsmith_div_vec2_u32(var_5.xx, vec2<u32>(0u, 1u))), global0.a));
    var var_7 = var_6;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -137f), 2138f, var_7.c.b);
}

