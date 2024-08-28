struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<i32> = vec3<i32>(15611i, 2147483647i, -1i);

var<private> global2: array<u32, 23>;

var<private> global3: vec2<i32>;

var<private> global4: vec4<i32> = vec4<i32>(16870i, 1i, -22879i, 472i);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> f32 {
    return _wgslsmith_f_op_f32(trunc(311f));
}

fn func_2() -> f32 {
    let var_0 = vec2<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -776f) - -1000f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec4<i32>(global4.x, global4.x, global4.x, global3.x), false, -1000f, vec4<i32>(global3.x, global3.x, global1.x, 12215i)), global2[_wgslsmith_index_u32(u_input.a, 23u)])))));
    global4 = max(abs(_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(-1i, 13558i, -2147483647i, -2335i)), vec4<i32>(u_input.c | 1i, 49125i, -46299i, u_input.b >> (global2[_wgslsmith_index_u32(0u, 23u)] % 32u)))), firstLeadingBit(vec4<i32>(global3.x, 1i, -2147483647i, _wgslsmith_add_i32(-global4.x, abs(-33755i)))));
    var var_1 = -firstTrailingBit(1i);
    global2 = array<u32, 23>();
    var var_2 = global3.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1926f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1877f, 638f)) + _wgslsmith_f_op_f32(723f + 833f))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_4, arg_3: f32) -> Struct_4 {
    var var_0 = vec3<u32>(~(~u_input.d.x), 0u, _wgslsmith_dot_vec3_u32(min(u_input.d.wzy, firstLeadingBit(_wgslsmith_mult_vec3_u32(u_input.d.wyz, vec3<u32>(37865u, 23433u, global2[_wgslsmith_index_u32(u_input.d.x, 23u)])))), reverseBits(vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(24786u, 23u)] << (12332u % 32u), u_input.d.x << (u_input.a % 32u)))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-568f * arg_2.b.b.x))) * arg_3), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_3)) + 344f) - arg_2.b.b.x), -603f);
    global3 = -firstLeadingBit(max(select(-arg_2.a.xx, -vec2<i32>(19466i, u_input.c), vec2<bool>(true, true)), vec2<i32>(~u_input.c, 1i)));
    var var_2 = 6643i;
    var var_3 = Struct_2(~(~5156u), arg_2.b.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * -879f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))), any(select(!vec3<bool>(true, arg_2.b.e.x, arg_2.b.d), !select(vec3<bool>(false, arg_1, false), vec3<bool>(false, false, arg_2.b.d), true), !select(true, true, arg_1))), !select(vec2<bool>(all(vec2<bool>(true, arg_2.b.e.x)), !arg_1), arg_2.b.e, select(vec2<bool>(arg_2.b.e.x, false), select(arg_2.b.e, vec2<bool>(true, true), vec2<bool>(false, true)), arg_2.b.e)));
    return Struct_4(vec3<i32>(u_input.c, 1i, 0i), arg_2.b);
}

fn func_1(arg_0: vec3<bool>, arg_1: i32) -> Struct_2 {
    var var_0 = func_4(vec3<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(step(-2124f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-425f * 1208f) - 936f)), _wgslsmith_f_op_f32(f32(-1f) * -429f)), 1273f < _wgslsmith_f_op_f32(-1767f * _wgslsmith_f_op_f32(func_2())), Struct_4(max(global4.wzz, global4.wwy >> (u_input.d.yzw % vec3<u32>(32u))), Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(61885u, ~u_input.a, 70219u), 23u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(940f, -1223f, 311f, 316f), vec4<f32>(1287f, 821f, 909f, -1000f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2169f, 696f) - vec2<f32>(-748f, 554f)), true, vec2<bool>(any(vec4<bool>(arg_0.x, true, true, true)), true))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_div_f32(-439f, _wgslsmith_f_op_f32(-317f + 289f))))));
    let var_1 = var_0.b;
    var var_2 = abs(_wgslsmith_mult_u32(var_1.a, global2[_wgslsmith_index_u32(reverseBits(~_wgslsmith_clamp_u32(27406u, u_input.d.x, 5318u)), 23u)]));
    var var_3 = Struct_4(var_0.a, var_0.b);
    var_3 = Struct_4(_wgslsmith_sub_vec3_i32(~var_3.a, global4.wzw) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(u_input.d.x >> (var_1.a % 32u), 23u)], 30897u, global2[_wgslsmith_index_u32(~var_3.b.a, 23u)]), vec3<u32>(1u, select(u_input.a, u_input.a, false), _wgslsmith_mod_u32(0u, 19206u))) % vec3<u32>(32u)), var_0.b);
    return Struct_2(~var_1.a, var_0.b.b, var_1.c, !var_1.e.x && all(vec3<bool>(any(vec4<bool>(false, arg_0.x, var_3.b.d, var_0.b.d)), u_input.b > global3.x, all(arg_0))), var_1.e);
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec3<bool>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-arg_1.c);
    return u_input.d.yz >> (vec2<u32>(~u_input.a, 72332u) % vec2<u32>(32u));
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_2) -> i32 {
    var var_0 = _wgslsmith_mult_vec2_i32(arg_1.b.yx, vec2<i32>(max(-1i, _wgslsmith_mod_i32(i32(-1i) * -18603i, global3.x | 23201i)), 1i));
    let var_1 = Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 1i, reverseBits(_wgslsmith_div_i32(-10381i, global4.x)), 78061i & func_4(vec3<f32>(109f, 1361f, -1183f), arg_2.d, Struct_4(vec3<i32>(2147483647i, arg_1.a, 0i), arg_2), -108f).a.x), -vec4<i32>(2147483647i, 29942i, -1i, _wgslsmith_div_i32(2147483647i, global1.x))), true, _wgslsmith_div_f32(1851f, arg_2.c.x), vec4<i32>(1i, ~u_input.b, 2147483647i, arg_1.b.x));
    let var_2 = arg_2;
    global0 = false;
    let var_3 = Struct_4(vec3<i32>(u_input.b, arg_1.a, _wgslsmith_div_i32(-var_0.x, var_0.x) >> (reverseBits(countOneBits(arg_1.c.x)) % 32u)), Struct_2(~_wgslsmith_mod_u32(arg_2.a, 1u), _wgslsmith_f_op_vec4_f32(trunc(arg_2.b)), arg_2.b.yy, true, var_2.e));
    return -(arg_1.b.x ^ ~min(global1.x, _wgslsmith_dot_vec2_i32(var_3.a.xy, var_1.d.xz)));
}

