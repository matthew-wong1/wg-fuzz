struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> i32 {
    var var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1879f, 1078f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-417f, -555f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(2520f)), _wgslsmith_f_op_f32(-1982f + -1880f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1328f + -525f))))) * vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -704f))), 3120f)), -1197f, _wgslsmith_f_op_f32(step(-478f, _wgslsmith_f_op_f32(floor(-904f)))), 1f));
    var_0 = -(min(firstLeadingBit(0i << (0u % 32u)), u_input.a.x) & u_input.a.x);
    var var_2 = firstTrailingBit(abs(u_input.a.x)) << ((u_input.b & u_input.b) % 32u);
    let var_3 = _wgslsmith_add_u32(1u, ~133308u) >= countOneBits(u_input.c.x);
    return u_input.a.x;
}

fn func_2() -> vec3<i32> {
    var var_0 = Struct_1(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(2147483647i, 2147483647i), i32(-1i) * -23000i) & _wgslsmith_div_i32(u_input.a.x, u_input.a.x), ~func_3(), u_input.a.x), 31710i);
    var var_1 = max(min(firstLeadingBit(-u_input.a.xww), u_input.a.xww), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.a.xzx, u_input.a.wyy), u_input.a.yyw), vec3<i32>(_wgslsmith_div_i32(-var_0.b, firstTrailingBit(-2711i)), -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-8412i, -19448i), vec2<i32>(var_0.b, var_0.a.x)) << (1u % 32u))));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2096f, 878f)), -856f, -2187f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), -654f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -326f)), -490f, _wgslsmith_f_op_f32(-1358f - _wgslsmith_f_op_f32(floor(1571f))), -474f))));
    var_1 = ~(vec3<i32>(-1i) * -(~(vec3<i32>(8432i, 0i, -37786i) | vec3<i32>(var_0.a.x, -61589i, 1i))));
    let var_3 = u_input.b;
    return vec3<i32>(var_0.a.x, -u_input.a.x, u_input.a.x);
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<u32>(u_input.b, 1u, _wgslsmith_clamp_u32(72703u, 14602u, u_input.b));
    let var_1 = Struct_1(-max(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, -1289i, u_input.a.x), u_input.a.zwz), u_input.a.zzw), vec3<i32>(0i, -1i, u_input.a.x) ^ func_2()), u_input.a.x);
    return var_1;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> vec4<u32> {
    var var_0 = func_1();
    let var_1 = -37767i;
    var var_2 = !any(vec2<bool>(any(select(vec3<bool>(arg_3, arg_3, arg_3), vec3<bool>(false, false, arg_3), arg_3)), false));
    let var_3 = max(~(~(~abs(vec2<u32>(u_input.b, u_input.c.x)))), vec2<u32>(u_input.c.x, abs(u_input.c.x)) | ~countOneBits(vec2<u32>(u_input.c.x, u_input.b)));
    var_2 = arg_3;
    return _wgslsmith_add_vec4_u32(vec4<u32>(25636u, _wgslsmith_dot_vec3_u32(u_input.c ^ u_input.c, ~u_input.c), ~countOneBits(u_input.c.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 4294967295u), _wgslsmith_add_vec2_u32(var_3, u_input.c.zz))), abs(~vec4<u32>(var_3.x, u_input.b, 0u, 4294967295u))) & _wgslsmith_mod_vec4_u32(~(~(vec4<u32>(16803u, 8177u, u_input.b, 71775u) & vec4<u32>(var_3.x, u_input.b, var_3.x, 1u))), vec4<u32>(reverseBits(var_3.x >> (66075u % 32u)), 3410u, 1u, ~(~u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-733f, 856f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f - 2291f), _wgslsmith_f_op_f32(271f + -1521f)))), Struct_1(u_input.a.yyy, u_input.a.x), func_1(), false) & ~(~(~(~vec4<u32>(u_input.b, 46421u, u_input.b, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1599f, 1098f)))), 45448u);
}

