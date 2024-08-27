struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3) -> bool {
    var var_0 = Struct_1(~(~89338u), 680f);
    let var_1 = u_input.a.x;
    let var_2 = max(_wgslsmith_div_i32(_wgslsmith_div_i32(firstTrailingBit(reverseBits(u_input.b)), 1i), ~(u_input.b ^ 39677i) ^ firstTrailingBit(u_input.b)), -(~(~(~u_input.b))));
    let var_3 = 59902u;
    var_0 = Struct_1(1u, _wgslsmith_f_op_f32(max(arg_0.d, -188f)));
    return true;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: vec3<i32>) -> vec4<bool> {
    return select(vec4<bool>(true || !select(false, false, false), true, false, any(vec3<bool>(true, arg_3.x == 1i, true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_3(Struct_3(u_input.a, vec2<f32>(arg_2.b, 1352f), false, 979f))), select(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), true)), select(select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(false, false, true, true)), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), false))), select(func_3(Struct_3(u_input.a, vec2<f32>(-117f, arg_0), true, -1134f)), true, true)));
}

fn func_1(arg_0: bool) -> u32 {
    let var_0 = select(vec4<i32>(-1i) * -vec4<i32>(0i & u_input.b, _wgslsmith_add_i32(-20212i, u_input.b), u_input.b, ~0i), vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(-19229i, u_input.b), vec2<i32>(u_input.b, u_input.b)), u_input.b, (u_input.b | -7368i) | u_input.b, min(~4862i, u_input.b)) << (_wgslsmith_add_vec4_u32(~(~vec4<u32>(u_input.a.x, 62527u, 0u, u_input.c.x)), ~countOneBits(vec4<u32>(u_input.a.x, 7160u, 4294967295u, 21452u))) % vec4<u32>(32u)), func_2(1041f, 32772i >> (u_input.a.x % 32u), Struct_1(~_wgslsmith_add_u32(1u, u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1709f)), _wgslsmith_div_vec3_i32(~vec3<i32>(u_input.b, -1746i, 2147483647i) & abs(vec3<i32>(32812i, 27745i, -2147483647i)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, -8670i, 0i), vec3<i32>(-16551i, -7554i, u_input.b)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(1f))))) + 682f);
    var_1 = _wgslsmith_f_op_f32(-1668f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -961f)));
    let var_2 = Struct_1(~(~37023u), 1f);
    var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1971f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-375f, 1449f)), var_2.b)), _wgslsmith_f_op_f32(f32(-1f) * -415f), func_2(var_2.b, 2147483647i, var_2, vec3<i32>(0i, 2147483647i, u_input.b)).x))))));
    return 46946u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(max(~u_input.a.x, ~func_1(any(vec3<bool>(false, true, false)))), 1u, ~_wgslsmith_mod_u32(40701u, u_input.a.x) ^ (_wgslsmith_clamp_u32(select(u_input.c.x, 43070u, false), abs(u_input.c.x), 0u) << (_wgslsmith_div_u32(u_input.c.x, u_input.c.x) % 32u)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(reverseBits(u_input.a) >> (u_input.a % vec3<u32>(32u)), vec3<u32>(4294967295u, firstLeadingBit(u_input.a.x), ~u_input.c.x)), ~u_input.a));
    var var_1 = Struct_1(_wgslsmith_clamp_u32(~(var_0.x << (_wgslsmith_add_u32(u_input.c.x, 0u) % 32u)), ~var_0.x, ~select(var_0.x, u_input.c.x, true)), -129f);
    var_1 = Struct_1(74141u, var_1.b);
    var_1 = Struct_1(var_1.a, 351f);
    let var_2 = _wgslsmith_mult_u32(~(~var_0.x), ~30597u);
    var var_3 = Struct_3(~min(vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.c, var_0.yz), 4294967295u, var_1.a), ~vec3<u32>(1176u, var_2, var_2)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_div_f32(498f, var_1.b), var_1.b))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.b, var_1.b))), vec2<f32>(-1000f, -1067f))))), _wgslsmith_sub_i32(u_input.b, -u_input.b) < u_input.b, var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1536f, 111f, var_3.d))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1330f, var_3.d, var_1.b) - vec3<f32>(338f, var_3.b.x, var_3.d)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1246f, var_1.b, var_3.d) * vec3<f32>(644f, var_1.b, -717f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-839f, var_3.b.x, -926f), vec3<f32>(-1779f, 706f, -2253f))))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.b, -1126f, -699f)))), _wgslsmith_clamp_vec2_i32(vec2<i32>(-38925i, firstTrailingBit(25537i)), reverseBits(firstTrailingBit(~vec2<i32>(1i, u_input.b))), max(countOneBits(vec2<i32>(-2147483647i, u_input.b)), min(vec2<i32>(2147483647i, u_input.b), vec2<i32>(u_input.b, u_input.b))) ^ vec2<i32>(abs(u_input.b), 0i)), _wgslsmith_f_op_f32(abs(2096f)), ~(var_0.zy ^ vec2<u32>(countOneBits(u_input.c.x), 51166u)));
}

