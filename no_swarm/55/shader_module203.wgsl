struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: bool,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec4<bool>) -> i32 {
    return ~abs(u_input.b.x);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec2<i32>, arg_3: i32) -> vec4<i32> {
    var var_0 = abs(_wgslsmith_div_i32(-(~global0.a.x), _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, global0.a.x), vec2<i32>(15014i, u_input.d) & arg_2))) & ~arg_3;
    let var_1 = ~arg_1;
    let var_2 = Struct_2(global0.e ^ arg_0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x)), vec3<i32>(arg_2.x, _wgslsmith_div_i32(-20323i >> (0u % 32u), -51080i) | _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, global0.e.x, -2147483647i), u_input.c.zyx), u_input.b.x << (arg_1 % 32u)), ~arg_2.x));
    let var_3 = _wgslsmith_f_op_vec2_f32(global0.d.yz + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.b * arg_0.d.x))) - global0.d.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.d.x + arg_0.d.x), global0.d.x)))));
    let var_4 = false;
    return abs(vec4<i32>(countOneBits(52865i), global0.a.x, -func_2(select(vec4<bool>(false, false, true, false), vec4<bool>(global0.c, false, var_4, var_4), vec4<bool>(true, true, true, true))), 2147483647i));
}

fn func_3(arg_0: vec4<i32>) -> vec3<i32> {
    let var_0 = vec4<bool>(any(select(vec3<bool>(true, true, false), !(!vec3<bool>(true, true, global0.c)), global0.c | true)), -317f <= global0.d.x, false, all(select(!(!vec4<bool>(global0.c, global0.c, global0.c, global0.c)), select(!vec4<bool>(global0.c, global0.c, global0.c, false), select(vec4<bool>(false, false, false, global0.c), vec4<bool>(global0.c, global0.c, global0.c, global0.c), vec4<bool>(false, true, global0.c, false)), global0.c), select(select(vec4<bool>(true, global0.c, true, global0.c), vec4<bool>(global0.c, global0.c, true, global0.c), false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, global0.c, global0.c, global0.c), vec4<bool>(true, global0.c, global0.c, true), vec4<bool>(global0.c, global0.c, global0.c, global0.c))))));
    var var_1 = i32(-1i) * -_wgslsmith_mult_i32(~1i, _wgslsmith_clamp_i32(arg_0.x << (global0.b % 32u), -arg_0.x, u_input.c.x));
    let var_2 = vec4<u32>(~global0.b, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, global0.b, global0.b), vec4<u32>(global0.b, 0u, 25721u, 23039u) | vec4<u32>(global0.b, global0.b, 4294967295u, global0.b)), global0.b), ~global0.b, 43677u) & ~vec4<u32>(0u, _wgslsmith_clamp_u32(38817u, ~9960u, _wgslsmith_mult_u32(global0.b, 8253u)), global0.b, max(abs(1u), global0.b | 27809u));
    var_1 = -7800i;
    return u_input.c.zwz;
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> vec3<bool> {
    global0 = Struct_1(func_1(Struct_1(-_wgslsmith_mod_vec2_i32(arg_1.c.yz, vec2<i32>(global0.e.x, 0i)), 0u, global0.c, global0.d, u_input.c), ~53661u, arg_1.a.xz & global0.e.wy, arg_1.c.x >> (_wgslsmith_mod_u32(1u, select(global0.b, global0.b, global0.c)) % 32u)).zx, 1u, all(vec3<bool>(global0.b >= 4294967295u, global0.c, false)) && false, global0.d, vec4<i32>(_wgslsmith_div_i32(u_input.c.x, max(~u_input.a, func_1(Struct_1(u_input.b, arg_0, true, global0.d, u_input.c), global0.b, u_input.b, global0.a.x).x)), global0.a.x, u_input.d, 2147483647i));
    global0 = Struct_1(global0.a, arg_0, global0.c, vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global0.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -230f), _wgslsmith_f_op_f32(min(-935f, arg_1.b))) * _wgslsmith_f_op_f32(1f * -1452f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d.x), arg_1.b), _wgslsmith_f_op_f32(max(-304f, _wgslsmith_f_op_f32(-270f - -1000f)))))), _wgslsmith_div_vec4_i32(global0.e, vec4<i32>(reverseBits(u_input.a >> (global0.b % 32u)), func_1(Struct_1(vec2<i32>(2147483647i, u_input.b.x), global0.b, global0.c, vec3<f32>(global0.d.x, arg_1.b, 1359f), arg_1.a), select(1u, 4294967295u, false), vec2<i32>(6240i, global0.a.x), u_input.d).x, select(select(6105i, -2147483647i, false), u_input.a, false), abs(988i))));
    global0 = Struct_1(u_input.c.yx, 74098u, all(!select(vec2<bool>(true, false), vec2<bool>(global0.c, true), vec2<bool>(false, global0.c))) | true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-419f)), global0.d.x, 259f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d.x, 1000f, -368f) + vec3<f32>(1468f, arg_1.b, global0.d.x)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b, -2207f, global0.d.x) * vec3<f32>(global0.d.x, arg_1.b, -865f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(498f, -1000f, global0.d.x)), select(vec3<bool>(false, false, global0.c), vec3<bool>(false, false, global0.c), vec3<bool>(true, false, true)))))), vec4<i32>(0i, ~func_2(vec4<bool>(global0.c, global0.c, false, true)), abs(-u_input.b.x), -10545i) | _wgslsmith_div_vec4_i32(global0.e >> (abs(vec4<u32>(global0.b, 44941u, 53755u, 1u)) % vec4<u32>(32u)), vec4<i32>(0i, _wgslsmith_add_i32(arg_1.c.x, -2147483647i), 0i, -45504i)));
    var var_0 = true;
    let var_1 = select(~vec4<i32>(-25038i, ~u_input.d, u_input.d << (global0.b % 32u), min(-2147483647i, 32814i)), min(~global0.e, firstLeadingBit(u_input.c)), !vec4<bool>(true, global0.c, false, global0.c)) << (vec4<u32>(_wgslsmith_div_u32(9624u, ~4294967295u << (_wgslsmith_clamp_u32(arg_0, 21774u, arg_0) % 32u)), arg_0, ~global0.b, ~(~_wgslsmith_mod_u32(0u, arg_0))) % vec4<u32>(32u));
    return select(!select(select(vec3<bool>(false, false, true), !vec3<bool>(global0.c, global0.c, global0.c), vec3<bool>(false, true, global0.c)), vec3<bool>(true && global0.c, global0.c, true), select(!vec3<bool>(false, false, global0.c), vec3<bool>(true, true, global0.c), true)), vec3<bool>(8090u == ~global0.b, !(global0.c & any(vec3<bool>(false, true, false))), !(arg_1.b <= _wgslsmith_f_op_f32(arg_1.b + -1440f))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_4(countOneBits(_wgslsmith_add_u32(global0.b, global0.b)), Struct_2(u_input.c, 1018f, func_3(func_1(Struct_1(vec2<i32>(-43251i, global0.e.x), 18516u, true, global0.d, vec4<i32>(30463i, 344i, 61317i, 24387i)), 0u, u_input.c.yw, 2147483647i)))), vec3<bool>(all(!vec3<bool>(global0.c, global0.c, false)) | !all(vec3<bool>(false, true, false)), ~1u < (~global0.b & 1122u), true), !all(vec3<bool>(false, true, global0.c)) && func_4(global0.b, Struct_2(abs(vec4<i32>(u_input.c.x, -1i, global0.e.x, 2147483647i)), -1849f, vec3<i32>(global0.e.x, 0i, global0.e.x))).x);
    var var_1 = -139f;
    var var_2 = var_0.x;
    var var_3 = global0.b;
    var_0 = vec3<bool>(true, true, true);
    let x = u_input.a;
    s_output = StorageBuffer(global0.a, abs(_wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -u_input.c.yw, vec2<i32>(-1i, 0i))), global0.e.x);
}

