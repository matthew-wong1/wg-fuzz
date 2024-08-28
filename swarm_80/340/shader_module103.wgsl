struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: vec4<bool>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_3;

var<private> global2: i32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    global0 = 0u;
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2670f * _wgslsmith_f_op_f32(-global1.b.a.x))));
    global2 = max(u_input.a.x >> (70464u % 32u), _wgslsmith_div_i32(global1.c.d.b, (_wgslsmith_div_i32(global1.b.b, 6664i) << (_wgslsmith_add_u32(52993u, 1u) % 32u)) | firstTrailingBit(global1.c.b.b)));
    var var_2 = 78843u;
    return arg_0;
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> vec4<f32> {
    let var_0 = _wgslsmith_mod_vec4_i32(~_wgslsmith_mult_vec4_i32(abs(vec4<i32>(8616i, -2147483647i, u_input.b, -18608i) & vec4<i32>(23124i, -2147483647i, -28790i, 2147483647i)), (vec4<i32>(arg_1.c.b, arg_0, -1i, -50650i) | vec4<i32>(-2952i, 908i, arg_0, 950i)) ^ _wgslsmith_add_vec4_i32(vec4<i32>(arg_1.b.b, -14474i, -37583i, 2147483647i), vec4<i32>(u_input.b, arg_1.d.b, u_input.a.x, 1i))), -(-select(vec4<i32>(-62788i, u_input.b, 1i, -107594i), vec4<i32>(arg_0, 1i, -22220i, arg_0), global1.d) & vec4<i32>(28411i, 1i << (1u % 32u), 1i, ~global1.b.b)));
    var var_1 = countOneBits(select(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), true) << (_wgslsmith_add_vec3_u32(vec3<u32>(firstLeadingBit(46589u), 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 65266u, 1u), vec4<u32>(4294967295u, 11480u, 5529u, 1056u))), min(vec3<u32>(55165u, 739u, 4294967295u), vec3<u32>(1u, 1u, 1u))) % vec3<u32>(32u)));
    var var_2 = func_2(func_2(Struct_1(_wgslsmith_f_op_vec4_f32(-global1.c.c.a), countOneBits(arg_0))));
    let var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.d.a.wwy))));
    let var_4 = u_input.a ^ vec3<i32>(-6533i, u_input.b, global1.c.b.b);
    return global1.c.b.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_2 {
    global1 = Struct_3(arg_0.a, func_2(Struct_1(vec4<f32>(_wgslsmith_div_f32(-1000f, 1185f), _wgslsmith_f_op_f32(select(arg_1.x, -161f, true)), arg_2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1232f)), global1.b.b)), Struct_2(global1.e, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(174f * arg_1.x), -242f, 889f, -1000f), firstTrailingBit(-1i & arg_0.c.b)), func_2(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(global1.c.b.a.x, -1174f, -144f, global1.c.d.a.x), vec4<f32>(1446f, 464f, arg_1.x, arg_2.a.x)), -1i)), arg_0.d), select(!global1.d, global1.d, global1.d), any(!global1.d));
    global1 = Struct_3(!all(select(select(vec3<bool>(false, false, false), vec3<bool>(arg_0.a, arg_0.a, false), true), select(global1.d.xww, global1.d.xyy, false), arg_0.a)), arg_2, Struct_2(true, arg_0.d, arg_0.c, Struct_1(arg_2.a, -8769i)), select(vec4<bool>(true, all(!global1.d.wx), _wgslsmith_div_i32(arg_0.b.b, arg_2.b) < (u_input.b ^ 2147483647i), select(arg_0.a, true, any(global1.d.zwy))), select(select(vec4<bool>(false, global1.a, true, global1.c.a), select(vec4<bool>(global1.d.x, true, arg_0.a, true), vec4<bool>(false, arg_0.a, global1.c.a, arg_0.a), arg_0.a), select(global1.d, vec4<bool>(global1.e, arg_0.a, arg_0.a, false), arg_0.a)), !vec4<bool>(arg_0.a, arg_0.a, false, false), !any(vec4<bool>(true, arg_0.a, false, false))), global1.d), global1.b.b == arg_0.b.b);
    let var_0 = -(0i | u_input.a.x) > u_input.b;
    return global1.c;
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: i32) -> Struct_1 {
    var var_0 = countOneBits(countOneBits(firstTrailingBit(u_input.a & (u_input.a << (vec3<u32>(14797u, 29590u, 0u) % vec3<u32>(32u))))));
    global2 = global1.c.d.b;
    global0 = reverseBits(4375u);
    let var_1 = true && global1.d.x;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-global1.b.a.x) == global1.c.c.a.x, Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(func_2(Struct_1(global1.b.a, 71770i)).a.x, global1.c.d.a.x, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-178f - 1000f)), global1.c.b.a), countOneBits(global1.b.b)), global1.c, !global1.d, arg_1.a);
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_1.b.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d.a.x, var_2.b.a.x, 846f, 266f) * global1.b.a)), arg_1.a))), 1i);
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: vec2<u32>, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_2(false, func_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b.a.x), arg_3.x)), func_4(Struct_2(true, func_2(Struct_1(global1.c.b.a, arg_0)), global1.c.b, global1.b), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1000f, arg_3.x)))), Struct_1(_wgslsmith_f_op_vec4_f32(func_3(arg_0, Struct_2(true, global1.c.d, global1.c.d, global1.b))), 57042i)), vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 9390u, 1u), vec3<u32>(arg_1.x, arg_2.x, arg_2.x)), ~abs(1u), ~_wgslsmith_mod_u32(arg_1.x, arg_1.x)), 2147483647i), func_2(global1.c.d), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.b.a.x, global1.c.c.a.x, global1.c.b.a.x, global1.c.d.a.x) - _wgslsmith_div_vec4_f32(global1.b.a, global1.b.a)), 2147483647i));
    let var_1 = _wgslsmith_mult_vec2_i32(~(~u_input.a.yz), vec2<i32>(func_4(func_4(func_4(Struct_2(var_0.a, global1.b, Struct_1(global1.b.a, global1.b.b), var_0.b), vec2<f32>(arg_3.x, arg_3.x), Struct_1(vec4<f32>(345f, 817f, arg_3.x, -159f), var_0.c.b)), arg_3, Struct_1(vec4<f32>(global1.c.c.a.x, 335f, global1.b.a.x, arg_3.x), -26817i)), vec2<f32>(_wgslsmith_f_op_f32(-1165f - var_0.b.a.x), -834f), Struct_1(var_0.b.a, -1609i)).d.b, 1i));
    var var_2 = 0i;
    var var_3 = vec4<bool>(true, true, global1.a, !any(global1.d));
    var_2 = 27463i;
    return func_5(-274f, func_4(global1.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(282f, _wgslsmith_f_op_f32(f32(-1f) * -279f))), var_0.b), vec3<u32>(~_wgslsmith_mod_u32(arg_2.x ^ 41570u, ~arg_2.x), arg_1.x, ~0u), var_0.d.b);
}

