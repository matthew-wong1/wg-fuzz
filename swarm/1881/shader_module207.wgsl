struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 11> = array<vec3<bool>, 11>(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false));

var<private> global1: array<Struct_2, 19>;

var<private> global2: Struct_1 = Struct_1(vec2<bool>(true, true), -1000f, true);

var<private> global3: Struct_3;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: u32, arg_3: vec3<bool>) -> u32 {
    var var_0 = !global0[_wgslsmith_index_u32(global3.c.x, 11u)];
    var_0 = arg_3;
    global0 = array<vec3<bool>, 11>();
    var var_1 = firstLeadingBit(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(9018i, 30328i), 51874i << (0u % 32u)), -(17051i >> (1u % 32u)))) << ((_wgslsmith_add_vec2_u32(vec2<u32>(~global3.c.x, ~global3.c.x), vec2<u32>(~u_input.c.x, 3484u)) ^ ~reverseBits(global3.c.xx)) % vec2<u32>(32u));
    var_0 = vec3<bool>(!any(!(!vec2<bool>(global2.c, global2.c))), select(select(false, false, true), var_0.x, (2147483647i != (var_1.x >> (u_input.b.x % 32u))) | all(!vec4<bool>(arg_3.x, true, true, false))), select(true, global2.a.x, true));
    return _wgslsmith_add_u32(u_input.c.x, ~firstTrailingBit(~(~4294967295u)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>) -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(arg_1.x, func_3(Struct_1(global3.b.d.a, _wgslsmith_f_op_f32(global3.b.d.b * global3.b.c), true), vec4<f32>(_wgslsmith_f_op_f32(-1159f - global2.b), 821f, _wgslsmith_f_op_f32(min(356f, global2.b)), -1000f), ~u_input.a, !vec3<bool>(global2.a.x, false, global3.b.a.a.x))), 11u)];
    global1 = array<Struct_2, 19>();
    global2 = Struct_1(vec2<bool>(var_0.x, -2147483647i != (~16060i >> (_wgslsmith_mult_u32(19372u, arg_1.x) % 32u))), _wgslsmith_f_op_f32(-1f), true);
    global1 = array<Struct_2, 19>();
    var var_1 = vec3<u32>(1u, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(reverseBits(global3.c), global3.c) << (firstLeadingBit(abs(1u)) % 32u), 21706u), ~u_input.c.x);
    return -1i;
}

fn func_4(arg_0: vec2<i32>, arg_1: i32, arg_2: vec4<f32>, arg_3: f32) -> Struct_1 {
    var var_0 = global2.b;
    global0 = array<vec3<bool>, 11>();
    let var_1 = Struct_1(global2.a, _wgslsmith_f_op_f32(sign(-1181f)), !(max(arg_1, 7104i) > (arg_0.x << (global3.a % 32u))) & false);
    var var_2 = _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(1000f - arg_2.x));
    global0 = array<vec3<bool>, 11>();
    return var_1;
}

