struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 1> = array<vec2<i32>, 1>(vec2<i32>(1i, 2147483647i));

var<private> global1: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(Struct_1(-396f), vec2<i32>(-12711i, 17796i), -815f, Struct_2(Struct_1(1672f), vec4<i32>(1i, 26913i, i32(-2147483648), 1i), Struct_1(-1000f))), Struct_3(Struct_1(-1000f), vec2<i32>(i32(-2147483648), -1i), -177f, Struct_2(Struct_1(1471f), vec4<i32>(2147483647i, 0i, -6624i, 0i), Struct_1(-862f))), Struct_3(Struct_1(588f), vec2<i32>(1i, 42834i), 752f, Struct_2(Struct_1(408f), vec4<i32>(1i, -4i, 2147483647i, -14282i), Struct_1(350f))), Struct_3(Struct_1(-121f), vec2<i32>(-43857i, 0i), 685f, Struct_2(Struct_1(-2041f), vec4<i32>(7253i, i32(-2147483648), -25838i, 2147483647i), Struct_1(778f))), Struct_3(Struct_1(-2048f), vec2<i32>(2147483647i, 5024i), -290f, Struct_2(Struct_1(-763f), vec4<i32>(i32(-2147483648), 60826i, 0i, -47672i), Struct_1(997f))), Struct_3(Struct_1(1494f), vec2<i32>(30395i, -20135i), 1314f, Struct_2(Struct_1(1189f), vec4<i32>(0i, 1i, i32(-2147483648), -10993i), Struct_1(1240f))), Struct_3(Struct_1(225f), vec2<i32>(2147483647i, 1i), 1710f, Struct_2(Struct_1(-1000f), vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 1119i), Struct_1(-1559f))), Struct_3(Struct_1(253f), vec2<i32>(49741i, -21951i), 2840f, Struct_2(Struct_1(1665f), vec4<i32>(i32(-2147483648), -652i, -1i, 1i), Struct_1(408f))), Struct_3(Struct_1(408f), vec2<i32>(1i, -15779i), 314f, Struct_2(Struct_1(1600f), vec4<i32>(40169i, -1i, 1i, -25844i), Struct_1(-1648f))), Struct_3(Struct_1(960f), vec2<i32>(-12175i, -103469i), 523f, Struct_2(Struct_1(684f), vec4<i32>(-43482i, i32(-2147483648), -29327i, 40862i), Struct_1(1000f))), Struct_3(Struct_1(-916f), vec2<i32>(0i, 27279i), 1521f, Struct_2(Struct_1(-2214f), vec4<i32>(-1i, -1i, 2147483647i, 28234i), Struct_1(-614f))));

var<private> global2: array<f32, 3>;

var<private> global3: vec4<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: Struct_3, arg_3: bool) -> vec4<i32> {
    global1 = array<Struct_3, 11>();
    var var_0 = select(select(!vec3<bool>(false & arg_3, arg_3, !arg_3), !(!vec3<bool>(false, arg_3, false)), !any(!vec2<bool>(true, arg_3))), select(vec3<bool>(!arg_3, arg_3, arg_3), vec3<bool>(true, true, false), !(!vec3<bool>(arg_3, arg_3, arg_3))), arg_3);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-650f)), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.c, 3u)], global2[_wgslsmith_index_u32(1u, 3u)])) + _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-329f, arg_1), global3.x, true))) + -1275f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-115f, _wgslsmith_f_op_f32(-658f * _wgslsmith_f_op_f32(-arg_2.a.a)))))), 826f, 977f);
    var var_2 = arg_0.d;
    var var_3 = arg_2.d;
    return _wgslsmith_mod_vec4_i32(firstTrailingBit(~abs(vec4<i32>(0i, var_2.b.x, 7020i, arg_0.b.x))) & _wgslsmith_sub_vec4_i32(-vec4<i32>(var_3.b.x, -2904i, arg_0.d.b.x, 994i), select(vec4<i32>(var_2.b.x, -21891i, var_3.b.x, arg_2.b.x), vec4<i32>(-21182i, arg_2.b.x, var_2.b.x, var_2.b.x), var_0.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.b.x, 70978i, var_2.b.x << (25709u % 32u), _wgslsmith_add_i32(-1i, arg_0.d.b.x)) << (vec4<u32>(3368u, 22217u, max(1u, u_input.b), u_input.b) % vec4<u32>(32u)), countOneBits(_wgslsmith_clamp_vec4_i32(abs(var_2.b), var_3.b, arg_0.d.b))));
}

