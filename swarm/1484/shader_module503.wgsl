struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: vec4<i32>, arg_3: Struct_5) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(805f - 1038f) + _wgslsmith_f_op_f32(-258f * arg_0)), 1f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 1151f)) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-221f, -439f), vec2<f32>(arg_0, 1003f))))))));
    let var_1 = firstLeadingBit(~abs(_wgslsmith_mult_vec4_i32(arg_2, arg_2) << (min(vec4<u32>(4294967295u, 0u, u_input.c, u_input.b), vec4<u32>(1u, u_input.b, u_input.b, 20575u)) % vec4<u32>(32u))));
    let var_2 = -var_1.zxz;
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1198f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1111f), _wgslsmith_f_op_f32(-arg_0)))))));
    let var_4 = countOneBits((firstLeadingBit(21031i) & arg_3.a.a.x) ^ var_2.x) >> (0u % 32u);
    return arg_3.a.d.a.x;
}

fn func_2() -> u32 {
    var var_0 = u_input.b;
    var var_1 = vec2<bool>(select(-(2147483647i & u_input.d) <= countOneBits(-1i), false, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1587f))), vec4<bool>(true, true, true, true), -vec4<i32>(-20534i, 28437i, u_input.a, u_input.d), Struct_5(Struct_2(vec4<i32>(u_input.a, u_input.d, u_input.d, u_input.d), u_input.a, vec2<i32>(u_input.a, u_input.d), Struct_1(vec3<bool>(true, false, false), u_input.d))))), any(vec2<bool>(true, all(vec2<bool>(true, false)) == true)));
    var_0 = ~(~(~u_input.c));
    var var_2 = 47179u;
    let var_3 = Struct_3(Struct_1(select(vec3<bool>(true, false, var_1.x), vec3<bool>(true, true, false && var_1.x), select(vec3<bool>(var_1.x, false, true), select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, true, false), vec3<bool>(var_1.x, var_1.x, false)), any(vec4<bool>(var_1.x, var_1.x, false, false)))), _wgslsmith_add_i32(_wgslsmith_div_i32(abs(2872i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 1i), vec3<i32>(-1i, 1i, -2147483647i))), -(~u_input.a))));
    return u_input.c;
}

fn func_1(arg_0: bool, arg_1: Struct_5) -> vec2<u32> {
    var var_0 = vec2<u32>(u_input.b >> (4294967295u % 32u), ~_wgslsmith_mult_u32(11195u, 1u));
    var_0 = vec2<u32>(_wgslsmith_clamp_u32(~u_input.c, _wgslsmith_add_u32(u_input.b, 55996u), 4294967295u), min(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, u_input.b), vec2<u32>(var_0.x, u_input.c)), ~1u) << (u_input.b % 32u)) & vec2<u32>(abs(var_0.x) & ~u_input.b, func_2());
    var_0 = select(vec2<u32>(~u_input.c, 4294967295u), ~vec2<u32>(~u_input.b, 4294967295u), arg_1.a.d.a.x);
    let var_1 = 1035f;
    var var_2 = !select(select(!vec4<bool>(arg_1.a.d.a.x, true, false, false), select(select(vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(false, arg_0, false, arg_1.a.d.a.x), arg_0), vec4<bool>(true, true, true, true), !vec4<bool>(arg_1.a.d.a.x, arg_1.a.d.a.x, false, arg_0)), !arg_0), vec4<bool>(!arg_0 && any(vec4<bool>(false, arg_0, false, false)), !arg_0, true, countOneBits(u_input.b) > 39065u), select(vec4<bool>(false & arg_1.a.d.a.x, true, true, false), select(!vec4<bool>(arg_0, true, arg_1.a.d.a.x, false), vec4<bool>(true, true, true, true), all(arg_1.a.d.a.zy)), vec4<bool>(4806i < arg_1.a.d.b, arg_0 || arg_1.a.d.a.x, arg_0, 1i > arg_1.a.d.b)));
    return abs(~vec2<u32>(~(~8508u), max(abs(4294967295u), func_2())));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<bool>) -> vec4<f32> {
    let var_0 = arg_0.x;
    let var_1 = !select(arg_1, vec2<bool>(arg_1.x, all(select(vec3<bool>(false, true, false), vec3<bool>(true, arg_1.x, false), false))), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec4<bool>(true, true, true, true), min(vec4<i32>(11958i, -1i, 1i, 0i) & vec4<i32>(2147483647i, 36115i, -6452i, u_input.d), vec4<i32>(u_input.d, 2147483647i, u_input.d, u_input.d)), Struct_5(Struct_2(vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a), u_input.a, vec2<i32>(u_input.d, 2147483647i), Struct_1(vec3<bool>(arg_1.x, true, false), u_input.d)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(661f, _wgslsmith_f_op_f32(2433f * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -677f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2126f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1624f, 1161f, 865f, 1819f)) * vec4<f32>(-972f, 1000f, 326f, 744f)))));
    var var_3 = ~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.b, ~(~53609u)), vec3<u32>(max(_wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(58766u, 0u)), var_0), ~var_0 & (var_0 | arg_0.x), arg_0.x));
    let var_4 = var_3.zz;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(select(~firstTrailingBit(vec2<u32>(4294967295u, 49748u)), func_1(true, Struct_5(Struct_2(vec4<i32>(u_input.a, -2147483647i, u_input.d, 13893i), u_input.a, vec2<i32>(-8093i, u_input.d), Struct_1(vec3<bool>(false, false, true), u_input.a)))), vec2<bool>(true, u_input.c < u_input.c)), select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)))));
    var var_1 = Struct_1(!select(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)))), u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec4_i32(~(~vec4<i32>(u_input.d, var_1.b, u_input.a, var_1.b)), ~(vec4<i32>(var_1.b, 32459i, var_1.b, -2147483647i) | vec4<i32>(-6465i, u_input.d, var_1.b, 0i)), vec4<i32>(1i, 1i, abs(u_input.a), _wgslsmith_add_i32(-14508i, u_input.a))));
}

