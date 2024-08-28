struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<vec2<u32>, 10>;

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(i32(-2147483648), 709f, 28814u, 1i, true);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: i32) -> vec3<f32> {
    var var_0 = Struct_1(65487i, _wgslsmith_div_f32(global3.b, arg_0), ~1u, ~(firstTrailingBit(~16572i) ^ ~(-global3.d)), any(vec4<bool>(global2.e, global3.e, true, _wgslsmith_mult_i32(1i, global3.d) == u_input.d.x)));
    let var_1 = 4294967295u;
    global0 = 34800u;
    let var_2 = 1i;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(floor(global3.b)))))) * global2.b);
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-764f, arg_0)), arg_0), var_3, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1294f - 1345f), var_3))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-257f)), -147f, -548f)))));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2767f, arg_1.b, 466f)))))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(exp2(global2.b)), vec2<u32>(1u, 37750u & arg_1.c), _wgslsmith_dot_vec2_i32(-u_input.d.wx, -vec2<i32>(global3.d, -19422i)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-265f, global3.b, global3.b)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.b, global3.b, global3.b), vec3<f32>(875f, 558f, global2.b))))))));
    let var_1 = ~(~arg_1.c);
    global1 = array<vec2<u32>, 10>();
    var var_2 = var_0.x;
    let var_3 = _wgslsmith_dot_vec2_i32(u_input.d.zw, vec2<i32>(1i, 9298i));
    return var_1;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> f32 {
    var var_0 = true;
    global1 = array<vec2<u32>, 10>();
    var var_1 = Struct_1(firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.d.xy, _wgslsmith_add_vec2_i32(vec2<i32>(global3.a, global2.a), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(-2147483647i, -36952i))))), _wgslsmith_f_op_f32(min(-1282f, 718f)), 1u, 24240i, !(!all(select(vec3<bool>(true, global2.e, true), vec3<bool>(true, arg_1.e, global3.e), vec3<bool>(arg_1.e, false, arg_3.e)))));
    let var_2 = arg_1;
    var var_3 = _wgslsmith_div_u32(arg_1.c, ~_wgslsmith_mult_u32(abs(global2.c), 4294967295u));
    return -568f;
}

fn func_1(arg_0: bool, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(-1036f, -168f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.b))) * _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(global3.b * _wgslsmith_f_op_f32(step(global3.b, 1149f))), Struct_1(203i, _wgslsmith_f_op_f32(global3.b - global2.b), u_input.e.x, min(-16268i, 0i), any(arg_1)), select(func_2(arg_1, Struct_1(global2.d, -1422f, 4294967295u, 0i, global3.e)), u_input.e.x, false), Struct_1(global2.d, _wgslsmith_f_op_f32(select(global2.b, 1000f, false)), global3.c, 47572i, any(vec4<bool>(false, global3.e, true, global2.e)))))));
    var var_1 = Struct_1(global3.a, var_0.x, abs(4238u), abs(firstLeadingBit(countOneBits(2147483647i))), global2.e);
    var var_2 = Struct_1(u_input.c, 1616f, ~(select(global2.c, _wgslsmith_add_u32(var_1.c, 1u), true) << (global3.c % 32u)), -30755i << (_wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, global2.c)), abs(max(vec2<u32>(78123u, var_1.c), global1[_wgslsmith_index_u32(var_1.c, 10u)]))) % 32u), all(vec2<bool>(arg_1.x, global3.e)));
    global1 = array<vec2<u32>, 10>();
    let var_3 = global3.b;
    return Struct_1(34676i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-322f, _wgslsmith_f_op_f32(trunc(477f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1480f)) * _wgslsmith_f_op_f32(f32(-1f) * -804f)))), countOneBits(4294967295u), max(min(~u_input.c, ~13822i), _wgslsmith_div_i32(-2147483647i, u_input.d.x)) | global2.d, !(-954i != max(~u_input.c, abs(u_input.d.x))));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec3<bool>, arg_3: vec4<i32>) -> bool {
    var var_0 = true;
    let var_1 = arg_2;
    var var_2 = abs(arg_3.x);
    var_0 = all(vec2<bool>(true, true));
    global3 = Struct_1(-57267i, -529f, 1u, arg_1, arg_0.e);
    return all(vec4<bool>(arg_2.x, select(false, all(arg_2.yy), arg_0.e), false, global2.e));
}

