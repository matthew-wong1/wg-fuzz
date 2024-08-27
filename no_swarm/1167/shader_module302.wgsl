struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: Struct_1,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec3<u32> = vec3<u32>(1u, 2181u, 47866u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: i32) -> f32 {
    let var_0 = _wgslsmith_div_u32(~(~4294967295u), _wgslsmith_div_u32(global1.x >> (_wgslsmith_clamp_u32(6246u, ~1u, u_input.b.x) % 32u), firstTrailingBit(select(u_input.b.x, u_input.b.x, all(global0.zww)))));
    global1 = countOneBits(reverseBits(~(~u_input.a.zyw)));
    global1 = u_input.a.ywy;
    let var_1 = _wgslsmith_f_op_f32(-679f + arg_0);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(349f, -2396f) * vec2<f32>(var_1, -1000f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_1, -899f), _wgslsmith_f_op_f32(sign(arg_0))))), select(vec4<bool>(global0.x, all(global0.xz), global0.x, any(!vec2<bool>(true, global0.x))), !select(vec4<bool>(false, true, global0.x, false), select(vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(true, global0.x, true, false), vec4<bool>(true, true, true, global0.x)), select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(false, global0.x, true, false), false)), select(vec4<bool>(u_input.a.x <= global1.x, false, true, any(vec3<bool>(false, global0.x, global0.x))), select(select(vec4<bool>(false, false, true, global0.x), vec4<bool>(false, true, global0.x, true), vec4<bool>(true, global0.x, global0.x, true)), select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x, global0.x, false, true), false), vec4<bool>(false, false, false, false)), select(!vec4<bool>(global0.x, global0.x, global0.x, true), !vec4<bool>(global0.x, true, true, global0.x), select(vec4<bool>(true, false, global0.x, global0.x), vec4<bool>(false, true, global0.x, global0.x), global0.x)))), global0.x);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_2.a.x)))))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    let var_0 = arg_0.b.x;
    global1 = vec3<u32>(reverseBits(15546u), ~firstTrailingBit(_wgslsmith_clamp_u32(arg_3.a, 0u, 107752u)) << (min(1u, arg_0.a) % 32u), 41054u);
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(arg_0.b.xxy));
    global1 = ~(u_input.a.yzw ^ min(u_input.a.zxy, abs(vec3<u32>(arg_3.a, u_input.b.x, arg_3.a))));
    var var_2 = reverseBits(global1.xx);
    return 4294967295u;
}

fn func_2(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-121f, -707f))), vec2<f32>(607f, arg_0.a.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1134f, arg_0.a.x)))), arg_0.b, (true || !all(arg_0.b)) | (-_wgslsmith_clamp_i32(-1i, u_input.e, u_input.e) < (~u_input.e & 1i)));
    let var_1 = _wgslsmith_div_u32(18084u, ~firstLeadingBit(22841u));
    let var_2 = global1.x < func_4(Struct_2(~(~1u), vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.a.x)), _wgslsmith_f_op_f32(func_3(var_0.a.x, u_input.c.x)), 1f, _wgslsmith_f_op_f32(-855f + arg_0.a.x)), -638f, arg_0, u_input.c.xyy), u_input.c, Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.a.x, arg_0.a.x))), var_0.b, var_0.c), Struct_2(92210u, vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), arg_0.a.x, _wgslsmith_f_op_f32(abs(993f)), 1066f), arg_0.a.x, arg_0, (vec3<i32>(-2147483647i, u_input.d.x, u_input.d.x) | u_input.c.zyx) & -u_input.c.yzw));
    global1 = ~max(~vec3<u32>(1u, 1u, 1u), _wgslsmith_add_vec3_u32(~vec3<u32>(var_1, var_1, 12241u), u_input.a.zxx)) | ~reverseBits(vec3<u32>(22529u, ~global1.x, var_1));
    global1 = _wgslsmith_clamp_vec3_u32(~vec3<u32>(~(~var_1), ~_wgslsmith_clamp_u32(1u, 4294967295u, 0u), ~4294967295u), abs(~u_input.a.zzy), u_input.a.zzy | u_input.a.xwz);
    return abs(u_input.a.wyz);
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    global0 = arg_2.b;
    global1 = _wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(~arg_0.x ^ 7981u, ~1u, global1.x)), vec3<u32>(~countOneBits(u_input.a.x), arg_0.x, u_input.b.x) | select(vec3<u32>(159218u, 49143u, ~global1.x), min(vec3<u32>(1u, 4294967295u, arg_0.x) ^ vec3<u32>(arg_0.x, 43549u, 4294967295u), func_2(Struct_1(arg_2.a, arg_2.b, arg_2.c))), select(!global0.wzz, !vec3<bool>(global0.x, true, global0.x), global0.wzx)));
    global1 = vec3<u32>(~1u, countOneBits(~firstTrailingBit(_wgslsmith_div_u32(98188u, 4294967295u))), global1.x);
    global1 = vec3<u32>(~countOneBits(0u), 1u, 0u);
    global1 = vec3<u32>(arg_0.x, u_input.b.x, func_2(arg_2).x);
    return arg_2;
}

