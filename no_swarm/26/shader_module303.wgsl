struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: vec4<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(arg_2.x));
    var_0 = arg_3.x;
    var var_1 = vec3<bool>(true, arg_1.x, true);
    var var_2 = Struct_2(Struct_1(~4294967295u), arg_3.x);
    var var_3 = 0i | firstLeadingBit(u_input.b);
    return 14600u;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = vec3<i32>(u_input.b, u_input.b, i32(-1i) * -17416i);
    var var_1 = arg_1;
    var var_2 = countOneBits(-max(var_0, vec3<i32>(var_0.x, 1i, _wgslsmith_div_i32(1810i, 64915i))));
    var_1 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_sub_u32(var_1.a, func_3(_wgslsmith_mod_u32(arg_1.a, 13054u), vec4<bool>(arg_0.x, true, false, arg_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(815f, 618f, 1321f) + vec3<f32>(1000f, -256f, 1069f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, -682f, -233f, 397f))))), var_1.a));
    return -_wgslsmith_add_vec4_i32(~(~(-vec4<i32>(20086i, var_0.x, var_2.x, -17837i))), ~abs(vec4<i32>(-44615i, u_input.b, u_input.b, u_input.b)));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: bool, arg_3: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-402f + -106f);
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(-12016i, u_input.b, 0i, 1i), vec4<i32>(u_input.b, 4192i, 2147483647i, u_input.b)), select(vec4<i32>(arg_3, u_input.b, 2147483647i, arg_3) << (vec4<u32>(u_input.d.x, 66822u, 40598u, 13780u) % vec4<u32>(32u)), func_2(vec2<bool>(arg_1.x, arg_1.x), Struct_1(u_input.a.x)), select(vec4<bool>(true, arg_1.x, arg_1.x, arg_2), vec4<bool>(arg_1.x, true, arg_1.x, arg_2), false))), _wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(u_input.b), u_input.b, 1i, u_input.b), vec4<i32>(~(-39185i), -21197i, func_2(arg_1, Struct_1(1u)).x, _wgslsmith_mod_i32(u_input.b, arg_3)))), abs(arg_3) >> ((max(1u, _wgslsmith_clamp_u32(u_input.a.x, 29136u, u_input.c)) ^ arg_0) % 32u));
    var_1 = arg_3;
    var var_2 = Struct_2(Struct_1(~arg_0 | (reverseBits(u_input.c) << (_wgslsmith_dot_vec2_u32(vec2<u32>(11767u, 1u), vec2<u32>(arg_0, arg_0)) % 32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f - 1404f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-311f * 1344f), -1201f)))));
    var var_3 = var_2.a;
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, !all(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))), true, true);
    let var_1 = _wgslsmith_mod_vec2_u32(~vec2<u32>(24449u, ~(28911u | u_input.d.x)), vec2<u32>(u_input.c, _wgslsmith_mult_u32(min(_wgslsmith_mult_u32(u_input.c, u_input.c), ~u_input.a.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.c, 67812u), vec4<u32>(1u, u_input.a.x, 28996u, 2357u)))));
    let var_2 = _wgslsmith_sub_i32(min(u_input.b, func_1(_wgslsmith_mult_u32(var_1.x ^ 1u, 4294967295u), var_0.wy, true, _wgslsmith_mult_i32(0i, ~u_input.b))), _wgslsmith_add_i32(-u_input.b << ((4294967295u >> (_wgslsmith_mod_u32(18905u, var_1.x) % 32u)) % 32u), u_input.b));
    var var_3 = Struct_1(4294967295u);
    var_3 = Struct_1(((u_input.d.x ^ (u_input.a.x | var_1.x)) & (_wgslsmith_add_u32(4294967295u, 0u) & (12538u | var_1.x))) & _wgslsmith_add_u32(1u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(796f - -1190f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-390f, 128f))))));
}

