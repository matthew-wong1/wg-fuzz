struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: vec2<i32>,
    e: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: Struct_1,
    d: bool,
    e: vec2<i32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: Struct_4,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18>;

var<private> global1: array<vec3<i32>, 3> = array<vec3<i32>, 3>(vec3<i32>(-38672i, -1i, 18350i), vec3<i32>(0i, 1i, -1i), vec3<i32>(0i, 2147483647i, 11176i));

var<private> global2: array<bool, 30> = array<bool, 30>(false, false, true, true, true, true, true, false, false, true, true, true, false, false, false, false, true, false, false, false, false, false, false, true, true, true, false, false, false, true);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_5, arg_3: u32) -> u32 {
    let var_0 = all(!(!vec4<bool>(true, true, arg_2.c.b.x || arg_2.c.a.x, true)));
    global1 = array<vec3<i32>, 3>();
    let var_1 = select(select(!vec4<bool>(arg_2.c.a.x, false, false, !var_0), vec4<bool>(select(-61278i > arg_1, arg_3 < 79450u, true), true, any(arg_2.c.b), global2[_wgslsmith_index_u32(arg_2.c.c.a, 30u)]), !vec4<bool>(true, true, true, var_0)), select(select(select(vec4<bool>(true, var_0, false, var_0), vec4<bool>(global2[_wgslsmith_index_u32(1u, 30u)], true, var_0, false), any(vec4<bool>(var_0, true, var_0, true))), select(select(vec4<bool>(var_0, true, var_0, true), vec4<bool>(var_0, false, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(false, false, global2[_wgslsmith_index_u32(u_input.a, 30u)], arg_2.c.a.x), select(vec4<bool>(true, false, arg_2.c.b.x, false), vec4<bool>(global2[_wgslsmith_index_u32(1u, 30u)], arg_2.c.a.x, global2[_wgslsmith_index_u32(u_input.a, 30u)], var_0), vec4<bool>(true, true, false, false))), var_0), select(select(select(vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 30u)], false, false), vec4<bool>(false, arg_2.c.a.x, false, false), vec4<bool>(false, arg_2.c.d, false, true)), vec4<bool>(false, var_0, arg_2.c.a.x, true), vec4<bool>(arg_2.c.d, global2[_wgslsmith_index_u32(0u, 30u)], var_0, false)), vec4<bool>(any(arg_2.c.b), var_0, var_0, false), vec4<bool>(any(arg_2.c.b), arg_2.c.e.x < arg_2.c.e.x, var_0, true)), select(vec4<bool>(true, 1u >= arg_2.a.x, !var_0, false), !(!vec4<bool>(arg_2.c.b.x, global2[_wgslsmith_index_u32(87894u, 30u)], false, true)), !(!vec4<bool>(var_0, var_0, true, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_3, 18u)], 18u)], 30u)])))), vec4<bool>(false || arg_2.c.b.x, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16205u, 18u)] | _wgslsmith_dot_vec4_u32(arg_2.a, arg_2.a), 30u)], arg_2.c.a.x, !(-779f < _wgslsmith_f_op_f32(floor(arg_2.c.c.b)))));
    let var_2 = ~_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(~arg_3, ~arg_2.d), u_input.b), ~((arg_2.a.xw | vec2<u32>(u_input.b, global0[_wgslsmith_index_u32(1u, 18u)])) << (vec2<u32>(0u, 20666u) % vec2<u32>(32u))));
    let var_3 = 39989u;
    return select(1u, firstTrailingBit(_wgslsmith_dot_vec3_u32(select(vec3<u32>(var_3, 54268u, arg_2.a.x), arg_2.a.yzz, vec3<bool>(var_1.x, var_0, false)), ~arg_2.a.zzx) & ~1u), 16698u <= u_input.a);
}

