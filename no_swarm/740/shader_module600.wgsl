struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 12> = array<vec2<u32>, 12>(vec2<u32>(81536u, 1u), vec2<u32>(4294967295u, 96990u), vec2<u32>(33787u, 43002u), vec2<u32>(4294967295u, 1u), vec2<u32>(19244u, 1u), vec2<u32>(50723u, 69360u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(12103u, 42254u), vec2<u32>(0u, 16154u), vec2<u32>(52979u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(5678u, 24598u));

var<private> global1: f32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32) -> bool {
    let var_0 = countOneBits(~select(vec3<i32>(50652i, -2147483647i, arg_1.a) >> (vec3<u32>(u_input.c, arg_0.a, 77925u) % vec3<u32>(32u)), ~vec3<i32>(-2147483647i, arg_2, arg_2), all(vec4<bool>(false, true, true, false))) ^ _wgslsmith_mod_vec3_i32(-vec3<i32>(-1i, 2147483647i, -13110i), vec3<i32>(arg_1.c, _wgslsmith_mult_i32(arg_2, 37512i), 48109i)));
    global1 = -1519f;
    var var_1 = min(vec4<u32>(~arg_1.b, _wgslsmith_mod_u32(u_input.a.x, ~u_input.a.x), ~30489u, u_input.c), u_input.a);
    var_1 = u_input.a;
    var_1 = vec4<u32>(abs(abs(arg_1.b)), ~(~(32052u | (u_input.a.x | arg_1.d.a))), reverseBits(~arg_1.d.a), _wgslsmith_mult_u32(~countOneBits(2028u), 0u));
    return true;
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> bool {
    let var_0 = Struct_2(~(-1i), ~0u, u_input.d << (~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, arg_1.a, 0u), min(vec3<u32>(arg_1.a, 0u, u_input.a.x), u_input.a.yyx)) % 32u), Struct_1(1u));
    global0 = array<vec2<u32>, 12>();
    return all(select(!vec3<bool>(func_3(Struct_3(0u), Struct_2(-2147483647i, arg_0, -46544i, Struct_1(4294967295u)), -2147483647i), true, true), vec3<bool>(true, true, true), !(!all(vec4<bool>(false, false, false, false)))));
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: i32) -> f32 {
    global1 = -260f;
    let var_0 = select(vec4<bool>(all(!vec3<bool>(true, false, arg_0)), true, true, true), !vec4<bool>(select(func_2(u_input.a.x, Struct_1(31745u)), true, false), arg_0, arg_0, arg_0), !select(vec4<bool>(all(vec4<bool>(false, arg_0, false, arg_0)), arg_0, true, arg_0), select(vec4<bool>(false, arg_0, false, true), select(vec4<bool>(arg_0, true, false, true), vec4<bool>(true, arg_0, arg_0, true), vec4<bool>(true, arg_0, arg_0, true)), !vec4<bool>(arg_0, arg_0, false, false)), !vec4<bool>(false, arg_0, arg_0, true)));
    var var_1 = Struct_4(Struct_1(42574u));
    let var_2 = _wgslsmith_mult_i32(arg_2, _wgslsmith_div_i32(~u_input.d | 1i, arg_2));
    var var_3 = Struct_4(var_1.a);
    return _wgslsmith_f_op_f32(250f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-163f, 334f)))), 1f)) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1144f, _wgslsmith_div_f32(-2719f, -522f))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32, arg_3: bool) -> Struct_3 {
    let var_0 = !select(select(select(vec4<bool>(arg_3, true, arg_3, arg_3), select(vec4<bool>(false, true, false, arg_3), vec4<bool>(arg_3, true, false, true), arg_3), false), vec4<bool>(true, true, arg_3, func_3(arg_1, Struct_2(u_input.d, arg_1.a, -19633i, arg_0), 2147483647i)), select(!vec4<bool>(arg_3, arg_3, arg_3, arg_3), !vec4<bool>(arg_3, true, arg_3, false), vec4<bool>(arg_3, true, arg_3, false))), vec4<bool>(!arg_3, select(arg_2 >= -163f, arg_3, arg_3), all(vec3<bool>(arg_3, false, arg_3)) != select(false, arg_3, true), arg_3 | select(false, arg_3, true)), arg_3);
    return Struct_3(arg_0.a);
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: vec4<bool>) -> Struct_1 {
    global0 = array<vec2<u32>, 12>();
    let var_0 = ~0u;
    let var_1 = arg_1;
    var var_2 = vec3<u32>(48445u, func_4(Struct_1(_wgslsmith_clamp_u32(var_0, _wgslsmith_dot_vec3_u32(vec3<u32>(42731u, 0u, 0u), u_input.a.ywx), _wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(34979u, var_0)))), func_4(Struct_1(var_0), func_4(Struct_1(arg_1.a), Struct_3(1u), -1525f, !arg_0), _wgslsmith_f_op_f32(-1865f * _wgslsmith_div_f32(1986f, 227f)), true), 794f, !all(vec2<bool>(true, true))).a, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a & 14459u, _wgslsmith_clamp_u32(0u, 0u, arg_1.a)), u_input.a.zy) & ~(min(0u, 1u) >> (arg_1.a % 32u)));
    var_2 = abs(vec3<u32>(4294967295u, var_1.a, abs(~var_1.a)));
    return Struct_1(abs(var_2.x >> (4294967295u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~1i;
    global0 = array<vec2<u32>, 12>();
    var_0 = _wgslsmith_mult_i32(~u_input.b, -1i);
    let var_1 = Struct_2(~firstLeadingBit(select(-2147483647i, _wgslsmith_mult_i32(u_input.d, -1i), true)), ~firstLeadingBit(4799u), firstTrailingBit(11486i) & -u_input.b, Struct_1(reverseBits(68859u)));
    var var_2 = true;
    let var_3 = Struct_4(func_5(false, func_4(Struct_1(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, 1u, 4294967295u, u_input.c))), Struct_3(~var_1.d.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(true, Struct_3(0u), var_1.a))), any(vec4<bool>(false, false, false, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), false), all(vec4<bool>(false, true, true, false)) && true)));
    let var_4 = ~(~20859u);
    var var_5 = func_4(var_3.a, Struct_3(abs(_wgslsmith_clamp_u32(abs(u_input.a.x), var_4 & u_input.c, ~92834u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -407f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1739f))))))), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a.wxx, abs(u_input.a.xyz)), reverseBits(vec3<u32>(_wgslsmith_clamp_u32(var_5.a, var_4, 23515u), firstTrailingBit(99324u), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(4294967295u, 0u, var_3.a.a, var_5.a))))), _wgslsmith_clamp_vec2_i32(vec2<i32>(-_wgslsmith_clamp_i32(-1i, 1i, 4820i), _wgslsmith_mult_i32(abs(var_1.c), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.d, -11596i, u_input.b), vec4<i32>(var_1.a, -27505i, -28333i, u_input.b)))), vec2<i32>(select(-38844i, abs(2147483647i), true), u_input.b), vec2<i32>(_wgslsmith_mod_i32(u_input.d, -2147483647i), min(var_1.a, 10658i)) << (vec2<u32>(~17822u, firstLeadingBit(1u)) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-375f, 732f, 1859f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(127f, 1000f, -365f))))), vec3<f32>(1653f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1065f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(933f * -277f)))))));
}

