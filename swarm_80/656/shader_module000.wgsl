struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: u32,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<i32, 17> = array<i32, 17>(-15603i, -25675i, 2147483647i, 2147483647i, 29163i, 72331i, -27860i, 13270i, -71861i, 21169i, 1i, 44985i, 5966i, 0i, i32(-2147483648), 1i, -12613i);

var<private> global2: array<vec4<f32>, 22>;

var<private> global3: vec2<bool>;

var<private> global4: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> vec2<u32> {
    global0 = !(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.b.b.x * arg_1.b.x), arg_2.b.b.x, false)))) <= -1000f);
    var var_0 = arg_2.b.d.x;
    var var_1 = Struct_1(abs(abs(firstLeadingBit(reverseBits(vec4<u32>(50961u, arg_1.a.x, arg_1.a.x, 38182u))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(arg_2.b.b, arg_1.b), vec4<f32>(arg_2.b.b.x, arg_2.b.b.x, 1696f, -1000f)))), _wgslsmith_mult_u32(arg_0.b.c, _wgslsmith_mod_u32(~u_input.d, _wgslsmith_add_u32(18540u, _wgslsmith_clamp_u32(arg_0.b.c, arg_1.a.x, arg_0.b.c)))), vec2<bool>(!(!any(vec3<bool>(true, false, arg_1.d.x))), (-u_input.b.x == 21140i) | !global3.x), ~(~arg_0.b.e));
    let var_2 = arg_1;
    global0 = arg_1.d.x;
    return arg_0.b.a.yw;
}

fn func_2(arg_0: u32, arg_1: f32) -> u32 {
    return _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(select(~(~vec2<u32>(arg_0, arg_0)), _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(77834u, u_input.d)), func_3(Struct_2(global3.x, Struct_1(vec4<u32>(4294967295u, u_input.d, arg_0, 19106u), global2[_wgslsmith_index_u32(u_input.d, 22u)], 0u, vec2<bool>(true, global3.x), u_input.a.xy)), Struct_1(vec4<u32>(u_input.d, arg_0, arg_0, arg_0), vec4<f32>(arg_1, arg_1, -149f, -282f), 5201u, vec2<bool>(global3.x, false), vec2<i32>(u_input.b.x, -2147483647i)), Struct_2(global3.x, Struct_1(vec4<u32>(arg_0, 37146u, 4294967295u, 1u), global2[_wgslsmith_index_u32(0u, 22u)], 1u, vec2<bool>(global3.x, false), u_input.a.yy)))), false), ~_wgslsmith_mult_vec2_u32(min(vec2<u32>(48521u, arg_0), vec2<u32>(u_input.d, 4294967295u)), vec2<u32>(u_input.d, 43587u))), abs(vec2<u32>(arg_0, 64124u) >> (~vec2<u32>(arg_0, arg_0) % vec2<u32>(32u))) | vec2<u32>(select(abs(u_input.d), u_input.d, all(vec2<bool>(false, global3.x))), u_input.d));
}

fn func_1() -> vec2<i32> {
    let var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(44033u, ~_wgslsmith_div_u32(u_input.d, u_input.d)), u_input.d & abs(~u_input.d), ~func_2(u_input.d, -205f) & 48550u), ~_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), vec4<u32>(65156u, u_input.d, u_input.d, 17540u)), 82550u, ~0u), ~(~vec3<u32>(u_input.d, u_input.d, u_input.d))));
    var var_1 = _wgslsmith_mod_u32(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, 1u, 12626u), 4294967295u), 1u);
    let var_2 = countOneBits(_wgslsmith_div_vec3_u32(var_0, _wgslsmith_clamp_vec3_u32(var_0, countOneBits(select(var_0, vec3<u32>(var_0.x, 20172u, 25477u), true)), min(vec3<u32>(var_0.x, u_input.d, u_input.d), vec3<u32>(0u, u_input.d, 4294967295u)))));
    global3 = !(!(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(global3.x, global3.x), vec2<bool>(global3.x, false)), select(vec2<bool>(global3.x, global3.x), vec2<bool>(global3.x, global3.x), false))));
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1580f, 683f)), 275f), _wgslsmith_f_op_f32(max(353f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1359f))))))));
    return vec2<i32>(2147483647i, 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mod_vec4_u32(~_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.d, 63134u), vec4<u32>(7067u, u_input.d, 1u, u_input.d)), ~vec4<u32>(4294967295u, u_input.d, 0u, u_input.d)), ~vec4<u32>(~u_input.d, ~1u, reverseBits(u_input.d), _wgslsmith_mod_u32(u_input.d, u_input.d))), _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(~(u_input.d << (0u % 32u)), 22u)]), min(u_input.d ^ u_input.d, _wgslsmith_add_u32(u_input.d, ~0u)), !vec2<bool>(!global3.x, false), _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(func_1(), vec2<i32>(5810i, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.d, u_input.d)), 17u)]), u_input.a.xy >> (~vec2<u32>(u_input.d, u_input.d) % vec2<u32>(32u))), ~_wgslsmith_add_vec2_i32(u_input.a.xz, u_input.a.xy) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, 1i), -vec2<i32>(-1i, u_input.c.x))));
    global3 = vec2<bool>(true, true);
    let var_1 = all(vec4<bool>(!all(!vec4<bool>(false, global3.x, var_0.d.x, false)), all(vec3<bool>(var_0.c == 24524u, global3.x, all(vec4<bool>(false, var_0.d.x, global3.x, global3.x)))), global3.x, var_0.d.x));
    let var_2 = -_wgslsmith_sub_vec3_i32(vec3<i32>(1i, ~_wgslsmith_clamp_i32(-3408i, u_input.a.x, u_input.a.x), _wgslsmith_mult_i32(u_input.b.x, 1i)), u_input.a);
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(global2[_wgslsmith_index_u32(1u, 22u)]))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.b.x, 1551f, var_0.b.x))))), 0u, !(!var_0.d), -(abs(vec2<i32>(global1[_wgslsmith_index_u32(u_input.d, 17u)], u_input.c.x) >> (var_0.a.yw % vec2<u32>(32u))) >> ((var_0.a.yw ^ vec2<u32>(var_0.a.x, 1u)) % vec2<u32>(32u))));
    var var_3 = _wgslsmith_sub_vec3_u32(~var_0.a.yxw, ~_wgslsmith_mod_vec3_u32(select(abs(vec3<u32>(u_input.d, u_input.d, u_input.d)), ~var_0.a.xww, all(vec4<bool>(true, true, var_1, var_1))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.c, var_0.a.x, 0u), vec3<u32>(var_0.a.x, 0u, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(var_0.e.x, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, var_2.x, -55929i), vec3<i32>(u_input.b.x, 0i, u_input.c.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, var_0.e.x, 1i), vec3<i32>(-2147483647i, -1i, var_0.e.x))))), var_0.b.wxw);
}

