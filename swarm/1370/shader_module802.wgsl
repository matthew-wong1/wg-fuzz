struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 12>;

var<private> global1: Struct_3;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = vec2<bool>(global1.b.a, !global1.b.a);
    let var_1 = _wgslsmith_dot_vec2_i32(firstTrailingBit(_wgslsmith_mod_vec2_i32(-(vec2<i32>(u_input.b, -2147483647i) | vec2<i32>(global1.b.b, u_input.b)), (vec2<i32>(u_input.b, global1.b.b) >> (u_input.a % vec2<u32>(32u))) >> (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u)))), vec2<i32>(u_input.b, 7053i));
    global1 = Struct_3(global1.a, global1.b);
    let var_2 = vec2<i32>(~u_input.b, -32842i);
    global0 = array<vec3<f32>, 12>();
    return -1050f;
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(func_3());
    let var_1 = Struct_1(vec4<u32>(~(0u | u_input.c), _wgslsmith_div_u32(u_input.c, 1u), 38169u, _wgslsmith_add_u32(1u, _wgslsmith_add_u32(global1.a, global1.a))) ^ select(countOneBits(vec4<u32>(56978u, global1.a, 54657u, global1.a) | vec4<u32>(global1.a, global1.a, 4294967295u, 6129u)), abs(~vec4<u32>(u_input.d.x, global1.a, global1.a, u_input.a.x)), select(vec4<bool>(true, global1.b.a, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, global1.b.a, true, false))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-2609f)))));
    var_0 = _wgslsmith_f_op_f32(func_3());
    let var_3 = Struct_3(var_1.a.x, Struct_2(true, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(global1.b.b, -1i), -89142i, u_input.b)));
    return Struct_4(Struct_2(true, -48724i), var_1);
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_4) -> Struct_3 {
    var var_0 = vec2<bool>(global1.b.a, all(!select(select(vec2<bool>(false, true), vec2<bool>(global1.b.a, true), vec2<bool>(global1.b.a, global1.b.a)), !vec2<bool>(global1.b.a, arg_2.a.a), false)));
    var var_1 = !(!(!vec2<bool>(global1.b.a, true)));
    let var_2 = vec4<u32>(_wgslsmith_dot_vec2_u32(~arg_2.b.a.yy, firstLeadingBit(_wgslsmith_clamp_vec2_u32(arg_2.b.a.zx, vec2<u32>(64852u, global1.a), min(u_input.a, vec2<u32>(arg_0.x, 4294967295u))))), ~_wgslsmith_mult_u32(global1.a, arg_2.b.a.x) | (((arg_2.b.a.x | u_input.d.x) | abs(global1.a)) << (_wgslsmith_clamp_u32(u_input.d.x, arg_0.x, arg_0.x) % 32u)), global1.a, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, arg_2.b.a.x), vec2<u32>(global1.a | global1.a, arg_2.b.a.x)), 44319u));
    var_0 = !vec2<bool>(all(!vec4<bool>(global1.b.a, false, global1.b.a, false)), !var_1.x);
    var var_3 = vec2<u32>(_wgslsmith_dot_vec4_u32(~(vec4<u32>(arg_2.b.a.x, 34386u, arg_2.b.a.x, 35949u) >> (arg_2.b.a % vec4<u32>(32u))), ~vec4<u32>(104278u, 90312u, 1u, 0u) ^ (arg_2.b.a | var_2)), 1u ^ countOneBits(~global1.a)) | max(arg_0, max(vec2<u32>(arg_0.x, var_2.x), ~vec2<u32>(global1.a, u_input.d.x)) >> (vec2<u32>(~42506u, var_2.x) % vec2<u32>(32u)));
    return Struct_3(func_2().b.a.x, Struct_2(true, global1.b.b));
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    let var_0 = Struct_2(all(vec4<bool>(true, true, !global1.b.a, true)) & any(select(vec4<bool>(false, true, true, arg_0.b.a), vec4<bool>(arg_0.b.a, false, true, arg_0.b.a), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, global1.b.a, true), vec4<bool>(false, arg_0.b.a, true, global1.b.a)))), func_4(vec2<u32>(reverseBits(arg_0.a), ~26953u), -u_input.b, Struct_4(arg_0.b, func_2().b)).b.b);
    global0 = array<vec3<f32>, 12>();
    let var_1 = Struct_4(arg_0.b, func_2().b);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(330f))), 565f) - vec2<f32>(1f, 1f)));
    let var_3 = var_1;
    return func_2().b;
}

