struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: Struct_1,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
    c: vec4<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 28>;

var<private> global1: Struct_5 = Struct_5(Struct_4(10269u, 40442u, vec4<u32>(55168u, 63557u, 36680u, 15946u), Struct_2(vec3<i32>(-1i, 0i, -38996i), vec3<u32>(63250u, 20737u, 1u), Struct_1(vec3<f32>(-1809f, -1000f, -385f), 7458u, vec2<u32>(0u, 1u), vec3<i32>(i32(-2147483648), 0i, 2147483647i), vec2<bool>(true, false)), true, 0u)), 1u, Struct_1(vec3<f32>(837f, -413f, -409f), 4294967295u, vec2<u32>(1u, 4294967295u), vec3<i32>(1i, 1i, 2147483647i), vec2<bool>(false, false)), Struct_2(vec3<i32>(16750i, 25153i, 3875i), vec3<u32>(4294967295u, 24725u, 15061u), Struct_1(vec3<f32>(-611f, 1914f, 1000f), 1u, vec2<u32>(4294967295u, 1u), vec3<i32>(-53952i, 35928i, i32(-2147483648)), vec2<bool>(true, true)), false, 22613u), Struct_1(vec3<f32>(-1506f, 1000f, -1350f), 0u, vec2<u32>(42669u, 1u), vec3<i32>(-1i, 14964i, 19164i), vec2<bool>(true, false)));

var<private> global2: array<u32, 23>;

