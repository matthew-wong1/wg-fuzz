struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: u32 = 1u;

var<private> global2: Struct_1;

var<private> global3: array<vec2<bool>, 2>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<bool>) -> u32 {
    global3 = array<vec2<bool>, 2>();
    let var_0 = reverseBits(select(vec3<u32>(12361u, 1u, 3914u) << (_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, global2.c.x, u_input.c.x), ~vec3<u32>(4294967295u, u_input.c.x, 18650u)) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(u_input.c.x, 1u, ~u_input.c.x)), true));
    var var_1 = firstTrailingBit(arg_0.x) ^ u_input.a;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -559f), 862f, arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-556f))))));
    let var_3 = 1122f;
    return ~(~29253u);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_5, arg_2: vec3<f32>, arg_3: Struct_4) -> vec4<bool> {
    global3 = array<vec2<bool>, 2>();
    global3 = array<vec2<bool>, 2>();
    var var_0 = arg_3;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(197f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1355f, 522f))))));
    let var_2 = arg_0.b.e.b.x;
    return select(select(!select(!vec4<bool>(global2.a, true, true, false), vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, var_0.b.a, arg_3.b.c.a), vec4<bool>(var_0.b.a, false, arg_3.b.d.a, false), vec4<bool>(false, true, true, arg_0.b.d.a))), select(select(!vec4<bool>(global2.a, global0.x, true, global2.a), !vec4<bool>(true, global0.x, var_0.b.d.a, true), true || var_0.b.e.a), !vec4<bool>(global0.x, false, global2.a, true), select(!vec4<bool>(true, global0.x, false, false), !vec4<bool>(false, arg_3.b.d.a, arg_3.b.c.a, true), select(vec4<bool>(false, true, global0.x, var_0.b.c.a), vec4<bool>(var_0.b.d.a, false, false, true), vec4<bool>(false, false, var_0.b.c.a, global0.x)))), false), vec4<bool>(select(select(arg_0.b.a, any(vec4<bool>(var_0.b.c.a, false, false, arg_0.b.a)), true), true, true), false, arg_0.b.e.a, true), true);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: vec3<f32>) -> i32 {
    var var_0 = Struct_2(global2.a, ~(~(countOneBits(vec4<u32>(u_input.c.x, 29544u, 1370u, 0u)) & (vec4<u32>(63252u, 13711u, 38878u, 63199u) & vec4<u32>(27187u, u_input.c.x, 1u, 1u)))), Struct_1(1i >= -_wgslsmith_sub_i32(global2.b.x, u_input.a), u_input.d.xx, global2.c), Struct_1(arg_1.x, vec2<i32>(u_input.d.x, global2.b.x), ~global2.c), Struct_1(global0.x, u_input.d.xw, _wgslsmith_mod_vec2_u32(~vec2<u32>(global2.c.x, 0u), vec2<u32>(countOneBits(arg_0.x), u_input.c.x))));
    global1 = countOneBits(abs(_wgslsmith_div_u32(~(global2.c.x ^ 4294967295u), 14949u)));
    var_0 = Struct_2(true, var_0.b, var_0.e, Struct_1(arg_2.x != _wgslsmith_f_op_f32(ceil(arg_2.x)), firstLeadingBit(abs(u_input.d.wx)), _wgslsmith_clamp_vec2_u32(~u_input.c, arg_0.yx, countOneBits(_wgslsmith_div_vec2_u32(var_0.b.zx, vec2<u32>(0u, arg_0.x))))), var_0.e);
    global3 = array<vec2<bool>, 2>();
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(362f, arg_2.x))))), global2.a, abs(0i));
    return ~2147483647i;
}

