struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(vec2<i32>(1841i, 8528i), vec4<u32>(30034u, 4294967295u, 43576u, 0u), true, vec3<bool>(false, true, false)), vec3<bool>(false, true, true));

var<private> global1: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: f32) -> bool {
    let var_0 = Struct_4(Struct_3(vec2<i32>(global0.a.a.x, 27421i), vec4<u32>(0u, max(_wgslsmith_mult_u32(u_input.b.x, u_input.d.x), 15821u), 31601u, 4294967295u), global0.b.x, vec3<bool>(any(vec4<bool>(global0.b.x, false, global0.a.d.x, true)), any(global0.b), !all(vec3<bool>(true, true, global0.b.x)))), global0.b);
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1398f), _wgslsmith_f_op_f32(exp2(arg_0))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1075f, -657f, arg_0) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0, arg_0, arg_0), vec3<f32>(arg_0, arg_0, -318f))))))), 22400i, global0.b.x, u_input.c.x);
    global1 = all(!vec3<bool>(true, var_0.a.c, var_1.c));
    var var_2 = var_1.c;
    global1 = false;
    return true;
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: Struct_3) -> Struct_3 {
    global0 = Struct_4(arg_2, vec3<bool>(~23688u <= (abs(u_input.a) >> (56575u % 32u)), arg_0, all(!vec4<bool>(arg_3.d.x, arg_3.c, arg_2.d.x, arg_2.c))));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.x)) - _wgslsmith_f_op_f32(-247f * 203f)) * arg_1.x))), arg_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-586f, 172f)) * arg_1.x) * -690f))), arg_1.x);
    var var_1 = _wgslsmith_add_i32(-reverseBits(_wgslsmith_mult_i32(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.e, 34176i, -2147483647i), vec4<i32>(18625i, -2147483647i, arg_2.a.x, -17297i)))), u_input.e);
    var_1 = _wgslsmith_dot_vec2_i32(arg_3.a, abs(arg_3.a));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.x)) - 1134f), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, var_0.x) * arg_1.x))), global0.a.a.x, any(global0.b.yz), -firstTrailingBit(i32(-1i) * -arg_2.a.x));
    return Struct_3(vec2<i32>(countOneBits(select(-2147483647i, 0i, global0.a.d.x) ^ _wgslsmith_sub_i32(42322i, 0i)), min(9317i, (i32(-1i) * -7330i) >> (~arg_2.b.x % 32u))), ~min(min(arg_3.b, vec4<u32>(arg_3.b.x, 4570u, arg_2.b.x, 0u)), vec4<u32>(arg_2.b.x, global0.a.b.x, u_input.a, 4294967295u)) << (_wgslsmith_clamp_vec4_u32(~vec4<u32>(23614u, 31153u, u_input.d.x, u_input.a), _wgslsmith_clamp_vec4_u32(arg_2.b, vec4<u32>(u_input.b.x, 45830u, 12141u, arg_2.b.x), ~arg_2.b), vec4<u32>(min(u_input.b.x, 21090u), ~arg_3.b.x, max(114275u, u_input.a), select(1u, 1u, arg_2.d.x))) % vec4<u32>(32u)), !var_2.c, vec3<bool>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(433f - var_2.a.x))) <= arg_1.x, all(select(!vec4<bool>(false, arg_0, arg_2.c, arg_2.d.x), vec4<bool>(true, true, false, arg_0), select(vec4<bool>(arg_0, false, global0.b.x, false), vec4<bool>(arg_3.d.x, arg_2.c, arg_0, false), vec4<bool>(global0.b.x, global0.a.c, false, true)))), false));
}

