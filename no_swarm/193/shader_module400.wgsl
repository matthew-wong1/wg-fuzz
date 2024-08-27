struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: bool,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<i32>(i32(-2147483648), 1i), 3065u, Struct_1(vec3<f32>(-1158f, 305f, -585f)));

var<private> global1: array<vec4<bool>, 19> = array<vec4<bool>, 19>(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true));

var<private> global2: array<vec3<i32>, 6>;

var<private> global3: f32;

var<private> global4: array<vec4<f32>, 23>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: bool) -> bool {
    let var_0 = 35243i;
    global1 = array<vec4<bool>, 19>();
    global1 = array<vec4<bool>, 19>();
    var var_1 = 0u;
    global2 = array<vec3<i32>, 6>();
    return any(!arg_1.b.yz);
}

fn func_3(arg_0: f32, arg_1: vec3<f32>) -> i32 {
    global2 = array<vec3<i32>, 6>();
    global1 = array<vec4<bool>, 19>();
    global2 = array<vec3<i32>, 6>();
    let var_0 = _wgslsmith_mult_i32(abs(11582i), 11217i);
    global2 = array<vec3<i32>, 6>();
    return ~30988i;
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: i32) -> vec4<f32> {
    let var_0 = ~global0.b;
    var var_1 = true;
    let var_2 = Struct_2(vec2<i32>(_wgslsmith_div_i32(global0.a.x, countOneBits(global0.a.x)), ~u_input.b & -(~2147483647i)), 4294967295u, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.a.x, arg_0, 225f) + vec3<f32>(358f, arg_0, 1023f))))));
    var var_3 = var_2.c;
    global0 = Struct_2(vec2<i32>(_wgslsmith_mod_i32(abs(firstTrailingBit(var_2.a.x)), -countOneBits(1i)), min(global0.a.x, -2147483647i)), 1u, var_2.c);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global4[_wgslsmith_index_u32(49433u, 23u)] * global4[_wgslsmith_index_u32(0u, 23u)]) - _wgslsmith_f_op_vec4_f32(global4[_wgslsmith_index_u32(22864u, 23u)] * vec4<f32>(-779f, 1720f, var_3.a.x, -2255f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c.a.x, _wgslsmith_f_op_f32(f32(-1f) * -784f), _wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(-var_3.a.x)) - vec4<f32>(606f, -984f, var_3.a.x, _wgslsmith_f_op_f32(floor(1000f))))));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec4<f32>) -> Struct_3 {
    let var_0 = select(arg_0.xwx, arg_0.yww, false);
    global2 = array<vec3<i32>, 6>();
    let var_1 = var_0.yy;
    global3 = _wgslsmith_f_op_f32(-global0.c.a.x);
    let var_2 = Struct_2(vec2<i32>(global0.a.x, _wgslsmith_div_i32(abs(_wgslsmith_sub_i32(u_input.b, -48202i)), i32(-1i) * -global0.a.x)), global0.b, global0.c);
    return Struct_3(global0.c, var_0, true, ~(vec3<u32>(global0.b, _wgslsmith_sub_u32(var_2.b, 3447u), 0u) << (select(vec3<u32>(var_2.b, 31036u, 65832u) << (vec3<u32>(var_2.b, 4294967295u, global0.b) % vec3<u32>(32u)), vec3<u32>(var_2.b, global0.b, 43685u), var_0) % vec3<u32>(32u))), vec4<u32>(59628u, global0.b, 4294967295u, 11686u | ~var_2.b));
}

fn func_1(arg_0: u32) -> Struct_3 {
    global1 = array<vec4<bool>, 19>();
    global4 = array<vec4<f32>, 23>();
    global4 = array<vec4<f32>, 23>();
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.a.x * global0.c.a.x) - -1064f);
    global1 = array<vec4<bool>, 19>();
    return func_5(vec4<bool>(false, true, true, func_2(vec4<bool>(false, false, true, true), Struct_3(Struct_1(global0.c.a), vec3<bool>(true, true, true), true, vec3<u32>(1u, global0.b, 26522u), vec4<u32>(arg_0, global0.b, global0.b, 15850u)), arg_0 >= 57317u) != true), _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.a.x - -787f) - _wgslsmith_div_f32(-1165f, 1411f))), vec3<i32>(1i, 14387i, 1i) | _wgslsmith_mult_vec3_i32(-vec3<i32>(global0.a.x, 10962i, -1i), -vec3<i32>(u_input.c, u_input.b, u_input.c)), ~func_3(_wgslsmith_f_op_f32(-global0.c.a.x), _wgslsmith_f_op_vec3_f32(-global0.c.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(global0.c, vec3<bool>(global0.b > min(~global0.b, ~global0.b), all(vec4<bool>(true, true, true, true)), true), false, vec3<u32>(~min(global0.b, global0.b), 4294967295u, ~min(1u, 28414u)), ~_wgslsmith_clamp_vec4_u32(reverseBits(max(vec4<u32>(global0.b, global0.b, global0.b, global0.b), vec4<u32>(12718u, 4294967295u, 19678u, 152443u))), select(~vec4<u32>(73895u, global0.b, global0.b, 0u), abs(vec4<u32>(global0.b, global0.b, global0.b, global0.b)), vec4<bool>(true, true, true, true)), ~(vec4<u32>(0u, 13223u, global0.b, global0.b) >> (vec4<u32>(global0.b, 1u, global0.b, 4294967295u) % vec4<u32>(32u)))));
    var var_1 = -reverseBits(vec3<i32>(abs(42820i), -83285i, u_input.c));
    global2 = array<vec3<i32>, 6>();
    var var_2 = func_1(var_0.e.x);
    var var_3 = func_1(_wgslsmith_sub_u32(~global0.b, global0.b)).a;
    var_3 = var_2.a;
    var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(select(func_1(_wgslsmith_sub_u32(var_0.d.x | 0u, var_2.d.x)).a.a, _wgslsmith_f_op_vec3_f32(var_0.a.a - global0.c.a), var_2.b)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~func_1(4294967295u).e)), ~_wgslsmith_mod_i32(countOneBits(5899i), -8501i));
}