fn func_2() -> u32 {
    let var_0 = u_input.c;
    var var_1 = ~(~(-9327i));
    var var_2 = _wgslsmith_clamp_vec4_i32(-select(-vec4<i32>(-2147483647i, 36200i, -1i, -16311i), select(func_3(Struct_3(Struct_1(169f), vec2<i32>(-1i, 2147483647i), global2[_wgslsmith_index_u32(1u, 3u)], Struct_2(Struct_1(global2[_wgslsmith_index_u32(1u, 3u)]), vec4<i32>(0i, -2147483647i, 0i, 80412i), Struct_1(global2[_wgslsmith_index_u32(0u, 3u)]))), global2[_wgslsmith_index_u32(var_0, 3u)], global1[_wgslsmith_index_u32(0u, 11u)], true), -vec4<i32>(-14870i, -1i, 1i, 1i), vec4<bool>(true, true, true, true)), _wgslsmith_mod_i32(-1i, -1i) <= _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 1i, -1i), vec3<i32>(5560i, -2829i, -1i))), _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(~select(vec4<i32>(0i, -1i, -4010i, 0i), vec4<i32>(2147483647i, -2670i, 2147483647i, -17233i), vec4<bool>(false, false, true, false)), vec4<i32>(1i, 1285i, firstLeadingBit(-44388i), ~(-11846i)), ~(~vec4<i32>(17929i, 52844i, -55726i, 0i))), -vec4<i32>(1i, 1i, 1i, 1i)), -firstTrailingBit(vec4<i32>(min(-51567i, -1396i), select(-58109i, 42280i, true), -2147483647i, -47830i)));
    let var_3 = !vec4<bool>(true, true, true, !all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false))));
    var_1 = reverseBits(_wgslsmith_mod_i32(1i, _wgslsmith_clamp_i32(~_wgslsmith_clamp_i32(var_2.x, var_2.x, var_2.x), _wgslsmith_clamp_i32(max(2147483647i, var_2.x), _wgslsmith_add_i32(-20134i, var_2.x), countOneBits(var_2.x)), _wgslsmith_dot_vec4_i32(-vec4<i32>(var_2.x, -1i, 13024i, var_2.x), firstTrailingBit(vec4<i32>(var_2.x, var_2.x, -1i, -50959i))))));
    return 1u;
}

fn func_4(arg_0: vec2<u32>, arg_1: bool, arg_2: u32, arg_3: vec4<i32>) -> Struct_3 {
    global3 = vec4<f32>(_wgslsmith_f_op_f32(global3.x - -536f), global3.x, _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(f32(-1f) * -2401f));
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(374f + _wgslsmith_div_f32(1588f, _wgslsmith_f_op_f32(trunc(1571f))))), arg_3, Struct_1(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c, 3u)] * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-169f * global3.x), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 3u)] * global2[_wgslsmith_index_u32(0u, 3u)])))));
    global2 = array<f32, 3>();
    global3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(16629u, 3u)] - global2[_wgslsmith_index_u32(arg_0.x, 3u)]))), global3.x, 804f, var_0.a.a));
    global0 = array<vec2<i32>, 1>();
    return Struct_3(Struct_1(1f), reverseBits(arg_3.ww), -756f, Struct_2(Struct_1(-529f), arg_3, var_0.a));
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = false;
    let var_1 = func_4(vec2<u32>(~(~arg_0 | func_2()), max(arg_0, u_input.c)), any(select(vec2<bool>(true, all(vec4<bool>(false, false, var_0, var_0))), vec2<bool>(all(vec3<bool>(var_0, false, true)), !var_0), false)), _wgslsmith_sub_u32((~arg_0 | countOneBits(25798u)) >> (u_input.a.x % 32u), u_input.b), -_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i, 4745i, 0i, 8166i)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(1i, -2147483647i, -2147483647i, 8992i), vec4<i32>(47481i, 23304i, 1i, 0i), abs(vec4<i32>(-11227i, -48171i, 47788i, 1i)))));
    var var_2 = Struct_2(var_1.d.c, _wgslsmith_add_vec4_i32(var_1.d.b, ~_wgslsmith_sub_vec4_i32(abs(var_1.d.b), vec4<i32>(-1i, var_1.d.b.x, -18064i, var_1.d.b.x))), func_4(vec2<u32>(~0u, u_input.c), var_0, arg_0, _wgslsmith_clamp_vec4_i32(firstTrailingBit(var_1.d.b) ^ (var_1.d.b >> (u_input.a % vec4<u32>(32u))), var_1.d.b, -(~var_1.d.b))).d.c);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(abs(195f)));
    let var_4 = abs(-var_1.b.x | var_1.b.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(func_2(), 3u)]) * global3.x));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1303f, global3.x)) * _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(trunc(183f)))), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 3u)]), -580f), _wgslsmith_f_op_f32(trunc(-1862f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(reverseBits(1u))))));
    let var_0 = firstTrailingBit(global0[_wgslsmith_index_u32(~u_input.c, 1u)]);
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(global3.xy));
    let var_2 = 36948i;
    global2 = array<f32, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global3.x), abs(vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, 6833u), 1u)) >> (u_input.d.zz % vec2<u32>(32u)), var_2, 198f, var_1.x);
}

