struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<f32>,
    d: Struct_2,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_3, 27>;

var<private> global2: u32 = 44523u;

var<private> global3: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(false, true, true, false));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: bool) -> vec4<u32> {
    let var_0 = 32797u;
    global1 = array<Struct_3, 27>();
    global0 = vec3<f32>(arg_1.x, global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.x + -580f))))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, -1213f))));
    let var_1 = u_input.d;
    global3 = array<vec4<bool>, 1>();
    return _wgslsmith_div_vec4_u32(abs(~vec4<u32>(_wgslsmith_mod_u32(1u, 14443u), _wgslsmith_mod_u32(var_0, 1u), u_input.c, u_input.a.x)), ~((vec4<u32>(u_input.c, 68760u, 36743u, 30210u) | ~vec4<u32>(7909u, var_0, var_0, u_input.c)) >> (vec4<u32>(abs(14112u), 1u, _wgslsmith_clamp_u32(var_0, 72729u, var_0), 0u) % vec4<u32>(32u))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: i32) -> vec3<bool> {
    let var_0 = Struct_2(_wgslsmith_add_i32(40854i, _wgslsmith_sub_i32(~23677i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(arg_3, -1i), 1i))), -_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(-u_input.d, _wgslsmith_add_vec4_i32(u_input.d, u_input.d)), u_input.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(598f))));
    global3 = array<vec4<bool>, 1>();
    global1 = array<Struct_3, 27>();
    global3 = array<vec4<bool>, 1>();
    var var_1 = !vec3<bool>(all(vec3<bool>(true, true, true)) && true, !any(vec4<bool>(true, false, true, true)), ~(-var_0.a) > (~arg_3 << (_wgslsmith_mod_u32(arg_0.x, 555u) % 32u)));
    return !vec3<bool>(true, var_1.x, select(select(false, false, true), true, true) & any(select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(true, var_1.x, var_1.x))));
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    global1 = array<Struct_3, 27>();
    var var_0 = Struct_3(Struct_1(-32003i, !(!select(true, false, false)), arg_0.x, func_4(~countOneBits(vec3<u32>(4294967295u, 1u, 46702u)), func_3(vec3<i32>(-14790i, u_input.d.x, u_input.d.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(909f, global0.x, -642f, -1209f) - vec4<f32>(-524f, global0.x, global0.x, 856f)), any(vec2<bool>(true, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-185f, global0.x, global0.x, global0.x)), ~u_input.d.x ^ u_input.e), ~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(4294967295u, 52655u, arg_0.x), select(u_input.c, 0u, false), 36757u)), reverseBits(~abs(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 47241u, 0u, 4294967295u), vec4<u32>(u_input.c, 4294967295u, 1245u, 4294967295u)))), vec4<f32>(_wgslsmith_f_op_f32(max(186f, global0.x)), _wgslsmith_f_op_f32(-1232f - _wgslsmith_f_op_f32(abs(-1610f))), -286f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - -1218f))), Struct_2(u_input.e, 1i, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))), u_input.d.zw);
    let var_1 = select(select(vec3<bool>(var_0.a.d.x, (var_0.e.x < u_input.d.x) | false, var_0.a.d.x), !(!(!vec3<bool>(false, var_0.a.b, var_0.a.d.x))), var_0.a.d.x), func_4(var_0.b.xxw, var_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-var_0.c), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(185f, global0.x, 1284f, global0.x), var_0.c, false))))), 1i), !var_0.a.d);
    let var_2 = vec2<bool>(true | var_1.x, true);
    global3 = array<vec4<bool>, 1>();
    return Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(min(~0i, firstLeadingBit(0i)), u_input.d.x, ~reverseBits(-24580i)), select(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.d.b, u_input.e, u_input.d.x), -vec3<i32>(1i, var_0.e.x, 21030i)), (u_input.d.wyz << (vec3<u32>(1u, 4580u, 1u) % vec3<u32>(32u))) >> (vec3<u32>(4294967295u, u_input.c, var_0.b.x) % vec3<u32>(32u)), (var_0.a.b && var_2.x) == true)), var_2.x, ((~arg_0.x ^ reverseBits(34181u)) ^ firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.a, var_0.b.wxw))) << (_wgslsmith_clamp_u32(arg_0.x, 1u, firstTrailingBit(4326u)) % 32u), var_1, ~0u);
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: u32) -> Struct_1 {
    let var_0 = func_2(_wgslsmith_mult_vec2_u32(vec2<u32>(19491u, ~0u), ~(~(~vec2<u32>(4294967295u, u_input.b)))));
    var var_1 = select(_wgslsmith_dot_vec2_u32(u_input.a.zy, reverseBits(countOneBits(~vec2<u32>(u_input.c, u_input.c)))), _wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(u_input.c, arg_2))), vec2<u32>(_wgslsmith_add_u32(arg_2, 1u), firstLeadingBit(1u))), true);
    global3 = array<vec4<bool>, 1>();
    var var_2 = vec4<bool>(arg_0, !var_0.b, !(!any(var_0.d.zy)), min(u_input.b, 1u) < abs(~(~37684u)));
    var var_3 = Struct_2(_wgslsmith_dot_vec3_i32(-(~u_input.d.wyy) & vec3<i32>(u_input.e, ~u_input.e, u_input.d.x), ~(max(vec3<i32>(9629i, 26651i, u_input.d.x), u_input.d.yzw) ^ min(vec3<i32>(u_input.e, 0i, -1i), u_input.d.zyw))), 24935i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-195f, arg_1))) * -462f)));
    return var_0;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_3) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_div_i32(_wgslsmith_div_i32(arg_1.a, _wgslsmith_add_i32(arg_3.d.a, arg_3.e.x)) << (_wgslsmith_mult_u32(arg_2.e | 48317u, 1u) % 32u), _wgslsmith_dot_vec2_i32(-u_input.d.wz, u_input.d.ww)), ~(-_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.d.zyx, vec3<i32>(arg_1.a, -39716i, u_input.d.x)), _wgslsmith_clamp_vec3_i32(u_input.d.ywy, u_input.d.yxy, vec3<i32>(0i, arg_2.a, u_input.d.x)))), global0.x);
    let var_1 = ~u_input.a.x;
    let var_2 = vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(arg_2.a, func_1(false, global0.x, arg_1.e).a ^ -21802i), -19724i), select(_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_1.a, 58901i, arg_2.a, var_0.b) | u_input.d, -_wgslsmith_div_vec4_i32(vec4<i32>(1i, -24024i, -36785i, -2147483647i), u_input.d)), u_input.e, all(arg_1.d)));
    var var_3 = -40349i;
    let var_4 = arg_3.d;
    return Struct_2(i32(-1i) * -2147483647i, var_2.x, _wgslsmith_div_f32(-231f, var_4.c));
}

