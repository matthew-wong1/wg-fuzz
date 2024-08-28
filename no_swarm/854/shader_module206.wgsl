struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec2<bool>,
    d: vec3<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: Struct_1,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, -10321i, 0i, 35073i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32) -> vec2<f32> {
    global0 = firstTrailingBit(vec4<i32>(_wgslsmith_clamp_i32(~arg_0.x, -1i, u_input.a), -(~global0.x) | firstTrailingBit(global0.x), 46070i, arg_0.x));
    let var_0 = Struct_1(true, select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(true, true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), true)))), vec3<f32>(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-211f, -439f)), -288f))), -1444f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-414f - -644f) - _wgslsmith_f_op_f32(select(-585f, 915f, false))), _wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(1418f, -1045f)))), select(vec2<bool>(true, true), vec2<bool>(true, true), (u_input.c > 4294967295u) || true));
    let var_1 = Struct_1(var_0.b.x, var_0.e, select(select(select(select(var_0.c, var_0.e, var_0.c), select(vec2<bool>(false, false), var_0.b, var_0.e.x), var_0.b.x && var_0.c.x), select(!vec2<bool>(var_0.e.x, var_0.b.x), select(vec2<bool>(var_0.b.x, var_0.b.x), var_0.e, var_0.b.x), var_0.b.x), select(!vec2<bool>(var_0.c.x, var_0.a), vec2<bool>(var_0.c.x, var_0.a), select(vec2<bool>(var_0.e.x, var_0.c.x), vec2<bool>(var_0.c.x, var_0.e.x), var_0.c))), var_0.c, true), vec3<f32>(-1750f, 683f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_0.d.x))))), vec2<bool>(all(vec3<bool>(317f <= var_0.d.x, false, true)), var_0.a));
    let var_2 = 42744u;
    var var_3 = -1921f;
    return vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -453f), 1574f);
}

