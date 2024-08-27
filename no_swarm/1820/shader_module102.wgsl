struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_2, arg_3: Struct_2) -> bool {
    return _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(u_input.a), ~u_input.a), _wgslsmith_mult_i32(u_input.a.x << (arg_2.c.x % 32u), 0i)) != -u_input.a.x;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    var var_0 = u_input.a;
    var_0 = select(vec4<i32>(u_input.a.x ^ var_0.x, var_0.x, u_input.a.x, 23749i), select(u_input.a, u_input.a, select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0.a > 390f, func_2(vec2<bool>(true, false), 1u, Struct_2(-1107f, u_input.b, vec4<u32>(u_input.b, arg_0.c.x, u_input.b, u_input.b)), Struct_2(arg_0.a, arg_1.c.x, vec4<u32>(arg_1.c.x, 1u, arg_0.b, arg_0.c.x))), true, true), any(vec4<bool>(false, true, false, true)))), !select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), u_input.a.x != var_0.x), vec4<bool>(true, true, true, true)));
    var_0 = reverseBits(~_wgslsmith_clamp_vec4_i32(vec4<i32>(firstTrailingBit(u_input.a.x), var_0.x, ~u_input.a.x, var_0.x ^ 22608i), -(u_input.a << (vec4<u32>(23410u, 4294967295u, 1u, 4294967295u) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_div_i32(var_0.x, u_input.a.x), firstTrailingBit(7045i), u_input.a.x, ~var_0.x)));
    var var_1 = Struct_2(-508f, 82549u << (firstTrailingBit(abs(u_input.b) >> (_wgslsmith_sub_u32(arg_1.b, arg_0.b) % 32u)) % 32u), _wgslsmith_mod_vec4_u32(~abs(~vec4<u32>(arg_0.c.x, 4294967295u, 67706u, 21284u)), arg_0.c << ((arg_1.c >> (vec4<u32>(24104u, u_input.b, 49179u, arg_1.b) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var_1 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_0.a)))), u_input.b, var_1.c);
    return ~firstLeadingBit(~13455u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = Struct_2(_wgslsmith_div_f32(515f, 343f), arg_2.c.x, abs(_wgslsmith_div_vec4_u32(arg_2.c, arg_2.c) << (_wgslsmith_clamp_vec4_u32(arg_2.c, vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u), vec4<u32>(arg_2.b, u_input.b, u_input.b, u_input.b) ^ arg_2.c) % vec4<u32>(32u))));
    var var_1 = vec3<bool>(any(vec4<bool>(any(vec3<bool>(false, false, false)), true, true, false)) || true, false, -u_input.a.x > -30786i);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_1.a))))))));
    var_0 = Struct_2(var_2.a.x, 92121u, ~max(vec4<u32>(arg_2.b ^ 9883u, var_0.b, ~arg_2.b, 49417u), vec4<u32>(max(var_0.c.x, var_0.c.x), min(u_input.b, 1u), 4294967295u, 1u)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(arg_3.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(983f, -114f), var_2.a)) + arg_0.a)))));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, var_2.a.x, _wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(floor(arg_2.a)))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1273f, var_0.a, 1000f, 1198f) + vec4<f32>(-740f, -2830f, arg_2.a, 352f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.a.x, var_2.a.x, var_3.a.x, arg_2.a), vec4<f32>(arg_1.a.x, 1412f, 154f, 449f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(_wgslsmith_div_u32(~_wgslsmith_mod_u32(func_1(Struct_2(1912f, u_input.b, vec4<u32>(0u, 53016u, u_input.b, u_input.b)), Struct_2(-465f, u_input.b, vec4<u32>(25131u, 59710u, 4294967295u, u_input.b))), ~4294967295u), max(1u, u_input.b)), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(44690u, u_input.b, u_input.b)), ~firstLeadingBit(vec3<u32>(100022u, u_input.b, 0u))) << (u_input.b % 32u));
    let var_1 = firstTrailingBit(1u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(sign(552f)), _wgslsmith_div_f32(2147f, 1160f))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(301f, 412f) - vec2<f32>(1672f, -603f)) + vec2<f32>(-516f, -577f))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-646f, 564f)), u_input.b, vec4<u32>(88191u ^ var_0.x, 4294967295u, var_0.x >> (var_1 % 32u), 1u)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-868f * 1516f), _wgslsmith_f_op_f32(-1001f - 452f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(241f + -627f) * _wgslsmith_f_op_f32(1409f + -285f))))), _wgslsmith_dot_vec3_u32(select(~(~vec3<u32>(1u, 1u, 90146u)), vec3<u32>(4294967295u, u_input.b | var_0.x, 1u), true), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, var_0.x, 64053u), vec3<u32>(var_1, u_input.b, var_0.x)), abs(vec3<u32>(14081u, 71187u, var_1))), vec3<u32>(firstTrailingBit(4294967295u), ~50501u, _wgslsmith_mult_u32(u_input.b, var_1)), vec3<u32>(var_1, 0u, var_1) & ~vec3<u32>(u_input.b, 1u, u_input.b))));
}

