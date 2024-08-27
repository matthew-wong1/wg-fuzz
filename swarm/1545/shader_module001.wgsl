struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<bool>, 4>;

var<private> global2: array<Struct_1, 25>;

var<private> global3: u32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec3<bool> {
    global1 = array<vec2<bool>, 4>();
    var var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1884f, global0.e.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.e.x)) - global0.c))), _wgslsmith_f_op_f32(global0.c + global0.c)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c - _wgslsmith_f_op_f32(trunc(1001f)))), -144f, global0.c, global0.c)));
    var var_1 = (_wgslsmith_dot_vec3_u32(~vec3<u32>(52837u, 55332u, u_input.c), ~vec3<u32>(0u, u_input.c, u_input.c) | min(vec3<u32>(global0.d, global0.d, 130070u), vec3<u32>(u_input.c, u_input.c, global0.d))) << (reverseBits(global0.d) % 32u)) == _wgslsmith_mult_u32(33398u, countOneBits(countOneBits(u_input.c)));
    var var_2 = u_input.c;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_0.wyz)) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_0.wxz))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global0.e))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.ywz * vec3<f32>(1855f, 101f, var_0.x))))));
    return vec3<bool>(true, true, true);
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    let var_0 = select(select(!select(func_3(), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), vec3<bool>(false, false, true)), func_3(), !vec3<bool>(true, false, 22211u < global0.d)), select(vec3<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false)), false, false), vec3<bool>(!all(vec3<bool>(false, true, true)), any(vec4<bool>(false, true, false, true)) != true, true), select(vec3<bool>(true, true, any(vec3<bool>(false, false, true))), vec3<bool>(global0.d <= u_input.c, true, true), vec3<bool>(all(vec4<bool>(true, false, true, true)), true, true))), !vec3<bool>(true, true, !(-12860i < global0.a)));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, global0.d) & ~select(_wgslsmith_div_u32(u_input.c, 66269u), _wgslsmith_clamp_u32(86739u, global0.d, u_input.c), true), 25u)];
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(select(abs(countOneBits(global0.d)), var_1.d, true), u_input.c), 25u)];
    var_1 = Struct_1(var_2.a, _wgslsmith_mod_i32(0i, ~(-2147483647i)), _wgslsmith_f_op_f32(min(var_2.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.c + var_1.c))) * _wgslsmith_div_f32(var_1.c, -1000f)))), _wgslsmith_mult_u32(firstLeadingBit(99792u), _wgslsmith_dot_vec2_u32(firstTrailingBit(abs(vec2<u32>(u_input.c, u_input.c))), vec2<u32>(global0.d << (66153u % 32u), var_2.d & var_1.d))), vec3<f32>(_wgslsmith_f_op_f32(-634f * -323f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1086f, _wgslsmith_f_op_f32(min(-311f, 385f)))), var_1.c));
    global3 = 1u;
    return ~57355u;
}

fn func_1() -> vec3<u32> {
    global2 = array<Struct_1, 25>();
    var var_0 = -8651i;
    var var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1292f))), _wgslsmith_f_op_f32(1403f - 1f), _wgslsmith_div_f32(global0.e.x, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(1381f + global0.c))), 1173f)));
    global2 = array<Struct_1, 25>();
    var_1 = vec4<f32>(1275f, 397f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.e.x))), _wgslsmith_f_op_f32(1515f + global0.c));
    return vec3<u32>(27492u, u_input.c & func_2(-_wgslsmith_div_vec4_i32(vec4<i32>(610i, u_input.a.x, -6588i, global0.a), vec4<i32>(u_input.b, u_input.b, -47978i, u_input.b))), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_div_u32(0u, _wgslsmith_sub_u32(firstTrailingBit(~u_input.c), 4294967295u));
    let var_0 = 4294967295u;
    global1 = array<vec2<bool>, 4>();
    let var_1 = firstLeadingBit(max(func_1(), abs(~max(vec3<u32>(0u, 36523u, 14874u), vec3<u32>(55778u, global0.d, u_input.c)))));
    global2 = array<Struct_1, 25>();
    global2 = array<Struct_1, 25>();
    let var_2 = select((_wgslsmith_mod_vec4_i32(vec4<i32>(12618i, -31098i, -65118i, -13434i), ~vec4<i32>(0i, u_input.b, u_input.a.x, 31585i)) | abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, global0.b, 53747i, u_input.b), vec4<i32>(global0.b, u_input.b, -7206i, u_input.b), vec4<i32>(2147483647i, u_input.b, -61831i, -8322i)))) << (vec4<u32>(~24823u, _wgslsmith_add_u32(_wgslsmith_add_u32(global0.d, 9333u), _wgslsmith_clamp_u32(0u, 0u, global0.d)), (u_input.c & u_input.c) ^ ~1u, min(~14867u, global0.d)) % vec4<u32>(32u)), ~select(firstLeadingBit(select(vec4<i32>(global0.b, global0.a, u_input.b, 34484i), vec4<i32>(-12170i, global0.a, global0.a, 28125i), false)), vec4<i32>(-1i) * -vec4<i32>(2147483647i, 2147483647i, -22873i, 0i), !any(global1[_wgslsmith_index_u32(var_1.x, 4u)])), !(!vec4<bool>(true, true, true, all(vec4<bool>(true, false, false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(min(0u, func_1().x), _wgslsmith_sub_u32(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, global0.d, 40437u, 60544u), vec4<u32>(var_0, u_input.c, 4294967295u, 23605u)))), global0.c);
}