fn func_6(arg_0: bool) -> u32 {
    var var_0 = func_1(select(true, arg_0 & any(select(vec4<bool>(global2.e, true, arg_0, true), vec4<bool>(arg_0, global3.e, true, global3.e), arg_0)), func_5(Struct_1(global3.a, _wgslsmith_f_op_f32(-global3.b), ~global3.c, _wgslsmith_div_i32(-52162i, -56084i), global2.e), global2.a, select(vec3<bool>(arg_0, false, arg_0), select(vec3<bool>(false, global2.e, arg_0), vec3<bool>(true, global2.e, false), true), global3.e), select(_wgslsmith_mult_vec4_i32(vec4<i32>(70432i, u_input.c, -2147483647i, u_input.d.x), vec4<i32>(global3.d, -2147483647i, -2147483647i, global2.d)), u_input.d >> (vec4<u32>(0u, 3862u, global3.c, 4294967295u) % vec4<u32>(32u)), arg_0))), !select(vec2<bool>(true, false), !(!vec2<bool>(global2.e, global2.e)), vec2<bool>(true, !global2.e)));
    global3 = Struct_1(-_wgslsmith_div_i32(select(func_1(false, vec2<bool>(global2.e, global3.e)).a, -37560i, true), 26961i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(672f * -485f), _wgslsmith_f_op_f32(func_4(global3.b, Struct_1(var_0.d, 506f, var_0.c, 62639i, arg_0), global2.c, Struct_1(global3.d, var_0.b, u_input.a.x, global2.d, false)))))))), ~4294967295u ^ u_input.a.x, reverseBits(u_input.c >> (~(~55491u) % 32u)), func_5(func_1(global2.e, vec2<bool>(global2.b >= 1905f, var_0.e)), u_input.d.x, select(select(!vec3<bool>(global3.e, global2.e, true), vec3<bool>(true, true, true), any(vec3<bool>(var_0.e, false, var_0.e))), vec3<bool>(!arg_0, var_0.e, false != global3.e), all(!vec4<bool>(true, var_0.e, var_0.e, false))), u_input.d));
    var_0 = func_1(true, select(!select(vec2<bool>(true, true), select(vec2<bool>(var_0.e, global2.e), vec2<bool>(true, var_0.e), vec2<bool>(var_0.e, true)), !vec2<bool>(var_0.e, var_0.e)), vec2<bool>(var_0.e, true), vec2<bool>(global2.e, func_1(!global3.e, vec2<bool>(true, true)).e)));
    let var_1 = func_1(all(vec4<bool>(global3.e, true, true, global2.e)), vec2<bool>(!global2.e, true));
    let var_2 = vec4<bool>(global3.e, global2.e, arg_0, all(select(vec4<bool>(all(vec2<bool>(true, global2.e)), true, -335f > global2.b, true), vec4<bool>(var_1.e, any(vec2<bool>(true, false)), false, true), global2.e)));
    return _wgslsmith_div_u32(2690u, global3.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global3.b), _wgslsmith_f_op_f32(global3.b - 466f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(701f, global2.b))))), vec2<f32>(608f, _wgslsmith_f_op_f32(global2.b * _wgslsmith_f_op_f32(f32(-1f) * -168f))), !select(vec2<bool>(true, true), select(vec2<bool>(false, global2.e), vec2<bool>(true, true), vec2<bool>(true, true)), 630f > global2.b)))));
    var var_1 = Struct_1(global3.d ^ _wgslsmith_add_i32(_wgslsmith_sub_i32(global3.a, _wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(18219i, 2147483647i, u_input.c, global3.a))), -u_input.c), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - 523f) + _wgslsmith_f_op_f32(ceil(-1267f)))))), _wgslsmith_mod_u32(1u, _wgslsmith_add_u32(96531u ^ _wgslsmith_clamp_u32(73036u, u_input.b.x, 42910u), firstTrailingBit(1u))), global2.d, all(!vec4<bool>(global2.e, global3.e == false, !global2.e, all(vec4<bool>(global3.e, false, true, false)))));
    global0 = func_6(!func_5(func_1(false, select(vec2<bool>(false, true), vec2<bool>(var_1.e, true), var_1.e)), var_1.d, select(select(vec3<bool>(var_1.e, false, global3.e), vec3<bool>(var_1.e, var_1.e, false), false), select(vec3<bool>(false, true, var_1.e), vec3<bool>(var_1.e, var_1.e, false), vec3<bool>(global2.e, global3.e, var_1.e)), global2.e), vec4<i32>(max(global2.a, global2.a), -var_1.d, ~(-6218i), global2.a ^ 1i)));
    let var_2 = _wgslsmith_clamp_vec2_i32(vec2<i32>(10431i, 1i << (global2.c % 32u)), vec2<i32>(i32(-1i) * -1i, 1i), select(u_input.d.yw, vec2<i32>(-2147483647i, abs(_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(global3.a, 37699i, global3.a, u_input.c)))), global3.e));
    global3 = func_1(true, select(select(select(select(vec2<bool>(global2.e, global3.e), vec2<bool>(global2.e, var_1.e), global3.e), select(vec2<bool>(false, var_1.e), vec2<bool>(global3.e, global3.e), global2.e), !var_1.e), select(!vec2<bool>(var_1.e, global2.e), vec2<bool>(var_1.e, var_1.e), select(vec2<bool>(global3.e, false), vec2<bool>(true, global3.e), vec2<bool>(global2.e, true))), true), vec2<bool>(global2.e, !func_5(Struct_1(1i, -1179f, u_input.b.x, var_1.a, var_1.e), 2147483647i, vec3<bool>(global3.e, true, false), u_input.d)), vec2<bool>(!var_1.e, any(vec4<bool>(var_1.e, var_1.e, false, false)))));
    var_1 = func_1(func_1(158f < global2.b, !select(vec2<bool>(global3.e, global2.e), vec2<bool>(true, true), all(vec3<bool>(var_1.e, var_1.e, true)))).e, select(!vec2<bool>(global2.e, true), !select(!vec2<bool>(var_1.e, false), select(vec2<bool>(global2.e, global2.e), vec2<bool>(global3.e, true), vec2<bool>(var_1.e, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), global2.e)), u_input.c == global3.a));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b * -512f) - var_0.x), func_1(all(select(vec4<bool>(false, global2.e, global2.e, true), vec4<bool>(true, true, global3.e, global2.e), vec4<bool>(true, true, global3.e, global2.e))), !(!vec2<bool>(false, var_1.e))), reverseBits(~u_input.a.x) & firstTrailingBit(reverseBits(0u)), func_1(false, !select(vec2<bool>(false, false), vec2<bool>(false, true), true)))) - var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(var_1.c, 0u), global3.b, abs(38472i));
}

