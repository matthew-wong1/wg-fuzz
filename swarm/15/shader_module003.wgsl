struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec3<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<i32>) -> f32 {
    var var_0 = Struct_1(u_input.a.xwz, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(174f, -927f, false))))), -611f));
    var var_1 = -61278i;
    let var_2 = var_0.b;
    var var_3 = u_input.b.yx;
    let var_4 = ~abs(select(u_input.a.x, arg_0.x, any(vec4<bool>(true, false, true, true))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(round(var_0.b))))) * -466f);
}

fn func_2() -> Struct_2 {
    let var_0 = !vec2<bool>(!(false && all(vec2<bool>(false, false))), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), u_input.c > 4294967295u)));
    let var_1 = u_input.b.x;
    var var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a)), _wgslsmith_f_op_f32(1408f + -351f))))), Struct_2(select(vec3<bool>(true, true, true), !vec3<bool>(var_0.x, false, var_0.x), !var_0.x), false, Struct_1(vec3<i32>(u_input.a.x, -23162i << (u_input.c % 32u), u_input.a.x), 185f), var_1), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-842f, 1879f, 191f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1424f, 245f, 1968f))))), vec3<f32>(-274f, _wgslsmith_f_op_f32(ceil(-688f)), _wgslsmith_f_op_f32(floor(-582f))))))));
    var_2 = Struct_4(_wgslsmith_f_op_f32(abs(var_2.a)), var_2.b, vec3<f32>(var_2.b.c.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_2.c.x, -946f)), _wgslsmith_f_op_f32(-939f * -1074f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2175f * var_2.c.x))), var_2.a));
    let var_3 = min(u_input.d, _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1, var_2.b.d, var_2.b.d) | _wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_2.b.d, var_1), u_input.d), _wgslsmith_mod_vec3_u32(u_input.d >> (u_input.b % vec3<u32>(32u)), u_input.b >> (u_input.b % vec3<u32>(32u)))), abs(~(~vec3<u32>(var_1, 11909u, 1u)))));
    return var_2.b;
}

fn func_1(arg_0: Struct_5, arg_1: u32) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(floor(arg_0.b.b.c.b));
    let var_1 = arg_0.a;
    var var_2 = func_2();
    let var_3 = Struct_3(any(var_2.a), func_2(), _wgslsmith_mult_i32(u_input.a.x, var_1.a.x));
    var var_4 = select(!select(!select(vec4<bool>(var_3.b.a.x, true, false, var_3.b.b), vec4<bool>(var_3.b.a.x, var_3.a, true, var_3.a), vec4<bool>(false, var_2.a.x, false, arg_0.b.a)), vec4<bool>(true, false, false, true), true), select(!vec4<bool>(all(vec4<bool>(true, arg_0.b.a, true, var_3.b.b)), arg_0.b.b.a.x, var_3.a, var_2.b), !select(!vec4<bool>(arg_0.b.b.b, var_2.b, true, var_2.b), !vec4<bool>(var_2.a.x, false, var_3.b.a.x, false), !var_2.b), !select(select(vec4<bool>(var_3.a, false, true, true), vec4<bool>(true, true, true, var_3.a), var_2.a.x), select(vec4<bool>(false, arg_0.b.a, false, false), vec4<bool>(var_3.b.a.x, var_3.a, true, true), var_3.a), !vec4<bool>(var_3.a, var_3.a, false, false))), true);
    return Struct_5(Struct_1(arg_0.b.b.c.a, arg_0.a.b), arg_0.b);
}

fn func_4(arg_0: Struct_5, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: Struct_1) -> vec2<f32> {
    let var_0 = Struct_3(false, Struct_2(!vec3<bool>(all(arg_0.b.b.a), all(vec4<bool>(arg_1.x, true, true, arg_1.x)), true), arg_1.x, func_1(Struct_5(arg_0.a, Struct_3(arg_1.x, Struct_2(vec3<bool>(arg_1.x, arg_1.x, arg_0.b.a), true, arg_3, 27080u), 3766i)), u_input.b.x).a, _wgslsmith_mod_u32(select(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(1900u, arg_0.b.b.d, u_input.c)), u_input.b.x, true), u_input.c & (23301u << (arg_0.b.b.d % 32u)))), i32(-1i) * -1i);
    let var_1 = _wgslsmith_dot_vec2_i32(countOneBits(-vec2<i32>(65554i, -2147483647i) >> (_wgslsmith_add_vec2_u32(select(vec2<u32>(u_input.b.x, 0u), vec2<u32>(arg_0.b.b.d, arg_0.b.b.d), var_0.b.a.xy), u_input.b.yy) % vec2<u32>(32u))), vec2<i32>(~(-27383i), _wgslsmith_div_i32(_wgslsmith_clamp_i32(firstTrailingBit(arg_3.a.x), _wgslsmith_add_i32(u_input.a.x, 43556i), ~19825i), firstTrailingBit(select(arg_3.a.x, arg_3.a.x, arg_0.b.b.a.x)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)));
    var var_3 = arg_0.b.b.b | true;
    var_3 = any(!(!(!(!arg_0.b.b.a))));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_2 - vec2<f32>(-608f, 406f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -434f)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.b.c.b, var_0.b.c.b), vec2<f32>(var_0.b.c.b, arg_3.b))), _wgslsmith_div_vec2_f32(arg_2, vec2<f32>(926f, -654f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(func_1(Struct_5(arg_3, var_0), 3170u).b.b.c.b, 1566f)), var_0.b.a.xz)), var_0.b.a.zx));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), firstLeadingBit(1i));
    let var_2 = u_input.a.x;
    var var_3 = -128f;
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-754f * -1172f), _wgslsmith_f_op_f32(abs(-580f))) - _wgslsmith_f_op_vec2_f32(func_4(func_1(Struct_5(Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, var_2), 2535f), Struct_3(true, Struct_2(vec3<bool>(true, true, false), true, Struct_1(u_input.a.xww, 376f), 49711u), 26449i)), 28298u), vec2<bool>(true, true), _wgslsmith_div_vec2_f32(vec2<f32>(-321f, 408f), vec2<f32>(-966f, -1636f)), Struct_1(u_input.a.xzx, 360f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 302f), vec2<f32>(1467f, -441f)))), u_input.b.x <= _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.d, u_input.d), vec3<u32>(1u, u_input.d.x, 49722u)))) - vec2<f32>(_wgslsmith_f_op_f32(-629f * -674f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2441f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -142f)))))));
    var_3 = var_4.x;
    let var_5 = vec2<bool>(true, true);
    var_0 = -_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(_wgslsmith_mod_i32(-2147483647i, var_2), -2147483647i)), min(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 13626i) & vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.yx >> (u_input.b.xz % vec2<u32>(32u))), vec2<i32>(var_2, var_2)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x)))));
}

