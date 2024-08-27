struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6>;

var<private> global1: array<vec4<i32>, 22>;

var<private> global2: array<i32, 18>;

var<private> global3: array<vec3<i32>, 9>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0[_wgslsmith_index_u32(arg_0, 6u)], global0[_wgslsmith_index_u32(1u, 6u)]), vec2<f32>(global0[_wgslsmith_index_u32(arg_0, 6u)], -1216f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1451f, -581f) * vec2<f32>(-491f, 1106f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(arg_0, 6u)]))))));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(arg_0.b, Struct_1(select(vec4<bool>(true, all(arg_0.a.a.yyz), any(arg_0.b.a), !arg_0.a.e), arg_0.b.a, arg_0.a.e), 2307u, max(~vec3<u32>(4294967295u, 1u, 1u), arg_0.a.c) << (vec3<u32>(14319u, arg_0.c, 64700u) % vec3<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(max(arg_0.c, 30397u), _wgslsmith_sub_u32(arg_0.b.c.x, arg_0.c)), arg_0.a.c.xx), false), max(countOneBits(~(~4294967295u)), countOneBits(min(arg_0.a.b, 1u))));
    global3 = array<vec3<i32>, 9>();
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.d.x, 4294967295u), vec2<u32>(32555u, 2516u)), 6u)]), _wgslsmith_f_op_f32(_wgslsmith_div_f32(315f, global0[_wgslsmith_index_u32(var_0.c, 6u)]) * global0[_wgslsmith_index_u32(min(arg_0.a.c.x, var_0.a.b), 6u)]))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(27769u, 6u)]), 705f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(4294967295u)))))));
    var var_2 = firstTrailingBit(abs(_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 9737u, 4294967295u, arg_0.c) | ~vec4<u32>(arg_0.b.c.x, 43698u, 3503u, var_0.b.d.x), reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.c, 0u, var_0.a.c.x, 1u), vec4<u32>(86222u, var_0.b.b, 4294967295u, 4294967295u))), ~vec4<u32>(4294967295u, var_0.a.d.x, arg_0.c, arg_0.b.b))));
    global0 = array<f32, 6>();
    return arg_0;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_2) -> vec4<u32> {
    global2 = array<i32, 18>();
    let var_0 = func_2(Struct_2(Struct_1(!(!arg_2.b.a), arg_2.b.b, _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(arg_2.b.c, arg_1.a.c), ~arg_2.a.c), arg_1.b.d, select(true, false || arg_1.b.a.x, false)), arg_2.a, _wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_2.a.b, 21937u, arg_2.c), arg_2.a.c), ~arg_2.b.c)));
    let var_1 = var_0;
    let var_2 = select(func_2(Struct_2(Struct_1(!var_1.a.a, ~arg_1.c, min(vec3<u32>(var_1.a.c.x, 1u, var_1.a.b), vec3<u32>(arg_2.c, arg_2.b.d.x, var_1.c)), ~vec2<u32>(arg_1.c, arg_2.a.b), any(arg_1.b.a.zz)), Struct_1(select(arg_2.b.a, var_0.a.a, true), reverseBits(var_1.a.d.x), arg_1.a.c ^ var_1.a.c, var_0.b.d ^ var_1.b.d, true), _wgslsmith_add_u32(48130u, 7114u))).b.a, var_1.b.a, false);
    global2 = array<i32, 18>();
    return vec4<u32>((4294967295u << (var_0.a.d.x % 32u)) << (_wgslsmith_dot_vec2_u32(arg_2.a.d, ~(~var_0.a.c.yx)) % 32u), abs(abs(func_2(Struct_2(Struct_1(vec4<bool>(false, arg_2.b.a.x, false, var_2.x), 0u, arg_1.a.c, arg_1.b.d, arg_2.a.e), Struct_1(var_0.b.a, arg_1.c, var_0.b.c, vec2<u32>(0u, var_1.b.d.x), var_0.b.a.x), var_0.a.d.x)).b.b)), ~(~abs(abs(arg_2.a.b))), abs(var_1.a.d.x));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: bool, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = ~(~abs(global2[_wgslsmith_index_u32(1u, 18u)]));
    let var_1 = Struct_2(func_2(arg_1).b, func_2(Struct_2(arg_1.b, Struct_1(vec4<bool>(false, arg_2, arg_1.a.a.x, false), 95868u >> (arg_1.a.b % 32u), abs(arg_1.a.c), ~arg_0.wy, arg_2), _wgslsmith_mult_u32(min(arg_1.a.c.x, arg_1.b.b), ~arg_1.c))).a, ~_wgslsmith_clamp_u32(22821u, 4294967295u, ~31536u));
    var var_2 = -_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(arg_0.x, 18u)] | 21125i, 1i), u_input.a, u_input.a), vec2<i32>(_wgslsmith_mod_i32(35643i, -u_input.b), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(63314u, arg_0.x), func_2(arg_1).c), 18u)]));
    let var_3 = -423f;
    global2 = array<i32, 18>();
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(((func_1(vec4<f32>(global0[_wgslsmith_index_u32(0u, 6u)], 1584f, global0[_wgslsmith_index_u32(96914u, 6u)], global0[_wgslsmith_index_u32(1u, 6u)]), Struct_2(Struct_1(vec4<bool>(true, false, true, true), 4294967295u, vec3<u32>(41375u, 17916u, 0u), vec2<u32>(0u, 6125u), false), Struct_1(vec4<bool>(true, true, false, false), 1u, vec3<u32>(34326u, 4294967295u, 14156u), vec2<u32>(121527u, 4294967295u), false), 37211u), Struct_2(Struct_1(vec4<bool>(true, false, true, false), 1u, vec3<u32>(19854u, 5395u, 4294967295u), vec2<u32>(10292u, 21254u), false), Struct_1(vec4<bool>(false, false, false, true), 1u, vec3<u32>(6913u, 24242u, 98763u), vec2<u32>(73331u, 1u), true), 85344u)) << (~vec4<u32>(23080u, 0u, 23569u, 52402u) % vec4<u32>(32u))) ^ ~(~vec4<u32>(0u, 10890u, 0u, 4294967295u))) | abs(~(~vec4<u32>(23830u, 4294967295u, 50254u, 112575u))), Struct_2(func_2(func_2(func_2(Struct_2(Struct_1(vec4<bool>(true, false, true, true), 4294967295u, vec3<u32>(13195u, 4294967295u, 54376u), vec2<u32>(27579u, 1u), true), Struct_1(vec4<bool>(true, false, false, false), 1u, vec3<u32>(2223u, 27242u, 91121u), vec2<u32>(1u, 8632u), false), 54110u)))).a, func_2(func_2(func_2(Struct_2(Struct_1(vec4<bool>(false, true, false, false), 1u, vec3<u32>(1u, 1u, 65669u), vec2<u32>(0u, 1u), true), Struct_1(vec4<bool>(false, true, true, true), 0u, vec3<u32>(38714u, 9632u, 65713u), vec2<u32>(0u, 38916u), false), 84136u)))).b, 4294967295u), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(480f, _wgslsmith_f_op_f32(f32(-1f) * -1055f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(7261u, 6u)] - 717f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(8186u, 6u)])))));
    var_0 = func_2(Struct_2(var_0.a, var_0.b, var_0.a.c.x));
    let var_1 = func_2(Struct_2(func_4(~vec4<u32>(35338u, 0u, 36381u, var_0.c) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.c, var_0.b.c.x, var_0.a.c.x, var_0.c), vec4<u32>(var_0.b.c.x, 4322u, var_0.c, 20283u)) % vec4<u32>(32u)), func_4(countOneBits(vec4<u32>(1u, 1u, 0u, var_0.c)), Struct_2(var_0.a, Struct_1(vec4<bool>(false, var_0.a.a.x, false, var_0.a.e), var_0.c, var_0.b.c, var_0.a.c.xx, false), 30034u), any(vec4<bool>(var_0.a.a.x, true, true, var_0.b.e)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(784f, -763f, global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(var_0.a.b, 6u)]), vec4<f32>(1200f, 1025f, global0[_wgslsmith_index_u32(var_0.b.c.x, 6u)], -1325f)))), !(true & var_0.b.e), vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.a.b, 6u)]), -161f, 142f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 6u)] - global0[_wgslsmith_index_u32(var_0.a.d.x, 6u)]))).a, var_0.b, var_0.a.c.x)).b.d.x;
    let var_2 = Struct_2(Struct_1(vec4<bool>(any(vec3<bool>(var_0.b.e, var_0.a.a.x, var_0.b.e)), var_0.a.e, true, !var_0.b.e), 33864u, var_0.a.c, var_0.a.d, true), var_0.b, func_2(func_2(Struct_2(Struct_1(var_0.b.a, var_1, vec3<u32>(var_0.b.c.x, 43502u, var_0.a.d.x), vec2<u32>(40725u, 9445u), true), Struct_1(vec4<bool>(var_0.a.a.x, var_0.b.a.x, var_0.a.e, false), 1u, vec3<u32>(var_1, 6862u, 1u), vec2<u32>(53937u, 14671u), var_0.a.e), func_4(vec4<u32>(var_0.c, var_1, 1u, var_0.c), Struct_2(var_0.b, var_0.b, 79463u), true, vec4<f32>(-1000f, 1762f, global0[_wgslsmith_index_u32(44422u, 6u)], global0[_wgslsmith_index_u32(var_1, 6u)])).c))).c);
    var var_3 = Struct_2(func_4(~(~(~vec4<u32>(var_1, 28714u, 1u, 33552u))), func_4(~func_1(vec4<f32>(-640f, 234f, 1103f, 816f), var_2, Struct_2(Struct_1(vec4<bool>(var_2.a.e, true, var_2.b.a.x, true), 4294967295u, var_2.a.c, var_0.b.c.yy, var_0.b.e), Struct_1(var_0.a.a, 0u, var_0.b.c, vec2<u32>(1u, 4294967295u), var_0.b.e), var_1)), Struct_2(var_2.a, var_2.a, 11665u), any(func_2(var_2).b.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)], 1117f, global0[_wgslsmith_index_u32(0u, 6u)]) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(var_1, 6u)], global0[_wgslsmith_index_u32(var_1, 6u)], global0[_wgslsmith_index_u32(var_2.b.b, 6u)], -298f) - vec4<f32>(1208f, 1107f, global0[_wgslsmith_index_u32(var_0.c, 6u)], global0[_wgslsmith_index_u32(var_0.b.d.x, 6u)])))), var_2.b.e, vec4<f32>(_wgslsmith_f_op_vec2_f32(func_3(1u)).x, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_1, 6u)], _wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(36157u, 6u)], -1011f)), global0[_wgslsmith_index_u32(81750u, 6u)])).a, func_2(Struct_2(Struct_1(var_2.b.a, 1u, ~vec3<u32>(70568u, 4294967295u, var_2.a.c.x), _wgslsmith_add_vec2_u32(vec2<u32>(var_0.b.b, var_0.a.d.x), vec2<u32>(var_1, var_0.a.d.x)), var_2.b.a.x), var_2.b, var_2.a.b)).b, ~(~var_2.b.c.x));
    var var_4 = var_2.b.d.x;
    let var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(1u, 6u)], -721f, global0[_wgslsmith_index_u32(var_0.c, 6u)]), vec3<f32>(global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(var_1, 6u)], 1019f), var_0.b.a.ywx)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0[_wgslsmith_index_u32(32851u, 6u)], -411f, -905f), vec3<f32>(global0[_wgslsmith_index_u32(110604u, 6u)], -413f, global0[_wgslsmith_index_u32(11420u, 6u)])))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(744f, -1462f, global0[_wgslsmith_index_u32(var_2.b.c.x, 6u)]), vec3<f32>(global0[_wgslsmith_index_u32(var_1, 6u)], global0[_wgslsmith_index_u32(var_2.b.c.x, 6u)], -578f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(var_2.c, 6u)], -1533f, global0[_wgslsmith_index_u32(29313u, 6u)]), vec3<f32>(-836f, global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(1u, 6u)]), var_3.b.a.yww)))))));
    var_3 = func_4(vec4<u32>(_wgslsmith_dot_vec2_u32(var_3.b.d, ~var_0.b.d), 1u, var_0.c, var_1 ^ var_3.b.d.x), Struct_2(var_0.b, Struct_1(var_3.b.a, var_2.c >> (select(0u, var_2.a.b, true) % 32u), _wgslsmith_sub_vec3_u32(vec3<u32>(var_1, var_3.a.b, var_1) >> (vec3<u32>(var_1, var_3.c, var_1) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(var_3.a.c, var_0.b.c)), var_3.a.d, true), ~9169u), select(select(var_2.b.a.x, func_4(vec4<u32>(1u, 4294967295u, 8526u, 6399u), Struct_2(var_0.b, var_2.b, 62941u), var_0.b.a.x, vec4<f32>(1000f, var_5.x, 2169f, var_5.x)).a.e, true) | var_2.b.e, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(156f, global0[_wgslsmith_index_u32(1u, 6u)]), global0[_wgslsmith_index_u32(func_2(Struct_2(Struct_1(var_0.b.a, 4294967295u, var_0.b.c, var_3.a.c.yx, false), var_0.a, 4294967295u)).b.d.x, 6u)])) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.x)), var_0.b.e), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(abs(294f)), _wgslsmith_f_op_f32(f32(-1f) * -1643f), _wgslsmith_f_op_f32(f32(-1f) * -300f), _wgslsmith_f_op_f32(round(-215f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-global1[_wgslsmith_index_u32(var_1 ^ 53770u, 22u)], func_4(~_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_1, var_1, 1u, 9070u), vec4<u32>(9348u, 62045u, 13389u, 0u)), firstTrailingBit(vec4<u32>(var_2.c, 80925u, var_0.c, var_0.b.d.x))), Struct_2(Struct_1(func_2(var_2).b.a, ~2792u, vec3<u32>(44154u, var_0.b.b, var_2.b.b), ~var_0.a.d, !var_0.a.e), var_2.b, _wgslsmith_div_u32(~var_3.a.b, var_0.a.b >> (var_0.c % 32u))), var_5.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -295f)), vec4<f32>(_wgslsmith_f_op_f32(1000f - -1231f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(0u, 6u)])) * var_5.x), _wgslsmith_f_op_f32(-var_5.x), 986f)).b.d.x);
}

