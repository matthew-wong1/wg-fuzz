struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: bool,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 17>;

var<private> global1: f32;

var<private> global2: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(0u, 4294967295u), Struct_2(19828u, 0u), Struct_2(4294967295u, 47312u), Struct_2(73724u, 0u), Struct_2(0u, 0u), Struct_2(4294967295u, 4294967295u));

var<private> global3: array<vec2<u32>, 12> = array<vec2<u32>, 12>(vec2<u32>(1u, 24967u), vec2<u32>(1u, 55604u), vec2<u32>(4294967295u, 49135u), vec2<u32>(69045u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(22930u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 30285u), vec2<u32>(0u, 4294967295u), vec2<u32>(4167u, 20512u), vec2<u32>(17088u, 0u), vec2<u32>(4294967295u, 1u));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: i32) -> u32 {
    let var_0 = true;
    global0 = array<vec2<i32>, 17>();
    global0 = array<vec2<i32>, 17>();
    global1 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_1 = global2[_wgslsmith_index_u32(u_input.c, 6u)];
    return ~var_1.b;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<i32>) -> f32 {
    let var_0 = -671f;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - -683f);
    let var_1 = vec3<u32>(u_input.c, u_input.c, ~u_input.c);
    let var_2 = ~func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1607f, _wgslsmith_div_f32(712f, var_0), 1997f)), arg_0.x, arg_1.x >> (firstTrailingBit(var_1.x) % 32u));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(var_0, var_0), vec2<f32>(var_0, 1000f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(217f - -1000f), var_0))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, all(vec2<bool>(false, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)))), (min(var_1.x << (48088u % 32u), 1u) & var_1.x) < (_wgslsmith_sub_u32(u_input.c, ~13107u) ^ u_input.c), reverseBits(vec2<u32>(firstTrailingBit(~45332u), ~_wgslsmith_mult_u32(u_input.c, 13116u))), vec2<bool>((_wgslsmith_sub_u32(3800u, u_input.c) ^ 0u) > 4294967295u, true));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(-var_3.a.x)) - 158f), _wgslsmith_f_op_f32(max(var_0, -1328f)));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: vec4<i32>) -> f32 {
    let var_0 = _wgslsmith_div_f32(-2083f, 597f);
    global1 = _wgslsmith_f_op_f32(func_2(arg_2, countOneBits(-vec2<i32>(u_input.a, 1i))));
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(func_2(vec4<i32>(u_input.a << (0u % 32u), 1i, -u_input.d, _wgslsmith_add_i32(arg_0, -5188i)), vec2<i32>(~16052i, arg_0))), _wgslsmith_f_op_f32(var_0 + 719f)), vec2<bool>(arg_1.x, !all(vec2<bool>(true, true))), !any(vec4<bool>(any(vec4<bool>(arg_1.x, false, true, true)), any(vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x)), 44958i < arg_0, all(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false)))), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, 1u, u_input.c)), select(vec4<u32>(1u, 1u, u_input.c, 22644u), vec4<u32>(u_input.c, 4294967295u, 35087u, 1u), arg_1.x)), min(_wgslsmith_div_u32(u_input.c, u_input.c), _wgslsmith_mod_u32(7047u, u_input.c))), global3[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 739f, 689f))), arg_2.x, _wgslsmith_mod_i32(-33031i, u_input.a)), 12u)]), vec2<bool>(!(_wgslsmith_div_f32(-852f, -1008f) <= var_0), !arg_1.x));
    var var_2 = Struct_2(~_wgslsmith_mod_u32(max(func_3(vec3<f32>(var_1.a.x, 833f, var_0), -1i, -3314i), ~u_input.c), var_1.d.x), u_input.c);
    let var_3 = ~select(firstLeadingBit(vec3<u32>(var_1.d.x, var_1.d.x, var_2.a)) >> (~vec3<u32>(var_2.a, 28644u, u_input.c) % vec3<u32>(32u)), vec3<u32>(~func_3(vec3<f32>(135f, -642f, var_0), -19457i, u_input.b.x), var_2.a, ~var_1.d.x), all(vec4<bool>(true, true, any(vec2<bool>(false, true)), true)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2011f - _wgslsmith_f_op_f32(var_1.a.x * var_0)), 1210f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x * var_1.a.x) * 261f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.a.x))))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1287f * _wgslsmith_f_op_f32(var_1.a.x * -524f)) * var_0))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec3<f32>) -> Struct_3 {
    return Struct_3(arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 17>();
    var var_0 = global2[_wgslsmith_index_u32(78774u, 6u)];
    var_0 = Struct_2(~var_0.a, 11570u);
    global1 = 1205f;
    var var_1 = func_4(global2[_wgslsmith_index_u32(min(~4294967295u, ~34860u), 6u)], vec4<bool>(-413f != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-2408f)))), any(vec2<bool>(true, true)), true, false), vec3<f32>(_wgslsmith_f_op_f32(func_1(~abs(0i), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), abs(vec4<i32>(-15779i, 59336i, u_input.b.x, u_input.b.x) << (vec4<u32>(0u, u_input.c, 13692u, var_0.b) % vec4<u32>(32u))))), _wgslsmith_f_op_f32(f32(-1f) * -1458f), 1777f));
    let x = u_input.a;
    s_output = StorageBuffer(737f, _wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.b, vec2<i32>(2147483647i, 0i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1876f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-208f, 315f))))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(126f * -803f) - _wgslsmith_f_op_f32(select(-128f, 1000f, false))), -1177f, -405f)), u_input.a, u_input.b.x & 6758i);
}

