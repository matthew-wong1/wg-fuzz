struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(true, false, true, true), vec2<i32>(39099i, 0i), 1i, 4294967295u, false);

var<private> global2: vec3<bool> = vec3<bool>(false, false, true);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> i32 {
    global0 = Struct_1(!vec4<bool>(global0.c != -2147483647i, any(vec4<bool>(true, global1.e, true, global0.e)), true, global0.e & true), firstLeadingBit(_wgslsmith_add_vec2_i32(firstLeadingBit(global0.b), vec2<i32>(abs(global0.c), max(global0.c, 8001i)))), countOneBits(_wgslsmith_sub_i32(global1.c, i32(-1i) * -global0.c)), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.d, ~0u, abs(4294967295u), 1u), vec4<u32>(_wgslsmith_mult_u32(global0.d, 1u), reverseBits(4294967295u), select(global0.d, 15935u, global2.x), global1.d)) >> (global1.d % 32u), (-(~u_input.a.x) < 60342i) || global2.x);
    global0 = Struct_1(select(!global1.a, !(!vec4<bool>(false, true, global1.a.x, global2.x)), select(select(vec4<bool>(false, true, true, global1.e), vec4<bool>(true, false, true, true), global0.e), vec4<bool>(global0.e & false, all(global1.a.yzx), global0.e, true), -u_input.c < 59720i)), global0.b, global0.b.x, global1.d, true);
    global0 = Struct_1(!vec4<bool>(false, any(!global1.a), true, global0.e), u_input.a.xx, global0.b.x, 0u, global2.x);
    var var_0 = firstLeadingBit(global1.d);
    let var_1 = false;
    return global1.c;
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = reverseBits(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_1.x, global1.b.x, arg_1.x), _wgslsmith_sub_vec4_i32(arg_1, vec4<i32>(0i, 13475i, global1.c, 25090i))), 7797i) >> (vec2<u32>(31624u, ~22330u) % vec2<u32>(32u)));
    return Struct_1(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(global0.e, global2.x, false, global0.e), all(vec4<bool>(global1.a.x, global1.e, arg_0, false))), global0.a, select(!any(vec2<bool>(false, global2.x)), !global0.a.x, all(vec2<bool>(false, global1.a.x)))), -global0.b, _wgslsmith_sub_i32(func_3(), var_0.x) & (abs(arg_1.x) & _wgslsmith_mult_i32(firstTrailingBit(arg_1.x), var_0.x)), u_input.b.x, true);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = firstLeadingBit(_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b, u_input.b << (vec2<u32>(u_input.b.x, arg_1.d) % vec2<u32>(32u)))));
    global1 = arg_2;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1178f, -710f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1028f, -1740f), vec2<f32>(936f, 750f))))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-137f, 1000f), vec2<f32>(_wgslsmith_f_op_f32(-307f * -1027f), _wgslsmith_f_op_f32(step(-2112f, 1911f)))))));
    let var_2 = arg_1;
    global1 = Struct_1(!global0.a, abs(arg_1.b) >> (~select(vec2<u32>(31432u, arg_2.d) | u_input.b, u_input.b, var_1.x > var_1.x) % vec2<u32>(32u)), -64866i, _wgslsmith_mult_u32(0u, min(1u, ~arg_1.d)) << ((~(~u_input.b.x) | abs(_wgslsmith_mod_u32(96480u, var_2.d))) % 32u), !any(select(select(global2.xy, arg_1.a.yy, var_2.a.x), !global0.a.xx, global2.x)));
    return Struct_1(arg_2.a, _wgslsmith_div_vec2_i32(arg_0.yx, global1.b), _wgslsmith_mod_i32(arg_0.x, _wgslsmith_mod_i32(abs(25042i), arg_1.c) | (global0.b.x << (arg_1.d % 32u))), ~44207u, arg_1.a.x);
}