fn func_2() -> Struct_2 {
    var var_0 = vec3<u32>(_wgslsmith_add_u32(~u_input.b << (u_input.b % 32u), ~_wgslsmith_div_u32(4294967295u, u_input.d.x)), u_input.c, ~u_input.c ^ firstTrailingBit(u_input.b));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(reverseBits(~global0.wz), u_input.d.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(797f, 791f) * vec2<f32>(690f, 329f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(887f, -1257f) - vec2<f32>(-675f, -2368f))))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-546f, 125f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1000f))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(-252f, -705f), _wgslsmith_div_vec2_f32(vec2<f32>(-295f, -441f), vec2<f32>(1014f, 526f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -582f)))))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + var_1.x))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(round(var_1.x)), var_1.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(687f, var_1.x), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.x, -513f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-363f, -2567f), vec2<f32>(-382f, var_1.x), vec2<bool>(false, true))))), true)), Struct_1(any(vec3<bool>(true, true, true)), vec2<bool>(true, true), select(!select(vec2<bool>(false, false), vec2<bool>(false, true), true), !select(vec2<bool>(false, false), vec2<bool>(false, false), true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(true, false), true))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(abs(var_1.x)), 1140f, _wgslsmith_f_op_f32(var_1.x * var_1.x)))), vec2<bool>(false, true | all(vec2<bool>(true, true)))), global0.xy, Struct_1(true, !(!select(vec2<bool>(true, true), vec2<bool>(false, true), true)), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1590f, var_1.x, var_1.x)))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.x, var_1.x, -928f)))))), vec2<bool>(true, true)));
    let var_3 = Struct_1(false, select(vec2<bool>(any(var_2.e.c), var_2.c.c.x), vec2<bool>(all(var_2.c.e), !select(false, false, false)), all(vec3<bool>(all(var_2.e.e), true, var_2.e.e.x))), vec2<bool>(any(select(var_2.c.b, !var_2.e.b, var_2.e.e)), !(!(var_2.e.c.x && var_2.c.b.x))), var_2.e.d, select(select(var_2.c.e, vec2<bool>(false, true), vec2<bool>(var_2.e.a && true, all(vec3<bool>(var_2.e.e.x, true, false)))), !var_2.e.e, !select(select(vec2<bool>(false, var_2.e.c.x), var_2.c.c, false), select(var_2.c.c, vec2<bool>(var_2.e.a, false), false), vec2<bool>(true, true))));
    let var_4 = var_3.d.x;
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_3.d.x + var_4))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e.d.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.d.x, var_1.x)), var_3.d.zy)) + vec2<f32>(var_3.d.x, _wgslsmith_f_op_f32(-var_3.d.x)))), Struct_1(all(select(vec4<bool>(var_2.e.b.x, false, true, false), select(vec4<bool>(var_3.e.x, var_2.c.e.x, var_3.e.x, false), vec4<bool>(var_3.c.x, true, var_2.e.a, false), false), var_2.e.a)), var_2.c.c, !(!select(var_2.c.c, var_2.e.b, true)), vec3<f32>(_wgslsmith_f_op_f32(min(568f, 1927f)), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(477f * 2566f))), !var_2.c.b), var_2.d, Struct_1(var_3.b.x, !var_3.c, vec2<bool>(any(!vec3<bool>(var_3.e.x, var_3.a, var_3.c.x)), true), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_3.d.x, _wgslsmith_f_op_f32(var_4 * -1461f), _wgslsmith_f_op_f32(var_1.x * var_1.x)), var_3.d)), vec2<bool>(!var_3.b.x && (var_0.x < 16512u), !var_3.b.x)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = Struct_1(arg_1.c.a, select(vec2<bool>(true, true), arg_1.c.b, arg_2.a), vec2<bool>(any(vec2<bool>(true, true)), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.d) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1066f, -501f, arg_2.d.x) + vec3<f32>(256f, arg_2.d.x, arg_1.e.d.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_1.c.d, vec3<f32>(246f, -282f, arg_1.e.d.x), arg_1.c.e.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.d) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2.d.x, -1000f, 783f)))))), select(vec2<bool>(!(!arg_2.a), arg_2.c.x), vec2<bool>(!arg_2.b.x, false), !(!(arg_2.a && false))));
    var var_1 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~(~u_input.b), 4294967295u, u_input.b), ~vec3<u32>(u_input.d.x, countOneBits(33077u), 31143u)), _wgslsmith_mod_u32(0u, ~u_input.d.x << (u_input.c % 32u)) >> (3117u % 32u), _wgslsmith_add_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, abs(62662u), u_input.b, ~63190u), _wgslsmith_add_vec4_u32(~vec4<u32>(28918u, u_input.b, 57667u, 20869u), abs(vec4<u32>(15987u, u_input.d.x, 1u, u_input.d.x))))));
    var var_2 = abs(~u_input.c);
    var var_3 = func_2().e;
    var var_4 = !(!(!vec2<bool>(all(vec4<bool>(false, false, true, arg_1.c.e.x)), true)));
    return Struct_1(var_3.a, vec2<bool>(any(!select(vec4<bool>(var_4.x, arg_2.a, false, false), vec4<bool>(arg_1.e.a, var_0.c.x, true, var_4.x), false)), var_4.x), vec2<bool>(!(select(false, arg_1.c.a, var_0.c.x) & !arg_2.a), arg_1.c.b.x & any(!vec3<bool>(arg_1.e.c.x, var_0.a, var_0.c.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_1.e.d, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-143f, var_0.d.x, -993f) - vec3<f32>(-1460f, -1241f, arg_1.c.d.x)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(932f, 1000f, 232f))), !vec3<bool>(true, var_0.c.x, true)))))), var_3.b);
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: u32, arg_3: vec2<i32>) -> i32 {
    var var_0 = ~0u;
    let var_1 = func_4(~(vec4<i32>(-1i) * -select(vec4<i32>(arg_3.x, arg_3.x, 2147483647i, 0i), vec4<i32>(0i, arg_3.x, 17375i, -1i), arg_1.e.x)), Struct_2(arg_0.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.x * -123f) * 894f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), arg_1, vec2<i32>(43667i | arg_3.x, reverseBits(global0.x)), Struct_1(-970f <= _wgslsmith_f_op_f32(round(arg_0.x)), arg_1.b, select(!vec2<bool>(true, arg_1.b.x), vec2<bool>(arg_1.a, arg_1.e.x), func_4(vec4<i32>(17118i, -63169i, arg_3.x, -8354i), Struct_2(688f, arg_1.d.yy, Struct_1(true, arg_1.c, vec2<bool>(arg_1.c.x, false), arg_0, arg_1.e), global0.ww, arg_1), Struct_1(arg_1.b.x, vec2<bool>(arg_1.b.x, false), vec2<bool>(true, arg_1.e.x), arg_1.d, arg_1.e), arg_3.x).c.x), _wgslsmith_f_op_vec3_f32(sign(arg_1.d)), vec2<bool>(true, all(vec2<bool>(true, false))))), func_2().c, -2147483647i);
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(arg_0.zz));
    var_0 = 25172u;
    let var_3 = 399f;
    return -global0.x;
}

