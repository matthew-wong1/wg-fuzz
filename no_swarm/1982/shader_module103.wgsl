struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<vec2<i32>, 19>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: vec4<f32>, arg_3: f32) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_2), arg_2, select(vec4<bool>(false, false, !arg_0.x, arg_0.x), vec4<bool>(true, true, true, true), select(!vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), select(vec4<bool>(true, arg_0.x, false, true), vec4<bool>(true, true, true, false), arg_0.x), select(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, false, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, false)))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2462f))), _wgslsmith_f_op_f32(select(arg_2.x, 726f, select(false, u_input.e.x > u_input.a.x, true))), arg_3, 943f));
    let var_1 = true;
    global1 = array<vec2<i32>, 19>();
    let var_2 = all(select(vec4<bool>(var_1, true, any(arg_0), any(vec2<bool>(true, true))), select(!select(vec4<bool>(var_1, false, arg_0.x, false), vec4<bool>(var_1, arg_0.x, var_1, true), false), !select(vec4<bool>(arg_0.x, true, true, true), vec4<bool>(true, true, true, arg_0.x), arg_0.x), true), true));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2 * vec4<f32>(arg_2.x, arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) + arg_2.x), _wgslsmith_f_op_f32(-arg_3))));
    return ~(~(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, 19854i)));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_2 {
    global1 = array<vec2<i32>, 19>();
    global0 = max(vec4<u32>(~24050u, arg_0.x, ~abs(select(arg_0.x, arg_0.x, true)), arg_0.x), select(~(~vec4<u32>(25955u, arg_0.x, 39147u, 2070u) | _wgslsmith_mult_vec4_u32(vec4<u32>(0u, global0.x, u_input.d, arg_0.x), vec4<u32>(60230u, arg_0.x, 56975u, arg_0.x))), ~vec4<u32>(~global0.x, 4294967295u, 276u, _wgslsmith_mult_u32(arg_0.x, global0.x)), false));
    var var_0 = Struct_2(_wgslsmith_add_vec4_i32((vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.e.x) | _wgslsmith_mod_vec4_i32(vec4<i32>(12724i, 2147483647i, 31132i, arg_1.a), vec4<i32>(arg_1.a, 1i, 13173i, arg_1.a))) ^ select(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, arg_1.a, 31602i, u_input.b), vec4<i32>(arg_1.a, u_input.b, u_input.b, -2147483647i)), vec4<i32>(u_input.b, -1i, 0i, 0i) << (vec4<u32>(1u, 19908u, arg_0.x, arg_0.x) % vec4<u32>(32u)), vec4<bool>(true, true, true, true)), select(-func_3(vec3<bool>(true, false, false), 1i, vec4<f32>(202f, -137f, 1000f, -1000f), -1249f), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, arg_1.a, 1i), vec4<i32>(arg_1.a, u_input.e.x, u_input.a.x, 33208i)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, arg_1.a, arg_1.a, 2147483647i), vec4<i32>(-32843i, 1i, 1i, arg_1.a)), 0i, ~u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(37756i, 45411i, arg_1.a), vec3<i32>(-1i, -18337i, u_input.a.x)) != _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2147483647i), global1[_wgslsmith_index_u32(global0.x, 19u)]))), 8215u | global0.x, select(vec2<bool>(true, any(vec2<bool>(false, true)) && true), vec2<bool>(true, true), true));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.x, 441f));
    let var_2 = -2147483647i;
    return Struct_2(firstTrailingBit(func_3(!vec3<bool>(var_0.c.x, true, var_0.c.x), -2147483647i, arg_1.b, -1298f)) & ~reverseBits(-vec4<i32>(-33983i, var_0.a.x, 2478i, -12972i)), firstLeadingBit(global0.x & 1u), vec2<bool>(~(~u_input.d) >= 4294967295u, select(var_0.c.x & true, var_0.c.x, any(vec4<bool>(true, var_0.c.x, var_0.c.x, var_0.c.x)) & any(vec4<bool>(var_0.c.x, true, var_0.c.x, true)))));
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(global0.yzz, Struct_1(-2147483647i, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-787f * 392f), _wgslsmith_f_op_f32(-462f - -979f))), 914f, -502f, -1000f)));
    return Struct_1(func_3(select(!(!vec3<bool>(false, var_0.c.x, false)), !vec3<bool>(var_0.c.x, true, true), var_0.c.x), -3868i, vec4<f32>(679f, _wgslsmith_f_op_f32(select(-421f, _wgslsmith_f_op_f32(-274f - 1125f), 9254i <= u_input.a.x)), -557f, 1f), -818f).x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-541f, 653f), _wgslsmith_f_op_f32(ceil(328f))), _wgslsmith_f_op_f32(max(532f, _wgslsmith_f_op_f32(abs(298f)))), 1000f, -1208f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = abs(vec4<u32>(global0.x, 96076u, firstTrailingBit(~(~72361u)), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(37660u, global0.x, 28784u, u_input.d)), ~vec4<u32>(4294967295u, global0.x, 34603u, 108942u)) & _wgslsmith_add_u32(global0.x & u_input.c, u_input.c)));
    var var_0 = func_1();
    global1 = array<vec2<i32>, 19>();
    let var_1 = global0.xzx;
    var var_2 = 41516u;
    var var_3 = Struct_2(vec4<i32>(_wgslsmith_mult_i32((var_0.a | u_input.b) ^ (4457i ^ var_0.a), 2147483647i), _wgslsmith_sub_i32(var_0.a, abs(_wgslsmith_div_i32(u_input.b, 52234i))), var_0.a, u_input.a.x), _wgslsmith_dot_vec3_u32(~global0.wwz, ~select(vec3<u32>(51165u, var_1.x, u_input.d), global0.xzw, select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false))), !(!func_2(~global0.xzy, Struct_1(2147483647i, vec4<f32>(var_0.b.x, var_0.b.x, 581f, -588f))).c));
    var var_4 = abs(max(vec2<i32>(i32(-1i) * -1i, -4909i) ^ vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.e.x, u_input.a.x, -36341i), vec4<i32>(12019i, 29736i, -1i, -1161i)), -43024i >> (u_input.d % 32u)), ((vec2<i32>(var_3.a.x, var_0.a) & vec2<i32>(2147483647i, u_input.a.x)) | select(global1[_wgslsmith_index_u32(var_1.x, 19u)], u_input.a.xy, var_3.c)) >> (_wgslsmith_mod_vec2_u32(~global0.wz, vec2<u32>(22587u, global0.x)) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.xy, var_0.a, func_2(global0.wwz, func_1()).a.x, _wgslsmith_mult_u32(22759u, global0.x));
}

