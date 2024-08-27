struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 11> = array<vec2<f32>, 11>(vec2<f32>(2689f, -1409f), vec2<f32>(333f, -845f), vec2<f32>(-519f, -168f), vec2<f32>(-128f, -1399f), vec2<f32>(291f, 424f), vec2<f32>(-1000f, 371f), vec2<f32>(-1588f, 903f), vec2<f32>(-844f, -213f), vec2<f32>(2131f, 1000f), vec2<f32>(-483f, -516f), vec2<f32>(-236f, 140f));

var<private> global1: array<Struct_1, 11>;

var<private> global2: vec4<f32>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>) -> f32 {
    let var_0 = -(u_input.b.x & min(u_input.b.x, 2147483647i));
    let var_1 = u_input.a.x;
    global1 = array<Struct_1, 11>();
    let var_2 = u_input.b.wx;
    global0 = array<vec2<f32>, 11>();
    return 665f;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: vec4<bool>) -> Struct_3 {
    let var_0 = Struct_3(arg_0, u_input.b.x, Struct_2(Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, arg_1.x) & vec3<u32>(0u, 65336u, 32845u), vec3<u32>(u_input.a.x, arg_1.x, u_input.a.x) ^ vec3<u32>(u_input.a.x, arg_1.x, arg_1.x))), max(u_input.b.x, reverseBits(-2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1102f)) * 770f)));
    let var_1 = Struct_2(var_0.c.a, var_0.c.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(159f, 2148f, true)), _wgslsmith_f_op_f32(-1603f * 207f))), _wgslsmith_f_op_f32(func_3(Struct_3(vec4<bool>(false, arg_0.x, true, arg_0.x), var_0.c.b, var_0.c), vec2<f32>(var_0.c.c, 531f))))));
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2345f, -348f, var_0.c.c, 1000f), vec4<f32>(global2.x, 495f, -1126f, -826f), arg_2)))))) + vec4<f32>(_wgslsmith_f_op_f32(-global2.x), var_0.c.c, -683f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.x))), _wgslsmith_div_f32(-920f, -694f))));
    let var_2 = !arg_0;
    let var_3 = global2.yxx;
    return Struct_3(select(select(vec4<bool>(true, any(vec4<bool>(var_2.x, arg_2.x, true, false)), !var_0.a.x, arg_2.x), vec4<bool>(all(vec2<bool>(var_2.x, true)), true, arg_2.x, all(arg_0)), var_2.x), select(arg_0, var_2, !any(arg_2.zxw)), !select(vec4<bool>(false, arg_2.x, var_0.a.x, false), !vec4<bool>(arg_0.x, true, false, arg_0.x), true)), min(u_input.b.x, _wgslsmith_mult_i32(~var_0.b, _wgslsmith_mult_i32(1i, var_1.b))) | _wgslsmith_clamp_i32(~(u_input.c.x | u_input.b.x), _wgslsmith_div_i32(var_0.b << (var_0.c.a.a.x % 32u), max(26145i, u_input.b.x)), _wgslsmith_sub_i32(var_1.b, var_1.b) & var_0.c.b), var_1);
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_2, arg_3: Struct_3) -> Struct_1 {
    var var_0 = -20328i;
    let var_1 = 1374f;
    let var_2 = global2.wxw;
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_3.c.c, 276f, var_1, arg_3.c.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1743f, 1380f, global2.x, arg_2.c))), vec4<f32>(_wgslsmith_f_op_f32(round(-2238f)), var_1, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(round(281f))))))));
    var_0 = -1i;
    return arg_2.a;
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = any(!select(vec3<bool>(true, any(vec4<bool>(false, false, true, false)), true), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), true));
    global0 = array<vec2<f32>, 11>();
    return arg_1;
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: f32) -> f32 {
    let var_0 = _wgslsmith_mod_vec3_u32(abs(arg_0.a), vec3<u32>(4294967295u, 0u, func_2(!func_2(vec4<bool>(true, true, true, false), u_input.a, vec4<bool>(false, false, false, false)).a, arg_0.a.xx, vec4<bool>(true, any(vec4<bool>(false, true, false, false)), all(vec2<bool>(true, false)), true)).c.a.a.x));
    global0 = array<vec2<f32>, 11>();
    return _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-138f, arg_1)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<i32>) -> i32 {
    var var_0 = _wgslsmith_mult_vec3_i32(-(~(~(vec3<i32>(arg_1.b, -1868i, arg_2.x) << (arg_0.a.a % vec3<u32>(32u))))), countOneBits(_wgslsmith_mult_vec3_i32(abs(u_input.c.xzz) << (arg_1.a.a % vec3<u32>(32u)), vec3<i32>(arg_1.b, arg_0.b, ~2147483647i))));
    let var_1 = _wgslsmith_f_op_f32(func_6(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-arg_0.c)))), func_4(arg_0.a.a.x, i32(-1i) * -2147483647i, Struct_2(Struct_1(vec3<u32>(97423u, 53842u, arg_1.a.a.x)), _wgslsmith_add_i32(u_input.b.x, arg_2.x), arg_1.c), func_2(vec4<bool>(true, true, true, true), arg_1.a.a.zz & vec2<u32>(0u, arg_0.a.a.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false))))), _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(func_3(Struct_3(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, u_input.c.x, arg_2.x, var_0.x), u_input.b), func_2(vec4<bool>(true, true, false, false), arg_0.a.a.zx, vec4<bool>(false, false, true, false)).c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1060f, -611f))))), _wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(func_3(func_2(func_2(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), false), ~arg_0.a.a.xz, vec4<bool>(false, true, false, true)).a, vec2<u32>(~u_input.a.x, _wgslsmith_mod_u32(arg_0.a.a.x, 1u)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true))), global2.yx))));
    let var_2 = vec4<bool>(true, true, true, true);
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.x - var_1)));
    let var_4 = any(!select(var_2.xw, var_2.xx, var_2.x));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -min(u_input.c.www, u_input.b.xzy << (vec3<u32>(1u, ~10190u, 31756u) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_mod_vec4_i32(vec4<i32>(~reverseBits(min(1i, -11838i)), u_input.b.x, var_0.x | ~_wgslsmith_mod_i32(23485i, var_0.x), u_input.c.x ^ -15857i), vec4<i32>(var_0.x | 15100i, firstLeadingBit(_wgslsmith_div_i32(var_0.x, var_0.x) & u_input.c.x), 1i, firstLeadingBit(func_1(Struct_2(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], -2570i, global2.x), Struct_2(global1[_wgslsmith_index_u32(1u, 11u)], -1i, -656f), u_input.c.wy))));
    global0 = array<vec2<f32>, 11>();
    var var_2 = u_input.b.x;
    let var_3 = global1[_wgslsmith_index_u32(20146u, 11u)];
    let var_4 = Struct_2(global1[_wgslsmith_index_u32(firstTrailingBit(35690u), 11u)], func_1(func_2(vec4<bool>(false, true, false, false), var_3.a.yy, vec4<bool>(true, true, true, true)).c, func_2(vec4<bool>(true, false, false, false), ~vec2<u32>(var_3.a.x, u_input.a.x), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), false)).c, var_0.zz) | 0i, -486f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1141f, var_4.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(637f * 134f) - _wgslsmith_f_op_f32(var_4.c - var_4.c)), 451f) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global2.yzz, vec3<f32>(global2.x, global2.x, 485f)) * _wgslsmith_f_op_vec3_f32(max(global2.xzx, vec3<f32>(var_4.c, var_4.c, var_4.c)))), global2.ywx))));
}

