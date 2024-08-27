struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
    c: vec4<bool>,
    d: i32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(-56523i, 2147483647i, 0i, -32876i), vec3<f32>(-1000f, 1000f, 597f), true, -3556i);

var<private> global1: Struct_2;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> f32 {
    var var_0 = ~min(_wgslsmith_mod_u32(abs(u_input.a.x), countOneBits(max(u_input.a.x, 42827u))), _wgslsmith_add_u32(u_input.a.x, 1u));
    global1 = Struct_2(Struct_1(global1.e.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-518f, global1.b.b.x, -719f) + vec3<f32>(global0.b.x, global1.a.b.x, 1150f))), !(global1.c.c | (-13798i > global1.c.d)), -1i), Struct_1(_wgslsmith_sub_vec4_i32(global1.b.a, vec4<i32>(reverseBits(global0.a.x), ~global1.e.d, -global1.a.a.x, global1.e.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-117f, _wgslsmith_f_op_f32(-global0.b.x), -1000f)), global1.b.c, global1.b.a.x), Struct_1(vec4<i32>(-2147483647i, ~_wgslsmith_sub_i32(global1.c.a.x, -2147483647i), reverseBits(global1.b.a.x), abs(countOneBits(-11823i))), global0.b, true, firstLeadingBit(global0.d) & max(firstLeadingBit(-1i), _wgslsmith_add_i32(global1.c.a.x, global1.e.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.d.x, 636f))))), Struct_1(global0.a, global1.c.b, false, 2147483647i));
    let var_1 = global1.a.a.x;
    let var_2 = vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(global1.b.a, _wgslsmith_mod_vec4_i32(global1.c.a, vec4<i32>(-3558i, global0.d, 2147483647i, global1.a.a.x))), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.d, 76193i, global0.a.x, 2147483647i), global1.e.a, vec4<i32>(-22352i, 16251i, global0.d, -30639i))));
    var var_3 = 856f >= global1.b.b.x;
    return global1.c.b.x;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_3(~_wgslsmith_sub_vec4_u32(vec4<u32>(abs(u_input.a.x), reverseBits(u_input.a.x), u_input.a.x, 0u), vec4<u32>(~u_input.a.x, ~1565u, u_input.a.x, 7430u)), global1.b.c);
    let var_1 = global0.a.x;
    var var_2 = Struct_2(global1.b, Struct_1(~vec4<i32>(_wgslsmith_sub_i32(global1.c.a.x, -2147483647i), ~global1.a.d, global1.e.d, _wgslsmith_dot_vec4_i32(global1.b.a, global1.b.a)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(702f, _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(func_3())))), !global0.c, global0.a.x), Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(global0.b + global1.a.b)))), !var_0.b && true, firstLeadingBit(-15282i)), vec2<f32>(340f, -130f), global1.e);
    var var_3 = Struct_2(var_2.c, Struct_1(-global0.a, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-722f, -955f, global0.b.x) + global0.b))))), select(any(vec4<bool>(global1.b.c, global0.c, var_0.b, false)), true, !var_2.b.c) | ((global0.c & true) || all(vec4<bool>(global1.c.c, false, false, var_0.b))), 40527i), Struct_1(~(-abs(vec4<i32>(27748i, var_2.a.a.x, 0i, -1i))), _wgslsmith_f_op_vec3_f32(-global0.b), true, -2147483647i), global0.b.xx, Struct_1(-_wgslsmith_clamp_vec4_i32(-vec4<i32>(-23719i, global1.a.d, var_2.a.d, 2147483647i), global1.e.a, -global1.c.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_2.a.b))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(global0.b, vec3<f32>(-430f, -256f, global1.e.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(183f, -230f, 950f)), select(vec3<bool>(global1.e.c, global0.c, false), vec3<bool>(true, true, var_0.b), vec3<bool>(global0.c, false, false))))), true, 78669i));
    let var_4 = var_3.d;
    return Struct_3(vec4<u32>(select(~var_0.a.x, u_input.a.x ^ _wgslsmith_sub_u32(1u, 0u), 1i != var_2.c.a.x), ~(~max(var_0.a.x, 11857u)), 1u, 61042u), any(vec3<bool>(true, true, true)));
}

