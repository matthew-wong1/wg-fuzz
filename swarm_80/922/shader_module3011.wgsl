struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<i32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: f32,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(20697i), vec2<bool>(false, true), -1872f);

var<private> global1: vec3<u32> = vec3<u32>(4294967295u, 0u, 3398u);

var<private> global2: array<vec4<i32>, 9> = array<vec4<i32>, 9>(vec4<i32>(2147483647i, i32(-2147483648), 0i, 0i), vec4<i32>(-1673i, 2147483647i, 0i, 1i), vec4<i32>(-1i, 1i, -1i, -30943i), vec4<i32>(24201i, 2147483647i, 1i, -68913i), vec4<i32>(-1i, 1i, -1i, -40577i), vec4<i32>(i32(-2147483648), -7318i, 15586i, -1i), vec4<i32>(0i, 0i, 35035i, -24932i), vec4<i32>(0i, 78029i, 24724i, 0i), vec4<i32>(27664i, 33653i, -43601i, 1i));

var<private> global3: array<vec4<bool>, 20>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec4<bool>) -> f32 {
    global1 = ~_wgslsmith_mult_vec3_u32(~vec3<u32>(~global1.x, ~1u, 0u), vec3<u32>(min(global1.x, _wgslsmith_add_u32(11247u, 1u)), 1u, ~global1.x));
    global3 = array<vec4<bool>, 20>();
    let var_0 = global0.a;
    global0 = Struct_3(Struct_1(_wgslsmith_dot_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(var_0.a, global0.a.a), vec2<i32>(10836i, 2147483647i)), _wgslsmith_mod_vec2_i32(~vec2<i32>(-1i, u_input.a), -vec2<i32>(var_0.a, 1i)))), arg_2.xx, -503f);
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c, _wgslsmith_f_op_f32(105f * _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(254f + -1571f)) - vec4<f32>(_wgslsmith_f_op_f32(sign(373f)), global0.c, _wgslsmith_f_op_f32(max(612f, 763f)), _wgslsmith_f_op_f32(sign(arg_1))))));
    return global0.c;
}

fn func_2() -> Struct_4 {
    global3 = array<vec4<bool>, 20>();
    global1 = countOneBits(vec3<u32>(~_wgslsmith_add_u32(global1.x, 3871u), _wgslsmith_dot_vec3_u32(~vec3<u32>(69376u, 4294967295u, 1u), abs(vec3<u32>(0u, 920u, global1.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 64044u, 1u, 4294967295u), vec4<u32>(global1.x, 6673u, 1u, 9628u)))) | ~vec3<u32>(_wgslsmith_sub_u32(1u, 4294967295u >> (global1.x % 32u)), 40551u, ~select(22394u, global1.x, global0.b.x));
    global1 = ~firstLeadingBit(select(vec3<u32>(0u, global1.x, ~global1.x), ~min(vec3<u32>(global1.x, global1.x, 28478u), vec3<u32>(global1.x, 11317u, global1.x)), vec3<bool>(!global0.b.x, all(vec2<bool>(false, true)), global0.b.x)));
    var var_0 = Struct_4(global0.c, !(!vec2<bool>(global0.b.x, true)));
    var var_1 = !(!vec3<bool>(!var_0.b.x, true, all(vec2<bool>(global0.b.x, global0.b.x))));
    return Struct_4(_wgslsmith_f_op_f32(func_3(u_input.a, var_0.a, select(vec4<bool>(global0.a.a > global0.a.a, false, false, select(global0.b.x, true, var_0.b.x)), !(!vec4<bool>(var_1.x, false, true, global0.b.x)), true))), var_1.xz);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = func_2();
    return Struct_2(arg_3, global0.b.x, select(reverseBits(vec3<i32>(countOneBits(arg_1.a.a), 2147483647i, 12380i)), _wgslsmith_mult_vec3_i32(~(~vec3<i32>(22982i, u_input.a, global0.a.a)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, arg_1.a.a, global0.a.a), vec3<i32>(2147483647i, 0i, global0.a.a), vec3<i32>(-1i, 41635i, 2147483647i))), select(vec3<bool>(true, !arg_2.x, false), select(select(vec3<bool>(false, false, true), vec3<bool>(false, arg_0.b.x, false), vec3<bool>(true, global0.b.x, arg_1.b.x)), select(vec3<bool>(true, false, false), vec3<bool>(true, arg_0.b.x, false), vec3<bool>(true, arg_1.b.x, arg_2.x)), var_0.b.x), true)), _wgslsmith_mod_i32(39835i << (global1.x % 32u), arg_1.a.a));
}