var<private> global3: vec3<i32> = vec3<i32>(2147483647i, -1i, -19293i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: bool, arg_3: bool) -> i32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.a.x * arg_0.c.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.e.a.x - _wgslsmith_f_op_f32(ceil(arg_0.c.a.x))))) + _wgslsmith_f_op_f32(-361f * global1.c.a.x)));
    global1 = Struct_5(global1.a, min(~(~23956u) | _wgslsmith_clamp_u32(~arg_0.b.x, 4294967295u ^ global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(21867u, 23u)], 23u)], _wgslsmith_sub_u32(u_input.a, 31122u)), ~arg_0.c.c.x), arg_0.c, arg_0, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), -959f, 1776f)), 1u & ~global1.c.b, countOneBits(global1.a.d.c.c), -arg_0.a, !vec2<bool>(false, !global1.a.d.d)));
    var var_1 = all(select(!vec4<bool>(arg_2 && arg_0.c.e.x, arg_3 | arg_0.d, arg_2, !arg_3), select(!vec4<bool>(arg_3, true, global1.e.e.x, arg_3), !vec4<bool>(arg_3, false, arg_2, arg_3), global1.c.e.x), !select(vec4<bool>(false, global1.e.e.x, false, global1.a.d.c.e.x), !vec4<bool>(false, false, arg_2, arg_3), select(vec4<bool>(false, arg_2, arg_2, arg_0.d), vec4<bool>(true, global1.e.e.x, false, false), false))));
    var var_2 = arg_0.c.a.yy;
    var var_3 = vec4<bool>(any(select(!(!vec3<bool>(arg_3, global1.c.e.x, global1.c.e.x)), select(select(vec3<bool>(true, global1.a.d.d, arg_2), vec3<bool>(false, global1.d.c.e.x, arg_0.c.e.x), global1.d.c.e.x), !vec3<bool>(false, global1.a.d.c.e.x, false), select(vec3<bool>(false, true, arg_2), vec3<bool>(true, arg_3, arg_2), arg_3)), vec3<bool>(!arg_3, true, global1.c.e.x))), !arg_2, all(select(vec3<bool>(arg_0.c.e.x, arg_0.d, arg_3), select(select(vec3<bool>(false, global1.e.e.x, false), vec3<bool>(arg_2, arg_3, arg_3), false), !vec3<bool>(true, global1.e.e.x, true), vec3<bool>(global1.d.d, false, false)), true)), true);
    return global1.e.d.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: vec4<i32>) -> vec4<f32> {
    var var_0 = min(vec4<u32>(15596u, 30625u, ~(~_wgslsmith_sub_u32(8458u, 1u)), global2[_wgslsmith_index_u32(1u, 23u)]), _wgslsmith_add_vec4_u32(abs(vec4<u32>(~global1.b, _wgslsmith_clamp_u32(arg_1, 0u, 13698u), ~global2[_wgslsmith_index_u32(5286u, 23u)], _wgslsmith_add_u32(global1.a.c.x, arg_1))), ~(~global1.a.c)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c.a.x, global1.e.a.x)))));
    var_0 = global1.a.c;
    global2 = array<u32, 23>();
    let var_2 = vec3<i32>(-global1.d.a.x, 13251i, func_3(global1.a.d, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~var_0.x), global1.d.e), 28u)], global1.d.c.e.x, false));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(383f, global1.d.c.a.x)), 526f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.x - 203f), _wgslsmith_f_op_f32(-global1.e.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.d.c.a.x)), 529f), vec4<f32>(global1.e.a.x, -1097f, _wgslsmith_f_op_f32(trunc(-221f)), _wgslsmith_f_op_f32(-922f - _wgslsmith_f_op_f32(-arg_0.x)))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.a.x, global1.a.d.c.a.x, arg_0.x, 349f)), vec4<f32>(global1.c.a.x, arg_0.x, global1.e.a.x, 1042f), any(global1.a.d.c.e))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.d.c.a.x, global1.e.a.x, -318f, 1000f))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: bool) -> Struct_2 {
    global2 = array<u32, 23>();
    let var_0 = Struct_5(Struct_4(abs(global1.a.d.c.c.x), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(global1.a.c, _wgslsmith_clamp_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global1.d.b.x, 23u)], 32340u, 16055u, 46228u), vec4<u32>(4294967295u, 0u, 4294967295u, 12305u), global1.a.c)), global2[_wgslsmith_index_u32(1u, 23u)], ~global1.c.b & (u_input.a >> (global1.c.b % 32u))), 23u)], global1.a.c, global1.a.d), _wgslsmith_dot_vec2_u32(~(~global1.d.b.xx), vec2<u32>(57619u, ~max(u_input.a, u_input.a))), global1.a.d.c, Struct_2(_wgslsmith_add_vec3_i32(-global1.e.d, ~global1.e.d), ~(~vec3<u32>(global2[_wgslsmith_index_u32(0u, 23u)], u_input.a, global2[_wgslsmith_index_u32(0u, 23u)])) & vec3<u32>(79984u | global2[_wgslsmith_index_u32(10287u, 23u)], ~37742u, 1u), global1.d.c, any(select(!vec3<bool>(true, false, global1.e.e.x), !vec3<bool>(false, true, global1.d.c.e.x), true)), ~(~global1.e.b)), global1.c);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0 - vec4<f32>(arg_0.x, var_0.e.a.x, var_0.d.c.a.x, var_0.c.a.x)) * vec4<f32>(global1.d.c.a.x, var_0.a.d.c.a.x, -870f, -1121f))) - arg_0);
    let var_2 = ~(~_wgslsmith_dot_vec2_i32(var_0.d.a.zx, vec2<i32>(global3.x, 32195i))) == 2140i;
    var var_3 = !(!select(vec3<bool>(var_0.e.e.x, arg_1 & var_0.a.d.d, !arg_1), select(select(vec3<bool>(var_0.a.d.c.e.x, false, var_2), vec3<bool>(true, false, false), arg_1), vec3<bool>(false, arg_1, var_0.c.e.x), vec3<bool>(true, var_0.d.c.e.x, arg_1)), select(vec3<bool>(true, var_0.c.e.x, false), select(vec3<bool>(false, var_2, false), vec3<bool>(global1.d.c.e.x, arg_1, false), true), !vec3<bool>(arg_1, arg_1, true))));
    return var_0.d;
}