fn func_6(arg_0: Struct_2, arg_1: bool, arg_2: vec3<u32>) -> f32 {
    var var_0 = u_input.c;
    var var_1 = arg_1;
    var_0 = min(~(~func_1(arg_1, 967f, arg_2.x).e << (~4294967295u % 32u)), _wgslsmith_div_u32(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(arg_2.x, 1027u, u_input.b), 4294967295u), vec2<u32>(1u, 1u))));
    var var_2 = Struct_2(arg_0.b, u_input.e, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-606f * 1000f))));
    global3 = array<vec4<bool>, 1>();
    return _wgslsmith_div_f32(var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.c, global0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 27>();
    let var_0 = vec3<bool>(!select(any(global3[_wgslsmith_index_u32(31561u, 1u)]), global0.x <= _wgslsmith_f_op_f32(-global0.x), false), (_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global0.x)))) > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x * -133f)))) && (true && (u_input.b != u_input.a.x)), true);
    var var_1 = 1i;
    let var_2 = vec3<f32>(-459f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(func_5(var_0.x, func_1(false, global0.x, 92532u), Struct_1(-2147483647i, var_0.x, 334u, vec3<bool>(false, false, true), 1u), Struct_3(Struct_1(20551i, var_0.x, 13037u, vec3<bool>(false, false, var_0.x), u_input.a.x), vec4<u32>(1u, u_input.a.x, u_input.b, 1u), vec4<f32>(1000f, -2746f, -908f, global0.x), Struct_2(-5675i, 1i, -1512f), u_input.d.xz)), var_0.x, firstLeadingBit(~vec3<u32>(u_input.a.x, 0u, u_input.a.x))))), global0.x);
    var var_3 = Struct_2(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, max(0i, u_input.d.x), u_input.d.x >> (0u % 32u), func_5(true, Struct_1(u_input.d.x, true, u_input.a.x, vec3<bool>(var_0.x, false, var_0.x), 61146u), Struct_1(u_input.d.x, true, u_input.b, vec3<bool>(false, var_0.x, var_0.x), 20944u), global1[_wgslsmith_index_u32(1u, 27u)]).b), vec4<i32>(1i, ~u_input.e, -2147483647i, u_input.e))), 49388i, var_2.x);
    global1 = array<Struct_3, 27>();
    var_1 = u_input.e;
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, 31007i >> (u_input.b % 32u));
}

