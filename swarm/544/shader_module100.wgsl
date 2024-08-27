struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: Struct_1,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> Struct_1 {
    var var_0 = true;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -157f))))), 1004f, -2738f);
    var var_2 = Struct_2(!all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), u_input.d.zyz, vec3<bool>(all(select(vec3<bool>(true, false, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true))), true, true));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.x)) * _wgslsmith_f_op_f32(sign(var_1.x))) + -171f), 160f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_1.x) - -1598f))), 864f));
    global0 = array<Struct_1, 4>();
    return global0[_wgslsmith_index_u32(~u_input.a, 4u)];
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_3) -> bool {
    global0 = array<Struct_1, 4>();
    var var_0 = 8213i;
    let var_1 = func_2();
    var_0 = 2147483647i;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))));
    return arg_2.b;
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = select(_wgslsmith_sub_vec2_i32(select(_wgslsmith_div_vec2_i32(vec2<i32>(2045i, u_input.c), -vec2<i32>(u_input.c, u_input.c)), vec2<i32>(u_input.c, -27139i), true), _wgslsmith_sub_vec2_i32(select(abs(vec2<i32>(u_input.c, u_input.c)), _wgslsmith_mult_vec2_i32(vec2<i32>(47953i, 2254i), vec2<i32>(-26695i, u_input.c)), vec2<bool>(false, false)), vec2<i32>(0i, 1i))), _wgslsmith_mult_vec2_i32(~_wgslsmith_add_vec2_i32(-vec2<i32>(0i, 0i), vec2<i32>(u_input.c, 17161i)), min(countOneBits(vec2<i32>(-579i, 11168i) | vec2<i32>(54430i, u_input.c)), -vec2<i32>(u_input.c, -34412i) & _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, u_input.c), vec2<i32>(1i, 42003i)))), vec2<bool>(all(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), vec3<bool>(false, true, true), true)), all(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(false, false), select(true, true, false)))));
    let var_1 = u_input.b;
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(arg_0.a, -1000f, all(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(func_2().a)))))));
    return vec3<bool>(all(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, all(vec2<bool>(true, true)))), true, func_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + 440f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2))), _wgslsmith_f_op_f32(-309f * _wgslsmith_f_op_f32(step(1000f, arg_0.a)))), global0[_wgslsmith_index_u32(~(~1u) >> (0u % 32u), 4u)], Struct_3(global0[_wgslsmith_index_u32(81916u, 4u)], !(51761i > u_input.c), false | (var_2 != var_2), func_2(), u_input.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = all(select(vec4<bool>(false, false, true, true), vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1000f) > _wgslsmith_f_op_f32(round(764f)), all(vec3<bool>(false, true, false)), all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false))), all(vec3<bool>(true, true, false)) && true), vec4<bool>(func_1(_wgslsmith_div_vec3_f32(vec3<f32>(916f, 245f, -356f), vec3<f32>(909f, -411f, -1950f)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.d.x, 39061u, u_input.b), 4u)], Struct_3(Struct_1(881f), true, true, global0[_wgslsmith_index_u32(u_input.b, 4u)], vec4<u32>(u_input.a, u_input.b, 4294967295u, u_input.d.x))), all(vec4<bool>(false, false, false, false)), all(func_3(global0[_wgslsmith_index_u32(u_input.b, 4u)])), any(vec2<bool>(false, true)) | func_1(vec3<f32>(527f, 649f, 1600f), global0[_wgslsmith_index_u32(15125u, 4u)], Struct_3(Struct_1(-917f), false, true, Struct_1(-2584f), vec4<u32>(u_input.d.x, 71412u, u_input.d.x, u_input.a))))));
    let var_1 = vec3<u32>(u_input.b, ~(~(~12345u)) | u_input.b, ~0u);
    var var_2 = Struct_3(global0[_wgslsmith_index_u32(1u, 4u)], true, 57084u >= _wgslsmith_div_u32(~abs(u_input.d.x), u_input.a), global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(max(_wgslsmith_clamp_u32(4294967295u, 15416u, u_input.a), ~var_1.x), 54448u), 4u)], vec4<u32>(~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.d, u_input.d), ~u_input.d), _wgslsmith_clamp_u32(var_1.x, _wgslsmith_sub_u32(4105u, u_input.a), var_1.x) & var_1.x, ~(~(~u_input.a)), _wgslsmith_dot_vec2_u32(u_input.d.zx | _wgslsmith_mult_vec2_u32(u_input.d.zy, vec2<u32>(2522u, var_1.x)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 81138u, 60149u, u_input.a), u_input.d), _wgslsmith_mod_u32(34599u, 4294967295u)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(max(-_wgslsmith_add_vec2_i32(vec2<i32>(-35885i, -2147483647i), vec2<i32>(u_input.c, -2147483647i)), _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, -1139i) & vec2<i32>(u_input.c, 0i), ~vec2<i32>(0i, 0i)))), -countOneBits(~vec4<i32>(u_input.c, 8755i, 9962i, -42398i)), ~u_input.d.zw, ~_wgslsmith_div_vec2_u32(~var_1.xx, reverseBits(vec2<u32>(4294967295u, 21198u)) | var_2.e.yx), min(44546i, max(_wgslsmith_dot_vec2_i32(~vec2<i32>(0i, 0i), -vec2<i32>(u_input.c, u_input.c)), -u_input.c << (var_2.e.x % 32u))));
}

