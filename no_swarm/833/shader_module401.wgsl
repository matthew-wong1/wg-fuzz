struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(18432u, 15796u, 0u, 6403u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    global0 = vec4<u32>(global0.x, global0.x, reverseBits(~62804u), _wgslsmith_div_u32(global0.x, abs(~4294967295u)));
    global0 = ~abs(_wgslsmith_mult_vec4_u32(max(vec4<u32>(4437u, global0.x, 58028u, 1u), vec4<u32>(14587u, 16698u, global0.x, 0u)) >> (vec4<u32>(global0.x, global0.x, 1u, 27002u) % vec4<u32>(32u)), firstTrailingBit(min(vec4<u32>(global0.x, global0.x, 100183u, 0u), vec4<u32>(1u, 71630u, 4294967295u, global0.x)))));
    let var_0 = ~(vec4<u32>(global0.x, select(5852u, 14976u, arg_0.x & false), _wgslsmith_clamp_u32(~13007u, _wgslsmith_add_u32(global0.x, global0.x), abs(global0.x)), _wgslsmith_add_u32(global0.x, 0u)) & select(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, global0.x, 4294967295u, global0.x) | vec4<u32>(4294967295u, global0.x, global0.x, 60925u), vec4<u32>(4294967295u, 34021u, global0.x, global0.x)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global0.x, 0u, global0.x), vec4<u32>(global0.x, global0.x, global0.x, 4294967295u)), select(vec4<bool>(true, true, false, true), !vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), !vec4<bool>(true, true, true, arg_0.x))));
    global0 = ~(~(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0.x, var_0.x, var_0.x, 21482u), ~var_0, ~vec4<u32>(4294967295u, 4294967295u, var_0.x, var_0.x))));
    var var_1 = Struct_2(min(_wgslsmith_sub_vec4_i32(-vec4<i32>(6538i, -2772i, 2567i, u_input.a.x), firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -32056i), vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x)))), vec4<i32>(u_input.a.x, u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i) << (var_0.wz % vec2<u32>(32u)), ~u_input.a), _wgslsmith_add_i32(_wgslsmith_mult_i32(-1i, -54314i), _wgslsmith_div_i32(u_input.a.x, 11552i)))));
    return 60221u;
}

