struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
    d: vec2<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
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

var<private> global0: array<Struct_1, 13>;

var<private> global1: Struct_1 = Struct_1(true, 0u, false, vec2<f32>(-1189f, 1689f), 0i);

var<private> global2: vec4<bool> = vec4<bool>(false, true, false, false);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: vec3<i32>, arg_3: vec2<u32>) -> f32 {
    var var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.x, u_input.b, 1i, max(arg_2.x, -2610i)), reverseBits(vec4<i32>(-1i) * -(vec4<i32>(26850i, -55278i, arg_2.x, 37054i) << (vec4<u32>(global1.b, 32443u, 53757u, u_input.c.x) % vec4<u32>(32u)))));
    return 1292f;
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = vec3<f32>(global1.d.x, arg_0.d.x, _wgslsmith_f_op_f32(f32(-1f) * -2932f));
    global2 = vec4<bool>(!(72352u >= _wgslsmith_dot_vec3_u32(vec3<u32>(global1.b, u_input.c.x, 0u), u_input.c.wyz)) & !global2.x, !any(select(!vec4<bool>(true, arg_0.a, false, global1.a), select(vec4<bool>(true, true, global2.x, global1.c), vec4<bool>(false, false, global1.c, true), true), vec4<bool>(global2.x, global1.a, true, true))), any(select(!vec3<bool>(global1.c, global1.a, global2.x), vec3<bool>(true, -727f >= arg_0.d.x, true), false)), any(global2.yww));
    var var_1 = select(!global2.zww, !global2.xxx, !vec3<bool>(true, true, global2.x));
    global1 = Struct_1(all(global2.xwz), arg_0.b, true, _wgslsmith_f_op_vec2_f32(global1.d - global1.d), -(~countOneBits(countOneBits(27787i))));
    var var_2 = 27203u;
    return _wgslsmith_sub_vec4_u32(abs(u_input.c) ^ max(~(~vec4<u32>(u_input.c.x, global1.b, arg_0.b, 3230u)), ~_wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(1u, global1.b, 4294967295u, 80240u))), u_input.c);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = ~(countOneBits(global1.b) << (1u % 32u));
    let var_1 = Struct_1(!(!all(vec3<bool>(true, true, true))), u_input.c.x, global2.x, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x)), vec2<f32>(-217f, _wgslsmith_f_op_f32(arg_0.d.x * global1.d.x)))))), ~u_input.b << ((~(~57933u) << (~u_input.c.x % 32u)) % 32u));
    var var_2 = u_input.c.zy;
    var var_3 = _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.e, var_1.e, -1i, arg_0.e), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, -1i, u_input.d.x, arg_0.e), vec4<i32>(-2147483647i, -1i, arg_0.e, arg_0.e)), -vec4<i32>(0i, -2147483647i, -1i, -44419i)), ~vec4<i32>(-94231i, 7462i, 0i, arg_0.e), global1.c), min(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, -16465i, global1.e, u_input.a.x), vec4<i32>(global1.e, var_1.e, -39416i, 0i)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.e, global1.e, -1i, u_input.a.x), vec4<i32>(-59720i, u_input.a.x, -1i, u_input.d.x))), ~_wgslsmith_add_vec4_i32(vec4<i32>(0i, arg_0.e, global1.e, -2147483647i), vec4<i32>(arg_0.e, global1.e, -64187i, global1.e)))), min(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.e | 23117i, u_input.a.x, i32(-1i) * -1i, -19919i), abs(vec4<i32>(arg_0.e, global1.e, -33790i, arg_0.e) ^ vec4<i32>(arg_0.e, -1i, 1i, 7122i))), vec4<i32>(arg_0.e, -2147483647i, _wgslsmith_div_i32(var_1.e, global1.e), firstTrailingBit(arg_0.e)) << (~func_3(var_1) % vec4<u32>(32u))));
    let var_4 = ~(~firstTrailingBit(u_input.c.yw));
    return global0[_wgslsmith_index_u32(global1.b, 13u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(global0[_wgslsmith_index_u32(4294967295u, 13u)], _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.x, -202f, global1.d.x, global1.d.x) * vec4<f32>(global1.d.x, global1.d.x, -717f, -863f)), true, countOneBits(u_input.d), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 11642u), vec2<u32>(3583u, 4294967295u), u_input.c.wx))), 1000f))));
    var var_1 = Struct_1(select(false, !global2.x && any(vec3<bool>(global2.x, global2.x, global1.a)), any(!global2.zx)) & all(!vec2<bool>(true, global2.x)), global1.b, true & all(vec4<bool>(true, var_0.b != global1.b, all(vec4<bool>(false, global2.x, false, global1.c)), global1.d.x != var_0.d.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d.x, var_0.d.x)), global1.e);
    var var_2 = u_input.c.zzz;
    let var_3 = Struct_1(var_1.a, ~(~reverseBits(var_0.b)) & _wgslsmith_clamp_u32(~firstTrailingBit(u_input.c.x), 1u, var_0.b), true, var_0.d, var_1.e);
    var var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(var_1.d.x)), _wgslsmith_f_op_f32(var_3.d.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_3.d.x)) * -566f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1333f, var_3.d.x)) - var_1.d.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.d.x) * 1212f)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(func_2(global0[_wgslsmith_index_u32(var_1.b, 13u)], vec3<f32>(397f, -982f, -1332f)).d.x, _wgslsmith_f_op_f32(f32(-1f) * -1591f), _wgslsmith_div_f32(var_0.d.x, global1.d.x), _wgslsmith_f_op_f32(var_1.d.x + 1619f))))));
    var_1 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~u_input.c.wzw, ~vec3<u32>(38549u, 0u, 78334u)), firstTrailingBit(~4294967295u)) != _wgslsmith_mod_u32(func_3(global0[_wgslsmith_index_u32(2831u, 13u)]).x & ~11931u, _wgslsmith_sub_u32(var_3.b, var_3.b) & countOneBits(4294967295u)), _wgslsmith_dot_vec3_u32(u_input.c.zww, u_input.c.zwx), any(global2.wyx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global1.d))), -max(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.e, var_1.e, -2147483647i), vec3<i32>(global1.e, -1i, var_1.e)), 20110i) >> (_wgslsmith_sub_u32(0u, 0u) % 32u));
    let var_5 = !var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, var_1.e) ^ firstTrailingBit(vec2<i32>(u_input.a.x, var_3.e)), ~u_input.d.zx >> (abs(u_input.c.zw) % vec2<u32>(32u)))), vec4<i32>(var_1.e, func_2(Struct_1(var_3.e >= 28317i, abs(46040u), 1u > var_3.b, vec2<f32>(var_0.d.x, 424f), _wgslsmith_clamp_i32(var_0.e, var_3.e, 0i)), var_4.wyw).e, 2147483647i, ~(~(u_input.a.x >> (var_0.b % 32u)))));
}

