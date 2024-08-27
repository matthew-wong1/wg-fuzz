struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    var var_0 = ~(u_input.a << (~firstLeadingBit(max(u_input.b.x, 0u)) % 32u));
    let var_1 = -(firstTrailingBit(vec2<i32>(1i, 1i)) >> (~(~vec2<u32>(0u, u_input.a)) % vec2<u32>(32u)));
    var var_2 = Struct_3(_wgslsmith_add_u32(21816u, _wgslsmith_add_u32(90046u, countOneBits(~u_input.a))), Struct_1(max(vec3<i32>(4863i ^ var_1.x, -33470i, -var_1.x), vec3<i32>(firstTrailingBit(-22006i), _wgslsmith_sub_i32(var_1.x, 2147483647i), reverseBits(-2147483647i))), _wgslsmith_f_op_vec3_f32(vec3<f32>(736f, _wgslsmith_f_op_f32(-1000f * 1139f), -1532f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(110f, -649f, -1522f)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1489f) - -758f), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b.b.x), 691f), _wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(var_2.b.b.x, -1000f))))) * _wgslsmith_f_op_vec2_f32(step(var_2.b.b.zx, vec2<f32>(757f, -187f))));
    var var_4 = Struct_3(_wgslsmith_clamp_u32(abs(var_2.a), ~_wgslsmith_mult_u32(firstLeadingBit(0u), 44497u), ~(~(1u ^ var_2.a))), Struct_1(_wgslsmith_mod_vec3_i32(min(var_2.b.a, vec3<i32>(var_2.b.a.x, var_1.x, var_2.b.a.x)), ~vec3<i32>(var_2.b.a.x, -12343i, 12914i)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1592f, var_3.x, 701f))))));
    return ~var_4.a;
}

fn func_4(arg_0: u32, arg_1: vec4<bool>) -> i32 {
    return -countOneBits(max(1i, abs(-41983i)));
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: vec4<u32>) -> vec3<i32> {
    let var_0 = func_4(~reverseBits(func_3()), select(vec4<bool>(false, !all(vec3<bool>(true, true, true)), !any(vec2<bool>(true, true)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))), !vec4<bool>(false, arg_0.b.a.x > -2147483647i, arg_1 <= arg_1, select(true, true, false)), vec4<bool>(true, true, true, _wgslsmith_mult_i32(arg_0.b.a.x, -2147483647i) > _wgslsmith_add_i32(arg_0.b.a.x, arg_0.b.a.x))));
    var var_1 = vec2<bool>(true, false);
    let var_2 = 40852u;
    var var_3 = ~(~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(arg_2, vec4<u32>(4294967295u, 44474u, u_input.a, 0u)), 4294967295u << ((u_input.a | arg_2.x) % 32u)));
    var var_4 = -(countOneBits(i32(-1i) * -1i) << (_wgslsmith_div_u32(43679u, _wgslsmith_mod_u32(countOneBits(arg_0.a), arg_1 & arg_2.x)) % 32u));
    return _wgslsmith_mod_vec3_i32(arg_0.b.a, vec3<i32>(reverseBits(var_0), -arg_0.b.a.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.a.x, var_0, var_0), ~arg_0.b.a)));
}

fn func_1() -> bool {
    let var_0 = ~vec2<i32>(-63845i, i32(-1i) * -1i);
    let var_1 = _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(-2147483647i, 2147483647i, var_0.x) & vec3<i32>(26100i, var_0.x, 0i), vec3<i32>(-1i) * -vec3<i32>(16395i, var_0.x, var_0.x), ~func_2(Struct_3(9423u, Struct_1(vec3<i32>(var_0.x, 0i, var_0.x), vec3<f32>(2001f, 148f, -1171f))), 21643u, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.a))), _wgslsmith_div_vec3_i32(-vec3<i32>(2147483647i, var_0.x, -2147483647i), vec3<i32>(_wgslsmith_div_i32(-1i, 1i), -2147483647i, -1i << (u_input.b.x % 32u)))) & abs(~(-countOneBits(vec3<i32>(-66284i, var_0.x, -1i))));
    let var_2 = true;
    var var_3 = Struct_3(~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.b.x, u_input.b.x, 3056u), vec4<u32>(u_input.b.x, u_input.a, 5971u, 4294967295u)) >> (~21280u % 32u), Struct_1(var_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-388f, 226f, 538f)))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(vec3<f32>(666f, -201f, -1191f) + vec3<f32>(737f, 1177f, 808f)))))));
    let var_4 = ~(_wgslsmith_clamp_u32(~1u, func_3(), 13176u) | _wgslsmith_add_u32(firstLeadingBit(var_3.a), var_3.a | (u_input.b.x & 4294967295u)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.b.x;
    var var_1 = select(!(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)))), vec3<bool>(true, select(true, any(vec3<bool>(false, true, true)), !func_1()), func_1()), vec3<bool>(true, true, true));
    var_1 = select(vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(377f))) != _wgslsmith_f_op_f32(-1000f + -170f), func_1(), any(!select(vec4<bool>(var_1.x, false, true, false), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(true, true, false, false)))), select(select(!select(vec3<bool>(false, true, var_1.x), vec3<bool>(true, false, var_1.x), false), !(!vec3<bool>(false, var_1.x, true)), true), !select(vec3<bool>(true, true, true), !vec3<bool>(var_1.x, false, false), var_1.x), all(vec4<bool>(true, true, true, true))), !var_1.x);
    var_1 = !select(!(!vec3<bool>(false, true, var_1.x)), !vec3<bool>(false, !var_1.x, true), vec3<bool>(true, !all(var_1.yy), var_1.x));
    var var_2 = 18640u;
    var var_3 = u_input.b.x > countOneBits(reverseBits(~u_input.b.x));
    var_2 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(0i << (_wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, ~5404u), ~countOneBits(4294967295u)) % 32u));
}

