struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10>;

var<private> global1: array<bool, 18>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> u32 {
    var var_0 = ~_wgslsmith_dot_vec2_i32(~u_input.e.yx, -u_input.e.yy >> (vec2<u32>(u_input.d.x, u_input.d.x) % vec2<u32>(32u))) << ((min(u_input.d.x, ~u_input.d.x ^ ~60664u) & reverseBits(43393u)) % 32u);
    let var_1 = abs(firstTrailingBit(i32(-1i) * -2147483647i));
    var var_2 = Struct_3(u_input.e, select(arg_0.a, vec3<bool>(true, any(vec3<bool>(true, true, true)), abs(0i) >= _wgslsmith_add_i32(var_1, -43093i)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d.x, 0u << (0u % 32u)) << (4871u % 32u), 18u)]));
    global0 = array<Struct_2, 10>();
    var var_3 = 1f;
    return ~53492u;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec3<f32>) -> Struct_3 {
    var var_0 = vec3<u32>((_wgslsmith_div_u32(u_input.d.x, u_input.d.x) | (func_3(Struct_1(arg_2.b, vec4<f32>(1902f, arg_3.x, arg_3.x, 458f)), -1416f, arg_0.x) | ~18953u)) | min(~(~4294967295u), u_input.d.x | 4294967295u), abs(u_input.d.x), 10244u);
    global1 = array<bool, 18>();
    let var_1 = arg_2.a.x >> (abs(reverseBits(u_input.d.x)) % 32u);
    var var_2 = arg_2.b.x;
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1091f), 140f), _wgslsmith_f_op_f32(sign(arg_3.x)), arg_0.x))));
    return arg_1;
}

fn func_1(arg_0: i32) -> f32 {
    var var_0 = -1466f;
    var var_1 = !(global1[_wgslsmith_index_u32(35867u, 18u)] & false);
    let var_2 = vec3<i32>(countOneBits(~_wgslsmith_div_i32(arg_0, _wgslsmith_mod_i32(-1i, arg_0))), _wgslsmith_add_i32(u_input.c, u_input.c), 7119i);
    var var_3 = func_2(vec3<bool>(!(!(global1[_wgslsmith_index_u32(4294967295u, 18u)] && true)), 1i != var_2.x, all(select(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 18u)], true), select(vec2<bool>(true, global1[_wgslsmith_index_u32(40364u, 18u)]), vec2<bool>(global1[_wgslsmith_index_u32(44847u, 18u)], false), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(1u, 18u)], true), false)))), Struct_3(-select(~u_input.e, min(u_input.e, u_input.e), !vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.d.x, 18u)], false)), !select(vec3<bool>(true, global1[_wgslsmith_index_u32(33189u, 18u)], true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 18u)], false, false), select(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.d.x, 18u)], false), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 18u)], false), false))), Struct_3(vec4<i32>(arg_0, var_2.x, -2147483647i, arg_0) << (~vec4<u32>(0u, u_input.d.x, u_input.d.x, 0u) % vec4<u32>(32u)), !vec3<bool>(global1[_wgslsmith_index_u32(abs(u_input.d.x), 18u)], global1[_wgslsmith_index_u32(0u, 18u)], true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-348f, -2054f, -1673f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2031f, -267f, -980f)))))));
    var var_4 = Struct_3(vec4<i32>(var_3.a.x & var_3.a.x, ~var_2.x | var_3.a.x, ~_wgslsmith_dot_vec3_i32(u_input.e.wzy, var_2), ~arg_0 | (u_input.e.x << (u_input.d.x % 32u))) >> (_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 1u, u_input.d.x), vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, u_input.d.x), vec4<u32>(u_input.d.x, u_input.d.x, 1u, 70963u))) % vec4<u32>(32u)), vec3<bool>(any(var_3.b.zz), true, var_3.b.x));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-237f))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 18>();
    var var_0 = !vec3<bool>(global1[_wgslsmith_index_u32(~(~0u << (reverseBits(u_input.d.x) % 32u)), 18u)], global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(1u, 18u)]);
    global1 = array<bool, 18>();
    global0 = array<Struct_2, 10>();
    let var_1 = -u_input.e;
    var_0 = vec3<bool>((_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(495f * 1000f) - 1324f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-54990i)))) | (var_0.x || true), -750f < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-942f * _wgslsmith_f_op_f32(select(-365f, -202f, false))), 1f)), false);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1f, 1f, 1f))));
    var var_3 = !select(select(vec4<bool>(true, false, global1[_wgslsmith_index_u32(func_3(Struct_1(vec3<bool>(var_0.x, global1[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(u_input.d.x, 18u)]), vec4<f32>(-175f, var_2.x, var_2.x, var_2.x)), 122f, false), 18u)], true), select(!vec4<bool>(global1[_wgslsmith_index_u32(56898u, 18u)], var_0.x, global1[_wgslsmith_index_u32(u_input.d.x, 18u)], false), select(vec4<bool>(false, true, var_0.x, true), vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(u_input.d.x, 18u)]), var_0.x), true), select(!vec4<bool>(var_0.x, true, false, false), vec4<bool>(var_0.x, true, var_0.x, true), select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 18u)], var_0.x, false), vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 18u)], global1[_wgslsmith_index_u32(1u, 18u)], var_0.x, false)))), !select(!vec4<bool>(true, false, var_0.x, var_0.x), !vec4<bool>(global1[_wgslsmith_index_u32(75499u, 18u)], var_0.x, global1[_wgslsmith_index_u32(u_input.d.x, 18u)], false), false), false && var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - -310f)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1063f, var_2.x, _wgslsmith_f_op_f32(var_2.x - var_2.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.x - var_2.x), var_2.x, any(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 18u)]))))), vec4<f32>(_wgslsmith_f_op_f32(var_2.x - -1189f), 1051f, _wgslsmith_div_f32(-275f, _wgslsmith_f_op_f32(-var_2.x)), var_2.x))), countOneBits(_wgslsmith_dot_vec2_i32(u_input.e.yz, u_input.e.zy)), 1i);
}

