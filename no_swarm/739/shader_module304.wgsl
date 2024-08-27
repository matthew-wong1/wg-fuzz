struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec2<i32>(-10693i, 14496i), i32(-2147483648)), Struct_1(vec2<i32>(-1i, -12518i), 39098i), Struct_1(vec2<i32>(0i, -15825i), 1i), Struct_1(vec2<i32>(0i, i32(-2147483648)), 0i), Struct_1(vec2<i32>(33097i, -1i), 26250i), Struct_1(vec2<i32>(0i, 1i), 0i), Struct_1(vec2<i32>(52295i, 2147483647i), 1i), Struct_1(vec2<i32>(28874i, -73799i), i32(-2147483648)), Struct_1(vec2<i32>(-1i, -36574i), 0i), Struct_1(vec2<i32>(i32(-2147483648), -17320i), 0i), Struct_1(vec2<i32>(28487i, -1i), 45319i), Struct_1(vec2<i32>(-79619i, -34886i), 10782i), Struct_1(vec2<i32>(0i, 8195i), 2147483647i), Struct_1(vec2<i32>(54004i, 10762i), i32(-2147483648)), Struct_1(vec2<i32>(-9683i, -8782i), 55183i), Struct_1(vec2<i32>(1i, 17484i), -1i), Struct_1(vec2<i32>(9167i, 1i), 92751i), Struct_1(vec2<i32>(22081i, 2147483647i), i32(-2147483648)), Struct_1(vec2<i32>(2147483647i, 44494i), 2147483647i), Struct_1(vec2<i32>(8030i, 2147483647i), -20267i), Struct_1(vec2<i32>(-61781i, 54186i), -29951i), Struct_1(vec2<i32>(0i, 2147483647i), -13971i), Struct_1(vec2<i32>(-19584i, i32(-2147483648)), 0i));

var<private> global1: array<vec2<i32>, 8> = array<vec2<i32>, 8>(vec2<i32>(-18018i, i32(-2147483648)), vec2<i32>(-8671i, 2147483647i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(24718i, -50504i), vec2<i32>(-26201i, i32(-2147483648)), vec2<i32>(1i, 22374i), vec2<i32>(-1i, 0i), vec2<i32>(-1i, 33186i));

var<private> global2: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec2<i32>(1i, 0i), 17271i), Struct_1(vec2<i32>(0i, -1i), -1i), Struct_1(vec2<i32>(-1i, i32(-2147483648)), -17183i), Struct_1(vec2<i32>(-1i, 2147483647i), 0i), Struct_1(vec2<i32>(1i, i32(-2147483648)), -7725i), Struct_1(vec2<i32>(-1966i, -81237i), 28061i), Struct_1(vec2<i32>(1i, 39833i), -1i), Struct_1(vec2<i32>(-11260i, 1i), -7229i), Struct_1(vec2<i32>(6361i, 7925i), 46470i), Struct_1(vec2<i32>(21498i, 0i), 5213i), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), i32(-2147483648)));

var<private> global3: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec4<bool>) -> vec3<bool> {
    var var_0 = global0[_wgslsmith_index_u32(1u, 23u)];
    global1 = array<vec2<i32>, 8>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-833f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1, arg_1)))) * -862f));
    var var_2 = ~4294967295u;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(746f - _wgslsmith_f_op_f32(sign(var_1))) + -107f);
    return arg_2.xyz;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>) -> f32 {
    var var_0 = select(select(vec4<bool>(!(!arg_2.x), true, false, (arg_2.x && arg_2.x) || arg_2.x), select(select(!vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), select(arg_2, arg_2, arg_2)), vec4<bool>(arg_2.x, !arg_2.x, all(arg_2), arg_2.x), select(arg_2, arg_2, !arg_2.x)), vec4<bool>(arg_2.x, true, arg_2.x, !arg_2.x)), vec4<bool>(func_2(-abs(2147483647i), 1063f, arg_2).x, false, arg_2.x & arg_2.x, false), arg_2.x);
    var var_1 = max(vec3<u32>(73334u, ~(~27347u), 1u), abs(min(select(vec3<u32>(50158u, 0u, 37015u), vec3<u32>(4294967295u, 24420u, 4017u), var_0.zyy), ~vec3<u32>(47876u, 34565u, 1u)))) & abs(~_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(66221u, 50352u, 1u), vec3<u32>(1u, 3399u, 0u), vec3<u32>(28945u, 24125u, 27927u)), _wgslsmith_mod_vec3_u32(vec3<u32>(19816u, 1u, 24702u), vec3<u32>(101447u, 76358u, 87075u))));
    var_1 = _wgslsmith_mod_vec3_u32(countOneBits(countOneBits(vec3<u32>(var_1.x, 36084u, var_1.x) | vec3<u32>(var_1.x, var_1.x, 4294967295u))), ~min(_wgslsmith_mult_vec3_u32(vec3<u32>(30853u, var_1.x, 14123u), vec3<u32>(4294967295u, 0u, var_1.x)), vec3<u32>(var_1.x, 1u, 4294967295u))) | max(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_1.x, 21969u, 9133u), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 0u, var_1.x), vec3<u32>(4294967295u, var_1.x, var_1.x)), vec3<u32>(1u, var_1.x, 41256u)), vec3<u32>(~0u, _wgslsmith_add_u32(34993u, var_1.x >> (4294967295u % 32u)), 109097u));
    let var_2 = ~(~select(select(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 1u, 21181u), vec3<u32>(var_1.x, var_1.x, 71268u)), vec3<u32>(var_1.x, var_1.x, var_1.x) << (vec3<u32>(var_1.x, 1u, 4294967295u) % vec3<u32>(32u)), func_2(arg_1.a.x, 377f, vec4<bool>(false, true, false, false))), vec3<u32>(abs(5846u), _wgslsmith_mod_u32(var_1.x, var_1.x), 4294967295u), all(arg_2.zxz)));
    var var_3 = -(~max(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 45975i, arg_0.a.x, global3.a.x) & vec4<i32>(-37760i, global3.a.x, global3.b, global3.b), vec4<i32>(global3.a.x, arg_0.b, u_input.a.x, arg_1.b) >> (vec4<u32>(170u, 42438u, var_2.x, 1u) % vec4<u32>(32u))), 1i));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(878f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -987f), _wgslsmith_f_op_f32(round(-507f))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-2229f, 330f))))))));
}

