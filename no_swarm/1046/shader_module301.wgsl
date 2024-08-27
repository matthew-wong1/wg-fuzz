struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<u32>(28504u, 25732u), 18425u, 5807u, false);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec3<f32>) -> i32 {
    global0 = Struct_2(max(global0.a, vec2<u32>(27138u, _wgslsmith_dot_vec4_u32(~arg_0.a, arg_0.a))), ~0u, max(u_input.a, _wgslsmith_dot_vec2_u32(~global0.a, firstLeadingBit(vec2<u32>(27694u, arg_0.a.x)))), false);
    global0 = Struct_2(~(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, arg_0.c), ~vec2<u32>(u_input.a, arg_0.a.x)) >> (vec2<u32>(arg_0.c ^ u_input.a, 45166u) % vec2<u32>(32u))), u_input.a, 4294967295u, true);
    let var_0 = _wgslsmith_f_op_f32(-arg_2.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1261f + _wgslsmith_f_op_f32(round(1154f))))), _wgslsmith_f_op_f32(f32(-1f) * -502f), -1000f, 179f)));
    var var_2 = vec4<bool>(arg_0.d.x, true, false, false);
    return reverseBits(countOneBits(abs(_wgslsmith_sub_i32(arg_0.b.x, 2147483647i) ^ -15216i)));
}

fn func_2() -> Struct_1 {
    global0 = Struct_2(countOneBits(global0.a), ~max(reverseBits(~u_input.a), ~_wgslsmith_sub_u32(74005u, 19042u)), _wgslsmith_mod_u32(51565u, u_input.a), false);
    let var_0 = !((_wgslsmith_sub_i32(select(0i, -31348i, false), -2147483647i) >= ~1i) || !select(true, true, true));
    let var_1 = min(countOneBits(1i), 0i);
    return Struct_1(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, ~u_input.a, 1u, u_input.a), ~max(vec4<u32>(u_input.a, 0u, 29180u, 947u), vec4<u32>(u_input.a, u_input.a, 59955u, global0.c))), _wgslsmith_sub_vec2_i32(vec2<i32>(-35321i, var_1), reverseBits(vec2<i32>(var_1, var_1))) ^ (vec2<i32>(-1i) * -vec2<i32>(var_1, -1i)), ~0u, vec3<bool>(-(~var_1) <= _wgslsmith_mod_i32(func_3(Struct_1(vec4<u32>(global0.b, u_input.a, global0.a.x, 1u), vec2<i32>(2147483647i, 33940i), u_input.a, vec3<bool>(var_0, var_0, true)), var_0, vec3<f32>(-268f, -713f, 1000f)), 2147483647i), var_0, false));
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    var var_0 = arg_0;
    let var_1 = Struct_2(vec2<u32>(arg_0.a.x, ~global0.c >> (global0.c % 32u)), 1u, 1u, true);
    global0 = Struct_2(arg_0.a.yx, arg_0.c, _wgslsmith_div_u32(17655u, u_input.a), ~var_0.c < global0.c);
    return Struct_2(vec2<u32>(1u, 66382u), global0.c, ~_wgslsmith_mod_u32(~arg_0.a.x, max(1u, var_1.c)), var_1.d || all(vec3<bool>(true, arg_0.d.x | var_0.d.x, !var_0.d.x)));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> Struct_1 {
    let var_0 = func_4(func_2());
    var var_1 = _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(abs(min(_wgslsmith_clamp_vec2_u32(global0.a, global0.a, global0.a), _wgslsmith_clamp_vec2_u32(var_0.a, vec2<u32>(global0.a.x, 67639u), vec2<u32>(6229u, u_input.a)))), max(_wgslsmith_add_vec2_u32(~global0.a, vec2<u32>(1u, 1u)), _wgslsmith_mult_vec2_u32(~vec2<u32>(130103u, u_input.a), ~var_0.a))), var_0.a);
    var var_2 = Struct_1(select(vec4<u32>(func_2().a.x, min(1u, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, 7741u, global0.a.x, 0u), vec4<u32>(1u, var_0.a.x, 0u, var_0.c)), firstTrailingBit(1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(21909u, 51640u, 34235u, u_input.a) ^ vec4<u32>(0u, var_1.x, global0.c, 10008u), ~vec4<u32>(u_input.a, 0u, var_0.a.x, u_input.a)), vec4<bool>(true, arg_1 == arg_1, all(vec2<bool>(global0.d, global0.d)), true)) >> (func_2().a % vec4<u32>(32u)), vec2<i32>(~arg_1, arg_1), u_input.a, !(!(!vec3<bool>(global0.d, var_0.d, global0.d))));
    var_2 = func_2();
    global0 = var_0;
    return func_2();
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> vec2<f32> {
    var var_0 = _wgslsmith_clamp_i32(min(_wgslsmith_mult_i32((i32(-1i) * -2147483647i) | arg_3, -2147483647i), arg_2.b.x), arg_0, arg_0);
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -153f)));
    var var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 828f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1 + var_1), _wgslsmith_f_op_f32(-var_1))))));
    let var_3 = _wgslsmith_add_u32(global0.a.x, 19395u);
    var var_4 = true;
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1383f, 499f))) - vec2<f32>(var_2.x, var_1)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1123f)), _wgslsmith_f_op_f32(sign(var_2.x)))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(abs(var_2.x))))), vec2<f32>(_wgslsmith_f_op_f32(step(1304f, var_2.x)), var_2.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_5(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 54765i, 1i) >> (vec3<u32>(u_input.a, global0.c, 0u) % vec3<u32>(32u)), vec3<i32>(-65819i, 2147483647i, 1i)), Struct_2(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.b, u_input.a), global0.a, vec2<u32>(0u, u_input.a)), ~0u, _wgslsmith_div_u32(u_input.a, global0.c), global0.d), func_1(vec2<f32>(1f, 1f), firstLeadingBit(25210i)), func_2().b.x)), _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(step(-1315f, -793f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1662f, 561f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1039f, -2909f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1121f, 227f))))))));
    var var_1 = Struct_2(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0 + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), _wgslsmith_f_op_vec2_f32(select(var_0, vec2<f32>(var_0.x, var_0.x), vec2<bool>(true, global0.d))), select(vec2<bool>(global0.d, global0.d), vec2<bool>(false, false), vec2<bool>(global0.d, global0.d))))), ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(2147483647i, 1i, -11921i))).a.yz, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(max(u_input.a, 155909u), 4294967295u), ~_wgslsmith_sub_vec2_u32(global0.a, global0.a)), global0.a), 13514u, any(select(!(!vec3<bool>(false, false, global0.d)), vec3<bool>(global0.d, !global0.d, func_1(var_0, 0i).d.x), func_2().d)));
    var_1 = func_4(func_2());
    var var_2 = func_2();
    var var_3 = _wgslsmith_sub_i32(var_2.b.x << (var_2.c % 32u), abs(abs(var_2.b.x)));
    var_3 = var_2.b.x;
    let var_4 = func_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_0))), 2147483647i);
    var var_5 = ~(12777u << (var_1.b % 32u));
    var_3 = 3188i;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, 1597f) - var_0.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -997f) * _wgslsmith_f_op_f32(-var_0.x))))));
}

