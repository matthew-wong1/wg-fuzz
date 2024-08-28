struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: vec3<bool>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: bool,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(true, true, vec4<i32>(-46300i, 37314i, 2131i, 1i), true), 1u, Struct_1(true, false, vec4<i32>(1035i, 2147483647i, -30237i, 0i), true), false, -639f);

var<private> global1: bool;

var<private> global2: array<vec3<bool>, 16> = array<vec3<bool>, 16>(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true));

var<private> global3: array<vec4<i32>, 1> = array<vec4<i32>, 1>(vec4<i32>(-935i, -33539i, -1i, 0i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> vec3<f32> {
    global3 = array<vec4<i32>, 1>();
    global2 = array<vec3<bool>, 16>();
    global3 = array<vec4<i32>, 1>();
    global0 = Struct_3(global0.c, 8762u, Struct_1(_wgslsmith_f_op_f32(global0.e + 1000f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e)), false, global0.c.c, false), false & !(_wgslsmith_f_op_f32(min(245f, -287f)) <= _wgslsmith_f_op_f32(-1261f * global0.e)), 246f);
    global1 = !any(!(!vec4<bool>(true, global0.c.a, true, global0.c.b)));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1667f, -401f))), -908f, global0.e);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec2<bool>) -> vec3<f32> {
    var var_0 = Struct_3(Struct_1(arg_1.a, select(!(!global0.c.d), !global0.a.d, false), arg_0.a.c, false), ~abs(arg_2.x), Struct_1(true, true, -(-vec4<i32>(arg_1.c.x, 50224i, -12026i, arg_1.c.x) << (vec4<u32>(arg_2.x, 4294967295u, global0.b, 18049u) % vec4<u32>(32u))), true), arg_0.a.d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(539f)) * _wgslsmith_f_op_f32(ceil(global0.e))))));
    var var_1 = !(!(!(!select(global2[_wgslsmith_index_u32(var_0.b, 16u)], global2[_wgslsmith_index_u32(global0.b, 16u)], false))));
    var var_2 = -(~firstTrailingBit(global0.c.c.wz));
    let var_3 = arg_0.a.d;
    var var_4 = _wgslsmith_add_vec2_u32(arg_2, countOneBits(max(vec2<u32>(50505u, arg_2.x), arg_2))) ^ ~vec2<u32>(1u, 0u);
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.e, global0.e, var_0.e))))))));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: bool, arg_3: vec2<bool>) -> vec2<bool> {
    let var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(max(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(0u, global0.b))), abs(~(global0.b | 4294967295u)), 0u), reverseBits(~vec3<u32>(~u_input.b, global0.b, ~4294967295u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2()))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_2()))) * _wgslsmith_div_vec3_f32(vec3<f32>(-556f, -142f, 1971f), _wgslsmith_f_op_vec3_f32(func_3(Struct_4(global0.a), Struct_1(false, arg_2, global0.c.c, true), vec2<u32>(53356u, 47335u), vec2<bool>(arg_3.x, true)))))));
    let var_2 = -max(reverseBits(global0.a.c.zz) ^ countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(global0.a.c.x, 9890i), global0.c.c.yy)), global0.c.c.wy);
    var var_3 = Struct_2(any(!(!vec3<bool>(false, global0.d, false))), vec2<bool>(any(!select(arg_3, arg_3, false)), (_wgslsmith_f_op_f32(min(arg_0.x, var_1.x)) == -650f) != !any(vec2<bool>(arg_3.x, arg_3.x))), !(!(!select(vec3<bool>(true, arg_3.x, arg_3.x), global2[_wgslsmith_index_u32(4294967295u, 16u)], global2[_wgslsmith_index_u32(var_0.x, 16u)]))), false);
    global3 = array<vec4<i32>, 1>();
    return !var_3.b;
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32((global0.c.c << (vec4<u32>(0u, 4294967295u, global0.b, 1716u) % vec4<u32>(32u))) ^ max(vec4<i32>(32018i, -17353i, u_input.a, 1i), vec4<i32>(global0.a.c.x, global0.c.c.x, 0i, global0.c.c.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, global0.a.c.x, -6465i, 2147483647i), global3[_wgslsmith_index_u32(u_input.b, 1u)])) & abs(1i), global0.c.c.x);
    let var_1 = select(!arg_1.c.yz, func_1(_wgslsmith_f_op_vec3_f32(func_3(Struct_4(global0.a), Struct_1(true, global0.e == arg_0, global0.a.c, global0.a.a), ~vec2<u32>(global0.b, 50040u), arg_1.c.yz)).xz, global0.c.c.x, true, func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-296f, 141f)), -62764i & global0.a.c.x, false, arg_1.c.yz)), all(vec2<bool>(all(vec2<bool>(true, false)), !(false & global0.c.b))));
    let var_2 = global2[_wgslsmith_index_u32(0u, 16u)];
    var var_3 = vec3<i32>(-9962i | global0.c.c.x, global0.c.c.x, ~_wgslsmith_sub_i32(1i, -11797i));
    global1 = 46888u <= global0.b;
    return Struct_3(global0.c, global0.b, Struct_1(any(arg_1.b), all(!vec3<bool>(global0.d, var_1.x, true)) || global0.c.b, ~countOneBits(global3[_wgslsmith_index_u32(max(u_input.b, 1u), 1u)]), !arg_1.a), any(select(select(!vec4<bool>(global0.c.b, var_2.x, global0.c.b, false), select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(true, var_1.x, var_2.x, arg_1.c.x), true), !vec4<bool>(var_2.x, arg_1.b.x, true, var_2.x)), select(!vec4<bool>(var_1.x, var_2.x, var_2.x, false), !vec4<bool>(arg_1.d, var_1.x, false, var_2.x), any(vec3<bool>(arg_1.d, global0.c.b, true))), false || any(vec4<bool>(false, var_1.x, var_1.x, arg_1.c.x)))), 847f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-331f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1364f, 358f)))))), Struct_2(u_input.a != -5111i, !func_1(vec2<f32>(global0.e, 1000f), global0.a.c.x, true & global0.a.b, !vec2<bool>(false, global0.a.a)), select(!global2[_wgslsmith_index_u32(global0.b & global0.b, 16u)], vec3<bool>(true, -1292i <= global0.c.c.x, global0.c.a), !select(global2[_wgslsmith_index_u32(u_input.b, 16u)], global2[_wgslsmith_index_u32(1u, 16u)], global0.a.b)), _wgslsmith_sub_i32(1i, -global0.c.c.x) < _wgslsmith_sub_i32(global0.a.c.x, reverseBits(7552i))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1454f), global0.e);
    var var_0 = Struct_2(false, vec2<bool>(global0.c.b, false), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(1u, 1u, 1u), vec3<u32>(global0.b, _wgslsmith_dot_vec4_u32(vec4<u32>(49177u, 26521u, global0.b, u_input.b), vec4<u32>(4294967295u, u_input.b, 0u, 0u)), 64592u)), ~vec3<u32>(1u << (0u % 32u), 25304u << (global0.b % 32u), global0.b | 12971u)), 16u)], 15807i >= (_wgslsmith_dot_vec3_i32(vec3<i32>(global0.c.c.x, 1i, -26652i), global0.a.c.zxy) & ~(-2147483647i)));
    var_0 = Struct_2(true, var_0.c.xz, select(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~37909u, 0u), 16u)], global2[_wgslsmith_index_u32(~3291u, 16u)], global2[_wgslsmith_index_u32(1u, 16u)]), false);
    let var_1 = _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(min(~(~vec3<i32>(u_input.a, u_input.a, -32746i)), vec3<i32>(_wgslsmith_mod_i32(10047i, global0.a.c.x), -1i, i32(-1i) * -34427i)), vec3<i32>(1i, -firstTrailingBit(u_input.a), 1i)), select(global0.c.c.xyw >> (~(vec3<u32>(4294967295u, 0u, global0.b) >> (vec3<u32>(1u, global0.b, global0.b) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(global0.c.c.x, u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 26295i, -2136i), vec3<i32>(global0.a.c.x, -2147483647i, u_input.a))), -2147483647i, firstTrailingBit(-1i) >> (func_4(893f, Struct_2(var_0.d, vec2<bool>(global0.a.a, false), var_0.c, var_0.c.x)).b % 32u)), func_4(_wgslsmith_f_op_f32(f32(-1f) * -1756f), Struct_2(true, !var_0.c.xz, select(global2[_wgslsmith_index_u32(3746u, 16u)], var_0.c, global2[_wgslsmith_index_u32(u_input.b, 16u)]), global0.e != global0.e)).a.d));
    var var_2 = Struct_3(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(275f, global0.e, false)), global0.e))), Struct_2(func_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(661f, 1441f), vec2<f32>(-1138f, 685f))), _wgslsmith_add_i32(-1i, 23692i), true, !var_0.c.yy).x, vec2<bool>(select(global0.c.d, false, true), any(global2[_wgslsmith_index_u32(1u, 16u)])), vec3<bool>(global0.a.a, all(vec4<bool>(global0.d, true, false, global0.a.d)), select(true, global0.d, false)), true)).a, 4294967295u, Struct_1(var_0.a, true, _wgslsmith_mod_vec4_i32(abs(global3[_wgslsmith_index_u32(65389u, 1u)] >> (vec4<u32>(global0.b, 1u, u_input.b, 8260u) % vec4<u32>(32u))), ~_wgslsmith_mult_vec4_i32(global0.c.c, global0.a.c)), any(!(!vec4<bool>(var_0.c.x, global0.d, var_0.d, true)))), true, func_4(_wgslsmith_f_op_f32(exp2(global0.e)), Struct_2(!func_1(vec2<f32>(global0.e, global0.e), 2147483647i, true, var_0.b).x, !var_0.b, global2[_wgslsmith_index_u32(31122u, 16u)], (var_1.x < 2147483647i) == true)).e);
    let var_3 = Struct_1(!(max(firstLeadingBit(var_2.b), 76493u) <= global0.b), false, select(-(~(~global0.c.c)), select(~var_2.c.c, func_4(var_2.e, Struct_2(true, vec2<bool>(false, true), global2[_wgslsmith_index_u32(1u, 16u)], var_2.d)).c.c, !select(vec4<bool>(global0.c.d, global0.d, var_0.c.x, false), vec4<bool>(var_0.c.x, global0.d, true, false), vec4<bool>(var_2.c.a, false, true, true))), vec4<bool>(all(vec2<bool>(var_2.d, var_0.c.x)), 1248f > var_2.e, global0.d, false)), global0.c.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.c);
}

