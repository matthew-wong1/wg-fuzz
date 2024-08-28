struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec4<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<bool>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), 0i, 34434i);

var<private> global1: i32 = 64680i;

var<private> global2: f32;

var<private> global3: Struct_4 = Struct_4(Struct_3(Struct_1(vec3<bool>(true, false, false), 0u, vec4<i32>(3772i, 2147483647i, 44073i, 55630i), vec4<f32>(2744f, 628f, 1623f, -2200f)), false, Struct_1(vec3<bool>(false, false, false), 67634u, vec4<i32>(-42877i, i32(-2147483648), 0i, 22807i), vec4<f32>(-2129f, 133f, 152f, -3314f)), vec4<bool>(true, false, true, false)), vec2<u32>(50734u, 0u), false);

var<private> global4: f32 = 647f;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool) -> i32 {
    return 1i;
}

fn func_3() -> vec4<bool> {
    let var_0 = global3.a.d.x;
    global1 = u_input.a;
    let var_1 = i32(-1i) * -countOneBits(u_input.c);
    global1 = func_2(((true && !global3.a.b) == true) | !any(vec2<bool>(false, global3.c)));
    global1 = u_input.c;
    return select(select(vec4<bool>(false, true || !global3.a.c.a.x, true, !global3.a.b), !vec4<bool>(all(vec4<bool>(false, false, global3.c, false)), all(vec3<bool>(global3.a.b, global3.c, global3.a.c.a.x)), global3.a.d.x, any(global3.a.d.yx)), select(!select(vec4<bool>(global3.c, false, false, global3.c), global3.a.d, vec4<bool>(true, false, global3.a.c.a.x, global3.a.a.a.x)), !vec4<bool>(true, global3.a.b, global3.c, true), !select(vec4<bool>(true, true, false, global3.c), global3.a.d, vec4<bool>(true, global3.a.d.x, false, global3.a.c.a.x)))), select(global3.a.d, select(!select(vec4<bool>(true, true, false, false), global3.a.d, global3.a.d), !global3.a.d, global3.a.d), vec4<bool>(global3.a.c.a.x, false, !(global0.x > u_input.a), true)), global3.a.d);
}

