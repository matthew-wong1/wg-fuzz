struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(abs(arg_1 | arg_1), ~arg_1), u_input.e.yx), firstTrailingBit(_wgslsmith_div_vec2_u32(select(u_input.e.wy, ~vec2<u32>(53794u, u_input.a), 45525u > arg_1), u_input.e.yy)));
    let var_1 = _wgslsmith_f_op_f32(abs(arg_0.c.b));
    var var_2 = -2829i;
    let var_3 = -1077f;
    var var_4 = arg_2.b.zx;
    return arg_0.c.b;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: f32) -> vec4<bool> {
    let var_0 = arg_0;
    var var_1 = arg_0;
    let var_2 = _wgslsmith_mult_i32(arg_1.a.x, -(~_wgslsmith_sub_i32(-1i, ~22399i)));
    var_1 = Struct_2(select(true, false, (arg_0.b <= _wgslsmith_f_op_f32(f32(-1f) * -1000f)) == !(var_1.a | var_0.d.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-686f, _wgslsmith_div_f32(-1476f, _wgslsmith_f_op_f32(-arg_0.b))))), var_0.c, arg_0.d);
    var_1 = Struct_2(true, -709f, arg_0.c, var_0.c);
    return vec4<bool>(any(!select(!var_0.c.b, vec4<bool>(true, var_0.c.b.x, false, var_0.d.a), !arg_0.a)), all(select(vec3<bool>(true, true, var_0.c.b.x), var_1.c.b.yyw, false)), all(arg_0.d.b.yz), !arg_0.c.b.x);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    global0 = true;
    let var_0 = Struct_4(select(select(min(vec3<i32>(u_input.b, -1i, -3251i), vec3<i32>(-1i, 1i, 1i) >> (u_input.e.xxy % vec3<u32>(32u))), vec3<i32>(abs(2147483647i), 25851i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1850i, 0i, u_input.c, u_input.c), vec4<i32>(0i, 0i, u_input.c, u_input.b))), true), -_wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(-2147483647i, 1i, u_input.c)), reverseBits(vec3<i32>(u_input.c, u_input.b, 1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, -58065i, -2147483647i), vec3<i32>(2147483647i, 62626i, u_input.b))), !(!arg_0.c.d.b.xzw)));
    global0 = all(!vec4<bool>(true, !(arg_0.b != true), false, !any(vec4<bool>(arg_0.c.a, true, arg_2.a, arg_2.a))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(Struct_3(arg_1, arg_0.c.a && true, arg_0.c), ~2537u, arg_2)))), -1000f, arg_0.c.b);
    var var_2 = select(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, -u_input.b, max(u_input.b, 2147483647i)), ~_wgslsmith_div_vec3_i32(vec3<i32>(0i, 2147483647i, -64733i), var_0.a)) << ((min(vec3<u32>(u_input.d, u_input.d, 47159u), u_input.e.zxz) | vec3<u32>(u_input.e.x, ~15981u, 21932u)) % vec3<u32>(32u)), vec3<i32>(i32(-1i) * -5034i, ~u_input.b, _wgslsmith_dot_vec4_i32(min(vec4<i32>(var_0.a.x, u_input.c, -33778i, -33226i), vec4<i32>(-1i, 19633i, u_input.b, -2147483647i)), select(vec4<i32>(571i, 16998i, u_input.b, -34323i), vec4<i32>(2147483647i, 26532i, 2147483647i, u_input.c), arg_0.a.b.x)) & var_0.a.x), !arg_0.c.a);
    return arg_1.b.x;
}

