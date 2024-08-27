struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<f32>,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
    c: i32,
    d: Struct_3,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32 = 987f;

var<private> global2: Struct_2 = Struct_2(Struct_1(1614f, 589f, true, 26625u, 464u), true, vec4<f32>(-1402f, 272f, 1000f, 1544f), vec2<u32>(0u, 39190u), vec3<f32>(-1000f, 949f, -138f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: bool) -> u32 {
    var var_0 = false;
    var var_1 = select(~(_wgslsmith_div_vec3_u32(vec3<u32>(60915u, 27596u, global2.d.x) | vec3<u32>(33461u, global2.d.x, global0.e), vec3<u32>(42413u, global2.a.e, global2.a.e) << (vec3<u32>(18530u, arg_0.b.a.d.x, 4332u) % vec3<u32>(32u))) >> ((vec3<u32>(49681u, 4294967295u, global2.a.e) & ~vec3<u32>(u_input.a, arg_0.d.a.d.x, u_input.a)) % vec3<u32>(32u))), firstLeadingBit(min(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.d.a.a.e, global0.e, global0.d), vec3<u32>(global0.e, arg_0.b.a.d.x, 125798u)), vec3<u32>(4294967295u, 86507u, 62870u) & vec3<u32>(u_input.a, global2.d.x, u_input.a)) >> (~max(vec3<u32>(u_input.a, 7600u, u_input.a), vec3<u32>(u_input.a, 4294967295u, 63885u)) % vec3<u32>(32u))), !(!(arg_0.d.a.e.x != global0.a)) != false);
    global0 = arg_0.d.a.a;
    var var_2 = arg_0;
    var var_3 = arg_0;
    return _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.a), ~(~(~select(vec3<u32>(57392u, var_2.d.a.d.x, 1u), vec3<u32>(global0.d, var_2.b.a.d.x, 1u), vec3<bool>(false, global2.b, false)))));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> f32 {
    var var_0 = global0.d;
    global2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -433f) * _wgslsmith_f_op_f32(-arg_2.a)), -1779f, true, _wgslsmith_sub_u32(func_3(Struct_4(vec2<i32>(22522i, 0i), Struct_3(Struct_2(arg_2, global2.b, global2.c, global2.d, global2.e)), 22240i, Struct_3(Struct_2(arg_2, global0.c, global2.c, vec2<u32>(1u, 21652u), global2.c.yxx)), arg_2.a), false && arg_2.c), countOneBits(arg_2.d >> (36607u % 32u))), ~0u), all(!select(vec3<bool>(arg_2.c, global2.b, true), vec3<bool>(true, true, true), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(2241f)), _wgslsmith_f_op_f32(abs(arg_1)), _wgslsmith_f_op_f32(392f * global0.b), -518f), global2.c, vec4<bool>(true, true, true, true)))), ~vec2<u32>(26442u, firstTrailingBit(arg_2.e)), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1 - -740f))), arg_0, _wgslsmith_f_op_f32(-global0.a)));
    var var_1 = firstLeadingBit(~_wgslsmith_add_vec3_u32(vec3<u32>(min(u_input.a, 735u), global0.e, ~53811u), vec3<u32>(firstLeadingBit(global2.a.d), ~64050u, abs(4617u))));
    var_0 = 1u;
    var var_2 = arg_2;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(489f, global2.e.x, global0.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.c.x * _wgslsmith_f_op_f32(arg_1.a + arg_0.b)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(807f, 435f, Struct_1(-195f, -312f, global0.c, global2.a.d, global2.d.x))))), true))));
    global0 = arg_0;
    return Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(var_0.x * -2059f), _wgslsmith_f_op_f32(var_0.x + -1595f), !(!global0.c), _wgslsmith_mult_u32(u_input.a, 1u), ~1u & _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global2.d.x), global2.d)), all(vec2<bool>(true, false)), _wgslsmith_f_op_vec4_f32(sign(global2.c)), vec2<u32>(_wgslsmith_mod_u32(global0.d >> (global2.d.x % 32u), 0u), ~1u), vec3<f32>(_wgslsmith_f_op_f32(-928f * -1000f), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1885f, -444f, true))))));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<i32>) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.a.a.b, global0.b)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(370f + _wgslsmith_f_op_f32(select(1f, arg_0.e, global2.b || false))), -1601f));
    let var_1 = arg_0.b.a.a;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(117f * -835f) * global0.b)) * arg_0.e), global0.a);
    let var_3 = _wgslsmith_mult_u32(arg_0.b.a.d.x, func_3(arg_0, select(!(arg_0.e > var_1.b), -873f != func_1(arg_0.b.a.a, Struct_1(-419f, var_1.a, false, 4294967295u, arg_0.b.a.d.x)).a.c.x, !select(var_1.c, true, false))));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-229f, global2.e.x, global2.c.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(836f, var_2.x, var_2.x)), _wgslsmith_f_op_vec3_f32(select(global2.e, global2.c.wzz, vec3<bool>(var_1.c, true, global0.c))))))));
    return vec4<i32>(-1i) * -vec4<i32>(arg_1.x, abs(_wgslsmith_sub_i32(arg_1.x, arg_1.x)), firstLeadingBit(1i), arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 10230u;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(global2.c)), global2.c, true)) * global2.c);
    global1 = 1f;
    global1 = 562f;
    let var_2 = -(~func_4(Struct_4(_wgslsmith_mod_vec2_i32(vec2<i32>(22985i, 2327i), vec2<i32>(-2147483647i, -2147483647i)), Struct_3(Struct_2(global2.a, true, global2.c, global2.d, var_1.xxz)), 1i, func_1(Struct_1(global0.b, var_1.x, true, global2.a.d, var_0), Struct_1(-1089f, -2016f, global2.a.c, global0.e, global2.d.x)), _wgslsmith_f_op_f32(abs(-778f))), -min(vec3<i32>(1i, 2147483647i, -10578i), vec3<i32>(-1i, -44039i, -8920i))));
    var var_3 = true;
    var_3 = false;
    var var_4 = global2.a;
    let var_5 = Struct_4(vec2<i32>(-41435i, 0i), Struct_3(Struct_2(func_1(func_1(global2.a, global2.a).a.a, global2.a).a.a, var_4.c, vec4<f32>(-1877f, _wgslsmith_div_f32(1634f, var_1.x), 842f, _wgslsmith_f_op_f32(var_4.b + 418f)), firstTrailingBit(vec2<u32>(global2.d.x, 0u)), func_1(func_1(Struct_1(global2.e.x, var_4.b, false, var_0, 5385u), Struct_1(2567f, global0.b, true, global2.a.e, 55175u)).a.a, global2.a).a.c.xxz)), -41814i, Struct_3(func_1(global2.a, func_1(Struct_1(var_4.b, -926f, global0.c, 1u, 21756u), Struct_1(var_1.x, var_4.b, true, global2.d.x, var_0)).a.a).a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global2.a.a * var_4.a), func_1(var_5.b.a.a, var_5.d.a.a).a.c.x) * var_5.b.a.e.zx))), 1u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.a, 787f))) * vec2<f32>(var_1.x, global2.a.a)) * _wgslsmith_f_op_vec2_f32(-var_1.xx)), global2.e.yz));
}

