struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec2<bool>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(-1i, 2147483647i, -50134i));

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

var<private> global2: f32 = 892f;

var<private> global3: array<vec4<f32>, 9> = array<vec4<f32>, 9>(vec4<f32>(570f, -859f, 159f, 852f), vec4<f32>(-685f, -1628f, -1706f, -1724f), vec4<f32>(-415f, -1067f, -962f, -316f), vec4<f32>(441f, 1000f, 1375f, 1000f), vec4<f32>(1274f, 1012f, 504f, -488f), vec4<f32>(-3022f, 411f, -1976f, 769f), vec4<f32>(218f, 657f, -324f, -775f), vec4<f32>(-761f, -1179f, -139f, 305f), vec4<f32>(-241f, -317f, 1635f, -3484f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: u32) -> Struct_1 {
    global3 = array<vec4<f32>, 9>();
    let var_0 = vec2<f32>(_wgslsmith_div_f32(-462f, -724f), -1020f);
    var var_1 = var_0.x;
    global1 = vec3<bool>(u_input.d.x == (min(~57482u, 1u) & reverseBits(max(u_input.c, 52418u))), true, true);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) - var_0.x);
    return arg_1.a;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_4 {
    let var_0 = Struct_3(select(!select(select(vec4<bool>(false, global1.x, true, global1.x), vec4<bool>(global1.x, global1.x, true, true), global1.x), select(vec4<bool>(global1.x, false, false, false), vec4<bool>(global1.x, false, true, global1.x), true), global1.x), !vec4<bool>(any(vec2<bool>(false, global1.x)), true, true, false), global1.x));
    let var_1 = vec4<f32>(1574f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.x)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - arg_1.x)), arg_1.x))), _wgslsmith_f_op_f32(trunc(532f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1547f, arg_1.x))))) * arg_1.x));
    let var_2 = 18731i;
    let var_3 = ~(~(~_wgslsmith_sub_vec3_i32(arg_0.a, ~arg_0.a)));
    let var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.x - arg_1.x)))) + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(floor(102f)))))), _wgslsmith_f_op_f32(-var_1.x)));
    return Struct_4(Struct_1(_wgslsmith_mod_vec3_i32(countOneBits(-vec3<i32>(23239i, -2147483647i, -2147483647i)), global0.a)), var_0, global1.xz, true, func_2(abs(min(select(u_input.b, u_input.d, vec2<bool>(false, var_0.a.x)), ~u_input.b)), Struct_4(arg_0, var_0, var_0.a.wx, select(any(var_0.a), true, true), func_2(max(u_input.d, vec2<u32>(u_input.c, u_input.d.x)), Struct_4(Struct_1(arg_0.a), var_0, global1.xy, false, Struct_1(vec3<i32>(u_input.a, 19244i, -61391i))), _wgslsmith_mult_u32(u_input.e.x, u_input.c))), 0u));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_4) -> Struct_1 {
    let var_0 = Struct_2(select(func_3(Struct_1(global0.a), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-883f, 840f, 969f, -1146f), _wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(5468u, 9u)])))).b.a, arg_1.b.a, !(!select(vec4<bool>(global1.x, arg_1.d, false, true), arg_1.b.a, true))));
    global1 = vec3<bool>(select(642f != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1570f, 344f)), 753f, true)), var_0.a.x, any(!vec4<bool>(arg_1.d, var_0.a.x, var_0.a.x, global1.x))), global1.x, true);
    var var_1 = u_input.d.x;
    return arg_1.e;
}