fn func_2(arg_0: Struct_5, arg_1: i32, arg_2: Struct_5, arg_3: vec2<bool>) -> bool {
    var var_0 = Struct_5(arg_0.a, vec3<i32>(-select(arg_2.c.e.x, 2147483647i, true) | _wgslsmith_mult_i32(-12655i, arg_2.c.e.x), arg_0.b.x << ((firstLeadingBit(arg_0.c.c.a) << (func_3(vec2<f32>(254f, 218f), arg_2.c.e.x, arg_2, arg_2.c.c.a) % 32u)) % 32u), arg_2.c.e.x), Struct_4(select(!select(arg_3, arg_3, arg_2.c.a), select(select(arg_2.c.b, vec2<bool>(false, arg_0.c.a.x), arg_2.c.a.x), !vec2<bool>(arg_2.c.a.x, arg_0.c.b.x), true), arg_2.b.x >= 1329i), select(select(vec2<bool>(false, arg_3.x), !arg_2.c.b, arg_2.c.d), arg_3, false), arg_0.c.c, all(select(vec2<bool>(false, global2[_wgslsmith_index_u32(1u, 30u)]), select(arg_3, arg_2.c.b, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 18u)], 30u)]), false)), select(_wgslsmith_mult_vec2_i32(arg_0.b.zz | arg_2.b.yx, arg_2.c.e), select(select(vec2<i32>(2147483647i, arg_0.c.e.x), vec2<i32>(431i, 9053i), arg_2.c.a.x), arg_2.b.zz, vec2<bool>(false, false)), select(vec2<bool>(false, arg_0.c.b.x), !arg_3, !global2[_wgslsmith_index_u32(4294967295u, 30u)]))), select(40217u, global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(~arg_0.a.x, ~1u), 18u)], arg_0.c.b.x & false));
    global0 = array<u32, 18>();
    global0 = array<u32, 18>();
    var_0 = arg_2;
    let var_1 = 67439u ^ func_3(vec2<f32>(1364f, arg_0.c.c.b), -79816i, arg_2, global0[_wgslsmith_index_u32(4294967295u, 18u)]);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.c.c.b)))))) >= _wgslsmith_f_op_f32(f32(-1f) * -1407f);
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: vec3<bool>) -> Struct_5 {
    var var_0 = Struct_5(~vec4<u32>(select(~29996u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 18u)], 18u)], 1u), vec2<u32>(131416u, 57603u)), 18u)], global2[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(u_input.a, 18u)], 30u)]), 1u, ~min(u_input.b, 1623u), func_3(vec2<f32>(1139f, 587f), 34983i, Struct_5(vec4<u32>(u_input.a, 4294967295u, 5186u, 2848u), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 18u)], 3u)], Struct_4(vec2<bool>(true, arg_2.x), vec2<bool>(false, arg_2.x), Struct_1(global0[_wgslsmith_index_u32(22395u, 18u)], 475f), true, vec2<i32>(-8976i, arg_1)), u_input.a), 0u) | reverseBits(21282u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(~(~arg_1), firstLeadingBit(_wgslsmith_div_i32(-47589i, -1i)), _wgslsmith_div_i32(1i, _wgslsmith_div_i32(arg_1, -26095i))), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(min(abs(57578u), ~0u), 18341u), 18u)], 3u)], _wgslsmith_mod_vec3_i32(min(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -2147483647i, -2147483647i), global1[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 18u)], 18u)], 18u)], 3u)]), global1[_wgslsmith_index_u32(~8862u, 3u)]), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -2147483647i, arg_1), ~global1[_wgslsmith_index_u32(u_input.b, 3u)]))), Struct_4(vec2<bool>(func_2(Struct_5(vec4<u32>(u_input.b, 1u, 30494u, global0[_wgslsmith_index_u32(1u, 18u)]), vec3<i32>(arg_1, arg_1, arg_1), Struct_4(vec2<bool>(true, arg_2.x), arg_2.zx, Struct_1(0u, 827f), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(86159u, 18u)], 18u)], 18u)], 30u)], vec2<i32>(33672i, arg_1)), 39929u), ~arg_1, Struct_5(vec4<u32>(1u, 39420u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 18u)], 18u)], global0[_wgslsmith_index_u32(76492u, 18u)]), vec3<i32>(arg_1, arg_1, arg_1), Struct_4(arg_2.xz, arg_2.zx, Struct_1(57998u, -1142f), false, vec2<i32>(arg_1, 0i)), global0[_wgslsmith_index_u32(u_input.b, 18u)]), arg_2.yx), false), vec2<bool>(arg_2.x, all(select(vec4<bool>(arg_0.x, false, true, global2[_wgslsmith_index_u32(u_input.a, 30u)]), vec4<bool>(false, arg_2.x, arg_0.x, false), arg_2.x))), Struct_1(~4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -861f) * _wgslsmith_f_op_f32(max(-280f, 857f)))), !(reverseBits(arg_1) >= -13922i), vec2<i32>(-reverseBits(23675i), -15400i)), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(28472u, 4294967295u, 28543u) ^ countOneBits(vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(u_input.b, 18u)])), _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 0u, 0u), ~vec3<u32>(62025u, u_input.b, 1u), vec3<u32>(3483u, u_input.b, u_input.a) << (vec3<u32>(0u, global0[_wgslsmith_index_u32(0u, 18u)], 1u) % vec3<u32>(32u)))));
    let var_1 = Struct_1((u_input.a ^ 42883u) | 4294967295u, -1384f);
    let var_2 = u_input.b > ~(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, var_1.a, 63728u, 4294967295u)), vec4<u32>(36402u, var_1.a, var_1.a, u_input.b) << (var_0.a % vec4<u32>(32u))) & global0[_wgslsmith_index_u32(firstTrailingBit(abs(global0[_wgslsmith_index_u32(u_input.b, 18u)])), 18u)]);
    global0 = array<u32, 18>();
    global2 = array<bool, 30>();
    return Struct_5(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.d, ~abs(global0[_wgslsmith_index_u32(var_0.a.x, 18u)]), global0[_wgslsmith_index_u32(select(_wgslsmith_mod_u32(var_0.c.c.a, var_0.d), ~u_input.b, !arg_2.x), 18u)], _wgslsmith_div_u32(u_input.a, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(36000u, 18u)], 18u)])), vec4<u32>(~1u, _wgslsmith_mod_u32(abs(var_0.d), countOneBits(0u)), ~abs(62076u), 0u), firstLeadingBit(var_0.a)), var_0.b, Struct_4(vec2<bool>(any(arg_2), arg_0.x), arg_2.zy, Struct_1(var_1.a >> (_wgslsmith_div_u32(global0[_wgslsmith_index_u32(16331u, 18u)], 14552u) % 32u), _wgslsmith_f_op_f32(-1726f * var_1.b)), !(!any(vec3<bool>(var_0.c.d, true, global2[_wgslsmith_index_u32(1u, 30u)]))), countOneBits(vec2<i32>(-var_0.b.x, -5456i))), _wgslsmith_mod_u32(~firstLeadingBit(_wgslsmith_sub_u32(var_1.a, 9692u)), ~0u));
}