fn func_4(arg_0: f32, arg_1: vec2<i32>, arg_2: f32, arg_3: Struct_4) -> vec3<f32> {
    var var_0 = arg_1.x;
    let var_1 = 0i < -(~arg_3.d);
    global0 = global1.b;
    let var_2 = 3427u;
    let var_3 = select(!vec4<bool>(select(-1381f > global1.b.b.x, !global1.b.c, global1.c.c), select(false, false, true) & global1.e.c, true, true), !vec4<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, 0i), vec2<i32>(-1i, -33150i)) >= -global0.a.x, all(select(vec3<bool>(false, true, true), arg_3.c.ywy, var_1)), !global1.a.c, global0.c), var_1);
    return vec3<f32>(global1.c.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)) * _wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(arg_2 * arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-649f, 1134f))) * arg_2));
}

fn func_1() -> Struct_4 {
    var var_0 = Struct_2(Struct_1(vec4<i32>(reverseBits(_wgslsmith_div_i32(global0.d, -12215i)), -2147483647i, ~(-2147483647i << (u_input.a.x % 32u)), 1i), _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_f32(f32(-1f) * -1428f), -select(global1.c.a.yz, vec2<i32>(-8825i, global0.d), vec2<bool>(true, global1.a.c)), _wgslsmith_f_op_f32(sign(590f)), Struct_4(reverseBits(vec4<u32>(1u, 1u, 56670u, u_input.a.x)), func_2(), select(vec4<bool>(false, global0.c, false, global0.c), vec4<bool>(global0.c, global0.c, false, global0.c), vec4<bool>(false, global0.c, global0.c, global0.c)), global1.a.d ^ global0.d, func_2()))), !global1.e.c, max(_wgslsmith_sub_i32(global0.a.x | -4808i, _wgslsmith_dot_vec2_i32(global0.a.wx, vec2<i32>(-60762i, global0.a.x))), reverseBits(-global0.a.x))), Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.b.x, global1.a.b.x, global0.b.x) + vec3<f32>(445f, global1.c.b.x, 158f))))), all(vec2<bool>(global0.c && false, !global1.c.c)), -2147483647i), global1.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0.b.x, global0.b.x), -107f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(447f - global1.c.b.x)))), global1.c);
    let var_1 = Struct_3(abs(select(func_2().a, ~vec4<u32>(66301u, 16233u, 19778u, u_input.a.x), !select(vec4<bool>(true, false, global1.a.c, var_0.a.c), vec4<bool>(true, false, false, false), vec4<bool>(var_0.c.c, true, true, true)))), false);
    return Struct_4(var_1.a >> ((vec4<u32>(0u, 14784u, 24135u & var_1.a.x, 54116u) << (~(~var_1.a) % vec4<u32>(32u))) % vec4<u32>(32u)), func_2(), select(select(vec4<bool>(!global0.c, false, func_2().b, true || var_0.b.c), select(select(vec4<bool>(var_1.b, false, var_1.b, false), vec4<bool>(false, global0.c, false, var_1.b), false), vec4<bool>(false, true, global0.c, false), any(vec4<bool>(var_0.a.c, true, true, var_1.b))), true), !vec4<bool>(false && global1.c.c, func_2().b, u_input.a.x == u_input.a.x, any(vec3<bool>(var_1.b, true, global0.c))), global1.e.c), global0.a.x, var_1);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec3<bool>) -> vec4<bool> {
    let var_0 = func_1().e;
    let var_1 = global1.b.b.zz;
    let var_2 = _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(func_3())));
    var var_3 = min(_wgslsmith_clamp_vec2_i32(global1.a.a.xz, global0.a.xy, global1.e.a.wy), min(countOneBits(abs(global0.a.xx) << (var_0.a.zy % vec2<u32>(32u))), global1.a.a.zz));
    var var_4 = global1.a;
    return !select(!arg_0.c, !select(func_1().c, vec4<bool>(global1.e.c, false, false, false), arg_0.b.b && false), true);
}

