struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_3) -> f32 {
    let var_0 = arg_2.c;
    var var_1 = var_0;
    let var_2 = ~arg_2.a.d.x;
    var var_3 = ~arg_2.a.d;
    var_1 = arg_2.c;
    return _wgslsmith_f_op_f32(-arg_2.a.c.a);
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(1i, u_input.a.x)), -_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a, u_input.a), ~u_input.a));
    var var_1 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(arg_0, ~arg_0), select(_wgslsmith_div_u32(4294967295u, arg_0), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_0, 1u, arg_0), vec4<u32>(arg_0, 15735u, 28962u, 0u)), true)), vec2<u32>(131226u, arg_0));
    var_1 = reverseBits(arg_0);
    var_1 = arg_0;
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1900f, -326f, -441f, 684f))))), false, Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2131f)), -689f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1806f)), _wgslsmith_f_op_f32(f32(-1f) * -1826f)))), vec3<i32>(~u_input.a.x, _wgslsmith_add_i32(-(~u_input.a.x), _wgslsmith_dot_vec2_i32(u_input.a << (vec2<u32>(3229u, 1u) % vec2<u32>(32u)), vec2<i32>(u_input.a.x, 0i))), -(~min(var_0, u_input.a.x))));
    return -311f;
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-922f * arg_3.a.x);
    var var_1 = !(-1061f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(74190u))))));
    var var_2 = vec3<u32>(1u >> (~(~abs(1u)) % 32u), abs(~1u), 0u >> (_wgslsmith_div_u32(4294967295u, 4294967295u) % 32u));
    let var_3 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0, _wgslsmith_f_op_f32(exp2(arg_2.x)), _wgslsmith_f_op_f32(max(arg_2.x, -1095f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(317f, 1000f)) + _wgslsmith_div_f32(var_0, arg_2.x)))))));
    var_2 = _wgslsmith_clamp_vec3_u32(min(~(~vec3<u32>(25335u, var_2.x, 0u) ^ vec3<u32>(1u, 4294967295u, 43372u)), vec3<u32>(~1u, _wgslsmith_mod_u32(countOneBits(4294967295u), var_2.x), var_2.x)), countOneBits(select(vec3<u32>(0u, _wgslsmith_sub_u32(0u, var_2.x), var_2.x), select(max(vec3<u32>(var_2.x, var_2.x, var_2.x), vec3<u32>(119786u, 4874u, 4294967295u)), abs(vec3<u32>(1u, var_2.x, var_2.x)), select(vec3<bool>(true, arg_0.b, false), vec3<bool>(arg_3.b, arg_0.b, arg_3.b), arg_3.b)), vec3<bool>(any(vec4<bool>(true, false, true, arg_3.b)), true, false))), vec3<u32>(min(_wgslsmith_mod_u32(var_2.x, countOneBits(30103u)), _wgslsmith_mod_u32(var_2.x, 1u ^ var_2.x)), _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, var_2.x, var_2.x), reverseBits(4294967295u)), 4294967295u), firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, var_2.x, 0u), vec3<u32>(var_2.x, 44635u, 4294967295u)), ~var_2.x))));
    return var_2.x;
}

fn func_4(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_2;
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_0.c.b)))), _wgslsmith_f_op_f32(func_3(~arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.c.a)) * _wgslsmith_f_op_f32(trunc(-206f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c.b - var_0.c.a) + _wgslsmith_f_op_f32(-1523f - arg_2.c.a))) * var_0.a), !((true && var_0.b) | all(vec3<bool>(arg_2.b, false, true))) || any(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, arg_2.b))), arg_2.c, vec3<i32>(~arg_2.d.x, ~firstLeadingBit(-23896i), ~u_input.a.x));
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(max(var_0.a, arg_2.a)), all(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, arg_2.b, arg_2.b), arg_2.b))), Struct_1(1910f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-367f - _wgslsmith_f_op_f32(round(arg_2.a.x)))))), var_0.d);
    var var_1 = arg_2.d & -abs(~arg_2.d);
    let var_2 = -1000f;
    return Struct_1(_wgslsmith_f_op_f32(min(arg_2.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1722f + _wgslsmith_f_op_f32(exp2(var_0.a.x))))))), _wgslsmith_div_f32(1000f, -735f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec4<f32>(-1000f, _wgslsmith_f_op_f32(max(-237f, 913f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(true, false, Struct_3(Struct_2(vec4<f32>(449f, 507f, -1000f, 799f), true, Struct_1(556f, -1292f), vec3<i32>(52987i, u_input.a.x, u_input.a.x)), true, 0u, false))) + _wgslsmith_f_op_f32(286f * -381f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(488f + -746f))), ~(1i | u_input.a.x) <= 1i, func_4(vec2<u32>(select(11064u, 0u, true) << (min(12264u, 14945u) % 32u), func_2(Struct_2(vec4<f32>(607f, -501f, -1000f, 697f), false, Struct_1(838f, 261f), vec3<i32>(u_input.a.x, 4268i, -2147483647i)), ~(-47375i), vec4<f32>(-3484f, 1409f, 276f, 104f), Struct_2(vec4<f32>(-544f, 400f, 853f, -229f), true, Struct_1(-668f, -179f), vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x)))), 12468u, Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(175f, 876f, 597f, 1828f))), any(vec2<bool>(false, false)), Struct_1(-603f, _wgslsmith_f_op_f32(floor(240f))), _wgslsmith_add_vec3_i32(max(vec3<i32>(u_input.a.x, 2147483647i, -2147483647i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<i32>(u_input.a.x, 38345i, u_input.a.x) >> (vec3<u32>(1u, 0u, 42137u) % vec3<u32>(32u))))), ~reverseBits(~vec3<i32>(-2147483647i, u_input.a.x, -33388i)));
    let var_1 = _wgslsmith_div_i32(9401i, max(u_input.a.x, i32(-1i) * -1i) >> (_wgslsmith_dot_vec2_u32(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 9661u), vec2<u32>(1u, 4294967295u)), ~vec2<u32>(1u, 0u), !vec2<bool>(var_0.b, var_0.b)), vec2<u32>(45900u >> (1u % 32u), 4294967295u)) % 32u));
    var var_2 = !vec2<bool>(all(vec4<bool>(all(vec2<bool>(true, true)), true, true, u_input.a.x <= u_input.a.x)), var_0.b);
    var_2 = !vec2<bool>(_wgslsmith_div_f32(_wgslsmith_div_f32(1476f, 1732f), _wgslsmith_f_op_f32(var_0.a.x + var_0.c.b)) > _wgslsmith_f_op_f32(f32(-1f) * -950f), select(any(select(vec3<bool>(true, true, var_2.x), vec3<bool>(false, var_2.x, true), vec3<bool>(var_2.x, false, var_2.x))), true, true));
    var_2 = vec2<bool>(!any(!select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, var_2.x), var_2.x)), var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(_wgslsmith_mult_i32(-12263i, var_1))), _wgslsmith_f_op_vec4_f32(select(var_0.a, var_0.a, _wgslsmith_div_i32(_wgslsmith_mult_i32(1i, var_1), 4681i) > (var_1 << (1u % 32u)))), _wgslsmith_add_vec4_u32(vec4<u32>(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(69250u, 47449u, 50212u, 8012u), vec4<u32>(42724u, 76875u, 0u, 1u)), _wgslsmith_mult_u32(countOneBits(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(19740u, 1u, 1u, 46583u), vec4<u32>(24021u, 15636u, 1u, 4294967295u))), ~(~0u)), vec4<u32>(1u, 1u, 1u, 1u)), u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_0.a)) * var_0.a)));
}