fn func_5(arg_0: i32, arg_1: Struct_2) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1.c.a.x), _wgslsmith_f_op_f32(f32(-1f) * -732f), 2328f, _wgslsmith_f_op_f32(-702f * global1.e.a.x))) * vec4<f32>(global1.c.a.x, -906f, -549f, _wgslsmith_f_op_f32(ceil(global1.d.c.a.x)))));
    let var_1 = global1.e.e.x;
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.c.a.zz - _wgslsmith_f_op_vec2_f32(vec2<f32>(-286f, global1.c.a.x) * _wgslsmith_div_vec2_f32(vec2<f32>(243f, arg_1.c.a.x), var_0.xz))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.e.a.xy) - _wgslsmith_f_op_vec2_f32(-var_0.yy)) + vec2<f32>(_wgslsmith_f_op_f32(round(-533f)), 1f))), false, vec4<i32>(countOneBits(abs(-1i)), 2326i, 37464i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.x, -2147483647i, arg_1.a.x, global1.e.d.x) & vec4<i32>(arg_0, 1i, arg_1.a.x, -33084i), ~vec4<i32>(arg_1.c.d.x, global1.d.c.d.x, arg_0, 63302i))) << (vec4<u32>(arg_1.c.b, 1u, ~arg_1.c.b, 44950u) % vec4<u32>(32u)), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c.a.x, arg_1.c.a.x, arg_1.c.a.x, 1000f) + vec4<f32>(-540f, var_0.x, 1441f, 2065f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.a.x, var_0.x, 311f, global1.d.c.a.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1821f, global1.c.a.x, arg_1.c.a.x, var_0.x)))), true));
    let var_3 = -vec4<i32>(-2147483647i, _wgslsmith_mod_i32(func_3(global1.d, vec3<i32>(var_2.d.a.x, 19619i, var_2.c.x), false, global1.d.c.e.x) << (func_4(vec4<f32>(723f, -585f, -658f, 556f), false).e % 32u), arg_1.a.x), arg_1.c.d.x, _wgslsmith_sub_i32(var_2.c.x, select(arg_0, 0i, true)));
    global1 = Struct_5(global1.a, ~(~0u), func_4(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, 536f, 876f, global1.e.a.x) + vec4<f32>(-1000f, global1.e.a.x, -367f, arg_1.c.a.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(155f, 821f, -1228f, var_2.d.c.a.x), vec4<f32>(-185f, var_0.x, arg_1.c.a.x, 432f))))))), arg_1.c.e.x).c, func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(-global1.c.a.x), _wgslsmith_f_op_f32(-arg_1.c.a.x), _wgslsmith_div_f32(arg_1.c.a.x, -1955f)) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, arg_1.c.a.x, var_0.x, var_2.a.x)))))), !any(vec3<bool>(false, true, false))), arg_1.c);
    return global1.a;
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: vec2<i32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.e.a.x - 398f))));
    let var_1 = vec2<u32>(_wgslsmith_mod_u32(68792u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, global2[_wgslsmith_index_u32(13974u, 23u)]), _wgslsmith_clamp_u32(4294967295u, global2[_wgslsmith_index_u32(0u, 23u)], global1.a.d.c.b)) ^ func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d.c.a.x, var_0, -1612f, var_0) * vec4<f32>(420f, var_0, 1254f, var_0)), true).b.x), arg_1.b);
    return select(_wgslsmith_div_vec2_u32(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-152f, -1501f, 1313f, var_0) * vec4<f32>(arg_1.d.c.a.x, 241f, 821f, -1991f))), -195f > _wgslsmith_f_op_f32(-arg_1.d.c.a.x)).c.c, var_1), vec2<u32>((global2[_wgslsmith_index_u32(u_input.a, 23u)] | 12024u) << (u_input.a % 32u), u_input.a << (0u % 32u)) | vec2<u32>(1u, ~arg_1.b >> (abs(u_input.a) % 32u)), global1.e.e);
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: u32) -> u32 {
    var var_0 = func_6(select(global1.c.e, !vec2<bool>(false, any(vec4<bool>(arg_1, global1.d.d, false, global1.c.e.x))), global1.a.d.c.e), func_5(21149i, func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-645f, global1.d.c.a.x, 688f, global1.a.d.c.a.x) - vec4<f32>(global1.e.a.x, 130f, 170f, 104f)) - _wgslsmith_f_op_vec4_f32(func_2(global1.d.c.a.yx, 4294967295u, vec4<i32>(global3.x, global3.x, global1.a.d.a.x, global3.x)))), arg_1)), global1.a.d.c.d.xx);
    var_0 = global1.a.c.xz;
    var var_1 = func_5(_wgslsmith_sub_i32(arg_0.x, -59885i), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec2_f32(global1.c.a.yx * global1.d.c.a.zy), global2[_wgslsmith_index_u32(var_0.x, 23u)], ~vec4<i32>(global3.x, global1.d.c.d.x, -8741i, global3.x)))), arg_1));
    let var_2 = func_5(_wgslsmith_dot_vec3_i32(-(_wgslsmith_add_vec3_i32(vec3<i32>(1i, 7314i, arg_0.x), vec3<i32>(1i, arg_0.x, arg_0.x)) & var_1.d.a), _wgslsmith_div_vec3_i32(~global0[_wgslsmith_index_u32(u_input.a, 28u)], ~global1.d.c.d)), Struct_2(vec3<i32>(firstLeadingBit(1i), func_5(10295i, Struct_2(var_1.d.c.d, var_1.c.yzy, global1.d.c, var_1.d.d, var_0.x)).d.a.x, select(var_1.d.c.d.x, arg_0.x, func_4(vec4<f32>(122f, -471f, -1000f, -807f), arg_1).d)), vec3<u32>(48184u | arg_2, abs(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(24087u, 23u)], 23u)]), firstLeadingBit(global2[_wgslsmith_index_u32(global1.c.c.x, 23u)] ^ 8751u)), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-455f, -3813f, -1004f, var_1.d.c.a.x)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(681f, var_1.d.c.a.x, var_1.d.c.a.x, var_1.d.c.a.x)))), global1.c.e.x).c, -234f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2276f + global1.a.d.c.a.x) * _wgslsmith_f_op_f32(-var_1.d.c.a.x)), ~10192u)).d.c;
    var var_3 = 46808u;
    return 4294967295u;
}

