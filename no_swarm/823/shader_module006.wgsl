struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<i32>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: i32,
    d: f32,
    e: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec4<bool>, 3>;

var<private> global2: array<Struct_1, 9>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> i32 {
    let var_0 = Struct_3(80186u, ~u_input.b.x & (~_wgslsmith_mult_i32(21242i, u_input.b.x) | _wgslsmith_mod_i32(u_input.b.x >> (u_input.a.x % 32u), u_input.b.x)), abs(u_input.b.x) | 0i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -531f) - _wgslsmith_f_op_f32(trunc(-620f)))))), 4294967295u);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(467f, 1324f, global0.x))))));
    var var_2 = global2[_wgslsmith_index_u32(4294967295u, 9u)];
    var var_3 = Struct_3(1u, countOneBits(0i), _wgslsmith_mult_i32(u_input.b.x, 1i), -484f, _wgslsmith_dot_vec4_u32(vec4<u32>(18710u, _wgslsmith_mod_u32(1u, ~1u), var_2.e, ~var_0.e), vec4<u32>(~1u, u_input.a.x, 36128u, var_0.e)));
    global1 = array<vec4<bool>, 3>();
    return u_input.b.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: f32, arg_2: vec2<i32>) -> Struct_3 {
    return Struct_3(1u, u_input.b.x, min(1i, _wgslsmith_div_i32(_wgslsmith_mod_i32(23695i, arg_2.x), func_3())) << (~4294967295u % 32u), _wgslsmith_f_op_f32(f32(-1f) * -1000f), abs(arg_0.x));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2) -> u32 {
    var var_0 = -1224f;
    var_0 = arg_2.a.x;
    let var_1 = select(!select(!select(global0.xw, vec2<bool>(false, global0.x), global0.xw), select(global0.ww, vec2<bool>(global0.x, global0.x), !global0.x), any(vec2<bool>(global0.x, global0.x))), global0.yz, global0.ww);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, arg_0.d) * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_1, arg_0.d)), _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(round(624f)))))));
    var var_2 = Struct_3(select(1u, u_input.a.x, all(global1[_wgslsmith_index_u32(~1u, 3u)])), -2147483647i, -2147483647i, arg_2.a.x, arg_2.b);
    return u_input.a.x;
}

fn func_1(arg_0: bool) -> Struct_1 {
    global0 = !global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~countOneBits(~4294967295u), max(func_4(func_2(u_input.a.xz, -961f, vec2<i32>(u_input.b.x, u_input.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -571f), Struct_2(vec3<f32>(954f, -385f, 248f), 37916u)), u_input.a.x)), 3u)];
    var var_0 = u_input.b;
    let var_1 = reverseBits(vec2<u32>(_wgslsmith_clamp_u32(~13677u, 2869u, firstLeadingBit(36395u)), 0u));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1239f, -139f, -2450f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(448f, 961f, -424f), vec3<f32>(-418f, -1779f, -371f)))), u_input.b.x <= min(-2147483647i, var_0.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), ~(~var_1.x));
    global0 = vec4<bool>(all(select(select(global0.ywx, vec3<bool>(global0.x, false, global0.x), true), select(!global0.yzy, global0.zxx, false), all(global0.zx))), global0.x, true, false);
    return global2[_wgslsmith_index_u32(u_input.a.x, 9u)];
}

fn func_5(arg_0: Struct_4) -> Struct_3 {
    global0 = !arg_0.a.d;
    let var_0 = func_1(true);
    var var_1 = vec3<u32>(abs(~(~(~arg_0.a.e))), 0u, firstTrailingBit(var_0.e));
    var var_2 = min(_wgslsmith_sub_vec2_i32(min(select(u_input.b.zz, ~vec2<i32>(u_input.b.x, var_0.c.x), all(vec3<bool>(false, global0.x, global0.x))), vec2<i32>(~32468i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c.x, -43135i, arg_0.a.c.x), vec3<i32>(u_input.b.x, u_input.b.x, arg_0.a.c.x)))), vec2<i32>(~var_0.c.x, var_0.c.x & _wgslsmith_dot_vec2_i32(vec2<i32>(41816i, 2147483647i), vec2<i32>(arg_0.a.c.x, var_0.c.x)))), _wgslsmith_sub_vec2_i32(vec2<i32>(~36853i, firstTrailingBit(abs(u_input.b.x))), vec2<i32>(var_0.c.x, _wgslsmith_dot_vec2_i32(var_0.c.xy ^ vec2<i32>(arg_0.a.c.x, 2147483647i), vec2<i32>(arg_0.a.c.x, 38411i) ^ vec2<i32>(-2147483647i, arg_0.a.c.x)))));
    let var_3 = vec2<u32>(_wgslsmith_mult_u32(48239u, var_1.x), 6171u >> (_wgslsmith_div_u32(~abs(0u), func_1(any(arg_0.a.d.yxx)).e) % 32u));
    return Struct_3(arg_0.a.e, i32(-1i) * -72128i, -countOneBits(firstLeadingBit(_wgslsmith_sub_i32(u_input.b.x, var_2.x))), -843f, var_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_4(func_1(global0.x), -2144f == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1898f)))), false));
    let var_1 = global0.x;
    global2 = array<Struct_1, 9>();
    var_0 = Struct_3(var_0.e, var_0.b, var_0.c ^ u_input.b.x, 1429f, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), 20359u ^ var_0.e, firstTrailingBit(u_input.a.x) & max(~u_input.a.x, abs(u_input.a.x))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, -1000f, var_0.d))) - vec3<f32>(_wgslsmith_f_op_f32(-var_0.d), var_0.d, _wgslsmith_div_f32(1677f, -1030f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.d, var_0.d, var_0.d))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.d, var_0.d, 1030f))) * vec3<f32>(var_0.d, var_0.d, 256f)))), ~firstLeadingBit(var_0.e));
    var var_3 = _wgslsmith_f_op_vec2_f32(-var_2.a.xz);
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-732f, 145f, var_2.a.x), var_2.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x, var_2.a.xx);
}