fn func_1() -> u32 {
    var var_0 = Struct_4(Struct_1(~(-_wgslsmith_sub_vec3_i32(global0.a, global0.a))), Struct_3(select(!vec4<bool>(global1.x, global1.x, false, false), select(select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(true, global1.x, false, false)), select(vec4<bool>(true, global1.x, true, global1.x), vec4<bool>(true, global1.x, false, global1.x), false), vec4<bool>(false, global1.x, true, global1.x)), vec4<bool>(global1.x, any(vec4<bool>(global1.x, false, false, true)), any(vec4<bool>(global1.x, false, true, global1.x)), global1.x))), global1.zx, true, func_4(abs(global0.a.xx), func_3(func_2(u_input.e, Struct_4(Struct_1(vec3<i32>(u_input.a, u_input.a, 0i)), Struct_3(vec4<bool>(global1.x, true, global1.x, global1.x)), vec2<bool>(true, global1.x), global1.x, Struct_1(global0.a)), u_input.d.x), vec4<f32>(-1696f, _wgslsmith_f_op_f32(f32(-1f) * -634f), _wgslsmith_f_op_f32(-1176f + 424f), -209f))));
    global3 = array<vec4<f32>, 9>();
    let var_1 = _wgslsmith_mod_vec2_i32(firstTrailingBit(-vec2<i32>(u_input.a, -2147483647i) & -var_0.a.a.xx), global0.a.xy);
    var var_2 = func_3(var_0.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(global3[_wgslsmith_index_u32(u_input.c, 9u)], global3[_wgslsmith_index_u32(u_input.d.x, 9u)], vec4<bool>(false, true, global1.x, true))))) * _wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, u_input.d.x), 9u)] * vec4<f32>(-1790f, 2192f, 1000f, -1043f))))).b.a.yxy;
    var var_3 = var_0.e;
    return ~_wgslsmith_clamp_u32(0u, ~(~(u_input.d.x << (64476u % 32u))), u_input.e.x);
}

fn func_5(arg_0: vec2<i32>, arg_1: u32) -> f32 {
    let var_0 = Struct_2(vec4<bool>(global1.x, true, select(global1.x, true, false != global1.x) && all(vec3<bool>(true, true, true)), global1.x));
    global0 = Struct_1(-countOneBits(global0.a));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -831f)), -795f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-147f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1888f)), 1f, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(step(1764f, -1383f)))), !(true | var_0.a.x))));
    var var_2 = Struct_1(-_wgslsmith_add_vec3_i32(global0.a, _wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(0i, global0.a.x, u_input.a)), vec3<i32>(global0.a.x, u_input.a, arg_0.x))));
    var var_3 = Struct_3(!(!(!select(var_0.a, var_0.a, vec4<bool>(var_0.a.x, var_0.a.x, false, global1.x)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1.x, -1007f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_5(select(~(-global0.a.zz), global0.a.xx, global1.yy), func_1()))));
    var var_1 = !(-2147483647i > _wgslsmith_dot_vec4_i32(-reverseBits(vec4<i32>(30752i, 16156i, 59702i, global0.a.x)), ~vec4<i32>(-34828i, 2147483647i, 1i, u_input.a)));
    global3 = array<vec4<f32>, 9>();
    global2 = var_0;
    var var_2 = Struct_1(firstTrailingBit(~global0.a));
    global3 = array<vec4<f32>, 9>();
    var var_3 = func_3(func_3(Struct_1(vec3<i32>(_wgslsmith_div_i32(u_input.a, var_2.a.x), -17383i, 0i)), global3[_wgslsmith_index_u32(1u, 9u)]).a, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.c, ~select(u_input.b.x, u_input.d.x, false)) & ~(~(~4294967295u)), 9u)]).b;
    global0 = Struct_1(~var_2.a & (vec3<i32>(1557i, func_4(vec2<i32>(global0.a.x, global0.a.x), Struct_4(Struct_1(global0.a), Struct_3(var_3.a), var_3.a.xw, true, Struct_1(global0.a))).a.x, -2147483647i) | vec3<i32>(u_input.a, global0.a.x, u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-490f, -642f) - vec2<f32>(-2205f, -475f))), vec2<f32>(var_0, _wgslsmith_div_f32(-291f, var_0)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 870f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -406f) - vec2<f32>(var_0, var_0)) * _wgslsmith_div_vec2_f32(vec2<f32>(var_0, var_0), vec2<f32>(-1495f, 245f)))))), -39781i, -1i, _wgslsmith_mod_vec4_u32(vec4<u32>(~4294967295u, u_input.c >> (1u % 32u), u_input.c, _wgslsmith_clamp_u32(14036u, u_input.e.x, u_input.e.x)), vec4<u32>(1u, func_1(), u_input.c, u_input.d.x)) & (_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(5130u, u_input.c, u_input.c, 44258u)), ~vec4<u32>(0u, u_input.b.x, 34630u, u_input.e.x)) << (~(~vec4<u32>(6388u, 4294967295u, 0u, 36866u)) % vec4<u32>(32u))));
}