fn func_1() -> i32 {
    let var_0 = func_4(vec3<u32>(~u_input.c.x, func_2(firstLeadingBit(min(u_input.d.yz, vec2<i32>(global2.b.x, u_input.a))), select(vec3<bool>(true, global2.a, global0.x), vec3<bool>(true, false, global2.a), global0.www)), ~(~_wgslsmith_div_u32(24166u, global2.c.x))), select(!func_3(Struct_4(-1i, Struct_2(global2.a, vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 0u), Struct_1(global2.a, vec2<i32>(u_input.b, global2.b.x), u_input.c), Struct_1(global0.x, vec2<i32>(global2.b.x, -34834i), global2.c), Struct_1(false, u_input.d.zy, vec2<u32>(u_input.c.x, u_input.c.x)))), Struct_5(vec2<f32>(1827f, -1000f)), vec3<f32>(487f, -1427f, -1189f), Struct_4(u_input.b, Struct_2(global2.a, vec4<u32>(u_input.c.x, global2.c.x, global2.c.x, global2.c.x), Struct_1(true, vec2<i32>(1i, global2.b.x), vec2<u32>(global2.c.x, 32218u)), Struct_1(global0.x, u_input.d.yw, vec2<u32>(u_input.c.x, 42872u)), Struct_1(global0.x, vec2<i32>(-66877i, 1i), vec2<u32>(1u, 1u))))), !vec4<bool>(func_3(Struct_4(1i, Struct_2(global2.a, vec4<u32>(global2.c.x, global2.c.x, 6243u, 44336u), Struct_1(global0.x, vec2<i32>(u_input.b, global2.b.x), vec2<u32>(global2.c.x, 0u)), Struct_1(global0.x, vec2<i32>(global2.b.x, u_input.d.x), vec2<u32>(u_input.c.x, global2.c.x)), Struct_1(global0.x, global2.b, vec2<u32>(u_input.c.x, 1u)))), Struct_5(vec2<f32>(-2127f, -940f)), vec3<f32>(904f, -1140f, -944f), Struct_4(global2.b.x, Struct_2(global0.x, vec4<u32>(1u, u_input.c.x, global2.c.x, 4294967295u), Struct_1(false, u_input.d.wy, u_input.c), Struct_1(false, global2.b, u_input.c), Struct_1(global2.a, vec2<i32>(global2.b.x, global2.b.x), vec2<u32>(u_input.c.x, u_input.c.x))))).x, global2.a, true, true), select(vec4<bool>(global0.x, true, true, false), !select(vec4<bool>(false, true, global2.a, false), vec4<bool>(false, global2.a, global2.a, true), vec4<bool>(global2.a, false, false, true)), global0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-129f, 1059f, 101f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1527f - 1000f), _wgslsmith_f_op_f32(-461f + -882f), -215f))));
    global0 = !vec4<bool>((38919u | _wgslsmith_div_u32(global2.c.x, 20882u)) > (global2.c.x ^ u_input.c.x), !all(!vec4<bool>(global2.a, true, false, global0.x)), global2.a, global2.a);
    global2 = Struct_1(false, ~vec2<i32>(-1i, _wgslsmith_mod_i32(-u_input.a, firstTrailingBit(3874i))), ~vec2<u32>(firstTrailingBit(0u), _wgslsmith_mod_u32(func_2(vec2<i32>(2147483647i, global2.b.x), vec3<bool>(true, true, true)), ~4294967295u)));
    var var_1 = Struct_5(_wgslsmith_div_vec2_f32(vec2<f32>(768f, -373f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-663f, 815f) - vec2<f32>(-334f, 704f)), vec2<f32>(-201f, 2701f))))));
    var var_2 = Struct_4(~_wgslsmith_dot_vec3_i32(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(44966i, var_0, 2147483647i), u_input.d.xyz)), abs(vec3<i32>(-1i, 0i, -7663i))), Struct_2(!all(vec2<bool>(global2.a, false)) | !(global2.c.x != global2.c.x), reverseBits(vec4<u32>(u_input.c.x, global2.c.x, 4294967295u, 1u) & abs(vec4<u32>(78975u, global2.c.x, u_input.c.x, 0u))), Struct_1(true, vec2<i32>(_wgslsmith_dot_vec2_i32(global2.b, vec2<i32>(-2147483647i, var_0)), var_0), vec2<u32>(34266u, 0u) ^ vec2<u32>(4294967295u, global2.c.x)), Struct_1(true, abs(u_input.d.zy), _wgslsmith_add_vec2_u32(vec2<u32>(1u, global2.c.x), u_input.c ^ vec2<u32>(global2.c.x, 0u))), Struct_1(global0.x, vec2<i32>(_wgslsmith_mult_i32(global2.b.x, 0i), ~16365i), global2.c)));
    return -46708i;
}

