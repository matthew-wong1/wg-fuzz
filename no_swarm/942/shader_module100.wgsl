struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_sub_i32(0i, arg_0.b.x) == (max(-40551i, arg_0.b.x) ^ 1i);
    var var_1 = arg_0;
    let var_2 = abs(4294967295u);
    var_0 = true;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1901f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(769f + -1986f))))) > _wgslsmith_f_op_f32(abs(167f));
    return arg_0.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>) -> i32 {
    var var_0 = Struct_1(vec4<u32>(~(~_wgslsmith_div_u32(u_input.a, 4294967295u)), max(arg_1.x, firstTrailingBit(arg_0.a.x) >> (~4294967295u % 32u)), arg_1.x, func_3(arg_0)), ~select(min(abs(vec4<i32>(arg_0.b.x, -2147483647i, arg_0.b.x, arg_0.b.x)), vec4<i32>(arg_0.b.x, 1i, arg_0.b.x, arg_0.b.x)), countOneBits(vec4<i32>(arg_0.b.x, arg_0.b.x, 27173i, -1i)), true == (arg_0.b.x <= arg_0.b.x)));
    var var_1 = -1840f;
    var var_2 = Struct_1(firstLeadingBit(var_0.a), _wgslsmith_mod_vec4_i32(~abs(vec4<i32>(var_0.b.x, -29517i, var_0.b.x, -1i)), arg_0.b));
    let var_3 = arg_0;
    var var_4 = -var_3.b.xx;
    return 1i;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_1(vec4<u32>(arg_0.x, ~1u, ~_wgslsmith_div_u32(~u_input.a, 0u), 4294967295u), vec4<i32>(~abs(~9171i), func_2(Struct_1(~vec4<u32>(55550u, 1157u, u_input.b, 10940u), vec4<i32>(-727i, 2147483647i, 0i, -2147483647i)), vec2<u32>(arg_0.x << (arg_0.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 20579u, 1u, 64078u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, arg_0.x)))), ~_wgslsmith_clamp_i32(_wgslsmith_add_i32(-2147483647i, 3828i), _wgslsmith_add_i32(-2147483647i, 15890i), -2147483647i), ~1i));
    let var_1 = 35353u;
    let var_2 = 1u;
    var var_3 = var_0.b.x;
    var var_4 = Struct_1(_wgslsmith_clamp_vec4_u32(~vec4<u32>(19962u, 4294967295u, u_input.a, 4294967295u) ^ select(var_0.a | vec4<u32>(var_2, 21527u, var_2, 1u), ~var_0.a, true), ~(~(~vec4<u32>(var_2, arg_0.x, 24666u, var_2))), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(var_0.a, vec4<u32>(1u, arg_0.x, 4294967295u, 71597u)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2, var_1, var_2, var_0.a.x), vec4<u32>(var_1, 1u, u_input.b, 4294967295u), var_0.a), var_0.a, _wgslsmith_sub_vec4_u32(min(var_0.a, var_0.a), ~vec4<u32>(u_input.a, var_2, 25113u, var_1)))), var_0.b);
    return Struct_1(_wgslsmith_mult_vec4_u32(~vec4<u32>(_wgslsmith_div_u32(41879u, 25523u), countOneBits(var_1), ~63512u, _wgslsmith_add_u32(u_input.a, var_4.a.x)), _wgslsmith_add_vec4_u32(max(vec4<u32>(arg_0.x, var_1, 33568u, var_0.a.x), vec4<u32>(0u, u_input.a, 32392u, 61192u)), var_0.a) ^ ~var_4.a), _wgslsmith_mult_vec4_i32(-var_0.b, var_0.b));
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    let var_0 = select(vec2<bool>(true, true), vec2<bool>(arg_3, any(vec3<bool>(true, select(arg_3, false, false), all(vec2<bool>(arg_3, true))))), vec2<bool>(all(select(!vec4<bool>(arg_3, false, arg_3, false), !vec4<bool>(arg_3, arg_3, false, false), true)), !any(!vec4<bool>(false, arg_3, arg_3, false))));
    return Struct_1(select(arg_2.a, ~(vec4<u32>(45929u, u_input.b, u_input.b, 4294967295u) << (~arg_2.a % vec4<u32>(32u))), false), vec4<i32>(~(~(arg_2.b.x >> (62032u % 32u))), _wgslsmith_add_i32(_wgslsmith_sub_i32(-34066i, 14518i), -40635i), _wgslsmith_mult_i32(firstLeadingBit(arg_2.b.x), i32(-1i) * -10810i), -41053i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1346f * -469f), -1025f), _wgslsmith_f_op_f32(f32(-1f) * -1794f))), _wgslsmith_f_op_f32(f32(-1f) * -205f), true)) - 1353f);
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-441f, _wgslsmith_f_op_f32(floor(-452f)))));
    let var_2 = func_4(u_input.b, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_1.x)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1481f, -1351f), vec2<f32>(-331f, var_1.x), vec2<bool>(false, true)))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1573f, var_1.x), vec2<f32>(var_1.x, var_1.x), vec2<bool>(false, true)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(203f, var_1.x))), vec2<f32>(_wgslsmith_f_op_f32(trunc(-571f)), 1000f), true)))), func_1(vec3<u32>(~47119u, u_input.a ^ ~u_input.a, _wgslsmith_mult_u32(4294967295u, u_input.b) >> (19455u % 32u)), vec3<bool>(true, true, true)), !(var_1.x != _wgslsmith_f_op_f32(ceil(var_1.x))));
    var var_3 = var_2;
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -573f);
    var_1 = vec2<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-507f, var_1.x, var_1.x)))))), func_4(4294967295u, vec2<f32>(var_1.x, _wgslsmith_f_op_f32(round(var_1.x))), var_2, any(vec2<bool>(true, true))).b >> (vec4<u32>(func_4(_wgslsmith_sub_u32(u_input.b, 1u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 288f)), Struct_1(vec4<u32>(4294967295u, u_input.b, 4294967295u, 4294967295u), vec4<i32>(var_3.b.x, var_3.b.x, var_3.b.x, var_3.b.x)), true).a.x, ~var_2.a.x, _wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, u_input.b, 101922u), var_3.a.xxy, false), var_2.a.xyy), ~4294967295u) % vec4<u32>(32u)), 6156i, vec2<u32>(~func_3(func_1(var_2.a.xwz, vec3<bool>(false, true, true))), var_3.a.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_1.x, var_1.x)))) + 1305f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_div_f32(-2501f, var_1.x), all(vec2<bool>(true, false))))))));
}

