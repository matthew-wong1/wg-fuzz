struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
    c: f32,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
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

var<private> global0: array<vec2<u32>, 12>;

var<private> global1: bool = false;

var<private> global2: Struct_2;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: bool, arg_1: u32) -> f32 {
    var var_0 = firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1, _wgslsmith_dot_vec4_u32(vec4<u32>(51044u, 24173u, 49277u, global2.b.c) & u_input.b, reverseBits(vec4<u32>(global2.a.c, global2.b.c, 29008u, 4294967295u))), ~global2.a.c), u_input.b.wwz));
    var var_1 = vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(966f)) + _wgslsmith_div_f32(global2.a.a, global2.b.a))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1769f, _wgslsmith_f_op_f32(trunc(1000f)))), global2.a.a);
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-932f + global2.b.a), var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -192f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.a) * _wgslsmith_f_op_f32(select(global2.b.a, -1000f, true)))))));
    global1 = all(vec2<bool>(all(vec2<bool>(true, false)) & false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1874f)) > var_1.x));
    var var_2 = _wgslsmith_sub_vec4_i32(~(-vec4<i32>(global2.d, u_input.c.x, 0i, global2.d) << (vec4<u32>(arg_1, min(19870u, global2.b.c), global2.b.c, arg_1) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(global2.d, global2.d), 68836i, -1i, u_input.c.x), vec4<i32>(abs(u_input.c.x), -13156i, global2.d >> (0u % 32u), 53675i)), abs(vec4<i32>(_wgslsmith_clamp_i32(u_input.c.x, global2.d, -1i), -global2.d, _wgslsmith_dot_vec4_i32(vec4<i32>(23101i, global2.d, -61052i, u_input.a), vec4<i32>(global2.d, -14236i, global2.d, u_input.c.x)), -2147483647i))));
    return var_1.x;
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(global2.a.b, 1u)), _wgslsmith_f_op_f32(-600f - _wgslsmith_f_op_f32(func_3(global2.a.b, 4294967295u)))), true, ~(~firstTrailingBit(45286u)), select(select(global2.c.x, 103638u, true), _wgslsmith_add_u32(u_input.b.x, 34413u), all(vec2<bool>(false, true))) >= u_input.b.x), Struct_1(_wgslsmith_f_op_f32(floor(-747f)), any(vec2<bool>(true, all(vec2<bool>(global2.b.d, global2.b.d)))), 36057u, !global2.a.d), vec4<u32>(_wgslsmith_mod_u32(28183u, ~(u_input.b.x | u_input.b.x)), u_input.b.x, ~(~1u ^ global2.a.c), 40238u | reverseBits(_wgslsmith_dot_vec4_u32(global2.c, vec4<u32>(4294967295u, 1u, u_input.b.x, 67963u)))), u_input.a);
    let var_1 = Struct_2(var_0.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1116f - global2.a.a)), 8437u < ~(~var_0.c.x), global2.a.c, false), firstTrailingBit(select(~vec4<u32>(u_input.b.x, var_0.b.c, 0u, var_0.c.x), ~global2.c, all(vec3<bool>(global2.b.b, true, var_0.a.b)))) << ((var_0.c | var_0.c) % vec4<u32>(32u)), _wgslsmith_dot_vec4_i32(-vec4<i32>(-15167i & var_0.d, -1493i, arg_0.x >> (var_0.b.c % 32u), _wgslsmith_sub_i32(arg_0.x, -2147483647i)), vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, -20900i, arg_0.x), vec4<i32>(var_0.d, 54883i, var_0.d, 33631i), vec4<i32>(arg_0.x, -26886i, u_input.a, global2.d))));
    let var_2 = var_0.b;
    var var_3 = -24438i;
    let var_4 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(round(178f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.a, -525f, true)))), _wgslsmith_div_f32(var_0.a.a, _wgslsmith_f_op_f32(min(1036f, _wgslsmith_f_op_f32(-var_2.a)))), 523f)));
    return var_1;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_5, arg_3: vec4<u32>) -> vec4<u32> {
    global1 = true;
    var var_0 = global2.b;
    global2 = arg_0;
    global0 = array<vec2<u32>, 12>();
    global1 = !all(select(!vec2<bool>(false, arg_1), select(vec2<bool>(false, var_0.b), vec2<bool>(var_0.b, arg_2.a.a.b), vec2<bool>(true, false)), global2.b.b)) | func_2(-_wgslsmith_mod_vec3_i32(-vec3<i32>(-2147483647i, u_input.c.x, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(global2.d, u_input.a, global2.d), vec3<i32>(u_input.a, 2147483647i, 0i)))).b.b;
    return (_wgslsmith_mult_vec4_u32(vec4<u32>(2391u, 23655u, _wgslsmith_clamp_u32(global2.a.c, arg_2.a.a.c, 0u), 1u), abs(vec4<u32>(arg_3.x, u_input.b.x, 16045u, u_input.b.x))) & vec4<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(var_0.c, 39342u, var_0.c, arg_0.a.c)), vec4<u32>(1u, global2.c.x, arg_0.a.c, u_input.b.x)), func_2(-vec3<i32>(-1i, 2147483647i, 12540i)).b.c, arg_3.x, 1u)) >> (arg_3 % vec4<u32>(32u));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<i32>) -> i32 {
    let var_0 = _wgslsmith_add_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 0u, 1u, 0u) << (vec4<u32>(u_input.b.x, global2.b.c, global2.c.x, 0u) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(arg_0.x, 65087u, 16473u, 0u))), vec4<u32>(_wgslsmith_div_u32(13129u, abs(10218u)), 59880u, ~arg_0.x | firstTrailingBit(30504u), 30359u)) | func_4(func_2(firstTrailingBit(~vec3<i32>(arg_1.x, 2147483647i, -2147483647i))), u_input.a == global2.d, Struct_5(Struct_3(Struct_1(global2.a.a, true, global2.c.x, global2.b.d))), ~(~(vec4<u32>(arg_0.x, 1u, u_input.b.x, global2.b.c) ^ vec4<u32>(u_input.b.x, 1u, 0u, global2.c.x))));
    var var_1 = _wgslsmith_f_op_f32(trunc(1080f));
    var_1 = global2.b.a;
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.a))));
    var var_3 = _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a | u_input.a, (1i & u_input.c.x) ^ arg_1.x, _wgslsmith_div_i32(-2147483647i, u_input.c.x)), _wgslsmith_mult_vec3_i32(reverseBits(min(vec3<i32>(u_input.a, 57952i, 0i), vec3<i32>(24350i, global2.d, u_input.c.x))), max(abs(vec3<i32>(-1i, arg_1.x, 1i)), vec3<i32>(4281i, u_input.a, global2.d)))), vec3<i32>(u_input.c.x, u_input.c.x >> (~u_input.b.x % 32u), func_2(abs(vec3<i32>(0i, global2.d, global2.d))).d) | _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, -19887i, -40312i), vec3<i32>(-9077i, -3397i, -38111i)) & -vec3<i32>(u_input.c.x, 0i, 24200i), vec3<i32>(global2.d, global2.d, arg_1.x)), _wgslsmith_sub_vec3_i32(-(~vec3<i32>(-2147483647i, u_input.a, 0i)), abs(vec3<i32>(global2.d, arg_1.x, _wgslsmith_add_i32(u_input.c.x, -17996i)))));
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~select(global2.d, func_1(vec3<u32>(0u, u_input.b.x, 0u) << (u_input.b.wzz % vec3<u32>(32u)), vec2<i32>(global2.d, -42596i)), true));
}

