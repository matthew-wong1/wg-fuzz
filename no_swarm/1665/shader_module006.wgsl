struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 33168i;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(0i, 0i), -57765i, -1584f, 142f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: vec4<bool>, arg_3: vec2<u32>) -> f32 {
    let var_0 = abs(~(~52795u));
    let var_1 = !arg_2.x;
    let var_2 = Struct_1(countOneBits(firstTrailingBit(-global1.a)), global1.a.x, -834f, global1.c);
    global0 = select(_wgslsmith_dot_vec3_i32(min(vec3<i32>(~global1.a.x, abs(2147483647i), global1.b), vec3<i32>(var_2.a.x, var_2.b, var_2.a.x)), vec3<i32>(var_2.b >> (1u % 32u), -2147483647i, _wgslsmith_mod_i32(-1280i, global1.b)) >> (~(u_input.a & vec3<u32>(var_0, arg_3.x, var_0)) % vec3<u32>(32u))), ~_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 12289i, global1.a.x, var_2.b), vec4<i32>(-41385i, var_2.b, var_2.a.x, -41365i), -vec4<i32>(var_2.b, var_2.b, global1.b, 1i)), vec4<i32>(1i, _wgslsmith_dot_vec2_i32(global1.a, vec2<i32>(global1.b, 3659i)), -23832i, -13657i ^ var_2.b)), true);
    let var_3 = false;
    return -2142f;
}

fn func_2(arg_0: u32, arg_1: i32) -> Struct_1 {
    global1 = Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, 36019i), global1.a), arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1507f) - 1289f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.c, 703f)) * _wgslsmith_f_op_f32(-global1.d)))));
    let var_0 = Struct_1(vec2<i32>(-(~arg_1), abs(firstTrailingBit(arg_1))), global1.a.x, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d, global1.d, -1627f, 1751f) * vec4<f32>(global1.c, global1.d, global1.c, global1.d))))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(947f, -890f), _wgslsmith_f_op_f32(-482f - 288f)))), !vec4<bool>(any(vec2<bool>(false, false)), true, true, global1.c > -499f), u_input.a.yx)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1749f * global1.c))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.d)))), global1.d)));
    var var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(~(arg_0 & 4294967295u), ~1u, arg_0), u_input.a);
    var_1 = vec3<u32>(arg_0, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(abs(reverseBits(vec4<u32>(0u, u_input.c, 0u, arg_0))), vec4<u32>(~47602u, ~arg_0, var_1.x, _wgslsmith_sub_u32(var_1.x, u_input.b))), ~u_input.b), 54945u);
    var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(6815u, arg_0, ~(~1u)), u_input.a);
    return var_0;
}

fn func_1() -> Struct_1 {
    global1 = func_2(firstTrailingBit(~u_input.b), (-1i << (_wgslsmith_mult_u32(_wgslsmith_sub_u32(38752u, 0u), abs(u_input.a.x)) % 32u)) & -_wgslsmith_add_i32(global1.b, _wgslsmith_div_i32(global1.a.x, -11529i)));
    let var_0 = abs(~vec2<u32>(0u, u_input.a.x));
    let var_1 = func_2(var_0.x, global1.a.x);
    global1 = Struct_1(countOneBits(-(~(vec2<i32>(global1.b, var_1.a.x) ^ var_1.a))), 2147483647i ^ (-func_2(u_input.a.x, var_1.b).b >> (38885u % 32u)), global1.d, var_1.c);
    var var_2 = func_2(_wgslsmith_div_u32(~u_input.a.x, u_input.c), _wgslsmith_sub_i32(var_1.b, -4692i));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    var var_0 = vec4<u32>(_wgslsmith_div_u32(27251u, _wgslsmith_clamp_u32(4294967295u, 0u, ~(~57999u))), ~abs(countOneBits(~0u)), u_input.c, u_input.c);
    var var_1 = !select(select(select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), false), true), vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(false, true, true)), true, any(vec4<bool>(true, true, false, false)), true)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, all(vec4<bool>(true, true, false, false)), any(vec2<bool>(true, false))), vec4<bool>(true, true, true, true)), (false || any(vec2<bool>(false, false))) | any(vec3<bool>(true, false, false)));
    let var_2 = func_2(1u, -19312i);
    var_0 = firstTrailingBit(vec4<u32>(var_0.x, var_0.x, 0u, 29139u));
    var var_3 = ~4294967295u;
    let var_4 = !vec4<bool>(!all(!vec4<bool>(false, var_1.x, false, true)), true, true, all(!vec4<bool>(true, var_1.x, var_1.x, false)));
    var var_5 = func_2(_wgslsmith_dot_vec4_u32(~((vec4<u32>(u_input.b, var_0.x, 1u, var_0.x) << (vec4<u32>(4294967295u, u_input.b, u_input.b, var_0.x) % vec4<u32>(32u))) ^ (vec4<u32>(var_0.x, 147529u, u_input.b, u_input.a.x) | vec4<u32>(u_input.a.x, 0u, 45615u, var_0.x))), vec4<u32>(4294967295u, var_0.x, _wgslsmith_clamp_u32(u_input.a.x, 1u, countOneBits(u_input.c)), u_input.a.x)), 39930i);
    let var_6 = ~reverseBits(var_5.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(func_2(var_0.x, 54832i).b);
}

