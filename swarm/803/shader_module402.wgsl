struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: bool,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_3 = Struct_3(vec4<f32>(932f, -859f, 1326f, -931f), vec3<f32>(584f, 1037f, 408f));

var<private> global2: array<vec4<u32>, 4> = array<vec4<u32>, 4>(vec4<u32>(1u, 4294967295u, 4294967295u, 55188u), vec4<u32>(62608u, 4294967295u, 61678u, 4294967295u), vec4<u32>(1u, 630u, 17158u, 1u), vec4<u32>(86400u, 0u, 1u, 52018u));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_4, arg_3: vec2<u32>) -> bool {
    let var_0 = arg_2.e;
    let var_1 = Struct_1(arg_2.d.c && global0.d.x, 0i, true, arg_2.d.d, max(-arg_2.d.e, arg_2.c ^ -_wgslsmith_mult_i32(arg_2.d.b, -21665i)));
    let var_2 = false;
    let var_3 = firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(var_1.e, var_1.b), _wgslsmith_sub_i32(0i, -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, 19700i, arg_2.d.e), vec3<i32>(55208i, arg_2.c, var_1.b))), 1i >> (~arg_3.x % 32u), -global0.b ^ min(global0.e, global0.e)), vec3<i32>(~_wgslsmith_clamp_i32(global0.e, -31581i, -2147483647i), -(~(-2147483647i)), -_wgslsmith_dot_vec2_i32(arg_2.a, vec2<i32>(arg_2.d.e, var_1.b)))));
    let var_4 = ~min(_wgslsmith_mod_i32(1i, _wgslsmith_clamp_i32(global0.e, 1i, -4584i) ^ 1i), _wgslsmith_dot_vec3_i32(abs(-var_3), ~vec3<i32>(u_input.e, 45199i, 37396i)));
    return true;
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: bool, arg_3: bool) -> Struct_1 {
    global0 = Struct_1(all(vec2<bool>(true | (54026u >= u_input.d.x), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, 2081f, -1369f, global1.a.x)), -1580f, Struct_4(vec2<i32>(u_input.e, arg_0), 21487u, 0i, Struct_1(arg_3, 11147i, false, vec4<bool>(false, false, false, true), 16606i), false), firstLeadingBit(vec2<u32>(1940u, 1u))))), select(u_input.c, 24023i, false), arg_3, !(!(!select(global0.d, global0.d, global0.c))), reverseBits(-2147483647i) & (_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, u_input.e), vec2<i32>(u_input.c, u_input.c)) >> (63380u % 32u)));
    global2 = array<vec4<u32>, 4>();
    var var_0 = Struct_3(arg_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.a.x, global1.b.x, global1.b.x))))) - global1.a.yxy));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - _wgslsmith_f_op_f32(floor(-1769f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.b.x)) + _wgslsmith_f_op_f32(-var_0.a.x))))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -730f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1635f)))))));
    return Struct_1(!arg_3, _wgslsmith_mod_i32(18005i, -28620i | firstTrailingBit(-1i)) ^ global0.e, var_1.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x))), vec4<bool>(all(!select(global0.d, global0.d, global0.d)), global0.e < (4042i & global0.b), true, arg_3), arg_0);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global2 = array<vec4<u32>, 4>();
    var var_0 = _wgslsmith_f_op_f32(-global1.a.x);
    let var_1 = !(!(!vec3<bool>(-7049i != global0.e, !arg_0.a, any(global0.d.ww))));
    var var_2 = func_3(-1i >> (u_input.b % 32u), _wgslsmith_f_op_vec4_f32(trunc(global1.a)), !all(!arg_0.d), false);
    global0 = arg_0;
    return Struct_1(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.b.x)) + -1063f) > -495f), 9590i, !any(select(vec2<bool>(global0.a, var_1.x), !arg_0.d.yz, arg_0.c)), global0.d, select(_wgslsmith_dot_vec2_i32((vec2<i32>(38666i, arg_0.b) | vec2<i32>(var_2.e, 2147483647i)) | -vec2<i32>(-47394i, var_2.e), vec2<i32>(firstLeadingBit(8802i), arg_0.e)), abs(~u_input.c), true));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    let var_0 = reverseBits(firstLeadingBit(vec4<i32>(_wgslsmith_div_i32(global0.e, arg_2.a.e), _wgslsmith_sub_i32(-23481i, global0.b), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.a.e, 28386i), vec2<i32>(arg_2.a.b, arg_2.a.b)), 80829i)) | firstTrailingBit(vec4<i32>(_wgslsmith_sub_i32(arg_3.a.b, -1i), -1i | u_input.e, -global0.b, 62042i >> (arg_0.x % 32u))));
    var var_1 = Struct_4(vec2<i32>(-1i, arg_2.a.e), u_input.d.x, select(arg_3.a.b, global0.e, all(vec3<bool>(global0.d.x, global0.c, true))), func_4(func_4(func_3(~arg_2.a.b, arg_3.b, false || arg_2.c, arg_1.x <= arg_2.e.x))), false);
    let var_2 = Struct_1(false, arg_2.a.b, global0.c, select(!(!global0.d), func_3(var_1.d.b, global1.a, !(!var_1.d.c), arg_2.a.d.x).d, select(!(!arg_2.a.d), !vec4<bool>(arg_2.c, true, arg_2.a.c, arg_3.a.a), global0.d)), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(countOneBits(var_0.wxx | vec3<i32>(arg_3.a.b, u_input.c, -15923i)), ~firstTrailingBit(var_0.zww)), countOneBits(global0.b)));
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.e.x, arg_1.x))), arg_2.e.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1355f, 742f, arg_1.x, 1018f)))))), vec3<f32>(_wgslsmith_f_op_f32(trunc(592f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-914f, arg_1.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -204f))));
    let var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_3.b.x, -909f), 812f), _wgslsmith_f_op_f32(-var_3.a.x)));
    return func_4(var_1.d);
}

