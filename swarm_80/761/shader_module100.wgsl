struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: f32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: Struct_1,
    d: bool,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<i32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5>;

var<private> global1: array<vec3<f32>, 4> = array<vec3<f32>, 4>(vec3<f32>(-1202f, 400f, 3003f), vec3<f32>(123f, -678f, 1400f), vec3<f32>(1179f, -781f, -176f), vec3<f32>(450f, -1358f, -667f));

var<private> global2: array<vec4<bool>, 21> = array<vec4<bool>, 21>(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: u32) -> vec4<i32> {
    let var_0 = Struct_2(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(firstTrailingBit(~vec4<i32>(-84119i, 19183i, -1i, -1i)), vec4<i32>(_wgslsmith_sub_i32(-1i, 26120i), 1i, 1i, -1i)), _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(1i, 1i, 1i, 1i)), -vec4<i32>(1i, 1i, 1i, 1i))), -388f);
    global1 = array<vec3<f32>, 4>();
    global2 = array<vec4<bool>, 21>();
    global1 = array<vec3<f32>, 4>();
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c.x, 5u)] - -436f), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(~(~u_input.a), 5u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.b, 5u)], 462f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-691f, -888f), vec2<f32>(-144f, 642f))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(361f, global0[_wgslsmith_index_u32(30833u, 5u)])), vec2<f32>(global0[_wgslsmith_index_u32(~u_input.c.x, 5u)], var_0.b))));
    return var_0.a;
}

fn func_4(arg_0: bool, arg_1: Struct_4) -> f32 {
    let var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1226f, 1431f, -1000f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.c.d.x, -577f, arg_1.c.d.x), vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(arg_1.b.x, 5u)], -483f)))))), Struct_1(vec2<i32>(-32606i, arg_1.c.a.x), _wgslsmith_dot_vec3_u32(arg_1.b.ywx & select(arg_1.b.xxx, arg_1.b.xyz, vec3<bool>(arg_1.c.c.x, arg_1.d, arg_0)), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_1.b.yxw, arg_1.b.wwx, vec3<u32>(2530u, arg_1.c.b, u_input.b)), ~arg_1.b.xzz)), arg_1.c.c, vec3<f32>(arg_1.c.d.x, global0[_wgslsmith_index_u32(u_input.c.x, 5u)], _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(71143u, 5u)])))), countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(-44799i, -arg_1.a.x), vec2<i32>(func_3(vec4<bool>(false, false, false, arg_1.c.c.x), arg_1.c.c, 1u).x, ~arg_1.a.x))), _wgslsmith_div_f32(-152f, -463f));
    let var_1 = ~u_input.c;
    global1 = array<vec3<f32>, 4>();
    let var_2 = Struct_2(vec4<i32>(max(-30463i, arg_1.a.x), max(~(~var_0.c.x), -50770i), ~min(~(-12020i), var_0.b.a.x), _wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(arg_1.a, vec4<i32>(2147483647i, arg_1.a.x, 1i, -1i)), ~arg_1.a.x), var_0.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -814f));
    global0 = array<f32, 5>();
    return -575f;
}

