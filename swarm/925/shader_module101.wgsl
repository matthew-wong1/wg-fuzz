struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<f32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec3<u32>;

var<private> global2: vec4<bool>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: bool) -> u32 {
    global2 = select(vec4<bool>(_wgslsmith_add_u32(global1.x, 4294967295u) >= max(4294967295u, global1.x), true, true, _wgslsmith_mult_i32(_wgslsmith_mod_i32(369i, arg_1.x), -77534i) <= _wgslsmith_mult_i32(u_input.a.x, 17969i)), vec4<bool>(false, select(true, true, (23212i != arg_1.x) | (0u >= arg_2.b.a)), all(select(vec4<bool>(true, true, false, global2.x), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, global2.x), vec4<bool>(false, arg_0, arg_3, global2.x), false))), all(select(global2.wyw, select(vec3<bool>(arg_3, false, false), vec3<bool>(global2.x, true, arg_2.a.x), global2.x), select(arg_2.a, vec3<bool>(global2.x, true, global2.x), global2.wzz)))), true);
    var var_0 = ~u_input.a.x;
    global2 = select(select(!(!vec4<bool>(arg_0, true, false, true)), select(vec4<bool>(76417u != arg_2.b.a, global2.x || false, all(vec3<bool>(true, true, global2.x)), true), select(select(vec4<bool>(true, true, arg_0, false), vec4<bool>(false, arg_2.a.x, arg_2.a.x, arg_3), false), vec4<bool>(arg_2.a.x, arg_3, arg_3, arg_0), any(vec4<bool>(true, global2.x, false, false))), !(!vec4<bool>(arg_0, arg_3, false, global2.x))), arg_3 | true), vec4<bool>(false || (global1.x == 4294967295u), global2.x, true, all(select(select(vec4<bool>(false, true, arg_2.a.x, arg_0), vec4<bool>(true, false, global2.x, true), arg_0), select(vec4<bool>(true, true, false, arg_3), vec4<bool>(true, true, false, false), global2.x), true))), !vec4<bool>(any(vec3<bool>(true, arg_0, arg_0)), global2.x, arg_3, !(!arg_3)));
    let var_1 = _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(min(1u, 26635u) >> (global1.x % 32u), 1u), ~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_2.b.a, 6088u), global1.yy), select(global1.xz, ~abs(vec2<u32>(arg_2.b.a, 91373u)), !all(global2.xyx))), global1.yx);
    let var_2 = ~u_input.a;
    return 0u;
}

fn func_2(arg_0: u32) -> vec3<f32> {
    var var_0 = Struct_3(!global2.xxz, Struct_1(4294967295u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1429f + 622f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(151f)) - _wgslsmith_f_op_f32(f32(-1f) * -936f)), global2.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-790f, -2195f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1154f, 1000f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(649f, 1054f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1135f, 436f) * vec2<f32>(-1000f, 1000f))))));
    let var_1 = Struct_1(~func_3(global2.x, vec2<i32>(_wgslsmith_clamp_i32(11034i, 10596i, u_input.a.x), u_input.a.x), Struct_3(!var_0.a, var_0.b), ~u_input.a.x == -u_input.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(974f))))), _wgslsmith_f_op_f32(select(549f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.b.c.x - 1322f))), any(vec2<bool>(var_0.a.x, var_0.a.x)))), !global2.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_0.b.c, _wgslsmith_f_op_vec2_f32(-var_0.b.c))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.b.c, var_0.b.c) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(235f, var_0.b.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(476f, -340f))))));
    let var_2 = var_1;
    var_0 = Struct_3(vec3<bool>(all(vec4<bool>(!global2.x, all(vec4<bool>(false, global2.x, true, true)), var_0.a.x, true)), !(!(!global2.x)), true), Struct_1(1u, _wgslsmith_f_op_f32(-var_2.c.x), vec2<f32>(var_1.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1751f))))));
    var_0 = Struct_3(global2.yww, var_2);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -739f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_1.c.x)), 438f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(-var_0.b.b), var_0.a.x))) + vec3<f32>(var_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(163f, -1000f, var_0.a.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -637f), _wgslsmith_f_op_f32(-197f * 2379f), all(vec4<bool>(var_0.a.x, var_0.a.x, true, global2.x)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(274f, var_2.c.x, 861f), vec3<f32>(var_1.b, var_2.b, var_0.b.b)))) + vec3<f32>(527f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x)), 185f)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: bool) -> vec3<i32> {
    var var_0 = firstLeadingBit(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a.x, u_input.a.x), vec3<i32>(33459i, u_input.a.x, -2147483647i)), firstLeadingBit(u_input.a.x), -u_input.a.x))));
    var var_1 = abs(2147483647i);
    var var_2 = ~(~vec3<u32>(~_wgslsmith_sub_u32(global1.x, global1.x), _wgslsmith_clamp_u32(~global1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(20951u, 32089u, global1.x, global1.x), vec4<u32>(42891u, 54892u, global1.x, global1.x)), global1.x), min(31887u, global1.x) >> (4294967295u % 32u)));
    var_0 = 2147483647i;
    let var_3 = _wgslsmith_dot_vec3_i32(firstTrailingBit(~_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-57720i, u_input.a.x, u_input.a.x), vec3<i32>(-26201i, 2420i, 0i)), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, -50703i), vec3<i32>(-1i, u_input.a.x, 0i)))), -reverseBits(min(_wgslsmith_clamp_vec3_i32(vec3<i32>(-23787i, 6825i, 1i), vec3<i32>(0i, u_input.a.x, u_input.a.x), vec3<i32>(0i, -2147483647i, u_input.a.x)), vec3<i32>(u_input.a.x, 1i, -1746i))));
    return vec3<i32>(abs(abs(-2147483647i)) ^ firstLeadingBit(_wgslsmith_dot_vec3_i32(~vec3<i32>(var_3, var_3, u_input.a.x), -vec3<i32>(20095i, 25646i, u_input.a.x))), abs(var_3), _wgslsmith_mult_i32(u_input.a.x, _wgslsmith_mult_i32(~(-u_input.a.x), ~var_3)));
}

