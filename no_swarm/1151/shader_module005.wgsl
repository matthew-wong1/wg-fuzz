struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: bool,
}

struct Struct_5 {
    a: f32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 12294i;

var<private> global1: array<Struct_5, 9> = array<Struct_5, 9>(Struct_5(915f, vec2<i32>(0i, i32(-2147483648))), Struct_5(-1000f, vec2<i32>(-6330i, 1i)), Struct_5(1038f, vec2<i32>(2147483647i, 0i)), Struct_5(1558f, vec2<i32>(-20402i, -6800i)), Struct_5(813f, vec2<i32>(44067i, 1i)), Struct_5(-1281f, vec2<i32>(0i, 1i)), Struct_5(-1594f, vec2<i32>(-25703i, 18561i)), Struct_5(781f, vec2<i32>(i32(-2147483648), 0i)), Struct_5(-1139f, vec2<i32>(-1i, 0i)));

var<private> global2: array<f32, 25>;

var<private> global3: vec2<bool> = vec2<bool>(true, false);

var<private> global4: array<u32, 3>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: i32, arg_3: vec4<i32>) -> vec4<bool> {
    let var_0 = vec3<bool>(true, !select(-672f == global2[_wgslsmith_index_u32(0u, 25u)], global4[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, arg_0.x), 3u)] >= 4294967295u, all(select(vec3<bool>(true, global3.x, global3.x), vec3<bool>(global3.x, false, true), vec3<bool>(global3.x, true, false)))), !(!global3.x));
    let var_1 = global1[_wgslsmith_index_u32(~116137u, 9u)];
    var var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(-365f, -847f), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(273f, var_1.a) - vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 25u)], global2[_wgslsmith_index_u32(18080u, 25u)])))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.a, -1942f), vec2<f32>(global2[_wgslsmith_index_u32(arg_0.x, 25u)], global2[_wgslsmith_index_u32(arg_0.x, 25u)])) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.a, var_1.a))))))));
    let var_3 = 4294967295u < _wgslsmith_dot_vec4_u32(abs(firstLeadingBit(vec4<u32>(arg_0.x, u_input.b, 17702u, arg_0.x) << (vec4<u32>(global4[_wgslsmith_index_u32(15618u, 3u)], arg_0.x, global4[_wgslsmith_index_u32(u_input.b, 3u)], arg_0.x) % vec4<u32>(32u)))), ~(~firstTrailingBit(vec4<u32>(42968u, 80923u, arg_0.x, 1u))));
    var var_4 = reverseBits(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(~min(vec4<u32>(43507u, global4[_wgslsmith_index_u32(u_input.b, 3u)], 28907u, global4[_wgslsmith_index_u32(47741u, 3u)]), vec4<u32>(u_input.b, 39099u, u_input.b, 0u)), ~abs(vec4<u32>(39960u, arg_0.x, 4294967295u, global4[_wgslsmith_index_u32(arg_0.x, 3u)]))), max(abs(vec4<u32>(u_input.b, 31495u, 0u, 4294967295u) >> (vec4<u32>(1u, 4294967295u, arg_0.x, arg_0.x) % vec4<u32>(32u))), ~vec4<u32>(23237u, arg_0.x, arg_0.x, 8808u))));
    return select(vec4<bool>((var_0.x || global3.x) != any(select(vec4<bool>(false, false, false, var_3), vec4<bool>(var_0.x, var_0.x, true, true), global3.x)), !var_3, var_0.x, select(false, var_0.x, true)), !vec4<bool>(true, false, any(select(vec3<bool>(var_3, true, global3.x), vec3<bool>(global3.x, global3.x, true), var_0.x)), true), any(vec4<bool>((var_0.x | false) & global3.x, true, false, all(var_0))));
}