fn func_2() -> Struct_3 {
    global0 = func_5(Struct_3(Struct_1(any(vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), false, Struct_2(true, _wgslsmith_f_op_f32(f32(-1f) * -836f), Struct_1(true, vec4<bool>(true, false, false, true)), Struct_1(false, select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), true)))), Struct_1(all(vec4<bool>(true, u_input.e.x <= 0u, true, select(false, true, false))), func_4(Struct_2(any(vec4<bool>(false, false, false, true)), _wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(false, vec4<bool>(false, true, false, true)), false, Struct_2(false, -989f, Struct_1(true, vec4<bool>(false, true, false, true)), Struct_1(true, vec4<bool>(true, true, true, true)))), u_input.a, Struct_1(false, vec4<bool>(false, false, true, true)))), Struct_1(false, vec4<bool>(false, true, false, false)), Struct_1(true, vec4<bool>(false, false, false, true))), Struct_4(vec3<i32>(u_input.b, u_input.b, -6703i) | vec3<i32>(u_input.b, -2147483647i, -1i)), _wgslsmith_f_op_f32(f32(-1f) * -467f))), Struct_1(any(vec2<bool>(true, func_4(Struct_2(false, 316f, Struct_1(true, vec4<bool>(false, true, true, false)), Struct_1(true, vec4<bool>(false, false, false, false))), Struct_4(vec3<i32>(-6152i, -14920i, -1i)), 142f).x)), func_4(Struct_2(true, _wgslsmith_f_op_f32(517f - -246f), Struct_1(false, vec4<bool>(false, true, false, false)), Struct_1(true, vec4<bool>(true, false, true, false))), Struct_4(vec3<i32>(1i, u_input.c, -1i)), -233f)));
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(135f * 1388f), _wgslsmith_f_op_f32(max(313f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1780f, _wgslsmith_f_op_f32(1000f + 233f), true))))), 624f, _wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(func_4(Struct_2(false, 319f, Struct_1(false, vec4<bool>(true, true, false, true)), Struct_1(false, vec4<bool>(false, true, true, false))), Struct_4(vec3<i32>(u_input.c, u_input.b, u_input.b)), 583f).x, vec4<bool>(true, true, true, true)), true, Struct_2(any(vec4<bool>(false, true, true, false)), -835f, Struct_1(true, vec4<bool>(false, false, true, true)), Struct_1(true, vec4<bool>(false, false, true, false)))), firstLeadingBit(countOneBits(_wgslsmith_add_u32(67033u, u_input.d))), Struct_1(true, !select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true))))));
    let var_1 = Struct_1(all(select(func_4(Struct_2(false, var_0.x, Struct_1(true, vec4<bool>(false, true, true, false)), Struct_1(true, vec4<bool>(true, true, true, true))), Struct_4(vec3<i32>(7455i, u_input.c, 2147483647i)), _wgslsmith_f_op_f32(-var_0.x)).yzy, vec3<bool>(45236u > u_input.d, true, true), false)), vec4<bool>(true | !any(vec2<bool>(false, true)), any(vec3<bool>(true, true, any(vec3<bool>(false, false, false)))), _wgslsmith_mult_i32(_wgslsmith_div_i32(13772i, u_input.b), -1i) > (abs(-47781i) << (u_input.e.x % 32u)), true));
    global0 = !var_1.a || true;
    global0 = -2147483647i != -u_input.b;
    return Struct_3(Struct_1(var_1.a, func_4(Struct_2(true, _wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(true, var_1.b), true, Struct_2(false, var_0.x, var_1, Struct_1(false, var_1.b))), u_input.d, var_1)), Struct_1(false, vec4<bool>(true, var_1.a, false, true)), var_1), Struct_4(~vec3<i32>(u_input.b, u_input.b, 0i)), 1f)), true, Struct_2(any(vec4<bool>(true, func_4(Struct_2(var_1.a, var_0.x, Struct_1(var_1.a, var_1.b), Struct_1(var_1.a, var_1.b)), Struct_4(vec3<i32>(u_input.c, 47637i, u_input.b)), var_0.x).x, false, false && var_1.b.x)), _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-649f + _wgslsmith_f_op_f32(step(var_0.x, 720f))))), var_1, Struct_1(u_input.b <= -u_input.c, !select(vec4<bool>(true, var_1.b.x, false, true), var_1.b, false))));
}

fn func_6(arg_0: f32, arg_1: bool, arg_2: Struct_3, arg_3: Struct_3) -> Struct_3 {
    var var_0 = !arg_3.c.c.b;
    global0 = arg_1;
    let var_1 = arg_2.c.c;
    let var_2 = arg_2;
    var_0 = var_1.b;
    return arg_3;
}

fn func_1() -> f32 {
    global0 = false;
    var var_0 = _wgslsmith_f_op_f32(floor(1010f));
    let var_1 = _wgslsmith_div_i32(-u_input.c, firstTrailingBit(_wgslsmith_dot_vec3_i32(-vec3<i32>(-49691i, u_input.c, u_input.c), ~vec3<i32>(32184i, u_input.b, -67428i)))) != 19002i;
    var var_2 = func_6(-514f, true, func_2(), Struct_3(Struct_1(func_4(func_2().c, Struct_4(vec3<i32>(u_input.b, -79923i, 2147483647i)), 693f).x, select(select(vec4<bool>(var_1, false, false, var_1), vec4<bool>(var_1, false, false, var_1), vec4<bool>(false, var_1, var_1, var_1)), select(vec4<bool>(false, false, false, var_1), vec4<bool>(var_1, true, false, true), vec4<bool>(true, true, var_1, true)), true)), !var_1, Struct_2((4294967295u <= u_input.e.x) | all(vec3<bool>(var_1, true, false)), _wgslsmith_f_op_f32(-353f + _wgslsmith_f_op_f32(sign(975f))), Struct_1(var_1, vec4<bool>(var_1, true, var_1, false)), func_2().a)));
    var var_3 = Struct_2(var_1, 864f, var_2.c.d, var_2.c.d);
    return var_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    var var_0 = vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(min(-2147483647i, -1i), i32(-1i) * -19424i, _wgslsmith_add_i32(u_input.c, u_input.c)), ~10250i), firstTrailingBit(vec2<i32>(abs(-1i), 2147483647i & u_input.c))), -u_input.b, 56300i);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1204f * _wgslsmith_f_op_f32(f32(-1f) * -102f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(trunc(620f))))));
    global0 = true;
    let var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(var_0.x ^ var_0.x, reverseBits(~1i)), u_input.e.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(284f, var_1, var_1, -1291f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1121f, 241f, var_1, var_1) * vec4<f32>(var_1, var_1, 1934f, var_1))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1, 1574f, -1406f, 1029f), vec4<f32>(var_1, var_1, var_1, var_1))))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-380f, 636f) - vec2<f32>(var_1, -2019f))))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, 883f))))), 16370u);
}

