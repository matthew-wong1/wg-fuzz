struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> u32 {
    global0 = arg_0;
    var var_0 = Struct_1(select(!arg_0.b.xz, vec2<bool>(true, true), select(true, true, true)), vec4<bool>(!((false | global0.b.x) == arg_0.b.x), arg_0.b.x, !(!select(arg_0.b.x, false, global0.b.x)), (min(u_input.c.x, 4294967295u) < _wgslsmith_dot_vec4_u32(vec4<u32>(72999u, 11328u, u_input.c.x, u_input.c.x), vec4<u32>(0u, 3793u, u_input.c.x, 0u))) && arg_0.b.x), -arg_0.c);
    global0 = arg_0;
    let var_1 = vec3<f32>(420f, _wgslsmith_f_op_f32(-1179f * -1201f), _wgslsmith_f_op_f32(f32(-1f) * -875f));
    var_0 = arg_0;
    return countOneBits(abs(u_input.c.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: u32, arg_3: u32) -> f32 {
    var var_0 = true;
    global0 = arg_0;
    var_0 = arg_0.a.x;
    var var_1 = Struct_1(select(vec2<bool>(arg_3 <= select(u_input.a, 51481u, true), any(global0.b.xzz)), vec2<bool>(any(arg_0.b), global0.a.x), !select(vec2<bool>(global0.a.x, arg_1.x), !arg_1.yx, true)), global0.b, -2147483647i);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-559f, 1290f, -1000f) * vec3<f32>(-2524f, -994f, -1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(613f, -811f, 236f) * vec3<f32>(1812f, 546f, 108f)), vec3<bool>(arg_1.x, arg_0.a.x, false))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-160f, 1000f, 1432f), vec3<f32>(477f, 1149f, -1000f)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1505f, -612f, -456f)))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-245f - _wgslsmith_f_op_f32(1218f - var_2.x))) - -1073f);
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = vec2<bool>(false, arg_0.x & true);
    var var_1 = ~select(vec2<i32>(arg_3.c, 37782i), -reverseBits(vec2<i32>(0i, global0.c)), arg_2.x) & vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(firstLeadingBit(-44285i), u_input.b), 2147483647i), min(52427i, ~_wgslsmith_clamp_i32(-21351i, -2147483647i, arg_3.c)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-190f)), -1000f)) * -1256f) - _wgslsmith_f_op_f32(513f * _wgslsmith_f_op_f32(func_4(Struct_1(select(arg_3.b.zx, arg_2.xw, arg_0.zx), vec4<bool>(true, arg_2.x, false, true), ~36507i), arg_2.wyz, func_3(Struct_1(vec2<bool>(arg_3.a.x, true), vec4<bool>(arg_3.a.x, arg_2.x, true, arg_2.x), u_input.b), _wgslsmith_mod_i32(u_input.b, 1641i)), ~70903u << (_wgslsmith_dot_vec3_u32(u_input.c.zwy, u_input.c.xxy) % 32u)))));
    let var_3 = !(-629f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-821f * -324f), _wgslsmith_f_op_f32(sign(1f))));
    var var_4 = ~(~u_input.c.x);
    return Struct_1(!vec2<bool>(!all(vec2<bool>(var_3, global0.a.x)), (arg_3.c >> (u_input.a % 32u)) != _wgslsmith_div_i32(-3092i, arg_3.c)), vec4<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 615i, 1i, 0i), vec4<i32>(arg_3.c, var_1.x, u_input.b, 0i) << (vec4<u32>(0u, u_input.a, 32636u, u_input.a) % vec4<u32>(32u))) != 15048i, arg_1, _wgslsmith_mult_u32(57433u, max(4294967295u, u_input.a)) < ~u_input.c.x, arg_0.x), firstTrailingBit(_wgslsmith_div_i32(var_1.x, 1i)));
}

fn func_5(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = Struct_1(select(arg_0.b.ww, func_2(!select(arg_0.b, global0.b, arg_0.b), global0.b.x, vec4<bool>(true, true, true, true), func_2(global0.b, true, !vec4<bool>(true, arg_0.b.x, false, arg_0.b.x), Struct_1(arg_0.b.zz, vec4<bool>(global0.a.x, arg_0.a.x, false, arg_0.b.x), arg_0.c))).b.xz, !vec2<bool>(true, !global0.a.x)), select(vec4<bool>(true, all(vec4<bool>(global0.a.x, true, true, arg_0.b.x)), all(arg_0.b.yyx), arg_0.a.x), !vec4<bool>(arg_0.b.x, true, all(global0.b.ww), arg_0.a.x), !global0.b.x), _wgslsmith_add_i32(countOneBits(abs(1i)) << (min(u_input.c.x, u_input.a) % 32u), -global0.c));
    var var_1 = ~vec2<u32>(_wgslsmith_mult_u32(4294967295u, u_input.a), 1u);
    var var_2 = var_0.a.x;
    return abs(~firstLeadingBit(abs(vec3<u32>(var_1.x, 1u, var_1.x))));
}