fn func_1() -> u32 {
    global2 = array<vec4<u32>, 4>();
    global0 = func_5(u_input.a.xzy, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global1.b.yz))), Struct_2(func_4(func_3(1i, global1.a, func_2(vec4<f32>(-669f, -420f, global1.b.x, -589f), global1.a.x, Struct_4(vec2<i32>(2147483647i, -28061i), u_input.a.x, global0.b, Struct_1(false, 18567i, global0.c, global0.d, global0.b), global0.d.x), u_input.a.xy), any(global0.d))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-130f, global1.a.x, 1000f, global1.b.x), global1.a, any(global0.d.wzz))) + global1.a), func_4(func_4(func_3(global0.b, vec4<f32>(global1.a.x, 1888f, global1.b.x, global1.b.x), true, false))).a, u_input.a.wxy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, global1.b.x)), vec2<f32>(716f, global1.b.x), !vec2<bool>(true, global0.c))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global1.a.zz))))), Struct_2(func_4(func_3(select(global0.e, -1i, false), vec4<f32>(1159f, 905f, -868f, -581f), global0.c | global0.a, global0.a != global0.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, -1000f, global1.b.x, -1000f))))), !(false | any(vec4<bool>(global0.c, true, true, global0.c))), vec3<u32>(countOneBits(u_input.d.x << (u_input.b % 32u)), u_input.a.x, 1u), vec2<f32>(-501f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.b.x)) - global1.a.x))));
    var var_0 = u_input.b;
    var var_1 = _wgslsmith_mod_vec3_u32(select(_wgslsmith_div_vec3_u32(vec3<u32>(68747u, u_input.a.x, u_input.a.x) ^ vec3<u32>(4294967295u, 1u, 4294967295u), u_input.a.zzx), abs(abs(u_input.a.wwx)), global0.d.x), ~u_input.a.xzx);
    let var_2 = _wgslsmith_add_i32(global0.b ^ (70613i | min(global0.e, 2262i & global0.b)), _wgslsmith_mult_i32(~(-2147483647i) ^ _wgslsmith_div_i32(30862i, abs(u_input.e)), _wgslsmith_mult_i32(~global0.e, -15380i) << (var_1.x % 32u)));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = func_4(Struct_1(true, -2147483647i, any(func_5(vec3<u32>(var_0, 0u, 4294967295u), vec2<f32>(global1.a.x, global1.a.x), Struct_2(Struct_1(global0.c, 0i, global0.c, global0.d, u_input.e), vec4<f32>(1000f, global1.b.x, 160f, global1.a.x), global0.c, vec3<u32>(4294967295u, 4294967295u, var_0), vec2<f32>(global1.a.x, global1.a.x)), Struct_2(Struct_1(global0.a, 41386i, global0.d.x, vec4<bool>(global0.c, global0.d.x, true, true), u_input.c), vec4<f32>(global1.b.x, -279f, global1.a.x, global1.a.x), true, u_input.a.zxw, vec2<f32>(global1.a.x, global1.b.x))).d.xw), global0.d, _wgslsmith_mult_i32(_wgslsmith_sub_i32(global0.b, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.e, global0.b, 2512i, u_input.e), vec4<i32>(-2147483647i, u_input.e, 2147483647i, -1i))), -reverseBits(u_input.e))));
    let var_1 = false;
    global1 = Struct_3(global1.a, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(global1.b, _wgslsmith_div_vec3_f32(global1.a.wxx, vec3<f32>(global1.a.x, -729f, global1.b.x)))))), global1.b)));
    global1 = Struct_3(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-994f, 1783f, var_1)))), global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -374f)), _wgslsmith_f_op_f32(-275f - _wgslsmith_f_op_f32(f32(-1f) * -298f))))), global1.a.xwx);
    let var_2 = func_3(-reverseBits(u_input.c), _wgslsmith_f_op_vec4_f32(step(global1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a)))), global0.c, false).c;
    var var_3 = 2033u;
    var var_4 = 36439i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global1.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global1.a.x, -1067f)), _wgslsmith_div_f32(global1.a.x, 1304f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-159f - _wgslsmith_f_op_f32(max(global1.a.x, -2481f))), global1.a.x)), -1045f, ~(-vec3<i32>(u_input.c << (var_0 % 32u), global0.e | -1i, -u_input.c)));
}

