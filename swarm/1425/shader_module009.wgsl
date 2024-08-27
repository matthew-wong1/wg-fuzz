struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: u32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = ~_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_1.b.x, select(arg_1.d.x, arg_1.b.x, arg_0.c.c.x), _wgslsmith_add_u32(arg_0.d, 0u)), ~(~_wgslsmith_mod_vec3_u32(arg_2.c.d.xwy, arg_2.c.d.yzy)));
    var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.x, firstLeadingBit(_wgslsmith_sub_u32(4294967295u, var_0.x))), arg_2.c.d.xww), 4294967295u, _wgslsmith_mod_u32(1u, 360u));
    let var_1 = ~firstTrailingBit(vec3<u32>(arg_0.d, _wgslsmith_mod_u32(_wgslsmith_div_u32(arg_2.c.b.x, arg_1.b.x), ~12268u), ~18880u));
    var_0 = arg_1.d.wyx;
    let var_2 = _wgslsmith_sub_i32(-24666i, 1i >> (~(~(~arg_0.c.d.x)) % 32u));
    return select(!vec3<bool>(arg_1.c.x, false, select(arg_1.c.x && arg_2.c.c.x, any(vec3<bool>(arg_0.a.a, false, true)), true)), vec3<bool>(arg_1.c.x, true, (_wgslsmith_f_op_f32(-arg_2.b) <= _wgslsmith_f_op_f32(step(arg_0.b, 689f))) || false), vec3<bool>(false, arg_0.b != 308f, (-1i <= reverseBits(var_2)) | true));
}