fn func_2(arg_0: bool, arg_1: vec3<bool>, arg_2: i32) -> Struct_3 {
    let var_0 = vec2<bool>(any(select(select(vec4<bool>(true, global3.x, true, false), func_3(vec3<u32>(0u, global4[_wgslsmith_index_u32(u_input.b, 3u)], 23923u), 1i, u_input.a, vec4<i32>(-5867i, arg_2, -44498i, arg_2)), vec4<bool>(false, false, global3.x, global3.x)), !select(vec4<bool>(global3.x, arg_0, true, true), vec4<bool>(arg_1.x, arg_1.x, false, false), vec4<bool>(global3.x, true, true, arg_1.x)), vec4<bool>(arg_0, false, true, true))), true);
    global1 = array<Struct_5, 9>();
    let var_1 = Struct_5(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(35222u, 3u)], 3u)], 0u) ^ ~(~vec2<u32>(42428u, 17375u)), reverseBits(vec2<u32>(u_input.b, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 3u)], 3u)])) >> (~vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(5838u, 3u)], 3u)], 3u)], global4[_wgslsmith_index_u32(1u, 3u)]) % vec2<u32>(32u))), 25u)], ~(select(vec2<i32>(arg_2, 23935i), -vec2<i32>(-1i, u_input.a), true) | _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), ~vec2<i32>(arg_2, u_input.a))));
    var var_2 = Struct_4(Struct_3(Struct_1(firstLeadingBit(~vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 3u)], 3u)], u_input.b, 1u, 2204u)), arg_1), select(!func_3(vec3<u32>(0u, 18797u, 4294967295u), 8294i, u_input.a, vec4<i32>(-12561i, 1i, var_1.b.x, 24358i)), !(!vec4<bool>(true, false, arg_0, true)), !func_3(vec3<u32>(1637u, 58073u, u_input.b), 174i, u_input.a, vec4<i32>(u_input.a, arg_2, u_input.a, arg_2)))), Struct_1(_wgslsmith_div_vec4_u32(~(vec4<u32>(global4[_wgslsmith_index_u32(42941u, 3u)], 90637u, u_input.b, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(12146u, 3u)], 3u)]) | vec4<u32>(4294967295u, u_input.b, 4294967295u, 7818u)), countOneBits(vec4<u32>(u_input.b, u_input.b, 57406u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 3u)], 3u)], 3u)]))), vec3<bool>(arg_0, -2147483647i >= firstTrailingBit(-2147483647i), !(arg_2 >= -2071i))), !any(vec4<bool>(true, true, true, true)));
    var var_3 = 31092u;
    return Struct_3(var_2.a.a, var_2.a.b);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: f32) -> Struct_4 {
    global4 = array<u32, 3>();
    let var_0 = Struct_1(vec4<u32>(arg_1.a.x, u_input.b, arg_1.a.x, global4[_wgslsmith_index_u32(59809u, 3u)]), !arg_1.b);
    let var_1 = vec2<f32>(528f, arg_2);
    global3 = !var_0.b.zx;
    global1 = array<Struct_5, 9>();
    return Struct_4(func_2(true, var_0.b, reverseBits(~0i) & arg_0.x), func_2(true, func_2(global3.x, vec3<bool>(true, true, all(arg_1.b.yy)), _wgslsmith_div_i32(u_input.a, abs(62707i))).a.b, -1i).a, var_0.b.x);
}

fn func_4(arg_0: Struct_4) -> f32 {
    return 273f;
}

