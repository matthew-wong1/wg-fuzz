struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(216f, -461f);

var<private> global1: Struct_1 = Struct_1(vec4<u32>(1u, 1u, 4294967295u, 18993u), 31578u, vec4<i32>(40917i, 7068i, 1i, 1i), vec2<u32>(43449u, 4294967295u));

var<private> global2: Struct_2 = Struct_2(-1i, Struct_1(vec4<u32>(9111u, 47783u, 0u, 0u), 17351u, vec4<i32>(-34073i, 2147483647i, 40363i, -1i), vec2<u32>(31572u, 1u)));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> vec2<bool> {
    global1 = Struct_1(_wgslsmith_mod_vec4_u32(global2.b.a, global2.b.a), 4294967295u, vec4<i32>(-1i) * -(~global1.c), global1.d);
    var var_0 = 1i > (-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, global1.c.x), vec2<i32>(global1.c.x, 40440i)) | 0i);
    var_0 = true;
    var var_1 = Struct_3(vec2<bool>(!(_wgslsmith_mod_u32(4294967295u, 60826u) > global1.b), (0i ^ min(global2.a, u_input.a)) == 1i), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_div_f32(global0.x, global0.x)))) > _wgslsmith_f_op_f32(-global0.x), Struct_2(global2.b.c.x, Struct_1(~global1.a, ~countOneBits(4294967295u), vec4<i32>(-1i, global1.c.x, global1.c.x, u_input.a) & select(global1.c, global2.b.c, vec4<bool>(true, true, false, true)), global1.a.xw)), ~abs(-2147483647i));
    let var_2 = Struct_3(vec2<bool>(!(!all(vec3<bool>(var_1.a.x, var_1.a.x, var_1.b))), all(!select(vec4<bool>(true, var_1.b, var_1.a.x, var_1.a.x), vec4<bool>(var_1.a.x, true, var_1.a.x, var_1.a.x), false))), all(vec3<bool>(select(true, all(vec3<bool>(true, true, var_1.b)), true), var_1.b, true)), var_1.c, i32(-1i) * -2263i);
    return select(select(select(var_2.a, !vec2<bool>(true, var_2.b), var_2.b), vec2<bool>(all(var_1.a), true), vec2<bool>(var_1.b, !(true || var_2.a.x))), !select(select(!var_2.a, vec2<bool>(var_1.a.x, true), true), var_2.a, var_1.b), vec2<bool>(!any(!vec4<bool>(true, var_1.a.x, false, true)), false || !(global0.x < -178f)));
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = Struct_3(func_3(), arg_0, Struct_2(-22000i, Struct_1(select(vec4<u32>(global2.b.a.x, global2.b.b, 51772u, 109739u), global2.b.a, select(vec4<bool>(arg_0, arg_0, true, false), vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0))), ~max(global2.b.b, global2.b.d.x), u_input.b, firstLeadingBit(reverseBits(vec2<u32>(29672u, 39871u))))), -_wgslsmith_dot_vec3_i32(abs(vec3<i32>(0i, 0i, 1i)), global2.b.c.zzy));
    let var_1 = Struct_1(firstLeadingBit(var_0.c.b.a), var_0.c.b.d.x, -global2.b.c, var_0.c.b.a.xw);
    var var_2 = global2.b;
    var var_3 = global1.d.x;
    global0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1170f, -1019f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), all(!vec3<bool>(any(vec4<bool>(true, arg_0, false, var_0.b)), func_3().x, arg_0))));
    return Struct_2(_wgslsmith_dot_vec2_i32(~_wgslsmith_mod_vec2_i32(var_0.c.b.c.yy, vec2<i32>(-13024i, 11888i)), ~vec2<i32>(-1i, -1i)), Struct_1(~(~var_1.a & (vec4<u32>(0u, 6044u, var_1.d.x, global2.b.b) << (var_1.a % vec4<u32>(32u)))), 4294967295u, select(vec4<i32>(54019i, var_0.d << (var_2.a.x % 32u), ~(-1i), u_input.b.x), firstLeadingBit(firstTrailingBit(vec4<i32>(-16987i, u_input.a, u_input.b.x, var_0.c.b.c.x))), vec4<bool>(true, var_0.b && arg_0, !arg_0, !arg_0)), _wgslsmith_mult_vec2_u32(firstLeadingBit(var_0.c.b.a.yx), countOneBits(var_0.c.b.d)) | _wgslsmith_mod_vec2_u32(~vec2<u32>(var_2.d.x, var_0.c.b.a.x), vec2<u32>(17610u, var_2.d.x) << (global1.a.yz % vec2<u32>(32u)))));
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(327f, _wgslsmith_f_op_f32(1164f * arg_1)));
    let var_0 = global1.b;
    global1 = global2.b;
    var var_1 = Struct_3(!vec2<bool>(true | (u_input.b.x <= arg_0), !all(vec4<bool>(false, false, true, true))), !all(vec4<bool>(false, true, true, -379i == global1.c.x)), func_2(!(~1i == global1.c.x)), u_input.b.x);
    let var_2 = global0.x;
    return Struct_1(vec4<u32>(~var_1.c.b.b | 1u, firstTrailingBit(var_1.c.b.a.x), var_1.c.b.a.x, (var_1.c.b.d.x ^ ~var_1.c.b.b) & global2.b.d.x), select(_wgslsmith_mod_u32(global2.b.b, _wgslsmith_div_u32(12178u, ~1u)), ~global2.b.b, ((4668u & global2.b.a.x) & 0u) <= ~(var_1.c.b.b ^ var_1.c.b.d.x)), vec4<i32>(39624i, i32(-1i) * -arg_0, abs(1i), 1i), ~firstLeadingBit(vec2<u32>(14041u, 1u)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: u32) -> Struct_3 {
    global1 = arg_1;
    let var_0 = func_1(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(0i, -2147483647i, 2147483647i, global1.c.x), global1.c ^ u_input.b), vec4<i32>(~arg_0.b.c.x, arg_1.c.x, select(-2147483647i, -1i, false), func_2(true).a)), _wgslsmith_mult_i32(-1i, abs(~(-23948i)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.x, arg_2.x))), arg_2.x)));
    let var_1 = arg_0;
    var var_2 = vec2<u32>(abs(countOneBits(~1u)), ~var_1.b.b) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_div_u32(arg_1.b, _wgslsmith_clamp_u32(37066u, var_0.b, 4294967295u)), _wgslsmith_dot_vec4_u32(~var_1.b.a, abs(global1.a))), global2.b.d) % vec2<u32>(32u));
    let var_3 = 166817u;
    return Struct_3(vec2<bool>(all(vec3<bool>(true, true, true)), true), true, arg_0, ~(-arg_1.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(-(_wgslsmith_div_i32(-34279i, global2.a) & global2.b.c.x), func_1(-22817i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.x, -610f)) - _wgslsmith_f_op_f32(min(-1000f, global0.x))))), global2.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(1049f * 134f), -399f)))), global2.b.b);
    let var_1 = ~(~global1.a);
    let var_2 = select(var_0.b, false, var_0.b) || (global1.b > var_0.c.b.b);
    var var_3 = func_4(var_0.c, func_2(!(!var_2)).b, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(ceil(global0.x)), -1326f))), ~var_1.x & var_0.c.b.d.x).c.b;
    global1 = func_1(u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -230f), -726f))), 1052f));
    var var_4 = func_1(~firstTrailingBit(_wgslsmith_div_i32(_wgslsmith_mod_i32(global2.a, var_0.c.a), 0i)), _wgslsmith_f_op_f32(-global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec3_i32(max(vec3<i32>(global2.a, 3714i, var_0.c.b.c.x), func_2(var_0.a.x).b.c.zwz), global2.b.c.wzy | max(var_3.c.zyy, var_4.c.wwz)), _wgslsmith_add_u32(~4294967295u, var_4.b), -5373i, vec3<f32>(_wgslsmith_f_op_f32(-global0.x), 1f, -178f));
}

