struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec4<i32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec2<i32>(44977i, -51245i), Struct_2(Struct_1(43652u, vec4<f32>(618f, 873f, -916f, 101f), vec4<f32>(669f, 463f, 1572f, 629f)), Struct_1(1u, vec4<f32>(-153f, -1000f, -1000f, -152f), vec4<f32>(-948f, 1995f, -238f, 1000f)), Struct_1(0u, vec4<f32>(562f, 536f, -951f, -1397f), vec4<f32>(1778f, -469f, -794f, -1363f)), vec2<u32>(40356u, 35099u), Struct_1(1u, vec4<f32>(-977f, -961f, -1013f, -594f), vec4<f32>(788f, 315f, -765f, 1145f))), vec4<i32>(-1i, 15536i, 44908i, 1i), vec4<bool>(false, true, true, true));

var<private> global1: bool = false;

var<private> global2: array<vec2<i32>, 18> = array<vec2<i32>, 18>(vec2<i32>(i32(-2147483648), 1i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(i32(-2147483648), -39585i), vec2<i32>(-1i, -23192i), vec2<i32>(i32(-2147483648), -5156i), vec2<i32>(i32(-2147483648), -13575i), vec2<i32>(0i, -3472i), vec2<i32>(2147483647i, 0i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -53606i), vec2<i32>(-19919i, 2147483647i), vec2<i32>(6544i, -1i), vec2<i32>(21591i, -21845i), vec2<i32>(-14714i, 28946i), vec2<i32>(0i, -24686i), vec2<i32>(34015i, 2147483647i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-5554i, i32(-2147483648)));

var<private> global3: array<vec3<i32>, 1>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> i32 {
    global2 = array<vec2<i32>, 18>();
    var var_0 = global0.b.b;
    let var_1 = select(vec2<bool>(global0.d.x, true), select(!global0.d.ww, !global0.d.yw, vec2<bool>(!global0.d.x, false)), !global0.d.zx);
    global1 = true;
    var var_2 = true;
    return 9660i;
}

fn func_2() -> Struct_4 {
    global2 = array<vec2<i32>, 18>();
    var var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(-8129i, -global0.a.x, 13125i, -_wgslsmith_mult_i32(0i, -2147483647i)) | -global0.c, vec4<i32>(global0.a.x, func_3(), 1i, ~abs(global0.a.x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.b.a.b.x, 400f, global0.b.a.c.x, global0.b.c.b.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.b.c.b - vec4<f32>(global0.b.c.b.x, -395f, -172f, global0.b.a.c.x)) * _wgslsmith_f_op_vec4_f32(-global0.b.a.b)) * vec4<f32>(2550f, 488f, -107f, 581f)), vec4<bool>(all(!global0.d.zy), !select(false, global0.d.x, false), global0.d.x, global0.d.x))) - _wgslsmith_f_op_vec4_f32(exp2(global0.b.a.c)));
    var var_2 = Struct_4(_wgslsmith_sub_vec2_i32((vec2<i32>(-1i, 20600i) >> (min(global0.b.d, global0.b.d) % vec2<u32>(32u))) >> (reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(43540u, 58116u), global0.b.d)) % vec2<u32>(32u)), -(~_wgslsmith_mod_vec2_i32(vec2<i32>(global0.a.x, 1i), var_0.zy))), global0.b, select(abs(global0.c) | countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(global0.c.x, var_0.x, -43511i, -1i), vec4<i32>(var_0.x, var_0.x, -20854i, -25965i))), firstLeadingBit(select(global0.c, firstTrailingBit(global0.c), true)), global0.d), !(!select(vec4<bool>(true, global0.d.x, global0.d.x, global0.d.x), !global0.d, all(vec4<bool>(global0.d.x, true, false, global0.d.x)))));
    var var_3 = Struct_3(select(!(!(!vec3<bool>(global0.d.x, true, var_2.d.x))), vec3<bool>(true, false, var_2.d.x), true), global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -610f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.b.b.b.x + var_1.x)))) - _wgslsmith_div_f32(_wgslsmith_div_f32(-346f, _wgslsmith_f_op_f32(-459f - -958f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.c.c.x * -835f)))));
    return Struct_4(vec2<i32>(-19275i, abs(_wgslsmith_div_i32(global0.a.x << (global0.b.d.x % 32u), -var_0.x))), Struct_2(global0.b.a, var_3.b.e, var_2.b.b, ~global0.b.d, var_2.b.c), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, var_0.x, 1i, -2172i), global0.c >> (vec4<u32>(4294967295u, u_input.a, var_2.b.b.a, var_2.b.a.a) % vec4<u32>(32u))), global0.c) | ~vec4<i32>(firstTrailingBit(var_0.x), _wgslsmith_mult_i32(var_0.x, 2147483647i), min(var_0.x, 0i), global0.c.x), global0.d);
}

fn func_1(arg_0: f32) -> Struct_3 {
    global2 = array<vec2<i32>, 18>();
    global2 = array<vec2<i32>, 18>();
    let var_0 = global0.b.c.a;
    global0 = func_2();
    global2 = array<vec2<i32>, 18>();
    return Struct_3(!vec3<bool>(all(select(global0.d.ww, vec2<bool>(global0.d.x, global0.d.x), global0.d.ww)), func_2().d.x, true || (global0.b.c.c.x > -137f)), Struct_2(Struct_1(u_input.a, global0.b.a.b, vec4<f32>(-332f, 863f, global0.b.b.b.x, _wgslsmith_f_op_f32(-arg_0))), global0.b.a, global0.b.c, countOneBits(vec2<u32>(35961u, 0u) << (global0.b.d % vec2<u32>(32u))), func_2().b.c), _wgslsmith_f_op_f32(f32(-1f) * -536f));
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_3) -> u32 {
    var var_0 = func_1(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c)), arg_3.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(arg_3.b.a.c.x)), _wgslsmith_f_op_f32(global0.b.a.c.x + -420f))) + arg_1.x)))).b.c;
    global0 = func_2();
    global1 = !func_2().d.x;
    global0 = func_2();
    let var_1 = arg_2;
    return _wgslsmith_clamp_u32(~1u >> (arg_3.b.e.a % 32u), reverseBits(var_0.a << (var_1.a % 32u)), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<i32>, 1>();
    var var_0 = all(vec2<bool>(true, global0.d.x));
    global1 = false;
    var var_1 = abs(1835u);
    var_1 = firstTrailingBit(func_4(46588u, vec2<f32>(global0.b.a.b.x, global0.b.b.b.x), global0.b.a, func_1(_wgslsmith_f_op_f32(-global0.b.c.c.x))) ^ global0.b.d.x);
    let var_2 = func_2();
    var var_3 = var_2;
    let var_4 = Struct_1(_wgslsmith_mod_u32(~1u, select(~(~0u), func_4(_wgslsmith_sub_u32(u_input.a, u_input.a), _wgslsmith_f_op_vec2_f32(-global0.b.c.b.xz), Struct_1(var_2.b.d.x, var_3.b.b.c, vec4<f32>(var_3.b.a.b.x, 450f, -335f, var_2.b.e.c.x)), func_1(1815f)), any(var_2.d.wy))), vec4<f32>(1149f, _wgslsmith_f_op_f32(step(var_3.b.e.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.b.a.c.x))))), var_3.b.e.b.x, _wgslsmith_f_op_f32(floor(var_3.b.a.c.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.c.b.x, -180f, global0.b.c.b.x, 402f)))), global0.b.a.c));
    var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -869f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(461f + var_2.b.c.b.x)))), var_3.b.e.b.xzw);
}

