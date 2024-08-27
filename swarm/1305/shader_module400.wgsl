struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: vec4<f32>,
}

struct Struct_5 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3> = array<f32, 3>(1033f, -1000f, -1141f);

var<private> global1: vec4<i32> = vec4<i32>(56319i, -22298i, 46098i, 1i);

var<private> global2: vec2<i32> = vec2<i32>(1i, 35493i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_5, arg_2: f32) -> f32 {
    global0 = array<f32, 3>();
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-249f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(284f - -115f), _wgslsmith_f_op_f32(floor(1126f)))))));
    global0 = array<f32, 3>();
    var var_1 = Struct_2(0i, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1174f)), -firstTrailingBit(_wgslsmith_div_i32(global2.x, global1.x)) | (i32(-1i) * -u_input.a.x), vec3<f32>(var_0.a.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 3u)] + var_0.a.a)), -989f), _wgslsmith_f_op_f32(1379f - -912f)));
    global0 = array<f32, 3>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-399f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(arg_1.b)))) + var_0.a.a))) - -286f);
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    let var_0 = Struct_4(all(vec4<bool>(true, true, true, true)) && (!any(vec4<bool>(true, true, true, true)) == true), ~global2.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-199f + 608f) + global0[_wgslsmith_index_u32(33941u, 3u)]), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(reverseBits(u_input.c.x), 3u)])), -188f, _wgslsmith_f_op_f32(func_3(true, Struct_5(false, -703f), _wgslsmith_f_op_f32(sign(-300f)))))));
    let var_1 = var_0;
    global0 = array<f32, 3>();
    var var_2 = Struct_3(Struct_1(-785f));
    var var_3 = !select(!(!(!vec3<bool>(true, true, var_0.a))), select(select(vec3<bool>(var_0.a, false, true), select(vec3<bool>(false, false, var_0.a), vec3<bool>(var_1.a, true, var_0.a), var_1.a), 1u == u_input.c.x), !(!vec3<bool>(false, var_1.a, var_1.a)), !select(vec3<bool>(false, var_0.a, var_0.a), vec3<bool>(false, false, var_0.a), vec3<bool>(true, false, true))), u_input.c.x >= ~(19652u >> (u_input.c.x % 32u)));
    return u_input.c.x;
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: bool) -> Struct_4 {
    global2 = -vec2<i32>(global2.x, -_wgslsmith_add_i32(37021i, -25436i));
    var var_0 = arg_2;
    global0 = array<f32, 3>();
    global1 = -_wgslsmith_mod_vec4_i32(vec4<i32>(-u_input.b >> (func_2(vec4<i32>(global2.x, 2147483647i, u_input.a.x, 2147483647i)) % 32u), -2147483647i, (-1i & global1.x) << (0u % 32u), -1i), _wgslsmith_add_vec4_i32(-vec4<i32>(-21950i, global1.x, 1i, global1.x), max(vec4<i32>(global2.x, -70226i, global2.x, 2147483647i), vec4<i32>(global1.x, 1i, global1.x, 52017i)) << (~vec4<u32>(0u, 1u, 2703u, u_input.c.x) % vec4<u32>(32u))));
    global0 = array<f32, 3>();
    return Struct_4(true, ~global2.x, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0[_wgslsmith_index_u32(24788u, 3u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * arg_1) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c.x, 3u)] - -538f)), global0[_wgslsmith_index_u32(18853u, 3u)], arg_1), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-297f, global0[_wgslsmith_index_u32(1u, 3u)], arg_1, 222f))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 3u)], 794f, arg_1, 878f)))))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: i32, arg_3: vec2<u32>) -> i32 {
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.x;
    global1 = vec4<i32>(global2.x, u_input.b, func_4(func_1(1f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 3u)]), true), Struct_4(true, countOneBits(global2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(542f, global0[_wgslsmith_index_u32(u_input.c.x, 3u)], 1317f, -1794f))), reverseBits(global2.x << (4294967295u % 32u)), firstTrailingBit(~vec2<u32>(14085u, u_input.c.x))), -max(-33618i, 0i)) | vec4<i32>(global2.x, global2.x, -_wgslsmith_sub_i32(11700i, 2147483647i >> (u_input.c.x % 32u)), 0i);
    global2 = -firstTrailingBit(vec2<i32>(-36203i, 1i)) << (((u_input.c ^ vec2<u32>(~u_input.c.x, ~0u)) ^ u_input.c) % vec2<u32>(32u));
    let var_1 = ((global1.xyw << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, 1u, 0u), vec3<u32>(u_input.c.x, u_input.c.x, 0u), min(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(0u, 67335u, u_input.c.x))) % vec3<u32>(32u))) & ~_wgslsmith_div_vec3_i32(~vec3<i32>(global1.x, -1322i, 7421i), global1.yzw & global1.zxz)) | vec3<i32>(u_input.a.x << (select(~0u, 19315u, any(vec4<bool>(true, false, false, true))) % 32u), global2.x, abs(reverseBits(global2.x)));
    var var_2 = true;
    let var_3 = 1i;
    var_2 = !(1u < (u_input.c.x ^ 6199u));
    var var_4 = Struct_4(true, 0i, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(func_3(true, Struct_5(false, -1941f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 3u)]))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.c.x, 3u)]), _wgslsmith_f_op_f32(ceil(-640f)), 2105f), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 3u)] * 360f)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(58692u, 0u), vec2<u32>(95975u, u_input.c.x)), 3u)], true).c, !(_wgslsmith_f_op_f32(f32(-1f) * -1175f) <= _wgslsmith_f_op_f32(round(718f))))));
    let var_5 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.c.x, ~abs(u_input.c.x)), 3u)] + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(319f - _wgslsmith_f_op_f32(f32(-1f) * -811f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.c.x) * global0[_wgslsmith_index_u32(~4294967295u, 3u)]))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(abs(-31044i), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(25056i, global1.x), _wgslsmith_sub_i32(var_3, var_1.x), _wgslsmith_sub_i32(var_4.b, u_input.b)), vec3<i32>(_wgslsmith_sub_i32(-1i, u_input.b), 0i, firstTrailingBit(0i)))), 5913i, func_1(func_1(_wgslsmith_div_f32(_wgslsmith_div_f32(var_5, var_4.c.x), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c.x, 3u)] + global0[_wgslsmith_index_u32(0u, 3u)])), var_5, var_4.a).c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(10485u, 3u)]) - var_5) * var_4.c.x), any(vec2<bool>(var_4.a != true, false))).c.x);
}

