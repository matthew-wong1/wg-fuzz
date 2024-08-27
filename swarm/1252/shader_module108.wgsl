struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<f32>,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: vec3<u32>) -> bool {
    var var_0 = countOneBits(-83932i);
    let var_1 = u_input.a.x;
    let var_2 = var_1;
    var var_3 = arg_1.a.b.zyz;
    let var_4 = _wgslsmith_mult_vec3_i32(u_input.b.zxx, ~vec3<i32>(1i, -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 13203i), vec2<i32>(arg_0, var_2)), _wgslsmith_div_i32(arg_0, -22845i) & 22164i));
    return true;
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = firstTrailingBit(1u);
    let var_1 = Struct_1(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-arg_0, reverseBits(2147483647i), ~u_input.b.x), vec3<i32>(u_input.b.x, ~(-22752i), ~(-45346i)))), !(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), any(vec2<bool>(true, true)));
    var var_2 = -240f;
    let var_3 = Struct_2(var_1, u_input.a.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1532f))), _wgslsmith_f_op_f32(abs(1154f)), _wgslsmith_f_op_f32(-661f * _wgslsmith_f_op_f32(floor(-1045f)))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(2799f, -2107f), _wgslsmith_f_op_f32(round(519f)), -513f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(263f, -2232f, 1126f) + vec3<f32>(-168f, 307f, -700f)))), var_1.b.yzw))), Struct_1(0i, vec4<bool>(true, var_1.c, false, !var_1.b.x), false), var_0);
    let var_4 = 1476f;
    return 1i;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: vec2<bool>) -> u32 {
    var var_0 = true;
    var_0 = false;
    var_0 = arg_2.x;
    let var_1 = abs(u_input.a.x);
    let var_2 = Struct_2(Struct_1(var_1, select(vec4<bool>(arg_2.x, true & arg_2.x, func_2(var_1, Struct_2(Struct_1(-43393i, vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), arg_2.x), var_1, vec3<f32>(arg_0.x, arg_0.x, arg_0.x), Struct_1(var_1, vec4<bool>(arg_2.x, true, true, arg_2.x), arg_2.x), arg_1.x), vec3<u32>(arg_1.x, arg_1.x, arg_1.x)), var_1 > var_1), vec4<bool>(arg_2.x, true, !arg_2.x, arg_2.x & false), false), arg_2.x), _wgslsmith_sub_i32(func_3(18668i), u_input.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-901f, arg_0.x, _wgslsmith_f_op_f32(abs(-1000f)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -715f, -1243f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.x, 1000f, arg_0.x), vec3<f32>(arg_0.x, arg_0.x, -1000f)))), vec3<bool>(arg_2.x, false, all(vec3<bool>(arg_2.x, true, arg_2.x)))))), Struct_1(max(~1i, -17788i), vec4<bool>(arg_2.x, true, any(!vec4<bool>(false, false, arg_2.x, false)), func_2(u_input.a.x & var_1, Struct_2(Struct_1(-56534i, vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), false), u_input.c.x, vec3<f32>(arg_0.x, arg_0.x, 1436f), Struct_1(-2147483647i, vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false), arg_2.x), 1u), vec3<u32>(4294967295u, arg_1.x, 64461u))), !func_2(-2147483647i, Struct_2(Struct_1(u_input.a.x, vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), arg_2.x), u_input.a.x, vec3<f32>(arg_0.x, 2028f, -454f), Struct_1(16906i, vec4<bool>(true, true, true, true), arg_2.x), arg_1.x), ~arg_1)), _wgslsmith_clamp_u32(arg_1.x, 27126u, _wgslsmith_sub_u32(arg_1.x, ~arg_1.x)));
    return ~var_2.e & ~var_2.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(_wgslsmith_div_u32(~func_1(vec2<f32>(1010f, 1371f), ~vec3<u32>(1u, 1u, 58951u), vec2<bool>(true, true)), _wgslsmith_mult_u32(35723u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 28358u), vec3<u32>(42487u, 27072u, 3528u)) | 4294967295u)), ~firstTrailingBit(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(4294967295u, 0u)), vec2<u32>(4294967295u, 1u))), ~(~(~_wgslsmith_div_u32(4294967295u, 1u))), 67510u);
    var_0 = vec4<u32>(min(17965u, var_0.x) << (abs(var_0.x) % 32u), var_0.x >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, 0u, 4294967295u, 31439u) << (vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x) % vec4<u32>(32u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, var_0.x, 23220u, 1u), vec4<u32>(var_0.x, var_0.x, var_0.x, 0u), vec4<u32>(var_0.x, var_0.x, var_0.x, 4294967295u))) % 32u), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(~var_0.x, ~41414u, var_0.x, reverseBits(var_0.x)), countOneBits(~vec4<u32>(0u, 7084u, 15586u, 35124u))), ~(~select(vec4<u32>(66049u, 0u, 1u, var_0.x), vec4<u32>(var_0.x, 59938u, var_0.x, var_0.x), vec4<bool>(false, false, false, true)))), 23094u);
    var_0 = abs(select(_wgslsmith_add_vec4_u32(vec4<u32>(31251u, firstLeadingBit(29028u), firstTrailingBit(1u), var_0.x), max(~vec4<u32>(var_0.x, var_0.x, 4294967295u, 0u), vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x))), firstLeadingBit(reverseBits(vec4<u32>(var_0.x, 23223u, 8208u, var_0.x))), select(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true)))));
    let var_1 = Struct_2(Struct_1(u_input.c.x, select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, false, true, false)), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), true), vec4<bool>(true, false, true, true)), vec4<bool>(false, true, true, true)), all(vec3<bool>(true, true, true)) | true), _wgslsmith_add_i32(u_input.a.x, u_input.b.x) << (44861u % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -501f, 1402f) + vec3<f32>(1000f, 123f, 661f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1553f, -346f, 673f) + vec3<f32>(-353f, 1845f, 1000f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(327f, 1023f, -670f), vec3<f32>(2169f, -2383f, -179f), true)), true)))), Struct_1(u_input.a.x, !vec4<bool>(true, any(vec4<bool>(true, false, false, false)), false, true), _wgslsmith_f_op_f32(ceil(1000f)) == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(448f + 321f), -1000f))), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 25687u, var_0.x, 1u) & vec4<u32>(32733u, 0u, 4294967295u, 9866u), vec4<u32>(var_0.x, var_0.x, var_0.x, 1u)) >> (countOneBits(vec4<u32>(8203u, 34949u, 1u, var_0.x)) % vec4<u32>(32u)), ~select(vec4<u32>(4294967295u, 16530u, 0u, 4294967295u), abs(vec4<u32>(var_0.x, var_0.x, var_0.x, 0u)), vec4<bool>(false, true, true, false))));
    let var_2 = Struct_1(u_input.c.x, vec4<bool>(true, !func_2(u_input.a.x, var_1, var_0.wyz), var_1.d.b.x, true), all(select(vec2<bool>(var_1.a.b.x, !var_1.d.c), var_1.a.b.yy, true)));
    let x = u_input.a;
    s_output = StorageBuffer(1675f, vec2<i32>(var_1.b, u_input.b.x));
}

