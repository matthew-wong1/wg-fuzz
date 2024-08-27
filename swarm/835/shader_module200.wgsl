struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<u32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32) -> vec2<u32> {
    let var_0 = Struct_1(false, vec2<u32>(4294967295u, max(26564u, _wgslsmith_mod_u32(u_input.a, firstLeadingBit(4294967295u)))), _wgslsmith_clamp_vec2_u32(~abs(u_input.b), u_input.b, (u_input.b | ~u_input.b) | ~abs(u_input.b)), -u_input.c >> (vec2<u32>(select(u_input.a, 1u, global0.x), 66660u) % vec2<u32>(32u)));
    global0 = select(vec3<bool>(!any(vec2<bool>(var_0.a, var_0.a)) | any(vec3<bool>(global0.x, false, false)), all(vec4<bool>(global0.x, false, all(vec3<bool>(global0.x, var_0.a, global0.x)), select(global0.x, true, global0.x))), any(!select(vec4<bool>(global0.x, var_0.a, false, false), vec4<bool>(true, var_0.a, global0.x, global0.x), vec4<bool>(false, var_0.a, false, global0.x)))), !vec3<bool>(!(!var_0.a), select(global0.x, true, true), var_0.a), any(vec2<bool>(~var_0.b.x < 0u, all(vec3<bool>(var_0.a, false, var_0.a)) & false)));
    global0 = !vec3<bool>(!(~62514u < (4294967295u << (u_input.a % 32u))), true | !var_0.a, global0.x);
    global0 = !vec3<bool>(!var_0.a, global0.x, any(global0.yz) & select(true, global0.x, false));
    global0 = vec3<bool>(-1000f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-862f, arg_0, true))))), true, all(!select(vec2<bool>(global0.x, var_0.a), global0.yz, vec2<bool>(false, true))));
    return ~firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, var_0.c.x, u_input.b.x, u_input.b.x), vec4<u32>(var_0.c.x, 1u, var_0.b.x, 46230u)) >> (var_0.b.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.x, var_0.b.x, 1u) ^ vec3<u32>(4294967295u, u_input.a, var_0.c.x), _wgslsmith_sub_vec3_u32(vec3<u32>(15460u, var_0.c.x, 16669u), vec3<u32>(var_0.b.x, u_input.b.x, 60037u)))));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>) -> i32 {
    var var_0 = Struct_1(!(!arg_0.a.a), vec2<u32>(_wgslsmith_div_u32(4294967295u, _wgslsmith_add_u32(1u, arg_0.d.b.x)), ~(~u_input.b.x)) | ~vec2<u32>(85988u, u_input.b.x), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1217f - 306f))), -select(u_input.c, _wgslsmith_add_vec2_i32(abs(vec2<i32>(u_input.c.x, 2147483647i)), _wgslsmith_mult_vec2_i32(u_input.c, u_input.c)), any(!global0.xz)));
    var var_1 = Struct_1(!(var_0.b.x >= u_input.a), min(reverseBits(var_0.b), countOneBits(arg_0.c.xx)), vec2<u32>(var_0.c.x, select(var_0.b.x, 1u, -arg_1.x >= (arg_1.x >> (var_0.b.x % 32u)))), var_0.d | arg_1.zz);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1653f), 518f)))))));
    var var_3 = !all(select(!vec4<bool>(true, false, arg_0.d.a, true), select(vec4<bool>(var_1.a, arg_0.a.a, arg_0.a.a, var_0.a), vec4<bool>(var_0.a, var_0.a, false, var_1.a), false), arg_0.d.d.x == var_0.d.x)) || (all(vec4<bool>(true, all(vec2<bool>(false, true)), global0.x | global0.x, true)) && all(vec4<bool>(!var_0.a, true, any(global0.xx), true)));
    var var_4 = var_0.a;
    return 0i;
}

