struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: vec3<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: f32,
    d: vec4<f32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 7>;

var<private> global2: vec4<i32> = vec4<i32>(-39895i, 0i, 1i, -38242i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<i32>(-global2.x, global0.b.a.x, _wgslsmith_dot_vec3_i32(global0.b.a.zww, max(_wgslsmith_add_vec3_i32(vec3<i32>(-1333i, global2.x, global2.x), global0.b.a.xxw | vec3<i32>(-2147483647i, global0.b.a.x, global0.b.a.x)), abs(select(u_input.b.zzy, vec3<i32>(1i, global2.x, 2147483647i), global0.a.x)))));
    global1 = array<Struct_2, 7>();
    let var_1 = !global0.b.d;
    var var_2 = -831f;
    return Struct_1(global0.b.a, global0.e, global0.b.b, !global0.a.wyy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c + -1405f)) * -813f));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<f32>) -> f32 {
    let var_0 = -1425f;
    var var_1 = Struct_2(vec4<bool>(global0.b.d.x, false, false, false), func_2(), -1095f, global0.d, _wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1168f))))));
    let var_2 = var_1.a.xyw;
    global0 = Struct_2(select(vec4<bool>(!all(vec4<bool>(var_1.a.x, var_2.x, global0.b.d.x, false)), all(var_1.b.d), true, var_2.x), !select(var_1.a, var_1.a, !global0.a), !global0.b.d.x), global0.b, global0.c, global0.d, func_2().b);
    global2 = -var_1.b.a;
    return _wgslsmith_f_op_f32(-global0.c);
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    global1 = array<Struct_2, 7>();
    let var_0 = _wgslsmith_dot_vec2_i32(-u_input.b.zz, _wgslsmith_mult_vec2_i32(arg_0.a.yy, ~vec2<i32>(global2.x, arg_0.a.x))) > -17237i;
    let var_1 = u_input.d;
    var var_2 = countOneBits(select(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.b.a.x, 1i, 44959i, 6805i) ^ vec4<i32>(global2.x, global2.x, 0i, 18555i), min(vec4<i32>(-1i, -46255i, -1i, -1i), vec4<i32>(43535i, 2147483647i, 43340i, -1i))), _wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, global0.b.a.x, global2.x), u_input.b.yxz)), -(arg_0.a.x & ~0i), false));
    var var_3 = func_2();
    return Struct_3(Struct_1(~var_3.a, var_3.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.x) * -356f), global0.b.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(firstLeadingBit(vec3<u32>(4294967295u, u_input.a, u_input.a)), vec2<f32>(var_3.c, -390f))))), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 19984u, 0u, 4294967295u) >> (select(vec4<u32>(4294967295u, 53460u, 0u, var_1), vec4<u32>(42650u, 0u, 32738u, 35968u), var_0) % vec4<u32>(32u)), firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(var_1, u_input.a, u_input.a, var_1), vec4<u32>(4294967295u, 63830u, var_1, 12364u)))), var_1), vec4<i32>(-_wgslsmith_add_i32(var_3.a.x, -2147483647i), max(-2147483647i, arg_0.a.x >> (16263u % 32u)), ~select(u_input.b.x, global0.b.a.x, false), 2147483647i) << (min(reverseBits(firstLeadingBit(vec4<u32>(u_input.d, var_1, var_1, 4294967295u))), vec4<u32>(0u, var_1 & u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1, 4294967295u, 4294967295u), vec3<u32>(5u, 0u, 73456u)), ~67387u)) % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<f32>) -> bool {
    global2 = arg_1.c;
    let var_0 = Struct_1(select(global0.b.a, global0.b.a, select(global0.a, !global0.a, !vec4<bool>(global0.b.d.x, true, true, arg_0.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(select(vec3<u32>(u_input.c, arg_1.b, 4294967295u), ~vec3<u32>(arg_1.b, 107302u, u_input.a), global0.a.wxx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(122f, arg_2.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.b)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.e, -840f))), -207f, arg_1.a.d.x)), vec3<bool>(false, all(!vec3<bool>(false, arg_1.a.d.x, false)), global0.b.d.x && all(vec4<bool>(true, true, true, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.b + _wgslsmith_f_op_f32(step(-1669f, 307f))))));
    let var_1 = -func_1(func_2()).a.a & func_2().a;
    let var_2 = func_1(Struct_1(var_0.a, -1873f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - arg_2.x), 1191f), vec3<bool>(false, any(global0.a), false), _wgslsmith_div_f32(-706f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.d.x, arg_2.x) - _wgslsmith_f_op_f32(exp2(global0.c)))))).a;
    global2 = ~(-vec4<i32>(reverseBits(1i), _wgslsmith_mult_i32(-global2.x, var_1.x >> (u_input.a % 32u)), countOneBits(2147483647i) >> (max(arg_1.b, 4294967295u) % 32u), _wgslsmith_mod_i32(-1i, ~var_2.a.x)));
    return any(func_1(func_2()).a.d);
}

