struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 9> = array<vec2<bool>, 9>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global1: Struct_1;

var<private> global2: i32 = 0i;

var<private> global3: Struct_2 = Struct_2(7091i, Struct_1(4294967295u, vec2<i32>(i32(-2147483648), 2147483647i), 57817u, vec2<bool>(true, true)), 14539u, -1i);

var<private> global4: Struct_2 = Struct_2(-9838i, Struct_1(1u, vec2<i32>(-75732i, i32(-2147483648)), 68793u, vec2<bool>(false, false)), 1u, 8514i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>) -> i32 {
    global0 = array<vec2<bool>, 9>();
    let var_0 = 521f;
    var var_1 = arg_0;
    let var_2 = select(~abs(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(global1.a, 53383u, 0u, 17626u)), firstTrailingBit(vec4<u32>(1u, global1.a, 59473u, 0u)))), ~vec4<u32>(firstLeadingBit(9641u), global4.b.a, ~abs(6382u), _wgslsmith_div_u32(global3.b.c, reverseBits(u_input.c.x))), vec4<bool>(select(any(global3.b.d), !any(vec3<bool>(global1.d.x, global4.b.d.x, false)), any(vec3<bool>(global1.d.x, true, true))), false, any(global0[_wgslsmith_index_u32(4294967295u, 9u)]), true));
    let var_3 = arg_1;
    return _wgslsmith_div_i32(-2147483647i, -2147483647i);
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    let var_0 = min(reverseBits(arg_0.a.a), _wgslsmith_clamp_i32(2147483647i, abs(func_3(-170f, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.b, -171f, arg_0.b))))), _wgslsmith_add_i32(global1.b.x, -43494i)));
    let var_1 = Struct_2(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(~u_input.a, _wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, vec3<i32>(-1i, 2147483647i, 50661i))), _wgslsmith_mod_vec3_i32(abs(u_input.a), vec3<i32>(var_0, 20174i, -51842i))), _wgslsmith_clamp_i32(_wgslsmith_div_i32(-2147483647i, -12347i), 1i, global1.b.x) << ((min(u_input.c.x, arg_0.a.b.c) | ~37909u) % 32u), ~max(30328i ^ global1.b.x, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(global3.b.b.x, global4.d, var_0)))), global3.b, u_input.b.x, abs(_wgslsmith_clamp_i32(1i, -2147483647i, global1.b.x)));
    let var_2 = vec2<bool>(all(select(!select(vec4<bool>(false, var_1.b.d.x, true, arg_0.a.b.d.x), vec4<bool>(var_1.b.d.x, true, false, global4.b.d.x), true), !(!vec4<bool>(global4.b.d.x, global1.d.x, global3.b.d.x, true)), !vec4<bool>(global4.b.d.x, global3.b.d.x, false, arg_0.a.b.d.x))), all(!vec3<bool>(global1.d.x, arg_0.b == arg_0.b, !var_1.b.d.x)));
    let var_3 = select(select(!var_2, !select(var_2, vec2<bool>(var_1.b.d.x, var_1.b.d.x), all(vec4<bool>(var_1.b.d.x, arg_0.a.b.d.x, true, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0.b)), -855f) != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.b)))), !select(global3.b.d, select(vec2<bool>(global1.d.x, true), !vec2<bool>(var_2.x, arg_0.a.b.d.x), true), !var_2.x & (1136f == arg_0.b)), !select(global0[_wgslsmith_index_u32(61587u, 9u)], vec2<bool>(global1.d.x, global3.b.d.x && global3.b.d.x), global4.b.d));
    global2 = global1.b.x;
    return Struct_1(global4.c, _wgslsmith_mod_vec2_i32(~(-select(vec2<i32>(0i, var_1.b.b.x), vec2<i32>(0i, -2147483647i), var_1.b.d.x)), vec2<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(var_0, global1.b.x), _wgslsmith_sub_i32(13259i, global3.d)), -107828i)), 0u, global4.b.d);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32, arg_3: vec3<i32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.b, _wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.b, 1231f)))))) + 468f);
    let var_1 = func_2(Struct_3(arg_0.a, var_0));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-442f, _wgslsmith_f_op_f32(-589f - var_0), var_1.d.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(select(-570f, _wgslsmith_f_op_f32(trunc(arg_0.b)), any(select(vec3<bool>(arg_0.a.b.d.x, false, arg_1.b.d.x), vec3<bool>(arg_0.a.b.d.x, var_1.d.x, global3.b.d.x), false))))), -1000f, var_0);
    let var_3 = global1.b.x;
    var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0, 1723f, var_0, -270f))))))), vec4<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-926f - _wgslsmith_f_op_f32(-var_0)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.x + var_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_0.b))))), var_2.x)));
    return select(vec3<bool>(!any(select(vec4<bool>(true, var_1.d.x, true, global1.d.x), vec4<bool>(true, true, global4.b.d.x, false), vec4<bool>(arg_1.b.d.x, var_1.d.x, true, global4.b.d.x))), all(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(11084u, 77858u, global3.b.c, 0u), firstLeadingBit(vec4<u32>(arg_1.b.a, global4.b.c, var_1.a, global4.c))), 9u)]), all(vec3<bool>(true, false, global1.d.x)) | select(global1.d.x && global4.b.d.x, func_2(arg_0).d.x, arg_0.a.b.a > arg_1.b.a)), select(vec3<bool>(arg_0.a.b.d.x, !func_2(Struct_3(arg_0.a, arg_0.b)).d.x, var_1.d.x), select(!select(vec3<bool>(global1.d.x, false, global3.b.d.x), vec3<bool>(global3.b.d.x, true, true), vec3<bool>(global4.b.d.x, var_1.d.x, false)), select(vec3<bool>(true, var_1.d.x, true), !vec3<bool>(arg_1.b.d.x, global4.b.d.x, false), all(vec3<bool>(false, global4.b.d.x, var_1.d.x))), !select(vec3<bool>(true, global1.d.x, var_1.d.x), vec3<bool>(arg_1.b.d.x, arg_1.b.d.x, false), false)), vec3<bool>(!(var_2.x > 2029f), !all(vec3<bool>(true, false, false)), any(!global4.b.d))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_mult_i32(-7234i, reverseBits(u_input.a.x))) & 0i;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -379f);
    let var_2 = _wgslsmith_mult_vec3_u32(~firstLeadingBit(select(~u_input.c, vec3<u32>(1u, global1.c, 0u), func_1(Struct_3(Struct_2(global4.d, Struct_1(62125u, vec2<i32>(-6299i, -2147483647i), global3.b.c, vec2<bool>(global4.b.d.x, global1.d.x)), 71969u, -1i), 2817f), Struct_2(global1.b.x, global3.b, global3.c, -22373i), u_input.a.x, vec3<i32>(-30277i, 32551i, global1.b.x)))), u_input.c);
    var var_3 = _wgslsmith_add_vec3_i32(-u_input.a, vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a.x, global4.d, global3.d), -vec3<i32>(global3.a, -2147483647i, global1.b.x)), min(-32719i, 0i), -2147483647i));
    var var_4 = firstLeadingBit(_wgslsmith_dot_vec2_u32(var_2.xz | countOneBits(vec2<u32>(global1.a, var_2.x)), u_input.b)) >= 1u;
    var var_5 = -568f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, global3.a, u_input.a, vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1))), var_1, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(var_1 - -1468f)) + -188f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1, -1258f, -1590f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(276f, var_1, -1868f))) * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1187f, 762f, var_1), vec3<f32>(var_1, -205f, 271f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(254f, var_1, -198f))))));
}

