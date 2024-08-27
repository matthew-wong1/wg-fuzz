struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<bool>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<u32>) -> u32 {
    let var_0 = arg_1;
    var var_1 = Struct_1(arg_1.a.x, -1i, arg_0.b.d, select(!arg_0.b.d, !vec4<bool>(false, arg_2.x <= 0u, all(arg_0.b.c), arg_1.b || var_0.b), vec4<bool>(!arg_1.b, false, !arg_1.b, false)));
    let var_2 = abs(_wgslsmith_div_i32(firstTrailingBit(-22113i), u_input.a << (abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, arg_0.d.x, 0u, arg_0.d.x), vec4<u32>(28755u, arg_0.d.x, arg_2.x, 114184u))) % 32u)));
    let var_3 = reverseBits(~vec4<u32>(23930u, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, arg_0.d.x, arg_0.d.x, arg_0.d.x), vec4<u32>(arg_2.x, 11182u, arg_0.d.x, arg_2.x)), arg_2.x ^ 1u, 44433u));
    var_1 = arg_0.b;
    return arg_0.d.x << (~countOneBits(25119u) % 32u);
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: u32, arg_3: vec2<f32>) -> vec2<f32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(abs(arg_3)), true);
    var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-arg_3), true);
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_add_u32(92104u, _wgslsmith_sub_u32(28986u, func_3(Struct_2(vec3<bool>(var_0.b, true, true), Struct_1(arg_3.x, arg_0.x, vec4<bool>(var_0.b, false, var_0.b, var_0.b), vec4<bool>(var_0.b, var_0.b, var_0.b, false)), vec3<bool>(var_0.b, true, true), vec2<u32>(87502u, arg_2)), Struct_3(vec2<f32>(var_0.a.x, arg_3.x), var_0.b), vec2<u32>(126180u, arg_2))) | ~arg_1), _wgslsmith_add_u32(min(countOneBits(arg_1), arg_1), _wgslsmith_sub_u32(arg_1, _wgslsmith_div_u32(_wgslsmith_add_u32(arg_2, arg_2), _wgslsmith_clamp_u32(51342u, 0u, arg_1)))));
    let var_2 = arg_0.x;
    var_0 = Struct_3(_wgslsmith_div_vec2_f32(var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.a.x, arg_3.x), arg_3)) - vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_3.x)), _wgslsmith_f_op_f32(var_0.a.x * arg_3.x)))), all(select(vec3<bool>(any(vec3<bool>(false, false, true)), true, var_0.b), !select(vec3<bool>(var_0.b, false, var_0.b), vec3<bool>(var_0.b, false, var_0.b), vec3<bool>(false, var_0.b, var_0.b)), !vec3<bool>(var_0.b, var_0.b, true))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(280f, var_0.a.x), arg_3))))) + arg_3);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = arg_2;
    var var_1 = Struct_3(arg_3, u_input.a < arg_1.b);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.a, var_1.a.x, arg_2.b.a, arg_1.a))))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(130f, -594f, 414f, _wgslsmith_f_op_f32(-arg_2.b.a)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.a, var_1.a.x, -770f, 234f))))));
    var var_3 = arg_2;
    var_0 = Struct_2(arg_2.b.d.xwx, var_3.b, select(!(!arg_1.d.wyw), vec3<bool>(var_3.a.x, arg_0, all(!arg_1.c)), !var_1.b || select(!var_0.b.d.x, var_1.b, true)), var_3.d);
    return arg_1;
}

