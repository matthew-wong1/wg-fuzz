struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec3<i32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3, arg_3: i32) -> vec4<bool> {
    let var_0 = vec3<u32>(firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_add_u32(~arg_0.e, u_input.d), 24697u)), arg_0.a.x ^ arg_0.a.x, 9571u);
    var var_1 = _wgslsmith_dot_vec3_u32(reverseBits(~(~arg_0.a) >> (~var_0 % vec3<u32>(32u))), arg_0.a);
    global0 = arg_2.a & (_wgslsmith_sub_i32(45600i, max(-5334i, select(-39780i, arg_3, false))) != arg_3);
    let var_2 = Struct_1(var_0, arg_0.b, _wgslsmith_mod_vec3_i32(firstTrailingBit(firstLeadingBit(u_input.b.yxx)), arg_0.c), arg_2.a, 1u);
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(168f, 1031f));
    return vec4<bool>(arg_0.d, true, true, false);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: bool) -> bool {
    global0 = !all(select(vec3<bool>(false, false, true), func_3(Struct_1(vec3<u32>(1u, 4294967295u, arg_1.a.a.x), vec2<bool>(arg_1.a.b.x, true), u_input.b.zzw, arg_0.x, arg_1.a.a.x), Struct_3(arg_1.a.d), Struct_3(arg_3), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a.c.x, u_input.c), arg_1.a.c.xy)).wyx, arg_3));
    let var_0 = arg_1;
    return var_0.a.d;
}

fn func_2() -> f32 {
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f + 919f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(447f)) + _wgslsmith_f_op_f32(647f + 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-654f))))))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(346f)))), 1f)) + -1576f);
    global0 = func_4(vec2<bool>(true, any(!func_3(Struct_1(u_input.a.zyz, vec2<bool>(true, false), vec3<i32>(u_input.b.x, u_input.c, u_input.c), true, u_input.d), Struct_3(false), Struct_3(true), u_input.b.x))), Struct_2(Struct_1(u_input.a.zzz ^ abs(u_input.a.yxw), vec2<bool>(true, true), _wgslsmith_mult_vec3_i32(u_input.b.xwx, u_input.b.yxy) | -vec3<i32>(6363i, 2147483647i, -26358i), true, ~u_input.e.x), !select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(vec4<bool>(false, true, all(vec3<bool>(true, true, true)), any(vec4<bool>(false, true, false, true))), vec4<bool>(all(vec2<bool>(true, true)), any(vec2<bool>(false, true)), true, false), _wgslsmith_f_op_f32(-486f + 1000f) < _wgslsmith_f_op_f32(floor(1000f)))), vec4<u32>(0u, _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 90286u, u_input.d, 25254u), vec4<u32>(u_input.d, u_input.e.x, 0u, 70495u)), 0u), ~u_input.e.x, u_input.a.x), 328f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2124f - 519f) + _wgslsmith_f_op_f32(min(-1010f, 251f))) * _wgslsmith_f_op_f32(floor(-920f))));
    let var_0 = _wgslsmith_mod_i32(u_input.c, _wgslsmith_dot_vec3_i32(abs(u_input.b.wwy), u_input.b.wxy));
    global0 = all(!(!select(vec3<bool>(true, true, true), func_3(Struct_1(vec3<u32>(u_input.e.x, u_input.a.x, u_input.e.x), vec2<bool>(false, false), vec3<i32>(u_input.c, -1i, 2147483647i), true, 0u), Struct_3(false), Struct_3(true), var_0).xww, true)));
    var var_1 = Struct_3(9069u < ~(~(~u_input.e.x)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-218f * _wgslsmith_f_op_f32(-646f + _wgslsmith_f_op_f32(step(-642f, 374f))))), -547f);
}

fn func_1(arg_0: vec4<i32>) -> f32 {
    let var_0 = arg_0.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-395f, 911f, -464f)))), vec3<f32>(_wgslsmith_f_op_f32(sign(835f)), _wgslsmith_f_op_f32(-1550f - -609f), _wgslsmith_f_op_f32(func_2())))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(474f, 251f, 1025f))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(332f, -633f, 970f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-151f, -147f, 1336f)))))))));
    let var_2 = arg_0.yw;
    global0 = true;
    global0 = !all(vec3<bool>(true, true, 1000f > var_1.x)) == (arg_0.x < -reverseBits(arg_0.x));
    return _wgslsmith_f_op_f32(step(var_1.x, var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 932f;
    let var_1 = ~1u;
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_1(_wgslsmith_sub_vec4_i32(u_input.b, u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-950f, -1026f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-301f, 1456f) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(208f, -1000f), vec2<f32>(410f, -809f), vec2<bool>(true, false)))))), vec2<bool>(select(u_input.c <= -6555i, false, u_input.b.x > _wgslsmith_add_i32(2833i, u_input.c)), true)));
    let var_3 = u_input.b.zzw;
    var var_4 = ~(~u_input.a.wx);
    let x = u_input.a;
    s_output = StorageBuffer(-1i, vec3<i32>(u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -12825i, u_input.c), u_input.b.xxw), _wgslsmith_sub_i32(1i, min(2147483647i, u_input.b.x))), var_4.x, -((1789i ^ var_3.x) & ((2147483647i >> (var_4.x % 32u)) ^ _wgslsmith_clamp_i32(20521i, 2566i, 1i))));
}

