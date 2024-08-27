struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<bool>,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> i32 {
    var var_0 = reverseBits(global0.b);
    var_0 = _wgslsmith_clamp_i32(~_wgslsmith_dot_vec4_i32(-reverseBits(vec4<i32>(-25368i, global0.b, -32566i, global0.a.x)), vec4<i32>(max(23658i, -30560i), ~35387i, _wgslsmith_mod_i32(-4756i, global0.b), 1i)), countOneBits(global0.b), ~countOneBits(-(~global0.b)));
    var_0 = _wgslsmith_mod_i32(reverseBits(i32(-1i) * -(arg_0 >> (30181u % 32u))), 27289i);
    var_0 = arg_0;
    let var_1 = Struct_2(62497u, global0.a, Struct_1(countOneBits(-countOneBits(vec3<i32>(arg_0, 2147483647i, arg_0))), ~min(-46286i, global0.b) | -1i, !all(select(vec2<bool>(false, global0.d.x), vec2<bool>(true, global0.c), global0.d)), select(vec2<bool>(true, true), select(select(vec2<bool>(false, global0.c), global0.d, false), vec2<bool>(true, global0.d.x), false | global0.d.x), select(!global0.d, global0.d, select(vec2<bool>(global0.d.x, true), vec2<bool>(global0.d.x, true), vec2<bool>(false, global0.d.x))))));
    return -36357i;
}

fn func_2() -> Struct_1 {
    var var_0 = ~select(vec2<i32>(1i, _wgslsmith_clamp_i32(1i, global0.a.x, 37952i) >> (2904u % 32u)), max(global0.a.zy, vec2<i32>(global0.b, max(-1i, 2147483647i))), !global0.d.x);
    let var_1 = min((min(var_0.x, ~(-19003i)) << (_wgslsmith_sub_u32(u_input.a, u_input.b) % 32u)) | (-29686i ^ (_wgslsmith_div_i32(-1580i, 76954i) << ((u_input.b & 0u) % 32u))), ~(-44000i) & global0.b);
    return Struct_1(global0.a, func_3(max(50163i, -_wgslsmith_clamp_i32(global0.b, var_1, var_1))), !(!(!global0.c) | true), global0.d);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = !(!all(!select(vec4<bool>(global0.d.x, global0.c, arg_2.d.x, true), vec4<bool>(arg_2.c, false, false, arg_2.d.x), vec4<bool>(false, arg_2.d.x, true, arg_2.c))));
    let var_1 = select(true, true, all(!(!select(vec4<bool>(false, global0.c, arg_2.d.x, global0.c), vec4<bool>(global0.c, true, global0.d.x, true), vec4<bool>(false, false, global0.c, true)))));
    var var_2 = Struct_4(~(~vec4<i32>(-2147483647i, global0.a.x, global0.b, 8740i) & reverseBits(vec4<i32>(global0.b, -29345i, 11190i, -42157i))) & countOneBits((vec4<i32>(23969i, -2147483647i, -18930i, arg_2.b) << (vec4<u32>(u_input.a, u_input.a, arg_0.x, u_input.b) % vec4<u32>(32u))) ^ vec4<i32>(arg_2.a.x, 1i, 19595i, -2147483647i)));
    var_2 = Struct_4(~(var_2.a >> ((~vec4<u32>(2212u, arg_0.x, arg_0.x, arg_0.x) >> (select(vec4<u32>(0u, arg_0.x, 25320u, 35590u), vec4<u32>(u_input.b, 20011u, arg_0.x, u_input.a), false) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_3 = arg_1;
    return Struct_2(_wgslsmith_add_u32(firstTrailingBit(39398u), ~_wgslsmith_add_u32(_wgslsmith_div_u32(arg_0.x, u_input.a), 0u << (u_input.b % 32u))), var_2.a.yyz, func_2());
}

fn func_1() -> bool {
    global0 = Struct_1(vec3<i32>(_wgslsmith_mod_i32(~global0.b, global0.a.x), firstTrailingBit(1i), -33812i), -(~(~_wgslsmith_add_i32(0i, global0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1020f)))) < -309f, select(!(!(!global0.d)), vec2<bool>(global0.c, any(!vec3<bool>(global0.d.x, global0.c, global0.d.x))), !global0.c));
    global0 = Struct_1(_wgslsmith_sub_vec3_i32(-((global0.a >> (vec3<u32>(25592u, 1462u, u_input.b) % vec3<u32>(32u))) << ((vec3<u32>(u_input.a, u_input.a, 1u) | vec3<u32>(u_input.b, u_input.b, 303u)) % vec3<u32>(32u))), select(~(-vec3<i32>(0i, global0.b, -1i)), ~global0.a, firstTrailingBit(global0.b) <= firstTrailingBit(global0.a.x))), min(global0.a.x, countOneBits(global0.a.x)), global0.c, vec2<bool>(global0.d.x, (-34803i << (1u % 32u)) <= global0.a.x));
    var var_0 = abs(-_wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(global0.a.x, 2147483647i, global0.a.x, 2147483647i), firstLeadingBit(vec4<i32>(-1i, global0.b, global0.a.x, 7338i)) | vec4<i32>(global0.a.x, 0i, global0.b, global0.b)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(840f, 105f), vec2<f32>(-688f, 1234f)))))), vec2<f32>(-536f, _wgslsmith_div_f32(1386f, _wgslsmith_f_op_f32(-186f + 905f))))));
    let var_2 = func_4(vec3<u32>(~select(_wgslsmith_mult_u32(u_input.a, 0u), _wgslsmith_sub_u32(u_input.b, 1u), !global0.c), 4294967295u, u_input.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_1))), func_2(), vec2<bool>(true, !any(select(vec3<bool>(global0.d.x, false, global0.d.x), vec3<bool>(false, false, global0.d.x), global0.c))));
    return true;
}

