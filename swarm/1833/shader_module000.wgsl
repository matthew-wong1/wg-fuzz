struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>) -> vec2<bool> {
    global0 = !all(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))));
    var var_0 = _wgslsmith_dot_vec3_i32(abs(arg_0), arg_0);
    global1 = array<vec4<bool>, 28>();
    let var_1 = !(all(vec2<bool>(true, select(false, false, true))) | false);
    let var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(689f))), _wgslsmith_f_op_f32(trunc(287f)), 1400f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(342f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1723f, -1678f, 211f, -916f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-484f, -324f, -1144f, 1731f)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(620f, 1333f, 325f, -581f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-306f, 335f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(886f, 499f)), -1214f, var_1 || var_1)), -311f, _wgslsmith_f_op_f32(f32(-1f) * -920f)))));
    return !select(vec2<bool>(var_2.x > 1f, var_1), !select(!vec2<bool>(false, var_1), select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1), var_1), -158f <= var_2.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * -1290f))) != -1000f);
}

fn func_2() -> Struct_1 {
    global1 = array<vec4<bool>, 28>();
    var var_0 = Struct_2(Struct_1(1522u, u_input.c, func_3(~vec3<i32>(u_input.c, u_input.c, u_input.c)), ~min(firstTrailingBit(vec4<u32>(59259u, u_input.a, 4294967295u, u_input.b)), select(vec4<u32>(0u, 4294967295u, 1680u, 121198u), vec4<u32>(u_input.a, u_input.a, u_input.a, 20169u), false))));
    let var_1 = -2147483647i;
    global1 = array<vec4<bool>, 28>();
    var var_2 = vec4<u32>(~0u, reverseBits(1u), _wgslsmith_div_u32(abs(~4294967295u), ~(~u_input.a)), select(var_0.a.a, firstTrailingBit(18893u), all(!var_0.a.c))) & (vec4<u32>(var_0.a.d.x, firstTrailingBit(min(41301u, u_input.a)), 21269u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(88466u, u_input.b), var_0.a.d.x & 76575u, reverseBits(var_0.a.a))) >> (max(select(var_0.a.d << (var_0.a.d % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(21402u, 1u, var_0.a.d.x, 12214u), vec4<u32>(var_0.a.d.x, var_0.a.a, u_input.a, 1u)), vec4<bool>(true, true, true, true)), ~vec4<u32>(var_0.a.a, 1u, 0u, 1u) >> (~var_0.a.d % vec4<u32>(32u))) % vec4<u32>(32u)));
    return Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(var_0.a.d.xx >> (_wgslsmith_sub_vec2_u32(var_0.a.d.zy, vec2<u32>(var_2.x, 0u)) % vec2<u32>(32u)), vec2<u32>(var_0.a.d.x, _wgslsmith_sub_u32(0u, var_0.a.d.x))), vec2<u32>(select(var_2.x, _wgslsmith_div_u32(var_0.a.a, 1u), true), u_input.b)), _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, -var_1), select(abs(vec2<i32>(0i, var_1)), abs(reverseBits(vec2<i32>(var_0.a.b, var_1))), vec2<bool>(true, var_0.a.c.x))), vec2<bool>(false | var_0.a.c.x, all(!select(vec3<bool>(var_0.a.c.x, false, true), vec3<bool>(false, false, var_0.a.c.x), vec3<bool>(true, false, var_0.a.c.x)))), vec4<u32>(var_2.x, var_2.x | _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(var_0.a.d, vec4<u32>(82614u, var_2.x, 62223u, 0u)), select(var_0.a.d, var_0.a.d, var_0.a.c.x)), abs(countOneBits(0u)), 1u << (_wgslsmith_clamp_u32(var_0.a.d.x | 4294967295u, 5275u, u_input.b) % 32u)));
}

fn func_1() -> f32 {
    var var_0 = reverseBits(vec2<i32>(-u_input.c, _wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, 0i), abs(vec2<i32>(u_input.c, -19876i))))) & _wgslsmith_add_vec2_i32(abs(-(~vec2<i32>(u_input.c, -2147483647i))), vec2<i32>(_wgslsmith_mult_i32(u_input.c, _wgslsmith_mod_i32(u_input.c, u_input.c)), select(-u_input.c, reverseBits(u_input.c), true)));
    let var_1 = Struct_2(func_2());
    global1 = array<vec4<bool>, 28>();
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1196f))), _wgslsmith_f_op_f32(f32(-1f) * -1139f), var_1.a.c.x)) + _wgslsmith_f_op_f32(floor(-390f))), 498f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2247f + -382f)));
    var_0 = _wgslsmith_div_vec2_i32(~vec2<i32>(-26227i, i32(-1i) * -1854i), _wgslsmith_mult_vec2_i32(vec2<i32>(-20997i, 9547i) << (var_1.a.d.zw % vec2<u32>(32u)), -vec2<i32>(1i, 1i)));
    return _wgslsmith_f_op_f32(-var_2.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec2<bool>) -> StorageBuffer {
    var var_0 = arg_2.a;
    global0 = arg_0.c.x;
    var var_1 = arg_2;
    var_1 = arg_2;
    let var_2 = ~_wgslsmith_add_u32(~(~firstLeadingBit(1u)), reverseBits(u_input.a | 1u));
    return StorageBuffer(vec3<u32>(select(arg_1.x & (var_2 | arg_2.a.a), _wgslsmith_dot_vec3_u32(func_2().d.xxy, var_0.d.xxw), true), 20400u, var_2), -2147483647i, ~_wgslsmith_div_vec4_u32(~vec4<u32>(arg_1.x, 1u, 0u, 11051u), arg_0.d), vec4<f32>(-872f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-236f + 688f))) + 1523f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1011f * _wgslsmith_f_op_f32(select(-519f, -1000f, arg_0.c.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(254f - 1242f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    let var_0 = _wgslsmith_clamp_i32(~u_input.c, abs(-9782i), -2147483647i);
    let var_1 = select(vec2<i32>(~var_0, 2147483647i), _wgslsmith_div_vec2_i32(~(~abs(vec2<i32>(75582i, var_0))), max(vec2<i32>(-1i) * -vec2<i32>(44932i, 1i), -select(vec2<i32>(-1i, u_input.c), vec2<i32>(44992i, -38206i), false))), false);
    let x = u_input.a;
    s_output = func_4(Struct_1(1u, u_input.c, vec2<bool>(_wgslsmith_f_op_f32(func_1()) < _wgslsmith_f_op_f32(f32(-1f) * -1000f), 4356i < _wgslsmith_mod_i32(var_0, u_input.c)), _wgslsmith_div_vec4_u32(~(vec4<u32>(u_input.b, 17239u, 0u, u_input.b) << (vec4<u32>(u_input.b, 40124u, 1u, u_input.b) % vec4<u32>(32u))), func_2().d)), vec2<u32>(~(~_wgslsmith_div_u32(u_input.a, u_input.b)), u_input.b), Struct_2(func_2()), !(!(!select(vec2<bool>(false, false), vec2<bool>(false, true), true))));
}