fn func_4(arg_0: vec3<f32>) -> vec2<bool> {
    let var_0 = !select(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), func_2(global3.a.x, -835f, vec4<bool>(false, false, false, false)).yx)));
    let var_1 = vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(56541i, u_input.a.x, u_input.a.x), ~(-11351i)) & (_wgslsmith_dot_vec2_i32(vec2<i32>(global3.a.x, 13077i), vec2<i32>(u_input.a.x, -1i)) << (0u % 32u)), max(7010i, abs(1i)), -17070i) | countOneBits(vec3<i32>(~global3.a.x, _wgslsmith_dot_vec2_i32(global3.a, vec2<i32>(4710i, 0i)), u_input.a.x));
    var var_2 = Struct_1(u_input.a.yz, -abs(u_input.a.x << (11481u % 32u)));
    let var_3 = true;
    global3 = Struct_1(global1[_wgslsmith_index_u32(~8674u, 8u)] ^ vec2<i32>(-8908i, ~24376i), -1i);
    return select(vec2<bool>(true, var_3), var_0, !var_0);
}

fn func_1() -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(~(select(max(15267u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(2413u, 1u))), 6652u, true) >> (_wgslsmith_dot_vec3_u32(select(~vec3<u32>(1u, 43841u, 18589u), ~vec3<u32>(19373u, 4294967295u, 6392u), func_2(-2147483647i, -1867f, vec4<bool>(false, true, true, false))), firstTrailingBit(vec3<u32>(1u, 1u, 1u))) % 32u)), 23u)];
    var var_1 = Struct_1(~var_0.a, var_0.b);
    let var_2 = func_4(vec3<f32>(1045f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-296f * _wgslsmith_f_op_f32(func_3(Struct_1(global3.a, 51410i), global2[_wgslsmith_index_u32(24442u, 11u)], vec4<bool>(true, true, false, true)))))), -714f));
    var var_3 = global3.a.x;
    var var_4 = global0[_wgslsmith_index_u32(4294967295u, 23u)];
    return _wgslsmith_f_op_f32(f32(-1f) * -1083f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-1f);
    let var_1 = global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(~1u), 4294967295u), ~vec2<u32>(1u, 1u))), 11u)];
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1()), 495f, select(func_4(vec3<f32>(-1760f, -1000f, 948f)).x, any(vec2<bool>(true, false)), true)))));
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, select(17307u, 14685u, false)), abs(4294967295u)), reverseBits(~(~32208u)), firstLeadingBit(firstLeadingBit(~1u))), min(31183u, 1u)), 11u)];
    global2 = array<Struct_1, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_dot_vec4_i32(-abs(vec4<i32>(var_1.a.x, global3.b, var_1.b, global3.b)), firstLeadingBit(vec4<i32>(u_input.a.x, -1i, var_1.b, global3.b) & vec4<i32>(global3.a.x, 47035i, u_input.a.x, var_1.a.x))), -_wgslsmith_add_i32(17537i, -22887i & var_3.b), firstTrailingBit(_wgslsmith_clamp_i32(-var_3.a.x, _wgslsmith_add_i32(global3.a.x, 0i), var_3.a.x))), select(countOneBits(~(~vec2<u32>(36547u, 1u))), vec2<u32>(0u, _wgslsmith_div_u32(abs(1u), 1u)), true), -global3.a.x, select(-(~var_1.a.x) >> (71208u % 32u), -2147483647i, true), _wgslsmith_add_vec4_i32(vec4<i32>(max(var_3.a.x, var_3.a.x), -56115i, ~2147483647i, ~2147483647i) >> (~(~vec4<u32>(4294967295u, 13080u, 4294967295u, 60847u)) % vec4<u32>(32u)), ~(-vec4<i32>(global3.a.x, 0i, var_3.a.x, -1i))));
}