fn func_1(arg_0: vec4<i32>, arg_1: f32, arg_2: vec2<i32>, arg_3: vec2<i32>) -> vec3<f32> {
    let var_0 = global2.xww;
    global2 = !(!(!select(vec4<bool>(var_0.x, false, global2.x, false), !vec4<bool>(var_0.x, false, var_0.x, var_0.x), true)));
    let var_1 = func_4(Struct_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_2(0u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-231f * arg_1) * arg_1)), vec3<bool>(all(select(!var_0.zx, vec2<bool>(global2.x, global2.x), select(vec2<bool>(global2.x, false), vec2<bool>(false, global2.x), var_0.x))), false, true), select(global2.x, all(select(vec4<bool>(true, true, var_0.x, global2.x), vec4<bool>(var_0.x, var_0.x, global2.x, false), vec4<bool>(false, var_0.x, global2.x, global2.x))), func_3(false, arg_0.wy, Struct_3(global2.wyx, Struct_1(global1.x, arg_1, vec2<f32>(arg_1, -799f))), global2.x) == min(global1.x, 4294967295u)) && any(select(!vec4<bool>(global2.x, false, var_0.x, var_0.x), !vec4<bool>(var_0.x, true, global2.x, false), all(global2.yy))));
    let var_2 = Struct_3(select(vec3<bool>(global2.x, true, any(!vec4<bool>(true, global2.x, true, true))), vec3<bool>((u_input.a.x == -38236i) && var_0.x, var_0.x, false), select(global2.xzx, select(select(vec3<bool>(true, true, global2.x), global2.xxz, vec3<bool>(false, true, global2.x)), select(global2.yyz, global2.zxw, vec3<bool>(global2.x, var_0.x, var_0.x)), global2.x), !select(vec3<bool>(global2.x, false, false), vec3<bool>(global2.x, var_0.x, false), true))), Struct_1(0u, -2309f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-520f, 939f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1, arg_1), vec2<f32>(1405f, arg_1), global2.x)), vec2<f32>(arg_1, arg_1)))));
    let var_3 = ((var_2.b.a | global1.x) | _wgslsmith_dot_vec2_u32(global1.zy, ~global1.zz)) ^ _wgslsmith_add_u32(~global1.x, _wgslsmith_add_u32(var_2.b.a, ~var_2.b.a));
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.b.b, arg_1, arg_1), vec3<f32>(-2379f, -387f, var_2.b.c.x))) * vec3<f32>(var_2.b.c.x, arg_1, var_2.b.c.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.b.c.x, arg_1, -1441f), vec3<f32>(-395f, -1633f, var_2.b.c.x), var_2.a)) - vec3<f32>(arg_1, var_2.b.c.x, -346f)), !global2.zxy)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-828f, -586f, _wgslsmith_f_op_f32(step(arg_1, -241f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 927f, -149f))))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_2(global1.x)).x;
    global0 = 49615u > _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(select(vec4<u32>(4294967295u, 0u, 91474u, 12550u), vec4<u32>(arg_0.b.a, 4294967295u, arg_0.b.a, 4294967295u), vec4<bool>(arg_0.a.x, false, arg_2, true)), vec4<u32>(arg_0.b.a, 1u, global1.x, 0u)), vec4<u32>(~17151u, global1.x >> (0u % 32u), 49985u, 1u)), 0u);
    var var_1 = !vec4<bool>(false != arg_0.a.x, (_wgslsmith_mod_i32(-1i, u_input.a.x) <= 1i) | all(global2.xzx), global2.x, true);
    var var_2 = _wgslsmith_div_vec3_f32(arg_1.a, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(arg_1.a, arg_1.a))));
    return arg_0.b;
}