fn func_6(arg_0: Struct_1) -> Struct_2 {
    let var_0 = func_4(select(vec2<u32>(0u, func_2().b.a.x), vec2<u32>(countOneBits(1u), ~_wgslsmith_mod_u32(55384u, 1u)), select(vec2<bool>(true, true), vec2<bool>(global1.b.a == global1.b.a, global1.b.a), vec2<bool>(!global1.b.a, any(vec4<bool>(true, global1.b.a, global1.b.a, false))))), 8421i, Struct_4(global1.b, arg_0));
    let var_1 = i32(-1i) * -(~(i32(-1i) * -1i));
    global1 = func_4(vec2<u32>(firstTrailingBit(global1.a), firstTrailingBit(19099u)), _wgslsmith_clamp_i32(1i, -11758i, -1i), Struct_4(Struct_2(true, -2147483647i), arg_0));
    global1 = var_0;
    let var_2 = func_2();
    return func_4(u_input.a, ~_wgslsmith_div_i32(-28044i, 8837i), var_2).b;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: vec2<bool>, arg_3: vec2<u32>) -> bool {
    let var_0 = Struct_3(~_wgslsmith_sub_u32(min(_wgslsmith_add_u32(global1.a, 1u), ~44426u), ~_wgslsmith_dot_vec3_u32(arg_1.zxx, arg_1.xwx)), func_6(func_5(func_4(arg_1.xw, -8332i, func_2()))));
    var var_1 = !select(select(!vec4<bool>(arg_2.x, true, arg_2.x, true), select(select(vec4<bool>(var_0.b.a, true, global1.b.a, false), vec4<bool>(false, true, global1.b.a, var_0.b.a), vec4<bool>(global1.b.a, true, false, false)), vec4<bool>(true, arg_2.x, arg_2.x, true), !vec4<bool>(false, var_0.b.a, true, false)), any(vec2<bool>(arg_2.x, true))), select(select(select(vec4<bool>(global1.b.a, var_0.b.a, false, false), vec4<bool>(true, arg_2.x, false, arg_2.x), false), select(vec4<bool>(var_0.b.a, false, global1.b.a, false), vec4<bool>(true, var_0.b.a, var_0.b.a, global1.b.a), false), true), !vec4<bool>(true, false, var_0.b.a, true), true), vec4<bool>(true, global1.b.a, global1.b.a, all(select(vec4<bool>(global1.b.a, false, false, global1.b.a), vec4<bool>(false, true, var_0.b.a, true), vec4<bool>(arg_2.x, true, global1.b.a, true)))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-470f))))), -1815f, _wgslsmith_f_op_f32(abs(911f)));
    var_1 = !(!(!select(select(vec4<bool>(var_0.b.a, var_1.x, true, var_0.b.a), vec4<bool>(true, var_0.b.a, false, global1.b.a), vec4<bool>(false, var_1.x, var_0.b.a, arg_2.x)), select(vec4<bool>(var_0.b.a, true, false, var_0.b.a), vec4<bool>(global1.b.a, global1.b.a, true, false), vec4<bool>(false, var_0.b.a, true, false)), !vec4<bool>(arg_2.x, var_0.b.a, global1.b.a, true))));
    var var_3 = var_0.b.b;
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~u_input.d);
    var var_1 = func_1(_wgslsmith_sub_vec2_i32(vec2<i32>(~(~15972i), _wgslsmith_add_i32(0i, firstTrailingBit(-4438i))), vec2<i32>(u_input.b | _wgslsmith_mod_i32(-68128i, u_input.b), -_wgslsmith_mod_i32(global1.b.b, 3183i))), firstLeadingBit(vec4<u32>(29642u, ~0u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.d.x, 111020u, 4294967295u), 8386u), ~u_input.c)), vec2<bool>(true, all(!vec3<bool>(false, false, global1.b.a))), vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 4294967295u, var_0.x), vec3<u32>(1u, 7797u, 1u)) | _wgslsmith_clamp_u32(~global1.a, ~0u, 53099u), _wgslsmith_mod_u32(~var_0.x >> (~global1.a % 32u), 49175u)));
    let var_2 = global1.b;
    var_1 = true;
    global1 = func_4((select(u_input.d, u_input.a | vec2<u32>(u_input.a.x, 4294967295u), global1.b.a) ^ vec2<u32>(global1.a, _wgslsmith_add_u32(u_input.d.x, 0u))) >> (countOneBits(u_input.d) % vec2<u32>(32u)), u_input.b, func_2());
    global0 = array<vec3<f32>, 12>();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(795f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(842f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3, var_3);
}