fn func_2(arg_0: bool) -> vec4<bool> {
    global0 = ~max(~_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, 16879u, 55276u, global0.x), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 4294967295u, global0.x, 4294967295u), vec4<u32>(global0.x, 0u, global0.x, 75481u))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(global0.x, 1u, global0.x, 0u), _wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, global0.x, 9297u, 69119u), vec4<u32>(0u, global0.x, global0.x, 4294967295u)), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(0u, global0.x, global0.x, global0.x)), vec4<u32>(49730u, 4294967295u, 4294967295u, 1u))));
    global0 = vec4<u32>(~50251u >> ((1u ^ global0.x) % 32u), ~(~(~global0.x & func_3(vec3<bool>(true, true, arg_0)))), global0.x, 8133u);
    let var_0 = Struct_2(vec4<i32>(_wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, -63945i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 57736i)), vec3<i32>(~u_input.a.x, u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, 2147483647i))), _wgslsmith_dot_vec4_i32(abs(~vec4<i32>(21469i, -30560i, -26289i, 4934i)), _wgslsmith_add_vec4_i32(vec4<i32>(0i, -2147483647i, u_input.a.x, u_input.a.x) | vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 1i, 16667i))), u_input.a.x, u_input.a.x));
    var var_1 = firstTrailingBit(firstTrailingBit(u_input.a.x));
    var_1 = u_input.a.x;
    return !vec4<bool>(any(select(vec4<bool>(arg_0, arg_0, arg_0, false), !vec4<bool>(false, arg_0, arg_0, true), true)), any(vec2<bool>(any(vec2<bool>(true, true)), true)), !all(vec3<bool>(true, true, true)), true);
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_3) -> Struct_3 {
    var var_0 = (9849u & ~global0.x) & arg_2.c;
    global0 = ~abs(~vec4<u32>(0u, ~1u, _wgslsmith_add_u32(arg_2.c, 0u), ~48289u));
    var var_1 = -755f;
    var_0 = arg_2.c;
    let var_2 = all(!arg_0.zz);
    return Struct_3(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d.b, arg_2.a.x, arg_2.d.b, arg_2.a.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.d.b, _wgslsmith_f_op_f32(max(arg_2.d.b, 1000f)), arg_2.a.x, -171f) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.d.b, -302f, -2183f, -1189f), vec4<f32>(arg_2.a.x, arg_2.d.b, arg_2.d.b, arg_2.a.x), false)), _wgslsmith_f_op_vec4_f32(exp2(arg_2.a)))))), Struct_2(vec4<i32>(~(-25061i & arg_2.d.c.x), ~arg_2.b.a.x, 826i, _wgslsmith_dot_vec3_i32(vec3<i32>(-62536i, -1i, arg_2.d.c.x), -arg_2.d.c.yzz))), 68681u, arg_2.d);
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    global0 = vec4<u32>(~1u, 34795u, max(~func_3(select(vec3<bool>(arg_0.d.a, arg_0.d.a, false), vec3<bool>(false, arg_0.d.a, arg_0.d.a), vec3<bool>(arg_0.d.a, false, arg_0.d.a))), _wgslsmith_clamp_u32(~func_4(vec4<bool>(arg_0.d.a, arg_0.d.a, arg_0.d.a, arg_0.d.a), u_input.a.x, arg_0).c, global0.x, 4294967295u)), select(global0.x, ~_wgslsmith_add_u32(arg_0.c, 41578u), (i32(-1i) * -13449i) > u_input.a.x) | 1u);
    global0 = ~abs(firstTrailingBit(abs(vec4<u32>(global0.x, arg_0.c, 1u, global0.x)) << ((vec4<u32>(global0.x, global0.x, arg_0.c, global0.x) ^ vec4<u32>(4294967295u, arg_0.c, arg_0.c, arg_0.c)) % vec4<u32>(32u))));
    let var_0 = 1u;
    var var_1 = func_4(vec4<bool>(false, any(vec2<bool>(!arg_0.d.a, false)), true, any(select(func_2(arg_0.d.a), !vec4<bool>(arg_0.d.a, true, true, false), !vec4<bool>(false, arg_0.d.a, arg_0.d.a, true)))), _wgslsmith_sub_i32(u_input.a.x, arg_0.d.c.x) >> (var_0 % 32u), func_4(!select(select(vec4<bool>(arg_0.d.a, arg_0.d.a, true, arg_0.d.a), vec4<bool>(true, false, arg_0.d.a, arg_0.d.a), arg_0.d.a), select(vec4<bool>(arg_0.d.a, true, true, false), vec4<bool>(arg_0.d.a, arg_0.d.a, true, arg_0.d.a), false), select(vec4<bool>(arg_0.d.a, false, true, false), vec4<bool>(true, true, arg_0.d.a, false), vec4<bool>(false, arg_0.d.a, true, arg_0.d.a))), func_4(vec4<bool>(arg_0.d.a, false, arg_0.d.a, false), max(1i, -22315i), arg_0).d.c.x, func_4(!vec4<bool>(false, arg_0.d.a, arg_0.d.a, arg_0.d.a), arg_0.b.a.x, Struct_3(_wgslsmith_f_op_vec4_f32(-arg_0.a), arg_0.b, 2303u, func_4(vec4<bool>(arg_0.d.a, arg_0.d.a, arg_0.d.a, arg_0.d.a), 23445i, arg_0).d)))).d;
    let var_2 = firstTrailingBit(-34358i);
    return func_4(vec4<bool>(func_2(!all(vec4<bool>(arg_0.d.a, var_1.a, true, arg_0.d.a))).x, -2147483647i <= abs(func_4(vec4<bool>(false, arg_0.d.a, var_1.a, arg_0.d.a), 20469i, arg_0).b.a.x), func_4(vec4<bool>(arg_0.d.a, arg_0.d.a, arg_0.d.a, true), _wgslsmith_sub_i32(var_1.c.x, var_1.c.x), arg_0).d.b < arg_0.a.x, all(vec2<bool>(true, arg_0.d.a || false))), 43813i, func_4(vec4<bool>(true, !(!arg_0.d.a), false, (var_1.a && var_1.a) || false), -(max(var_2, arg_0.b.a.x) & firstLeadingBit(u_input.a.x)), arg_0)).d;
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    let var_0 = 2147483647i;
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.b, arg_0.b, arg_0.b, 258f)))))))), Struct_2(-countOneBits(vec4<i32>(arg_0.c.x, u_input.a.x, 32421i, -2147483647i)) << ((~vec4<u32>(4294967295u, 2884u, 0u, global0.x) >> (firstLeadingBit(vec4<u32>(0u, 0u, global0.x, 0u)) % vec4<u32>(32u))) % vec4<u32>(32u))), 72019u, arg_0);
    var var_2 = Struct_2(vec4<i32>(-1i) * -abs(arg_0.c));
    var var_3 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(~global0.yxw, _wgslsmith_add_vec3_u32(global0.ywy, vec3<u32>(var_1.c, var_1.c, var_1.c))), ~(~4294967295u), ~(~global0.x));
    let var_4 = var_1.b;
    return var_1.d;
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    let var_0 = -1000f;
    global0 = vec4<u32>(min(68892u >> (countOneBits(global0.x) % 32u), firstLeadingBit(~global0.x)) & _wgslsmith_mult_u32(41671u | min(global0.x, global0.x), max(10867u, global0.x)), 38188u, 31443u << (global0.x % 32u), global0.x);
    var var_1 = func_6(func_5(func_4(func_2(true), -countOneBits(2147483647i), Struct_3(vec4<f32>(var_0, -284f, 742f, 514f), Struct_2(vec4<i32>(-12194i, u_input.a.x, u_input.a.x, u_input.a.x)), global0.x, Struct_1(true, var_0, vec4<i32>(1i, 0i, u_input.a.x, 1i))))));
    return 1346f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = countOneBits(min(firstTrailingBit(~vec4<u32>(0u, 101138u, global0.x, 1536u)), ~vec4<u32>(global0.x, 53115u, 0u, global0.x))) ^ ~vec4<u32>(~global0.x, 51176u, max(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global0.x, global0.x), vec3<u32>(31869u, global0.x, 38841u)), global0.x), 1u);
    var var_0 = !(global0.x < 0u);
    let var_1 = abs(~(19991i ^ u_input.a.x));
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(vec2<bool>(true, false))), func_5(Struct_3(vec4<f32>(-1094f, 160f, 520f, -1254f), Struct_2(vec4<i32>(u_input.a.x, u_input.a.x, var_1, u_input.a.x)), 71875u, Struct_1(true, -1231f, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -646i)))).b, _wgslsmith_f_op_f32(f32(-1f) * -516f), -375f)), vec4<f32>(-624f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-517f * -160f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(282f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(vec2<bool>(false, true)))))))), Struct_2(vec4<i32>(_wgslsmith_add_i32(u_input.a.x, -3247i), -u_input.a.x, u_input.a.x, _wgslsmith_div_i32(var_1, u_input.a.x)) << ((vec4<u32>(0u, global0.x, global0.x, 4294967295u) >> ((vec4<u32>(global0.x, global0.x, 33173u, global0.x) & vec4<u32>(37235u, global0.x, global0.x, 29805u)) % vec4<u32>(32u))) % vec4<u32>(32u))), global0.x, Struct_1(false, _wgslsmith_f_op_f32(func_1(vec2<bool>(global0.x >= global0.x, all(vec2<bool>(true, false))))), vec4<i32>(firstLeadingBit(var_1) | ~var_1, -1i, u_input.a.x, u_input.a.x << (_wgslsmith_add_u32(global0.x, 0u) % 32u))));
    var_2 = func_4(select(vec4<bool>(func_2(var_2.d.a).x, var_2.d.a, func_5(func_4(vec4<bool>(var_2.d.a, var_2.d.a, var_2.d.a, false), -36239i, Struct_3(var_2.a, Struct_2(var_2.d.c), var_2.c, var_2.d))).a, true), select(vec4<bool>(false, var_2.d.a, var_2.a.x >= 2252f, true), !func_2(true), !(var_2.d.b != 942f)), var_2.d.a), _wgslsmith_add_i32(var_2.d.c.x, 1i), Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -433f), _wgslsmith_f_op_f32(-var_2.d.b), -1000f, _wgslsmith_f_op_f32(floor(var_2.a.x)))), func_4(!vec4<bool>(false, true, false, var_2.d.a), min(~var_1, ~u_input.a.x), Struct_3(_wgslsmith_f_op_vec4_f32(var_2.a * var_2.a), Struct_2(vec4<i32>(0i, -52206i, u_input.a.x, 0i)), ~4294967295u, var_2.d)).b, global0.x, func_5(func_4(vec4<bool>(true, false, var_2.d.a, var_2.d.a), -10282i & var_1, Struct_3(vec4<f32>(-914f, var_2.a.x, var_2.d.b, var_2.d.b), Struct_2(var_2.d.c), var_2.c, var_2.d)))));
    var var_3 = select(_wgslsmith_add_vec4_i32(firstTrailingBit(select(-var_2.b.a, var_2.b.a, select(vec4<bool>(var_2.d.a, true, var_2.d.a, false), vec4<bool>(var_2.d.a, var_2.d.a, var_2.d.a, var_2.d.a), true))), var_2.b.a), vec4<i32>(i32(-1i) * -_wgslsmith_sub_i32(-35608i, -19861i), firstLeadingBit(-1i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, var_1) >> (vec3<u32>(global0.x, 18398u, var_2.c) % vec3<u32>(32u)), var_2.d.c.xzw), func_5(Struct_3(var_2.a, Struct_2(vec4<i32>(-1i, u_input.a.x, 2147483647i, 1i)), global0.x, Struct_1(true, -314f, vec4<i32>(u_input.a.x, var_2.b.a.x, 165i, 0i)))).c.x | -(~u_input.a.x)), true);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x, ~(-29251i));
}

