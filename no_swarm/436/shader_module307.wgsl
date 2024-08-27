struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<bool>) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(step(-996f, arg_2.c));
    var_0 = -349f;
    let var_1 = -1624f;
    var var_2 = arg_2.b;
    return vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.c >> (arg_2.d.a % 32u), 1i >> (arg_1.b.x % 32u)), ~(~vec2<i32>(-19746i, arg_2.b.c))), vec2<i32>(-31922i, -1i)), 2147483647i, arg_1.c);
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = arg_3;
    var var_1 = firstTrailingBit(var_0.c & 0i);
    var_1 = var_0.c;
    var var_2 = Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(~1u, arg_3.a & 85741u), vec2<u32>(min(var_0.a, 0u) ^ arg_3.b.x, firstTrailingBit(4294967295u))), arg_3, -588f, Struct_1(firstLeadingBit(~u_input.a.x), arg_3.b, var_0.c, any(!vec4<bool>(true, false, arg_3.d, true))), min(arg_3.b, vec4<u32>(1u, 22176u, 0u, arg_2)));
    var_1 = -abs(~var_2.b.c);
    return firstLeadingBit(firstTrailingBit(~func_3(vec2<bool>(var_0.d, var_2.d.d), arg_3, Struct_2(var_2.a, Struct_1(arg_1, var_2.d.b, arg_3.c, true), -159f, Struct_1(1u, vec4<u32>(0u, 4342u, arg_3.b.x, var_0.b.x), 15246i, false), var_0.b), !vec2<bool>(var_2.b.d, var_0.d))));
}

fn func_1() -> i32 {
    var var_0 = ~(~(-2147483647i));
    var var_1 = 20127i;
    let var_2 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(~1i, _wgslsmith_dot_vec3_i32(func_2(vec3<f32>(320f, -1228f, -971f), 97261u, u_input.b, Struct_1(u_input.b, vec4<u32>(0u, 10359u, 0u, 4294967295u), -1i, false)), vec3<i32>(1i, 0i, -39270i))) >> (u_input.a.x % 32u), 1i);
    var_1 = _wgslsmith_add_i32(-var_2, var_2);
    var_0 = 0i;
    return -(~var_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~(-_wgslsmith_add_vec2_i32(vec2<i32>(21770i, 72429i), vec2<i32>(-28914i, 0i)) >> (u_input.a.zz % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, abs(-1i)), vec2<i32>(-31899i, -2147483647i)) << (~reverseBits(~u_input.a.wz) % vec2<u32>(32u)), !(func_1() >= 2147483647i));
    let var_1 = i32(-1i) * -25813i;
    var var_2 = Struct_1(~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 36679u, 4422u, u_input.a.x), ~u_input.a, u_input.a ^ vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, 22374u)), _wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(u_input.b, 50032u, 1u, u_input.a.x))), ~u_input.a, _wgslsmith_mod_i32(~_wgslsmith_add_i32(var_0.x, -var_1), ~49848i), true);
    let var_3 = Struct_1(_wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(var_2.b, ~vec4<u32>(u_input.a.x, var_2.b.x, 4294967295u, u_input.b)), _wgslsmith_sub_vec4_u32(~abs(vec4<u32>(var_2.a, 28560u, var_2.a, u_input.a.x)), vec4<u32>(var_2.a ^ 16153u, u_input.b | u_input.b, _wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(0u, 4294967295u)), 4294967295u << (0u % 32u)))), vec4<u32>(27881u, ~u_input.a.x, u_input.b, var_2.a ^ ~(u_input.a.x ^ u_input.a.x)), abs(-var_2.c), var_2.d);
    let var_4 = Struct_2(countOneBits(vec2<u32>(abs(~u_input.b), countOneBits(_wgslsmith_add_u32(0u, 4294967295u)))), var_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1135f))), Struct_1(abs(~13561u), ~select(u_input.a, select(vec4<u32>(92212u, var_3.a, var_3.a, u_input.b), vec4<u32>(4294967295u, 0u, 1965u, 1u), vec4<bool>(true, false, false, false)), select(vec4<bool>(var_2.d, var_3.d, var_2.d, var_3.d), vec4<bool>(var_3.d, var_2.d, true, true), vec4<bool>(false, var_2.d, true, var_2.d))), -_wgslsmith_add_i32(max(var_3.c, -2147483647i), var_1), ~_wgslsmith_div_u32(4294967295u, u_input.b) < ~_wgslsmith_dot_vec2_u32(var_3.b.xy, u_input.a.wx)), ~vec4<u32>(var_3.a, countOneBits(1u), max(min(1u, var_2.a), u_input.a.x << (var_3.a % 32u)), 1u));
    let var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(-1977f, vec3<i32>(-(~_wgslsmith_sub_i32(var_3.c, var_5.b.c)), ~reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_5.b.c, 2147483647i, 66249i), vec4<i32>(-8106i, -32551i, 1583i, 1i))), var_3.c), var_4.c, var_2.b, 0u << (_wgslsmith_div_u32(var_2.b.x, select(1u, ~35619u, !var_2.d)) % 32u));
}

