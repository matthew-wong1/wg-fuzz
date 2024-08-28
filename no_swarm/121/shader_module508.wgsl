struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<i32>,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 31>;

var<private> global1: array<Struct_1, 19>;

var<private> global2: i32 = i32(-2147483648);

var<private> global3: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(-1i, i32(-2147483648), 56021i), vec3<i32>(-18439i, -1i, -27714i), vec3<i32>(0i, 5123i, 7283i), vec3<i32>(-33587i, 30012i, -1i), vec3<i32>(-12519i, -43874i, -32779i), vec3<i32>(-3696i, -46966i, 1i), vec3<i32>(i32(-2147483648), -26983i, -10900i), vec3<i32>(17788i, -8756i, 2147483647i), vec3<i32>(-24675i, 2271i, 29777i), vec3<i32>(0i, 0i, 55305i), vec3<i32>(i32(-2147483648), 6455i, -1i), vec3<i32>(-33893i, -8443i, 2147483647i), vec3<i32>(22291i, 3203i, 7956i), vec3<i32>(i32(-2147483648), -4195i, 43298i), vec3<i32>(-29325i, 19617i, -1i), vec3<i32>(i32(-2147483648), -22721i, -19485i), vec3<i32>(24310i, 13616i, -1i), vec3<i32>(-1i, i32(-2147483648), -900i), vec3<i32>(-1i, 0i, 1i), vec3<i32>(27754i, 0i, -1i), vec3<i32>(-1i, 0i, 43413i), vec3<i32>(53413i, -21173i, -16904i), vec3<i32>(14584i, 2147483647i, -24118i), vec3<i32>(i32(-2147483648), -7330i, 2147483647i), vec3<i32>(-32142i, -19724i, 0i), vec3<i32>(-50620i, -1i, 54903i), vec3<i32>(410i, -62848i, 25463i), vec3<i32>(29011i, -7885i, -1i), vec3<i32>(-9343i, i32(-2147483648), -8453i), vec3<i32>(3245i, -34419i, 47876i), vec3<i32>(-1i, -35833i, i32(-2147483648)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2() -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(u_input.a, 19u)];
    let var_1 = select(!select(select(select(vec4<bool>(var_0.e.x, false, var_0.d, true), vec4<bool>(var_0.a, var_0.e.x, var_0.d, true), var_0.d), select(vec4<bool>(var_0.e.x, var_0.a, true, true), vec4<bool>(false, true, true, var_0.d), vec4<bool>(var_0.d, var_0.a, var_0.a, var_0.e.x)), !vec4<bool>(true, false, true, var_0.d)), select(!vec4<bool>(false, var_0.e.x, true, var_0.d), !vec4<bool>(var_0.e.x, var_0.a, false, true), all(vec2<bool>(var_0.e.x, true))), vec4<bool>(all(vec3<bool>(true, var_0.e.x, var_0.d)), true, true, true)), vec4<bool>(false, countOneBits(var_0.c.x) < ~_wgslsmith_mod_i32(-30004i, 32473i), false, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1665f, 718f)), _wgslsmith_div_f32(-780f, 593f), !var_0.e.x)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -848f), 229f)), !vec4<bool>(var_0.a, !(!var_0.e.x), any(vec4<bool>(false, var_0.a, false, var_0.d)), true));
    let var_2 = -467f;
    let var_3 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(4294967295u, var_0.b, var_0.b), vec3<u32>(5005u, 4294967295u, 8069u) & vec3<u32>(u_input.a, u_input.a, 0u)), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(31989u, var_0.b, u_input.a), vec3<u32>(68328u, u_input.a, 0u), vec3<u32>(43124u, u_input.a, var_0.b)), ~vec3<u32>(var_0.b, 43581u, u_input.a))), var_0.b), 19u)];
    var var_4 = global1[_wgslsmith_index_u32(~firstTrailingBit(firstTrailingBit(_wgslsmith_sub_u32(u_input.a, var_0.b))), 19u)];
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_2, _wgslsmith_f_op_f32(f32(-1f) * -605f)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: u32) -> i32 {
    global3 = array<vec3<i32>, 31>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(1415f)), 710f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1633f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1211f + -1394f)))), _wgslsmith_f_op_f32(func_2()))));
    global1 = array<Struct_1, 19>();
    global0 = array<vec2<f32>, 31>();
    let var_1 = -20353i;
    return -arg_1;
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_1(true, ~4294967295u, vec3<i32>(0i, i32(-1i) * -332i, countOneBits(i32(-1i) * -32018i)), false, vec3<bool>(false, select(true, any(vec4<bool>(true, true, false, false)), true) != (all(vec2<bool>(false, true)) && false), !all(vec2<bool>(false, false))));
    var var_1 = ~(~vec4<i32>(-23540i, abs(-1i), var_0.c.x, _wgslsmith_add_i32(var_0.c.x, ~var_0.c.x)));
    let var_2 = var_0.b;
    global0 = array<vec2<f32>, 31>();
    let var_3 = Struct_1(!(var_0.e.x && true), 4294967295u, abs(abs(-var_1.zww)) & vec3<i32>(var_0.c.x, 37484i, firstLeadingBit(~(-33253i))), !var_0.a, vec3<bool>(true, true, !(!var_0.a)));
    return abs(_wgslsmith_mod_vec4_i32(max(select(vec4<i32>(2147483647i, -2147483647i, 11209i, var_1.x), vec4<i32>(var_1.x, 19304i, 49826i, -2147483647i), false), vec4<i32>(-1i, var_1.x, var_1.x, -1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.c.x, var_1.x, var_1.x, var_3.c.x) << (vec4<u32>(var_2, 4294967295u, 34671u, 70780u) % vec4<u32>(32u)), ~vec4<i32>(var_1.x, 32003i, var_1.x, 0i)))) >> (vec4<u32>(countOneBits(~var_0.b), u_input.a, 1u, 68830u) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 19>();
    global1 = array<Struct_1, 19>();
    let var_0 = max(u_input.a, u_input.a & ~abs(69837u));
    global3 = array<vec3<i32>, 31>();
    var var_1 = max(global3[_wgslsmith_index_u32(43985u, 31u)], vec3<i32>(~(~_wgslsmith_sub_i32(6903i, -14106i)), -_wgslsmith_sub_i32(2147483647i, func_1(vec4<u32>(u_input.a, 4294967295u, 6784u, var_0), -1i, 30795u)), -5853i));
    let x = u_input.a;
    s_output = StorageBuffer(-(func_3() >> (~(~vec4<u32>(u_input.a, u_input.a, var_0, var_0)) % vec4<u32>(32u))));
}

