struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_1,
    d: u32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32>;

var<private> global1: array<vec3<bool>, 22>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_4) -> u32 {
    global1 = array<vec3<bool>, 22>();
    global1 = array<vec3<bool>, 22>();
    global1 = array<vec3<bool>, 22>();
    var var_0 = min(~vec2<u32>(1u, 1u), ~vec2<u32>(reverseBits(16228u) | _wgslsmith_add_u32(54771u, global0[_wgslsmith_index_u32(9472u, 32u)]), ~32915u));
    global1 = array<vec3<bool>, 22>();
    return ~(~firstLeadingBit(var_0.x));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec4<u32>) -> vec3<f32> {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-409f, arg_0.a.x)) - _wgslsmith_f_op_f32(f32(-1f) * -282f)), -122f, _wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.x, arg_0.a.x, -2845f, arg_0.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-907f, arg_0.a.x, arg_0.b.x, 2672f), vec4<f32>(arg_0.b.x, -719f, arg_0.b.x, -764f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)), 827f, _wgslsmith_f_op_f32(-1012f - _wgslsmith_div_f32(-2205f, 1558f)), 1116f) * vec4<f32>(-1158f, -846f, arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.a.x)) - _wgslsmith_f_op_f32(arg_0.a.x + -716f)))));
    var var_1 = ~(~(~arg_0.d.x) | _wgslsmith_div_u32(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_2, arg_2), 32u)], 50295u));
    var var_2 = -firstLeadingBit(max(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(45683i, arg_0.c.x, arg_0.c.x, 38772i), vec4<i32>(arg_0.c.x, arg_0.c.x, -1i, 0i)), _wgslsmith_div_vec4_i32(vec4<i32>(-5636i, arg_0.c.x, -1i, u_input.b), vec4<i32>(arg_0.c.x, arg_0.c.x, u_input.b, -12253i))), max(~0i, u_input.b)));
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(var_0.yx)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(var_0.xw, arg_0.b.xz), vec2<f32>(arg_0.a.x, -135f), true))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(247f, -247f)), var_0.x) - var_0.ww) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(arg_0.a.zx * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, -550f) * vec2<f32>(-1100f, var_0.x)))))), vec2<bool>(countOneBits(1i) == _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.b, -40937i), i32(-1i) * -3436i), arg_1)));
    var_2 = max(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(27157i, arg_0.c.x, u_input.b, -1i)), vec4<i32>(max(arg_0.c.x, -1i), i32(-1i) * -2147483647i, ~(-2147483647i), 5532i)), -1i, _wgslsmith_mult_i32(~(u_input.b ^ arg_0.c.x), -u_input.b ^ _wgslsmith_mult_i32(arg_0.c.x, 0i))), arg_0.c.x);
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2361f * var_3.x) - 1000f)), _wgslsmith_f_op_f32(-arg_0.a.x), -2061f);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_5(Struct_4(Struct_2(any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))), Struct_1(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec3<f32>(-1000f, 1907f, 308f), vec3<f32>(-1122f, -791f, -2418f), vec3<i32>(u_input.b, u_input.b, -2036i), vec3<u32>(66049u, 6385u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], 32u)])), true, vec4<u32>(u_input.a.x, 32619u, u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 32u)]))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-138f, 2598f, -2728f))), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, -20515i, u_input.b), vec3<i32>(u_input.b, -8085i, u_input.b)), vec3<u32>(4893u, u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 32u)]))), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), 17473u > u_input.a.x), Struct_1(vec3<f32>(-1061f, _wgslsmith_div_f32(-891f, -1021f), _wgslsmith_div_f32(1161f, 2010f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-181f, -489f, 1280f)))), vec3<i32>(~u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -52187i), vec2<i32>(4101i, -1i)), 1i), _wgslsmith_add_vec3_u32(~vec3<u32>(42814u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], 32u)], 57737u), vec3<u32>(u_input.a.x, 4294967295u, 1u))), func_1(Struct_4(Struct_2(false, Struct_1(vec3<f32>(2231f, -1909f, 262f), vec3<f32>(260f, -799f, 1265f), vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<u32>(4294967295u, u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 32u)]))), vec4<bool>(false, false, true, false), Struct_1(vec3<f32>(-504f, 1264f, -2046f), vec3<f32>(511f, 1000f, 1000f), vec3<i32>(u_input.b, 2147483647i, u_input.b), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], global0[_wgslsmith_index_u32(u_input.a.x, 32u)], 0u)), u_input.a.x)) & _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 65445u, u_input.a.x), vec4<u32>(0u, 0u, 37770u, global0[_wgslsmith_index_u32(4294967295u, 32u)]) >> (vec4<u32>(u_input.a.x, 0u, 4294967295u, u_input.a.x) % vec4<u32>(32u)))));
    global1 = array<vec3<bool>, 22>();
    var var_1 = Struct_3(var_0.a.a);
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a.c.a.x)));
    let var_3 = Struct_3(var_1.a);
    return Struct_2(all(vec4<bool>(var_3.a.a, !any(var_0.a.b), all(vec2<bool>(true, true)), !(18256i != var_3.a.b.c.x))), var_0.a.a.b);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: u32, arg_3: vec4<f32>) -> Struct_4 {
    var var_0 = vec2<bool>(func_2().a, select(_wgslsmith_sub_i32(i32(-1i) * -43417i, u_input.b) <= 1i, arg_1.a, any(select(vec2<bool>(arg_0, arg_0), select(vec2<bool>(arg_1.a, true), vec2<bool>(arg_1.a, arg_1.a), arg_0), any(global1[_wgslsmith_index_u32(arg_2, 22u)])))));
    var var_1 = ~abs(vec4<u32>(_wgslsmith_mod_u32(12373u, 1u), abs(u_input.a.x), abs(arg_2), 4294967295u) >> (firstTrailingBit(vec4<u32>(3965u, 4294967295u, 54210u, u_input.a.x) ^ vec4<u32>(42823u, 1u, 34817u, 16753u)) % vec4<u32>(32u)));
    var_0 = select(select(select(vec2<bool>(arg_1.a, arg_1.b.b.x >= arg_3.x), vec2<bool>(u_input.a.x >= global0[_wgslsmith_index_u32(0u, 32u)], arg_1.a), true), !vec2<bool>(!arg_0, true), -38228i <= (u_input.b & ~u_input.b)), !select(!(!vec2<bool>(true, var_0.x)), !(!vec2<bool>(arg_1.a, false)), select(!vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, arg_1.a), !var_0.x)), select(!select(vec2<bool>(var_0.x, false), !vec2<bool>(arg_1.a, arg_1.a), false), !select(vec2<bool>(arg_0, var_0.x), !vec2<bool>(var_0.x, false), select(vec2<bool>(false, var_0.x), vec2<bool>(true, arg_1.a), vec2<bool>(arg_1.a, var_0.x))), !(!select(vec2<bool>(arg_1.a, true), vec2<bool>(false, false), vec2<bool>(arg_0, true)))));
    global1 = array<vec3<bool>, 22>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.a.x));
    return Struct_4(arg_1, !vec4<bool>(false, select(true, any(vec4<bool>(arg_1.a, false, true, arg_1.a)), arg_0), true, arg_0), func_2().b, 67308u);
}

