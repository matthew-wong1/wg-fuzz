struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
    e: u32,
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

var<private> global0: array<vec3<i32>, 1> = array<vec3<i32>, 1>(vec3<i32>(2147483647i, -77471i, -1i));

var<private> global1: vec3<f32> = vec3<f32>(-202f, 128f, 266f);

var<private> global2: array<i32, 16> = array<i32, 16>(46209i, 1i, -1i, 11321i, -7624i, i32(-2147483648), 1i, 15125i, -1i, -6504i, 0i, 0i, 0i, 2147483647i, i32(-2147483648), 2334i);

var<private> global3: Struct_3;

var<private> global4: Struct_2 = Struct_2(vec2<f32>(341f, 1605f), Struct_1(-495f, true, -137f), Struct_1(1684f, false, -457f), vec4<f32>(-198f, -1165f, 213f, 629f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> bool {
    let var_0 = vec2<i32>(2147483647i, _wgslsmith_div_i32(u_input.d, ~_wgslsmith_div_i32(_wgslsmith_mod_i32(-2055i, -75840i), 2147483647i ^ global2[_wgslsmith_index_u32(31556u, 16u)])));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(abs(global3.d.xz)), global3.c, arg_1, vec4<f32>(_wgslsmith_f_op_f32(round(global4.b.c)), arg_1.a, 365f, global3.c.c));
    var var_2 = arg_0.c;
    var_1 = Struct_2(global4.d.zz, arg_1, arg_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global4.d)) + vec4<f32>(-662f, 159f, global4.b.a, var_1.c.a))));
    var var_3 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(global3.c.c - arg_1.c), var_1.b.c), global3.c, Struct_1(global1.x, !(!any(vec4<bool>(global4.c.b, arg_0.a, false, global3.c.b))), global3.d.x), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-global4.d), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1803f, -324f, _wgslsmith_div_f32(global1.x, 250f), _wgslsmith_f_op_f32(exp2(global3.d.x))))))));
    return false;
}

fn func_2(arg_0: u32) -> vec2<bool> {
    var var_0 = _wgslsmith_mult_u32(~(reverseBits(~31871u) >> (_wgslsmith_div_u32(u_input.e, countOneBits(0u)) % 32u)), 0u);
    let var_1 = Struct_2(global1.zz, global3.c, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.c.c, 139f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.x)))), func_3(Struct_3(global3.a == global4.c.b, global3.b, global3.c, _wgslsmith_f_op_vec3_f32(-global3.d)), global4.c), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.d.x, global4.b.a) + -1892f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global4.d * global4.d)))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(round(var_1.d.wz)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -891f) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1914f, 156f)))), any(!vec4<bool>(global4.b.b, var_1.c.b, true, false)), -1178f), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(global3.d.x, 1167f)))), true, 959f), vec4<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-389f)) - _wgslsmith_f_op_f32(global4.d.x - -323f))), 560f, -251f));
    global2 = array<i32, 16>();
    var var_3 = max(arg_0, ~u_input.c.x);
    return vec2<bool>(!all(vec2<bool>(true, all(vec4<bool>(false, true, true, true)))), (global2[_wgslsmith_index_u32(4294967295u, 16u)] ^ (firstTrailingBit(14183i) ^ u_input.a.x)) == _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, global2[_wgslsmith_index_u32(arg_0, 16u)], u_input.d, 1i), vec4<i32>(-44633i, -58545i, -2147483647i, 1i)), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(22691i, -3840i), u_input.a.yy, u_input.a.zx), countOneBits(u_input.a.wx))));
}

