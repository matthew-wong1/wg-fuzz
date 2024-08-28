struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec2<f32>,
    d: vec2<i32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7> = array<i32, 7>(0i, 48608i, 3301i, 14214i, 5835i, -1i, 2147483647i);

var<private> global1: array<bool, 9>;

var<private> global2: Struct_3 = Struct_3(Struct_2(vec3<i32>(10754i, 35409i, 1i), vec4<i32>(i32(-2147483648), 8831i, -1i, -37671i), vec3<u32>(0u, 0u, 51553u), Struct_1(-292f, 71521u, 16719i, 1u)), -177f, vec2<f32>(-2033f, -545f), vec2<i32>(-1i, 0i), false);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> i32 {
    var var_0 = arg_0.a.d;
    let var_1 = -_wgslsmith_mult_i32(31772i, arg_0.a.b.x);
    global2 = Struct_3(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.b)) * var_0.a), vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_1.d.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_1.d.a))))), abs(vec2<i32>(arg_0.a.b.x, max(_wgslsmith_clamp_i32(2147483647i, 20298i, 2549i), firstTrailingBit(1i)))), any(!select(select(vec2<bool>(true, true), vec2<bool>(true, arg_0.e), global2.e), select(vec2<bool>(arg_0.e, arg_0.e), vec2<bool>(global2.e, true), vec2<bool>(false, false)), !vec2<bool>(arg_0.e, false))));
    var var_2 = ~reverseBits(~(~select(u_input.c.x, 22241u, false)));
    let var_3 = arg_0.a.d.d;
    return var_1;
}

