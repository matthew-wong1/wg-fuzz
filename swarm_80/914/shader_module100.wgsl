struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> bool {
    global0 = _wgslsmith_mult_u32(26926u, max(u_input.d, 1u));
    let var_0 = Struct_3(true, true);
    var var_1 = !any(select(vec2<bool>(false, all(vec2<bool>(true, true))), vec2<bool>(true, true), vec2<bool>(true, true)));
    return var_0.a;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = max(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c.zzz, u_input.c.wyw), u_input.c.yxx ^ vec3<u32>(u_input.d, 4294967295u, u_input.d)), u_input.c.zxw), vec3<u32>(1u, 28533u, 0u)), u_input.c.wzw);
    global0 = ~(~firstLeadingBit(1u));
    var_0 = reverseBits(max(_wgslsmith_mult_vec3_u32(u_input.c.wxy, reverseBits(vec3<u32>(4294967295u, 4294967295u, var_0.x))), abs(max(vec3<u32>(var_0.x, var_0.x, u_input.c.x), ~vec3<u32>(var_0.x, 0u, 26676u)))));
    var_0 = ~countOneBits(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, 27716u), u_input.c.xwy));
    var_0 = vec3<u32>(firstTrailingBit(var_0.x), u_input.c.x, max(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(14499u, u_input.d), ~vec2<u32>(1u, u_input.d))), var_0.x));
    return Struct_1(!(!select(select(vec3<bool>(arg_2.x, true, true), vec3<bool>(true, arg_2.x, arg_2.x), vec3<bool>(false, arg_0, true)), arg_1.a, select(arg_2.wxy, arg_2.wwy, arg_0))), arg_1.b);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: bool, arg_3: i32) -> Struct_2 {
    var var_0 = all(vec2<bool>(!(!arg_0.x), arg_0.x));
    global0 = 61983u;
    var var_1 = _wgslsmith_mod_u32(u_input.d, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.c.x) << (~vec2<u32>(arg_1.x, arg_1.x) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.c.yz, vec2<u32>(arg_1.x, u_input.c.x)), arg_1.x))));
    global0 = u_input.c.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1393f, 777f, 2007f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1079f, 479f, 1000f, 130f) - vec4<f32>(-594f, 588f, -2079f, -621f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(786f, 301f, 587f, -394f) - vec4<f32>(-1046f, -472f, 1000f, 521f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1494f, -545f, 402f, 601f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-556f, 1510f), -105f, _wgslsmith_f_op_f32(f32(-1f) * -849f), _wgslsmith_f_op_f32(abs(-494f))))));
    return Struct_2(func_3(true, Struct_1(vec3<bool>(arg_2, true, true), u_input.e.x), vec4<bool>(func_2(), arg_2, _wgslsmith_f_op_f32(select(570f, -293f, false)) <= -269f, arg_2)), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, -400f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -194f) - _wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, 752f) + _wgslsmith_f_op_f32(floor(604f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), -1000f))), -2126f), -countOneBits(-(-1i >> (u_input.d % 32u))), abs(arg_1.x), 7639u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false)), true, ~u_input.c.x <= (19765u << (u_input.d % 32u))), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, firstTrailingBit(u_input.d), u_input.d), ~(countOneBits(vec3<u32>(u_input.d, u_input.d, 1u)) << (~vec3<u32>(4806u, u_input.d, u_input.d) % vec3<u32>(32u)))), true, _wgslsmith_mult_i32(_wgslsmith_add_i32(-u_input.a, -1i), i32(-1i) * -(~u_input.e.x)));
    let var_1 = Struct_2(Struct_1(!vec3<bool>(!var_0.a.a.x, var_0.a.a.x, var_0.a.a.x), ~(-8709i)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-624f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.b.x, 1254f))), 2249f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, -764f), vec4<f32>(var_0.b.x, -658f, var_0.b.x, var_0.b.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1597f, 104f, 1196f, var_0.b.x))))), -abs(u_input.b), u_input.c.x, _wgslsmith_mult_u32(_wgslsmith_mod_u32(var_0.e ^ ~var_0.e, _wgslsmith_div_u32(abs(4294967295u), abs(53994u))), var_0.e));
    let var_2 = Struct_3((var_0.a.a.x && var_0.a.a.x) || var_1.a.a.x, select(var_0.a.a.x, !any(func_3(true, var_1.a, vec4<bool>(var_1.a.a.x, var_0.a.a.x, true, var_0.a.a.x)).a), var_1.a.a.x & false));
    var var_3 = _wgslsmith_f_op_f32(-func_1(var_0.a.a, vec3<u32>(_wgslsmith_mult_u32(reverseBits(var_1.d), _wgslsmith_clamp_u32(u_input.c.x, 0u, 1u)), func_1(!vec3<bool>(var_0.a.a.x, var_0.a.a.x, true), firstTrailingBit(vec3<u32>(var_1.e, 0u, 28082u)), all(vec4<bool>(true, var_2.b, true, var_1.a.a.x)), _wgslsmith_mod_i32(var_1.c, u_input.a)).e, var_1.d), true, abs(i32(-1i) * -1i)).b.x);
    let var_4 = var_0.b.x;
    var var_5 = -(vec4<i32>(firstTrailingBit(max(var_0.a.b, var_0.c)), u_input.b, _wgslsmith_add_i32(abs(-65051i), var_1.c | var_0.c), _wgslsmith_mult_i32(~47102i, func_3(false, var_0.a, vec4<bool>(true, var_0.a.a.x, true, var_1.a.a.x)).b)) ^ vec4<i32>(~var_1.a.b, var_1.c, var_1.a.b << (_wgslsmith_dot_vec4_u32(vec4<u32>(6100u, u_input.d, var_1.d, 0u), vec4<u32>(u_input.d, 1u, 23922u, 4294967295u)) % 32u), abs(var_0.a.b)));
    var_3 = func_1(!var_0.a.a, _wgslsmith_div_vec3_u32(vec3<u32>(~(~83775u), func_1(func_3(false, var_0.a, vec4<bool>(true, var_0.a.a.x, true, var_1.a.a.x)).a, abs(u_input.c.zzz), !var_2.a, u_input.a | 2147483647i).d, u_input.c.x), u_input.c.xxx), any(select(vec4<bool>(true, !var_0.a.a.x, func_1(var_1.a.a, u_input.c.zxy, false, var_1.c).a.a.x, true), select(vec4<bool>(false, var_2.a, var_1.a.a.x, var_1.a.a.x), select(vec4<bool>(var_2.a, false, var_1.a.a.x, false), vec4<bool>(var_0.a.a.x, var_2.b, var_1.a.a.x, true), var_1.a.a.x), vec4<bool>(var_2.b, false, var_2.b, var_1.a.a.x)), true)), -min(-15966i & u_input.e.x, _wgslsmith_add_i32(40023i, var_5.x)) << (var_1.d % 32u)).b.x;
    let var_6 = ~abs(u_input.c.ww);
    var var_7 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.c | _wgslsmith_mod_i32(1i, 25129i), ~var_6.x);
}

