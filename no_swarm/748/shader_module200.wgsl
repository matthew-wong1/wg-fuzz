struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: f32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec2<i32>, 5>;

var<private> global2: array<vec3<i32>, 9> = array<vec3<i32>, 9>(vec3<i32>(32012i, -17351i, 1i), vec3<i32>(-43590i, 0i, -47172i), vec3<i32>(1i, -1i, -27174i), vec3<i32>(-15001i, -1i, 58106i), vec3<i32>(1i, 17667i, 35084i), vec3<i32>(i32(-2147483648), 6933i, -7396i), vec3<i32>(2147483647i, 37280i, i32(-2147483648)), vec3<i32>(33338i, 0i, -41832i), vec3<i32>(-46358i, 22970i, 0i));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global1 = array<vec2<i32>, 5>();
    global1 = array<vec2<i32>, 5>();
    global0 = all(vec2<bool>(_wgslsmith_mod_u32(arg_1.b, 1u) <= ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b, arg_0.b, arg_0.b, 50001u), vec4<u32>(u_input.b.x, arg_1.b, 11408u, arg_1.b)), all(select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), all(vec2<bool>(false, false))))));
    global2 = array<vec3<i32>, 9>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(arg_0.a)), ~abs(u_input.b.x));
    return 1000f;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: vec3<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(348f, -793f)))), -280f, -947f, _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1232f, -1249f, -1293f)), u_input.c.x), Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, -617f, -954f))), ~17415u)))));
    var var_1 = var_0.xx;
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, _wgslsmith_div_f32(-409f, 177f)))));
    let var_2 = !vec2<bool>(!arg_0.x || !select(false, arg_0.x, true), arg_1.x);
    var var_3 = _wgslsmith_dot_vec4_i32(~select(-vec4<i32>(u_input.a, 8737i, arg_2.x, -2147483647i) | _wgslsmith_mult_vec4_i32(vec4<i32>(17358i, arg_2.x, -1i, 2147483647i), vec4<i32>(28161i, -1i, -2147483647i, -37106i)), vec4<i32>(arg_2.x, ~u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.x, arg_2.x), arg_2.xx), 1i), arg_1.x), -(-abs(vec4<i32>(u_input.a, arg_2.x, arg_2.x, 1i)) ^ (vec4<i32>(-1i) * -vec4<i32>(arg_2.x, arg_2.x, u_input.a, 0i))));
    return select((max(~u_input.b.x, 1u) == select(~u_input.b.x, 1u, all(vec2<bool>(arg_1.x, true)))) && false, var_2.x, !(!arg_0.x));
}

fn func_1() -> bool {
    global0 = u_input.a != 0i;
    let var_0 = 31225i;
    global0 = (func_2(vec4<bool>(u_input.a >= u_input.a, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true)), true), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -24710i, 1i), global2[_wgslsmith_index_u32(1u, 9u)]), _wgslsmith_mod_vec3_i32(global2[_wgslsmith_index_u32(u_input.c.x, 9u)], vec3<i32>(-8649i, -51482i, 54816i)))) && !any(vec4<bool>(true, true, true, true))) || !(func_2(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 2171i, var_0), vec3<i32>(var_0, 15782i, u_input.a))) || !func_2(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec3<i32>(-1i, var_0, 1i)));
    var var_1 = vec2<bool>(true, func_2(vec4<bool>(true, true, any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), false), ~global2[_wgslsmith_index_u32(u_input.c.x, 9u)]));
    var var_2 = ~(~var_0);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(309f)))))) <= _wgslsmith_f_op_f32(trunc(-436f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<i32>, 9>();
    global0 = all(vec3<bool>(true, !func_1(), countOneBits(-44343i) < u_input.a));
    global0 = false;
    let var_0 = _wgslsmith_div_i32(firstTrailingBit(-u_input.a), 2859i);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 748f, -593f)) * vec3<f32>(-1000f, -608f, -290f)) - vec3<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(-646f, 857f))))), 29301u);
    global0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-380f, 484f)), -1000f), _wgslsmith_f_op_f32(min(596f, _wgslsmith_f_op_f32(floor(var_1.a.x)))), -557f)), reverseBits(firstTrailingBit(u_input.c.xz << (abs(vec2<u32>(1u, var_1.b)) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.a.x, var_1.a.x, true))), ~(~u_input.c.x), ~(~u_input.c.xxy));
}

