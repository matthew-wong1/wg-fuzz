struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: f32,
    d: vec3<i32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 43533i;

var<private> global1: array<u32, 13>;

var<private> global2: array<vec4<bool>, 30>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<f32> {
    global1 = array<u32, 13>();
    global1 = array<u32, 13>();
    var var_0 = true;
    var var_1 = abs(u_input.c.x);
    let var_2 = Struct_2(min(select(_wgslsmith_mult_u32(~29609u, u_input.b), 25963u, global1[_wgslsmith_index_u32(~4294967295u, 13u)] > 1u), _wgslsmith_div_u32(~_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(1u, 13u)], u_input.b), 0u)), !vec3<bool>(true, all(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 13u)] ^ 11645u, 13u)], 30u)]), false && any(global2[_wgslsmith_index_u32(u_input.b, 30u)])), _wgslsmith_f_op_f32(sign(274f)), vec3<i32>(-43690i, u_input.d, abs(65593i)), vec2<bool>(false & any(global2[_wgslsmith_index_u32(~u_input.b, 30u)]), true));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2490f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -490f), -2426f)), _wgslsmith_f_op_f32(trunc(var_2.c))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c, var_2.c, var_2.c))));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-390f, -1925f, arg_1)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(769f, arg_1, arg_1)))));
    let var_1 = select(false, select(all(select(!arg_0.xx, vec2<bool>(arg_0.x, arg_0.x), !arg_0.x)), true, select(all(arg_0), 155f > arg_1, all(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 13u)], 30u)])) && false), true);
    let var_2 = Struct_2(u_input.b, arg_0, arg_1, _wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, _wgslsmith_mod_i32(firstTrailingBit(2147483647i), ~u_input.c.x), max(~u_input.c.x, _wgslsmith_mult_i32(u_input.d, 38100i))), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(-18807i, u_input.c.x)), -u_input.d, _wgslsmith_mult_i32(u_input.d, -32621i)), max(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.d, 22944i), vec3<i32>(u_input.c.x, u_input.d, u_input.c.x)), vec3<i32>(1i, 36260i, -31177i)))), !select(select(vec2<bool>(true, true), select(vec2<bool>(true, var_1), vec2<bool>(false, var_1), vec2<bool>(var_1, arg_0.x)), arg_0.xx), !select(arg_0.zy, vec2<bool>(arg_0.x, false), var_1), !(!arg_0.xz)));
    let var_3 = ~vec4<u32>(abs(~_wgslsmith_sub_u32(3189u, 1u)), ~u_input.b, 0u, 49771u);
    var var_4 = vec3<f32>(468f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-764f, -339f))));
    return (var_2.d >> (~(~(var_3.wwz << (vec3<u32>(1u, 9864u, u_input.b) % vec3<u32>(32u)))) % vec3<u32>(32u))) ^ ~abs(-_wgslsmith_clamp_vec3_i32(vec3<i32>(-36895i, -2147483647i, 0i), vec3<i32>(var_2.d.x, u_input.c.x, u_input.d), vec3<i32>(15790i, var_2.d.x, -19467i)));
}

fn func_1() -> Struct_1 {
    global2 = array<vec4<bool>, 30>();
    let var_0 = _wgslsmith_sub_vec3_i32(func_2(vec3<bool>(true, true && any(vec3<bool>(true, false, false)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1272f))))), vec3<i32>(~(~u_input.c.x), -86433i, u_input.d ^ ~(-1i)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -583f)))))));
    let var_2 = Struct_2(0u, vec3<bool>(true, true, true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-611f)), 1000f)), var_0, vec2<bool>(true, u_input.d < ~26827i));
    var_1 = 1223f;
    return Struct_1(var_2.b.x);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: Struct_1) -> StorageBuffer {
    var var_0 = true && arg_0.x;
    global1 = array<u32, 13>();
    var var_1 = func_1();
    let var_2 = arg_2;
    var var_3 = -countOneBits(~select(max(vec4<i32>(1i, u_input.c.x, u_input.c.x, u_input.d), vec4<i32>(u_input.d, 0i, u_input.c.x, -688i)), vec4<i32>(u_input.d, u_input.d, u_input.c.x, u_input.d), false));
    return StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(969f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1316f + 713f))), -551f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(290f)) + _wgslsmith_f_op_f32(-2574f - -966f))), _wgslsmith_f_op_vec3_f32(func_3()).x), firstTrailingBit(_wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.d, u_input.d), ~u_input.c) >> (arg_1.yx % vec2<u32>(32u))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 180f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f * 154f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-570f))), -735f))), vec4<u32>(arg_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(67731u, 13u)], 0u, global1[_wgslsmith_index_u32(1u, 13u)]), ~vec3<u32>(arg_1.x, 38768u, global1[_wgslsmith_index_u32(46425u, 13u)])) ^ u_input.b, ~global1[_wgslsmith_index_u32(14520u, 13u)], _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(global1[_wgslsmith_index_u32(178u, 13u)], 27143u, global1[_wgslsmith_index_u32(27518u, 13u)])), abs(arg_1.x), 66u) & ~_wgslsmith_sub_u32(arg_1.x, 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(!vec4<bool>(false, true, false, any(vec4<bool>(false, true, false, true))), vec3<u32>(45960u, ~(~reverseBits(1882u)), ~select(global1[_wgslsmith_index_u32(u_input.b ^ 32929u, 13u)], 4294967295u, any(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 13u)], 13u)], 30u)]))), func_1());
}