fn func_1(arg_0: Struct_2) -> u32 {
    let var_0 = arg_0;
    let var_1 = func_4(true, Struct_1(-2784f, select(_wgslsmith_dot_vec3_i32(-vec3<i32>(-20992i, u_input.a, u_input.a), vec3<i32>(arg_0.b.b, arg_0.b.b, var_0.b.b)), var_0.b.b, true), vec4<bool>(any(!var_0.c), _wgslsmith_f_op_f32(-arg_0.b.a) != _wgslsmith_f_op_f32(-arg_0.b.a), ~625u >= _wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_0.d.x, arg_0.d.x), vec3<u32>(66676u, var_0.d.x, 4294967295u)), _wgslsmith_f_op_f32(min(var_0.b.a, 392f)) != _wgslsmith_f_op_f32(f32(-1f) * -1563f)), vec4<bool>(arg_0.b.d.x, !(arg_0.b.a >= arg_0.b.a), true, true)), arg_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(580f, arg_0.b.a)), _wgslsmith_f_op_vec2_f32(func_2(vec3<i32>(23250i, -1i, -30593i), 4294967295u, 85997u, vec2<f32>(335f, var_0.b.a))))), vec2<f32>(-1746f, -1000f), select(var_0.b.d.wz, vec2<bool>(true, var_0.c.x), var_0.c.xz))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.b.a, 1107f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(637f, arg_0.b.a) - vec2<f32>(arg_0.b.a, -3302f))))));
    let var_2 = abs(52593i);
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-882f, -1779f), vec2<f32>(arg_0.b.a, var_1.a)))) - vec2<f32>(-387f, _wgslsmith_div_f32(var_1.a, 123f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.a, arg_0.b.a)) * vec2<f32>(-1673f, -311f)))), var_0.b.a != _wgslsmith_div_f32(arg_0.b.a, -1297f));
    var var_4 = true;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(527u, 4294967295u, ~4733u), _wgslsmith_clamp_vec3_u32(~vec3<u32>(101136u, 1u, 36742u), ~(~vec3<u32>(0u, 8048u, 18180u)), vec3<u32>(_wgslsmith_add_u32(41741u, 0u), func_1(Struct_2(vec3<bool>(false, false, true), Struct_1(1559f, u_input.a, vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true)), vec3<bool>(true, false, false), vec2<u32>(0u, 4294967295u))), 1u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(45967u, 76638u, 0u), vec3<u32>(0u, 13888u, 1u), vec3<u32>(1u, 55272u, 81569u)), max(vec3<u32>(4294967295u, 44863u, 12914u), vec3<u32>(1u, 0u, 0u)), ~vec3<u32>(1u, 0u, 0u)) | firstTrailingBit(vec3<u32>(1u, 1u, 1u)));
    var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(~var_0.x, ~4294967295u | ~countOneBits(var_0.x), var_0.x), ~_wgslsmith_sub_vec3_u32(reverseBits(~vec3<u32>(51715u, 4294967295u, 65443u)), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, 0u, 103165u), vec3<u32>(1u, var_0.x, var_0.x))));
    var var_1 = Struct_2(!select(vec3<bool>(any(vec4<bool>(false, true, false, false)), true, any(vec2<bool>(false, false))), vec3<bool>(any(vec3<bool>(false, false, false)), select(true, false, false), select(true, false, true)), func_4(true, Struct_1(-201f, 12628i, vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true)), Struct_2(vec3<bool>(true, true, true), Struct_1(1659f, 0i, vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true)), vec3<bool>(true, false, true), var_0.xz), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-756f, 618f), vec2<f32>(720f, 413f)))).d.yww), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-390f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2(vec3<i32>(u_input.a, u_input.a, u_input.a), var_0.x, var_0.x, vec2<f32>(-1913f, -1195f))).x * _wgslsmith_f_op_f32(floor(1000f))))), _wgslsmith_clamp_i32(u_input.a, ~u_input.a, 0i ^ ~u_input.a), select(func_4(true, Struct_1(-145f, u_input.a, vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false)), Struct_2(vec3<bool>(true, false, false), Struct_1(-311f, -2147483647i, vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), vec3<bool>(false, false, true), vec2<u32>(4294967295u, var_0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(571f, 1791f) - vec2<f32>(592f, 1000f))).c, select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), false), vec4<bool>(false, false, false, false), any(vec4<bool>(false, false, false, false))), func_4(true, Struct_1(-103f, u_input.a, vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false)), Struct_2(vec3<bool>(true, false, true), Struct_1(-407f, 29557i, vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true)), vec3<bool>(false, false, true), vec2<u32>(0u, var_0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1348f, 1000f) - vec2<f32>(-458f, 822f))).d.x), vec4<bool>(true, any(vec2<bool>(true, true)), true, any(vec2<bool>(true, true)))), !func_4(any(vec3<bool>(true, true, true)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -325f), _wgslsmith_mod_i32(u_input.a, -28592i), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), Struct_2(vec3<bool>(true, true, false), Struct_1(-1463f, -12070i, vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), vec2<u32>(25968u, 34104u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 389f))).d.xzw, var_0.yx ^ min(_wgslsmith_clamp_vec2_u32(~vec2<u32>(var_0.x, var_0.x), _wgslsmith_mult_vec2_u32(var_0.zz, var_0.yx), var_0.xz & var_0.yx), ~var_0.xy));
    var var_2 = vec2<f32>(_wgslsmith_f_op_vec2_f32(func_2(reverseBits(vec3<i32>(func_4(false, var_1.b, Struct_2(vec3<bool>(true, false, false), var_1.b, var_1.c, vec2<u32>(7503u, var_0.x)), vec2<f32>(-143f, -1912f)).b, u_input.a, -13777i)), var_0.x, min(~_wgslsmith_mod_u32(14035u, 1u), var_0.x), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.a, var_1.b.a)) * vec2<f32>(1585f, -2550f)))))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_1.b.a, _wgslsmith_f_op_f32(f32(-1f) * -547f))), _wgslsmith_f_op_vec2_f32(func_2(vec3<i32>(-2147483647i, u_input.a, -72302i) ^ vec3<i32>(-1i, 20763i, var_1.b.b), 4294967295u, 1u, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.a, var_1.b.a) - vec2<f32>(-728f, -558f)))).x, var_1.c.x)) + var_1.b.a));
    let var_3 = ~(-(~u_input.a));
    var var_4 = ~var_0.x >> ((var_1.d.x & var_1.d.x) % 32u);
    let var_5 = 0u;
    var_4 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(-53413i, 43699i, 63703u);
}

