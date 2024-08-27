struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_sub_i32(u_input.a, 26015i);
    let var_1 = _wgslsmith_clamp_vec2_u32(~(abs(vec2<u32>(4294967295u, arg_0.x)) >> (_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 1u), firstTrailingBit(vec2<u32>(1u, 57129u))) % vec2<u32>(32u))), ~arg_0.xx, ~firstLeadingBit(abs(max(arg_0.ww, vec2<u32>(16402u, arg_0.x)))));
    var_0 = abs(~(u_input.b >> ((36688u << (var_1.x % 32u)) % 32u)) & u_input.a);
    let var_2 = Struct_1(_wgslsmith_sub_i32(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(u_input.b, u_input.b), 0i, -u_input.a), vec3<i32>(1i, u_input.a, u_input.a))), ~(~_wgslsmith_add_u32(_wgslsmith_add_u32(1u, var_1.x), _wgslsmith_div_u32(var_1.x, arg_0.x))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-660f, _wgslsmith_f_op_f32(trunc(231f)))), select(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), true))));
    let var_3 = var_2;
    return _wgslsmith_f_op_f32(2272f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1471f, -214f)) * _wgslsmith_f_op_f32(f32(-1f) * -1142f))))));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-857f + _wgslsmith_div_f32(521f, -593f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -130f), _wgslsmith_f_op_f32(f32(-1f) * -1098f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(676f)) + 788f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, 37104u, 61498u), vec4<u32>(35036u, 1u, 25500u, 4294967295u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1291f + -1056f) + _wgslsmith_f_op_f32(func_3(vec4<u32>(14410u, 0u, 0u, 0u)))), -642f)));
    var var_1 = var_0.x;
    var_0 = vec3<f32>(-886f, _wgslsmith_div_f32(var_0.x, -472f), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(1000f - 843f)));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1000f, -1182f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, -315f, var_0.x)))))), vec3<f32>(-740f, 312f, 528f));
    var var_2 = abs(_wgslsmith_add_vec3_i32(-vec3<i32>(0i, 12345i, -2147483647i), firstTrailingBit(vec3<i32>(-1451i, u_input.a, u_input.a) << (vec3<u32>(11019u, 1u, 0u) % vec3<u32>(32u)))) >> (~vec3<u32>(~0u, ~4294967295u, 60016u) % vec3<u32>(32u)));
    return ~3116u >> (1u % 32u);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = vec2<i32>(22782i, _wgslsmith_add_i32(1i, arg_1.a));
    var var_1 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a, abs(-1i), _wgslsmith_sub_i32(-19262i, -2147483647i) | (u_input.b << (14532u % 32u)), var_0.x), _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-19992i, var_0.x, var_0.x, var_0.x), ~vec4<i32>(var_0.x, var_0.x, 352i, 0i), vec4<i32>(-2147483647i, u_input.a, arg_1.a, u_input.b)), -max(vec4<i32>(u_input.b, var_0.x, -2147483647i, -10602i), vec4<i32>(arg_1.a, var_0.x, 0i, u_input.b)))), 50680u, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(139f, 404f))), arg_1.c, false)))))));
    var var_2 = select(vec2<bool>(all(vec2<bool>(true, all(vec4<bool>(true, true, false, false)))), any(vec2<bool>(true, true))), vec2<bool>(false, true), vec2<bool>(true, true));
    var var_3 = vec4<i32>(select(18140i, min(arg_1.a, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-59289i, 24565i, -1329i, arg_1.a)), vec4<i32>(var_0.x, var_0.x, var_0.x, var_1.a))), max(var_1.a, 16938i) != var_0.x), abs(u_input.b), var_0.x, -_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.a, -17365i, -45369i) & vec3<i32>(54934i, u_input.a, u_input.b), -vec3<i32>(10003i, -7288i, -1i)), vec3<i32>(-1i, firstLeadingBit(-1i), 677i)));
    var_1 = Struct_1(i32(-1i) * -(-2147483647i >> (1u % 32u)), ~_wgslsmith_add_u32(1u, ~38508u), arg_1.c);
    return Struct_1(-25375i, countOneBits(1u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1671f + 430f))))));
}

fn func_1(arg_0: vec3<u32>) -> bool {
    let var_0 = func_4(vec4<u32>(arg_0.x, ~arg_0.x, arg_0.x, func_2()), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i)), 0u, vec2<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1163f - 539f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-394f - -1167f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1287f) * _wgslsmith_div_f32(252f, 361f))))));
    let var_1 = var_0;
    let var_2 = var_1.b < (var_0.b | countOneBits(var_0.b));
    let var_3 = ~var_1.b;
    let var_4 = firstTrailingBit(~(~arg_0.x));
    return !(any(select(vec4<bool>(false, var_2, true, var_2), vec4<bool>(var_2, true, var_2, var_2), var_2)) & false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(max(812f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -759f)))));
    var var_1 = !vec4<bool>(true, true, false, select(func_1(~vec3<u32>(4294967295u, 0u, 13820u)), (u_input.a | u_input.a) >= u_input.a, true));
    var var_2 = var_1.xx;
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -718f) + -532f)), -1649f, func_1(vec3<u32>(1u, 1u, 1u))))));
    let var_3 = abs(vec2<i32>(-35968i, ~firstTrailingBit(~27955i)));
    let var_4 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -351f), _wgslsmith_f_op_f32(func_3(reverseBits(vec4<u32>(98491u, 25089u, 10933u, 33143u)))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-1i), func_4(vec4<u32>(1u, max(_wgslsmith_mult_u32(32288u, 49607u), select(1u, 37961u, var_1.x)), 1u, 121160u), func_4(vec4<u32>(func_2(), ~60995u, 18876u, 1u), func_4(vec4<u32>(1u, 1u, 1u, 1u), Struct_1(u_input.b, 0u, vec2<f32>(var_4.x, var_4.x)), 1450f), var_4.x), _wgslsmith_f_op_f32(-255f * var_4.x)).c, -8576i, vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(41807u, 15362u), vec2<u32>(1u, 20556u)), ~4294967295u), firstLeadingBit(func_2()), max(abs(63251u), _wgslsmith_dot_vec4_u32(vec4<u32>(46626u, 4294967295u, 0u, 0u), vec4<u32>(4294967295u, 0u, 4294967295u, 1u)))), ~1u, reverseBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 47483u, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(77670u, 0u, 27464u), vec3<u32>(4294967295u, 4294967295u, 26152u)))), 0u), var_3.x);
}

