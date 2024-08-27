struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_sub_vec4_i32(max(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(24109i, u_input.a.x), u_input.b.yy), u_input.d, 2147483647i, 21099i) << (vec4<u32>(_wgslsmith_add_u32(u_input.c.x, u_input.c.x), max(0u, u_input.c.x), u_input.c.x, 1u) % vec4<u32>(32u)), abs(max(vec4<i32>(-2147483647i, 27694i, 2147483647i, u_input.b.x) >> (u_input.c % vec4<u32>(32u)), vec4<i32>(u_input.b.x, u_input.a.x, u_input.d, 0i)))), u_input.b >> (u_input.c % vec4<u32>(32u)));
    var_0 = abs(u_input.a | ((abs(u_input.a) << ((vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x) ^ vec4<u32>(0u, 0u, u_input.c.x, u_input.c.x)) % vec4<u32>(32u))) | select(u_input.b >> (u_input.c % vec4<u32>(32u)), abs(u_input.a), true)));
    let var_1 = Struct_3(max(~(u_input.d << (u_input.c.x % 32u)), 49922i | (u_input.b.x << (u_input.c.x % 32u))) << (_wgslsmith_add_u32(~44943u, _wgslsmith_dot_vec3_u32(u_input.c.zzz, u_input.c.wzx) & 72427u) % 32u), ~vec4<u32>(u_input.c.x, u_input.c.x, firstTrailingBit(reverseBits(u_input.c.x)), u_input.c.x), abs(_wgslsmith_mod_vec3_i32(-min(vec3<i32>(var_0.x, var_0.x, u_input.a.x), vec3<i32>(var_0.x, 10499i, 1i)), u_input.a.ywy)));
    var_0 = abs(firstLeadingBit(-abs(-vec4<i32>(var_0.x, 73356i, 2147483647i, 2147483647i))));
    var_0 = select(select(-vec4<i32>(_wgslsmith_add_i32(2147483647i, u_input.d), 1i, -28881i, i32(-1i) * -1i), u_input.b, !select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), any(vec2<bool>(false, false)))), u_input.b, true);
    return countOneBits(u_input.b.x | u_input.b.x);
}

fn func_2(arg_0: i32) -> f32 {
    let var_0 = Struct_3(u_input.a.x & _wgslsmith_mod_i32(~(~arg_0), -u_input.a.x & u_input.a.x), countOneBits(u_input.c), vec3<i32>(-(-u_input.d | countOneBits(2147483647i)), abs(-38130i), _wgslsmith_mod_i32(func_3(), ~(-6075i))));
    var var_1 = 4294967295u;
    let var_2 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2055f));
}

fn func_4(arg_0: f32, arg_1: Struct_3) -> f32 {
    let var_0 = vec3<bool>(false, true, !(!((4294967295u << (arg_1.b.x % 32u)) == 1041u)));
    var var_1 = Struct_3(-2147483647i, arg_1.b, _wgslsmith_div_vec3_i32(max(abs(vec3<i32>(-20237i, 2147483647i, u_input.d)), max(vec3<i32>(arg_1.c.x, arg_1.c.x, -7664i), arg_1.c)), select(-vec3<i32>(-1i, arg_1.a, arg_1.a), -arg_1.c, var_0)) | arg_1.c);
    let var_2 = arg_0;
    var_1 = arg_1;
    var_1 = arg_1;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-983f, -700f)) - 2390f) + 964f) * _wgslsmith_f_op_f32(-var_2));
}

fn func_1() -> f32 {
    var var_0 = 652f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(484f, -459f), _wgslsmith_f_op_f32(trunc(-418f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(func_2(firstTrailingBit(u_input.d))), Struct_3(-35639i, ~vec4<u32>(13813u, 21594u, u_input.c.x, 1u), _wgslsmith_clamp_vec3_i32(u_input.b.ywx, vec3<i32>(u_input.a.x, -1i, u_input.b.x), u_input.b.wyz))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_4(1000f, Struct_3(abs(u_input.a.x), ~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 14587u), -vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x)))), _wgslsmith_f_op_f32(-1566f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, -764f)))), 401f, _wgslsmith_f_op_f32(151f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1437f))))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1633f * -1231f), -841f, 1000f, 100f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-968f, -432f, -1699f, -162f)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-591f, -127f, -1048f, -436f), vec4<f32>(442f, -1173f, 1779f, -304f))))))));
    var var_2 = Struct_3(_wgslsmith_mult_i32(abs(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, 71528i), u_input.b.wx), _wgslsmith_mult_i32(u_input.a.x, -2147483647i))), u_input.b.x), abs(u_input.c), ~u_input.a.wyy);
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(312f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -877f))), var_1.x, -243f, _wgslsmith_f_op_f32(f32(-1f) * -107f));
    return _wgslsmith_f_op_f32(-var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), 752f));
    let var_1 = (4294967295u | firstLeadingBit(u_input.c.x)) >> (1u % 32u);
    let var_2 = vec4<u32>(u_input.c.x, ~reverseBits(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_1, u_input.c.x, 14988u), u_input.c.zxz), select(u_input.c.zww, u_input.c.xyz, true))), _wgslsmith_div_u32(min(41010u, 4294967295u), ~0u), _wgslsmith_mod_u32(u_input.c.x, u_input.c.x) | (u_input.c.x ^ 36108u));
    let var_3 = 1i;
    let var_4 = Struct_3(~_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(countOneBits(u_input.b.xy), vec2<i32>(var_3, 1i)), -_wgslsmith_div_vec2_i32(vec2<i32>(1i, var_3), vec2<i32>(u_input.a.x, 2147483647i))), reverseBits(reverseBits(var_2)), vec3<i32>(_wgslsmith_mult_i32(1i, 1i), countOneBits(-u_input.a.x >> (3605u % 32u)), var_3));
    var var_5 = !vec2<bool>(all(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)), -1i < (1i | func_3()));
    var var_6 = Struct_1(true, _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(var_4.b, var_4.b), var_4.b | var_2) | abs(vec4<u32>(47199u, 8521u, var_4.b.x, 82219u)), _wgslsmith_div_vec4_u32(vec4<u32>(21635u, 36158u, u_input.c.x, 0u), vec4<u32>(1u, var_4.b.x, 66778u, 62174u) << (u_input.c % vec4<u32>(32u))) & select(firstTrailingBit(u_input.c), var_4.b, !vec4<bool>(var_5.x, var_5.x, false, false))), var_4.b.xyz);
    let var_7 = Struct_3(u_input.a.x, vec4<u32>(firstLeadingBit(_wgslsmith_sub_u32(0u & var_1, _wgslsmith_add_u32(67205u, var_4.b.x))), _wgslsmith_dot_vec4_u32(u_input.c & var_4.b, vec4<u32>(var_4.b.x, 4294967295u, 5468u, u_input.c.x)) ^ var_1, ~u_input.c.x, abs(~1u)), countOneBits(vec3<i32>(-6420i, 2147483647i, u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(var_4.b.x, 4294967295u, 74587u, 0u), vec4<u32>(23597u, 17926u, 20144u, var_4.b.x)), abs(_wgslsmith_add_vec4_u32(vec4<u32>(43191u, 1u, var_1, var_6.b.x), u_input.c))), var_4.b.xz);
}