fn func_5(arg_0: Struct_4, arg_1: vec4<f32>) -> Struct_5 {
    global1 = firstLeadingBit(~_wgslsmith_add_u32(global2.c.x, ~(~u_input.c.x)));
    var var_0 = select(firstLeadingBit(_wgslsmith_mult_i32(~1i, (i32(-1i) * -19272i) & ~arg_0.b.d.b.x)), _wgslsmith_add_i32(5130i, -69457i), false);
    global3 = array<vec2<bool>, 2>();
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1347f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-270f - arg_1.x)), all(select(vec4<bool>(global2.a, global2.a, true, false), vec4<bool>(global2.a, true, false, true), vec4<bool>(arg_0.b.d.a, global2.a, arg_0.b.d.a, true))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - arg_1.x)))), 1285f);
    var var_2 = !select(select(select(!vec4<bool>(global0.x, global2.a, arg_0.b.e.a, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, arg_0.b.c.a, global0.x, global2.a), global2.a), true), vec4<bool>(true, false, any(vec4<bool>(global0.x, true, global2.a, true)), true), vec4<bool>(select(global2.a, arg_0.b.a, arg_0.b.c.a), true, arg_0.b.c.a, true)), vec4<bool>(true, all(!vec4<bool>(true, true, arg_0.b.e.a, true)), (u_input.c.x <= u_input.c.x) & any(vec2<bool>(arg_0.b.c.a, arg_0.b.a)), _wgslsmith_f_op_f32(step(534f, arg_1.x)) == _wgslsmith_f_op_f32(exp2(arg_1.x))), false & any(global0.yy));
    return Struct_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + arg_1.x) + _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.x)) + _wgslsmith_f_op_f32(-arg_1.x)))));
}

fn func_6(arg_0: Struct_5, arg_1: Struct_4) -> Struct_2 {
    let var_0 = global2.b;
    var var_1 = arg_0;
    let var_2 = ~vec2<u32>(abs(0u), abs(global2.c.x));
    var var_3 = arg_0;
    var var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a.x)));
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(2147483647i, func_6(func_5(Struct_4(func_1(), Struct_2(global2.a, vec4<u32>(u_input.c.x, u_input.c.x, 1u, global2.c.x), Struct_1(global0.x, vec2<i32>(u_input.d.x, -17402i), global2.c), Struct_1(true, global2.b, global2.c), Struct_1(true, vec2<i32>(-6352i, 2147483647i), vec2<u32>(u_input.c.x, 25691u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-385f, 1182f, -841f, -185f) + vec4<f32>(1208f, -579f, 1691f, -765f)) + vec4<f32>(-937f, 116f, -1043f, -825f))), Struct_4(_wgslsmith_mod_i32(func_4(vec3<u32>(4294967295u, 48209u, 58359u), vec4<bool>(false, true, true, global2.a), vec3<f32>(1553f, -1262f, 297f)), ~global2.b.x), Struct_2(all(vec4<bool>(global2.a, global2.a, global0.x, false)), vec4<u32>(global2.c.x, u_input.c.x, u_input.c.x, 20683u) | vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 4294967295u), Struct_1(true, vec2<i32>(global2.b.x, 1i), vec2<u32>(u_input.c.x, 42764u)), Struct_1(true, u_input.d.wy, global2.c), Struct_1(false, vec2<i32>(global2.b.x, 5935i), u_input.c)))));
    var var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(ceil(-210f)), -1000f), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1595f - 734f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(731f - -491f))))));
    let var_2 = Struct_4(0i, func_6(func_5(var_0, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -103f), _wgslsmith_f_op_f32(max(-841f, -463f)), _wgslsmith_f_op_f32(floor(-846f)), 370f)), Struct_4(_wgslsmith_div_i32(global2.b.x ^ 96795i, u_input.a), var_0.b)));
    let var_3 = func_5(var_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(ceil(var_1.a.x)), _wgslsmith_f_op_f32(sign(var_1.a.x)), _wgslsmith_f_op_f32(-var_1.a.x))) + vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, -1479f)));
    var var_4 = vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.d.zzx, vec3<i32>(-(32743i ^ var_0.a), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(var_0.a, var_0.b.e.b.x) ^ u_input.d.yx), firstLeadingBit(var_2.b.c.b.x))), -var_0.b.d.b.x, var_2.a, func_6(var_3, var_2).e.b.x);
    let var_5 = var_0.b.d.c.x;
    let var_6 = var_4.x;
    var var_7 = func_2(vec2<i32>(i32(-1i) * -1i, 2147483647i) & ~var_2.b.e.b, vec3<bool>(global0.x, global2.a, !func_6(var_3, var_0).a)) >> (~var_0.b.e.c.x % 32u);
    var var_8 = _wgslsmith_mult_vec3_u32(var_2.b.b.wyw, var_0.b.b.yzw ^ ~(~max(vec3<u32>(27291u, 115077u, var_2.b.c.c.x), vec3<u32>(4647u, 53897u, var_5))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(~abs(select(var_2.b.b.xzz, vec3<u32>(u_input.c.x, 0u, 4294967295u), var_2.b.a)), var_2.b.b.yxx));
}