fn func_1(arg_0: i32, arg_1: i32) -> vec4<u32> {
    global0 = Struct_4(func_3(!any(!vec3<bool>(true, global0.a.d.x, true)), vec3<f32>(_wgslsmith_div_f32(-1223f, -275f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1956f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(354f * -1000f))), Struct_3(vec2<i32>(38924i, 14207i) & u_input.c.zx, ~(~vec4<u32>(u_input.a, 16251u, 4294967295u, global0.a.b.x)), global0.b.x, vec3<bool>(func_2(-1606f), global0.a.d.x, all(global0.a.d.xx))), Struct_3(~(-global0.a.a), vec4<u32>(firstTrailingBit(74344u), _wgslsmith_div_u32(u_input.b.x, global0.a.b.x), reverseBits(global0.a.b.x), _wgslsmith_sub_u32(20970u, 4935u)), _wgslsmith_mod_i32(arg_0, arg_0) < -23i, vec3<bool>(global0.a.c, true, func_2(1000f)))), global0.b);
    global0 = Struct_4(func_3(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1015f, 664f, 1549f), vec3<f32>(138f, 222f, 572f))))) + vec3<f32>(_wgslsmith_f_op_f32(1261f - 365f), _wgslsmith_f_op_f32(-159f * 479f), -317f)), func_3(global0.a.d.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-291f, 842f, 186f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1191f, -1456f, 1312f))), Struct_3(global0.a.a, u_input.d, all(global0.b.zy), select(vec3<bool>(false, global0.a.d.x, global0.b.x), vec3<bool>(global0.a.d.x, true, false), global0.b.x)), Struct_3(abs(vec2<i32>(1i, -2147483647i)), vec4<u32>(0u, u_input.d.x, 25176u, u_input.d.x), any(vec3<bool>(true, global0.b.x, global0.a.c)), global0.b)), Struct_3(~(-vec2<i32>(2147483647i, 2147483647i)), select(~vec4<u32>(u_input.b.x, global0.a.b.x, 12291u, global0.a.b.x), countOneBits(vec4<u32>(0u, 17068u, 50302u, u_input.d.x)), all(vec3<bool>(global0.b.x, global0.a.d.x, global0.b.x))), false, vec3<bool>(true, true, true))), vec3<bool>(global0.b.x, !global0.b.x, !(!(!global0.a.c))));
    return _wgslsmith_add_vec4_u32(global0.a.b | (vec4<u32>(4326u, 0u, 4294967295u, 0u) << ((vec4<u32>(global0.a.b.x, 4294967295u, 0u, 8708u) | u_input.d) % vec4<u32>(32u))), ~vec4<u32>(1u, 17661u << (global0.a.b.x % 32u), ~global0.a.b.x, ~global0.a.b.x)) & u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_mod_vec2_i32(~vec2<i32>(-7084i, 19626i), abs(~global0.a.a)), u_input.d | func_1(abs(global0.a.a.x), 2147483647i), false, !(!select(global0.b, func_3(global0.b.x, vec3<f32>(1774f, -772f, -593f), Struct_3(vec2<i32>(-1i, -89480i), u_input.d, global0.b.x, global0.b), global0.a).d, global0.b.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1142f, -536f, -139f)))))));
    var var_2 = select(!global0.b.xz, !vec2<bool>(select(u_input.d.x > var_0.b.x, global0.a.d.x, any(var_0.d.xy)), any(select(global0.b, global0.a.d, var_0.d))), !(!vec2<bool>(true, any(vec3<bool>(global0.b.x, false, true)))));
    global0 = Struct_4(global0.a, !func_3(var_1.x == _wgslsmith_f_op_f32(f32(-1f) * -619f), var_1, func_3(all(vec4<bool>(false, true, true, var_0.d.x)), var_1, Struct_3(vec2<i32>(var_0.a.x, -1i), u_input.d, global0.a.c, var_0.d), Struct_3(var_0.a, vec4<u32>(global0.a.b.x, 1u, 4294967295u, 17918u), false, global0.a.d)), func_3(global0.b.x, _wgslsmith_f_op_vec3_f32(var_1 + var_1), global0.a, func_3(true, var_1, Struct_3(var_0.a, u_input.d, var_2.x, var_0.d), Struct_3(u_input.c.yw, vec4<u32>(global0.a.b.x, global0.a.b.x, 4294967295u, 0u), true, global0.a.d)))).d);
    global0 = Struct_4(Struct_3(~vec2<i32>(-3301i, 0i), ~vec4<u32>(26872u, 4294967295u, var_0.b.x << (var_0.b.x % 32u), func_3(global0.b.x, vec3<f32>(var_1.x, -851f, var_1.x), global0.a, global0.a).b.x), true && (_wgslsmith_f_op_f32(round(-165f)) > _wgslsmith_f_op_f32(abs(447f))), !select(!vec3<bool>(var_2.x, true, true), global0.a.d, all(vec2<bool>(true, false)))), !vec3<bool>(var_0.d.x, var_2.x, all(global0.a.d.xy)));
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(floor(1646f)))), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(step(var_1.x, 1215f))))), max(abs(~vec2<u32>(1u, 0u)) & (_wgslsmith_add_vec2_u32(u_input.b, var_0.b.xx) ^ abs(vec2<u32>(19486u, u_input.a))), var_0.b.xw), firstTrailingBit((u_input.c.x | _wgslsmith_dot_vec2_i32(vec2<i32>(-27525i, var_0.a.x), vec2<i32>(global0.a.a.x, var_0.a.x))) << (u_input.a % 32u)), var_1.x);
}