fn func_6(arg_0: Struct_1) -> Struct_2 {
    global1 = vec3<u32>(_wgslsmith_mult_u32(arg_0.a, arg_0.a), func_5(Struct_3(vec3<bool>(global2.x, global2.x, global2.x | false), func_5(Struct_3(global2.zzz, arg_0), Struct_2(vec3<f32>(1117f, arg_0.b, -574f), arg_0.b, arg_0.c.x), any(vec2<bool>(global2.x, true)))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1349f, arg_0.c.x, arg_0.c.x) + vec3<f32>(422f, -434f, 190f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c.x, 720f)), _wgslsmith_f_op_f32(-arg_0.c.x)), true).a, _wgslsmith_div_u32(3434u, _wgslsmith_clamp_u32(~1u, ~(~79459u), _wgslsmith_dot_vec4_u32(vec4<u32>(41908u, 64677u, global1.x, 0u), vec4<u32>(global1.x, arg_0.a, 37629u, global1.x)) ^ max(global1.x, global1.x))));
    global1 = firstLeadingBit(vec3<u32>(23230u, _wgslsmith_div_u32(min(arg_0.a, 32806u), abs(36236u)), min(firstLeadingBit(abs(4294967295u)), _wgslsmith_div_u32(global1.x, 1u))));
    let var_0 = Struct_3(select(!global2.wzz, !vec3<bool>(2147483647i != u_input.a.x, true, true), false), func_5(Struct_3(select(vec3<bool>(global2.x, false, global2.x), select(vec3<bool>(false, global2.x, false), vec3<bool>(false, global2.x, global2.x), true), !global2.x), arg_0), Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-998f, arg_0.b, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(551f, arg_0.c.x, arg_0.c.x)), vec3<bool>(false, true, global2.x))), _wgslsmith_f_op_f32(func_5(Struct_3(global2.xyy, Struct_1(arg_0.a, 1166f, arg_0.c)), Struct_2(vec3<f32>(arg_0.b, arg_0.c.x, arg_0.c.x), 2089f, arg_0.b), global2.x).c.x - 2371f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-934f - -754f), 1f)), true));
    return Struct_2(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_add_u32(24232u, _wgslsmith_add_u32(var_0.b.a, arg_0.a)) & _wgslsmith_mult_u32(var_0.b.a, var_0.b.a))), 226f, -738f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~(u_input.a.x << (~1u % 32u)));
    let var_1 = func_6(func_5(Struct_3(select(vec3<bool>(global2.x, false, global2.x), vec3<bool>(global2.x, true, true), global2.x), Struct_1(_wgslsmith_mult_u32(28932u, global1.x), 1000f, vec2<f32>(2215f, 1650f))), Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_1(vec4<i32>(18524i, 36299i, u_input.a.x, 23821i), 674f, vec2<i32>(u_input.a.x, u_input.a.x), u_input.a)))), _wgslsmith_f_op_vec3_f32(func_1(~vec4<i32>(22966i, -2147483647i, 0i, -3738i), _wgslsmith_f_op_f32(290f * -1831f), vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, 1i))).x, _wgslsmith_div_f32(186f, _wgslsmith_f_op_vec3_f32(func_1(vec4<i32>(u_input.a.x, u_input.a.x, -33256i, 1i), 451f, vec2<i32>(u_input.a.x, u_input.a.x), u_input.a)).x)), global2.x));
    let var_2 = -u_input.a;
    var var_3 = -1000f;
    global2 = select(select(vec4<bool>(true, any(global2.wwx) == all(vec2<bool>(global2.x, global2.x)), !all(vec3<bool>(global2.x, true, false)), false), !(!vec4<bool>(global2.x, false, false, global2.x)), true), select(vec4<bool>(global2.x, !all(global2.xw), global2.x || true, !global2.x), !vec4<bool>(false, global2.x, any(vec3<bool>(global2.x, global2.x, false)), global2.x || false), !vec4<bool>(global2.x, !global2.x, global2.x, true)), any(select(vec2<bool>(!global2.x, any(vec4<bool>(false, global2.x, global2.x, global2.x))), !select(vec2<bool>(global2.x, true), global2.ww, global2.yz), ~40815i < u_input.a.x)));
    var_3 = -508f;
    var var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(step(var_1.a, _wgslsmith_f_op_vec3_f32(var_1.a * var_1.a))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_1.b, _wgslsmith_f_op_f32(var_1.c * _wgslsmith_f_op_f32(ceil(1851f))))))), _wgslsmith_f_op_f32(func_5(Struct_3(vec3<bool>(global2.x, true, global2.x), func_5(Struct_3(global2.zyy, Struct_1(12376u, -1012f, vec2<f32>(664f, var_1.a.x))), Struct_2(vec3<f32>(834f, -1000f, 322f), -585f, var_1.a.x), false)), Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(-1265f, var_1.b, 505f), var_1.a), -455f, var_1.c), true).c.x - var_1.b));
    var var_5 = false;
    var_0 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(global1.yy, var_2.x, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(var_4.a.x * var_4.b), _wgslsmith_f_op_f32(1013f - var_1.b), var_1.a.x, var_1.a.x))))), select(countOneBits(select(~global1.zy, _wgslsmith_add_vec2_u32(vec2<u32>(7598u, 4294967295u), vec2<u32>(29142u, global1.x)), select(global2.xx, global2.ww, global2.wx))), global1.zy | vec2<u32>(global1.x, global1.x), select(global2.yy, !global2.xx, all(global2.zwy))), _wgslsmith_clamp_u32(~global1.x, global1.x, global1.x));
}