fn func_4(arg_0: i32, arg_1: vec4<bool>, arg_2: vec3<u32>) -> Struct_2 {
    return Struct_2(vec2<f32>(global3.a.a.d.x, _wgslsmith_f_op_f32(1000f * 1000f)), global3.a.a, select(global3.a.d, select(select(global3.a.d, !arg_1, false), !global3.a.d, func_3().x), !vec4<bool>(arg_1.x, true, true, arg_1.x)), _wgslsmith_div_vec3_u32(arg_2, arg_2));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec4<i32>) -> vec2<i32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(arg_0.d.x)), global3.a.c.d.x);
    var var_1 = vec2<u32>(~18408u, ~0u);
    var var_2 = 6429u;
    let var_3 = arg_0.a.zz;
    let var_4 = Struct_5(func_4(-_wgslsmith_sub_i32(func_2(true), _wgslsmith_clamp_i32(2147483647i, -1i, arg_1.x)), func_3(), vec3<u32>(max(1u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(74726u, arg_0.b, 4294967295u), vec3<u32>(49310u, 52042u, 30712u)) << (~5054u % 32u), global3.b.x)), Struct_2(vec2<f32>(-1577f, _wgslsmith_f_op_f32(667f * arg_0.d.x)), func_4(-1i, vec4<bool>(var_1.x > arg_0.b, !var_3.x, false, true), _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(4294967295u, var_1.x, var_1.x)), _wgslsmith_div_vec3_u32(vec3<u32>(24401u, arg_0.b, 1425u), vec3<u32>(1u, global3.a.a.b, global3.b.x)))).b, vec4<bool>(_wgslsmith_sub_i32(-48811i, arg_0.c.x) <= _wgslsmith_div_i32(21787i, 18285i), true | (var_0.x <= -737f), true, arg_0.a.x), vec3<u32>(var_1.x, ~arg_0.b ^ select(1u, global3.a.c.b, var_3.x), _wgslsmith_mod_u32(u_input.b >> (4294967295u % 32u), 0u))));
    return _wgslsmith_clamp_vec2_i32(select(countOneBits(~global0.zz), -abs(_wgslsmith_div_vec2_i32(vec2<i32>(arg_2.x, 2147483647i), global0.yz)), false), -_wgslsmith_clamp_vec2_i32(arg_1.zx, ~vec2<i32>(-2147483647i, 0i), ~select(vec2<i32>(var_4.a.b.c.x, arg_1.x), vec2<i32>(-2147483647i, -2147483647i), arg_0.a.zx)), vec2<i32>(arg_0.c.x, u_input.a));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: bool) -> f32 {
    let var_0 = arg_0.x;
    var var_1 = ~(~firstLeadingBit(~vec4<u32>(u_input.b, 7532u, 4294967295u, global3.b.x)) | ~(~(~vec4<u32>(1u, 0u, 6338u, 73347u))));
    let var_2 = vec4<i32>(10602i, -2147483647i, select(abs(_wgslsmith_dot_vec4_i32(~global3.a.c.c, vec4<i32>(global0.x, 0i, global0.x, arg_0.x))), firstLeadingBit(~select(arg_0.x, u_input.a, global3.c)), false | (true && arg_2)), _wgslsmith_div_i32(global0.x, 1i));
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1333f, _wgslsmith_f_op_f32(-970f - _wgslsmith_f_op_f32(-global3.a.c.d.x))))), 270f);
    var_1 = _wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(_wgslsmith_sub_u32(u_input.b, 16866u), select(0u, global3.b.x, arg_2), 32408u, _wgslsmith_add_u32(global3.b.x, 0u)) << ((_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.b, 4192u, u_input.b), vec4<u32>(4294967295u, 1u, var_1.x, 0u), vec4<u32>(1u, 1u, 4294967295u, var_1.x)) >> (~vec4<u32>(0u, var_1.x, global3.b.x, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))), select(~vec4<u32>(u_input.b & u_input.b, 4294967295u, func_4(arg_0.x, global3.a.d, var_1.xyx).b.b, 35149u ^ u_input.b), max(~firstLeadingBit(vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x)), ~vec4<u32>(17119u, u_input.b, 62000u, var_1.x) >> (vec4<u32>(5587u, global3.b.x, 47086u, global3.b.x) % vec4<u32>(32u))), vec4<bool>(arg_2, arg_2, global3.c, true)));
    return -949f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global3.a.c.d.x;
    global2 = _wgslsmith_f_op_f32(func_5(vec2<i32>(_wgslsmith_dot_vec2_i32(func_1(global3.a.a, -global3.a.a.c.wzx, -vec4<i32>(0i, 2147483647i, -2147483647i, 0i)), global0.yz), u_input.a), vec4<f32>(global3.a.c.d.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-614f, global3.a.c.d.x, true)), _wgslsmith_f_op_f32(floor(1363f)), func_4(i32(-1i) * -21099i, global3.a.d, ~vec3<u32>(global3.b.x, 63823u, 42397u)).b.a.x)), global3.a.a.d.x, 1873f), true));
    let var_0 = vec3<i32>(func_2((0u | global3.a.c.b) < u_input.b), -1i, _wgslsmith_add_i32(u_input.a, u_input.c)) ^ vec3<i32>(global0.x, _wgslsmith_clamp_i32(global3.a.c.c.x, (-2147483647i >> (u_input.b % 32u)) | func_1(Struct_1(global3.a.d.xxx, global3.b.x, vec4<i32>(global3.a.a.c.x, global3.a.c.c.x, -27997i, u_input.c), global3.a.c.d), global3.a.a.c.zxw, vec4<i32>(-8936i, 0i, u_input.a, u_input.c)).x, _wgslsmith_dot_vec3_i32(global3.a.c.c.yzy << (vec3<u32>(33322u, 103464u, 1u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(global3.a.a.c.zzz, vec3<i32>(25561i, u_input.a, 205i)))), _wgslsmith_clamp_i32(~(global0.x << (4294967295u % 32u)), 2147483647i, 53965i));
    global4 = _wgslsmith_f_op_f32(func_5(vec2<i32>(global3.a.a.c.x & u_input.c, ~var_0.x), global3.a.c.d, true));
    global3 = Struct_4(Struct_3(global3.a.a, true, func_4(firstLeadingBit(select(-18357i, -2147483647i, false)), !select(global3.a.d, vec4<bool>(global3.c, false, global3.a.a.a.x, global3.c), vec4<bool>(global3.a.c.a.x, true, true, global3.c)), ~(~vec3<u32>(53671u, 83981u, global3.a.c.b))).b, !vec4<bool>(func_4(16786i, global3.a.d, vec3<u32>(0u, u_input.b, u_input.b)).b.a.x, true, global0.x >= u_input.a, global3.a.d.x && false)), ~global3.b, select(true, global3.c, global3.c));
    let var_1 = 1805f > _wgslsmith_f_op_f32(-286f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(727f * func_4(u_input.c, global3.a.d, vec3<u32>(21246u, 1u, u_input.b)).a.x) - _wgslsmith_f_op_f32(-func_4(1i, vec4<bool>(true, global3.a.b, global3.c, global3.a.c.a.x), vec3<u32>(1u, global3.a.a.b, u_input.b)).a.x)));
    var var_2 = 1227f;
    global2 = _wgslsmith_div_f32(-404f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-761f - global3.a.a.d.x))))));
    var var_3 = Struct_1(global3.a.a.a, 53930u, vec4<i32>(-global0.x, select(2147483647i, -(~var_0.x), func_3().x), _wgslsmith_div_i32(firstLeadingBit(-3747i), ~func_2(false)), (_wgslsmith_sub_i32(0i, global3.a.c.c.x) ^ global3.a.a.c.x) | u_input.c), vec4<f32>(global3.a.a.d.x, _wgslsmith_f_op_f32(func_5(-(~global3.a.c.c.xz), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-153f, 608f, global3.a.c.d.x, global3.a.c.d.x)) - _wgslsmith_f_op_vec4_f32(global3.a.a.d - vec4<f32>(global3.a.c.d.x, global3.a.a.d.x, global3.a.c.d.x, 522f))), false)), _wgslsmith_f_op_f32(-1f), -632f));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(firstLeadingBit(~(i32(-1i) * -2147483647i)), ~(_wgslsmith_sub_i32(global0.x, 31728i) ^ min(var_0.x, -1i))), i32(-1i) * -(~_wgslsmith_mult_i32(-2147483647i, u_input.c)), global3.a.c.d.ywy);
}

