struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 28> = array<vec4<i32>, 28>(vec4<i32>(1i, 23541i, i32(-2147483648), -76844i), vec4<i32>(0i, i32(-2147483648), -1i, -1i), vec4<i32>(2147483647i, -37002i, -29474i, i32(-2147483648)), vec4<i32>(-9681i, -11686i, -1i, 0i), vec4<i32>(-1i, 0i, -2364i, i32(-2147483648)), vec4<i32>(-1i, -2369i, 1i, -7330i), vec4<i32>(67640i, i32(-2147483648), -22030i, 1i), vec4<i32>(-64862i, -16078i, 62034i, i32(-2147483648)), vec4<i32>(-15823i, 0i, -1i, 1i), vec4<i32>(1i, 1i, 0i, 6887i), vec4<i32>(-16681i, 21455i, 27285i, -1059i), vec4<i32>(0i, -1i, -58953i, -1i), vec4<i32>(1i, -3695i, 50593i, 2147483647i), vec4<i32>(-1i, 19610i, -1i, 1i), vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, 11341i), vec4<i32>(32563i, 3538i, i32(-2147483648), 75i), vec4<i32>(-13895i, 1i, 15408i, -16770i), vec4<i32>(49147i, -38190i, -22226i, 1i), vec4<i32>(50305i, 2147483647i, -102915i, -44551i), vec4<i32>(-7424i, -2453i, -1i, 29296i), vec4<i32>(-41467i, i32(-2147483648), -84809i, 0i), vec4<i32>(1i, -2202i, -26922i, i32(-2147483648)), vec4<i32>(-16475i, 1i, 43765i, 0i), vec4<i32>(26553i, -1i, 1i, 1i), vec4<i32>(52105i, 2147483647i, 0i, 20759i), vec4<i32>(-23542i, 38235i, 2147483647i, 58355i), vec4<i32>(53494i, i32(-2147483648), -1i, 48988i), vec4<i32>(0i, 1i, -28923i, 0i));

var<private> global1: u32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3) -> bool {
    var var_0 = Struct_1(arg_2.c.x, vec2<f32>(234f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_1.b.e, arg_1.a), arg_1.b.c.x)) + -833f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_1.b.c, arg_1.b.c)))), arg_2.b.d, -713f);
    let var_1 = false;
    var var_2 = !select(vec3<bool>(all(vec4<bool>(false, true, false, true)), false, true), !select(vec3<bool>(var_1, var_1, true), vec3<bool>(true, true, true), !vec3<bool>(false, false, var_1)), select(select(vec3<bool>(var_1, var_1, true), select(vec3<bool>(false, var_1, var_1), vec3<bool>(false, var_1, var_1), vec3<bool>(false, true, var_1)), var_1), vec3<bool>(select(var_1, true, true), true, true), vec3<bool>(!var_1, true, arg_0 < var_0.d)));
    var var_3 = select(vec2<bool>(true, true), vec2<bool>(!all(select(vec4<bool>(true, var_1, var_1, true), vec4<bool>(false, var_2.x, var_1, false), vec4<bool>(true, var_2.x, var_2.x, false))), (var_1 != false) || !any(vec2<bool>(true, var_1))), var_2.zx);
    let var_4 = vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(round(3514f)), _wgslsmith_f_op_f32(f32(-1f) * -1589f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-111f * _wgslsmith_f_op_f32(select(-1642f, -571f, var_1 & false))))));
    return any(select(!select(vec3<bool>(var_1, true, var_2.x), vec3<bool>(var_3.x, false, false), var_1), !(!vec3<bool>(var_1, true, var_1)), select(!(!vec3<bool>(false, var_2.x, var_3.x)), !(!vec3<bool>(var_3.x, var_3.x, false)), var_2.x)));
}