fn func_5(arg_0: Struct_5, arg_1: vec4<bool>, arg_2: f32) -> Struct_3 {
    global2 = array<bool, 30>();
    let var_0 = global0[_wgslsmith_index_u32(select(select(4294967295u, 1u, !func_4(arg_1.wyz, arg_0.c.e.x, vec3<bool>(global2[_wgslsmith_index_u32(1u, 30u)], arg_1.x, arg_1.x)).c.d), _wgslsmith_mod_u32(25467u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d, global0[_wgslsmith_index_u32(0u, 18u)], u_input.a, 0u), ~vec4<u32>(arg_0.c.c.a, arg_0.c.c.a, global0[_wgslsmith_index_u32(13224u, 18u)], 24822u))), arg_1.x), 18u)];
    let var_1 = vec4<i32>(-1i) * -reverseBits(reverseBits(abs(vec4<i32>(7766i, 5776i, arg_0.b.x, arg_0.c.e.x))));
    global0 = array<u32, 18>();
    global1 = array<vec3<i32>, 3>();
    return Struct_3(func_4(vec3<bool>(arg_1.x, max(var_1.x, var_1.x) != arg_0.c.e.x, arg_1.x), -31663i, arg_1.wxw).c.b, arg_0.c.c, vec3<u32>(arg_0.d, min(~firstTrailingBit(4294967295u), ~(0u ^ u_input.b)), arg_0.c.c.a));
}