fn func_1(arg_0: u32, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = firstLeadingBit(min(vec4<i32>(0i, select(_wgslsmith_sub_i32(-39843i, -2614i), 7603i, true), func_2(Struct_2(Struct_1(global0.x, vec2<u32>(1u, 0u), vec2<u32>(u_input.a, 0u), u_input.c), u_input.b, vec3<u32>(arg_0, 1u, 38137u), Struct_1(true, u_input.b, vec2<u32>(24897u, arg_0), u_input.c), u_input.c.x), vec3<i32>(1i, 2147483647i, u_input.c.x)), (u_input.c.x << (u_input.b.x % 32u)) | -1i), vec4<i32>(u_input.c.x, 5059i, min(u_input.c.x, u_input.c.x ^ 18743i), select(-u_input.c.x, 1i, !global0.x))));
    return Struct_1(global0.x, countOneBits(~vec2<u32>(_wgslsmith_add_u32(4294967295u, arg_0), 4294967295u)), ~(~countOneBits(u_input.b | u_input.b)), vec2<i32>(-2147483647i ^ var_0.x, var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<bool>(true, global0.x, true);
    var var_0 = Struct_2(func_1(abs(34241u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1949f + -720f), -1506f, _wgslsmith_f_op_f32(f32(-1f) * -679f)))), vec2<u32>(15667u, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-371f, 304f)))).x), vec3<u32>(u_input.b.x, 11316u, ~(~4294967295u)), Struct_1(!(!global0.x), vec2<u32>(~(~33600u), 20377u), firstLeadingBit(~u_input.b), vec2<i32>((u_input.c.x & 0i) | u_input.c.x, _wgslsmith_div_i32(1i, select(0i, 1i, global0.x)))), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(firstLeadingBit(-vec2<i32>(u_input.c.x, 3783i)), ~u_input.c), abs(~countOneBits(u_input.c))));
    var var_1 = !select(global0.yy, select(vec2<bool>(true, true), select(select(global0.yy, global0.yy, false), select(global0.zz, vec2<bool>(var_0.d.a, global0.x), vec2<bool>(false, true)), global0.x), true), global0.yz);
    var var_2 = vec3<bool>(var_0.a.a, true, false);
    let var_3 = var_0.d;
    let var_4 = func_1(var_0.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(815f, -232f, 129f)) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(388f, -669f, -1915f) + vec3<f32>(281f, 334f, -1284f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-2141f, -786f, 773f), vec3<f32>(-995f, -1000f, -980f))))))));
    let var_5 = vec3<f32>(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1012f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-733f)), _wgslsmith_f_op_f32(f32(-1f) * -622f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(426f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(277f * -1000f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1006f) * -690f)), -521f));
    var_0 = Struct_2(func_1(~countOneBits(1u), vec3<f32>(-404f, _wgslsmith_div_f32(948f, _wgslsmith_div_f32(var_5.x, -292f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2270f)) - -191f))), abs(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.d.c.x, u_input.b.x), ~vec2<u32>(4294967295u, 0u) << (_wgslsmith_add_vec2_u32(var_0.b, var_4.b) % vec2<u32>(32u)))), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.b.x, 4294967295u, var_0.d.b.x), abs(var_0.c)), u_input.b.x), u_input.b.x, var_4.c.x), func_1(1u, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_5), vec3<f32>(699f, _wgslsmith_f_op_f32(-var_5.x), _wgslsmith_f_op_f32(exp2(var_5.x))), vec3<bool>(true, func_1(var_0.b.x, var_5).a, select(false, var_4.a, false))))), u_input.c.x);
    let var_6 = abs(abs(reverseBits(vec3<i32>(-u_input.c.x, u_input.c.x, firstTrailingBit(var_0.e)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(var_6, vec3<i32>(35962i, -max(var_0.a.d.x, -10268i), -(~var_3.d.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.b.x, u_input.b.x, 67825u, 3724u ^ u_input.a), vec4<u32>(49380u, _wgslsmith_mult_u32(~0u, u_input.b.x), 45704u, 4371u)));
}