fn func_5(arg_0: Struct_2) -> f32 {
    global3 = array<vec4<bool>, 20>();
    let var_0 = select(select(vec3<bool>(select(arg_0.b, arg_0.b, global0.b.x), true, true & any(vec4<bool>(arg_0.b, true, false, true))), !(!select(vec3<bool>(true, arg_0.b, false), vec3<bool>(arg_0.b, arg_0.b, false), arg_0.b)), false), select(vec3<bool>(arg_0.b, any(vec2<bool>(global0.b.x, true)) | all(global3[_wgslsmith_index_u32(global1.x, 20u)]), true), !vec3<bool>(all(vec3<bool>(true, true, global0.b.x)), !arg_0.b, global0.b.x == false), select(vec3<bool>(true, arg_0.b, !arg_0.b), vec3<bool>(true, any(vec3<bool>(true, false, true)), global0.b.x), any(global0.b))), select(select(select(select(vec3<bool>(false, global0.b.x, global0.b.x), vec3<bool>(false, arg_0.b, arg_0.b), global0.b.x), select(vec3<bool>(arg_0.b, arg_0.b, arg_0.b), vec3<bool>(global0.b.x, global0.b.x, global0.b.x), true), !vec3<bool>(false, arg_0.b, true)), !select(vec3<bool>(true, global0.b.x, true), vec3<bool>(false, true, global0.b.x), global0.b.x), true), select(select(!vec3<bool>(arg_0.b, global0.b.x, false), !vec3<bool>(false, global0.b.x, false), true), select(select(vec3<bool>(global0.b.x, true, true), vec3<bool>(false, true, false), false), vec3<bool>(false, global0.b.x, global0.b.x), select(vec3<bool>(global0.b.x, arg_0.b, global0.b.x), vec3<bool>(arg_0.b, arg_0.b, true), vec3<bool>(true, global0.b.x, arg_0.b))), select(select(vec3<bool>(global0.b.x, global0.b.x, global0.b.x), vec3<bool>(global0.b.x, false, global0.b.x), vec3<bool>(true, true, true)), vec3<bool>(false, global0.b.x, false), vec3<bool>(false, arg_0.b, global0.b.x))), select(vec3<bool>(all(vec2<bool>(true, false)), true, true), vec3<bool>(arg_0.b, func_2().b.x, true), all(global3[_wgslsmith_index_u32(1u, 20u)]))));
    var var_1 = Struct_1(_wgslsmith_mod_i32(~(-(arg_0.c.x & -2147483647i)), ~global0.a.a));
    var var_2 = ~32531i;
    global2 = array<vec4<i32>, 9>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1539f)) * global0.c));
}

fn func_1(arg_0: vec3<u32>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.c + -238f), _wgslsmith_f_op_f32(min(global0.c, global0.c)), global0.c, _wgslsmith_f_op_f32(-global0.c)))));
    var var_1 = _wgslsmith_f_op_f32(func_5(func_4(func_2(), Struct_3(Struct_1(global0.a.a), global0.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.c + global0.c), 496f, any(global0.b)))), vec2<bool>(global0.b.x, any(vec3<bool>(global0.b.x, global0.b.x, global0.b.x))), Struct_1(-(~u_input.a)))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-1i);
    global3 = array<vec4<bool>, 20>();
    let var_1 = ~(~_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(global1.x, 1u, global1.x)) & vec3<u32>(global1.x, global1.x, 26134u), vec3<u32>(global1.x, global1.x, global1.x) >> ((vec3<u32>(global1.x, 1u, global1.x) >> (vec3<u32>(2731u, 0u, global1.x) % vec3<u32>(32u))) % vec3<u32>(32u))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.c))))) - global0.c), _wgslsmith_f_op_f32(-global0.c));
    var var_3 = Struct_2(Struct_1(-21406i), any(!select(vec3<bool>(true, true, false), select(vec3<bool>(false, global0.b.x, true), vec3<bool>(true, global0.b.x, global0.b.x), vec3<bool>(global0.b.x, global0.b.x, global0.b.x)), select(global0.b.x, global0.b.x, global0.b.x))), _wgslsmith_add_vec3_i32(-(~(vec3<i32>(var_0.a, global0.a.a, u_input.a) & vec3<i32>(1i, -68520i, -1i))), vec3<i32>(-1i ^ _wgslsmith_mod_i32(global0.a.a, var_0.a), ~var_0.a, -1i)), 42854i);
    let var_4 = global0.b.x;
    var var_5 = true;
    var var_6 = func_1(~(~var_1));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(firstLeadingBit(vec2<i32>(var_3.a.a >> (16003u % 32u), ~(-5697i)))), vec4<i32>(_wgslsmith_mult_i32(-u_input.a, var_3.c.x), -_wgslsmith_dot_vec3_i32(~var_3.c, firstLeadingBit(var_3.c)), -18887i, 1i));
}