fn func_5(arg_0: f32) -> Struct_3 {
    let var_0 = vec4<u32>(firstLeadingBit(abs(1u) << ((global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 3u)], 3u)] & 4294967295u) % 32u)), u_input.b, 27232u, min(37936u, ~func_1(vec2<i32>(1i, 0i), Struct_1(vec4<u32>(0u, 73948u, u_input.b, 48134u), vec3<bool>(global3.x, global3.x, false)), global2[_wgslsmith_index_u32(61327u, 25u)]).a.a.a.x << ((7586u & func_2(true, vec3<bool>(global3.x, true, true), 13299i).a.a.x) % 32u)));
    var var_1 = Struct_4(func_1(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, u_input.a) | (vec2<i32>(16991i, u_input.a) & vec2<i32>(u_input.a, 1i)), -vec2<i32>(-41027i, u_input.a)), Struct_1(vec4<u32>(18619u, ~105230u, _wgslsmith_mod_u32(u_input.b, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 3u)], 3u)]), _wgslsmith_div_u32(global4[_wgslsmith_index_u32(1u, 3u)], 0u)), !func_1(vec2<i32>(-2147483647i, 2147483647i), Struct_1(var_0, vec3<bool>(false, global3.x, false)), -165f).a.a.b), _wgslsmith_f_op_f32(414f - arg_0)).a, func_1(_wgslsmith_mult_vec2_i32(vec2<i32>(~(-2147483647i), -76617i), -vec2<i32>(u_input.a, 63513i)), func_2(all(select(vec2<bool>(global3.x, true), vec2<bool>(global3.x, global3.x), global3.x)), vec3<bool>(true, true, true), -(~u_input.a)).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -341f)) - global2[_wgslsmith_index_u32(abs(var_0.x), 25u)])).a.a, !any(!func_3(var_0.xzy, 2147483647i, -8037i, vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)).zz));
    var var_2 = var_1.a.b.xyz;
    global3 = vec2<bool>(global3.x, true);
    global0 = u_input.a;
    return var_1.a;
}

fn func_6(arg_0: Struct_3, arg_1: Struct_5) -> Struct_2 {
    var var_0 = func_1(~vec2<i32>(min(25933i, 2147483647i), ~(~u_input.a)), func_1(arg_1.b, arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.a)) - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~0u, 25u)]))).a.a, arg_1.a);
    let var_1 = var_0.a.b;
    global0 = abs(arg_1.b.x);
    let var_2 = global1[_wgslsmith_index_u32(u_input.b, 9u)];
    let var_3 = 52770i;
    return Struct_2(var_0.a.a, arg_0.a);
}

fn func_7(arg_0: Struct_2) -> Struct_3 {
    return func_2(true, !arg_0.b.b, -1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(func_5(_wgslsmith_f_op_f32(func_4(func_1(vec2<i32>(-25251i, u_input.a), Struct_1(vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 3u)], 3u)], 1332u, u_input.b, 0u), vec3<bool>(false, global3.x, global3.x)), global2[_wgslsmith_index_u32(4294967295u, 25u)])))), global1[_wgslsmith_index_u32(~(44801u & ~global4[_wgslsmith_index_u32(u_input.b, 3u)]), 9u)]));
    global0 = -_wgslsmith_sub_i32(u_input.a, 2147483647i);
    global1 = array<Struct_5, 9>();
    global3 = func_5(global2[_wgslsmith_index_u32(func_7(func_6(func_5(268f), global1[_wgslsmith_index_u32(~var_0.a.a.x & _wgslsmith_mod_u32(1u, 70973u), 9u)])).a.a.x, 25u)]).b.xy;
    let var_1 = firstLeadingBit(~firstTrailingBit(countOneBits(2147483647i)) | u_input.a);
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(77026u, 25u)], 402f)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(63930u, 25u)], global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 3u)], 25u)]))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.b, 6135u << (var_0.a.a.x % 32u)), 25u)], _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(u_input.b, 25u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(func_1(vec2<i32>(var_1, var_1), var_0.a, var_2).b.a.x, 25u)]), !(var_1 != var_1)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_div_u32(64829u, u_input.b) >> (_wgslsmith_div_u32(25262u, var_0.a.a.x) % 32u), 25u)]))), func_2(var_0.a.b.x, !var_0.a.b, select(17945i, u_input.a | -25905i, true)).a.a.x, ~vec3<u32>(_wgslsmith_mod_u32(u_input.b << (var_0.a.a.x % 32u), abs(u_input.b)), global4[_wgslsmith_index_u32(u_input.b, 3u)], firstTrailingBit(0u)));
}