fn func_1(arg_0: bool) -> bool {
    global1 = func_4(-vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.a ^ vec3<i32>(global0.c, 2147483647i, global0.b.x), vec3<i32>(0i, -2147483647i, global0.c)), ~(~global1.b.x), _wgslsmith_mult_i32(_wgslsmith_add_i32(global1.b.x, global1.b.x), _wgslsmith_add_i32(u_input.c, global1.b.x))), func_2(4294967295u >= (global0.d >> (4294967295u % 32u)), ~(-_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, global0.c, 0i, -9975i), vec4<i32>(u_input.c, u_input.a.x, 2147483647i, 2147483647i))), _wgslsmith_mod_vec2_u32(u_input.b, u_input.b)), Struct_1(vec4<bool>(true, !global1.e, true, any(global1.a.zz)), -abs(u_input.a.xz) >> (_wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(global1.d, global1.d)), _wgslsmith_clamp_vec2_u32(u_input.b, vec2<u32>(4294967295u, 4294967295u), vec2<u32>(global0.d, 20434u))) % vec2<u32>(32u)), u_input.c, ~_wgslsmith_div_u32(global0.d & 47189u, 0u), !any(global2.xz)));
    var var_0 = 1u;
    var var_1 = Struct_1(global1.a, select(reverseBits(global0.b), ~vec2<i32>(2147483647i, -2147483647i), global2.xy) | global1.b, firstLeadingBit(_wgslsmith_mod_i32(1i, u_input.c)), global1.d | ~_wgslsmith_clamp_u32(~4294967295u, firstTrailingBit(u_input.b.x), abs(global1.d)), !all(!vec3<bool>(global0.a.x, true, arg_0)));
    global2 = !vec3<bool>(global1.e, arg_0, !(min(u_input.b.x, global0.d) > ~39163u));
    let var_2 = 0i;
    return global0.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!select(global0.a, select(global1.a, vec4<bool>(false, global2.x, false, global2.x), true), any(!global1.a)), vec2<i32>(2147483647i, _wgslsmith_div_i32(u_input.a.x, _wgslsmith_mult_i32(18678i, global0.b.x))) & (vec2<i32>(-1i) * -u_input.a.zy), _wgslsmith_add_i32(max(global0.b.x, 2147483647i), 27184i), 1u, !global2.x);
    var var_1 = var_0;
    global0 = Struct_1(select(vec4<bool>(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(6342i, -1i, global0.b.x)) > 1i, true, func_1(var_0.a.x) | global2.x, !var_1.e), func_4(vec3<i32>(0i, 1i ^ global0.b.x, func_3()), func_4(vec3<i32>(51175i, 1i, -12205i), func_2(true, vec4<i32>(0i, global0.c, 0i, -585i), u_input.b), var_0), Struct_1(vec4<bool>(true, var_1.e, true, var_1.e), global0.b, reverseBits(u_input.c), u_input.b.x, global2.x)).a, vec4<bool>(_wgslsmith_sub_i32(u_input.c, 11905i) > global1.b.x, var_1.a.x, !any(global0.a.zzx), true)), -(min(_wgslsmith_add_vec2_i32(vec2<i32>(var_1.c, 1i), var_1.b), var_1.b) ^ ~abs(vec2<i32>(var_1.b.x, -19077i))), global0.c, 31228u, select(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, 43737u), u_input.b >> (vec2<u32>(global0.d, 0u) % vec2<u32>(32u))) < func_4(u_input.a, func_2(false, vec4<i32>(-7595i, 40661i, u_input.c, var_1.c), vec2<u32>(22990u, 0u)), Struct_1(global1.a, vec2<i32>(u_input.c, u_input.a.x), -1i, var_1.d, true)).d, any(vec4<bool>(var_0.a.x, all(global1.a.xx), global1.a.x, false & var_1.e)), !var_0.a.x));
    var var_2 = func_2(var_0.a.x, ~_wgslsmith_mult_vec4_i32(-select(vec4<i32>(var_1.b.x, 0i, var_1.b.x, global0.c), vec4<i32>(10204i, 3682i, var_1.b.x, -21477i), global2.x), _wgslsmith_mult_vec4_i32(vec4<i32>(global1.b.x, 0i, 8616i, global0.b.x), vec4<i32>(-42169i, 1i, global1.b.x, global0.c)) | vec4<i32>(2147483647i, global1.b.x, var_0.c, -30607i)), u_input.b);
    let var_3 = ~(~(~(abs(vec3<u32>(4294967295u, var_0.d, global0.d)) & abs(vec3<u32>(var_0.d, var_2.d, var_2.d)))));
    var var_4 = func_2(true, _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.c, -14893i, global1.b.x, global0.c), vec4<i32>(-2147483647i, var_1.b.x, global0.c, -1i)), firstTrailingBit(vec4<i32>(-53655i ^ var_2.c, min(2147483647i, -9069i), 2147483647i, -1i))), countOneBits(vec2<u32>(~var_1.d, 53466u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(-1983f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(502f, 767f, 413f, 324f)))))))), _wgslsmith_mult_vec4_u32(vec4<u32>(~global1.d, global0.d, 10972u, _wgslsmith_mult_u32(global0.d, 21698u)) << (vec4<u32>(var_3.x >> (global0.d % 32u), 1u, var_4.d, 4294967295u) % vec4<u32>(32u)), ~(~firstTrailingBit(vec4<u32>(16603u, 1u, 25873u, 1u)))), u_input.a);
}