fn func_6(arg_0: bool, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: u32) -> Struct_1 {
    global0 = Struct_1(select(~_wgslsmith_mult_vec4_i32(firstLeadingBit(global1.b.a), ~vec4<i32>(global0.d, -72994i, -13338i, 16983i)), vec4<i32>(arg_1.x, 0i, max(firstLeadingBit(arg_2.x), ~1i), arg_2.x), !any(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(true, false, global1.c.c), vec3<bool>(true, arg_0, global1.c.c)))), global0.b, false, arg_2.x);
    var var_0 = vec3<u32>(_wgslsmith_div_u32(1u, 34490u), 1u, min(_wgslsmith_clamp_u32(arg_3, 4294967295u, countOneBits(~arg_3)), min(~abs(u_input.a.x), 22945u)));
    let var_1 = !any(!(!select(vec4<bool>(global0.c, false, false, true), vec4<bool>(global1.b.c, global1.b.c, true, global1.b.c), global0.c)));
    let var_2 = ~max(global0.a, firstTrailingBit(-_wgslsmith_sub_vec4_i32(global0.a, vec4<i32>(global0.d, arg_2.x, arg_2.x, arg_2.x))));
    var var_3 = Struct_3(~min(select(vec4<u32>(var_0.x, var_0.x, 4294967295u, 0u), vec4<u32>(var_0.x, var_0.x, 1u, u_input.a.x), true) | (vec4<u32>(u_input.a.x, 25073u, arg_3, 4294967295u) & vec4<u32>(var_0.x, 0u, 1u, u_input.a.x)), _wgslsmith_add_vec4_u32(func_1().a, ~vec4<u32>(arg_3, 4294967295u, var_0.x, var_0.x))), !global1.b.c);
    return global1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(firstLeadingBit(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.d, 4078i, 39469i, 32887i), ~global0.a), ~abs(vec4<i32>(global0.d, -19203i, global0.a.x, -25473i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global1.e.b))), false, global1.b.d);
    var var_0 = Struct_2(func_6(any(func_5(func_1(), func_2(), select(vec3<bool>(global1.a.c, global1.a.c, global1.c.c), vec3<bool>(global0.c, true, global0.c), vec3<bool>(false, true, global1.c.c)))), _wgslsmith_clamp_vec2_i32(global1.a.a.xy << (u_input.a.zx % vec2<u32>(32u)), global0.a.yz, global1.c.a.zx) & ~_wgslsmith_div_vec2_i32(global1.e.a.zx, vec2<i32>(-1i, -2147483647i)), global1.c.a.wyx, u_input.a.x), Struct_1(vec4<i32>(i32(-1i) * -global0.d, -_wgslsmith_sub_i32(global0.d, -2147483647i), global1.e.d, -40584i), _wgslsmith_f_op_vec3_f32(select(global1.b.b, _wgslsmith_f_op_vec3_f32(-global0.b), vec3<bool>(any(vec4<bool>(false, global0.c, global0.c, false)), func_5(Struct_4(vec4<u32>(0u, u_input.a.x, 29634u, u_input.a.x), Struct_3(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x), global0.c), vec4<bool>(global1.b.c, global0.c, true, false), 35884i, Struct_3(vec4<u32>(u_input.a.x, 18465u, 4294967295u, 0u), true)), Struct_3(vec4<u32>(8168u, u_input.a.x, u_input.a.x, 1u), false), vec3<bool>(global0.c, global1.c.c, global1.e.c)).x, true))), _wgslsmith_f_op_f32(-global0.b.x) != 1020f, 0i), global1.e, global0.b.yy, Struct_1(~(~func_6(false, global0.a.yz, global0.a.xxx, 25972u).a), _wgslsmith_f_op_vec3_f32(global1.c.b + global1.a.b), !(!(1i < global1.c.d)), ~abs(min(global0.a.x, 43042i))));
    global0 = func_6(true, firstLeadingBit(_wgslsmith_sub_vec2_i32(min(~var_0.e.a.ww, _wgslsmith_sub_vec2_i32(vec2<i32>(global1.b.a.x, global1.b.a.x), vec2<i32>(var_0.c.d, 65288i))), -_wgslsmith_div_vec2_i32(vec2<i32>(global0.a.x, 13771i), var_0.a.a.xz))), vec3<i32>(i32(-1i) * -2147483647i, global0.d, -2147483647i), _wgslsmith_dot_vec4_u32(~(select(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), var_0.b.c) << (vec4<u32>(1u, u_input.a.x, u_input.a.x, 41961u) % vec4<u32>(32u))), vec4<u32>(u_input.a.x >> (u_input.a.x % 32u), u_input.a.x, ~1u & ~u_input.a.x, u_input.a.x)));
    var var_1 = func_1();
    var var_2 = var_0.e;
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(((vec3<u32>(49719u, u_input.a.x, var_1.a.x) ^ vec3<u32>(0u, var_1.a.x, var_1.e.a.x)) & ~vec3<u32>(81755u, u_input.a.x, 2166u)) << (vec3<u32>(1u, ~var_1.a.x, _wgslsmith_add_u32(4531u, 23941u)) % vec3<u32>(32u)), ~_wgslsmith_div_vec3_u32(~vec3<u32>(var_1.e.a.x, 0u, u_input.a.x), ~vec3<u32>(4826u, var_1.a.x, var_1.a.x))), 1u, vec4<u32>(~(~_wgslsmith_add_u32(u_input.a.x, 8356u)), u_input.a.x, ~(~58058u), ~var_1.e.a.x));
}

