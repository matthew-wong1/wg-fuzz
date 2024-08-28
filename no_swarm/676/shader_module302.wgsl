struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: vec2<i32>,
    d: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32) -> f32 {
    var var_0 = any(!vec2<bool>(false, !any(vec4<bool>(false, true, true, false))));
    let var_1 = Struct_3(!(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true)))), true, vec2<i32>(~max(_wgslsmith_mult_i32(u_input.b, u_input.e.x), _wgslsmith_add_i32(u_input.b, 22027i)), countOneBits(1i)), any(select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, false), false), false)));
    let var_2 = -796f;
    var_0 = any(select(vec3<bool>(any(!vec4<bool>(var_1.a.x, var_1.b, false, var_1.a.x)), all(vec3<bool>(false, false, true)), ~u_input.a > 1u), !var_1.a.zyw, var_1.b));
    var_0 = true;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -840f) * -871f);
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_3 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(967f, -105f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(752f, 641f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -899f)), _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 1506f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-859f, 350f)))), vec2<bool>(true, true))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(972f, -1426f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(428f, 725f)))), 14846u)), _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1, arg_0, arg_1), vec3<i32>(-9743i, arg_0, arg_0), vec3<i32>(2147483647i, -2147483647i, arg_1) ^ vec3<i32>(arg_0, arg_1, -24888i)) ^ (-vec3<i32>(arg_0, 2147483647i, arg_1) & abs(vec3<i32>(arg_0, u_input.b, -1i))), ~firstTrailingBit(vec3<i32>(2147483647i, -10029i, arg_1)) ^ ~max(vec3<i32>(-20096i, u_input.b, -44088i), vec3<i32>(arg_1, 29379i, u_input.b))));
    var var_1 = var_0.c.yy;
    var_1 = vec2<i32>(_wgslsmith_add_i32(select(firstTrailingBit(-14525i), ~2107i, any(vec2<bool>(true, false))) >> (_wgslsmith_clamp_u32(3307u, ~u_input.a, abs(0u)) % 32u), arg_0), abs(0i));
    let var_2 = var_0.b;
    var_1 = u_input.e;
    return Struct_3(vec4<bool>(false, false, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), true), true || !(any(vec2<bool>(true, true)) || true), _wgslsmith_clamp_vec2_i32(u_input.e, var_0.c.xx, _wgslsmith_add_vec2_i32(select(vec2<i32>(-1i, 2147483647i), vec2<i32>(arg_1, arg_0), vec2<bool>(false, false)) << (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u)), select(firstTrailingBit(vec2<i32>(2147483647i, var_1.x)), u_input.e, select(vec2<bool>(false, false), vec2<bool>(true, true), false)))), false);
}

fn func_1() -> bool {
    let var_0 = vec3<u32>(u_input.a, ~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.d.yz, vec2<u32>(u_input.c.x, u_input.a)), _wgslsmith_sub_u32(~1u, 66553u)), u_input.a);
    var var_1 = func_2(-2500i, firstTrailingBit(~_wgslsmith_add_i32(_wgslsmith_mult_i32(18978i, u_input.e.x), min(u_input.e.x, u_input.e.x))));
    let var_2 = var_1.a.x;
    var var_3 = ~_wgslsmith_add_vec3_i32(countOneBits(-_wgslsmith_sub_vec3_i32(vec3<i32>(0i, u_input.b, var_1.c.x), vec3<i32>(var_1.c.x, var_1.c.x, 0i))), vec3<i32>(-(i32(-1i) * -14643i), var_1.c.x, _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.e.x, u_input.e.x, var_1.c.x), vec3<i32>(1i, var_1.c.x, var_1.c.x), var_1.a.x), ~vec3<i32>(var_1.c.x, -28211i, 8515i))));
    let var_4 = vec4<i32>(u_input.e.x, _wgslsmith_mod_i32(var_3.x, 2147483647i) >> (31228u % 32u), -u_input.b, func_2(0i, -var_1.c.x).c.x);
    return true;
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(187f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(412f, 571f), vec2<f32>(-572f, 1182f))), abs(u_input.d.x)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(251f + -1582f))));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1941f + -794f))))));
    var var_2 = Struct_1(func_2(u_input.e.x, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-47203i, u_input.e.x), u_input.b, u_input.b, countOneBits(arg_0.b)), -abs(vec4<i32>(arg_0.b, u_input.e.x, 6994i, u_input.e.x)))).a.yz, i32(-1i) * -1i, 4294967295u);
    let var_3 = func_2(select(-_wgslsmith_mod_i32(-1i, _wgslsmith_add_i32(-5665i, 70186i)), _wgslsmith_dot_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, -1i, var_2.b, 20732i), vec4<i32>(arg_0.b, arg_0.b, var_2.b, arg_0.b)), select(vec4<i32>(46831i, 0i, u_input.e.x, 6275i), vec4<i32>(-67254i, 1i, -9247i, arg_0.b), vec4<bool>(true, true, false, true)) | _wgslsmith_mod_vec4_i32(vec4<i32>(-9829i, -7433i, var_2.b, arg_0.b), vec4<i32>(arg_0.b, 1i, 23136i, arg_0.b))), false), 62990i);
    var_2 = Struct_1(arg_0.a, firstTrailingBit(firstLeadingBit(var_3.c.x)), ~(~_wgslsmith_dot_vec3_u32(u_input.c.zwz, ~u_input.c.xwz)));
    return func_2(_wgslsmith_dot_vec2_i32(~(~_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, u_input.e.x), var_3.c)), vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_3.c.x, 0i, -39110i, arg_0.b), vec4<i32>(arg_0.b, 2147483647i, u_input.b, 2147483647i) & vec4<i32>(arg_0.b, 28063i, 1i, 0i)), var_2.b)), ~_wgslsmith_mod_i32(-u_input.b & -u_input.e.x, 22967i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(vec2<bool>(all(vec4<bool>(true, true, true, true)), func_1()), u_input.b, 1u));
    var_0 = func_2(~(-_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(2147483647i, u_input.e.x, -2147483647i), -1i, -var_0.c.x)), 74063i);
    var_0 = func_4(Struct_1(var_0.a.xx, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-35838i, 19961i, u_input.b, 967i), _wgslsmith_sub_vec4_i32(min(vec4<i32>(-1044i, 1514i, 0i, var_0.c.x), vec4<i32>(-8796i, -2147483647i, var_0.c.x, -2147483647i)), ~vec4<i32>(-2147483647i, var_0.c.x, 0i, var_0.c.x))), u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(vec4<i32>(-(u_input.e.x >> (u_input.d.x % 32u)), -39110i, ~(~1i), abs(-23284i)), vec4<i32>(-var_0.c.x, -6976i, u_input.b, ~(u_input.b >> (u_input.c.x % 32u)))), -vec2<i32>(var_0.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c.x, var_0.c.x, 28891i), vec3<i32>(36642i, 2147483647i, var_0.c.x) | vec3<i32>(u_input.b, var_0.c.x, var_0.c.x))), u_input.a, _wgslsmith_mod_vec4_u32(abs(~u_input.c), (firstTrailingBit(vec4<u32>(u_input.d.x, u_input.a, u_input.c.x, 10212u)) & u_input.c) << (reverseBits(~u_input.c) % vec4<u32>(32u))), u_input.c);
}

