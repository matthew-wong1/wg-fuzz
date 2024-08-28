struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(-294f, 1u, vec2<f32>(104f, 402f), false, 2147483647i));

var<private> global1: array<i32, 3>;

var<private> global2: array<vec2<bool>, 22>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global0.a.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.a.a, _wgslsmith_f_op_f32(f32(-1f) * -215f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-595f, global0.a.a)) - _wgslsmith_f_op_f32(round(global0.a.c.x)))))));
    global2 = array<vec2<bool>, 22>();
    global1 = array<i32, 3>();
    var var_1 = all(!(!(!vec3<bool>(false, global0.a.d, false))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.a + global0.a.c.x), 543f), _wgslsmith_div_f32(global0.a.c.x, global0.a.c.x), 256f)));
    return u_input.a.x;
}

fn func_2(arg_0: Struct_3) -> vec4<bool> {
    var var_0 = _wgslsmith_add_u32(_wgslsmith_add_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_0.a.b, 21862u, 3346u, arg_0.a.b), vec4<u32>(global0.a.b, 38683u, 0u, 26638u), vec4<bool>(global0.a.d, false, arg_0.a.d, global0.a.d)), ~vec4<u32>(1u, global0.a.b, arg_0.a.b, 26195u))), _wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(34310u, _wgslsmith_mod_u32(global0.a.b, global0.a.b)))), u_input.a.x);
    var_0 = _wgslsmith_add_u32(~max(~(~31243u), func_3(_wgslsmith_clamp_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 3u)], 1i, global0.a.e, -2147483647i), vec4<i32>(global0.a.e, 0i, 0i, 0i), vec4<i32>(arg_0.a.e, global0.a.e, global0.a.e, 43556i)), true)), ~(~13892u) << (arg_0.a.b % 32u));
    return vec4<bool>(((any(vec3<bool>(arg_0.a.d, true, arg_0.a.d)) & (global0.a.d | global0.a.d)) && all(!vec4<bool>(global0.a.d, false, global0.a.d, global0.a.d))) || true, !(abs(i32(-1i) * -7461i) == global1[_wgslsmith_index_u32(u_input.a.x, 3u)]), !(!((arg_0.a.b == 0u) | !global0.a.d)), false);
}

fn func_1(arg_0: vec2<i32>, arg_1: f32) -> i32 {
    var var_0 = select(vec4<bool>(any(!select(vec4<bool>(global0.a.d, global0.a.d, global0.a.d, true), vec4<bool>(true, global0.a.d, global0.a.d, false), vec4<bool>(false, false, global0.a.d, global0.a.d))), !(600f < arg_1), global0.a.d, any(select(vec4<bool>(global0.a.d, true, true, false), !vec4<bool>(global0.a.d, true, true, global0.a.d), !global0.a.d))), !select(!(!vec4<bool>(true, global0.a.d, true, global0.a.d)), vec4<bool>(!global0.a.d, true && global0.a.d, false, global0.a.d), true), select(!select(vec4<bool>(global0.a.d, global0.a.d, global0.a.d, global0.a.d), vec4<bool>(global0.a.d, true, true, global0.a.d), !vec4<bool>(true, false, global0.a.d, false)), func_2(Struct_3(global0.a)), vec4<bool>(!any(vec2<bool>(global0.a.d, global0.a.d)), _wgslsmith_sub_i32(arg_0.x, u_input.c) >= u_input.b, global0.a.d, false)));
    var var_1 = vec2<bool>(global0.a.d, !(1u != _wgslsmith_sub_u32(~43415u, global0.a.b)));
    var var_2 = 1u;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-990f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(118f - arg_1)))), global0.a.b, vec2<f32>(324f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(2082f, -264f, global0.a.d)), -1000f)))), _wgslsmith_sub_i32(55817i, u_input.c) >= ~_wgslsmith_clamp_i32(abs(42094i), _wgslsmith_clamp_i32(0i, -1i, global0.a.e), -1i), global0.a.e);
    global1 = array<i32, 3>();
    return _wgslsmith_div_i32(0i, select(-u_input.b, max(i32(-1i) * -2147483647i, -global1[_wgslsmith_index_u32(~var_3.b, 3u)]), var_3.d));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: u32, arg_3: vec3<i32>) -> Struct_3 {
    var var_0 = 4294967295u;
    var var_1 = !any(vec2<bool>(global0.a.d, !arg_1.b.d && !global0.a.d));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a.c));
    global0 = Struct_3(global0.a);
    let var_3 = all(!select(!vec4<bool>(arg_1.b.d, true, global0.a.d, arg_1.a.d), vec4<bool>(true, !global0.a.d, all(vec4<bool>(arg_1.b.d, false, true, global0.a.d)), select(global0.a.d, global0.a.d, global0.a.d)), true | any(vec3<bool>(global0.a.d, arg_1.a.d, true))));
    return Struct_3(arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 3>();
    global2 = array<vec2<bool>, 22>();
    global0 = func_4(func_1(countOneBits(-vec2<i32>(2394i, 1i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1065f)), _wgslsmith_f_op_f32(global0.a.c.x - -154f))) << (u_input.a.x % 32u), Struct_2(Struct_1(-1850f, 4294967295u, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global0.a.c * vec2<f32>(global0.a.a, -1354f)))), u_input.a.x == _wgslsmith_mult_u32(0u, u_input.a.x), firstLeadingBit(~u_input.c)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.a.c.x)) + global0.a.a), 19076u, _wgslsmith_f_op_vec2_f32(-global0.a.c), false, i32(-1i) * -2147483647i), 443f, (reverseBits(vec4<i32>(-27589i, global0.a.e, -66089i, global0.a.e)) | firstLeadingBit(vec4<i32>(-1i, u_input.b, u_input.b, global0.a.e))) >> ((firstLeadingBit(vec4<u32>(48916u, 77414u, 4294967295u, 8670u)) << (vec4<u32>(global0.a.b, 4294967295u, 7168u, 67661u) % vec4<u32>(32u))) % vec4<u32>(32u))), ~firstTrailingBit(69379u), _wgslsmith_add_vec3_i32(~max(vec3<i32>(-1745i, u_input.b, 0i), vec3<i32>(global0.a.e, -60575i, 28400i)) >> (~(u_input.a << (vec3<u32>(u_input.a.x, 54570u, 0u) % vec3<u32>(32u))) % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(global0.a.e, 1i, global0.a.e) & vec3<i32>(13539i, u_input.b, global0.a.e)) >> (reverseBits(~u_input.a) % vec3<u32>(32u))));
    global2 = array<vec2<bool>, 22>();
    let var_0 = func_2(Struct_3(global0.a)).yzy;
    let var_1 = global0.a;
    let var_2 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.b, global0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -859f) + -373f)), _wgslsmith_sub_u32(_wgslsmith_mod_u32(var_1.b ^ u_input.a.x, func_3(vec4<i32>(var_2, u_input.b, global1[_wgslsmith_index_u32(1u, 3u)], -2676i), false)) | ~abs(0u), min(_wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(47589u, global0.a.b)) & _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0.a.b, 1u, 14139u), vec4<u32>(40911u, 66747u, global0.a.b, 56640u)), 1u)));
}