fn func_2() -> Struct_1 {
    return Struct_1(-select(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, u_input.b.x, -2147483647i), vec3<i32>(u_input.b.x, 1i, u_input.b.x)), u_input.b, select(func_3(Struct_3(Struct_2(true, 1015f, Struct_1(vec3<i32>(-1i, 1i, -1i), vec3<u32>(u_input.a, 0u, 35074u), vec2<bool>(true, false), vec4<u32>(u_input.a, 18838u, u_input.a, 21922u))), 1186f, Struct_1(u_input.b, vec3<u32>(30175u, u_input.a, 40517u), vec2<bool>(true, false), vec4<u32>(42049u, 4294967295u, u_input.a, u_input.a)), 61890u, vec3<f32>(-922f, -411f, -1000f)), Struct_1(vec3<i32>(-2147483647i, u_input.b.x, -47935i), vec3<u32>(u_input.a, u_input.a, u_input.a), vec2<bool>(true, false), vec4<u32>(u_input.a, 0u, 4294967295u, 1u)), Struct_2(true, 953f, Struct_1(u_input.b, vec3<u32>(4294967295u, u_input.a, u_input.a), vec2<bool>(true, true), vec4<u32>(1u, 29495u, 17603u, 711u)))), vec3<bool>(true, true, true), true)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(16014u, u_input.a)), _wgslsmith_clamp_u32(firstTrailingBit(u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, 20463u), vec4<u32>(u_input.a, u_input.a, 40109u, u_input.a)), ~0u)), firstTrailingBit(select(select(vec3<u32>(u_input.a, u_input.a, 18590u), vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<bool>(false, true, false)), min(vec3<u32>(0u, 20129u, 4294967295u), vec3<u32>(u_input.a, 14662u, u_input.a)), vec3<bool>(true, false, true)))), select(vec2<bool>(true, true), !func_3(Struct_3(Struct_2(false, -2842f, Struct_1(u_input.b, vec3<u32>(u_input.a, 1u, u_input.a), vec2<bool>(false, false), vec4<u32>(u_input.a, 5527u, u_input.a, 0u))), -791f, Struct_1(u_input.b, vec3<u32>(u_input.a, u_input.a, u_input.a), vec2<bool>(true, false), vec4<u32>(0u, u_input.a, u_input.a, u_input.a)), 12202u, vec3<f32>(1656f, 1572f, -477f)), Struct_1(u_input.b, vec3<u32>(4294967295u, u_input.a, 27722u), vec2<bool>(true, false), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), Struct_2(true, 306f, Struct_1(u_input.b, vec3<u32>(21643u, 1u, 4294967295u), vec2<bool>(false, true), vec4<u32>(u_input.a, u_input.a, 1817u, u_input.a)))).yz, true | !func_3(Struct_3(Struct_2(true, 464f, Struct_1(u_input.b, vec3<u32>(u_input.a, u_input.a, u_input.a), vec2<bool>(true, true), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u))), 609f, Struct_1(u_input.b, vec3<u32>(103683u, u_input.a, 0u), vec2<bool>(true, false), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)), u_input.a, vec3<f32>(847f, 296f, -179f)), Struct_1(u_input.b, vec3<u32>(49958u, 13690u, 14786u), vec2<bool>(false, true), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), Struct_2(false, -1000f, Struct_1(vec3<i32>(u_input.b.x, -15291i, u_input.b.x), vec3<u32>(u_input.a, 4294967295u, 4294967295u), vec2<bool>(false, false), vec4<u32>(29034u, u_input.a, 9267u, u_input.a)))).x), ~vec4<u32>(~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 40630u, u_input.a), ~vec3<u32>(4294967295u, u_input.a, 0u)), u_input.a, abs(~51731u)));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_3(Struct_2(all(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), true)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1410f - 563f))), func_2()), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(floor(-999f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1240f, 144f, false))))))), Struct_1(u_input.b, select(vec3<u32>(_wgslsmith_div_u32(u_input.a, u_input.a), ~u_input.a, _wgslsmith_div_u32(u_input.a, 4294967295u)), firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(15327u, u_input.a, 1u), vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(4294967295u, 64250u, 16096u))), any(vec2<bool>(true, false))), !select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(false, false), true), _wgslsmith_mult_vec4_u32(firstTrailingBit(select(vec4<u32>(u_input.a, 0u, 34866u, 18135u), vec4<u32>(21078u, 0u, u_input.a, u_input.a), vec4<bool>(false, true, true, true))), vec4<u32>(606u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, u_input.a)), _wgslsmith_div_u32(39582u, 30985u)))), reverseBits(~64951u), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-516f, _wgslsmith_f_op_f32(ceil(841f)), _wgslsmith_f_op_f32(1989f * 1827f))))));
    var var_1 = false;
    let var_2 = func_2();
    var var_3 = Struct_2(_wgslsmith_clamp_u32(27587u, var_0.c.b.x, _wgslsmith_sub_u32(var_0.d >> (var_2.d.x % 32u), 0u >> (var_0.d % 32u))) <= _wgslsmith_div_u32(~_wgslsmith_sub_u32(0u, var_0.c.d.x), _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(var_0.c.d, var_0.a.c.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.x)), func_2());
    return var_0.a;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    var var_0 = Struct_3(Struct_2(arg_2.c.c.x, -1497f, func_1().c), _wgslsmith_f_op_f32(-106f * _wgslsmith_f_op_f32(step(-897f, 268f))), func_1().c, u_input.a, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b, arg_1.b, arg_2.b) - vec3<f32>(-574f, -214f, arg_1.b)))) * vec3<f32>(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(arg_0 + 919f), _wgslsmith_f_op_f32(arg_0 - arg_1.b))))));
    var_0 = Struct_3(Struct_2(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1277f * var_0.a.b))), arg_0), arg_2.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) * arg_0), arg_1.c, arg_2.c.d.x, var_0.e);
    var_0 = Struct_3(Struct_2(arg_2.a, 1000f, Struct_1(var_0.a.c.a, _wgslsmith_add_vec3_u32(vec3<u32>(arg_2.c.d.x, 62417u, u_input.a) << (vec3<u32>(arg_2.c.d.x, arg_1.c.b.x, var_0.a.c.b.x) % vec3<u32>(32u)), arg_1.c.b), !arg_1.c.c, var_0.a.c.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(668f * _wgslsmith_f_op_f32(f32(-1f) * -805f)), var_0.b))), Struct_1(arg_1.c.a, abs(~arg_2.c.b | abs(vec3<u32>(var_0.a.c.b.x, var_0.d, u_input.a))), var_0.c.c, ~_wgslsmith_sub_vec4_u32(arg_1.c.d << (vec4<u32>(5601u, 27297u, u_input.a, var_0.c.d.x) % vec4<u32>(32u)), reverseBits(vec4<u32>(u_input.a, arg_2.c.b.x, arg_2.c.b.x, 36911u)))), max(~arg_2.c.b.x, _wgslsmith_dot_vec3_u32(min(max(vec3<u32>(52014u, 1u, 79119u), arg_2.c.d.wyx), min(arg_1.c.b, vec3<u32>(46311u, arg_2.c.d.x, arg_2.c.d.x))), var_0.c.b)), _wgslsmith_f_op_vec3_f32(sign(var_0.e)));
    var_0 = Struct_3(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1546f))), func_2(), firstLeadingBit(_wgslsmith_mult_u32(~arg_1.c.d.x, arg_1.c.d.x ^ arg_1.c.b.x)) ^ ~firstTrailingBit(select(1u, arg_1.c.d.x, var_0.a.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-807f * arg_2.b), _wgslsmith_f_op_f32(floor(arg_1.b)), _wgslsmith_f_op_f32(floor(1000f)))) + var_0.e));
    let var_1 = vec4<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -653f) * -2045f))) > 333f, !any(vec2<bool>(false, false)), !(_wgslsmith_f_op_f32(ceil(arg_1.b)) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-168f, 391f))), arg_1.a);
    return arg_1.c.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    var_0 = -1589i;
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(273f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -261f)), _wgslsmith_f_op_f32(-1f)))));
    let var_2 = func_4(855f, func_1(), func_1());
    let var_3 = Struct_2(func_2().c.x, var_1.x, func_2());
    var var_4 = ~min(var_3.c.b, firstLeadingBit(~abs(vec3<u32>(u_input.a, 66030u, 4294967295u))));
    var_0 = _wgslsmith_mod_i32(reverseBits(~0i) | abs(var_2), var_3.c.a.x) ^ -1i;
    var_4 = ~(~var_3.c.d.zzy);
    var_0 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(-359f);
}