fn func_2() -> vec2<bool> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(false, Struct_4(func_3(vec4<bool>(false, false, true, false), vec2<bool>(true, true), 1u), abs(vec4<u32>(u_input.b, u_input.b, u_input.a, 81538u)), Struct_1(vec2<i32>(5345i, -11824i), 1u, vec2<bool>(true, false), vec3<f32>(-1052f, global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)])), false))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.b, 5u)]))), -1030f);
    return !select(vec2<bool>(~u_input.a >= _wgslsmith_clamp_u32(u_input.a, u_input.b, 57560u), true), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), any(vec2<bool>(true, true)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: u32) -> Struct_3 {
    let var_0 = !func_2();
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 5u)], _wgslsmith_f_op_f32(abs(-592f))));
    global1 = array<vec3<f32>, 4>();
    var var_2 = Struct_4(vec4<i32>(1i, 1i, 1i, 1i), ~(~vec4<u32>(arg_2 >> (54729u % 32u), ~0u, 1u, arg_2)), Struct_1(-(~vec2<i32>(2147483647i, 35320i)) & -select(vec2<i32>(2147483647i, -13743i), vec2<i32>(-2147483647i, -2712i), vec2<bool>(true, arg_1.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(0u), _wgslsmith_clamp_u32(48093u, arg_0.x, 4294967295u), abs(arg_0.x)), firstLeadingBit(vec3<u32>(arg_2, u_input.b, 1873u))), vec2<bool>(true, true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(arg_0.x, 4u)]) - global1[_wgslsmith_index_u32(~4294967295u, 4u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1868f, global0[_wgslsmith_index_u32(u_input.c.x, 5u)], global0[_wgslsmith_index_u32(85221u, 5u)])))), var_0.x);
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.c.d.xy));
    return Struct_3(abs(var_2.c.b), func_3(select(vec4<bool>(true, !var_2.d, all(arg_1), any(vec4<bool>(var_2.c.c.x, var_0.x, arg_1.x, true))), vec4<bool>(true, true, all(vec3<bool>(false, arg_1.x, true)), true), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(min(var_2.b.x, 16732u), 1u), 21u)]), select(!func_2(), !select(vec2<bool>(false, var_2.d), var_0, arg_1.x), any(select(vec2<bool>(false, var_0.x), vec2<bool>(false, true), vec2<bool>(false, var_0.x)))), u_input.c.x).x, _wgslsmith_mod_vec3_i32(select(abs(var_2.a.zxw) | var_2.a.zwy, ~(~vec3<i32>(-1i, -10019i, 43351i)), var_2.c.c.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.c.a.x, -51554i, 2147483647i), var_2.a.xxy, vec3<i32>(8485i, -2147483647i, 40993i)) << (reverseBits(reverseBits(vec3<u32>(16333u, u_input.b, var_2.b.x))) % vec3<u32>(32u))), -(~func_3(!global2[_wgslsmith_index_u32(11723u, 21u)], !var_2.c.c, abs(u_input.b)).x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.d.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1166f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~(~(~u_input.c << (_wgslsmith_clamp_vec2_u32(u_input.c, u_input.c, u_input.c) % vec2<u32>(32u)))), vec3<bool>(all(vec3<bool>(true, true, true)) | any(vec4<bool>(true, false, true, false)), true, !any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))), firstTrailingBit(1u));
    let var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(abs(global1[_wgslsmith_index_u32(18333u, 4u)])), Struct_1(-var_0.c.yx, _wgslsmith_sub_u32(~(u_input.a | u_input.b), abs(min(65890u, var_0.a))), vec2<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.e, global0[_wgslsmith_index_u32(var_0.a, 5u)], -382f)))))), -abs(func_3(vec4<bool>(false, false, true, false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), u_input.b).yx), 1343f);
    var var_2 = Struct_2(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b, var_1.c.x, 2147483647i, var_1.c.x << (var_1.b.b % 32u)), abs(vec4<i32>(_wgslsmith_mult_i32(0i, var_0.c.x), 42196i, 34378i | var_1.b.a.x, var_0.b))), _wgslsmith_f_op_f32(-1012f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e)) - global0[_wgslsmith_index_u32(~u_input.b, 5u)])));
    var var_3 = Struct_2(select(-((var_2.a ^ var_2.a) | var_2.a), vec4<i32>(-1i, _wgslsmith_add_i32(var_2.a.x, _wgslsmith_mod_i32(-1i, 17619i)), var_2.a.x, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(2147483647i, 11031i)), ~var_0.c.zx)), select(vec4<bool>(all(vec3<bool>(true, var_1.b.c.x, var_1.b.c.x)), var_0.e > var_1.b.d.x, all(var_1.b.c), true), select(global2[_wgslsmith_index_u32(1u, 21u)], select(vec4<bool>(true, false, false, var_1.b.c.x), global2[_wgslsmith_index_u32(u_input.a, 21u)], global2[_wgslsmith_index_u32(0u, 21u)]), vec4<bool>(true, true, var_1.b.c.x, var_1.b.c.x)), all(vec3<bool>(var_1.b.c.x, false, var_1.b.c.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1293f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    var var_4 = Struct_3(~abs(reverseBits(4294967295u)), var_0.b, _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(var_2.a.xwz, var_2.a.zyw), vec3<i32>(12060i, var_3.a.x, _wgslsmith_div_i32(countOneBits(var_1.b.a.x), var_2.a.x))), select(firstTrailingBit(19722i), var_2.a.x, !(!(!var_1.b.c.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(!var_1.b.c.x, Struct_4(vec4<i32>(-2147483647i, var_2.a.x, 0i, var_3.a.x), vec4<u32>(u_input.b, var_1.b.b, 31492u, u_input.c.x), var_1.b, false)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(var_1.c.x & var_1.c.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.a.x, 14785i, 1i, var_3.a.x), vec4<i32>(21822i, var_1.c.x, 0i, var_2.a.x))) >> (4294967295u % 32u), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(819f, var_3.b)) * var_1.a.x), _wgslsmith_div_f32(var_2.b, var_0.e), var_0.e), _wgslsmith_dot_vec4_i32(var_2.a, var_2.a), var_0.c.x, ~firstLeadingBit(vec3<u32>(max(var_4.a, 4294967295u), 4958u, ~73865u)));
}

