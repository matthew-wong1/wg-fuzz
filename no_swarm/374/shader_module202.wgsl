struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<bool>,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
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

var<private> global0: Struct_2;

var<private> global1: u32 = 7160u;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> f32 {
    var var_0 = ~(~vec4<u32>(abs(46515u), _wgslsmith_div_u32(4294967295u, global0.c), max(global0.c << (35857u % 32u), _wgslsmith_clamp_u32(global0.c, global0.c, global0.c)), _wgslsmith_mult_u32(global0.c, abs(4294967295u))));
    global0 = Struct_2(global0.a, !global0.b, 7598u);
    let var_1 = vec4<u32>(_wgslsmith_dot_vec4_u32(abs(~(~vec4<u32>(var_0.x, global0.c, var_0.x, 1u))), ~(~(~vec4<u32>(10224u, 1u, global0.c, var_0.x)))), ~((_wgslsmith_dot_vec3_u32(var_0.wzx, vec3<u32>(4247u, 13002u, var_0.x)) & max(34001u, global0.c)) & (113468u | global0.c)), ~(~1u), 1u);
    var var_2 = Struct_1(reverseBits(-3678i), global0.a.b);
    var_2 = global0.a;
    return 1973f;
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    let var_0 = true;
    global0 = Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(arg_0.yyw, arg_0.yxy), 25053u >= (global0.c & (29710u ^ global0.c))), (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -189f)) > _wgslsmith_f_op_f32(func_3())) & global0.b, 58486u);
    let var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-240f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-542f + 1163f), _wgslsmith_f_op_f32(f32(-1f) * -753f)))))), _wgslsmith_f_op_f32(-1072f + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1093f, 286f)))), _wgslsmith_f_op_f32(min(321f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -526f), -341f))));
    var var_2 = Struct_2(global0.a, all(select(select(select(vec4<bool>(true, global0.b, global0.b, var_0), vec4<bool>(false, var_0, false, var_0), global0.a.b), !vec4<bool>(true, var_0, global0.a.b, false), var_0), vec4<bool>(global0.b, global0.b, var_0, false), any(select(vec2<bool>(var_0, false), vec2<bool>(var_0, global0.b), var_0)))), global0.c);
    global0 = Struct_2(var_2.a, !global0.b & true, global0.c);
    return Struct_2(global0.a, all(select(!vec4<bool>(global0.b, global0.b, true, var_2.a.b), !vec4<bool>(true, false, false, var_0), !(!vec4<bool>(var_2.a.b, false, var_2.b, var_2.a.b)))), 1u);
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    global0 = func_2(abs(-(~vec4<i32>(-8776i, arg_0.a, global0.a.a, 166i))) & -max(vec4<i32>(arg_0.a, -2147483647i, 0i, 0i), _wgslsmith_mod_vec4_i32(vec4<i32>(global0.a.a, global0.a.a, 1i, -45310i), vec4<i32>(u_input.a.x, global0.a.a, -31789i, arg_0.a))));
    var var_0 = vec4<bool>(!(!global0.b), global0.b, !func_2(max(min(vec4<i32>(1i, -2147483647i, 0i, u_input.a.x), vec4<i32>(arg_0.a, u_input.a.x, -33489i, 2147483647i)), vec4<i32>(1i, u_input.a.x, arg_0.a, 2147483647i))).a.b, !any(!select(vec2<bool>(global0.b, true), vec2<bool>(true, global0.a.b), false)));
    let var_1 = vec2<bool>(true, arg_0.b);
    global1 = max(_wgslsmith_mult_u32(11668u, countOneBits(1u)), ~(~global0.c));
    var var_2 = abs(vec2<u32>(_wgslsmith_clamp_u32(global0.c, max(58991u, global0.c), 0u), global0.c | (~global0.c << (abs(52056u) % 32u))));
    return Struct_3(arg_0, func_2(vec4<i32>(~_wgslsmith_sub_i32(arg_0.a, 1i), -11425i, firstTrailingBit(~70755i), arg_0.a)), vec2<bool>(true, false), func_2(~(~select(vec4<i32>(u_input.a.x, 0i, u_input.a.x, -2147483647i), vec4<i32>(-1i, 1i, -45011i, -2147483647i), vec4<bool>(true, false, false, var_0.x)))).a, firstTrailingBit(var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.b;
    var var_1 = func_1(Struct_1(u_input.a.x, any(vec3<bool>(false, !global0.b, true))));
    let var_2 = func_2(_wgslsmith_clamp_vec4_i32(~firstTrailingBit(vec4<i32>(-1i, -1i, u_input.a.x, 1i)), abs(~(vec4<i32>(14018i, global0.a.a, -71723i, 37861i) & vec4<i32>(global0.a.a, 37423i, -28518i, global0.a.a))), ~(~(-vec4<i32>(1i, 79419i, u_input.a.x, 1i))))).a;
    global0 = Struct_2(Struct_1(~_wgslsmith_mult_i32(~(-2147483647i), var_2.a), var_2.b), var_1.b.b, max(1u, _wgslsmith_sub_u32(46215u << (1u % 32u), global0.c)));
    let var_3 = func_1(func_2(abs(~(vec4<i32>(global0.a.a, var_2.a, global0.a.a, global0.a.a) << (vec4<u32>(var_1.b.c, 77147u, var_1.e, var_1.e) % vec4<u32>(32u))))).a).b.a;
    global0 = Struct_2(func_1(func_2(vec4<i32>(2147483647i, firstLeadingBit(var_1.b.a.a), ~var_1.d.a, 37972i << (global0.c % 32u))).a).a, global0.b, ~24096u);
    var var_4 = func_1(Struct_1(min(countOneBits(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a, 10584i, -1i, var_1.d.a), _wgslsmith_sub_vec4_i32(vec4<i32>(var_2.a, var_3.a, var_3.a, 0i), vec4<i32>(-1i, u_input.a.x, u_input.a.x, -5277i)))), !func_2(vec4<i32>(-43743i, 2147483647i, 22803i, -5440i)).a.b));
    let var_5 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(func_2(_wgslsmith_mod_vec4_i32(abs(~vec4<i32>(var_2.a, 1i, var_1.b.a.a, 1i)), max(abs(vec4<i32>(0i, -18325i, 2147483647i, 0i)), vec4<i32>(var_2.a, var_3.a, 0i, -42346i)))).a.a, 57554u);
}

