struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    let var_0 = 1u;
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(905f * -1391f), _wgslsmith_f_op_f32(round(-1441f))), 601f), 1000f, _wgslsmith_f_op_f32(-1415f + _wgslsmith_f_op_f32(-192f - 1017f))));
    var var_2 = 3518i == u_input.a.x;
    var_2 = true;
    var var_3 = true;
    return -341f;
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: f32, arg_3: Struct_5) -> vec3<i32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(firstLeadingBit(vec3<i32>(arg_0, u_input.a.x, arg_0)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - 645f))), 602f);
    var var_1 = -639f;
    return vec3<i32>(countOneBits(_wgslsmith_mod_i32(-arg_0, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, 14247i, -19191i, arg_0))) | 2147483647i), ~(~select(-u_input.a.x, abs(u_input.a.x), arg_3.c.x && arg_3.c.x)), _wgslsmith_mod_i32(u_input.a.x, i32(-1i) * -(~2147483647i)));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(vec3<f32>(1f, 1f, 1f)), Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(174f, 523f, -1513f)))))));
    var_0 = Struct_2(var_0.b, Struct_1(_wgslsmith_f_op_vec3_f32(floor(var_0.a.a))));
    var_0 = Struct_2(var_0.b, var_0.b);
    let var_1 = func_3(-_wgslsmith_div_i32(_wgslsmith_div_i32(~(-1i), ~u_input.a.x), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x) & 19694i), Struct_2(var_0.a, var_0.a), -598f, Struct_5(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1303f, var_0.a.a.x, var_0.a.a.x))), var_0.b), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(false, false, true)), vec2<bool>(all(vec2<bool>(true, true)), true)));
    var_0 = Struct_2(var_0.b, var_0.a);
    return var_0.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_3 {
    let var_0 = -344f;
    var var_1 = -36178i ^ -(~(i32(-1i) * -arg_1.x));
    var_1 = -(~26875i);
    return Struct_3(arg_0, Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(floor(arg_0.a))), arg_0), arg_1);
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: Struct_3) -> Struct_4 {
    var var_0 = _wgslsmith_mult_u32(95188u, arg_1);
    return Struct_4(arg_0, arg_2.b, func_4(arg_2.b.a, ~_wgslsmith_div_vec4_i32(u_input.a, arg_2.c)));
}

fn func_6(arg_0: Struct_4, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1725f, arg_0.c.b.a.a.x, 1000f, -1237f), vec4<f32>(433f, 387f, -608f, arg_0.b.a.a.x)))))))));
    var var_1 = arg_0.b.b;
    var var_2 = countOneBits(~(~(~max(vec4<u32>(1u, 1u, 1u, 74921u), vec4<u32>(4294967295u, 39210u, 106673u, 33062u)))));
    let var_3 = 0u;
    var var_4 = arg_0.c.b.b;
    return Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-438f)), var_1.a.x, _wgslsmith_f_op_f32(-var_1.a.x)) * func_4(func_4(Struct_1(var_1.a), vec4<i32>(arg_1.x, -38710i, arg_1.x, 22348i)).a, arg_1).a.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1130f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1117f)) + _wgslsmith_f_op_f32(-2292f - _wgslsmith_f_op_f32(ceil(302f))))), _wgslsmith_f_op_f32(func_1(_wgslsmith_clamp_vec3_i32(u_input.a.yyx, _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, 60792i), u_input.a.xyw), vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x) & u_input.a.ywz), vec3<i32>(-31871i, u_input.a.x, 1i)))));
    let var_1 = vec4<bool>(false, true, true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-573f + _wgslsmith_f_op_f32(-var_0.x)))) == 577f);
    let var_2 = Struct_3(func_6(func_5(var_1.x | false, 0u, func_4(func_2(u_input.a.x), -u_input.a)), u_input.a), Struct_2(func_6(func_5(any(var_1), firstTrailingBit(1534u), Struct_3(Struct_1(vec3<f32>(-943f, -1534f, var_0.x)), Struct_2(Struct_1(vec3<f32>(513f, 553f, var_0.x)), Struct_1(vec3<f32>(188f, -1223f, var_0.x))), vec4<i32>(2147483647i, u_input.a.x, -7474i, -2147483647i))), vec4<i32>(abs(1i), _wgslsmith_add_i32(u_input.a.x, u_input.a.x), u_input.a.x, u_input.a.x)), func_5(var_1.x || any(var_1), ~(~0u), func_4(Struct_1(vec3<f32>(720f, var_0.x, -1558f)), select(vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x), vec4<i32>(u_input.a.x, -51545i, u_input.a.x, -18811i), var_1))).b.b), vec4<i32>(_wgslsmith_mult_i32(-_wgslsmith_mod_i32(u_input.a.x, -23966i), abs(u_input.a.x)), -2147483647i, select(0i, -_wgslsmith_mult_i32(u_input.a.x, 21615i), false), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, 8070i), max(u_input.a, u_input.a)), _wgslsmith_add_vec4_i32(u_input.a, firstTrailingBit(vec4<i32>(-1i, 22991i, -39109i, -2147483647i))))));
    let var_3 = Struct_5(var_2.b, var_1.xxy, var_1.xy);
    let var_4 = func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(func_6(Struct_4(var_3.b.x, var_3.a, var_2), vec4<i32>(u_input.a.x, u_input.a.x, 1i, var_2.c.x)).a, func_2(16632i).a)))), u_input.a);
    var var_5 = _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(1u, 1u, 4294967295u) | ~51853u, abs(1u)), abs(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 3034u, 0u, 11435u), vec4<u32>(0u, 66531u, 1u, 1u)), 1u))), ~(~(~(~vec2<u32>(4294967295u, 0u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_mult_i32(-var_4.c.x, 0i), ~_wgslsmith_clamp_i32(abs(-21296i), reverseBits(9801i), var_4.c.x)), var_0.x);
}