fn func_5(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = vec2<i32>(~(-(~(~(-1i)))), -_wgslsmith_dot_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(787i, 15731i, -1242i), vec3<i32>(-1i, -1i, -2147483647i), vec3<i32>(1i, 5807i, -9132i)), select(-vec3<i32>(1120i, 1i, 0i), vec3<i32>(-1i, 36245i, 40347i), true)));
    return select(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~abs(4294967295u), arg_1.x), 11u)], !global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, global3.c.x, 26950u, 4294967295u), vec4<u32>(arg_1.x, global3.c.x, 4294967295u, arg_1.x)), ~arg_1.x, 86003u) | firstTrailingBit(arg_1.x), 11u)], global0[_wgslsmith_index_u32(~6418u, 11u)]);
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_3 {
    global3 = Struct_3(func_3(Struct_1(vec2<bool>(true, !global3.b.b), 851f, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(403f, arg_1.b, 621f, global2.b))))), _wgslsmith_mult_u32(~(arg_2.x & 7995u), 17466u), arg_0), Struct_2(Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(f32(-1f) * -1000f), all(select(vec2<bool>(global3.b.d.c, arg_0.x), vec2<bool>(arg_1.c, false), false))), global3.b.c < 356f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(137f, arg_1.b)))), func_4(~(-vec2<i32>(-52436i, 1i)), 1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-667f, arg_1.b, arg_1.b, global2.b) + vec4<f32>(global2.b, arg_1.b, global2.b, 278f))), _wgslsmith_f_op_f32(-1280f * _wgslsmith_f_op_f32(f32(-1f) * -1431f)))), ~global3.c);
    global3 = Struct_3(~arg_2.x, global1[_wgslsmith_index_u32(global3.a, 19u)], vec4<u32>(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(47742u, 9354u, 4294967295u, 12686u), global3.c)), 4294967295u, ~22546u, global3.c.x));
    var var_0 = ~(~arg_2.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(2280f, 469f, -1000f) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1316f, -2004f, global3.b.c))))))));
    global2 = func_4(_wgslsmith_mult_vec2_i32(vec2<i32>(~(~0i), _wgslsmith_mod_i32(-1i, 1i)), ~_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(27512i, -10341i))), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(8087i, -12335i), -2147483647i, _wgslsmith_mod_i32(-1i, 6161i)), vec3<i32>(0i, ~(-2405i), 1i)) << (111297u % 32u), vec4<f32>(1959f, global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * global2.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.b.c))))), global3.b.c);
    return Struct_3(1u, global3.b, arg_2);
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> Struct_3 {
    var var_0 = func_6(func_5(-991f, u_input.c, global3.b.d, func_4(firstTrailingBit(vec2<i32>(18087i, -1i)), func_2(!vec2<bool>(arg_1.x, false), reverseBits(vec2<u32>(1u, 31342u))), vec4<f32>(global3.b.a.b, _wgslsmith_div_f32(-475f, -493f), global2.b, -1036f), _wgslsmith_f_op_f32(global2.b + global3.b.c))), func_4(~firstLeadingBit(vec2<i32>(1i, 2147483647i)) >> (u_input.b % vec2<u32>(32u)), ~(-min(22932i, 1i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1002f, _wgslsmith_div_f32(global3.b.d.b, global3.b.d.b), -1008f, _wgslsmith_div_f32(global3.b.c, global2.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1501f))), firstLeadingBit(abs(_wgslsmith_mult_vec4_u32(global3.c, vec4<u32>(global3.a, arg_0, arg_0, global3.a)) ^ firstTrailingBit(vec4<u32>(u_input.c.x, 70174u, arg_0, global3.c.x)))));
    let var_1 = max(1u, func_6(!select(vec3<bool>(true, var_0.b.b, global3.b.d.c), vec3<bool>(true, var_0.b.b, global2.c), global3.b.d.c), Struct_1(func_5(global3.b.a.b, global3.c.xxw, Struct_1(global3.b.a.a, var_0.b.c, false), Struct_1(global2.a, -1656f, true)).yx, global2.b, !func_4(vec2<i32>(-23659i, 60905i), -14083i, vec4<f32>(-989f, 2019f, 660f, 820f), var_0.b.d.b).c), ~(~vec4<u32>(var_0.c.x, 0u, u_input.b.x, 28114u))).a);
    global0 = array<vec3<bool>, 11>();
    var var_2 = vec2<u32>(80780u << (global3.a % 32u), u_input.a);
    let var_3 = func_6(global0[_wgslsmith_index_u32(var_1, 11u)], Struct_1(arg_1, -1239f, false), var_0.c);
    return func_6(vec3<bool>(true, true, true), var_0.b.d, ~vec4<u32>(var_1, var_0.a, global3.a, ~abs(var_1)));
}

fn func_7(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_3) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(443f, 731f, -404f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, 895f, global3.b.c) - vec3<f32>(arg_2.b.a.b, -1000f, global2.b))), vec3<f32>(global3.b.a.b, _wgslsmith_f_op_f32(max(arg_2.b.d.b, -994f)), _wgslsmith_f_op_f32(-global2.b)), arg_2.b.a.c)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1172f, arg_2.b.d.b, -1199f)) * vec3<f32>(_wgslsmith_f_op_f32(select(1216f, global3.b.d.b, false)), _wgslsmith_f_op_f32(-510f + arg_2.b.a.b), global2.b))));
    let var_1 = ~_wgslsmith_add_u32(~22454u, _wgslsmith_add_u32(~global3.a, 1u));
    global3 = arg_2;
    var var_2 = 1u;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.d.b) * _wgslsmith_div_f32(var_0.x, 268f));
    return func_1(reverseBits(arg_1.x), select(!func_4(vec2<i32>(11821i, 1i), _wgslsmith_sub_i32(0i, 17112i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1271f, -673f, var_0.x, -301f)), _wgslsmith_f_op_f32(2534f - -487f)).a, !(!func_4(vec2<i32>(-64017i, 1988i), 1i, vec4<f32>(arg_2.b.a.b, 274f, -1000f, -1000f), global3.b.c).a), !(func_1(5201u, global2.a).b.b && arg_2.b.d.a.x))).b.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.b;
    var var_1 = select(select(!vec4<bool>(var_0.a.a.x, var_0.b, false, !global3.b.d.a.x), vec4<bool>(global3.b.b, false, global3.b.d.a.x, true), !vec4<bool>(var_0.d.c, true, !global3.b.d.c, true)), vec4<bool>(true, !global3.b.d.a.x && any(!vec2<bool>(global2.a.x, false)), any(func_7(_wgslsmith_add_u32(0u, global3.c.x), _wgslsmith_add_vec4_u32(global3.c, global3.c), func_1(global3.c.x, global2.a))), all(vec4<bool>(global3.a > global3.c.x, var_0.b | false, false, var_0.a.a.x))), select(!select(vec4<bool>(false, false, false, false), vec4<bool>(global2.c, true, true, true), select(vec4<bool>(var_0.b, global2.c, global3.b.a.c, true), vec4<bool>(true, true, global3.b.d.c, true), true)), vec4<bool>(true, var_0.d.c, true, all(select(vec3<bool>(false, false, var_0.d.c), vec3<bool>(global2.a.x, global3.b.a.c, false), vec3<bool>(var_0.d.a.x, true, global3.b.d.a.x)))), !vec4<bool>(global2.c, var_0.a.c, func_6(global0[_wgslsmith_index_u32(14765u, 11u)], global3.b.d, vec4<u32>(4294967295u, u_input.c.x, 0u, u_input.a)).b.d.c, true)));
    let var_2 = -select(vec3<i32>(i32(-1i) * -31150i, 2147483647i, abs(i32(-1i) * -18669i)), select(reverseBits(vec3<i32>(-2147483647i, 47837i, -10110i)), vec3<i32>(-1i, -13524i, 1i), true) >> (_wgslsmith_div_vec3_u32(~vec3<u32>(36760u, 1u, 72411u), global3.c.yyy) % vec3<u32>(32u)), true);
    var var_3 = all(vec4<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1154f, -282f), _wgslsmith_f_op_f32(f32(-1f) * -273f), true)) < _wgslsmith_f_op_f32(sign(308f)), false, var_1.x, !(!func_7(13670u, global3.c, Struct_3(33765u, global1[_wgslsmith_index_u32(76150u, 19u)], global3.c)).x)));
    let var_4 = func_6(func_5(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(621f - 1551f)), 1f)), ~(~vec3<u32>(u_input.c.x, 1u, u_input.c.x)) & ~vec3<u32>(0u, u_input.a, 13341u), global3.b.d, Struct_1(vec2<bool>(all(vec2<bool>(true, var_1.x)), true), 1f, !global3.b.a.a.x)), var_0.d, ~(global3.c | (abs(global3.c) << (_wgslsmith_mod_vec4_u32(global3.c, vec4<u32>(1u, 32197u, global3.c.x, 0u)) % vec4<u32>(32u))))).b.a;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(var_2.yx), u_input.c.yx);
}

