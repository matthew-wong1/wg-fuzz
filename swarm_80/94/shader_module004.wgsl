struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(0u), Struct_2(vec4<f32>(1292f, -526f, 1379f, -1051f)), 45906i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = reverseBits(_wgslsmith_sub_u32(~(~u_input.d.x | ~u_input.d.x), arg_0));
    global0 = Struct_3(Struct_1(~26700u), arg_1, abs(max(-2271i, global0.c)));
    var var_1 = 0u;
    let var_2 = vec3<i32>(4766i, _wgslsmith_add_i32(~(-1i), -(~global0.c)), -firstLeadingBit(0i));
    var_1 = var_0;
    return Struct_1(128723u);
}

fn func_3() -> bool {
    return u_input.c != global0.c;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global0.b.a.yy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.a.x, global0.b.a.x))), select(!arg_2.yy, !arg_2.yz, !arg_2.x))) - global0.b.a.xy));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3))))) * _wgslsmith_f_op_f32(-1677f - _wgslsmith_f_op_f32(-var_0.x))) - _wgslsmith_f_op_f32(-arg_3));
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = func_2(96923u, global0.b, global0.b.a);
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(global0.b.a + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global0.b.a, global0.b.a, true))), vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0)), 901f, _wgslsmith_div_f32(689f, -1156f), 1338f))));
    let var_2 = _wgslsmith_f_op_f32(func_4(_wgslsmith_div_i32(_wgslsmith_clamp_i32(2147483647i, -1i, _wgslsmith_dot_vec3_i32(~u_input.a.wxz, ~u_input.a.wyw)), ~select(-12012i, u_input.a.x, any(vec2<bool>(false, true)))), global0.a, select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), func_3(), true), all(vec4<bool>(any(vec4<bool>(false, true, true, false)), false, all(vec4<bool>(true, true, true, true)), true))), _wgslsmith_f_op_f32(f32(-1f) * -156f)));
    var var_3 = 8331i;
    let var_4 = func_2(~_wgslsmith_sub_u32(reverseBits(u_input.b), ~min(var_0.a, 1u)), var_1, _wgslsmith_f_op_vec4_f32(select(var_1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, -276f, _wgslsmith_f_op_f32(f32(-1f) * -692f), -555f)), arg_0 > var_2)));
    return -281f;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<f32>) -> bool {
    global0 = Struct_3(Struct_1(41671u), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, -1000f, arg_2.x, -654f))), -16700i);
    var var_0 = global0.b.a;
    var_0 = arg_2;
    let var_1 = u_input.d.yy << (vec2<u32>(~abs(4294967295u) & countOneBits(~global0.a.a), 1u) % vec2<u32>(32u));
    let var_2 = false | !any(vec3<bool>(true, true, true));
    return select(any(!select(select(vec3<bool>(false, true, var_2), vec3<bool>(var_2, var_2, var_2), true), select(vec3<bool>(true, false, var_2), vec3<bool>(var_2, var_2, var_2), vec3<bool>(var_2, var_2, var_2)), !vec3<bool>(var_2, false, var_2))), !all(vec2<bool>(!var_2, true)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_1(_wgslsmith_dot_vec3_u32(u_input.d, (u_input.d ^ vec3<u32>(u_input.b, 62402u, 2291u)) & (u_input.d << (vec3<u32>(17644u, 79163u, 55507u) % vec3<u32>(32u))))), Struct_2(global0.b.a), _wgslsmith_dot_vec3_i32(min(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, 1i, 1i), vec3<i32>(global0.c, 0i, u_input.c)), vec3<i32>(1i, global0.c, global0.c) << (max(u_input.d, u_input.d) % vec3<u32>(32u))), ~((u_input.a.zxw ^ vec3<i32>(u_input.c, global0.c, global0.c)) >> (reverseBits(vec3<u32>(4294967295u, 30023u, u_input.d.x)) % vec3<u32>(32u)))));
    let var_1 = false;
    var var_2 = func_5(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(global0.b.a.x)), _wgslsmith_f_op_f32(abs(var_0.b.a.x)), _wgslsmith_f_op_f32(select(-341f, -677f, var_1)), 251f))), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.a.x, _wgslsmith_f_op_f32(1252f * global0.b.a.x), -1219f, _wgslsmith_f_op_f32(376f - var_0.b.a.x)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -220f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_0.b.a.x, global0.b.a.x, var_1)))), 1254f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.a.x))))));
    let var_3 = ~firstLeadingBit(_wgslsmith_div_u32(global0.a.a, 1u));
    var var_4 = ~_wgslsmith_dot_vec3_u32(max(_wgslsmith_mod_vec3_u32(abs(u_input.d), vec3<u32>(var_0.a.a, 30511u, u_input.b)), vec3<u32>(1u, 40341u, 61749u << (0u % 32u))), ~min(~vec3<u32>(24549u, var_3, var_0.a.a), ~vec3<u32>(1u, 58872u, 51972u)));
    var_4 = u_input.d.x;
    var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~u_input.c, ~(-55177i), var_0.c, -2147483647i), vec3<u32>(global0.a.a, ~(~var_0.a.a), _wgslsmith_mult_u32(~global0.a.a, ~1u)) & vec3<u32>(firstLeadingBit(firstLeadingBit(4912u)), ~(~var_0.a.a), _wgslsmith_clamp_u32(34669u << (var_0.a.a % 32u), max(global0.a.a, global0.a.a), u_input.b)), reverseBits(select(vec2<i32>(_wgslsmith_mod_i32(2147483647i, 6985i), _wgslsmith_dot_vec4_i32(u_input.a, u_input.a)), _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global0.c, var_0.c), vec2<i32>(var_0.c, -2147483647i)), vec2<i32>(u_input.c, u_input.c)), !(!var_1))), vec4<f32>(_wgslsmith_f_op_f32(func_4(reverseBits(-21116i & global0.c), func_2(1u, Struct_2(vec4<f32>(var_0.b.a.x, 1263f, 1000f, var_0.b.a.x)), _wgslsmith_f_op_vec4_f32(floor(global0.b.a))), vec4<bool>(false, var_1, !var_1, select(var_1, var_1, var_1)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global0.b.a.x, -769f, true)))))), var_0.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-770f))), 707f));
}