fn func_7(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: Struct_4, arg_3: i32) -> Struct_4 {
    let var_0 = select(!(!(!(!vec4<bool>(true, true, false, arg_1.a.d.d)))), vec4<bool>(false, global1.e.e.x, !(arg_1.c.b < u_input.a), !((arg_1.d.d || global1.a.d.c.e.x) & (false | global1.e.e.x))), arg_1.e.e.x & true);
    global2 = array<u32, 23>();
    var var_1 = ~func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.d.c.a.x, 531f, arg_1.c.a.x, 184f), vec4<f32>(arg_2.d.c.a.x, arg_2.d.c.a.x, 333f, global1.c.a.x), var_0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d.c.a.x, global1.d.c.a.x, arg_2.d.c.a.x, arg_1.a.d.c.a.x))), any(select(var_0.ywy, var_0.zxy, var_0.zyz))).b | vec3<u32>(~33618u, arg_1.b, arg_2.d.b.x);
    var_1 = vec3<u32>(_wgslsmith_add_u32(func_5(global1.a.d.a.x, arg_2.d).d.c.b, 1u), ~global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(13165u, 25401u), 23u)], ~12705u);
    var var_2 = 442f;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(580f, -417f);
    var var_1 = func_7(select(global1.d.a, -vec3<i32>(global3.x, min(44888i, global1.c.d.x), global1.e.d.x | global1.a.d.a.x), select(!vec3<bool>(global1.e.e.x, true, global1.e.e.x), vec3<bool>(true, global1.d.d, true), any(vec3<bool>(true, false, global1.e.e.x)))), Struct_5(global1.a, select(u_input.a, func_1(-vec2<i32>(-1i, global3.x), global1.e.e.x, ~1u), true), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(357f, global1.e.a.x, var_0.x), vec3<f32>(-1000f, global1.c.a.x, var_0.x), vec3<bool>(global1.c.e.x, global1.a.d.c.e.x, false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(781f, global1.c.a.x, global1.a.d.c.a.x))), 0u, ~select(global1.d.b.xx, vec2<u32>(global2[_wgslsmith_index_u32(0u, 23u)], 4294967295u), global1.c.e.x), func_4(vec4<f32>(-1485f, -1000f, 2862f, var_0.x), global1.d.d).a << (~global1.a.d.b % vec3<u32>(32u)), select(global1.d.c.e, vec2<bool>(global1.e.e.x, global1.a.d.d), global1.a.d.c.e)), global1.a.d, Struct_1(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -121f, var_0.x, var_0.x)), global1.c.e.x).c.a, _wgslsmith_sub_u32(global1.a.d.e, global2[_wgslsmith_index_u32(global1.c.c.x, 23u)] & global1.b), ~(~global1.e.c), abs(~vec3<i32>(global3.x, global1.e.d.x, global1.e.d.x)), vec2<bool>(true, any(vec2<bool>(global1.d.c.e.x, global1.c.e.x))))), func_5(~(~1i), Struct_2(vec3<i32>(global1.e.d.x, 49503i, 14634i) ^ (global0[_wgslsmith_index_u32(u_input.a, 28u)] ^ vec3<i32>(global1.a.d.c.d.x, -174i, 2147483647i)), _wgslsmith_add_vec3_u32(select(vec3<u32>(u_input.a, global1.c.c.x, global1.e.c.x), global1.d.b, vec3<bool>(global1.c.e.x, global1.a.d.c.e.x, true)), ~global1.a.c.wzw), Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, var_0.x, -1303f), global1.e.a)), u_input.a, select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 0u), vec2<bool>(global1.e.e.x, true)), reverseBits(global1.c.d), select(global1.e.e, vec2<bool>(global1.c.e.x, true), false)), any(select(vec4<bool>(true, false, true, global1.e.e.x), vec4<bool>(global1.c.e.x, false, true, true), vec4<bool>(global1.e.e.x, global1.c.e.x, true, false))), 1u)), (~global1.e.d.x << (_wgslsmith_div_u32(countOneBits(u_input.a), countOneBits(u_input.a)) % 32u)) & global3.x);
    global2 = array<u32, 23>();
    var var_2 = ~(~var_1.b);
    global3 = vec3<i32>(_wgslsmith_add_i32(var_1.d.c.d.x, global1.c.d.x), 23541i, -reverseBits(global1.d.a.x));
    global1 = Struct_5(global1.a, ~countOneBits(~func_5(24104i, Struct_2(global0[_wgslsmith_index_u32(u_input.a, 28u)], global1.d.b, Struct_1(var_1.d.c.a, 1u, vec2<u32>(0u, 27023u), var_1.d.c.d, vec2<bool>(false, var_1.d.d)), var_1.d.c.e.x, var_1.c.x)).c.x), global1.e, global1.d, func_5(_wgslsmith_mod_i32(firstLeadingBit(global3.x), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(global1.e.d.x, global1.d.a.x, global1.d.c.d.x, var_1.d.a.x)), vec4<i32>(1i, -12945i, -33253i, global1.d.c.d.x) >> (var_1.c % vec4<u32>(32u)))), Struct_2(var_1.d.a & min(vec3<i32>(global3.x, 1i, 0i), var_1.d.a), ~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 23u)], 23u)], 15319u, 0u), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 106f, 1000f, 762f)), true).c, true, select(func_5(-13575i, global1.a.d).d.b.x, 1u, var_0.x != -208f))).d.c);
    var var_3 = ~func_1(-((vec2<i32>(global3.x, 0i) ^ global3.xx) << (_wgslsmith_mult_vec2_u32(vec2<u32>(89564u, 1u), vec2<u32>(113241u, var_1.c.x)) % vec2<u32>(32u))), any(vec4<bool>(true, var_1.d.c.e.x, !var_1.d.d, global1.d.c.e.x)), global1.b);
    global1 = Struct_5(func_7(vec3<i32>(71070i, ~1i, (global3.x & var_1.d.c.d.x) ^ (var_1.d.c.d.x | global3.x)), Struct_5(Struct_4(var_1.c.x, reverseBits(var_1.a), min(vec4<u32>(34100u, u_input.a, 0u, u_input.a), vec4<u32>(var_1.d.c.c.x, var_1.a, 32179u, u_input.a)), var_1.d), func_4(vec4<f32>(-386f, var_1.d.c.a.x, -960f, global1.a.d.c.a.x), false).c.c.x << (~0u % 32u), global1.c, Struct_2(vec3<i32>(var_1.d.a.x, -26858i, var_1.d.a.x) & vec3<i32>(4207i, global1.d.a.x, global3.x), global1.d.b ^ global1.a.d.b, Struct_1(global1.d.c.a, u_input.a, var_1.d.b.zy, var_1.d.a, global1.a.d.c.e), 27162i == global1.d.c.d.x, global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(4294967295u, 23u)], 23u)]), func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-968f, global1.d.c.a.x, global1.a.d.c.a.x, var_0.x) * vec4<f32>(var_0.x, global1.e.a.x, -374f, -388f)), !var_1.d.d).c), Struct_4(countOneBits(3379u), func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.c.a.x, var_1.d.c.a.x, -594f, var_0.x) * vec4<f32>(global1.a.d.c.a.x, global1.c.a.x, -361f, var_0.x)), true).b.x, _wgslsmith_clamp_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(87486u, 23u)], var_1.d.b.x, 0u, var_1.c.x) << (var_1.c % vec4<u32>(32u)), func_7(vec3<i32>(global1.d.a.x, var_1.d.c.d.x, -12917i), Struct_5(global1.a, 8930u, global1.a.d.c, Struct_2(global0[_wgslsmith_index_u32(u_input.a, 28u)], var_1.c.wzw, var_1.d.c, var_1.d.d, u_input.a), global1.e), Struct_4(global2[_wgslsmith_index_u32(u_input.a, 23u)], 0u, vec4<u32>(u_input.a, var_1.b, 67057u, 1u), Struct_2(vec3<i32>(var_1.d.a.x, global3.x, global3.x), var_1.d.b, var_1.d.c, var_1.d.d, global2[_wgslsmith_index_u32(1u, 23u)])), 14987i).c, vec4<u32>(7103u, global1.c.c.x, 4294967295u, 1u)), Struct_2(global1.c.d, _wgslsmith_mod_vec3_u32(global1.d.b, vec3<u32>(72050u, global1.c.b, var_1.c.x)), func_4(vec4<f32>(-1037f, 1142f, var_1.d.c.a.x, global1.d.c.a.x), var_1.d.c.e.x).c, global1.c.e.x, global2[_wgslsmith_index_u32(var_1.a, 23u)])), global3.x & func_5(func_5(global1.d.a.x, global1.d).d.a.x, var_1.d).d.a.x), ~(countOneBits(32138u) ^ _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(global1.d.b, global1.d.b), _wgslsmith_dot_vec2_u32(global1.c.c, var_1.c.zw))), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(global1.e.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.d.c.a.x, -1000f, global1.e.a.x) * var_1.d.c.a)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1023f, global1.d.c.a.x, global1.d.c.a.x), var_1.d.c.a)))), func_4(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.d.c.a.x, global1.a.d.c.a.x, var_1.d.c.a.x, 453f), vec4<f32>(global1.e.a.x, var_1.d.c.a.x, global1.d.c.a.x, -298f)), true).c.e.x)), ~(~(var_1.c.x << (81755u % 32u))), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, global2[_wgslsmith_index_u32(28582u, 23u)]) << (global1.c.c % vec2<u32>(32u)), abs(global1.e.c)) ^ var_1.c.zx, var_1.d.a, !(!(!vec2<bool>(false, var_1.d.c.e.x)))), Struct_2(_wgslsmith_sub_vec3_i32(abs(global0[_wgslsmith_index_u32(u_input.a, 28u)]), global1.d.a), _wgslsmith_div_vec3_u32(var_1.d.b << ((var_1.d.b & var_1.c.yzz) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(global1.a.a, u_input.a, 4294967295u), var_1.c.ywx)), Struct_1(vec3<f32>(var_0.x, var_0.x, 117f), ~4294967295u ^ _wgslsmith_mult_u32(u_input.a, global1.c.b), vec2<u32>(41239u, reverseBits(34024u)), global0[_wgslsmith_index_u32(global1.e.b, 28u)], vec2<bool>(any(vec3<bool>(global1.e.e.x, false, false)), var_1.d.c.e.x)), all(vec3<bool>(true, func_7(global0[_wgslsmith_index_u32(4294967295u, 28u)], Struct_5(global1.a, 0u, var_1.d.c, var_1.d, Struct_1(global1.c.a, global2[_wgslsmith_index_u32(u_input.a, 23u)], global1.d.c.c, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.b, 23u)], 28u)], var_1.d.c.e)), global1.a, 15201i).d.d, true)), 7498u), Struct_1(global1.c.a, ~0u, global1.c.c, ~(-func_4(vec4<f32>(743f, global1.e.a.x, global1.d.c.a.x, 1580f), var_1.d.c.e.x).c.d), global1.d.c.e));
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~(var_1.d.b.yy ^ global1.a.d.c.c)), global1.d.b.yz, vec2<bool>(global1.e.e.x, false & !global1.a.d.d)), _wgslsmith_mult_i32(i32(-1i) * -(var_1.d.c.d.x & var_1.d.a.x), ~(-29461i)));
}

