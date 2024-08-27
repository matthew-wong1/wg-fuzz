struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: Struct_3;

var<private> global2: array<vec4<u32>, 30>;

var<private> global3: array<bool, 20> = array<bool, 20>(true, false, true, false, false, true, true, true, true, true, false, true, true, false, true, true, false, false, true, true);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>) -> u32 {
    global1 = arg_0;
    var var_0 = Struct_2(1f, global1.a.yw ^ arg_0.a.zz, vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(31922i, 0i) | global1.b.xy, _wgslsmith_sub_vec2_i32(vec2<i32>(1i, -57715i), global1.b.xz)), arg_0.b.x, 63406i, _wgslsmith_div_i32(_wgslsmith_mult_i32(0i, -378i), ~u_input.e)) << (global2[_wgslsmith_index_u32(~abs(firstLeadingBit(arg_0.a.x)), 30u)] % vec4<u32>(32u)), Struct_1(arg_1.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-913f, _wgslsmith_f_op_f32(min(-1000f, 627f)), -324f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1160f, 292f, -736f)))))), vec3<bool>(true, all(!select(vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.a.x, 20u)], global3[_wgslsmith_index_u32(0u, 20u)], true), vec4<bool>(false, global3[_wgslsmith_index_u32(0u, 20u)], false, false), vec4<bool>(true, false, false, true))), all(vec3<bool>(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, 1u), 20u)], global3[_wgslsmith_index_u32(abs(17307u), 20u)], all(vec2<bool>(global3[_wgslsmith_index_u32(1u, 20u)], false))))));
    let var_1 = vec4<bool>(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(reverseBits(4294967295u), u_input.c), 20u)], any(vec4<bool>(var_0.e.x, true, true, any(select(vec2<bool>(global3[_wgslsmith_index_u32(4295u, 20u)], var_0.e.x), var_0.e.zx, global3[_wgslsmith_index_u32(1u, 20u)])))), ((i32(-1i) * -2147483647i) < ~var_0.c.x) || (var_0.d.b.x >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.d.b.x)))), any(!var_0.e));
    return u_input.d.x;
}

fn func_2() -> vec2<bool> {
    global3 = array<bool, 20>();
    var var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(4294967295u, _wgslsmith_div_u32(func_3(Struct_3(global1.a, vec3<i32>(u_input.e, -2147483647i, 22297i)), ~u_input.b), ~u_input.c)), 4u)];
    let var_1 = 516f;
    let var_2 = select(select(!(!select(vec4<bool>(global3[_wgslsmith_index_u32(1u, 20u)], true, global3[_wgslsmith_index_u32(83167u, 20u)], false), vec4<bool>(global3[_wgslsmith_index_u32(global1.a.x, 20u)], global3[_wgslsmith_index_u32(global1.a.x, 20u)], true, true), global3[_wgslsmith_index_u32(0u, 20u)])), !vec4<bool>(select(global3[_wgslsmith_index_u32(global1.a.x, 20u)], false, true), true, true, global3[_wgslsmith_index_u32(global1.a.x, 20u)] | global3[_wgslsmith_index_u32(global1.a.x, 20u)]), select(vec4<bool>(true, global3[_wgslsmith_index_u32(min(1u, global1.a.x), 20u)], true, true), select(!vec4<bool>(true, global3[_wgslsmith_index_u32(2468u, 20u)], false, global3[_wgslsmith_index_u32(u_input.d.x, 20u)]), !vec4<bool>(global3[_wgslsmith_index_u32(1u, 20u)], false, false, global3[_wgslsmith_index_u32(var_0.a, 20u)]), select(vec4<bool>(true, global3[_wgslsmith_index_u32(0u, 20u)], global3[_wgslsmith_index_u32(var_0.a, 20u)], false), vec4<bool>(global3[_wgslsmith_index_u32(var_0.a, 20u)], true, global3[_wgslsmith_index_u32(global1.a.x, 20u)], false), vec4<bool>(false, global3[_wgslsmith_index_u32(var_0.a, 20u)], global3[_wgslsmith_index_u32(var_0.a, 20u)], true))), true)), select(!(!(!vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.c, 20u)], global3[_wgslsmith_index_u32(var_0.a, 20u)], false))), !vec4<bool>(global3[_wgslsmith_index_u32(~var_0.a, 20u)], !global3[_wgslsmith_index_u32(u_input.b.x, 20u)], global3[_wgslsmith_index_u32(~u_input.d.x, 20u)], select(global3[_wgslsmith_index_u32(4294967295u, 20u)], false, false)), vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.d.x, 20u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.c), u_input.a), 20u)] | (false != global3[_wgslsmith_index_u32(var_0.a, 20u)]), global3[_wgslsmith_index_u32(var_0.a, 20u)])), true);
    var_0 = global0[_wgslsmith_index_u32(~1u, 4u)];
    return !var_2.wy;
}