fn func_2(arg_0: i32, arg_1: vec4<i32>) -> u32 {
    var var_0 = ~u_input.b.x >= abs(2147483647i);
    let var_1 = firstTrailingBit(~(-firstTrailingBit(u_input.c << (65959u % 32u))));
    var var_2 = u_input.b.zy >> (select(~vec2<u32>(abs(u_input.a), u_input.a), vec2<u32>((24739u | u_input.a) | 4294967295u, u_input.a), vec2<bool>(!func_3(38097u, Struct_3(-222f, Struct_1(1770i, vec2<f32>(246f, -628f), vec3<f32>(194f, 1000f, -2001f), u_input.a, -146f), vec4<i32>(arg_1.x, arg_1.x, u_input.c, 2147483647i)), Struct_3(2404f, Struct_1(var_1, vec2<f32>(244f, 897f), vec3<f32>(-219f, -226f, -539f), u_input.a, -1511f), vec4<i32>(arg_1.x, 0i, -43303i, u_input.c))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)))) % vec2<u32>(32u));
    let var_3 = reverseBits(_wgslsmith_add_u32(~u_input.a & ~39332u, u_input.a) >> (~(u_input.a ^ 63084u) % 32u));
    global0 = array<vec4<i32>, 28>();
    return _wgslsmith_dot_vec3_u32(~(~vec3<u32>(75714u, u_input.a, 46798u)) >> (firstTrailingBit(~vec3<u32>(61660u, 1u, u_input.a)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(u_input.a, 1u, u_input.a) | vec3<u32>(72846u, 5320u, 1u)), vec3<u32>(firstLeadingBit(u_input.a), _wgslsmith_add_u32(15282u, var_3), u_input.a >> (53238u % 32u)))) >> (43661u % 32u);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec2<i32>) -> bool {
    global1 = ~(~arg_1.x);
    let var_0 = arg_1.zy;
    let var_1 = _wgslsmith_f_op_f32(-arg_0.b.x);
    global1 = 1u;
    let var_2 = arg_0.a;
    return arg_0.c.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: bool, arg_3: f32) -> bool {
    global1 = ~40293u;
    var var_0 = vec3<i32>(arg_1.x, 0i, arg_0.a);
    var_0 = u_input.b;
    let var_1 = u_input.a;
    let var_2 = global0[_wgslsmith_index_u32(4294967295u, 28u)];
    return func_4(Struct_2(Struct_1(abs(~(-1i)), vec2<f32>(_wgslsmith_f_op_f32(select(arg_3, arg_0.c.x, true)), _wgslsmith_f_op_f32(f32(-1f) * -131f)), _wgslsmith_f_op_vec3_f32(-arg_0.c), 68352u, -177f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-549f, -690f))), vec2<bool>(true, true)), vec3<u32>(u_input.a, _wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(u_input.a, var_1, 35379u, 21793u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(40477u, 4294967295u, u_input.a, var_1), vec4<u32>(23646u, 22291u, 1787u, 0u))), ~(func_2(-7997i, global0[_wgslsmith_index_u32(var_1, 28u)]) | u_input.a)), ~_wgslsmith_mult_vec2_i32(abs(firstLeadingBit(arg_1.xz)), _wgslsmith_mult_vec2_i32(~u_input.b.yx, _wgslsmith_add_vec2_i32(var_2.wz, var_0.zy))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(!(!func_1(Struct_1(24278i, vec2<f32>(455f, 513f), vec3<f32>(348f, -763f, -614f), 39288u, -413f), vec3<i32>(-2147483647i, u_input.b.x, -29011i), false, 1001f)), all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), func_4(Struct_2(Struct_1(-2147483647i, vec2<f32>(-114f, -1000f), vec3<f32>(782f, 1381f, 2669f), u_input.a, -132f), vec2<f32>(1523f, 439f), vec2<bool>(true, false)), vec3<u32>(1u, u_input.a, u_input.a), u_input.b.zy))), select(!all(vec4<bool>(true, true, false, false)), true || (u_input.a == 4294967295u), true));
    global1 = _wgslsmith_add_u32(1u, 0u);
    var var_1 = !(!(!var_0));
    global1 = 17859u ^ ~max(u_input.a, ~min(4294967295u, 58576u));
    global1 = 1u;
    let var_2 = max(vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, u_input.a) << (~vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), min(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, u_input.a)) << (reverseBits(vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u))), 0u), countOneBits(max(vec3<u32>(1u, u_input.a, 0u | u_input.a), vec3<u32>(firstLeadingBit(37288u), max(59446u, u_input.a), firstLeadingBit(1u)))));
    let var_3 = Struct_1(~_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.c, 89170i)), vec2<i32>(u_input.c, u_input.c)) & ~reverseBits(-u_input.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1296f, -935f) + vec2<f32>(274f, -1747f)) - vec2<f32>(-1573f, -883f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-533f, 653f, -1000f) * vec3<f32>(1558f, -434f, 102f)))))), 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1710f)), -1000f, true)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1197f - 633f)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.zx, _wgslsmith_dot_vec2_i32(abs(u_input.b.zx >> (vec2<u32>(u_input.a, 899u) % vec2<u32>(32u))), firstTrailingBit(-vec2<i32>(0i, u_input.c))), min(u_input.a << ((var_3.d & reverseBits(u_input.a)) % 32u), firstLeadingBit(_wgslsmith_mod_u32(1u, var_2.x))), -(vec4<i32>(abs(1i), _wgslsmith_mod_i32(4207i, -1i), reverseBits(var_3.a), _wgslsmith_mult_i32(u_input.b.x, var_3.a)) << (abs(max(vec4<u32>(var_3.d, var_2.x, 14811u, var_2.x), vec4<u32>(var_2.x, var_3.d, u_input.a, var_2.x))) % vec4<u32>(32u))));
}