fn func_6(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: u32) -> vec3<i32> {
    var var_0 = false;
    global1 = Struct_3(global1.d.x, func_2(func_4(Struct_2(true, func_1(-21589i, vec2<u32>(arg_2, arg_2), vec2<u32>(arg_2, arg_2), vec2<f32>(global1.b.a.x, 1128f)), arg_0, Struct_1(arg_0.a, global1.b.b)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.a.wx - vec2<f32>(1530f, -1000f)), vec2<f32>(1428f, 1192f)), Struct_1(_wgslsmith_f_op_vec4_f32(-arg_0.a), arg_0.b)).c), func_4(global1.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_0.a.wy)), arg_0.a.yz) * global1.b.a.yx), global1.c.b), select(global1.d, select(vec4<bool>(false, false, true, false), vec4<bool>(false & global1.c.a, true, global1.c.d.a.x >= global1.c.b.a.x, all(global1.d.xy)), global1.e), global1.c.a), 18350i == min(arg_1.x, ~_wgslsmith_mult_i32(28859i, -1i)));
    global1 = Struct_3(true, func_1(_wgslsmith_sub_i32(40044i ^ arg_1.x, -15590i), vec2<u32>(abs(arg_2), (arg_2 & 60450u) & countOneBits(0u)), vec2<u32>(63878u, _wgslsmith_add_u32(11623u, 1u)) | (~vec2<u32>(arg_2, arg_2) << (firstLeadingBit(vec2<u32>(arg_2, 3644u)) % vec2<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(-global1.c.c.a.x), arg_0.a.x)), func_4(func_4(Struct_2(false, arg_0, Struct_1(vec4<f32>(-1471f, -1183f, global1.c.c.a.x, 1320f), arg_1.x), Struct_1(global1.b.a, -1i)), global1.c.b.a.xz, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.d.a.x, 794f, global1.b.a.x, arg_0.a.x)), 50715i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global1.b.a.x, 1149f), _wgslsmith_f_op_f32(min(global1.b.a.x, 466f)))), func_1(u_input.b, max(vec2<u32>(1u, 28681u) >> (vec2<u32>(5532u, arg_2) % vec2<u32>(32u)), ~vec2<u32>(arg_2, arg_2)), select(vec2<u32>(arg_2, 16994u), _wgslsmith_mod_vec2_u32(vec2<u32>(81672u, arg_2), vec2<u32>(1u, arg_2)), true), func_1(countOneBits(u_input.a.x), ~vec2<u32>(arg_2, 1732u), vec2<u32>(arg_2, 47065u), vec2<f32>(772f, global1.b.a.x)).a.wz)), vec4<bool>(-_wgslsmith_mod_i32(-1i, 2147483647i) <= (i32(-1i) * -u_input.a.x), global1.c.a, (~(-2147483647i) >> ((41293u ^ arg_2) % 32u)) < arg_0.b, false), all(!vec3<bool>(global1.e, any(vec4<bool>(global1.d.x, global1.a, global1.e, true)), any(global1.d.wz))));
    return u_input.a;
}