fn func_1() -> Struct_1 {
    let var_0 = func_5(func_4(!vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)]), 30u)], true, func_2(Struct_5(vec4<u32>(1u, 25137u, u_input.a, u_input.b), global1[_wgslsmith_index_u32(57099u, 3u)], Struct_4(vec2<bool>(false, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 30u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 30u)]), Struct_1(u_input.b, 404f), true, vec2<i32>(-2147483647i, 2147483647i)), 9312u), 0i, Struct_5(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 18u)], u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 18u)], 18u)], 1u), vec3<i32>(377i, 36259i, -2147483647i), Struct_4(vec2<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 30u)], global2[_wgslsmith_index_u32(u_input.b, 30u)]), vec2<bool>(false, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 30u)]), Struct_1(u_input.a, -513f), global2[_wgslsmith_index_u32(4294967295u, 30u)], vec2<i32>(-2147483647i, 1i)), 0u), vec2<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(102453u, 18u)], 30u)], global2[_wgslsmith_index_u32(1843u, 30u)]))), ~1i, select(vec3<bool>(select(true, global2[_wgslsmith_index_u32(u_input.b, 30u)], global2[_wgslsmith_index_u32(u_input.a, 30u)]), !global2[_wgslsmith_index_u32(1u, 30u)], global2[_wgslsmith_index_u32(4294967295u, 30u)]), !select(vec3<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(57688u, 18u)], 30u)], global2[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(75790u, 30u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(7250u, 30u)], global2[_wgslsmith_index_u32(44355u, 30u)]), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 18u)], 30u)]), select(select(vec3<bool>(global2[_wgslsmith_index_u32(54335u, 30u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(67738u, 18u)], 30u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 18u)], 30u)]), vec3<bool>(false, false, false), vec3<bool>(false, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 30u)], false)), vec3<bool>(false, false, false), !vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 30u)], global2[_wgslsmith_index_u32(0u, 30u)])))), select(select(!select(vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 30u)], false, global2[_wgslsmith_index_u32(4294967295u, 30u)]), vec4<bool>(global2[_wgslsmith_index_u32(0u, 30u)], false, global2[_wgslsmith_index_u32(4294967295u, 30u)], true), false), select(!vec4<bool>(global2[_wgslsmith_index_u32(1u, 30u)], global2[_wgslsmith_index_u32(4294967295u, 30u)], false, global2[_wgslsmith_index_u32(8898u, 30u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 30u)], global2[_wgslsmith_index_u32(u_input.a, 30u)], true, global2[_wgslsmith_index_u32(34457u, 30u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 18u)], 30u)], global2[_wgslsmith_index_u32(u_input.b, 30u)], true), false), true), true), !(!vec4<bool>(global2[_wgslsmith_index_u32(1u, 30u)], global2[_wgslsmith_index_u32(0u, 30u)], false, global2[_wgslsmith_index_u32(u_input.a, 30u)])), select(!select(vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 30u)], true, true), vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(0u, 30u)]), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 18u)], 30u)]), select(select(vec4<bool>(true, global2[_wgslsmith_index_u32(6958u, 30u)], true, global2[_wgslsmith_index_u32(43212u, 30u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 30u)], global2[_wgslsmith_index_u32(1u, 30u)], global2[_wgslsmith_index_u32(u_input.a, 30u)]), false), select(vec4<bool>(global2[_wgslsmith_index_u32(30842u, 30u)], global2[_wgslsmith_index_u32(29287u, 30u)], global2[_wgslsmith_index_u32(259u, 30u)], true), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 30u)], global2[_wgslsmith_index_u32(u_input.b, 30u)], true, global2[_wgslsmith_index_u32(u_input.b, 30u)]), false), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11867u, 18u)], 30u)]), true)), -702f);
    global1 = array<vec3<i32>, 3>();
    let var_1 = Struct_2(true, 4294967295u, var_0.b, -vec2<i32>(17173i, -37396i), -693f);
    var var_2 = i32(-1i) * -_wgslsmith_mod_i32(-_wgslsmith_clamp_i32(var_1.d.x, var_1.d.x, -1i), -max(-2147483647i, var_1.d.x));
    var_2 = 1i;
    return func_4(vec3<bool>(any(select(vec4<bool>(true, false, global2[_wgslsmith_index_u32(36846u, 30u)], global2[_wgslsmith_index_u32(1u, 30u)]), vec4<bool>(var_1.a, var_1.a, true, global2[_wgslsmith_index_u32(5331u, 30u)]), vec4<bool>(var_0.a.x, var_0.a.x, global2[_wgslsmith_index_u32(u_input.b, 30u)], true))) | var_1.a, true, !all(var_0.a)), var_1.d.x, !(!(!select(vec3<bool>(var_1.a, global2[_wgslsmith_index_u32(24036u, 30u)], global2[_wgslsmith_index_u32(78550u, 30u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(43877u, 30u)], var_0.a.x), vec3<bool>(true, false, var_1.a))))).c.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 30u)], global2[_wgslsmith_index_u32(51841u, 30u)], false)), any(vec4<bool>(true, false, true, global2[_wgslsmith_index_u32(6327u, 30u)])))), !(!vec2<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 18u)], 30u)], true))), !(!select(!vec2<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 18u)], 18u)], 30u)], true), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 30u)], global2[_wgslsmith_index_u32(u_input.b, 30u)]), select(vec2<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17244u, 18u)], 30u)], global2[_wgslsmith_index_u32(u_input.a, 30u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 30u)], true), vec2<bool>(global2[_wgslsmith_index_u32(0u, 30u)], false)))), func_1(), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~global0[_wgslsmith_index_u32(15624u, 18u)], ~(global0[_wgslsmith_index_u32(~44442u, 18u)] >> (~u_input.b % 32u))), 30u)], _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(2147483647i, -45889i), ~vec2<i32>(-2147483647i, 14093i)), vec2<i32>(1i, 1i)), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(32610i, -4202i), select(vec2<i32>(1i, -2147483647i), vec2<i32>(-13725i, -40937i), global2[_wgslsmith_index_u32(1u, 30u)])), vec2<i32>(1i, 1i))));
    var var_1 = !select(vec4<bool>(all(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 30u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 18u)], 30u)])), func_5(func_4(vec3<bool>(var_0.a.x, var_0.a.x, true), var_0.e.x, vec3<bool>(false, true, false)), select(vec4<bool>(true, false, global2[_wgslsmith_index_u32(u_input.a, 30u)], true), vec4<bool>(true, var_0.d, var_0.b.x, var_0.d), vec4<bool>(var_0.d, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 30u)], false, var_0.a.x)), _wgslsmith_f_op_f32(-var_0.c.b)).a.x, var_0.a.x, true), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 30u)], all(vec2<bool>(false, true)), false, var_0.c.b >= _wgslsmith_f_op_f32(314f * 623f)), !(!vec4<bool>(false, var_0.b.x, global2[_wgslsmith_index_u32(84781u, 30u)], false)));
    let var_2 = func_4(vec3<bool>(true, false, false), var_0.e.x, var_1.zxx);
    var var_3 = global2[_wgslsmith_index_u32(var_0.c.a, 30u)];
    var_1 = !select(select(select(select(vec4<bool>(false, var_2.c.d, false, var_0.d), vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(u_input.b, 30u)]), vec4<bool>(true, var_1.x, var_0.a.x, true)), !vec4<bool>(false, false, true, var_1.x), !vec4<bool>(global2[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(var_0.c.a, 30u)], var_1.x, false)), select(select(vec4<bool>(var_1.x, false, true, false), vec4<bool>(true, global2[_wgslsmith_index_u32(var_0.c.a, 30u)], var_1.x, false), true), select(vec4<bool>(var_0.d, true, var_2.c.b.x, var_2.c.b.x), vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.c.a, 18u)], 30u)]), global2[_wgslsmith_index_u32(4294967295u, 30u)]), false & var_1.x), func_4(!vec3<bool>(var_0.d, false, false), -5739i ^ var_2.b.x, !vec3<bool>(false, false, var_0.b.x)).c.b.x), select(select(vec4<bool>(false, true, false, var_0.b.x), !vec4<bool>(var_1.x, false, var_2.c.d, var_2.c.d), var_2.c.b.x), !(!vec4<bool>(global2[_wgslsmith_index_u32(0u, 30u)], var_0.d, false, false)), !vec4<bool>(true, false, var_1.x, var_0.d)), !(~var_0.c.a != 5027u));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, max(var_2.a.zw, var_2.a.zz) & vec2<u32>(func_3(_wgslsmith_div_vec2_f32(vec2<f32>(-600f, var_0.c.b), vec2<f32>(var_0.c.b, var_2.c.c.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i), var_0.e), func_4(var_1.wzy, var_0.e.x, var_1.zzw), ~global0[_wgslsmith_index_u32(1u, 18u)]), func_1().a), ~(~(~1u)), vec2<i32>(~(~abs(var_2.c.e.x)), ~_wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(max(1u, 4294967295u), 3u)], abs(global1[_wgslsmith_index_u32(var_0.c.a, 3u)]))));
}

