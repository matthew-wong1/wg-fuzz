struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: f32,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12>;

var<private> global1: vec3<i32> = vec3<i32>(2147483647i, -9029i, i32(-2147483648));

var<private> global2: array<vec3<bool>, 28>;

var<private> global3: array<Struct_1, 7>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(104f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -1000f)))), -722f)));
    let var_1 = u_input.d;
    global2 = array<vec3<bool>, 28>();
    var var_2 = ~26495u;
    let var_3 = -724f;
    return _wgslsmith_sub_u32(4473u, _wgslsmith_mult_u32(9213u, 0u) ^ u_input.a);
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = vec4<bool>(any(vec4<bool>(false, !all(vec3<bool>(arg_0.d, false, global0[_wgslsmith_index_u32(arg_0.a.x, 12u)])), arg_0.d, true)), !(arg_0.b.x > (i32(-1i) * -44120i)), any(!vec4<bool>(arg_0.d, u_input.c.x != u_input.d.x, arg_0.d, global0[_wgslsmith_index_u32(arg_0.a.x, 12u)])), !all(global2[_wgslsmith_index_u32(max(4294967295u, _wgslsmith_mult_u32(27328u, 27878u)), 28u)]));
    var var_1 = u_input.b;
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(func_1(), func_1()), 32818u), 7u)];
    var var_3 = _wgslsmith_f_op_f32(arg_0.e.x * _wgslsmith_f_op_f32(-arg_0.e.x)) >= -1000f;
    let var_4 = global3[_wgslsmith_index_u32(var_2.a.x, 7u)];
    return -2147483647i;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> vec2<f32> {
    global3 = array<Struct_1, 7>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_3.c)) * _wgslsmith_f_op_f32(610f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1232f))))));
    let var_1 = vec3<i32>(~func_3(Struct_1(u_input.e, vec2<i32>(11299i, u_input.d.x), -398f, true, vec2<f32>(269f, -1000f))) << (((_wgslsmith_dot_vec2_u32(u_input.e, arg_1.a) << (arg_1.a.x % 32u)) >> (91449u % 32u)) % 32u), ~(i32(-1i) * -(~2147483647i)), _wgslsmith_clamp_i32(arg_2, ~(-1i) & _wgslsmith_mod_i32(arg_3.b.x, abs(-2147483647i)), -12543i));
    var var_2 = min(u_input.d, select(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, global1.x, -1i, var_1.x), u_input.d) ^ (vec4<i32>(5591i, -15036i, arg_2, arg_1.b.x) | u_input.d), -vec4<i32>(2147483647i, -1i, arg_3.b.x, -1i)), vec4<i32>(0i, _wgslsmith_add_i32(-global1.x, _wgslsmith_sub_i32(-10531i, global1.x)), -u_input.c.x | reverseBits(arg_3.b.x), global1.x), !vec4<bool>(true, true, global0[_wgslsmith_index_u32(~arg_1.a.x, 12u)], false)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1359f));
    return arg_3.e;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = -_wgslsmith_mod_i32(arg_0.b.x, _wgslsmith_div_i32(1i, 1i));
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-797f, arg_0.e.x, arg_0.c))))));
    var var_3 = all(select(select(!(!vec4<bool>(false, false, true, arg_0.d)), vec4<bool>(false, var_1, var_2.x < -1417f, !var_1), vec4<bool>(var_1 && arg_1.d, true, var_1 | true, all(vec4<bool>(arg_0.d, true, true, arg_1.d)))), vec4<bool>(false, arg_1.d, arg_0.d, !any(global2[_wgslsmith_index_u32(34281u, 28u)])), vec4<bool>(-861f != _wgslsmith_f_op_f32(floor(166f)), arg_0.d, all(vec2<bool>(false, false)), var_1 || any(vec2<bool>(arg_0.d, false)))));
    var var_4 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) + _wgslsmith_f_op_f32(step(arg_0.e.x, arg_0.e.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_2.x, 340f))), -168f))));
    return abs(arg_0.a.x >> (arg_0.a.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(~4294967295u, u_input.a);
    let var_1 = Struct_1(vec2<u32>(max(31055u, func_1()) >> (var_0.x % 32u), func_4(Struct_1(~vec2<u32>(u_input.b.x, 1078u), vec2<i32>(u_input.c.x, -2147483647i), 1077f, 4294967295u <= var_0.x, _wgslsmith_f_op_vec2_f32(func_2(vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 12u)], global0[_wgslsmith_index_u32(var_0.x, 12u)], global0[_wgslsmith_index_u32(u_input.b.x, 12u)]), global3[_wgslsmith_index_u32(u_input.b.x, 7u)], 2147483647i, global3[_wgslsmith_index_u32(var_0.x, 7u)]))), Struct_1(vec2<u32>(var_0.x, 24701u), vec2<i32>(29579i, -26296i), _wgslsmith_f_op_f32(select(2043f, -723f, false)), !global0[_wgslsmith_index_u32(35476u, 12u)], _wgslsmith_div_vec2_f32(vec2<f32>(945f, -963f), vec2<f32>(1571f, -308f))))), ~vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-4558i, 1i, 1i), vec3<i32>(u_input.c.x, global1.x, -13398i)), _wgslsmith_mult_i32(0i, 1i)) & vec2<i32>(2147483647i, 0i), _wgslsmith_f_op_f32(1f - 1228f), !(!(_wgslsmith_div_i32(global1.x, -2147483647i) == global1.x)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f))));
    global2 = array<vec3<bool>, 28>();
    let var_2 = ~abs(min(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), select(vec3<u32>(u_input.e.x, 68988u, u_input.a), vec3<u32>(var_0.x, 4294967295u, var_1.a.x), var_1.d)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, 31664u, var_1.a.x), ~u_input.b.xxx)));
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(max(u_input.e.x, ~(~11110u)), max(var_0.x, abs(_wgslsmith_mod_u32(var_1.a.x, var_0.x)))), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(select(~var_2.xy, _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 12686u), var_1.a, vec2<u32>(var_2.x, var_1.a.x)), global1.x > u_input.d.x), max(var_1.a, vec2<u32>(4294967295u, var_2.x) >> (u_input.e % vec2<u32>(32u)))), var_0.x)), 7u)];
    let var_4 = global3[_wgslsmith_index_u32(~u_input.a, 7u)];
    let var_5 = Struct_1(~(~vec2<u32>(var_0.x, 0u) >> (var_1.a % vec2<u32>(32u))), var_3.b, -520f, var_1.d, var_1.e);
    var var_6 = Struct_1(vec2<u32>(var_3.a.x, var_1.a.x), var_1.b, var_5.c, ((0u > _wgslsmith_dot_vec2_u32(vec2<u32>(var_4.a.x, var_2.x), vec2<u32>(var_1.a.x, var_2.x))) || all(vec4<bool>(var_3.d, var_5.d, true, true))) && any(vec3<bool>(var_5.d, !var_1.d, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -425f), _wgslsmith_f_op_f32(sign(-631f)))));
    var var_7 = vec2<u32>(~min(~(~4294967295u), ~var_5.a.x), 15266u);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, vec4<i32>(var_5.b.x & firstTrailingBit(-var_5.b.x), 1i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(var_6.b, _wgslsmith_clamp_vec2_i32(vec2<i32>(global1.x, var_3.b.x), global1.xy, vec2<i32>(-820i, var_4.b.x))), _wgslsmith_mod_vec2_i32(var_6.b, vec2<i32>(var_4.b.x, -13886i) | vec2<i32>(-3882i, -48317i))), 19363i));
}

