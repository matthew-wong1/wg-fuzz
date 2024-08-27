struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: i32 = -74481i;

var<private> global2: Struct_5 = Struct_5(true, -350f, Struct_1(vec2<i32>(i32(-2147483648), 19150i)), vec4<bool>(false, true, true, false));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_5) -> vec4<i32> {
    var var_0 = ~(~vec4<u32>(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x) & u_input.c.x, ~(~17777u), min(39352u, ~1u), 1u));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.b)) + _wgslsmith_f_op_f32(1000f + global0.b))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(abs(808f))))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(513f * 1000f) + arg_1.b));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(182f, var_1) - _wgslsmith_f_op_f32(select(global0.b, global0.b, global2.d.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_1.b)), _wgslsmith_f_op_f32(step(var_1, 458f))), -942f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1462f, -249f, var_1) * vec3<f32>(global0.b, global2.b, -1240f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b, arg_1.b, -612f))))));
    var var_3 = select(select(global0.d.zzx, vec3<bool>(false, arg_1.d.x, true), select(arg_1.d.zzx, arg_1.d.xwy, u_input.c.x < var_0.x)), select(vec3<bool>((arg_1.a && true) != any(arg_1.d), true, !global0.a), !(!vec3<bool>(arg_1.a, true, global0.d.x)), select(vec3<bool>(true, true, global2.c.a.x != 2147483647i), global0.d.zxy, all(select(global0.d.xyy, arg_1.d.xwz, global0.d.x)))), true);
    let var_4 = -354f;
    return _wgslsmith_add_vec4_i32(u_input.b, -_wgslsmith_mult_vec4_i32(u_input.b, u_input.b) << (vec4<u32>(var_0.x, max(var_0.x, var_0.x), select(var_0.x, 0u, global2.d.x), ~0u) % vec4<u32>(32u))) << (vec4<u32>(countOneBits(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, u_input.c.x, u_input.c.x), vec3<u32>(4294967295u, 8300u, var_0.x)))), (var_0.x ^ u_input.c.x) | 1u, countOneBits(~1u) >> (var_0.x % 32u), _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 4294967295u), vec2<u32>(23932u, 4200u)), _wgslsmith_add_u32(u_input.c.x, var_0.x)), (u_input.c.x & var_0.x) << (0u % 32u))) % vec4<u32>(32u));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(851f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b)), -957f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-437f - global2.b), global2.b, _wgslsmith_f_op_f32(global2.b + global0.b))));
    let var_1 = Struct_5(true, var_0.a.x, Struct_1(firstTrailingBit(~global0.c.a) | abs(global0.c.a)), !vec4<bool>(global2.d.x, -u_input.b.x < _wgslsmith_mult_i32(global2.c.a.x, u_input.b.x), true, !(global2.c.a.x > -2147483647i)));
    let var_2 = ~_wgslsmith_add_vec2_u32(firstLeadingBit(max(vec2<u32>(4294967295u, 51433u), vec2<u32>(10022u, 4370u)) << ((vec2<u32>(u_input.c.x, 0u) & u_input.c) % vec2<u32>(32u))), max(u_input.c, u_input.c));
    var var_3 = u_input.b;
    var_3 = func_3(u_input.b.zxy, var_1);
    return Struct_2(~_wgslsmith_add_i32(reverseBits(u_input.b.x), global0.c.a.x), firstTrailingBit(var_3.x << (8794u % 32u)), ~(_wgslsmith_sub_u32(1u, 10303u >> (u_input.c.x % 32u)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, var_2.x, var_2.x, u_input.c.x), reverseBits(vec4<u32>(var_2.x, 0u, 88984u, 0u))) % 32u)), -var_3.x);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: i32, arg_3: vec2<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-638f - 116f)));
    var var_1 = Struct_1(global2.c.a);
    var var_2 = 2147483647i;
    let var_3 = Struct_5(!all(global0.d.yy), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) + _wgslsmith_f_op_f32(-global0.b)), arg_3.x))), global2.c, vec4<bool>(global2.a, !(_wgslsmith_f_op_f32(select(global0.b, arg_1.x, true)) >= _wgslsmith_f_op_f32(-global2.b)), all(vec4<bool>(!global2.a, 2261f >= global2.b, !global0.d.x, global0.a)), select(select(global0.a, false, global2.a) | any(vec3<bool>(true, global2.a, false)), global0.a, all(!vec2<bool>(global0.d.x, global0.a)))));
    let var_4 = _wgslsmith_f_op_f32(-arg_1.x);
    return firstLeadingBit(~0u);
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: Struct_4, arg_3: vec4<bool>) -> u32 {
    let var_0 = func_4(func_2(), arg_2.b, -2147483647i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1079f, arg_2.b.x) - arg_2.a.zx) * _wgslsmith_f_op_vec2_f32(abs(arg_2.b.xx))))) - arg_2.b.xx));
    let var_1 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.b), 1930f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(max(global0.b, arg_2.b.x))))), _wgslsmith_f_op_vec3_f32(arg_2.a + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -682f)), global0.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(989f)), _wgslsmith_f_op_f32(sign(-1006f)))))));
    let var_2 = Struct_5(!(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.b), arg_2.b.x, true)) != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(global0.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1287f - -212f) * arg_2.b.x), Struct_1(reverseBits(~vec2<i32>(4400i, 1i)) >> (u_input.c % vec2<u32>(32u))), vec4<bool>(!(!arg_0) | true, all(global0.d.xyy), global0.a, true));
    global0 = var_2;
    global1 = 1i;
    return arg_1.c.x;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_5) -> Struct_5 {
    global0 = Struct_5(true, -230f, Struct_1(vec2<i32>(arg_1.c.a.x, countOneBits(_wgslsmith_sub_i32(arg_0.a, global2.c.a.x)))), arg_1.d);
    let var_0 = arg_1;
    let var_1 = Struct_3(Struct_1(min(vec2<i32>(arg_1.c.a.x << (arg_0.c % 32u), -2980i), reverseBits(~vec2<i32>(arg_1.c.a.x, global0.c.a.x)))), func_2(), abs(countOneBits(_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 0u, 4294967295u), ~vec3<u32>(arg_0.c, arg_0.c, 11609u), vec3<u32>(arg_0.c, u_input.c.x, arg_0.c)))), global0.c);
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-226f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-389f, -728f)) + _wgslsmith_f_op_f32(global0.b + var_0.b)), arg_1.b))));
    global1 = 33315i;
    return Struct_5(false, var_0.b, Struct_1(vec2<i32>(arg_1.c.a.x, 2147483647i)), vec4<bool>(!(arg_0.c > 41603u), any(var_0.d.zw), any(vec3<bool>(global0.d.x, true, true)), !global0.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_5(false, _wgslsmith_div_f32(global0.b, global0.b), global2.c, vec4<bool>(~u_input.c.x < abs(min(17384u, 9507u)), !global0.a, true, global0.a));
    global2 = func_5(Struct_2(0i, abs(~(global2.c.a.x & 2147483647i)), (_wgslsmith_mult_u32(u_input.c.x, u_input.c.x) << (func_1(true, Struct_3(Struct_1(global2.c.a), Struct_2(5225i, -41367i, u_input.c.x, -71246i), vec3<u32>(u_input.c.x, 30134u, 26185u), Struct_1(global2.c.a)), Struct_4(vec3<f32>(282f, -498f, 213f), vec3<f32>(global2.b, global0.b, -1000f)), vec4<bool>(global2.a, global2.d.x, false, global2.d.x)) % 32u)) ^ _wgslsmith_div_u32(u_input.c.x, 1u), _wgslsmith_mult_i32(global0.c.a.x, ~(-43908i))), Struct_5(any(select(vec2<bool>(global2.a, global0.d.x), !vec2<bool>(global2.a, false), select(global0.d.wx, vec2<bool>(false, global0.a), global0.d.yz))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -250f)), Struct_1(-global2.c.a & _wgslsmith_sub_vec2_i32(vec2<i32>(global0.c.a.x, -45343i), global0.c.a)), global0.d));
    global0 = Struct_5(!global0.d.x, 1763f, global0.c, !(!vec4<bool>(true, !global2.d.x, all(vec4<bool>(true, global2.a, global2.a, global0.a)), true)));
    let var_0 = _wgslsmith_add_u32(~(~firstLeadingBit(u_input.c.x)), 1u);
    global0 = Struct_5(any(select(vec2<bool>(false, false), global2.d.xx, global2.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(2002f)), _wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(select(-637f, global2.b, true))))), global0.c, !vec4<bool>(1u <= ~u_input.c.x, !global0.d.x, all(select(global2.d, global0.d, global2.d)), select(false, global0.d.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, var_0, vec2<i32>(-countOneBits(global0.c.a.x), -2783i) | max(-(vec2<i32>(66365i, 1i) << (vec2<u32>(1u, u_input.c.x) % vec2<u32>(32u))), vec2<i32>(2147483647i, global0.c.a.x & global0.c.a.x)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global2.b)))), -1285f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(global2.b)), _wgslsmith_f_op_f32(min(-238f, global0.b))))));
}