fn func_5(arg_0: vec4<bool>, arg_1: bool) -> Struct_1 {
    global0 = func_2();
    var var_0 = global0.a.x;
    var var_1 = !arg_0;
    var var_2 = any(vec2<bool>(!(_wgslsmith_clamp_i32(global0.a.x, 14638i, global0.b) > ~global0.a.x), any(!global0.d)));
    var_0 = global0.b;
    return Struct_1(_wgslsmith_mult_vec3_i32(global0.a, global0.a << (_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.a, u_input.b), vec3<u32>(7662u, 35203u, u_input.a)), vec3<u32>(4294967295u, 4294967295u, u_input.b) | vec3<u32>(u_input.b, u_input.a, u_input.a)) % vec3<u32>(32u))), max(-global0.b, -(global0.b & global0.a.x)), false, vec2<bool>(any(func_2().d), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(!vec4<bool>(all(!global0.d), all(select(vec3<bool>(false, false, global0.d.x), vec3<bool>(false, global0.c, true), global0.c)), select(all(vec3<bool>(false, global0.d.x, false)), -43978i > global0.a.x, true), true), !(true && global0.c) & func_1());
    var var_1 = func_4(~firstLeadingBit(vec3<u32>(~u_input.b, u_input.a, u_input.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(round(374f)), -436f), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -374f))))))), func_4(~((vec3<u32>(9736u, 32273u, u_input.a) | vec3<u32>(u_input.a, 1u, 5186u)) << (vec3<u32>(25086u, u_input.a, 0u) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(680f, -723f) - vec2<f32>(-2244f, 149f)), vec2<f32>(1000f, -1108f), global0.d))), func_5(!vec4<bool>(var_0.d.x, false, global0.d.x, true), global0.c), vec2<bool>(true, !select(global0.d.x, var_0.c, global0.c))).c, var_0.d).c;
    var var_2 = Struct_3(Struct_1(vec3<i32>(var_0.a.x, 16929i, _wgslsmith_sub_i32(global0.a.x, 1i)), max(-reverseBits(29240i), -10684i), true, func_4(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 35695u, u_input.a) >> (vec3<u32>(19683u, u_input.a, 63344u) % vec3<u32>(32u)), ~vec3<u32>(0u, 65995u, 29978u)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -156f), vec2<f32>(641f, -330f), var_0.d)))), Struct_1(_wgslsmith_sub_vec3_i32(global0.a, global0.a), var_1.b, var_1.c, var_0.d), !vec2<bool>(var_1.d.x, global0.c)).c.d), vec2<u32>(~u_input.a << (0u % 32u), abs(46348u) << (u_input.b % 32u)), var_1.d, (abs(u_input.b) | select(select(0u, u_input.b, true), firstLeadingBit(u_input.a), true)) ^ _wgslsmith_clamp_u32(u_input.a, u_input.a, ~u_input.a >> (0u % 32u)), Struct_1(-abs(vec3<i32>(-2147483647i, -1i, global0.a.x) | var_1.a), -var_1.a.x, true, var_0.d));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-325f - 1f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1000f, -152f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(986f - -1392f) + -1616f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(482f, 743f))))));
    var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-944f, var_3.x))), 170f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f))), _wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(-var_3.x))));
    var var_4 = 1000f;
    var var_5 = var_2.d;
    var_5 = ~var_2.d >> (select(0u, 0u, func_5(!vec4<bool>(false, var_0.d.x, global0.d.x, var_2.c.x), func_2().c).c) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec3_u32(select(firstLeadingBit(vec3<u32>(var_2.d, 1u, var_2.d)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 51401u, 1u), vec3<u32>(40685u, var_2.b.x, 8750u)), global0.d.x | var_2.c.x), vec3<u32>(63332u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.d, 4294967295u, 210u), vec3<u32>(u_input.b, 70236u, 38078u)), 0u ^ var_2.d)));
}