fn func_7(arg_0: vec3<i32>) -> Struct_3 {
    global0 = 0u;
    var var_0 = global1.b;
    var var_1 = arg_0;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(global1.c.c.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(global1.b.a, var_0.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, global1.c.c.a.x, global1.b.a.x) - vec4<f32>(1215f, 418f, global1.b.a.x, var_0.a.x)), all(vec2<bool>(false, false)))), select(select(global1.d, vec4<bool>(false, true, true, global1.d.x), vec4<bool>(global1.a, true, global1.c.a, false)), vec4<bool>(false, true, global1.d.x, true), !global1.c.a))))), var_0.b);
    var var_3 = _wgslsmith_f_op_f32(1327f * var_2.a.x);
    return Struct_3(select(global1.a, ~arg_0.x == max(var_2.b, 14189i), true), global1.b, func_4(Struct_2(all(global1.d), global1.b, Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.b.a.x, var_0.a.x, 135f, global1.c.c.a.x), var_0.a, global1.d)), -15880i >> (0u % 32u)), func_2(Struct_1(var_2.a, var_2.b))), _wgslsmith_f_op_vec2_f32(var_0.a.zx - var_2.a.zw), Struct_1(var_0.a, 1i)), vec4<bool>(true, func_4(global1.c, _wgslsmith_f_op_vec2_f32(ceil(global1.c.d.a.xz)), Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a), func_6(global1.c.c, vec2<i32>(23724i, -2147483647i), 0u).x)).a, false, global1.a), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(func_1(_wgslsmith_div_i32(-39288i, global1.c.c.b ^ global1.b.b), ~vec2<u32>(4294967295u, 4294967295u), ~(~vec2<u32>(3200u, 1u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.b.a.x, global1.b.a.x) - vec2<f32>(963f, global1.b.a.x)))), _wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(11384i, global1.c.c.b)), select(u_input.a.zy, vec2<i32>(-2147483647i, -26975i), vec2<bool>(false, false)) >> (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u))), 1u));
    global0 = ~12089u;
    var var_1 = var_0.d.zxx;
    let var_2 = vec2<u32>(~(~24439u), abs(abs(firstLeadingBit(~67947u))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(abs(-16206i | global1.b.b), func_7(_wgslsmith_div_vec3_i32(u_input.a, u_input.a)).c)).x) * _wgslsmith_f_op_f32(434f - _wgslsmith_f_op_f32(global1.c.c.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1163f))))));
    var var_4 = _wgslsmith_mod_vec3_i32(countOneBits(_wgslsmith_add_vec3_i32(u_input.a & vec3<i32>(13615i, -30662i, -2147483647i), ~vec3<i32>(u_input.b, 1i, 0i))), ~(~vec3<i32>(-1i, -2147483647i, -2147483647i) | u_input.a)) & u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 0u >> (var_2.x % 32u), _wgslsmith_div_u32(var_2.x, ~var_2.x), var_2.x), _wgslsmith_mult_vec4_u32(vec4<u32>(~var_2.x, _wgslsmith_div_u32(var_2.x, var_2.x), ~var_2.x, select(var_2.x, 117660u, global1.a)), _wgslsmith_div_vec4_u32(vec4<u32>(var_2.x, 98747u, 123156u, 0u), vec4<u32>(0u, var_2.x, var_2.x, 51265u)) & vec4<u32>(var_2.x, 11077u, var_2.x, var_2.x))));
}

