struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec4<u32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_5, arg_2: f32) -> u32 {
    var var_0 = Struct_4(global0.x);
    var var_1 = -1i;
    var_0 = Struct_4(_wgslsmith_div_u32(max(~global0.x ^ (var_0.a & 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(24234u, var_0.a, var_0.a, var_0.a) & vec4<u32>(var_0.a, var_0.a, global0.x, var_0.a), firstLeadingBit(vec4<u32>(4294967295u, 70074u, 0u, 21152u)))), var_0.a >> (0u % 32u)));
    var_1 = 1i;
    let var_2 = true;
    return min(_wgslsmith_mod_u32(global0.x, _wgslsmith_mod_u32(~(~global0.x), _wgslsmith_add_u32(118117u, _wgslsmith_sub_u32(var_0.a, var_0.a)))), _wgslsmith_add_u32(global0.x, ~(~1u)));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-308f, 1696f))))));
    global0 = countOneBits(~abs(vec3<u32>(global0.x << (global0.x % 32u), ~0u, global0.x)));
    global0 = vec3<u32>(global0.x, ~select(_wgslsmith_mod_u32(global0.x, _wgslsmith_sub_u32(global0.x, global0.x)), global0.x & global0.x, all(vec3<bool>(true, true, true))), ~func_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1624f, 483f, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))), Struct_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(230f, var_0.x, var_0.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1056f))))));
    let var_1 = !select(vec2<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))), any(vec3<bool>(false, false, false))), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, var_0.x < var_0.x)), vec2<bool>(false, global0.x > global0.x));
    var var_2 = var_0.x;
    return Struct_2(Struct_1(vec2<bool>(_wgslsmith_f_op_f32(var_0.x * var_0.x) != 550f, false), true, i32(-1i) * -firstLeadingBit(u_input.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-797f, 259f, var_0.x))), vec3<f32>(_wgslsmith_f_op_f32(935f * var_0.x), _wgslsmith_f_op_f32(765f * var_0.x), 402f))), firstTrailingBit(~_wgslsmith_mod_vec4_u32(select(vec4<u32>(global0.x, global0.x, global0.x, 29002u), vec4<u32>(4294967295u, global0.x, global0.x, global0.x), true), abs(vec4<u32>(0u, 1u, 1u, global0.x)))), vec4<i32>(_wgslsmith_add_i32(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-7012i, u_input.b.x), u_input.a)), 24329i), 75282i, u_input.a.x, ((u_input.b.x ^ u_input.a.x) ^ u_input.a.x) >> (~(~global0.x) % 32u)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_3, arg_3: Struct_4) -> Struct_4 {
    var var_0 = 30030i;
    let var_1 = Struct_5(arg_2.a.b);
    let var_2 = all(select(select(select(vec3<bool>(arg_2.a.a.b, false, false), vec3<bool>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.b), !vec3<bool>(false, arg_2.a.a.a.x, false)), vec3<bool>(true, any(arg_0.a.a), false), select(select(vec3<bool>(false, true, arg_2.a.a.a.x), vec3<bool>(arg_0.a.a.x, true, true), false), !vec3<bool>(arg_0.a.a.x, arg_2.a.a.a.x, false), select(vec3<bool>(true, arg_0.a.a.x, false), vec3<bool>(false, true, false), arg_0.a.a.x))), vec3<bool>(arg_2.a.a.b, ~38605i != u_input.a.x, true), vec3<bool>(false, true, false)));
    let var_3 = _wgslsmith_add_vec3_i32(~u_input.b, reverseBits(vec3<i32>(1248i, -arg_0.d.x, _wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_0.d.x, -2147483647i), 46125i))));
    let var_4 = 16266u;
    return arg_3;
}

fn func_1(arg_0: vec2<u32>) -> bool {
    let var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(firstLeadingBit(u_input.a.x), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)), vec2<i32>(_wgslsmith_add_i32(-9205i, firstTrailingBit(i32(-1i) * -13525i)), u_input.a.x), vec2<i32>(firstLeadingBit(0i), -(~u_input.a.x)));
    var var_1 = func_4(func_2(), Struct_4(arg_0.x), Struct_3(func_2(), 1u >> (_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(global0.x, 1u, 4294967295u)), ~vec3<u32>(global0.x, global0.x, 1u)) % 32u), abs(abs(vec4<u32>(arg_0.x, 1u, global0.x, 1u)) << (vec4<u32>(1u, arg_0.x, global0.x, arg_0.x) % vec4<u32>(32u)))), Struct_4(global0.x));
    var var_2 = 342f;
    global0 = ~func_2().c.wxw;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<bool>(false, all(vec2<bool>(global0.x <= 4294967295u, any(vec4<bool>(true, true, true, true))))), func_1(~(~vec2<u32>(global0.x, 90707u))), ~((~u_input.b.x | -u_input.b.x) & u_input.b.x));
    global0 = vec3<u32>(global0.x, _wgslsmith_clamp_u32(53426u, 4294967295u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(global0.x, 13678u), global0.x)), global0.x) & ~abs(select(~vec3<u32>(global0.x, global0.x, 4294967295u), vec3<u32>(4294967295u, 70088u, 4294967295u), var_0.a.x));
    let var_1 = Struct_5(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-788f)) * _wgslsmith_f_op_f32(max(195f, 266f))), _wgslsmith_f_op_f32(-703f + _wgslsmith_f_op_f32(-299f + -2049f))), _wgslsmith_f_op_f32(step(-109f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(181f - 640f), _wgslsmith_div_f32(1361f, 1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1719f)))))));
    var var_2 = func_2();
    global0 = vec3<u32>(34258u << (global0.x % 32u), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global0.x, global0.x), global0.xz), vec2<u32>(var_2.c.x, global0.x)), _wgslsmith_clamp_vec2_u32(max(vec2<u32>(174989u, 0u), global0.xx), firstLeadingBit(global0.zy), global0.xy)), 56573u) ^ _wgslsmith_clamp_vec3_u32(var_2.c.xxz & ~(var_2.c.xww << (var_2.c.xzz % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(var_2.c.wyy, ~vec3<u32>(21173u, 1337u, var_2.c.x)), vec3<u32>(42197u, _wgslsmith_dot_vec3_u32(vec3<u32>(52146u, global0.x, 77744u), vec3<u32>(var_2.c.x, 45615u, 1u)), var_2.c.x << (4294967295u % 32u)), vec3<u32>(var_2.c.x, 0u, 22102u) ^ var_2.c.zww), vec3<u32>(global0.x >> (~52086u % 32u), global0.x, _wgslsmith_div_u32(global0.x, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, var_1.a.x, _wgslsmith_div_f32(var_1.a.x, var_1.a.x), _wgslsmith_f_op_f32(-1642f * -1466f))), var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-344f)))), vec2<i32>(var_2.d.x & 0i, u_input.a.x));
}