fn func_5(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_3) -> i32 {
    let var_0 = Struct_1(-(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.b.a.x, arg_2.a.a.x, u_input.b.x, 2147483647i), arg_2.a.a) >> ((vec4<u32>(4294967295u, u_input.d, 0u, u_input.c) << (vec4<u32>(u_input.d, u_input.c, arg_2.b, arg_2.b) % vec4<u32>(32u))) % vec4<u32>(32u))) >> (vec4<u32>(arg_2.b, min(_wgslsmith_mod_u32(u_input.d, 0u), _wgslsmith_mod_u32(0u, arg_2.b)), _wgslsmith_mult_u32(76474u | arg_2.b, u_input.c), 25260u) % vec4<u32>(32u)), arg_2.a.c, 1f, !(!arg_2.a.d), func_1(func_2()).a.c);
    var var_1 = -max(vec3<i32>(arg_2.a.a.x ^ -1i, global2.x, 2733i), ~(~var_0.a.zyz)) & vec3<i32>(19974i, global2.x, u_input.b.x);
    let var_2 = arg_0;
    let var_3 = global1[_wgslsmith_index_u32(~(~(~(~(~1u)))), 7u)];
    let var_4 = Struct_1(global0.b.a, var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.d.x, var_0.b)))) - global0.e), !(!vec3<bool>(false, var_0.d.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.e * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-689f, var_0.e))))));
    return global0.b.a.x;
}

