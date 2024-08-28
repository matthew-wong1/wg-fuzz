struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<bool>,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
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

var<private> global0: bool = true;

var<private> global1: array<Struct_1, 24>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> i32 {
    let var_0 = Struct_3(_wgslsmith_mult_u32(_wgslsmith_mult_u32(max(u_input.c, abs(0u)), ~19394u << (~u_input.c % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, _wgslsmith_mod_u32(50155u, 4294967295u)), vec2<u32>(0u, ~u_input.c))), Struct_1(select(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, arg_1, -1i), vec3<i32>(1i, -42345i, arg_0.d.d.x)), -arg_0.d.a, vec3<bool>(true, arg_0.a.x, arg_0.b.c.x)) >> (_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.c, 36325u, u_input.c), vec3<u32>(1u, u_input.c, u_input.c) << (vec3<u32>(1u, 2299u, 140791u) % vec3<u32>(32u))) % vec3<u32>(32u)), 6276i, vec4<bool>(false, !arg_0.c | true, false, !(arg_1 < arg_1)), vec2<i32>(1i, arg_1), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.b.e * _wgslsmith_f_op_vec2_f32(-arg_0.b.e)) * arg_0.b.e)));
    global0 = false;
    global1 = array<Struct_1, 24>();
    var var_1 = ~vec4<u32>(0u, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 36233u), vec2<u32>(16970u, 0u))), _wgslsmith_mod_u32(max(19600u, u_input.c), ~23492u) >> (var_0.a % 32u), var_0.a);
    var var_2 = arg_0.d.c;
    return _wgslsmith_add_i32(min(_wgslsmith_add_i32(~(var_0.b.a.x >> (var_1.x % 32u)), 1i), abs(abs(countOneBits(var_0.b.d.x)))), var_0.b.a.x);
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1306f, 1321f))) * -1000f) * -1939f);
    var var_1 = Struct_2(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false), Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(-54725i, 55128i, u_input.b), -(vec3<i32>(u_input.b, 1i, u_input.b) << (vec3<u32>(u_input.c, 52810u, 0u) % vec3<u32>(32u)))), u_input.b, select(vec4<bool>(true, any(vec3<bool>(false, true, true)), true, false), vec4<bool>(true, true, true, all(vec2<bool>(false, false))), !all(vec3<bool>(false, false, true))), u_input.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -597f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) + vec2<f32>(355f, -482f)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1320f, var_0)))))), any(select(vec2<bool>(true, select(true, true, false)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))), vec2<bool>(true, true))), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), 4050i, vec4<bool>(-2147483647i < u_input.b, u_input.b >= func_3(Struct_2(vec3<bool>(true, false, true), global1[_wgslsmith_index_u32(u_input.c, 24u)], false, Struct_1(vec3<i32>(u_input.a.x, -1i, u_input.b), -1i, vec4<bool>(true, false, true, true), vec2<i32>(u_input.a.x, u_input.a.x), vec2<f32>(var_0, var_0))), u_input.a.x), false, true), u_input.a, vec2<f32>(-791f, 1304f)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-525f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(411f, -1585f)), _wgslsmith_f_op_f32(trunc(-967f)), var_0)));
    var_1 = Struct_2(select(var_1.a, var_1.d.c.yzw, false), global1[_wgslsmith_index_u32(~1u, 24u)], true, Struct_1(vec3<i32>(~u_input.b, select(func_3(Struct_2(vec3<bool>(var_1.a.x, false, var_1.c), global1[_wgslsmith_index_u32(u_input.c, 24u)], true, global1[_wgslsmith_index_u32(u_input.c, 24u)]), -11859i), var_1.b.d.x >> (12802u % 32u), false), func_3(Struct_2(var_1.b.c.xxy, global1[_wgslsmith_index_u32(45584u, 24u)], var_1.c, Struct_1(vec3<i32>(var_1.d.b, var_1.d.d.x, -1i), 0i, vec4<bool>(true, false, var_1.b.c.x, true), vec2<i32>(45101i, 2147483647i), vec2<f32>(627f, 260f))), ~62374i)), -_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a.x, -2147483647i), 8422i), select(var_1.d.c, vec4<bool>(true, all(var_1.b.c.xw), var_1.a.x, !var_1.c), select(!var_1.b.c, vec4<bool>(var_1.a.x, var_1.c, var_1.b.c.x, var_1.b.c.x), true)), ~vec2<i32>(_wgslsmith_clamp_i32(21102i, 55378i, u_input.b), ~u_input.b), _wgslsmith_f_op_vec2_f32(-var_2.wz)));
    var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(711f, var_1.d.e.x, _wgslsmith_div_f32(1113f, _wgslsmith_f_op_f32(trunc(var_1.d.e.x))), var_1.b.e.x));
    return 34630u;
}

