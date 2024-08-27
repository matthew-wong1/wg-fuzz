struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: bool,
    d: Struct_2,
    e: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: f32,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(-297f, 1000f, -1000f), true);

var<private> global1: array<Struct_4, 5>;

var<private> global2: Struct_1 = Struct_1(vec3<f32>(1000f, 648f, -746f), false);

var<private> global3: array<vec4<i32>, 7> = array<vec4<i32>, 7>(vec4<i32>(1i, 1i, -5721i, 14416i), vec4<i32>(i32(-2147483648), 14971i, 1i, -2807i), vec4<i32>(-21070i, i32(-2147483648), -9949i, i32(-2147483648)), vec4<i32>(-1i, -1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(1i, -8937i, 1i, i32(-2147483648)), vec4<i32>(0i, 6570i, 2147483647i, i32(-2147483648)), vec4<i32>(-1i, 5597i, 3109i, 0i));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: f32, arg_3: vec2<f32>) -> vec2<u32> {
    global3 = array<vec4<i32>, 7>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(874f - 526f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_1 = ~_wgslsmith_mod_u32(~9306u, 4294967295u);
    let var_2 = false;
    let var_3 = Struct_3(arg_0.a, vec3<i32>(23215i, _wgslsmith_clamp_i32(~firstTrailingBit(26506i), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-7063i, arg_1, 4814i), vec3<i32>(arg_0.e.x, u_input.d.x, arg_1)), vec3<i32>(16320i, 260i, -5206i)), 15458i), 19592i), all(!(!select(vec4<bool>(false, var_2, var_2, true), vec4<bool>(var_2, false, true, arg_0.c), vec4<bool>(var_2, true, false, true)))), Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(266f * global2.a.x), -794f, _wgslsmith_div_f32(-461f, global0.a.x)), global0.b), arg_0.d.b, firstTrailingBit(2147483647i << (min(var_1, 1u) % 32u)), arg_0.a.a), vec2<i32>(firstLeadingBit(~_wgslsmith_sub_i32(-14947i, arg_0.b.x)), 2147483647i));
    return ~firstLeadingBit(~min(arg_0.a.b.wx, u_input.e >> (arg_0.d.b.zx % vec2<u32>(32u))));
}

fn func_2(arg_0: Struct_1) -> Struct_5 {
    var var_0 = Struct_5(_wgslsmith_mult_vec2_u32(~func_3(Struct_3(Struct_2(arg_0, vec4<u32>(u_input.e.x, u_input.b, u_input.b, 54641u), u_input.a.x, Struct_1(global0.a, true)), vec3<i32>(u_input.d.x, 1i, 0i), global0.b, Struct_2(Struct_1(vec3<f32>(733f, global0.a.x, 1464f), global2.b), vec4<u32>(u_input.b, u_input.e.x, u_input.c, u_input.e.x), u_input.a.x, Struct_1(global0.a, false)), u_input.a.xz), ~63549i, _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, 1094f))), vec2<u32>(99220u, 0u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(753f * -215f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.a.x * global2.a.x), _wgslsmith_f_op_f32(1470f + arg_0.a.x))))));
    return Struct_5(vec2<u32>(abs(0u), var_0.a.x));
}

fn func_4(arg_0: Struct_5) -> Struct_1 {
    var var_0 = true;
    var var_1 = 0i;
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global0.a)) + global2.a))), (!global2.b & any(vec3<bool>(true, true, true))) & global2.b);
    var var_2 = global3[_wgslsmith_index_u32(17752u, 7u)];
    var var_3 = !vec2<bool>(true, !global2.b);
    return Struct_1(global2.a, false);
}

fn func_1() -> f32 {
    var var_0 = Struct_5(u_input.e);
    let var_1 = vec4<bool>(false, global0.b, any(!vec2<bool>(!global0.b, !global2.b)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.a.x - global0.a.x))) >= global0.a.x);
    let var_2 = global2.a;
    let var_3 = u_input.a.zx;
    global0 = func_4(func_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.a.x, 651f, var_2.x)))), true)));
    return _wgslsmith_f_op_f32(floor(global2.a.x));
}

fn func_5(arg_0: f32, arg_1: u32) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(14906u, 5u)];
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-235f, _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(global2.a.x * -447f)))), global2.b), min(_wgslsmith_div_vec4_u32(min(vec4<u32>(25730u, u_input.e.x, 1u, 33507u), ~vec4<u32>(15787u, 1u, arg_1, arg_1)), ~vec4<u32>(75447u, u_input.e.x, u_input.c, arg_1)), vec4<u32>(~(~56013u), _wgslsmith_clamp_u32(u_input.e.x, 96u, func_2(Struct_1(global0.a, false)).a.x), ~1u, 4294967295u)), u_input.d.x | -(~var_0.a), Struct_1(global2.a, _wgslsmith_dot_vec2_i32(u_input.a.yy, u_input.a.xx) <= 2147483647i));
    var var_2 = func_2(var_1.a);
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global2.a), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(617f, 745f, 2218f)))))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-311f, global0.a.x, var_1.d.a.x)), _wgslsmith_div_vec3_f32(vec3<f32>(386f, -322f, -1080f), var_1.d.a), all(vec4<bool>(false, var_1.a.b, global2.b, global0.b))))))), true);
    let var_3 = 4294967295u;
    return 1048f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1096f;
    var var_1 = vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(579f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-917f))))), global2.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(func_1()), 12168u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.a.x, global0.a.x))))));
    let var_2 = var_1.zw;
    global3 = array<vec4<i32>, 7>();
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~firstLeadingBit(vec2<u32>(u_input.c, u_input.c)), vec2<u32>(~u_input.e.x, u_input.b)), vec2<u32>(1u, u_input.e.x)), func_2(func_4(func_2(Struct_1(global2.a, false)))).a.x), 7u)];
    global2 = func_4(func_2(func_4(func_2(func_4(Struct_5(u_input.e))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(2147483647i, abs(-1i)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-global0.a.x), global2.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(509f)))), _wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_add_vec4_u32(~(~_wgslsmith_div_vec4_u32(vec4<u32>(9747u, u_input.e.x, 1u, u_input.e.x), vec4<u32>(u_input.b, u_input.e.x, u_input.e.x, u_input.e.x))), vec4<u32>(0u, _wgslsmith_sub_u32(~49811u, u_input.e.x), firstTrailingBit(~u_input.e.x), 60045u)));
}