fn func_7(arg_0: i32, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_2) -> Struct_3 {
    let var_0 = abs(vec4<u32>(~abs(39226u), ~(~(~65474u)), 4294967295u, ~firstLeadingBit(global2[_wgslsmith_index_u32(38315u, 23u)]) >> ((global2[_wgslsmith_index_u32(arg_3.a, 23u)] & (arg_3.a & 1u)) % 32u)));
    var var_1 = _wgslsmith_div_u32(74412u, _wgslsmith_clamp_u32(62835u, _wgslsmith_clamp_u32(arg_3.a, global2[_wgslsmith_index_u32(5877u, 23u)] & 14001u, func_1(vec3<bool>(arg_2.x, arg_2.x, false), -2147483647i).a), u_input.a) >> (_wgslsmith_mod_u32(~u_input.a & 3237u, ~var_0.x >> (var_0.x % 32u)) % 32u));
    return Struct_3(arg_0, -max(abs(-global4.yyx), select(-global4.ywy, abs(vec3<i32>(u_input.c, arg_0, global4.x)), select(vec3<bool>(arg_3.d, arg_3.d, arg_3.e.x), vec3<bool>(arg_3.d, false, arg_3.e.x), false))), vec2<u32>(27555u, global2[_wgslsmith_index_u32(~1u, 23u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = vec4<i32>(global3.x, u_input.c, _wgslsmith_div_i32(~max(_wgslsmith_clamp_i32(750i, global1.x, 41291i), global1.x), 2147483647i), 1i);
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 23u)], 23u)], ~select(_wgslsmith_add_u32(u_input.d.x, global2[_wgslsmith_index_u32(1u, 23u)]), ~(4294967295u & u_input.a), all(vec3<bool>(true, true, true)))), 23u)];
    var var_1 = func_7(func_6(u_input.d.zy, Struct_3(~global4.x, ~_wgslsmith_mult_vec3_i32(global4.yyx, vec3<i32>(global1.x, global4.x, -1i)), func_5(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), func_1(vec3<bool>(false, true, false), 17764i), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))), func_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-268f, -369f, -2016f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2216f, 160f, -408f)), vec3<bool>(true, true, true))), true, func_4(vec3<f32>(-1687f, -124f, -115f), 2602u != u_input.d.x, func_4(vec3<f32>(-1750f, -371f, -191f), true, Struct_4(vec3<i32>(25346i, 59039i, global4.x), Struct_2(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 23u)], 23u)], 23u)], 23u)], vec4<f32>(-426f, 763f, -361f, 1064f), vec2<f32>(-1558f, 346f), false, vec2<bool>(true, true))), -420f), _wgslsmith_f_op_f32(abs(275f))), 1255f).b), ~u_input.c, vec3<bool>(true != !func_4(vec3<f32>(1228f, -1875f, -1863f), true, Struct_4(vec3<i32>(global4.x, 2147483647i, -9277i), Struct_2(u_input.d.x, vec4<f32>(908f, -380f, -153f, 182f), vec2<f32>(1125f, 388f), true, vec2<bool>(false, true))), -576f).b.d, false != (34454u < u_input.a), all(select(func_4(vec3<f32>(-293f, 1229f, 698f), true, Struct_4(global4.wxx, Struct_2(global2[_wgslsmith_index_u32(u_input.a, 23u)], vec4<f32>(-2239f, -1361f, 1552f, -364f), vec2<f32>(941f, 354f), true, vec2<bool>(true, true))), 1035f).b.e, vec2<bool>(false, false), false))), Struct_2(4294967295u, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-905f, -479f)), _wgslsmith_f_op_f32(func_2()), true)), _wgslsmith_f_op_f32(max(-587f, 1405f)), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(363f, -233f)))), vec2<f32>(495f, func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1065f, -191f, 161f)), select(false, true, true), Struct_4(global4.zxz, Struct_2(u_input.d.x, vec4<f32>(-659f, 239f, 1699f, -422f), vec2<f32>(-467f, 773f), true, vec2<bool>(true, true))), _wgslsmith_f_op_f32(-1395f * 782f)).b.c.x), !(func_1(vec3<bool>(true, true, false), 1i).d && true), !func_4(func_1(vec3<bool>(false, true, true), global4.x).b.ywy, u_input.a < 0u, Struct_4(global4.zzx, Struct_2(u_input.a, vec4<f32>(-156f, -180f, 1237f, 634f), vec2<f32>(-1929f, -1426f), true, vec2<bool>(false, true))), -925f).b.e));
    var var_2 = u_input.d;
    var var_3 = 2147483647i;
    var var_4 = Struct_4(global4.yyy, func_4(func_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), global4.x | ~2147483647i).b.wwy, !func_1(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), -1i).e.x, func_4(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1075f, 1550f, 183f) - vec3<f32>(361f, 535f, 881f)))), true, func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-540f, -1735f, -1015f)), false, Struct_4(vec3<i32>(u_input.b, global1.x, global4.x), Struct_2(global2[_wgslsmith_index_u32(30764u, 23u)], vec4<f32>(1175f, -855f, 164f, -311f), vec2<f32>(-1159f, -144f), false, vec2<bool>(false, false))), -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1192f) * _wgslsmith_f_op_f32(abs(1779f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -657f), _wgslsmith_f_op_f32(1000f - -1564f), any(vec3<bool>(true, true, false)))))).b);
    let var_5 = vec2<i32>(abs(var_4.a.x), var_1.b.x) << (vec2<u32>(func_7(_wgslsmith_clamp_i32(global3.x, -9615i, var_1.a >> (var_1.c.x % 32u)), -reverseBits(var_1.a), select(!vec3<bool>(true, var_4.b.d, false), !vec3<bool>(var_4.b.e.x, true, false), !vec3<bool>(var_4.b.e.x, var_4.b.e.x, var_4.b.d)), Struct_2(u_input.d.x, var_4.b.b, _wgslsmith_f_op_vec2_f32(step(var_4.b.c, var_4.b.c)), true, var_4.b.e)).c.x, 0u) % vec2<u32>(32u));
    global3 = firstLeadingBit(_wgslsmith_add_vec2_i32(var_1.b.zx, ~(-firstLeadingBit(vec2<i32>(var_5.x, var_1.a)))));
    let var_6 = func_4(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(vec3<bool>(false, var_4.b.e.x, var_4.b.d), global4.x).b.xxw * _wgslsmith_f_op_vec3_f32(-var_4.b.b.xwz))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1082f, var_4.b.c.x, var_4.b.c.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(240f, var_4.b.b.x, -409f) * var_4.b.b.zyy), var_4.b.e.x & var_4.b.e.x))))), var_4.b.d, Struct_4(var_4.a, Struct_2(firstTrailingBit(_wgslsmith_dot_vec2_u32(var_1.c, var_1.c)), var_4.b.b, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.b.b.x, -1335f)))), var_4.b.e.x, select(vec2<bool>(var_4.b.e.x, true), select(var_4.b.e, var_4.b.e, vec2<bool>(var_4.b.e.x, var_4.b.d)), func_1(vec3<bool>(var_4.b.e.x, var_4.b.d, var_4.b.e.x), global4.x).e))), var_4.b.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(189f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<i32>(0i, global3.x, 1i, 0i), var_4.b.d, var_4.b.c.x, vec4<i32>(30767i, var_5.x, global3.x, -37985i)), 138907u)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.b.b.x) + var_6.b.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_6.b.b.x)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_4.b.c.x)))))), _wgslsmith_div_vec2_f32(func_1(select(vec3<bool>(var_6.b.e.x, true, var_4.b.d), select(vec3<bool>(false, var_6.b.e.x, true), vec3<bool>(true, false, var_6.b.e.x), false), false), ~global1.x | -global1.x).b.wy, _wgslsmith_f_op_vec2_f32(-var_6.b.b.wz)));
}

