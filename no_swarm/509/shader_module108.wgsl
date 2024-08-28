struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, -174f, vec3<f32>(-1000f, -1000f, 1353f));

var<private> global1: array<vec4<u32>, 9>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = arg_0;
    global1 = array<vec4<u32>, 9>();
    var var_0 = true;
    global1 = array<vec4<u32>, 9>();
    var_0 = false;
    return Struct_1(any(vec4<bool>(arg_0.a, u_input.c.x > 1i, select(true, select(true, global0.a, global0.a), !arg_0.a), false)), -149f, _wgslsmith_f_op_vec3_f32(global0.c - global0.c));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    global0 = arg_1;
    let var_0 = arg_1;
    global0 = func_2(var_0);
    global1 = array<vec4<u32>, 9>();
    global0 = var_0;
    return Struct_1(!all(vec4<bool>(arg_1.c.x > -746f, true & global0.a, arg_1.a != false, false)), -495f, _wgslsmith_f_op_vec3_f32(-global0.c));
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: vec4<f32>, arg_3: vec2<f32>) -> i32 {
    let var_0 = select(!select(!(!vec3<bool>(true, global0.a, false)), vec3<bool>(false, !global0.a, !global0.a), vec3<bool>(true, true, true)), vec3<bool>(global0.a, _wgslsmith_div_i32(u_input.c.x, u_input.c.x) != u_input.c.x, global0.a), false);
    let var_1 = abs(abs(-53737i));
    global0 = func_3(u_input.c.x, func_2(Struct_1(var_0.x, _wgslsmith_f_op_f32(global0.c.x * _wgslsmith_f_op_f32(-arg_1)), vec3<f32>(arg_3.x, _wgslsmith_f_op_f32(f32(-1f) * -616f), -558f))), var_1);
    var var_2 = Struct_1(var_0.x, -246f, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1984f, 218f, arg_3.x), global0.c)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.x, 795f, 627f) * global0.c)) * vec3<f32>(-1097f, _wgslsmith_f_op_f32(-arg_2.x), arg_3.x)), vec3<f32>(arg_3.x, _wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(-671f * global0.b), var_0.x)), 583f), global0.a)));
    var var_3 = Struct_1(!(!var_2.a), 180f, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(430f, func_2(Struct_1(var_0.x, arg_3.x, vec3<f32>(905f, arg_1, arg_3.x))).c.x) - func_3(0i, func_2(Struct_1(global0.a, arg_2.x, vec3<f32>(-729f, -1260f, arg_1))), 0i).c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-118f)))) * _wgslsmith_f_op_f32(min(1123f, 1385f))), global0.b));
    return 2147483647i;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(round(-128f));
    global0 = arg_1;
    var var_1 = -1i;
    global1 = array<vec4<u32>, 9>();
    var var_2 = func_3(u_input.c.x, arg_1, u_input.c.x);
    return Struct_1(any(select(select(vec2<bool>(global0.a, true), vec2<bool>(true, global0.a), true), select(vec2<bool>(var_2.a, arg_1.a), vec2<bool>(global0.a, false), vec2<bool>(var_2.a, true)), false)) && true, _wgslsmith_f_op_f32(min(-247f, _wgslsmith_f_op_f32(645f + _wgslsmith_f_op_f32(max(-165f, 657f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1599f, arg_2, -923f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-1604f, arg_2, arg_2), vec3<f32>(var_2.b, 146f, 1327f)), vec3<f32>(308f, 1918f, var_2.c.x), arg_3 == 0u)))));
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: vec2<u32>) -> vec3<f32> {
    var var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(1i, arg_0, -37290i), vec3<i32>(-1i) * -(~(~vec3<i32>(25338i, u_input.c.x, -71688i))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.b)) - _wgslsmith_f_op_f32(ceil(-920f)))));
    var_0 = vec3<i32>(-countOneBits(~var_0.x) ^ -firstTrailingBit(0i), _wgslsmith_mult_i32(arg_0, _wgslsmith_sub_i32(~(~(-2147483647i)), 1i)), _wgslsmith_add_i32(~var_0.x, ~1i << (arg_3.x % 32u)));
    global0 = arg_2;
    let var_2 = Struct_1(arg_2.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(332f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1008f, arg_1, arg_2.b))));
    return vec3<f32>(231f, -690f, var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(select(true, any(!(!vec3<bool>(global0.a, true, false))), true), 600f, _wgslsmith_f_op_vec3_f32(func_5(u_input.c.x, _wgslsmith_f_op_f32(f32(-1f) * -160f), func_4(func_1(_wgslsmith_div_vec2_u32(vec2<u32>(2249u, u_input.a.x), vec2<u32>(56704u, 1u)), _wgslsmith_div_f32(-318f, 1161f), vec4<f32>(global0.b, global0.c.x, -1324f, -1142f), _wgslsmith_f_op_vec2_f32(-global0.c.xz)), Struct_1(true, _wgslsmith_div_f32(1741f, 907f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, 1265f, -1447f) + global0.c)), 1f, u_input.a.x), u_input.a.yz)));
    let var_0 = !select(vec3<bool>(true, true, _wgslsmith_f_op_f32(-global0.b) < _wgslsmith_div_f32(798f, global0.c.x)), vec3<bool>(false, global0.a, _wgslsmith_f_op_f32(1555f + global0.c.x) == _wgslsmith_f_op_f32(-global0.c.x)), select(!select(vec3<bool>(false, true, true), vec3<bool>(false, global0.a, global0.a), false), select(vec3<bool>(true, global0.a, global0.a), select(vec3<bool>(false, true, global0.a), vec3<bool>(false, false, global0.a), vec3<bool>(false, global0.a, global0.a)), true), vec3<bool>(true, global0.a, any(vec3<bool>(global0.a, false, global0.a)))));
    let var_1 = func_2(func_2(func_3(_wgslsmith_mod_i32(6291i, ~u_input.c.x), func_2(Struct_1(false, global0.b, global0.c)), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, 32621i, u_input.c.x, u_input.c.x)), ~vec4<i32>(-44058i, 0i, 2147483647i, u_input.c.x)))));
    let var_2 = var_1;
    let var_3 = func_3(_wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.c.x, u_input.c.x), vec2<i32>(u_input.c.x, 2147483647i), var_0.yy), u_input.c.yx), _wgslsmith_mult_i32(17843i, 1i | u_input.c.x)), u_input.c.x), func_4(reverseBits(u_input.c.x ^ ~1i), func_4(abs(i32(-1i) * -2147483647i), func_3(firstLeadingBit(-11204i), var_2, u_input.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) - -816f), ~(~1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-734f, 738f)))), countOneBits(u_input.b)), -2147483647i);
    let var_4 = var_1;
    global0 = Struct_1(!(!select(true, true, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1845f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) - _wgslsmith_f_op_f32(285f - -1005f)))) + _wgslsmith_f_op_f32(-1619f + global0.c.x)), vec3<f32>(-584f, _wgslsmith_f_op_f32(ceil(var_1.b)), 1123f));
    var var_5 = -1510f;
    var var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1391f));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, ~(u_input.a >> (vec3<u32>(u_input.a.x, 16210u, 6120u) % vec3<u32>(32u))), reverseBits(select(global1[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(max(countOneBits(0u), _wgslsmith_div_u32(u_input.b, 1u)), 9u)], false)), vec2<i32>(-_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-21135i, 2147483647i, 2147483647i), u_input.c.yyw), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), u_input.c.x));
}