fn func_1() -> Struct_1 {
    var var_0 = func_5(func_2(select(global0.b, select(global0.b, !global0.b, !global0.a.x), !vec4<bool>(global0.a.x, true, global0.b.x, false)), global0.a.x, global0.b, Struct_1(vec2<bool>(all(vec4<bool>(global0.a.x, global0.a.x, true, global0.b.x)), true), global0.b, ~(-28658i))));
    global0 = func_2(!(!(!select(vec4<bool>(true, global0.b.x, true, global0.a.x), global0.b, global0.b))), any(!vec2<bool>(false & global0.b.x, global0.b.x)), global0.b, Struct_1(func_2(select(vec4<bool>(global0.a.x, false, true, global0.b.x), vec4<bool>(true, global0.b.x, global0.a.x, global0.b.x), select(vec4<bool>(global0.b.x, global0.a.x, global0.b.x, true), vec4<bool>(global0.a.x, global0.a.x, false, false), vec4<bool>(global0.b.x, false, false, global0.a.x))), true, select(vec4<bool>(true, global0.a.x, global0.a.x, global0.b.x), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false)), func_2(!vec4<bool>(global0.a.x, global0.a.x, global0.b.x, global0.a.x), true, select(vec4<bool>(global0.b.x, global0.b.x, false, true), global0.b, false), func_2(vec4<bool>(false, false, global0.a.x, false), true, vec4<bool>(true, true, global0.b.x, global0.b.x), Struct_1(global0.a, vec4<bool>(global0.b.x, global0.b.x, global0.b.x, global0.a.x), global0.c)))).a, global0.b, _wgslsmith_clamp_i32(20853i, u_input.b, global0.c >> (u_input.c.x % 32u)) << (2290u % 32u)));
    let var_1 = firstLeadingBit(select(min(u_input.c, firstTrailingBit(vec4<u32>(75434u, 1u, u_input.a, u_input.a))), max(min(vec4<u32>(var_0.x, u_input.c.x, 12206u, 1u), vec4<u32>(1u, 1u, 23551u, u_input.a)), ~u_input.c), func_2(!global0.b, true, func_2(vec4<bool>(true, global0.a.x, false, true), false, vec4<bool>(global0.a.x, global0.a.x, global0.b.x, global0.a.x), Struct_1(global0.b.wz, vec4<bool>(global0.b.x, false, true, global0.b.x), 1i)).b, Struct_1(global0.a, vec4<bool>(global0.b.x, true, false, true), u_input.b)).b)) | u_input.c;
    global0 = Struct_1(!(!select(select(vec2<bool>(global0.a.x, global0.b.x), vec2<bool>(false, true), vec2<bool>(global0.b.x, global0.a.x)), global0.b.zy, any(global0.b))), !(!(!global0.b)), global0.c);
    var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32(max(vec3<u32>(100570u << (0u % 32u), u_input.a >> (u_input.c.x % 32u), 46268u >> (u_input.a % 32u)), firstLeadingBit(vec3<u32>(var_1.x, 4294967295u, var_0.x)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.c.x), var_1.ywx)), func_5(func_2(select(global0.b, global0.b, false), global0.b.x, vec4<bool>(global0.a.x, false, global0.b.x, global0.a.x), Struct_1(global0.b.xx, vec4<bool>(global0.a.x, global0.a.x, global0.b.x, global0.a.x), -5621i)))), ~(~u_input.a), ~u_input.a);
    return Struct_1(global0.b.zz, !select(global0.b, global0.b, global0.b), i32(-1i) * -_wgslsmith_dot_vec3_i32(-vec3<i32>(global0.c, u_input.b, -2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, 12555i, 0i), vec3<i32>(global0.c, global0.c, u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = ~u_input.c.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -430f) - -1757f), -1000f)));
    let var_2 = 16424u;
    var_0 = select(1u, 38533u, !global0.a.x);
    global0 = func_2(global0.b, !global0.b.x, global0.b, func_1());
    var var_3 = vec2<i32>(-1i) * -vec2<i32>(global0.c, global0.c);
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(-2510f + 389f), _wgslsmith_f_op_f32(-var_1));
    var var_5 = !(!select(global0.b.yyz, !(!vec3<bool>(false, global0.a.x, global0.b.x)), global0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(min(-11087i, ~33213i), _wgslsmith_f_op_f32(select(var_1, var_1, any(vec4<bool>(var_5.x, var_5.x, false, false)) && var_5.x)), u_input.c.xy);
}

