struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: vec2<bool>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<u32>,
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

var<private> global0: array<bool, 9> = array<bool, 9>(false, false, true, false, true, false, true, true, false);

var<private> global1: Struct_1;

var<private> global2: u32;

var<private> global3: array<vec2<i32>, 28>;

var<private> global4: array<vec3<f32>, 11>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = Struct_1(_wgslsmith_sub_u32(global1.c & 0u, 4294967295u), true, 28422u, global1.d, any(vec2<bool>(!all(vec3<bool>(true, false, global1.d.x)), all(select(vec3<bool>(global1.d.x, true, true), vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 9u)], false), vec3<bool>(true, false, global1.e))))));
    var var_1 = Struct_1(abs(select(49933u, ~_wgslsmith_dot_vec3_u32(u_input.e.ywx, u_input.e.xzz), select(false, true, global0[_wgslsmith_index_u32(16016u, 9u)]) && true)), true, var_0.c, vec2<bool>(global0[_wgslsmith_index_u32(0u | max(_wgslsmith_dot_vec4_u32(u_input.e, u_input.e), 0u), 9u)], global1.e), all(vec4<bool>(any(select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(global1.c, 9u)], true), vec4<bool>(true, global0[_wgslsmith_index_u32(18629u, 9u)], true, global0[_wgslsmith_index_u32(62336u, 9u)]), vec4<bool>(var_0.d.x, true, false, global1.b))), true, select(var_0.e, false, global1.d.x), false)));
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(394f, 475f, 875f, -798f))))));
    var_1 = var_0;
    let var_3 = _wgslsmith_clamp_vec2_u32(~(~u_input.e.xy), vec2<u32>(var_1.a, _wgslsmith_clamp_u32(var_1.a, _wgslsmith_add_u32(108318u, var_1.c), countOneBits(1u))) << (u_input.e.xz % vec2<u32>(32u)), vec2<u32>(var_0.a, u_input.b));
    return true & (_wgslsmith_f_op_f32(-var_2.x) == _wgslsmith_f_op_f32(select(var_2.x, 697f, countOneBits(33334u) >= ~global1.a)));
}

fn func_4(arg_0: bool, arg_1: f32) -> u32 {
    global3 = array<vec2<i32>, 28>();
    var var_0 = Struct_1(abs(global1.a), select(any(select(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.b, 9u)]), select(vec3<bool>(arg_0, false, true), vec3<bool>(global1.e, global1.d.x, true), vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 9u)], arg_0)), !vec3<bool>(arg_0, global1.d.x, true))), !any(select(vec4<bool>(global0[_wgslsmith_index_u32(global1.c, 9u)], true, false, arg_0), vec4<bool>(false, global1.e, arg_0, true), global0[_wgslsmith_index_u32(global1.a, 9u)])), global0[_wgslsmith_index_u32(~(~u_input.e.x), 9u)]), global1.a, global1.d, global1.d.x);
    global3 = array<vec2<i32>, 28>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2094f, 1170f, -1147f, -1542f) - vec4<f32>(1000f, arg_1, arg_1, arg_1)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-416f, arg_1, 421f, -1452f)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-arg_1), -832f, _wgslsmith_f_op_f32(round(arg_1)), -1660f), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, -1210f, arg_1) - vec4<f32>(-1827f, 310f, 1259f, -324f)))))))));
    var var_2 = Struct_1(min(~reverseBits(var_0.c), 6677u | (global1.c << (global1.a % 32u))), -293f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, var_1.x) * arg_1) + 1396f), _wgslsmith_dot_vec2_u32(vec2<u32>((var_0.a ^ global1.a) >> (~var_0.c % 32u), global1.c), ~(~(~u_input.e.yx))), vec2<bool>(var_0.d.x, global0[_wgslsmith_index_u32(var_0.a, 9u)]), true);
    return global1.c;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(~(~(~68537u)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, ~1u), 9u)] && global1.e, 21263u, select(select(vec2<bool>(!global1.d.x, any(vec3<bool>(global1.b, true, false))), !select(global1.d, global1.d, global1.d), global1.d), global1.d, !(!select(global1.d, global1.d, global0[_wgslsmith_index_u32(40968u, 9u)]))), true);
    global2 = var_0.a;
    let var_1 = _wgslsmith_mod_vec4_i32(abs(select(~(~vec4<i32>(8731i, u_input.c, 2147483647i, u_input.c)), ~(-vec4<i32>(u_input.d, 2147483647i, 1i, u_input.a.x)), vec4<bool>(any(global1.d), true, true, false))), ~vec4<i32>(-u_input.a.x, min(u_input.d, u_input.c), firstLeadingBit(abs(-2147483647i)), _wgslsmith_mod_i32(-u_input.c, 34298i)));
    var var_2 = abs(35135u);
    var var_3 = vec4<u32>(firstLeadingBit(~40490u), ~(~func_4(func_3(), 527f)), ~var_0.a, firstTrailingBit(48807u));
    return Struct_1(~var_3.x, var_0.b || (u_input.d < _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, -1i, -67137i, 2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, -24971i, u_input.a.x, 8090i), vec4<i32>(2147483647i, -7535i, 2147483647i, 37619i)))), 63001u, !var_0.d, !any(!vec4<bool>(true, var_0.d.x, global0[_wgslsmith_index_u32(4294967295u, 9u)], var_0.d.x)));
}

fn func_1() -> Struct_1 {
    var var_0 = func_2();
    global3 = array<vec2<i32>, 28>();
    global0 = array<bool, 9>();
    var var_1 = min(vec2<u32>(var_0.c, ~(~_wgslsmith_mult_u32(u_input.b, 4294967295u))), ~firstLeadingBit(firstTrailingBit(vec2<u32>(global1.c, 3291u) | u_input.e.wx)));
    let var_2 = false;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = countOneBits(u_input.c);
    let var_2 = -1063f;
    global4 = array<vec3<f32>, 11>();
    let var_3 = !vec4<bool>(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(9168i, 2147483647i, 19146i, -2147483647i)), select(vec4<i32>(u_input.d, u_input.a.x, -2878i, 89386i), vec4<i32>(-45731i, var_1, var_1, 7349i), var_0.b)) == -73307i, !(true && !global1.d.x), false, select(true, ~global1.a >= _wgslsmith_dot_vec3_u32(u_input.e.wzy, u_input.e.zzx), global0[_wgslsmith_index_u32(firstTrailingBit(1u), 9u)]));
    let var_4 = Struct_1(~(~(~u_input.e.x)), all(!vec2<bool>(true, !var_0.d.x)), _wgslsmith_dot_vec2_u32((~vec2<u32>(15598u, var_0.c) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.c, 28527u), u_input.e.xz)) ^ select(u_input.e.zx, u_input.e.zx, true), max(u_input.e.xy, abs(vec2<u32>(17754u, u_input.e.x)))), !global1.d, all(!select(var_3.zxy, vec3<bool>(global1.d.x, false, false), global0[_wgslsmith_index_u32(~28076u, 9u)])));
    let var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(func_2().c);
}

