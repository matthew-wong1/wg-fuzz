struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: i32,
    d: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: f32,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

var<private> global1: Struct_5 = Struct_5(Struct_4(vec3<i32>(i32(-2147483648), -3288i, 1i), vec3<f32>(-311f, -873f, -1817f), 2147483647i, 2147483647i), Struct_4(vec3<i32>(-41372i, 2147483647i, -1i), vec3<f32>(988f, -1660f, -342f), 2147483647i, -53544i), -594f, Struct_1(vec4<i32>(2147483647i, -11167i, 33930i, i32(-2147483648)), 1u), true);

var<private> global2: vec3<i32> = vec3<i32>(1i, -43307i, 0i);

var<private> global3: Struct_4;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<u32>) -> i32 {
    var var_0 = any(arg_0.zzy);
    var_0 = false;
    let var_1 = Struct_3(-3522i);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-362f - -1725f))));
    global0 = !vec3<bool>(all(!select(vec3<bool>(global0.x, global1.e, false), vec3<bool>(false, global1.e, global0.x), global1.e)), !(global0.x & !global1.e), global1.e & arg_0.x);
    return u_input.a.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_5, arg_2: Struct_5, arg_3: f32) -> bool {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.b.x)), arg_0.x, arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))));
    var var_1 = any(!global0.zy);
    global0 = select(select(!vec3<bool>(all(vec3<bool>(true, true, global0.x)), false, false), select(vec3<bool>(!arg_1.e, all(vec4<bool>(global1.e, false, true, arg_2.e)), global1.e | global0.x), select(!vec3<bool>(arg_2.e, arg_2.e, global1.e), select(vec3<bool>(global1.e, arg_1.e, arg_2.e), vec3<bool>(arg_1.e, true, false), true), all(vec4<bool>(false, global0.x, arg_1.e, arg_1.e))), vec3<bool>(true, true, !global0.x)), false), select(!(!vec3<bool>(arg_1.e, global0.x, arg_1.e)), !vec3<bool>(-1668f <= arg_3, arg_1.e, arg_2.d.b != u_input.b), _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, global1.d.a.x), -global2.zz) <= func_3(vec4<bool>(global0.x, global0.x, global1.e, global0.x), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.d.b, 18433u, 85128u, 11873u), vec4<u32>(92244u, 4294967295u, arg_2.d.b, 4294967295u)))), vec3<bool>(true, global0.x, !select(arg_1.e, true, true)));
    global2 = -vec3<i32>(global2.x, -1i, -abs(-11975i));
    var var_2 = vec4<bool>(~_wgslsmith_mod_u32(4294967295u, 11754u) == u_input.b, arg_1.e, false, arg_1.e);
    return var_2.x;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: vec3<bool>) -> Struct_4 {
    global3 = global1.a;
    var var_0 = 0u;
    global2 = vec3<i32>(2147483647i, _wgslsmith_mod_i32(21864i, _wgslsmith_clamp_i32(u_input.a.x, 22260i, global1.a.d)), reverseBits(_wgslsmith_mult_i32(1i, firstLeadingBit(-4218i))));
    var var_1 = Struct_1(select(_wgslsmith_div_vec4_i32(vec4<i32>(~global3.c, ~u_input.a.x, _wgslsmith_mult_i32(global1.b.c, 1i), firstLeadingBit(global1.d.a.x)), abs(countOneBits(vec4<i32>(0i, -10105i, -24654i, 2147483647i)))), global1.d.a, true), ~u_input.c);
    var var_2 = -u_input.a;
    return Struct_4(_wgslsmith_mod_vec3_i32(global3.a ^ abs(u_input.a), u_input.a ^ -countOneBits(vec3<i32>(1i, u_input.a.x, var_1.a.x))), vec3<f32>(_wgslsmith_f_op_f32(sign(global1.b.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1951f)) - 1005f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global3.b.x, -1283f))), 372f)), -1i, global3.c << (~countOneBits(1u) % 32u));
}