fn func_1() -> vec3<i32> {
    let var_0 = 13439i;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1210f), _wgslsmith_f_op_f32(floor(-1162f))) - vec2<f32>(_wgslsmith_div_f32(-320f, -366f), _wgslsmith_f_op_f32(-315f + -179f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1281f, -851f), vec2<f32>(602f, 1098f), false)) + vec2<f32>(-1378f, -531f)) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(728f, 1027f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(137f, -1033f) - vec2<f32>(2066f, 680f))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-3395f, 521f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-229f)), _wgslsmith_f_op_f32(243f - -567f))))));
    global3 = array<bool, 20>();
    global2 = array<vec4<u32>, 30>();
    var var_2 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(abs(var_1.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-194f + _wgslsmith_f_op_f32(var_1.x * -335f)), _wgslsmith_f_op_f32(round(-1284f)))))), select(vec2<u32>(u_input.c, u_input.b.x), ~(~select(u_input.d.xz, vec2<u32>(47812u, u_input.c), vec2<bool>(global3[_wgslsmith_index_u32(u_input.d.x, 20u)], false))), select(select(!vec2<bool>(true, global3[_wgslsmith_index_u32(0u, 20u)]), !vec2<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 20u)], global3[_wgslsmith_index_u32(global1.a.x, 20u)]), func_2()), func_2(), func_2())), vec4<i32>(1i, -global1.b.x, -firstTrailingBit(-global1.b.x), 31414i), global0[_wgslsmith_index_u32(global1.a.x, 4u)], !vec3<bool>(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(55784u, 12831u) & u_input.a.x, 20u)], 24565i < var_0, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(65454u, _wgslsmith_clamp_u32(3355u, 0u, 69606u)), 20u)]));
    return ~global1.b;
}

