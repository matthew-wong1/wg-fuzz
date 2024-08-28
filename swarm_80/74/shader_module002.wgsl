struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_2,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_3) -> vec3<bool> {
    var var_0 = global0.c.a;
    global0 = Struct_3(_wgslsmith_div_i32(arg_0.c.b.x, min(arg_0.a, 1i)), all(vec2<bool>(true, true)), Struct_2(!vec3<bool>(!arg_0.c.a.x, true, true), vec3<i32>(-1i) * -(arg_0.c.b >> (vec3<u32>(58742u, 1u, u_input.d) % vec3<u32>(32u)))), vec3<f32>(_wgslsmith_f_op_f32(sign(global0.d.x)), arg_0.d.x, 814f));
    var var_1 = arg_0.c;
    var_0 = var_1.a;
    var var_2 = ~(~(~global0.c.b.x)) == (max(-34223i ^ -global0.a, -_wgslsmith_mult_i32(5914i, global0.c.b.x)) & ~global0.a);
    return select(!select(arg_0.c.a, vec3<bool>(all(vec4<bool>(global0.c.a.x, arg_0.c.a.x, global0.b, true)), u_input.d >= 1u, false), var_1.a.x), select(var_1.a, vec3<bool>(!global0.c.a.x, var_1.a.x, false & (arg_0.a > arg_0.a)), true), var_1.a);
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    global0 = Struct_3(-abs(0i) & -abs(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.a, global0.a), vec2<i32>(global0.c.b.x, global0.a))), global0.b, Struct_2(!(!(!vec3<bool>(false, global0.b, global0.c.a.x))), ~(vec3<i32>(global0.a, global0.c.b.x, -2147483647i) ^ vec3<i32>(global0.a, global0.c.b.x, global0.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global0.d))));
    var var_0 = vec4<bool>(!(all(select(global0.c.a.yz, global0.c.a.xy, global0.c.a.yy)) & (abs(13288u) == u_input.b)), ~(-firstTrailingBit(31567i)) != (-64781i << (1u % 32u)), false & any(global0.c.a), !(!global0.c.a.x));
    var var_1 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2128i, _wgslsmith_mult_i32(_wgslsmith_div_i32(global0.a, 2147483647i), _wgslsmith_clamp_i32(global0.a, global0.a, global0.c.b.x)), _wgslsmith_dot_vec3_i32(-global0.c.b, vec3<i32>(2147483647i, -1i, global0.a)), ~_wgslsmith_sub_i32(global0.a, 42202i)), abs(~vec4<i32>(global0.a, 18900i, 2147483647i, -2147483647i))), global0.c.b.x, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-(~global0.c.b.x), (global0.a >> (12860u % 32u)) ^ -2147483647i, _wgslsmith_sub_i32(firstLeadingBit(global0.a), select(global0.c.b.x, global0.a, true))), i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.c.b.x ^ global0.c.b.x, 40799i, _wgslsmith_div_i32(global0.c.b.x, 11355i), 2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, global0.c.b.x, global0.a, global0.a) << (vec4<u32>(1u, 4294967295u, u_input.c, u_input.a) % vec4<u32>(32u)), abs(vec4<i32>(-1i, global0.a, global0.a, 1i))))), 2147483647i);
    var var_2 = -vec4<i32>(~(5297i >> (_wgslsmith_mod_u32(215u, u_input.c) % 32u)), -28510i, _wgslsmith_dot_vec4_i32(vec4<i32>(-4175i << (u_input.d % 32u), 43282i, reverseBits(var_1.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a, global0.c.b.x, global0.c.b.x, 27359i), vec4<i32>(var_1.x, -41865i, 17799i, var_1.x))), vec4<i32>(countOneBits(-2147483647i), 2147483647i, 0i, global0.a)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, global0.a), var_1.zy | vec2<i32>(0i, global0.c.b.x)));
    let var_3 = firstTrailingBit(u_input.a);
    return _wgslsmith_f_op_f32(1678f - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.x, 1580f)) + _wgslsmith_f_op_f32(-global0.d.x)), 924f), -227f)));
}

