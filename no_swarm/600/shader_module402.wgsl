struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec2<bool>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 11>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: f32) -> bool {
    let var_0 = max(~vec3<u32>(~u_input.b.x, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.b, u_input.b), arg_2), min(u_input.b.x, u_input.b.x) & ~0u), _wgslsmith_sub_vec3_u32(~arg_2.yxz, _wgslsmith_sub_vec3_u32(vec3<u32>(66598u, u_input.e.x, 17527u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.e.x, 1608u, 64670u), u_input.a.xzz, arg_2.yyz)) & _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 55620u, arg_2.x), vec3<u32>(1u, u_input.e.x, 22161u), firstTrailingBit(vec3<u32>(4294967295u, 38712u, 0u)))));
    let var_1 = Struct_2(~vec2<i32>(-27779i, _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.c, -1i, -58367i), firstTrailingBit(vec3<i32>(arg_1.a.x, u_input.c, u_input.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.e.x)))))), min(_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.x, 26192u, u_input.a.x, 63637u) | _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, arg_2.x, u_input.a.x, u_input.e.x)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(43581u, 10832u, 4294967295u, var_0.x), vec4<u32>(arg_2.x, 0u, 14069u, var_0.x)), arg_2.x, _wgslsmith_div_u32(u_input.e.x, 45956u), _wgslsmith_mod_u32(0u, 1u))), ~u_input.b));
    let var_2 = Struct_2(-vec2<i32>(arg_1.a.x ^ arg_1.a.x, firstTrailingBit(-18695i)), -823f, vec4<u32>(1u, abs(arg_2.x) | firstTrailingBit(u_input.b.x), ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a.x, 1u), 1u), 4294967295u));
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(399f)), _wgslsmith_f_op_f32(var_2.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(arg_1.e.x, var_2.b, true))))))));
    global0 = array<Struct_3, 11>();
    return false;
}

fn func_2() -> u32 {
    global0 = array<Struct_3, 11>();
    global0 = array<Struct_3, 11>();
    global0 = array<Struct_3, 11>();
    var var_0 = Struct_1(vec2<i32>(u_input.c, i32(-1i) * -(u_input.c ^ u_input.d)), _wgslsmith_f_op_f32(floor(-2788f)), select(vec2<bool>(true, select(any(vec2<bool>(false, true)), all(vec4<bool>(false, true, true, false)), func_3(vec3<bool>(true, true, false), Struct_1(vec2<i32>(-17665i, u_input.c), 130f, vec2<bool>(true, true), true, vec3<f32>(439f, 1068f, 578f)), vec4<u32>(0u, u_input.a.x, u_input.e.x, 45872u), -1758f))), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true)), !(u_input.a.x < 8505u)), !all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false))), true, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-534f, _wgslsmith_f_op_f32(f32(-1f) * -393f), -485f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-191f, -1067f, 165f) * vec3<f32>(-376f, -698f, -2148f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1295f, -244f, 348f), vec3<f32>(-207f, 785f, 1044f))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1677f, -264f, -2033f), vec3<f32>(2635f, -708f, -463f), vec3<bool>(true, true, false)))))))));
    var var_1 = u_input.a.zwy >> (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.e.x, ~u_input.e.x >> (~4294967295u % 32u)), abs(vec3<u32>(48027u << (u_input.e.x % 32u), _wgslsmith_dot_vec2_u32(u_input.b.zy, u_input.b.wy), ~u_input.a.x))) % vec3<u32>(32u));
    return _wgslsmith_dot_vec2_u32(~u_input.a.wz & (_wgslsmith_div_vec2_u32(vec2<u32>(33785u, u_input.b.x), ~u_input.e) | vec2<u32>(_wgslsmith_div_u32(var_1.x, 4294967295u), _wgslsmith_mod_u32(1u, 20452u))), var_1.yx);
}

fn func_1(arg_0: i32) -> vec2<bool> {
    let var_0 = vec3<u32>(1u, ~(~select(_wgslsmith_mult_u32(u_input.a.x, u_input.e.x), ~18913u, all(vec3<bool>(false, true, false)))), _wgslsmith_clamp_u32(u_input.b.x, func_2(), u_input.b.x ^ _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_mod_u32(u_input.e.x, 0u))));
    global0 = array<Struct_3, 11>();
    var var_1 = Struct_2((firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0, 32613i), vec2<i32>(53107i, arg_0))) << (vec2<u32>(1u, ~var_0.x) % vec2<u32>(32u))) << (~vec2<u32>(u_input.e.x, 58447u) % vec2<u32>(32u)), 504f, u_input.a);
    global0 = array<Struct_3, 11>();
    let var_2 = 0u;
    return vec2<bool>(any(vec2<bool>(false, any(vec4<bool>(false, true, true, false)) | false)), all(vec2<bool>(true, true)) | false);
}

fn func_4(arg_0: bool) -> vec2<u32> {
    global0 = array<Struct_3, 11>();
    let var_0 = select(select(!select(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, true, true), arg_0), select(vec3<bool>(false, true, false), vec3<bool>(arg_0, arg_0, arg_0), arg_0), select(vec3<bool>(true, false, arg_0), vec3<bool>(true, arg_0, arg_0), vec3<bool>(false, false, true))), !select(select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, arg_0, false)), vec3<bool>(true, true, arg_0), vec3<bool>(arg_0, arg_0, true)), false), !vec3<bool>(false, any(vec4<bool>(true, false, false, arg_0)), false), select(!vec3<bool>(arg_0, true, false), !vec3<bool>(true == arg_0, all(vec3<bool>(arg_0, true, true)), arg_0), select(select(vec3<bool>(true, arg_0, false), vec3<bool>(arg_0, arg_0, arg_0), select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(true, arg_0, arg_0), false)), !vec3<bool>(arg_0, true, false), vec3<bool>(!arg_0, any(vec4<bool>(arg_0, true, true, arg_0)), any(vec2<bool>(false, true))))));
    global0 = array<Struct_3, 11>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(243f, 986f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1143f, 1182f)))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(var_1.x + var_1.x)), 1193f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + 1597f) - _wgslsmith_f_op_f32(floor(var_1.x)))), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(1000f, 1164f)), _wgslsmith_f_op_f32(var_1.x * var_1.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -1000f, -620f, var_1.x) + vec4<f32>(var_1.x, var_1.x, 327f, var_1.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1850f, var_1.x, var_1.x, var_1.x), vec4<f32>(1206f, 807f, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1528f, 506f, -1642f, var_1.x) * vec4<f32>(var_1.x, 806f, var_1.x, 1000f))) * vec4<f32>(_wgslsmith_div_f32(-1422f, 497f), var_1.x, _wgslsmith_f_op_f32(max(299f, 2101f)), -930f))));
    return u_input.b.yz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(18911u, ~(~29446u)), 11u)];
    var var_1 = _wgslsmith_dot_vec2_u32(~func_4(all(func_1(u_input.c))), min(reverseBits(vec2<u32>(4294967295u, _wgslsmith_clamp_u32(36924u, var_0.b.c.x, 11991u))), vec2<u32>(_wgslsmith_dot_vec3_u32(~var_0.b.c.ywy, ~var_0.b.c.zyx), abs(8120u))));
    global0 = array<Struct_3, 11>();
    var var_2 = 0i;
    var_0 = global0[_wgslsmith_index_u32(var_0.b.c.x, 11u)];
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec4_u32(~vec4<u32>(53432u, 51187u, 30107u, 0u), u_input.b), ~(~40710u), u_input.b.x, ~(~var_0.a.x));
}

