struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    return arg_1.e.x;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -507f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-765f * 396f))))), func_3(Struct_1(vec2<bool>(false, false)), Struct_2(Struct_1(vec2<bool>(false, true)), u_input.c.x, select(true, true, true), Struct_1(vec2<bool>(false, false)), vec4<bool>(true, false, false, false))))) + 1474f);
    var_0 = _wgslsmith_f_op_f32(min(939f, _wgslsmith_f_op_f32(sign(-928f))));
    return Struct_1(vec2<bool>(select(true, u_input.e.x <= 44424i, true), true));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = u_input.c.x;
    var_0 = 41101i;
    var var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(520f - -557f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1155f))))), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1554f + -714f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(477f * 458f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(177f, 242f)) + -164f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(557f - -704f))))));
    let var_2 = var_1.x;
    let var_3 = arg_0.d;
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: i32) -> f32 {
    let var_0 = abs(u_input.b.x);
    var var_1 = _wgslsmith_div_f32(1527f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(151f)))))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-276f - 961f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1865f)), _wgslsmith_f_op_f32(step(-1503f, 265f))))))), 105f, _wgslsmith_f_op_f32(963f + 2289f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1824f - 1331f)))) - 372f));
    var var_3 = func_2();
    let var_4 = Struct_2(func_1(arg_0, firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 30573u, var_0), u_input.b)) >> (u_input.b % vec3<u32>(32u)), Struct_1(vec2<bool>(true, true))), i32(-1i) * -4418i, false, arg_0.d, !select(select(vec4<bool>(true, var_3.a.x, true, true), select(vec4<bool>(false, false, arg_1.x, true), arg_0.e, vec4<bool>(arg_0.d.a.x, var_3.a.x, var_3.a.x, true)), !vec4<bool>(var_3.a.x, arg_1.x, true, false)), select(arg_0.e, select(vec4<bool>(false, false, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, false, true), arg_0.a.a.x), select(arg_0.e, arg_0.e, false)), vec4<bool>(var_0 <= u_input.b.x, 21758u <= var_0, true, var_3.a.x)));
    return -263f;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    let var_1 = u_input.a;
    var var_2 = vec4<bool>(true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1046f) * 3498f))) >= var_0, true, !arg_1.e.x);
    var_2 = vec4<bool>(var_2.x, false, true, any(!var_2.yy) && false);
    let var_3 = arg_1.d;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec4<f32>(_wgslsmith_f_op_f32(ceil(163f)), _wgslsmith_f_op_f32(func_4(Struct_2(func_1(Struct_2(Struct_1(vec2<bool>(true, true)), u_input.d.x, false, Struct_1(vec2<bool>(true, true)), vec4<bool>(true, false, false, true)), vec3<u32>(u_input.b.x, 49474u, 1u), Struct_1(vec2<bool>(false, false))), _wgslsmith_mult_i32(u_input.a.x, -45097i), u_input.b.x <= 2449u, func_2(), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), false)), vec3<bool>(select(true, false, false), true, all(vec3<bool>(false, false, false))), ~_wgslsmith_dot_vec4_i32(u_input.c, u_input.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-709f + 691f)) + 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(483f + 478f))), Struct_2(Struct_1(func_2().a), -(~u_input.a.x) << (4294967295u % 32u), any(vec2<bool>(false, func_3(Struct_1(vec2<bool>(false, true)), Struct_2(Struct_1(vec2<bool>(true, false)), u_input.c.x, false, Struct_1(vec2<bool>(false, true)), vec4<bool>(true, true, false, false))))), Struct_1(vec2<bool>(true, true)), select(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(false, true, true, true), true)));
    var var_1 = Struct_1(select(var_0.a, var_0.a, !func_1(Struct_2(var_0, u_input.c.x, false, Struct_1(vec2<bool>(var_0.a.x, true)), vec4<bool>(var_0.a.x, var_0.a.x, false, false)), _wgslsmith_clamp_vec3_u32(u_input.b, u_input.b, vec3<u32>(8218u, 92847u, 26044u)), func_5(vec4<f32>(439f, 380f, -212f, 627f), Struct_2(Struct_1(vec2<bool>(var_0.a.x, var_0.a.x)), u_input.a.x, false, Struct_1(vec2<bool>(var_0.a.x, true)), vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x)))).a.x));
    var var_2 = Struct_1(vec2<bool>(func_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-118f, -1000f, 1632f, 416f)), vec4<f32>(1000f, 955f, -199f, 755f)), Struct_2(Struct_1(vec2<bool>(true, var_1.a.x)), max(u_input.e.x, u_input.e.x), true, var_0, vec4<bool>(true, true, false, var_1.a.x))).a.x, false));
    var var_3 = _wgslsmith_mod_vec4_u32(abs(~(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 37781u) >> (vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u)))), vec4<u32>(57703u, ~4294967295u, _wgslsmith_dot_vec2_u32(reverseBits(u_input.b.xz), firstLeadingBit(u_input.b.zz)), abs(u_input.b.x)) << (firstLeadingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 70295u, u_input.b.x, 4294967295u), vec4<u32>(u_input.b.x, u_input.b.x, 1287u, 4294967295u)), max(vec4<u32>(5421u, 1u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)))) % vec4<u32>(32u)));
    let var_4 = Struct_2(func_1(Struct_2(Struct_1(func_5(vec4<f32>(-1000f, -1611f, 403f, 1070f), Struct_2(var_0, u_input.e.x, var_1.a.x, Struct_1(vec2<bool>(true, false)), vec4<bool>(false, var_0.a.x, false, true))).a), 1i, true, Struct_1(select(vec2<bool>(var_0.a.x, true), vec2<bool>(true, var_1.a.x), false)), !select(vec4<bool>(false, true, false, true), vec4<bool>(var_2.a.x, false, var_0.a.x, var_1.a.x), var_2.a.x)), firstLeadingBit(~u_input.b), Struct_1(var_2.a)), ~firstLeadingBit(~(~25914i)), (all(var_2.a) && var_2.a.x) && (_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(160f)))) < 644f), func_2(), !select(select(vec4<bool>(var_0.a.x, var_0.a.x, false, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, var_0.a.x, true, var_0.a.x), vec4<bool>(false, true, false, var_2.a.x)), false), vec4<bool>(true, all(vec4<bool>(var_0.a.x, var_0.a.x, true, var_2.a.x)), u_input.d.x >= u_input.c.x, func_1(Struct_2(var_0, 0i, true, Struct_1(vec2<bool>(false, true)), vec4<bool>(false, var_0.a.x, true, var_2.a.x)), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), var_0).a.x), select(vec4<bool>(false, true, false, var_2.a.x), !vec4<bool>(var_2.a.x, var_0.a.x, true, false), !vec4<bool>(var_1.a.x, var_2.a.x, false, var_0.a.x))));
    var_2 = func_1(var_4, abs(~firstTrailingBit(~vec3<u32>(0u, 4294967295u, 4294967295u))), var_4.a);
    let var_5 = var_4;
    var var_6 = var_5.e.wzy;
    let var_7 = Struct_1(vec2<bool>(!(select(var_0.a.x, true, false) && true), func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-646f, 963f, -490f, -1000f), vec4<f32>(641f, 153f, 2322f, -1097f))) * vec4<f32>(-2333f, -204f, 789f, -356f)), var_5).a.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, ~(-(~vec4<i32>(var_4.b, 1i, 661i, u_input.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * -788f), _wgslsmith_div_f32(524f, -247f)), 1f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(391f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(131f)) - -1000f))));
}

