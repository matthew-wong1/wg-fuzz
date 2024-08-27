struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: f32,
    d: u32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20> = array<bool, 20>(false, true, true, true, false, false, true, true, true, false, true, false, false, false, false, false, true, true, false, false);

var<private> global1: array<vec2<i32>, 3>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_2, arg_3: vec4<bool>) -> vec3<bool> {
    global0 = array<bool, 20>();
    global0 = array<bool, 20>();
    global0 = array<bool, 20>();
    var var_0 = select(vec3<bool>(!arg_2.b.a == true, all(arg_3.yxw), true), select(vec3<bool>(any(!arg_3), global0[_wgslsmith_index_u32(min(22222u, arg_1), 20u)], arg_2.b.a), vec3<bool>(!arg_2.b.a, false, !all(arg_3.zzx)), (firstTrailingBit(8048i) >= 1i) && true), arg_2.b.a | (1i < ~_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(arg_2.a, arg_2.b.b))));
    let var_1 = -vec4<i32>(_wgslsmith_div_i32(reverseBits(0i), -1i ^ u_input.c.x), u_input.c.x, ~(~51606i), arg_2.a | arg_2.b.b);
    return select(!arg_3.zwy, arg_3.wxx, !select(vec3<bool>(true, true, all(arg_3.zx)), arg_3.wwx, select(vec3<bool>(true, global0[_wgslsmith_index_u32(arg_2.c.x, 20u)], arg_3.x), select(vec3<bool>(arg_0, true, global0[_wgslsmith_index_u32(25446u, 20u)]), vec3<bool>(false, arg_0, false), arg_3.zzx), arg_3.wwy)));
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: f32, arg_3: vec3<bool>) -> f32 {
    let var_0 = Struct_3(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(arg_0.xy, max(~vec2<u32>(0u, arg_0.x), ~arg_0.xx)), u_input.a));
    var var_1 = Struct_4(true, abs(u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(-arg_2))), select(min(u_input.a.x, u_input.b.x), ~_wgslsmith_div_u32(80308u, 4294967295u), arg_3.x), vec3<u32>(u_input.b.x, ~max(select(arg_0.x, 0u, false), arg_0.x), _wgslsmith_clamp_u32(24961u, 12788u, 0u)));
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)))) - _wgslsmith_f_op_f32(f32(-1f) * -652f)), 1000f));
    global0 = array<bool, 20>();
    global1 = array<vec2<i32>, 3>();
    return var_1.c;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_3) -> i32 {
    global0 = array<bool, 20>();
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(vec3<u32>(arg_2.d, arg_2.d, arg_2.d), ~arg_1.x, 2072f, func_3(false, arg_2.d, Struct_2(-1i, arg_2, vec3<u32>(0u, arg_1.x, 1u)), vec4<bool>(arg_2.a, arg_2.a, arg_2.a, false)))), -589f) > arg_2.c, u_input.c.x, -1026f, _wgslsmith_mult_u32(arg_1.x, arg_2.d) & firstTrailingBit(firstTrailingBit(firstTrailingBit(arg_1.x))));
    global0 = array<bool, 20>();
    var_0 = arg_2;
    global0 = array<bool, 20>();
    return 1i;
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_4, arg_3: vec4<u32>) -> u32 {
    let var_0 = ~firstTrailingBit(arg_2.e >> (~(vec3<u32>(arg_3.x, u_input.a.x, u_input.b.x) ^ arg_2.e) % vec3<u32>(32u)));
    let var_1 = select((firstLeadingBit(-vec4<i32>(arg_2.b, arg_2.b, u_input.c.x, u_input.c.x)) ^ ~(vec4<i32>(1i, 8933i, 4154i, arg_2.b) << (vec4<u32>(49331u, 4294967295u, var_0.x, arg_3.x) % vec4<u32>(32u)))) ^ vec4<i32>(-1i, _wgslsmith_mult_i32(u_input.c.x, arg_2.b) >> (~59775u % 32u), _wgslsmith_mod_i32(func_2(vec3<i32>(arg_2.b, -2147483647i, -16810i), var_0, Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], -6066i, -759f, u_input.b.x), Struct_3(0u)), _wgslsmith_add_i32(arg_2.b, 42312i)), -(u_input.c.x ^ -10194i)), vec4<i32>(arg_2.b, arg_2.b, arg_2.b >> (_wgslsmith_div_u32(~arg_3.x, u_input.a.x) % 32u), ~abs(-6380i)), select(select(vec4<bool>(arg_2.a, u_input.a.x == var_0.x, arg_2.a, all(vec2<bool>(true, true))), vec4<bool>(any(vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a.x, 20u)], false)), arg_2.a, true, var_0.x > var_0.x), false), select(!vec4<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 20u)], true, false), !(!vec4<bool>(true, arg_2.a, true, global0[_wgslsmith_index_u32(u_input.b.x, 20u)])), vec4<bool>(true, true, false, false)), !select(vec4<bool>(true, global0[_wgslsmith_index_u32(arg_3.x, 20u)], arg_2.a, false), vec4<bool>(false, false, arg_2.a, global0[_wgslsmith_index_u32(arg_3.x, 20u)]), !vec4<bool>(true, arg_2.a, arg_2.a, global0[_wgslsmith_index_u32(var_0.x, 20u)]))));
    let var_2 = vec3<i32>(_wgslsmith_add_i32(i32(-1i) * -49018i, _wgslsmith_div_i32(2147483647i, 1397i)), var_1.x, -1i);
    var var_3 = vec3<bool>(arg_2.a, max(arg_2.b, var_1.x) != 59742i, false);
    var var_4 = vec2<u32>(~_wgslsmith_sub_u32(~14742u, 71944u), max(_wgslsmith_mult_u32(reverseBits(u_input.a.x), _wgslsmith_add_u32(64513u, u_input.a.x)) ^ _wgslsmith_sub_u32(u_input.a.x, 74333u), ~max(arg_2.e.x, 0u ^ u_input.a.x)));
    return 55857u;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: u32, arg_3: Struct_2) -> vec3<u32> {
    let var_0 = select(vec4<u32>(_wgslsmith_dot_vec2_u32(arg_3.c.yy, min(arg_1.yw, vec2<u32>(u_input.a.x, arg_1.x)) >> (~u_input.a % vec2<u32>(32u))), min(4294967295u, abs(arg_3.c.x)), ~arg_1.x, ~select(abs(u_input.a.x), _wgslsmith_mult_u32(u_input.a.x, 1u), arg_0.a)), ~(arg_1 | _wgslsmith_clamp_vec4_u32(select(arg_1, vec4<u32>(arg_3.b.d, arg_0.d, 1u, arg_0.d), false), arg_1, arg_1)), vec4<bool>(any(!(!vec3<bool>(arg_3.b.a, true, true))), _wgslsmith_f_op_f32(func_4(vec3<u32>(4294967295u, 23186u, u_input.b.x) << (vec3<u32>(23998u, 126225u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_mod_u32(arg_1.x, arg_3.c.x), -785f, !vec3<bool>(false, arg_0.a, arg_0.a))) != -1208f, true, true));
    let var_1 = -1024f;
    global0 = array<bool, 20>();
    global0 = array<bool, 20>();
    var var_2 = Struct_3(_wgslsmith_mult_u32(min(~(~arg_3.b.d), arg_3.c.x), u_input.a.x));
    return arg_1.xxz;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 20>();
    let var_0 = Struct_4(false, u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1049f))), ~reverseBits(~0u) & ~u_input.a.x, ~min(vec3<u32>(83561u, firstTrailingBit(0u), select(4294967295u, u_input.a.x, false)), func_5(Struct_1(true, u_input.c.x, 1379f, 54209u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.a.x), func_1(vec3<f32>(-294f, -361f, 387f), 2128f, Struct_4(false, u_input.c.x, 582f, 1u, vec3<u32>(1u, u_input.a.x, u_input.a.x)), vec4<u32>(0u, 17426u, 0u, u_input.a.x)), Struct_2(u_input.c.x, Struct_1(global0[_wgslsmith_index_u32(4294967295u, 20u)], 37019i, 161f, 82537u), vec3<u32>(4372u, u_input.a.x, u_input.a.x)))));
    let var_1 = vec2<i32>(_wgslsmith_dot_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(1i, var_0.b, 1i) << (vec3<u32>(u_input.b.x, 117019u, u_input.a.x) % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(-37844i, var_0.b, u_input.c.x))), -countOneBits(min(vec3<i32>(47123i, -1i, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, -2147483647i)))), var_0.b);
    global0 = array<bool, 20>();
    global1 = array<vec2<i32>, 3>();
    global0 = array<bool, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(367f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c, var_0.c) - _wgslsmith_f_op_f32(func_4(var_0.e, 51869u, var_0.c, vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 20u)], true)))), -631f, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~var_0.e.x, 8170u), 20u)]))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1068f, -635f), vec2<f32>(-409f, -1205f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-392f, 1155f))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-158f, var_0.c)))))))), firstTrailingBit(vec2<u32>(4294967295u, ~1u)), select(var_0.e.xx, _wgslsmith_clamp_vec2_u32(u_input.a, _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.d, var_0.d) & vec2<u32>(44033u, 68542u), reverseBits(vec2<u32>(60886u, 0u)), u_input.b), _wgslsmith_add_vec2_u32(~var_0.e.yy, vec2<u32>(var_0.d, var_0.d))), select(!select(vec2<bool>(var_0.a, false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], false), var_0.a), vec2<bool>(global0[_wgslsmith_index_u32(26089u, 20u)], false), func_3(all(vec3<bool>(var_0.a, true, var_0.a)), var_0.e.x, Struct_2(var_0.b, Struct_1(false, 1i, 761f, 67928u), var_0.e), !vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 20u)], true, var_0.a)).x)));
}