fn func_5(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_4, arg_3: bool) -> Struct_2 {
    global1 = array<vec3<bool>, 22>();
    global1 = array<vec3<bool>, 22>();
    var var_0 = Struct_4(func_2(), vec4<bool>(false & arg_3, !(_wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(arg_0.x, 2001i, 13940i, 2147483647i)) <= u_input.b), arg_3, all(arg_2.b)), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_2.c.a))), _wgslsmith_f_op_vec3_f32(-arg_2.a.b.a), func_4(select(false, true, arg_3), arg_2.a, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(0u, arg_1)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-562f, arg_2.c.a.x, arg_2.a.b.a.x, arg_2.a.b.b.x) + vec4<f32>(-112f, arg_2.a.b.a.x, arg_2.c.a.x, -1236f))).b.zzz)), _wgslsmith_f_op_vec3_f32(-arg_2.a.b.b), -(~(-arg_2.a.b.c)), min(_wgslsmith_mod_vec3_u32(vec3<u32>(122566u, 22989u, 2030u), arg_2.a.b.d) & arg_2.c.d, vec3<u32>(_wgslsmith_div_u32(64703u, arg_2.a.b.d.x), _wgslsmith_mod_u32(1u, arg_1), countOneBits(arg_2.c.d.x)))), ~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(arg_2.a.b.d.x, 32u)], u_input.a.x));
    var var_1 = Struct_3(func_4(arg_2.b.x, Struct_2(0u < arg_2.a.b.d.x, var_0.c), 4294967295u, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(2008f, var_0.c.a.x, arg_2.a.b.a.x, arg_2.c.b.x) - vec4<f32>(-242f, -649f, var_0.a.b.b.x, arg_2.c.a.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.a.b.b.x, -194f, arg_2.c.b.x, 192f), vec4<f32>(arg_2.a.b.b.x, -496f, -442f, var_0.a.b.a.x), vec4<bool>(true, arg_3, true, false))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b.a.x, 247f, 958f, -1000f))))).a);
    let var_2 = Struct_5(arg_2);
    return Struct_2(true, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1674f + 192f), _wgslsmith_f_op_f32(var_2.a.c.b.x - var_2.a.c.b.x))), var_1.a.b.a.x, -795f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(var_2.a.a.b.b.x, -1284f)), -1000f, -2052f)), _wgslsmith_mod_vec3_i32(arg_2.a.b.c, max(_wgslsmith_sub_vec3_i32(var_2.a.a.b.c, arg_0.yxw), vec3<i32>(1i, 10658i, var_1.a.b.c.x))), func_2().b.d));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 22>();
    var var_0 = func_5(vec4<i32>(_wgslsmith_clamp_i32(-u_input.b, 2147483647i, _wgslsmith_sub_i32(~(-6318i), _wgslsmith_mod_i32(1i, -10606i))), _wgslsmith_add_i32(u_input.b, u_input.b), 1i << (func_1(Struct_4(Struct_2(false, Struct_1(vec3<f32>(-205f, 1124f, 364f), vec3<f32>(342f, -1292f, -185f), vec3<i32>(u_input.b, 1i, u_input.b), vec3<u32>(3572u, u_input.a.x, u_input.a.x))), vec4<bool>(true, false, false, true), Struct_1(vec3<f32>(1978f, 1751f, -110f), vec3<f32>(-111f, 896f, 337f), vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 32u)], 32u)])), 29999u)) % 32u), u_input.b), 6898u, func_4(all(global1[_wgslsmith_index_u32(21863u, 22u)]), func_2(), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(countOneBits(abs(global0[_wgslsmith_index_u32(u_input.a.x, 32u)])), 32u)], 32u)] ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 32u)], 32u)], 32u)], _wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(295f, -1557f, -1919f, -147f))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(129f, -2013f, 282f, 103f)))))), any(vec2<bool>(true, true)));
    let var_1 = abs(~_wgslsmith_clamp_u32(~0u, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(0u, 32u)], _wgslsmith_mod_u32(u_input.a.x, 0u)), ~_wgslsmith_add_u32(u_input.a.x, u_input.a.x)));
    var_0 = Struct_2(select(!var_0.a, true, true | var_0.a), var_0.b);
    var var_2 = var_0.b.c.xz;
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.a.x), var_0.b.a.x, 490f, -515f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-987f)), var_0.b.b.x, _wgslsmith_div_f32(-219f, 175f), _wgslsmith_f_op_f32(select(-920f, var_0.b.a.x, false))) * vec4<f32>(_wgslsmith_div_f32(var_0.b.a.x, var_0.b.a.x), _wgslsmith_f_op_f32(var_0.b.b.x - var_0.b.a.x), _wgslsmith_f_op_f32(-var_0.b.b.x), 1011f))));
    var var_4 = 4294967295u | var_1;
    var_2 = firstLeadingBit(firstLeadingBit(max(-var_0.b.c.zx, func_5(vec4<i32>(var_2.x, var_0.b.c.x, 3725i, -1i), var_0.b.d.x, Struct_4(Struct_2(true, Struct_1(var_3.zxx, vec3<f32>(var_3.x, var_3.x, var_3.x), vec3<i32>(var_2.x, var_0.b.c.x, 1i), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(22514u, 32u)], 97687u))), vec4<bool>(true, false, var_0.a, var_0.a), Struct_1(vec3<f32>(424f, var_3.x, var_0.b.a.x), var_0.b.a, var_0.b.c, var_0.b.d), var_1), true).b.c.yz))) & _wgslsmith_mod_vec2_i32((var_0.b.c.yz << (_wgslsmith_clamp_vec2_u32(var_0.b.d.yx, vec2<u32>(0u, 1u), u_input.a) % vec2<u32>(32u))) >> (_wgslsmith_sub_vec2_u32(var_0.b.d.xx, u_input.a) % vec2<u32>(32u)), var_0.b.c.yz);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.d.x, var_1, func_5(vec4<i32>(10365i, u_input.b, var_2.x, -38823i), u_input.a.x, Struct_4(Struct_2(false, Struct_1(var_0.b.a, var_3.xwx, var_0.b.c, vec3<u32>(121455u, 35951u, var_1))), vec4<bool>(true, false, var_0.a, false), var_0.b, 0u), var_0.a).b.d.x, ~34180u), ~vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(var_1, 32u)], global0[_wgslsmith_index_u32(var_1, 32u)], u_input.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1680f), 776f);
}