fn func_1(arg_0: i32, arg_1: bool) -> f32 {
    let var_0 = true;
    let var_1 = select(!(!select(vec4<bool>(true, var_0, var_0, false), vec4<bool>(global3.b.x, true, true, false), select(vec4<bool>(true, global4.b.b, false, true), vec4<bool>(true, true, true, false), true))), !vec4<bool>(any(!vec4<bool>(var_0, false, false, global3.c.b)), global4.b.b, false, any(func_2(u_input.c.x))), arg_1);
    var var_2 = vec4<i32>(~u_input.a.x & (i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, -2147483647i, 0i, global2[_wgslsmith_index_u32(u_input.c.x, 16u)]), u_input.a)), arg_0, -2147483647i, i32(-1i) * -34825i);
    var var_3 = vec2<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.a.x, i32(-1i) * -38459i, 1i), select(-global0[_wgslsmith_index_u32(u_input.c.x, 1u)], vec3<i32>(44061i, -88998i, global2[_wgslsmith_index_u32(1u, 16u)]), !vec3<bool>(true, global4.b.b, true))) ^ ~(-(~u_input.a.x)));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1401f))), !var_1.x && any(vec2<bool>(global1.x > global1.x, global3.b.x == arg_1)), _wgslsmith_div_f32(543f, global1.x));
    return global1.x;
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1(1i, global3.b.x)), _wgslsmith_f_op_f32(arg_2.c * 1155f), 687f), vec3<f32>(_wgslsmith_f_op_f32(-1000f + -1000f), _wgslsmith_f_op_f32(abs(global3.c.a)), -1030f)))));
    global3 = Struct_3(global3.b.x, vec3<bool>(!(!global4.b.b), arg_2.b, true), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1744f) * -818f) + -1259f), u_input.a.x >= ~(~u_input.a.x), _wgslsmith_f_op_f32(func_1(-u_input.d, _wgslsmith_f_op_f32(f32(-1f) * -1000f) < _wgslsmith_f_op_f32(global1.x + 1260f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.d.x, global1.x, arg_2.c) + var_0))));
    let var_1 = arg_2.c;
    let var_2 = vec4<i32>(-52416i, global2[_wgslsmith_index_u32(9742u, 16u)], abs(-global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(u_input.e, u_input.c.x)), 16u)]), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, 0i), vec4<i32>(-14444i, global2[_wgslsmith_index_u32(0u, 16u)], -30255i, -2147483647i)) & u_input.a, firstTrailingBit(~u_input.a)) | _wgslsmith_sub_i32(u_input.d ^ _wgslsmith_sub_i32(2147483647i, 0i), u_input.a.x));
    global3 = Struct_3(select(arg_1 == _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -578f), arg_2.c)), -2147483647i <= _wgslsmith_clamp_i32(-2147483647i, abs(var_2.x), _wgslsmith_dot_vec3_i32(var_2.yxy, vec3<i32>(var_2.x, 1i, -16919i))), false), global3.b, Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-112f + 1144f))))), global4.c.b, _wgslsmith_f_op_f32(func_1(0i ^ _wgslsmith_sub_i32(u_input.d, -2147483647i), any(select(vec2<bool>(arg_2.b, false), vec2<bool>(global3.a, global4.c.b), arg_2.b))))), vec3<f32>(-216f, arg_2.a, 971f));
    return _wgslsmith_clamp_u32(arg_0, arg_0, ~(~arg_0)) >> (0u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(func_4(17094u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.c.a), 525f)) + _wgslsmith_f_op_f32(f32(-1f) * -673f)), Struct_1(-1000f, !global4.c.b && (global3.c.b == false), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(12912u, 16u)], false)))))), _wgslsmith_clamp_u32(abs(_wgslsmith_add_u32(u_input.c.x, ~u_input.b.x)), func_4(23129u >> ((u_input.e ^ 4294967295u) % 32u), global3.d.x, global4.b), firstTrailingBit(20880u) | min(1u, ~10713u)));
    global1 = global3.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(var_0), 0u, u_input.c.x, _wgslsmith_mult_u32(~var_0, 92327u)), vec4<u32>(~90583u >> ((1u >> (u_input.b.x % 32u)) % 32u), var_0, _wgslsmith_sub_u32(func_4(var_0, 1183f, Struct_1(global4.a.x, true, -405f)), func_4(u_input.c.x, 1000f, global3.c)), _wgslsmith_dot_vec3_u32(~vec3<u32>(69773u, u_input.e, 1707u), ~vec3<u32>(1427u, 6202u, var_0)))));
}

