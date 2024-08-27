struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1;

var<private> global2: Struct_2 = Struct_2(Struct_1(-4950i, vec3<i32>(i32(-2147483648), 35446i, 0i)), Struct_1(38188i, vec3<i32>(2147483647i, -1i, 0i)));

var<private> global3: array<Struct_3, 4>;

var<private> global4: array<vec2<i32>, 21>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> i32 {
    let var_0 = ~(~(vec4<i32>(-u_input.b, _wgslsmith_add_i32(global1.a, u_input.c), 436i, ~u_input.c) | -vec4<i32>(-15451i, -1i, global1.a, -2147483647i)));
    let var_1 = global2.b;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + 1f) - _wgslsmith_f_op_f32(step(162f, _wgslsmith_f_op_f32(f32(-1f) * -717f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2121f - _wgslsmith_f_op_f32(f32(-1f) * -938f)))));
    global0 = _wgslsmith_mod_i32(~_wgslsmith_dot_vec2_i32(-global4[_wgslsmith_index_u32(u_input.d.x, 21u)], vec2<i32>(global1.a, var_0.x)) >> (29125u % 32u), _wgslsmith_sub_i32(var_0.x, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(2147483647i, var_1.a)), global4[_wgslsmith_index_u32(u_input.a, 21u)]), select(_wgslsmith_add_vec2_i32(vec2<i32>(-76443i, var_0.x), vec2<i32>(global1.a, 16449i)), _wgslsmith_sub_vec2_i32(global4[_wgslsmith_index_u32(4294967295u, 21u)], vec2<i32>(56567i, var_1.a)), true))));
    let var_3 = 1300f;
    return ~((~global2.b.a & -39471i) & var_0.x) >> (~24640u % 32u);
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    global2 = Struct_2(Struct_1(global1.b.x, global1.b), global2.a);
    let var_0 = !arg_0.x;
    global1 = Struct_1(_wgslsmith_sub_i32(func_3(), ~global2.a.b.x), vec3<i32>(_wgslsmith_mod_i32(-reverseBits(10625i), -62234i), ~(_wgslsmith_mod_i32(global1.a, global2.a.a) | u_input.c), ~14397i));
    global1 = Struct_1(abs(11673i), vec3<i32>(i32(-1i) * -10449i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_add_i32(global2.a.b.x, 0i), 1i, 1i), 12067i), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c, global1.b.x, -12061i), vec3<i32>(12970i, 1937i, u_input.c))));
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(4042u, u_input.a), 4u)];
    return ~abs(~4294967295u);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: vec4<bool>) -> vec3<bool> {
    global0 = -2147483647i;
    let var_0 = global2.a;
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, func_2(arg_2)) & u_input.a, 4u)];
    global0 = global2.b.b.x;
    let var_2 = ~(~_wgslsmith_div_i32(global2.a.b.x, ~global2.b.b.x));
    return vec3<bool>((-firstLeadingBit(global2.a.a) != _wgslsmith_mod_i32(~var_2, _wgslsmith_sub_i32(-1i, global2.a.b.x))) && arg_0.x, true, select(~(~arg_1.x), reverseBits(arg_1.x), true) >= ~max(arg_1.x ^ u_input.a, ~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(true, true, true), select(vec3<bool>(true, !(18655u > u_input.d.x), true), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true))), select(select(!func_1(vec4<bool>(true, false, false, true), u_input.d, vec4<bool>(false, false, true, false)), select(func_1(vec4<bool>(false, true, false, false), u_input.d, vec4<bool>(true, false, true, false)), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), vec3<bool>(all(vec4<bool>(true, true, false, true)), true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec4<bool>(false, true, false, false)), 0i > global1.a), true), true));
    global0 = 38815i;
    var var_1 = Struct_2(Struct_1(global1.a, global2.b.b), Struct_1(-8010i, firstTrailingBit(global1.b)));
    let var_2 = Struct_1(-select(-global1.b.x, ~(-14757i), false), var_1.b.b);
    let var_3 = Struct_1(-10271i, firstLeadingBit(var_1.a.b));
    let var_4 = any(!var_0.xx);
    var var_5 = 2147483647i;
    var_1 = Struct_2(Struct_1(-1i, -_wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.b, -2147483647i, var_3.a), abs(var_3.b))), var_2);
    var_5 = global2.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.d.x, u_input.d.x), select(vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<u32>(31518u, u_input.d.x, u_input.d.x), !vec3<bool>(false, var_4, true))), vec3<u32>(~_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a), ~u_input.d.x, func_2(!vec4<bool>(var_0.x, true, false, true))), vec3<bool>(true, false, !any(vec3<bool>(var_0.x, var_0.x, var_4)))), -315f, ~6197u, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(543f, 763f, 903f))))))))));
}