fn func_5(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = func_1(_wgslsmith_mult_vec4_u32(~select(vec4<u32>(global1.x, 28902u, arg_1, u_input.a.x), max(u_input.a, u_input.a), any(global0.wy)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, 0u, _wgslsmith_div_u32(global1.x, arg_1), 1u), _wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(arg_1, u_input.a.x, arg_1, 0u), vec4<u32>(48343u, global1.x, 64368u, u_input.a.x)))), -1677f, arg_3);
    global1 = abs(firstLeadingBit(min(u_input.a.zyy, ~u_input.a.wwz)) << (vec3<u32>(max(0u, 1u), ~66076u, ~u_input.b.x | abs(global1.x)) % vec3<u32>(32u)));
    var var_1 = 1u;
    let var_2 = 1u;
    let var_3 = Struct_2(min(_wgslsmith_dot_vec3_u32(min(min(vec3<u32>(arg_1, global1.x, 68426u), vec3<u32>(global1.x, 82633u, 46688u)), ~vec3<u32>(u_input.b.x, var_2, 38194u)), vec3<u32>(83497u, u_input.b.x, 1u)), ~0u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_3.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1647f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_3.a.x, arg_3.a.x)))), 421f, -1373f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.x * _wgslsmith_f_op_f32(round(arg_3.a.x))))), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.x, arg_2.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.a) * vec2<f32>(272f, var_0.a.x)), false)), select(!select(var_0.b, vec4<bool>(false, arg_3.c, arg_2.c, global0.x), var_0.b), !(!vec4<bool>(arg_3.b.x, true, arg_0.x, arg_2.b.x)), !global0.x), true), ~(-vec3<i32>(-14936i, _wgslsmith_add_i32(u_input.e, -2147483647i), i32(-1i) * -2147483647i)));
    return arg_2.b.yy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(global0.zz, !select(func_5(vec2<bool>(global0.x, true), firstTrailingBit(global1.x), func_1(vec4<u32>(u_input.a.x, 1u, global1.x, u_input.b.x), -1000f, Struct_1(vec2<f32>(-236f, 586f), vec4<bool>(global0.x, global0.x, false, true), false)), Struct_1(vec2<f32>(908f, -1149f), vec4<bool>(false, false, false, false), global0.x)), vec2<bool>(!global0.x, true), !vec2<bool>(false, global0.x)), select(!global0.wx, global0.ww, select(!(!global0.wx), select(!global0.zy, vec2<bool>(global0.x, global0.x), false == global0.x), func_1(u_input.a | u_input.a, _wgslsmith_f_op_f32(269f - 173f), Struct_1(vec2<f32>(451f, -223f), vec4<bool>(global0.x, global0.x, global0.x, false), true)).b.xy)));
    global1 = max(u_input.a.zyz, u_input.a.zyy);
    var var_1 = vec3<bool>(!global0.x, all(!(!func_1(vec4<u32>(61940u, global1.x, 50632u, 12282u), -267f, Struct_1(vec2<f32>(-703f, -1926f), vec4<bool>(var_0.x, false, var_0.x, var_0.x), var_0.x)).b)), global0.x);
    var var_2 = global1.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1616f, 271f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-407f, -213f)))))));
    var var_4 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(ceil(var_3.x)), -2147483647i));
    let var_5 = global0.x;
    global1 = vec3<u32>(~(4294967295u ^ countOneBits(abs(global1.x))), ~(~countOneBits(_wgslsmith_mod_u32(global1.x, u_input.a.x))), 30090u);
    var var_6 = ~u_input.e;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mult_vec3_u32(~u_input.a.zxz, vec3<u32>(firstTrailingBit(19027u), 1u, 4294967295u))));
}

