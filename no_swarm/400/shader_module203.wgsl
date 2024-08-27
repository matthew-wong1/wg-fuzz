struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec2<bool>,
    d: f32,
    e: u32,
}

struct Struct_5 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 30>;

var<private> global1: array<vec2<i32>, 10> = array<vec2<i32>, 10>(vec2<i32>(2147483647i, -3326i), vec2<i32>(0i, 12355i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(1i, -340i), vec2<i32>(i32(-2147483648), 18246i), vec2<i32>(0i, 1i), vec2<i32>(-40984i, -15077i), vec2<i32>(-9538i, 6985i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-1i, 2147483647i));

var<private> global2: array<i32, 5>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(arg_2.c * -444f);
    var var_1 = select(!(!arg_2.a.zz), arg_2.a.zx, vec2<bool>(arg_2.a.x, any(select(arg_2.a, arg_2.a, arg_2.a.x))));
    var_0 = 542f;
    var var_2 = Struct_3(false);
    let var_3 = u_input.a;
    return _wgslsmith_sub_u32(~arg_3.x, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(33117u, 57690u, 4294967295u, 49684u), select(vec4<u32>(arg_1.a, arg_1.a, 0u, arg_1.a), vec4<u32>(0u, arg_3.x, arg_3.x, arg_3.x), arg_2.a.x))) & _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_3.x, arg_3.x), select(~vec2<u32>(1u, u_input.a), u_input.b ^ vec2<u32>(1u, 56692u), var_1.x)), ~4294967295u);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: u32, arg_3: Struct_2) -> bool {
    let var_0 = arg_0;
    let var_1 = true;
    var var_2 = _wgslsmith_dot_vec4_i32(select(-vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 5u)], countOneBits(global2[_wgslsmith_index_u32(1u, 5u)]), global2[_wgslsmith_index_u32(arg_3.a, 5u)], -global2[_wgslsmith_index_u32(arg_2, 5u)]), -vec4<i32>(abs(global2[_wgslsmith_index_u32(u_input.a, 5u)]), global2[_wgslsmith_index_u32(~arg_0.a, 5u)], -36378i, ~2147483647i), any(select(vec2<bool>(false, true), vec2<bool>(var_1, true), vec2<bool>(true, var_1))) & (-84144i > _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(18257u, 5u)], -2147483647i))), abs(-_wgslsmith_clamp_vec4_i32(select(vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 5u)], global2[_wgslsmith_index_u32(15004u, 5u)], global2[_wgslsmith_index_u32(4294967295u, 5u)], global2[_wgslsmith_index_u32(4294967295u, 5u)]), vec4<i32>(1252i, 2147483647i, 0i, -2147483647i), var_1), select(vec4<i32>(global2[_wgslsmith_index_u32(9083u, 5u)], 1i, global2[_wgslsmith_index_u32(u_input.a, 5u)], global2[_wgslsmith_index_u32(19715u, 5u)]), vec4<i32>(233i, global2[_wgslsmith_index_u32(arg_0.a, 5u)], global2[_wgslsmith_index_u32(1u, 5u)], 0i), false), vec4<i32>(21554i, 2147483647i, -1i, -1i))));
    global2 = array<i32, 5>();
    global0 = array<vec3<f32>, 30>();
    return !(!(!select(true, true, true)));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec4<u32>, arg_3: u32) -> bool {
    let var_0 = ~max(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_div_i32(5407i, 69477i), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, u_input.a, arg_2.x), 5u)]), global1[_wgslsmith_index_u32(52940u, 10u)]), ~(-countOneBits(global1[_wgslsmith_index_u32(0u, 10u)])));
    let var_1 = arg_1;
    var var_2 = Struct_3(true);
    let var_3 = Struct_1(vec4<bool>(var_2.a, all(vec4<bool>(arg_3 == 0u, var_2.a, !var_1, true)), false, func_4(Struct_2(func_3(arg_0, Struct_2(arg_2.x), Struct_1(vec4<bool>(var_2.a, var_2.a, arg_1, false), vec3<i32>(-1i, var_0.x, global2[_wgslsmith_index_u32(25396u, 5u)]), -1063f), arg_2.zz)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-984f, 834f, arg_0, arg_0)))), arg_2.x, Struct_2(u_input.a | 122290u))), vec3<i32>(~var_0.x ^ var_0.x, ~var_0.x, -30735i) << ((vec3<u32>(11456u, arg_2.x >> (u_input.b.x % 32u), 1u) ^ ~arg_2.zxy) % vec3<u32>(32u)), arg_0);
    var var_4 = ~(arg_2 >> (arg_2 % vec4<u32>(32u)));
    return true;
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = select(vec4<bool>(true, !(arg_0 || (u_input.a != u_input.b.x)), -2147483647i <= -global2[_wgslsmith_index_u32(max(0u, 4294967295u), 5u)], !(!func_2(1512f, arg_0, vec4<u32>(u_input.a, 4294967295u, 0u, u_input.b.x), u_input.b.x))), vec4<bool>(any(vec4<bool>(any(vec3<bool>(arg_0, arg_0, false)), false, !arg_0, !arg_0)), false, arg_0, !(!any(vec2<bool>(arg_0, arg_0)))), any(select(vec3<bool>(false, arg_0, true), vec3<bool>(arg_0 && arg_0, arg_0, true), all(!vec4<bool>(arg_0, false, false, arg_0)))));
    var var_1 = _wgslsmith_f_op_f32(-747f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(591f, _wgslsmith_f_op_f32(ceil(-594f))))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(322f * 948f)))))));
    let var_2 = select(vec4<bool>(false & !arg_0, false, false, all(select(!vec4<bool>(true, arg_0, false, arg_0), !vec4<bool>(true, arg_0, false, true), false && arg_0))), select(vec4<bool>(!(true && var_0.x), any(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, false, arg_0), arg_0)), !arg_0 | false, var_0.x), vec4<bool>(arg_0, false, true, false), select(!(!vec4<bool>(var_0.x, true, var_0.x, var_0.x)), vec4<bool>(!var_0.x, !arg_0, true, true), true)), select(vec4<bool>(true && any(var_0.xwz), any(select(vec4<bool>(arg_0, var_0.x, false, false), vec4<bool>(true, false, var_0.x, true), var_0.x)), u_input.a <= _wgslsmith_add_u32(u_input.a, 4294967295u), !var_0.x), vec4<bool>(var_0.x, any(var_0.wx) || var_0.x, any(select(vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(var_0.x, arg_0, true, true), vec4<bool>(true, true, arg_0, var_0.x))), arg_0 | var_0.x), var_0.x));
    var var_3 = Struct_4(_wgslsmith_mod_vec2_i32(~(~(~global1[_wgslsmith_index_u32(4294967295u, 10u)])), global1[_wgslsmith_index_u32(u_input.a, 10u)]), !(!select(select(var_0.xw, vec2<bool>(false, var_2.x), false), vec2<bool>(true, true), var_0.zz)), select(!var_0.yw, select(vec2<bool>(true, true), select(vec2<bool>(true, var_0.x), select(vec2<bool>(arg_0, false), var_0.zx, var_2.ww), true), var_0.x), select(!(!var_2.zz), select(vec2<bool>(false, arg_0), select(var_2.yy, vec2<bool>(true, false), vec2<bool>(true, arg_0)), vec2<bool>(var_2.x, arg_0)), _wgslsmith_div_f32(564f, 1444f) >= _wgslsmith_f_op_f32(sign(450f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-417f * 660f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-163f, 399f)))))), 4294967295u);
    var var_4 = _wgslsmith_mod_vec2_i32(global1[_wgslsmith_index_u32(var_3.e, 10u)] >> ((_wgslsmith_add_vec2_u32(u_input.b, u_input.b) >> (u_input.b % vec2<u32>(32u))) % vec2<u32>(32u)), abs(vec2<i32>(-global2[_wgslsmith_index_u32(u_input.a, 5u)], global2[_wgslsmith_index_u32(1u, 5u)]) << (~vec2<u32>(var_3.e, 4294967295u) % vec2<u32>(32u))));
    return _wgslsmith_add_u32(~1u, var_3.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-238f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(832f, -672f)) - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1520f, -339f), _wgslsmith_f_op_f32(sign(1668f)), true)))));
    let var_1 = Struct_4(abs(vec2<i32>(_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(func_1(true), 5u)], global2[_wgslsmith_index_u32(0u, 5u)] << (73056u % 32u)), -(~6528i))), vec2<bool>(false, any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), true))), vec2<bool>(true && all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(601f + 1140f) + _wgslsmith_f_op_f32(1877f * -1217f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -1140f) + _wgslsmith_f_op_f32(-396f * 1272f)) - 111f)), ~u_input.a);
    var_0 = 1187f;
    let var_2 = _wgslsmith_mod_i32(var_1.a.x, ~10408i);
    var var_3 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.d, var_1.d)) * _wgslsmith_f_op_f32(-var_1.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(-777f * 1430f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.d, var_1.d))))))));
    var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-331f))), var_1.c.x)) + -1808f), var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.d)) - _wgslsmith_f_op_f32(select(-873f, _wgslsmith_div_f32(-649f, 272f), false)))));
    let var_4 = select(!(!vec4<bool>(!var_1.c.x, true, func_2(var_3.x, var_1.c.x, vec4<u32>(var_1.e, var_1.e, u_input.a, 6042u), 59968u), !var_1.b.x)), select(select(!select(vec4<bool>(false, var_1.b.x, false, var_1.c.x), vec4<bool>(true, var_1.b.x, true, true), vec4<bool>(false, var_1.b.x, var_1.b.x, false)), !(!vec4<bool>(true, false, true, var_1.c.x)), select(!vec4<bool>(false, var_1.b.x, true, true), vec4<bool>(false, var_1.c.x, true, var_1.c.x), vec4<bool>(true, var_1.b.x, false, var_1.b.x))), vec4<bool>(var_1.b.x, true, var_1.b.x, -var_1.a.x >= _wgslsmith_sub_i32(1i, var_1.a.x)), select(!vec4<bool>(var_1.b.x, false, true, true), !select(vec4<bool>(true, false, true, var_1.c.x), vec4<bool>(var_1.b.x, false, var_1.b.x, var_1.c.x), var_1.c.x), any(var_1.b))), var_1.c.x);
    var var_5 = Struct_5(reverseBits(~var_2) << (u_input.a % 32u), all(vec3<bool>(var_1.b.x, var_4.x, var_4.x)));
    var var_6 = Struct_1(select(select(!select(var_4, vec4<bool>(var_1.b.x, var_4.x, var_1.c.x, var_4.x), var_5.b), select(var_4, var_4, vec4<bool>(var_4.x, var_5.b, false, var_4.x)), !vec4<bool>(false, var_4.x, false, true)), select(select(vec4<bool>(var_5.b, false, false, true), !vec4<bool>(var_5.b, true, var_4.x, var_1.b.x), any(var_4.yyy)), var_4, !var_4), false || (true == (var_5.a >= var_5.a))), ~(~_wgslsmith_clamp_vec3_i32(~vec3<i32>(-1i, var_5.a, 0i), ~vec3<i32>(global2[_wgslsmith_index_u32(0u, 5u)], global2[_wgslsmith_index_u32(u_input.a, 5u)], global2[_wgslsmith_index_u32(u_input.b.x, 5u)]), vec3<i32>(var_1.a.x, global2[_wgslsmith_index_u32(0u, 5u)], -6629i))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + 250f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1682f, _wgslsmith_f_op_f32(max(325f, var_3.x)), var_1.b.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_mod_vec2_i32(~var_6.b.zy, reverseBits(vec2<i32>(var_2, _wgslsmith_add_i32(global2[_wgslsmith_index_u32(var_1.e, 5u)], -7241i)))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(322f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(869f + var_1.d)) - _wgslsmith_f_op_f32(-var_6.c))));
}