fn func_6(arg_0: u32, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(574f - _wgslsmith_f_op_f32(trunc(-167f))), _wgslsmith_f_op_f32(-arg_2.e), _wgslsmith_f_op_f32(func_3(abs(vec3<u32>(66983u, 1u, 27335u)) ^ (vec3<u32>(136344u, arg_0, u_input.d) ^ firstTrailingBit(vec3<u32>(u_input.c, 0u, u_input.d))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(206f, global0.b.b) * vec2<f32>(arg_2.d.x, -1305f)) * global0.d.wz)))), global0.c);
    var var_1 = var_0.x;
    let var_2 = reverseBits(~(~vec4<i32>(arg_2.b.a.x, global0.b.a.x, -47458i, global0.b.a.x)) & global0.b.a);
    let var_3 = func_1(Struct_1(_wgslsmith_div_vec4_i32(func_1(func_1(global0.b).a).a.a, vec4<i32>(max(u_input.b.x, -9991i), global2.x, u_input.b.x, _wgslsmith_mod_i32(1i, 34277i))), 251f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.e)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.x, arg_2.e)))), func_1(Struct_1(global0.b.a, _wgslsmith_f_op_f32(431f - arg_2.c), 763f, select(vec3<bool>(true, arg_2.b.d.x, true), vec3<bool>(false, global0.b.d.x, arg_2.a.x), vec3<bool>(false, global0.b.d.x, false)), 120f)).a.d, arg_2.c));
    global1 = array<Struct_2, 7>();
    return Struct_2(!vec4<bool>(true, arg_0 < ~arg_0, false, _wgslsmith_f_op_f32(-arg_2.c) <= _wgslsmith_f_op_f32(var_3.a.e * var_3.a.e)), func_1(Struct_1(vec4<i32>(26090i, max(var_2.x, 14400i), -34706i, global2.x >> (4294967295u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x * 1064f))), !vec3<bool>(true, false, var_3.a.d.x), var_3.a.b)).a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.d.x, -441f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.c - -448f))), vec4<f32>(var_0.x, arg_2.d.x, func_1(func_1(func_1(Struct_1(u_input.b, 1414f, -1899f, vec3<bool>(false, true, false), 1213f)).a).a).a.c, _wgslsmith_f_op_f32(var_3.a.c * var_3.a.e)), _wgslsmith_f_op_f32(f32(-1f) * -166f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(select(~vec2<u32>(u_input.d, u_input.c), vec2<u32>(39929u, 7553u) | vec2<u32>(1u, u_input.a), true), abs(~vec2<u32>(u_input.d, u_input.c))), 3850u), _wgslsmith_add_i32(0i, func_5(func_4(global0.b, func_1(global0.b), _wgslsmith_f_op_vec3_f32(-global0.d.zww)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.d - vec4<f32>(-1705f, global0.c, -470f, global0.c))), Struct_3(global0.b, u_input.a, vec4<i32>(global2.x, 1i, global2.x, global2.x)))), global1[_wgslsmith_index_u32(5481u, 7u)]);
    global0 = Struct_2(global0.a, func_2(), global0.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-242f, _wgslsmith_f_op_f32(func_3(vec3<u32>(1u, 0u, 50389u), vec2<f32>(-938f, global0.d.x))), -782f, -746f))) - vec4<f32>(414f, _wgslsmith_f_op_f32(abs(-1788f)), func_6(~u_input.a, 1i, Struct_2(global0.a, global0.b, global0.e, vec4<f32>(global0.d.x, global0.d.x, global0.d.x, 1525f), global0.b.e)).b.b, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(475f, 1602f), _wgslsmith_f_op_f32(global0.b.c + global0.c))))), _wgslsmith_f_op_f32(-global0.c));
    let var_0 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, u_input.d, 4294967295u, u_input.a) << (vec4<u32>(u_input.c, 1u, 10524u, u_input.d) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_clamp_u32(4294967295u, 0u, 38718u), ~u_input.d, u_input.c, 1u)) & _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(75426u, u_input.a), vec2<u32>(8339u, u_input.d)), 4294967295u), 4294967295u);
    global2 = _wgslsmith_mult_vec4_i32(u_input.b, countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-30328i, -17742i, u_input.b.x, global0.b.a.x), global0.b.a) | select(vec4<i32>(-6690i, 14431i, 0i, global2.x), vec4<i32>(1734i, global2.x, global0.b.a.x, global0.b.a.x), vec4<bool>(true, false, true, global0.a.x))) | vec4<i32>(-20961i, _wgslsmith_dot_vec3_i32(global2.zzy | vec3<i32>(global0.b.a.x, u_input.b.x, global0.b.a.x), vec3<i32>(15621i, 12405i, 1i)), firstLeadingBit(_wgslsmith_mod_i32(8069i, global0.b.a.x)), 8939i));
    var var_1 = global0.b.a.xyz;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(select(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, u_input.c, var_0), vec3<u32>(var_0, 32289u, 44719u)) ^ vec3<u32>(u_input.d, var_0, 35368u), ~(vec3<u32>(4294967295u, 1u, u_input.a) & vec3<u32>(var_0, var_0, 0u)), global0.a.x)), vec3<f32>(_wgslsmith_f_op_f32(-288f + _wgslsmith_f_op_f32(step(global0.c, _wgslsmith_f_op_f32(global0.c * 1188f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -128f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1475f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -945f)))), vec4<i32>(-2147483647i, 0i, -func_1(Struct_1(u_input.b, global0.d.x, 468f, global0.a.xzy, global0.c)).c.x, -global2.x));
}