fn func_1(arg_0: bool) -> vec3<i32> {
    global0 = vec4<i32>(u_input.e.x, firstTrailingBit(global0.x), _wgslsmith_dot_vec2_i32((countOneBits(vec2<i32>(2147483647i, global0.x)) ^ u_input.e.yy) & select(u_input.e.zz, countOneBits(global0.xy), vec2<bool>(false, false)), select(abs(~vec2<i32>(u_input.e.x, global0.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, global0.x), global0.zw), false)), func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1141f, 1544f, -1000f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(201f, -950f, -1000f), vec3<f32>(555f, -1227f, 133f))), !vec3<bool>(arg_0, arg_0, arg_0)))), func_4(vec4<i32>(-1i) * -vec4<i32>(55472i, -2147483647i, u_input.e.x, u_input.a), func_2(), func_2().c, 1i), firstTrailingBit(1u), -vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, global0.x, 0i, 605i), vec4<i32>(u_input.e.x, 0i, 0i, global0.x)), _wgslsmith_mod_i32(-20536i, u_input.e.x))));
    let var_0 = arg_0;
    let var_1 = vec4<u32>(firstTrailingBit(_wgslsmith_dot_vec4_u32(~max(vec4<u32>(u_input.d.x, u_input.c, 24777u, u_input.d.x), vec4<u32>(u_input.d.x, 22948u, 22920u, 14434u)), _wgslsmith_div_vec4_u32(~vec4<u32>(63298u, u_input.d.x, u_input.c, 4294967295u), vec4<u32>(4653u, 13724u, 50177u, u_input.d.x)))), u_input.b, u_input.c, 43264u);
    global0 = ~(-(~abs(min(vec4<i32>(35946i, 12352i, u_input.a, -26930i), vec4<i32>(2147483647i, 0i, 8779i, global0.x)))));
    var var_2 = func_4(vec4<i32>(_wgslsmith_dot_vec2_i32(~_wgslsmith_mult_vec2_i32(u_input.e.yx, vec2<i32>(-1i, u_input.a)), vec2<i32>(11169i, 1i)), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, global0.x, u_input.e.x, 52142i), -vec4<i32>(u_input.e.x, 1i, global0.x, u_input.a))), select(-1i, -(-1467i >> (u_input.d.x % 32u)), select(arg_0, true, 0u == u_input.d.x)), _wgslsmith_div_i32(firstTrailingBit(_wgslsmith_clamp_i32(-1i, 6063i, -7948i)), 33088i)), func_2(), Struct_1(!all(!vec4<bool>(var_0, false, arg_0, true)), !func_4(countOneBits(vec4<i32>(-2147483647i, 37969i, u_input.a, u_input.e.x)), Struct_2(-1654f, vec2<f32>(-108f, 1828f), Struct_1(arg_0, vec2<bool>(true, var_0), vec2<bool>(false, arg_0), vec3<f32>(-984f, -1911f, 704f), vec2<bool>(false, false)), u_input.e.yz, Struct_1(arg_0, vec2<bool>(false, false), vec2<bool>(true, true), vec3<f32>(132f, 1375f, 112f), vec2<bool>(var_0, arg_0))), func_2().c, 1i ^ u_input.e.x).c, func_4(vec4<i32>(_wgslsmith_dot_vec2_i32(global0.xw, vec2<i32>(u_input.e.x, u_input.e.x)), _wgslsmith_clamp_i32(2147483647i, 1i, u_input.a), -2147483647i, abs(u_input.a)), Struct_2(_wgslsmith_f_op_f32(abs(-230f)), vec2<f32>(167f, -1195f), Struct_1(false, vec2<bool>(arg_0, var_0), vec2<bool>(arg_0, false), vec3<f32>(560f, 399f, 1427f), vec2<bool>(false, var_0)), u_input.e.zy, Struct_1(false, vec2<bool>(true, false), vec2<bool>(true, false), vec3<f32>(-307f, -559f, 150f), vec2<bool>(var_0, arg_0))), Struct_1(true, vec2<bool>(arg_0, false), !vec2<bool>(arg_0, true), _wgslsmith_div_vec3_f32(vec3<f32>(2542f, -1557f, 849f), vec3<f32>(1716f, 494f, 160f)), !vec2<bool>(var_0, false)), u_input.a).b, vec3<f32>(-647f, 1000f, 733f), !(!vec2<bool>(false, arg_0))), ~1i);
    return _wgslsmith_sub_vec3_i32(~_wgslsmith_mult_vec3_i32(u_input.e, firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.e.x, -1i, u_input.e.x), vec3<i32>(59236i, 2147483647i, -46725i), u_input.e))), -(~(-u_input.e)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstTrailingBit(~reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, global0.x, 2105i), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.e.x, u_input.e.x, -2147483647i), vec4<i32>(global0.x, global0.x, u_input.e.x, global0.x)), ~vec4<i32>(u_input.a, -52047i, 0i, global0.x))));
    var var_0 = 8807u;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.c), 147495u, reverseBits(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global0.x, global0.x, u_input.e.x), u_input.e), func_1(false)), u_input.e)));
}

