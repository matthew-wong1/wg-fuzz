struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: vec4<u32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: i32,
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

var<private> global0: Struct_2 = Struct_2(vec4<bool>(true, false, false, true), -373f, vec4<u32>(38433u, 1u, 0u, 4294967295u), vec3<bool>(true, false, false));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<bool> {
    global0 = Struct_2(select(!select(global0.a, select(vec4<bool>(global0.d.x, true, true, global0.a.x), global0.a, global0.a), global0.a.x), select(select(global0.a, !vec4<bool>(false, global0.a.x, true, true), global0.c.x == global0.c.x), select(!global0.a, !vec4<bool>(global0.a.x, true, true, global0.a.x), select(vec4<bool>(false, global0.d.x, false, false), global0.a, false)), select(!global0.a, global0.a, true)), global0.a), -199f, vec4<u32>(_wgslsmith_div_u32(46525u, abs(global0.c.x)), ~_wgslsmith_add_u32(firstTrailingBit(25605u), _wgslsmith_sub_u32(global0.c.x, global0.c.x)), u_input.b, ~global0.c.x), vec3<bool>(-_wgslsmith_dot_vec2_i32(u_input.a.yw, u_input.c.yx) > ~(~u_input.c.x), any(vec2<bool>(true, !global0.a.x)), global0.d.x));
    var var_0 = Struct_3(Struct_2(select(!(!global0.a), select(global0.a, global0.a, 0u == u_input.b), vec4<bool>(global0.a.x, !global0.a.x, all(vec2<bool>(global0.d.x, true)), false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1472f, 312f) + -122f), _wgslsmith_f_op_f32(f32(-1f) * -100f)), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(37086u, 9336u, global0.c.x, 1u), global0.c), vec4<u32>(4294967295u, 56464u, global0.c.x, u_input.b) ^ ~global0.c), !select(vec3<bool>(global0.a.x, global0.d.x, false), global0.d, global0.a.x)), Struct_1(global0.b), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.b + 1147f), _wgslsmith_f_op_f32(-1016f * 836f), global0.b)))));
    var_0 = Struct_3(Struct_2(!vec4<bool>(any(global0.d), global0.b >= var_0.a.b, any(var_0.a.a.xwz), var_0.b.a < var_0.b.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_0.b.a)), 852f)), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(global0.c.xww, global0.c.wyw), ~4294967295u, _wgslsmith_dot_vec3_u32(global0.c.yyx, var_0.a.c.zzz), abs(u_input.b)), select(var_0.a.c, global0.c, global0.a)), select(vec3<bool>(true, all(vec4<bool>(true, var_0.a.a.x, true, global0.d.x)), all(global0.d.xy)), select(select(global0.a.yzy, vec3<bool>(true, false, var_0.a.a.x), false), select(vec3<bool>(global0.a.x, true, true), vec3<bool>(global0.a.x, false, true), false), vec3<bool>(true, true, true)), true)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.a + 386f) * global0.b)), _wgslsmith_f_op_vec3_f32(-var_0.c));
    let var_1 = Struct_3(Struct_2(vec4<bool>(var_0.a.a.x, any(!global0.d), true, any(!vec4<bool>(true, true, global0.d.x, global0.d.x))), _wgslsmith_div_f32(-721f, _wgslsmith_f_op_f32(ceil(-1280f))), countOneBits(vec4<u32>(var_0.a.c.x, ~1u, _wgslsmith_mod_u32(global0.c.x, 33845u), 22733u)), !var_0.a.a.yww), var_0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.a, _wgslsmith_f_op_f32(f32(-1f) * -254f), _wgslsmith_f_op_f32(1219f - var_0.a.b))) * var_0.c));
    var var_2 = var_0.b;
    return !select(vec3<bool>(true, true, false), var_1.a.d, var_1.a.d);
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: bool) -> vec4<bool> {
    var var_0 = Struct_2(!global0.a, -602f, global0.c, !arg_1.a.zxw);
    var_0 = Struct_2(select(!select(select(arg_1.a, vec4<bool>(false, true, var_0.a.x, true), global0.a), arg_1.a, arg_2), !vec4<bool>(!arg_1.d.x, true, false, arg_1.c.x > 1u), vec4<bool>(true & all(arg_1.a.yx), true, global0.a.x, var_0.d.x)), _wgslsmith_f_op_f32(trunc(953f)), _wgslsmith_mod_vec4_u32(~global0.c, ~global0.c), vec3<bool>(global0.a.x, !(!(-944f < var_0.b)), global0.a.x));
    let var_1 = reverseBits(abs(u_input.a.x));
    let var_2 = !(!global0.d);
    global0 = Struct_2(vec4<bool>(false, true, false, true), -1580f, global0.c, !(!select(select(vec3<bool>(arg_2, true, arg_0), vec3<bool>(true, arg_1.d.x, arg_2), vec3<bool>(arg_0, var_2.x, arg_0)), func_3(), !arg_0)));
    return vec4<bool>(select(func_3().x, all(arg_1.a), true && (1u == arg_1.c.x)), !var_2.x, true, !all(select(vec2<bool>(var_0.d.x, arg_0), vec2<bool>(var_2.x, true), true)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3) -> i32 {
    global0 = arg_1.a;
    global0 = Struct_2(func_2(arg_1.a.a.x, arg_2.a, arg_0.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.a) * _wgslsmith_f_op_f32(-arg_2.b.a))), vec4<u32>(_wgslsmith_dot_vec4_u32(arg_2.a.c, max(~arg_1.a.c, ~arg_0.a.c)), abs(1u), 21168u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.c.x, global0.c.x, u_input.b, 1u), arg_1.a.c)), !vec3<bool>(any(vec4<bool>(global0.a.x, true, true, true)), !(true | arg_2.a.d.x), false));
    global0 = arg_2.a;
    global0 = arg_0.a;
    var var_0 = arg_2.a.c.x;
    return -abs(u_input.c.x);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = vec2<u32>(1u, firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 6164u, 0u), vec3<u32>(u_input.b, 7320u, global0.c.x)), reverseBits(36288u), ~20304u), ~(u_input.b ^ u_input.b))));
    let var_1 = arg_2;
    var_0 = global0.c.ww;
    let var_2 = abs(~1u);
    var_0 = global0.c.zx;
    return Struct_2(!select(vec4<bool>(global0.d.x & false, true, func_3().x, global0.d.x), !vec4<bool>(false, true, global0.d.x, global0.d.x), global0.a), var_1.a, select(global0.c, select(~_wgslsmith_sub_vec4_u32(global0.c, global0.c), select(~global0.c, global0.c, all(vec2<bool>(true, true))), global0.a), !(!(!vec4<bool>(global0.a.x, true, true, false)))), select(!(!select(vec3<bool>(false, global0.a.x, global0.a.x), vec3<bool>(false, global0.a.x, global0.d.x), true)), select(select(global0.d, func_2(false, Struct_2(global0.a, arg_2.a, vec4<u32>(33112u, var_0.x, 5336u, 4294967295u), global0.d), global0.a.x).zwy, select(vec3<bool>(global0.d.x, false, global0.d.x), global0.a.xyy, false)), !select(vec3<bool>(true, false, global0.d.x), global0.a.xyx, vec3<bool>(global0.a.x, true, global0.d.x)), false), true && global0.a.x));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: Struct_3) -> Struct_2 {
    global0 = arg_2.a;
    var var_0 = Struct_3(arg_0, arg_2.b, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(arg_2.c * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_2.c, arg_2.c))))));
    var_0 = arg_2;
    var_0 = Struct_3(var_0.a, arg_2.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(arg_2.c))));
    let var_1 = func_2(func_4(vec3<i32>(23188i, _wgslsmith_add_i32(firstTrailingBit(52472i), -7553i), 19482i & u_input.c.x), vec2<f32>(258f, -179f), var_0.b).d.x, Struct_2(vec4<bool>(!(4294967295u > arg_0.c.x), arg_2.a.a.x, arg_0.d.x, all(arg_0.d) || (arg_0.c.x < 5261u)), arg_2.b.a, _wgslsmith_add_vec4_u32(vec4<u32>(var_0.a.c.x, ~16415u, 1u, ~global0.c.x), _wgslsmith_mod_vec4_u32(arg_2.a.c << (vec4<u32>(arg_2.a.c.x, 2683u, 0u, arg_0.c.x) % vec4<u32>(32u)), vec4<u32>(77364u, 1u, 5265u, global0.c.x) & vec4<u32>(global0.c.x, arg_0.c.x, 23884u, 45084u))), !arg_2.a.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.c.x + var_0.a.b))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.b)))) >= _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(2436f, var_0.a.b), arg_2.a.b))).yy;
    return func_4(_wgslsmith_sub_vec3_i32(~vec3<i32>(_wgslsmith_mult_i32(u_input.e, u_input.e), -9062i, _wgslsmith_mod_i32(57383i, -1i)), select(select(u_input.c, u_input.a.yyx, global0.a.ywz), -vec3<i32>(u_input.e, -28234i, u_input.d), !arg_2.a.a.ywz) & _wgslsmith_clamp_vec3_i32(firstTrailingBit(u_input.a.zwy), vec3<i32>(u_input.c.x, u_input.d, -29518i), abs(vec3<i32>(-37372i, -1i, u_input.c.x)))), _wgslsmith_f_op_vec2_f32(floor(arg_2.c.zx)), arg_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(func_4(_wgslsmith_add_vec3_i32(vec3<i32>(~u_input.e, ~6541i, func_1(Struct_3(Struct_2(vec4<bool>(false, true, false, global0.a.x), global0.b, vec4<u32>(global0.c.x, u_input.b, u_input.b, 4294967295u), global0.a.wwx), Struct_1(global0.b), vec3<f32>(global0.b, -1532f, global0.b)), Struct_3(Struct_2(global0.a, -991f, global0.c, global0.a.zzx), Struct_1(global0.b), vec3<f32>(global0.b, global0.b, global0.b)), Struct_3(Struct_2(vec4<bool>(global0.d.x, true, false, false), -856f, global0.c, vec3<bool>(global0.d.x, false, global0.a.x)), Struct_1(2843f), vec3<f32>(global0.b, -1430f, -529f)))), vec3<i32>(_wgslsmith_sub_i32(2147483647i, 2147483647i), u_input.d, u_input.c.x)), vec2<f32>(308f, _wgslsmith_f_op_f32(-global0.b)), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global0.b, -1050f), global0.b)))), ~(global0.c.x << ((u_input.b >> (max(70588u, 4294967295u) % 32u)) % 32u)), Struct_3(Struct_2(global0.a, _wgslsmith_div_f32(-1233f, global0.b), ~global0.c, !select(global0.d, global0.a.wyx, global0.d.x)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.b)) - _wgslsmith_f_op_f32(floor(-244f)))), vec3<f32>(global0.b, -708f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)))));
    var var_0 = Struct_2(vec4<bool>(true, false, select(global0.d.x, !(global0.d.x != true), global0.c.x < ~u_input.b), true), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(global0.b, 612f, all(global0.a.yxw) || true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-832f, -503f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-614f)))))), vec4<u32>(u_input.b, global0.c.x, 0u, min(_wgslsmith_dot_vec2_u32(global0.c.yy, global0.c.wx), _wgslsmith_mod_u32(4294967295u, global0.c.x)) ^ u_input.b), vec3<bool>(true, u_input.b < ~(~28361u), !func_5(func_4(u_input.c, vec2<f32>(-1135f, global0.b), Struct_1(909f)), 4294967295u, Struct_3(Struct_2(global0.a, global0.b, vec4<u32>(global0.c.x, 0u, 62062u, u_input.b), global0.a.yyx), Struct_1(-910f), vec3<f32>(-519f, global0.b, -1000f))).a.x));
    var var_1 = Struct_1(var_0.b);
    var_1 = Struct_1(1000f);
    global0 = func_5(func_4(vec3<i32>(u_input.d, -2147483647i & u_input.e, u_input.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, global0.b)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(909f, -771f))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(537f, var_0.b)) * _wgslsmith_f_op_f32(-global0.b)))), u_input.b, Struct_3(func_5(Struct_2(var_0.a, _wgslsmith_div_f32(901f, -600f), vec4<u32>(4294967295u, 18520u, global0.c.x, u_input.b), func_2(false, Struct_2(vec4<bool>(global0.a.x, var_0.d.x, false, true), -241f, vec4<u32>(7519u, u_input.b, global0.c.x, u_input.b), var_0.d), global0.a.x).yzx), 1u, Struct_3(Struct_2(var_0.a, 1734f, var_0.c, global0.d), Struct_1(var_0.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1223f, var_1.a, var_0.b) + vec3<f32>(var_1.a, var_1.a, 238f)))), Struct_1(global0.b), vec3<f32>(global0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1.a)), 658f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(207f + var_0.b))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b);
}

