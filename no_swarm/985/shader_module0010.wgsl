struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(vec2<u32>(0u, 0u)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(133f, 217f) * vec2<f32>(-718f, 1477f)) - vec2<f32>(-176f, -1124f)) - vec2<f32>(1f, 1f))) + vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(536f, 1491f), _wgslsmith_div_f32(384f, -840f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1489f + 1042f))))), 624f));
    global0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2360f))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<u32>(0u, ~1u))) + _wgslsmith_f_op_f32(-var_0.x)));
    global0 = Struct_4(arg_0.x & (796f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.x)), 1612f)));
    var_0 = vec2<f32>(625f, var_0.x);
    return Struct_1(true, abs(4294967295u), ~select(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 4294967295u, 25786u), abs(vec3<u32>(20533u, 127407u, 18389u)), firstTrailingBit(vec3<u32>(0u, 19267u, 62083u))), ~min(vec3<u32>(4294967295u, 12099u, 22803u), vec3<u32>(4294967295u, 4294967295u, 1u)), !select(vec3<bool>(global0.a, true, global0.a), vec3<bool>(global0.a, arg_0.x, true), arg_0.x)));
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    var var_0 = !(0i != -_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, 2147483647i), min(vec2<i32>(28485i, u_input.a), vec2<i32>(-46004i, u_input.a))));
    var_0 = global0.a;
    let var_1 = Struct_4(true);
    let var_2 = arg_0.a;
    var var_3 = Struct_3(false, Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(579f - 569f), _wgslsmith_div_f32(-765f, 1106f), -345f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1257f, -1308f, 675f, 110f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1300f, 1255f, 1638f, -586f)))), vec3<u32>(arg_0.b, abs(arg_0.b), 24490u), -vec2<i32>(-u_input.a, _wgslsmith_mod_i32(u_input.a, u_input.a))));
    return Struct_3(arg_0.a, var_3.b);
}

fn func_1() -> Struct_4 {
    var var_0 = func_4(func_2(vec2<bool>(select(false & global0.a, global0.a && global0.a, false), _wgslsmith_mod_i32(-1i, u_input.a) >= _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -15970i), vec2<i32>(2147483647i, u_input.a)))));
    var_0 = func_4(func_2(vec2<bool>(true, u_input.a >= _wgslsmith_dot_vec2_i32(var_0.b.c, vec2<i32>(25867i, var_0.b.c.x)))));
    let var_1 = _wgslsmith_f_op_f32(sign(886f));
    var var_2 = Struct_4(true);
    var var_3 = vec2<bool>(true, !func_4(func_2(!vec2<bool>(false, global0.a))).a);
    return Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(-var_0.b.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_1)), var_1)) == var_0.b.a.x);
}

fn func_5(arg_0: bool, arg_1: Struct_4) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(516f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-353f, 1588f))))), _wgslsmith_f_op_f32(152f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1022f + -489f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2312f, _wgslsmith_f_op_f32(select(-1000f, 1000f, false)), arg_0)) + _wgslsmith_f_op_f32(f32(-1f) * -843f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 246f, 234f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(332f, -767f, 1000f) - vec3<f32>(1479f, 577f, 2317f))))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(step(1129f, -1259f)), _wgslsmith_f_op_f32(f32(-1f) * -117f), -1000f), vec3<f32>(-216f, _wgslsmith_f_op_f32(f32(-1f) * -201f), _wgslsmith_f_op_f32(round(633f))))))));
    let var_1 = var_0.x;
    var_0 = func_4(func_2(!(!select(vec2<bool>(global0.a, arg_1.a), vec2<bool>(false, true), vec2<bool>(global0.a, arg_1.a))))).b.a.xwy;
    var var_2 = ~(~func_4(func_2(vec2<bool>(true, global0.a))).b.b);
    let var_3 = countOneBits(~(vec2<i32>(u_input.a ^ u_input.a, u_input.a) ^ _wgslsmith_mult_vec2_i32(select(vec2<i32>(0i, u_input.a), vec2<i32>(-2490i, u_input.a), vec2<bool>(true, global0.a)), vec2<i32>(u_input.a, -8786i))));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(countOneBits(_wgslsmith_add_vec3_i32(-vec3<i32>(95722i, 0i, u_input.a), vec3<i32>(2147483647i, u_input.a, -14891i) << (vec3<u32>(0u, 0u, 4294967295u) % vec3<u32>(32u)))) << (vec3<u32>(firstTrailingBit(1u << (1u % 32u)), ~4294967295u, firstLeadingBit(_wgslsmith_add_u32(5137u, 45639u))) % vec3<u32>(32u)), u_input.a, u_input.a, Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1081f - -211f), _wgslsmith_div_f32(-1000f, 860f), -1403f, 475f)), firstLeadingBit(vec3<u32>(1u, 1u, 1u)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a >> (1574u % 32u), -1i), ~vec2<i32>(-2147483647i, u_input.a))));
    global0 = func_5(!global0.a, func_1());
    global0 = Struct_4(global0.a & true);
    var var_1 = abs(var_0.b);
    var var_2 = select(vec2<bool>(global0.a & all(vec4<bool>(true, true, true, true)), false), select(vec2<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c, u_input.a, 0i), var_0.a) > max(u_input.a, 2147483647i), any(!vec3<bool>(false, true, global0.a))), !select(!vec2<bool>(global0.a, false), vec2<bool>(global0.a, global0.a), vec2<bool>(false, false)), false), !(!vec2<bool>(global0.a, false)));
    var_1 = ~max(~30661i, var_0.d.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(firstLeadingBit(min(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -36780i), vec2<i32>(u_input.a, 0i), vec2<i32>(var_0.b, 0i)), select(vec2<i32>(7390i, 0i), vec2<i32>(-28895i, u_input.a), var_2.x))), -(vec2<i32>(u_input.a, 15164i) | countOneBits(var_0.d.c)), any(!(!vec3<bool>(var_2.x, true, var_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -840f)), var_0.b, min(2147483647i, ~u_input.a));
}

