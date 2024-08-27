struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<bool>,
    d: i32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> i32 {
    var var_0 = _wgslsmith_clamp_i32(60333i & u_input.a.x, ~_wgslsmith_add_i32(1i, 0i), 1i);
    var_0 = ~0i;
    let var_1 = 0i;
    let var_2 = (vec2<u32>(0u, countOneBits(~arg_1.b)) << (~reverseBits(u_input.b) % vec2<u32>(32u))) >> ((u_input.b & vec2<u32>(~(~62454u), 4294967295u)) % vec2<u32>(32u));
    var var_3 = countOneBits(reverseBits(abs(1u)));
    return arg_1.a;
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = u_input.b;
    var var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), func_3(true, Struct_1(arg_0, var_0.x, vec2<bool>(true, true), u_input.a.x, vec3<f32>(-395f, 631f, 967f))), ~1i, func_3(all(vec3<bool>(true, true, false)), Struct_1(arg_0, 4294967295u, vec2<bool>(false, false), -19632i, vec3<f32>(-154f, 1000f, 1352f)))), vec4<i32>(~_wgslsmith_add_i32(0i, -1i), reverseBits(~arg_0), -6126i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, arg_0, u_input.a.x, -75507i), vec4<i32>(-2147483647i, 0i, arg_0, -2147483647i)))) & abs(~vec4<i32>(~u_input.a.x, 0i, 2147483647i, firstLeadingBit(2147483647i)));
    var_1 = _wgslsmith_clamp_vec4_i32(firstTrailingBit(-(-vec4<i32>(-2200i, -27282i, -2147483647i, var_1.x) | firstTrailingBit(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, 0i)))), vec4<i32>(0i, var_1.x, _wgslsmith_clamp_i32(2147483647i, countOneBits(firstTrailingBit(u_input.a.x)), firstTrailingBit(-7323i)), 1i), min(firstLeadingBit(min(vec4<i32>(-2147483647i, 34787i, -36451i, arg_0), -vec4<i32>(-45089i, u_input.a.x, 24234i, -1i))), ~_wgslsmith_clamp_vec4_i32(select(vec4<i32>(2147483647i, var_1.x, arg_0, var_1.x), vec4<i32>(var_1.x, -13252i, -22588i, arg_0), true), _wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.a.x, -14920i, arg_0), vec4<i32>(var_1.x, 14904i, u_input.a.x, u_input.a.x)), vec4<i32>(-2337i, 39705i, 58388i, 0i) | vec4<i32>(-25284i, 21823i, var_1.x, 2147483647i))));
    var_0 = u_input.b;
    var var_2 = ~firstLeadingBit(-_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, 1i), vec2<i32>(u_input.a.x, var_1.x))) << (vec2<u32>(25782u, _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b.x, reverseBits(var_0.x)), u_input.b.x)) % vec2<u32>(32u));
    return Struct_1(_wgslsmith_div_i32(2147483647i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(arg_0, 0i, -211i), u_input.a, true), _wgslsmith_mod_vec3_i32(var_1.wyw, reverseBits(var_1.zyy)))), firstLeadingBit(~u_input.b.x), !select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))), select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)))), u_input.a.x, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: vec4<u32>) -> f32 {
    let var_0 = func_2(-30822i);
    let var_1 = func_2(_wgslsmith_sub_i32(max(_wgslsmith_add_i32(_wgslsmith_mod_i32(var_0.d, 28763i), func_2(-52945i).a), u_input.a.x), _wgslsmith_mod_i32(_wgslsmith_sub_i32(min(u_input.a.x, 2234i), 0i), var_0.d)));
    var var_2 = 1244f;
    var_2 = -604f;
    let var_3 = Struct_1(_wgslsmith_add_i32(-2147483647i, 1i), u_input.b.x, !vec2<bool>(var_1.e.x >= -100f, !all(vec4<bool>(var_0.c.x, var_1.c.x, false, true))), -19089i, var_0.e);
    return 1948f;
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec3<u32>, arg_3: i32) -> Struct_1 {
    let var_0 = u_input.b.x;
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -3523i << (abs(arg_2.x) % 32u)), _wgslsmith_div_vec3_i32(reverseBits(u_input.a), ~(-u_input.a)));
    var_1 = arg_3;
    var_1 = _wgslsmith_div_i32(_wgslsmith_mod_i32(max(u_input.a.x, -12893i), _wgslsmith_dot_vec3_i32(countOneBits(u_input.a), vec3<i32>(arg_3 | -12595i, -arg_3, -1i ^ arg_3))), ~(-1i));
    let var_2 = -(vec4<i32>(-(~(-2147483647i)), (-16414i & arg_3) & 41916i, u_input.a.x, min(arg_3, reverseBits(u_input.a.x))) << (countOneBits(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(23837u, 1u, 57854u, arg_2.x), vec4<u32>(9656u, var_0, 0u, 0u)), ~vec4<u32>(4092u, var_0, 0u, 0u))) % vec4<u32>(32u)));
    return Struct_1(arg_3, u_input.b.x, vec2<bool>(!all(vec3<bool>(false, false, false)) && all(vec3<bool>(true, true, true)), ~_wgslsmith_mod_u32(36878u, var_0) <= abs(~arg_2.x)), -1i, vec3<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_clamp_i32(arg_3, u_input.a.x, -2147483647i)).e.x * _wgslsmith_f_op_f32(abs(1049f))), 785f, 1000f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1644f - -669f))), 269f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<bool>(false, true, false), vec2<bool>(true, true), min(u_input.b, vec2<u32>(u_input.b.x, 0u)), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))))), _wgslsmith_f_op_f32(f32(-1f) * -1236f), vec3<u32>(1u, ~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(80395u, 956u, u_input.b.x), vec3<u32>(4294967295u, u_input.b.x, 4294967295u)), ~vec3<u32>(u_input.b.x, u_input.b.x, 41403u)), 32539u), _wgslsmith_dot_vec3_i32(u_input.a, -_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 0i, -1i), vec3<i32>(41033i, u_input.a.x, -15667i)) >> (~select(vec3<u32>(u_input.b.x, 54464u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), true) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.e.x, _wgslsmith_f_op_vec3_f32(ceil(func_4(var_0.e.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.e.x))), ~countOneBits(vec3<u32>(var_0.b, var_0.b, 4294967295u)), u_input.a.x).e)));
}

