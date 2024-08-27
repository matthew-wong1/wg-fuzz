struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5> = array<f32, 5>(327f, 1000f, -875f, 1224f, -607f);

var<private> global1: vec3<f32> = vec3<f32>(639f, 906f, 169f);

var<private> global2: Struct_2;

var<private> global3: f32;

var<private> global4: array<vec2<bool>, 14> = array<vec2<bool>, 14>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> bool {
    global3 = _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(global2.a.x ^ ~countOneBits(arg_2.d.x), 5u)], _wgslsmith_div_f32(-1000f, global1.x)));
    global4 = array<vec2<bool>, 14>();
    var var_0 = min(firstTrailingBit(2147483647i), _wgslsmith_add_i32(0i, -(~_wgslsmith_clamp_i32(u_input.b.x, arg_0.b.x, 0i))));
    let var_1 = u_input.a.x;
    var var_2 = global2.c.xxz;
    return select(true, arg_1, !all(vec2<bool>(all(vec3<bool>(true, arg_1, true)), !arg_1)));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> vec3<f32> {
    global4 = array<vec2<bool>, 14>();
    let var_0 = Struct_2(~select(abs(vec2<u32>(1u, u_input.a.x)), ~global2.a, !func_3(Struct_1(u_input.a, vec3<i32>(u_input.c.x, -56964i, arg_0.b.x), arg_0.d.wy, arg_0.d), true, arg_0)), abs(_wgslsmith_mult_vec2_i32(u_input.b.yx, select(_wgslsmith_mod_vec2_i32(arg_0.b.xy, arg_0.b.zy), vec2<i32>(1i, -3499i), true || arg_2))), _wgslsmith_f_op_vec4_f32(floor(global2.c)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(global2.c.wyy + vec3<f32>(arg_1, global2.d.x, -867f)), _wgslsmith_f_op_vec3_f32(-global2.d))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1374f, -565f, global0[_wgslsmith_index_u32(arg_0.d.x, 5u)]) * vec3<f32>(610f, -995f, global2.c.x))))));
    var var_1 = arg_2;
    global4 = array<vec2<bool>, 14>();
    global0 = array<f32, 5>();
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(1520f + -1584f), global2.d.x, _wgslsmith_f_op_f32(round(arg_1)))))))));
}

fn func_1() -> u32 {
    global4 = array<vec2<bool>, 14>();
    var var_0 = Struct_2(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 1u), ~_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 37515u), vec2<u32>(0u, 34575u))), vec2<i32>(u_input.c.x, -2147483647i), global2.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-882f, 136f, -896f), vec3<f32>(global2.d.x, global2.c.x, -1817f), vec3<bool>(true, false, true))) + vec3<f32>(global0[_wgslsmith_index_u32(64421u, 5u)], global1.x, global0[_wgslsmith_index_u32(u_input.d, 5u)])) + _wgslsmith_f_op_vec3_f32(func_2(Struct_1(u_input.a, u_input.b, global2.a, vec4<u32>(1u, u_input.d, global2.a.x, u_input.d)), _wgslsmith_div_f32(global2.d.x, 362f), false))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(651f, global2.d.x, -122f))))));
    global4 = array<vec2<bool>, 14>();
    global0 = array<f32, 5>();
    global3 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(512f + global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(var_0.a.x, global2.a.x), ~u_input.d), 5u)]), -140f), global1.x);
    return 163u;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(firstLeadingBit(~func_1()), 5u)], global2.a, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, ~global2.a.x), 5u)], ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(global2.a.x, 1u), select(vec2<u32>(19492u, 0u), vec2<u32>(global2.a.x, 52848u), false))));
}