fn func_2(arg_0: vec2<f32>) -> vec3<u32> {
    let var_0 = global1[_wgslsmith_index_u32(global2.a.d.d, 9u)];
    global0 = array<i32, 7>();
    let var_1 = Struct_2(vec3<i32>(global2.a.a.x, func_3(Struct_3(global2.a, -384f, vec2<f32>(-1675f, arg_0.x), global2.d, global1[_wgslsmith_index_u32(140u, 9u)]), Struct_2(global2.a.a, vec4<i32>(global2.a.b.x, global2.a.a.x, -52983i, 2147483647i), global2.a.c, Struct_1(1447f, u_input.c.x, -2147483647i, global2.a.d.d))), u_input.b.x) | ~u_input.e.wwy, abs(vec4<i32>(~global2.a.b.x << (_wgslsmith_clamp_u32(4294967295u, u_input.a, global2.a.d.d) % 32u), -1i, -3560i, -(i32(-1i) * -2147483647i))), global2.a.c, Struct_1(global2.b, u_input.a, u_input.e.x, 0u));
    let var_2 = Struct_3(Struct_2(u_input.b, u_input.e, vec3<u32>(_wgslsmith_mult_u32(31109u, _wgslsmith_div_u32(67933u, global2.a.d.b)), 0u, var_1.c.x), Struct_1(var_1.d.a, select(select(var_1.c.x, u_input.c.x, global2.e), _wgslsmith_sub_u32(0u, global2.a.c.x), true), _wgslsmith_div_i32(abs(u_input.b.x), global0[_wgslsmith_index_u32(var_1.d.d, 7u)]), 20749u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.x * var_1.d.a) * 273f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.x - _wgslsmith_f_op_f32(floor(global2.c.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.d.a, 765f)), _wgslsmith_f_op_f32(f32(-1f) * -1371f))), max(_wgslsmith_mult_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(81586u, 7u)] ^ u_input.b.x, -43013i), vec2<i32>(select(global2.a.d.c, 0i, false), _wgslsmith_clamp_i32(var_1.d.c, global0[_wgslsmith_index_u32(var_1.c.x, 7u)], global0[_wgslsmith_index_u32(0u, 7u)]))), -global2.a.b.yx), all(vec3<bool>(global2.a.d.c >= abs(0i), true, !(false != global2.e))));
    var var_3 = vec3<f32>(513f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.d.a, _wgslsmith_f_op_f32(round(arg_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -988f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-917f - 603f), _wgslsmith_f_op_f32(var_2.c.x + var_1.d.a)))));
    return vec3<u32>(global2.a.c.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global2.a.d.d, 4294967295u), global2.a.c.yy, var_1.c.zx), var_2.a.c.xy) & var_1.c.x, 1u), global2.a.d.b);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: u32) -> i32 {
    var var_0 = vec3<u32>(29852u, arg_2, 8349u);
    var var_1 = Struct_2(u_input.b, countOneBits(global2.a.b), ~(~func_2(_wgslsmith_f_op_vec2_f32(-global2.c))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global2.a.d.a))))), abs(0u), firstLeadingBit(-16074i << (global2.a.c.x % 32u)) ^ (_wgslsmith_mult_i32(14705i, arg_1.x) ^ (-2147483647i >> (global2.a.c.x % 32u))), 0u));
    let var_2 = Struct_3(Struct_2(vec3<i32>(arg_1.x, global2.a.a.x, global0[_wgslsmith_index_u32(select(0u, 1u, select(true, global2.e, arg_0.x)), 7u)]), vec4<i32>(var_1.a.x, ~u_input.e.x, u_input.b.x, 1i), firstTrailingBit(global2.a.c), Struct_1(_wgslsmith_f_op_f32(-1f), min(countOneBits(var_0.x), ~36232u), var_1.b.x, 16286u)), global2.a.d.a, global2.c, -firstTrailingBit(arg_1.wy) ^ _wgslsmith_mult_vec2_i32(firstTrailingBit(arg_1.zw), arg_1.wx), true);
    var var_3 = u_input.e.x;
    var_1 = var_2.a;
    return global0[_wgslsmith_index_u32(~(~11518u), 7u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(-1i, _wgslsmith_clamp_i32((func_1(vec3<bool>(global2.e, false, false), vec4<i32>(global2.d.x, -2147483647i, global0[_wgslsmith_index_u32(29927u, 7u)], 42099i), 13786u) | _wgslsmith_dot_vec4_i32(u_input.e, u_input.e)) ^ select(u_input.b.x ^ 2147483647i, ~(-2147483647i), true), -_wgslsmith_clamp_i32(-u_input.b.x, min(global0[_wgslsmith_index_u32(u_input.d, 7u)], global2.d.x), 2147483647i), global2.a.b.x), func_3(Struct_3(Struct_2(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 7u)], u_input.e.x, -437i) | vec3<i32>(u_input.e.x, 65365i, u_input.e.x), vec4<i32>(38419i, 1i, global0[_wgslsmith_index_u32(u_input.c.x, 7u)], -47811i), countOneBits(global2.a.c), Struct_1(-1000f, 0u, 14209i, 7182u)), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-247f * global2.a.d.a)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global2.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c.x, global2.a.d.a)), any(vec3<bool>(true, global1[_wgslsmith_index_u32(51350u, 9u)], true)))), abs(-u_input.e.yy), !(u_input.e.x <= 2147483647i)), Struct_2(u_input.e.ywy, global2.a.b, global2.a.c, global2.a.d)), u_input.e.x);
    var var_1 = global2.a;
    let var_2 = global2.a;
    var_0 = vec4<i32>(func_1(select(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 9u)], true, true), !vec3<bool>(global2.e, true, false), true), -(~vec4<i32>(var_0.x, global2.a.d.c, 0i, var_0.x)), var_1.c.x) >> (15871u % 32u), global2.a.a.x, _wgslsmith_mod_i32(min(-firstLeadingBit(0i), var_2.d.c | -1i), -1i), 0i);
    var var_3 = -224f;
    let var_4 = Struct_2(vec3<i32>(_wgslsmith_mod_i32(~(-1i), _wgslsmith_mod_i32(2147483647i, var_0.x ^ -57244i)), -2147483647i, ~2147483647i), vec4<i32>(func_3(Struct_3(global2.a, global2.c.x, _wgslsmith_f_op_vec2_f32(-global2.c), global2.d ^ u_input.b.yx, global0[_wgslsmith_index_u32(1u, 7u)] >= global2.d.x), global2.a), abs(1i), ~(global2.d.x >> (u_input.a % 32u)), i32(-1i) * -1i), global2.a.c, global2.a.d);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(u_input.a << (_wgslsmith_mod_u32(global2.a.d.d, 4294967295u) % 32u))));
}