fn func_1(arg_0: vec3<bool>, arg_1: i32) -> Struct_4 {
    let var_0 = _wgslsmith_div_u32(min(0u, u_input.c), func_2() << (_wgslsmith_mult_u32(6804u, ~(~u_input.c)) % 32u));
    let var_1 = select(select(select(!select(vec4<bool>(true, true, arg_0.x, false), vec4<bool>(arg_0.x, false, true, arg_0.x), false), vec4<bool>(true, arg_0.x || false, arg_0.x, arg_0.x), true), select(vec4<bool>(all(arg_0.yy), true, arg_0.x, arg_0.x), vec4<bool>(true, true && arg_0.x, arg_0.x, 4294967295u >= u_input.c), vec4<bool>(true, all(arg_0.zx), !arg_0.x, true | arg_0.x)), false), !(!(!vec4<bool>(true, arg_0.x, true, arg_0.x))), vec4<bool>(!any(vec2<bool>(arg_0.x, arg_0.x)), true, any(vec3<bool>(!arg_0.x, true, !arg_0.x)), true));
    global1 = array<Struct_1, 24>();
    var var_2 = u_input.c;
    var var_3 = any(!select(!(!var_1), var_1, var_1));
    return Struct_4(Struct_1(vec3<i32>(_wgslsmith_div_i32(-45945i, u_input.b), u_input.b, -447i), 32330i, !(!var_1), u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-171f, 398f)), vec2<f32>(-1000f, 193f)))), ~63667i, var_0);
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: i32) -> i32 {
    let var_0 = arg_1.c;
    var var_1 = vec3<f32>(1662f, -973f, arg_0);
    let var_2 = arg_1.a.e.x;
    global1 = array<Struct_1, 24>();
    let var_3 = any(arg_1.a.c.xzx);
    return ~(-select(_wgslsmith_div_i32(u_input.b, _wgslsmith_mod_i32(2147483647i, -75373i)), _wgslsmith_dot_vec2_i32(~arg_1.a.d, countOneBits(arg_1.a.d)), false));
}

fn func_5(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_2) -> vec4<u32> {
    return vec4<u32>(14499u, countOneBits(~4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c, 80461u, u_input.c), ~select(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c) ^ vec4<u32>(19897u, 1u, u_input.c, 6195u), ~vec4<u32>(u_input.c, 1u, u_input.c, 1u), arg_2.d.c)), ~(1u & (u_input.c >> (u_input.c % 32u))) ^ countOneBits(_wgslsmith_sub_u32(154338u, u_input.c << (u_input.c % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-(-_wgslsmith_add_i32(u_input.b, u_input.b) & 2147483647i));
    global1 = array<Struct_1, 24>();
    let var_1 = ~func_5(u_input.a.x & func_4(1649f, func_1(vec3<bool>(true, true, false), u_input.b), -u_input.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-127f, 609f), vec2<f32>(-413f, 1147f))))) - vec2<f32>(_wgslsmith_f_op_f32(1075f * -2923f), _wgslsmith_f_op_f32(-532f + -558f))), Struct_2(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.c, ~4294967295u), 24u)], all(vec4<bool>(false, false, true, false)), func_1(vec3<bool>(true, true, true), 2147483647i).a));
    let var_2 = func_1(vec3<bool>(true, true, true), u_input.a.x);
    global0 = !all(vec4<bool>(var_2.a.c.x, true, false, select(true, true, u_input.a.x <= 0i)));
    var var_3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~1u, ~(~(~var_2.c)), abs(1u), ~_wgslsmith_add_u32(func_1(var_2.a.c.yyy, u_input.b).c, _wgslsmith_add_u32(var_1.x, var_2.c))));
}