fn func_1() -> vec4<u32> {
    var var_0 = Struct_5(global1.a, func_4(global3.b.x, true, !vec3<bool>(-312f == global3.b.x, func_2(global3.b.zy, Struct_5(global1.a, Struct_4(global3.a, vec3<f32>(-143f, global1.a.b.x, -599f), 1i, 1i), global1.c, global1.d, false), Struct_5(Struct_4(global3.a, vec3<f32>(384f, global3.b.x, global1.c), u_input.a.x, -1i), global1.b, global1.c, Struct_1(global1.d.a, u_input.b), true), -470f), true)), _wgslsmith_f_op_f32(-global3.b.x), global1.d, global1.e);
    var var_1 = Struct_3(func_3(select(!select(vec4<bool>(false, var_0.e, global1.e, false), vec4<bool>(false, var_0.e, false, false), global0.x), !vec4<bool>(global1.e, global0.x, true, global1.e), true), ~reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 3811u, 15280u, 1u), vec4<u32>(0u, 0u, 0u, global1.d.b)))));
    var var_2 = func_4(1000f, any(!vec3<bool>(true, false, -477f == global3.b.x)), !(!(!vec3<bool>(true, true, var_0.e))));
    let var_3 = Struct_5(Struct_4(_wgslsmith_mult_vec3_i32(-vec3<i32>(23201i, var_2.d, var_2.a.x), ~max(var_0.a.a, vec3<i32>(-20212i, -2147483647i, u_input.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, 974f, 986f) * vec3<f32>(var_2.b.x, -1089f, -1187f))))), -_wgslsmith_mult_i32(~2147483647i, var_2.d), 2147483647i), var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.b.x)) + _wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.b.x + var_0.a.b.x) * _wgslsmith_div_f32(489f, var_2.b.x)))), var_0.d, global0.x != global0.x);
    var_0 = Struct_5(var_3.b, func_4(-1019f, !((var_3.d.b < 0u) || (true && global1.e)), select(select(select(vec3<bool>(false, global1.e, true), vec3<bool>(global1.e, true, true), true), !vec3<bool>(true, global1.e, false), select(vec3<bool>(false, global0.x, false), vec3<bool>(global1.e, true, true), vec3<bool>(false, var_3.e, true))), select(vec3<bool>(true, var_3.e, global1.e), vec3<bool>(false, true, false), !vec3<bool>(global1.e, true, false)), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, global0.x), vec3<bool>(global0.x, true, global1.e)), vec3<bool>(true, var_0.e, var_3.e), !vec3<bool>(global1.e, false, false)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(816f)))))), Struct_1(vec4<i32>(u_input.a.x, var_3.b.c, u_input.a.x, 1i), _wgslsmith_dot_vec3_u32(select(vec3<u32>(var_3.d.b, global1.d.b, var_3.d.b), firstLeadingBit(vec3<u32>(1u, 0u, 4294967295u)), select(vec3<bool>(var_0.e, true, true), vec3<bool>(var_0.e, var_3.e, false), true)), vec3<u32>(~var_3.d.b, var_3.d.b, 43548u))), var_3.e);
    return vec4<u32>(reverseBits(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(29088u, global1.d.b, u_input.c)) ^ ~vec3<u32>(17954u, var_0.d.b, var_0.d.b), max(vec3<u32>(var_3.d.b, 11954u, var_3.d.b) ^ vec3<u32>(4294967295u, 0u, var_0.d.b), ~vec3<u32>(global1.d.b, 4294967295u, u_input.c)))), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(40685u, global1.d.b), vec2<u32>(1u, 58035u)), u_input.b) & ~min(vec2<u32>(u_input.c, 0u), vec2<u32>(4294967295u, u_input.b)), abs(~abs(vec2<u32>(55678u, 29783u)))), ~(~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, var_3.d.b, 25410u), vec4<u32>(20159u, 23388u, 1u, var_0.d.b)), abs(vec4<u32>(31745u, 1u, 0u, u_input.b)))), ~abs(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d.b, 1u, 46690u), vec3<u32>(u_input.c, 20483u, var_0.d.b)), abs(var_0.d.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(83468u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.d.b, 1u, ~u_input.b, 17482u), max(func_1(), vec4<u32>(global1.d.b, 10376u, u_input.b, global1.d.b) ^ vec4<u32>(48012u, u_input.b, 1u, u_input.c))), true);
    let var_1 = countOneBits(_wgslsmith_add_u32(global1.d.b, 41045u)) >= ~_wgslsmith_div_u32(0u | global1.d.b, ~global1.d.b);
    var var_2 = vec4<i32>(select(_wgslsmith_add_i32(~u_input.a.x, -1i), reverseBits(0i), 23228u >= global1.d.b), abs(min(global3.c, -1i)) ^ global1.b.a.x, min(0i, select(-1i, _wgslsmith_div_i32(global1.b.a.x, -13617i ^ global1.d.a.x), true)), _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(global3.a.yx, vec2<i32>(global1.b.a.x, global2.x)) ^ -1i, global2.x), global3.d));
    var_2 = reverseBits(min(vec4<i32>(~_wgslsmith_mult_i32(var_2.x, -1i), global3.c, _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(global1.b.a.x, -6040i, 2147483647i)), reverseBits(var_2.xzw)), (global2.x | u_input.a.x) >> (max(u_input.c, global1.d.b) % 32u)), -(~abs(vec4<i32>(56222i, global1.d.a.x, global3.a.x, 4840i)))));
    var var_3 = global1.b;
    var var_4 = vec2<bool>(!any(!(!vec4<bool>(false, var_1, var_1, global0.x))), all(vec2<bool>(func_2(vec2<f32>(1574f, 649f), Struct_5(global1.b, global1.a, 113f, Struct_1(global1.d.a, u_input.c), true), Struct_5(global1.b, global1.a, global1.b.b.x, global1.d, global1.e), _wgslsmith_f_op_f32(select(var_3.b.x, var_3.b.x, false))), true)));
    global2 = -firstTrailingBit(max(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, 2147483647i), vec3<i32>(global2.x, var_2.x, 0i)), global3.a) | ~min(vec3<i32>(-2147483647i, global3.d, global1.b.c), vec3<i32>(global1.d.a.x, 2147483647i, var_2.x)));
    let var_5 = 1i ^ (0i | (global1.d.a.x | 0i));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.yy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-790f, 1000f, 150f, global1.b.b.x), vec4<f32>(3376f, -1111f, global1.a.b.x, var_3.b.x)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(560f, var_3.b.x, 409f, -1355f) - _wgslsmith_div_vec4_f32(vec4<f32>(1755f, var_3.b.x, global1.b.b.x, -819f), vec4<f32>(1000f, 1190f, 1131f, 320f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b.x, 234f, global1.b.b.x, 1253f) + _wgslsmith_div_vec4_f32(vec4<f32>(var_3.b.x, 103f, var_3.b.x, -379f), vec4<f32>(-1795f, var_3.b.x, -1693f, global1.a.b.x))))), ~firstTrailingBit(global1.d.b >> (~u_input.b % 32u)));
}