fn func_2(arg_0: vec2<u32>) -> vec3<bool> {
    global0 = Struct_3(global0.c.b.x, true, global0.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<f32>(2213f, 1839f, global0.d.x)))), global0.d.x) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.x, -1017f, global0.d.x)), _wgslsmith_f_op_vec3_f32(step(global0.d, vec3<f32>(-758f, -1029f, -1125f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.x, -1230f, global0.d.x)))));
    var var_0 = firstTrailingBit(select(select(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -13221i, 2147483647i, -2147483647i), vec4<i32>(global0.c.b.x, 0i, global0.c.b.x, 0i), vec4<i32>(global0.a, -41220i, 42571i, -1i)), select(vec4<i32>(global0.c.b.x, -23640i, -65650i, global0.c.b.x), vec4<i32>(-8604i, global0.c.b.x, -2147483647i, global0.a), vec4<bool>(global0.c.a.x, true, true, global0.c.a.x)), !vec4<bool>(true, false, true, global0.b)), firstTrailingBit(vec4<i32>(0i, 2147483647i, 2147483647i, global0.c.b.x)) | firstLeadingBit(vec4<i32>(global0.a, 1i, -14845i, 2753i)), !select(vec4<bool>(global0.b, global0.c.a.x, global0.c.a.x, global0.b), vec4<bool>(global0.c.a.x, false, true, false), vec4<bool>(global0.b, global0.c.a.x, true, true))), abs(_wgslsmith_div_vec4_i32(~vec4<i32>(global0.c.b.x, global0.c.b.x, global0.c.b.x, -31872i), vec4<i32>(0i, global0.c.b.x, 16144i, 2147483647i))), !(!select(vec4<bool>(false, true, global0.c.a.x, global0.b), vec4<bool>(false, false, global0.b, true), global0.b))));
    var_0 = -abs(select(vec4<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(86240i, 32020i), vec2<i32>(global0.c.b.x, -6940i)), _wgslsmith_div_i32(global0.c.b.x, 17040i), var_0.x), vec4<i32>(i32(-1i) * -27884i, max(-30892i, 1i), var_0.x | var_0.x, max(20378i, global0.c.b.x)), select(global0.c.a.x, true, true) && select(global0.b, false, false)));
    global0 = Struct_3(global0.a, true, Struct_2(select(global0.c.a, vec3<bool>(true, all(vec4<bool>(global0.b, global0.b, global0.c.a.x, true)), global0.b), false), firstTrailingBit(~global0.c.b)), global0.d);
    var_0 = vec4<i32>(~1i, abs(var_0.x) << (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0.x, 44843u) | vec3<u32>(u_input.d, 2096u, 0u), vec3<u32>(arg_0.x, u_input.b, 31411u)) % 32u), var_0.x, var_0.x) | abs(min(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 2147483647i, global0.c.b.x, -2147483647i), vec4<i32>(global0.c.b.x, 56144i, var_0.x, var_0.x), vec4<i32>(var_0.x, global0.a, -21012i, global0.a)), select(vec4<i32>(-2147483647i, 2147483647i, var_0.x, var_0.x), vec4<i32>(global0.a, 2147483647i, var_0.x, global0.c.b.x), false)) | ~_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, -47011i, -56746i, -1i), vec4<i32>(global0.a, 1i, -31191i, global0.a)));
    return !vec3<bool>(false && all(select(vec4<bool>(false, global0.c.a.x, true, true), vec4<bool>(global0.b, false, true, global0.b), global0.b)), !(func_1(Struct_3(-5526i, true, Struct_2(global0.c.a, vec3<i32>(38432i, var_0.x, global0.a)), vec3<f32>(global0.d.x, global0.d.x, global0.d.x))).x == true), !(!(!global0.b)));
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: i32) -> Struct_3 {
    var var_0 = Struct_3(-firstLeadingBit(abs(-76305i)), any(select(select(!vec4<bool>(false, arg_0.x, false, arg_0.x), select(vec4<bool>(arg_0.x, false, false, true), vec4<bool>(arg_0.x, false, true, true), global0.c.a.x), !vec4<bool>(global0.b, arg_0.x, true, false)), select(select(vec4<bool>(arg_0.x, false, true, arg_0.x), vec4<bool>(arg_0.x, false, global0.c.a.x, global0.b), false), vec4<bool>(true, arg_0.x, global0.c.a.x, true), !vec4<bool>(arg_0.x, arg_0.x, false, false)), arg_0.x)), global0.c, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(global0.d, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 826f, global0.d.x) - vec3<f32>(arg_1, 1408f, -131f)), global0.d))), global0.d));
    global0 = Struct_3(var_0.c.b.x, var_0.b, global0.c, vec3<f32>(var_0.d.x, var_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d.x + _wgslsmith_f_op_f32(-1905f + global0.d.x)) - _wgslsmith_f_op_f32(-359f - _wgslsmith_f_op_f32(min(arg_1, global0.d.x))))));
    let var_1 = vec3<u32>(~(~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(39997u, 1u, u_input.c, 12217u), vec4<u32>(42070u, 0u, u_input.a, 1u)), u_input.b)), _wgslsmith_mult_u32(u_input.d, select(_wgslsmith_div_u32(58329u, _wgslsmith_clamp_u32(u_input.d, 4294967295u, u_input.d)), u_input.d, true)), 0u);
    let var_2 = global0.a;
    let var_3 = Struct_1(vec4<i32>(_wgslsmith_div_i32(4948i, ~(-arg_2)), (_wgslsmith_div_i32(arg_2, 1i) & min(global0.a, -2147483647i)) ^ global0.a, ~(-3171i), 2147483647i), 1000f, false);
    return Struct_3(~abs(-2147483647i), var_0.b, global0.c, global0.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(2147483647i, any(func_1(Struct_3(_wgslsmith_mod_i32(global0.c.b.x, global0.c.b.x), any(global0.c.a), global0.c, global0.d))), global0.c, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(224f - global0.d.x)), global0.d.x, _wgslsmith_f_op_f32(abs(638f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-678f, -563f, 750f))))));
    var var_0 = global0.c;
    let var_1 = func_4(func_2(countOneBits(reverseBits(max(vec2<u32>(u_input.b, 15388u), vec2<u32>(u_input.d, 4294967295u))))), -953f, var_0.b.x);
    let var_2 = ~(vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.b.x, var_1.c.b.x, -1i, var_1.a), vec4<i32>(var_1.c.b.x, 16488i, var_0.b.x, -3448i), vec4<i32>(0i, var_0.b.x, global0.c.b.x, -22384i)), select(vec4<i32>(global0.c.b.x, global0.c.b.x, 0i, var_1.c.b.x), vec4<i32>(var_1.a, -44921i, var_1.c.b.x, -7428i), false)));
    var var_3 = !select(global0.c.a, var_0.a, (_wgslsmith_f_op_f32(-global0.d.x) > _wgslsmith_f_op_f32(var_1.d.x - global0.d.x)) & false);
    var var_4 = var_1;
    let var_5 = func_4(vec3<bool>(true, true | func_4(func_1(Struct_3(var_0.b.x, var_4.b, Struct_2(vec3<bool>(global0.b, var_4.b, var_4.b), var_4.c.b), global0.d)), -1925f, 1i).b, func_2(countOneBits(vec2<u32>(u_input.c, u_input.c)) >> (_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 16585u), vec2<u32>(u_input.d, u_input.a)) % vec2<u32>(32u))).x), -391f, -var_2.x).c;
    var var_6 = 0u & u_input.a;
    var_0 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(-(~var_2.x) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, u_input.b, u_input.d), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, u_input.d, 4294967295u), vec3<u32>(10460u, u_input.b, u_input.c))) % 32u));
}

