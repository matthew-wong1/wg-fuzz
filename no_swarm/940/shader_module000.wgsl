struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec3<i32>,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12>;

var<private> global1: u32;

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(vec2<bool>(false, true), false, vec3<i32>(-59275i, -29454i, 9518i), 1960f, 471f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: bool) -> f32 {
    global1 = reverseBits(~4294967295u);
    var var_0 = _wgslsmith_f_op_f32(round(global2.e));
    let var_1 = arg_1.e;
    var var_2 = arg_1;
    var var_3 = arg_1;
    return arg_1.d;
}

fn func_3() -> bool {
    let var_0 = max(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(global3.c, global2.c >> (select(vec3<u32>(u_input.a.x, u_input.a.x, 1u), vec3<u32>(4294967295u, 46918u, 1u), vec3<bool>(global2.a.x, true, global0[_wgslsmith_index_u32(1u, 12u)])) % vec3<u32>(32u)), ~_wgslsmith_div_vec3_i32(global3.c, global2.c)), min(~vec3<i32>(1i, -4543i, 1i) ^ min(vec3<i32>(27793i, global3.c.x, global2.c.x), vec3<i32>(global3.c.x, -2147483647i, -1i)), _wgslsmith_div_vec3_i32(global2.c, firstTrailingBit(vec3<i32>(-16988i, -58026i, global2.c.x))))), max(global2.c, vec3<i32>(-_wgslsmith_add_i32(global3.c.x, global2.c.x), _wgslsmith_clamp_i32(abs(56195i), global3.c.x, -21778i << (u_input.a.x % 32u)), min(1i, _wgslsmith_mult_i32(0i, global3.c.x)))));
    var var_1 = _wgslsmith_mult_vec2_u32(u_input.a.yy, u_input.a.xz);
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global3.e, global3.e))) - global2.e), 941f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.e)))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.d, 359f, global2.e)), vec3<f32>(global2.e, global2.d, global2.e))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.e, -158f, global3.d))), !global2.a.x)))));
    global3 = Struct_1(!vec2<bool>(true, true || (global0[_wgslsmith_index_u32(55671u, 12u)] & global0[_wgslsmith_index_u32(u_input.a.x, 12u)])), global2.a.x, ~(~select(_wgslsmith_mult_vec3_i32(global3.c, global3.c), vec3<i32>(global3.c.x, global3.c.x, var_0.x) | vec3<i32>(0i, 2147483647i, var_0.x), select(vec3<bool>(global3.a.x, false, global0[_wgslsmith_index_u32(98500u, 12u)]), vec3<bool>(global2.a.x, global2.a.x, global0[_wgslsmith_index_u32(var_1.x, 12u)]), vec3<bool>(global3.a.x, global3.a.x, global2.b)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.x, global3.d, true)) * global2.e), global3.e, false || (global3.a.x || global0[_wgslsmith_index_u32(~u_input.a.x, 12u)]))), global3.d);
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1095f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(979f * -211f), _wgslsmith_f_op_f32(round(var_2.x))))), false)), _wgslsmith_f_op_f32(f32(-1f) * -318f)));
    return any(global3.a);
}

fn func_1() -> Struct_1 {
    global1 = 0u;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(435f - global3.e), _wgslsmith_f_op_f32(max(-189f, -2575f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.d + global3.d), _wgslsmith_f_op_f32(min(722f, global3.d))))) < _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(792f, -287f) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2.e, 518f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global3.e, -279f)))))), Struct_1(vec2<bool>(true, true), false, vec3<i32>(1i, -27321i, global3.c.x), 2198f, _wgslsmith_f_op_f32(f32(-1f) * -1387f)), !any(select(global3.a, vec2<bool>(global3.a.x, true), false))));
    var var_1 = ~_wgslsmith_div_u32(108974u, u_input.a.x);
    var var_2 = select(vec4<bool>(2147483647i > (i32(-1i) * -global3.c.x), func_3(), global3.b, all(vec3<bool>(global3.a.x, global3.c.x <= global2.c.x, global2.b))), !(!vec4<bool>(select(true, var_0, var_0), true, global3.b, u_input.a.x != 1u)), global3.b);
    let var_3 = u_input.a.wy;
    return Struct_1(vec2<bool>(true && all(!var_2.zwz), !(!var_2.x)), !global2.b, vec3<i32>(global2.c.x, -1i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global3.c.x, -1i), global3.c.yx) & (vec2<i32>(0i, -2147483647i) & vec2<i32>(global3.c.x, 0i)), (global2.c.zx | global2.c.zz) >> (abs(u_input.a.xx) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(f32(-1f) * -390f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-215f + _wgslsmith_f_op_f32(433f + global2.d)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.d, _wgslsmith_f_op_f32(546f - global3.e))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    global2 = func_1();
    let var_0 = Struct_1(!global3.a, !global3.b, vec3<i32>(0i, _wgslsmith_mult_i32(global3.c.x, ~(global2.c.x | 1i)), global2.c.x), -293f, -114f);
    var var_1 = var_0;
    global3 = var_0;
    var var_2 = ~_wgslsmith_dot_vec4_u32(~u_input.a, u_input.a) << (29178u % 32u);
    var_1 = func_1();
    var var_3 = _wgslsmith_f_op_f32(2223f + -238f);
    var_2 = 21515u;
    let x = u_input.a;
    s_output = StorageBuffer(global2.e);
}