fn func_4(arg_0: vec3<i32>, arg_1: f32) -> Struct_3 {
    global3 = array<bool, 20>();
    var var_0 = select(firstLeadingBit(-vec2<i32>(u_input.e, -65872i)), ~(global1.b.yz | -(~global1.b.xy)), !global3[_wgslsmith_index_u32(global1.a.x, 20u)]);
    var var_1 = global0[_wgslsmith_index_u32(~17681u & global1.a.x, 4u)];
    global1 = Struct_3(select(~(vec4<u32>(global1.a.x, 4294967295u, u_input.b.x, 4294967295u) >> (max(vec4<u32>(global1.a.x, 1u, global1.a.x, global1.a.x), global1.a) % vec4<u32>(32u))), ~vec4<u32>(var_1.a << (4294967295u % 32u), firstLeadingBit(4294967295u), 29880u, ~var_1.a), !(reverseBits(78296u) > abs(var_1.a))), ~_wgslsmith_div_vec3_i32(select(vec3<i32>(arg_0.x, u_input.e, var_0.x), vec3<i32>(arg_0.x, var_0.x, -14674i), true), arg_0) ^ -(vec3<i32>(32312i, -2147483647i, 0i) >> (vec3<u32>(4294967295u, u_input.d.x, 44584u) % vec3<u32>(32u))));
    var var_2 = global0[_wgslsmith_index_u32(~(~65748u), 4u)];
    return Struct_3(vec4<u32>(_wgslsmith_mult_u32(select(u_input.a.x, 1u, false), ~var_1.a) ^ _wgslsmith_mult_u32(1u, 33812u), 24992u, firstLeadingBit(65498u), ~var_1.a), ~global1.b & _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.e, ~1i, var_0.x), global1.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~(vec3<i32>(-1i) * -func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-140f - 1320f) + _wgslsmith_f_op_f32(2161f * 1000f)))) - -428f));
    global3 = array<bool, 20>();
    let var_1 = Struct_3(var_0.a, _wgslsmith_mult_vec3_i32(vec3<i32>(global1.b.x, 24318i | u_input.e, -1i), var_0.b));
    global0 = array<Struct_1, 4>();
    var_0 = var_1;
    let var_2 = select(_wgslsmith_div_vec4_i32(max(_wgslsmith_mod_vec4_i32(-vec4<i32>(74070i, -1i, var_0.b.x, -1i), vec4<i32>(11735i, 1i, global1.b.x, u_input.e)), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, var_1.b.x, u_input.e, -10350i) & vec4<i32>(var_1.b.x, 2147483647i, 0i, 0i), vec4<i32>(-1i, -1i, 9409i, -2147483647i))), vec4<i32>(-firstLeadingBit(u_input.e), abs(reverseBits(-2147483647i)), -_wgslsmith_add_i32(24672i, u_input.e), ~_wgslsmith_div_i32(35229i, 24194i))), ~max(vec4<i32>(-1i) * -vec4<i32>(global1.b.x, -1i, var_0.b.x, u_input.e), ~_wgslsmith_mult_vec4_i32(vec4<i32>(43168i, var_0.b.x, -5524i, -11662i), vec4<i32>(0i, u_input.e, var_1.b.x, -2147483647i))), select(vec4<bool>(global3[_wgslsmith_index_u32(~(63400u << (0u % 32u)), 20u)], !(!global3[_wgslsmith_index_u32(global1.a.x, 20u)]), u_input.e > -11344i, all(vec4<bool>(true, global3[_wgslsmith_index_u32(var_0.a.x, 20u)], global3[_wgslsmith_index_u32(global1.a.x, 20u)], true))), vec4<bool>(all(select(vec4<bool>(global3[_wgslsmith_index_u32(var_0.a.x, 20u)], false, false, true), vec4<bool>(global3[_wgslsmith_index_u32(global1.a.x, 20u)], global3[_wgslsmith_index_u32(global1.a.x, 20u)], global3[_wgslsmith_index_u32(52755u, 20u)], global3[_wgslsmith_index_u32(var_1.a.x, 20u)]), global3[_wgslsmith_index_u32(u_input.a.x, 20u)])), false, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global1.a.x, var_0.a.x), 20u)], false), select(vec4<bool>(select(false, global3[_wgslsmith_index_u32(var_0.a.x, 20u)], false), all(vec2<bool>(global3[_wgslsmith_index_u32(45387u, 20u)], true)), all(vec3<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 20u)], global3[_wgslsmith_index_u32(var_0.a.x, 20u)], global3[_wgslsmith_index_u32(var_1.a.x, 20u)])), global3[_wgslsmith_index_u32(4294967295u, 20u)]), vec4<bool>(!global3[_wgslsmith_index_u32(var_0.a.x, 20u)], global3[_wgslsmith_index_u32(abs(1u), 20u)], true, !global3[_wgslsmith_index_u32(1u, 20u)]), select(!vec4<bool>(true, true, global3[_wgslsmith_index_u32(global1.a.x, 20u)], true), !vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 20u)], false, global3[_wgslsmith_index_u32(global1.a.x, 20u)], global3[_wgslsmith_index_u32(0u, 20u)]), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(2701u, 54717u), 20u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(max(-(var_0.b.x | var_2.x), (global1.b.x ^ 16836i) & 12145i), var_1.b.x, _wgslsmith_mod_i32(global1.b.x, var_0.b.x) | ~(-50604i)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -891f), 483f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1060f + 794f))) - -1000f))), max(~var_0.a, abs(~vec4<u32>(15569u, var_1.a.x, 20510u, 31630u))), var_2.x, var_2);
}

