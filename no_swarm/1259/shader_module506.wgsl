struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    let var_0 = u_input.b.x;
    global0 = array<Struct_1, 31>();
    let var_1 = ~(~abs(var_0)) >> (min(var_0, u_input.b.x << (13830u % 32u)) % 32u);
    let var_2 = var_1 << (1u % 32u);
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(804f, -347f, 794f) * vec3<f32>(-803f, -1165f, 881f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1323f, 1830f, 181f)) + vec3<f32>(-1847f, 1000f, 1673f)))))), _wgslsmith_f_op_f32(floor(1065f)), _wgslsmith_dot_vec2_i32(max(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, u_input.a), vec2<i32>(u_input.a, 1i)), countOneBits(-vec2<i32>(18488i, 45572i))), _wgslsmith_clamp_vec2_i32(vec2<i32>(~u_input.a, abs(-29114i)), vec2<i32>(u_input.c, min(u_input.c, u_input.c)), countOneBits(vec2<i32>(u_input.c, u_input.c)))), _wgslsmith_clamp_vec2_u32(vec2<u32>(~var_0, _wgslsmith_dot_vec3_u32(u_input.b.xzx, u_input.b.wyz)) ^ (vec2<u32>(1u, var_2) >> (~u_input.b.wy % vec2<u32>(32u))), u_input.b.zy, u_input.b.yz), 2147483647i);
    return _wgslsmith_f_op_f32(var_3.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-647f - 645f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1566f * var_3.b))), false || (var_0 <= u_input.b.x)))));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_3) -> bool {
    var var_0 = !vec4<bool>(true, any(vec2<bool>(arg_2.b, true)), _wgslsmith_sub_u32(37847u, _wgslsmith_add_u32(arg_2.e.d.x, 0u)) == select(28196u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 83181u, 4294967295u), u_input.b.yzx), arg_2.b), any(!(!vec2<bool>(arg_2.b, true))));
    var var_1 = _wgslsmith_f_op_f32(func_3());
    var var_2 = arg_2.e.a.x;
    var var_3 = ~_wgslsmith_div_i32(arg_2.a.e, arg_2.e.c);
    var var_4 = ~(~reverseBits(~arg_1));
    return any(!var_0.xx);
}

fn func_1() -> u32 {
    global0 = array<Struct_1, 31>();
    var var_0 = !(_wgslsmith_mod_i32(-1083i, -20693i) == ~(~u_input.c)) | all(vec3<bool>(!func_2(vec4<f32>(991f, 732f, -305f, 102f), u_input.b.x, Struct_3(Struct_1(vec3<f32>(888f, 1041f, 1234f), -1000f, u_input.a, vec2<u32>(1u, 17244u), -2147483647i), true, vec2<f32>(1531f, 1988f), vec2<u32>(19906u, 1u), global0[_wgslsmith_index_u32(u_input.b.x, 31u)])), true, false));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-532f - -774f) + _wgslsmith_f_op_f32(abs(-734f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -1000f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-510f - 768f), _wgslsmith_f_op_f32(2011f + 964f))), 1414f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(608f, _wgslsmith_f_op_f32(abs(-167f)), _wgslsmith_f_op_f32(-1138f - -200f))))));
    var_0 = true;
    var var_2 = select(!vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), true), select(vec2<bool>(select(true, func_2(vec4<f32>(var_1.x, var_1.x, -2036f, var_1.x), 0u, Struct_3(Struct_1(vec3<f32>(var_1.x, var_1.x, var_1.x), var_1.x, u_input.a, u_input.b.yw, -2147483647i), true, var_1.zx, u_input.b.xy, global0[_wgslsmith_index_u32(u_input.b.x, 31u)])), false), any(vec4<bool>(true, true, true, true))), vec2<bool>(true, true), true), select(vec2<bool>(true, var_1.x < var_1.x), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), var_1.x != var_1.x)), true));
    return _wgslsmith_clamp_u32(~_wgslsmith_sub_u32(u_input.b.x ^ 1u, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))) << (_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(u_input.b.x, 55315u, u_input.b.x), _wgslsmith_sub_u32(4294967295u, u_input.b.x)), abs(u_input.b.xy ^ u_input.b.xx)) % 32u), 4294967295u, ~(~select(u_input.b.x, reverseBits(u_input.b.x), false && var_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec2_i32(countOneBits(abs(vec2<i32>(16248i, 5767i) << (u_input.b.zw % vec2<u32>(32u))) ^ vec2<i32>(u_input.c, u_input.c)), select(vec2<i32>(-66379i, u_input.c), vec2<i32>(-45018i, u_input.c), true) & (~(~vec2<i32>(u_input.a, u_input.c)) & _wgslsmith_add_vec2_i32(~vec2<i32>(u_input.a, u_input.c), vec2<i32>(u_input.a, 0i) << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)))));
    global0 = array<Struct_1, 31>();
    var var_1 = select(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.c, u_input.a, -24459i), vec4<i32>(-1i, 13193i, u_input.c, -19937i)), -69014i, var_0.x & 2147483647i) | _wgslsmith_add_vec3_i32(vec3<i32>(-2248i, var_0.x, 2147483647i), ~vec3<i32>(var_0.x, var_0.x, u_input.c)), firstTrailingBit(~max(vec3<i32>(-2147483647i, 2121i, u_input.c), vec3<i32>(u_input.a, -21583i, var_0.x))), select(vec3<bool>(false, true, any(vec3<bool>(false, false, false))), vec3<bool>(true, true, true), false)) ^ min(vec3<i32>(_wgslsmith_mult_i32(1i, -1i), min(-2147483647i, u_input.a), 23026i ^ u_input.a) << (vec3<u32>(func_1(), _wgslsmith_add_u32(u_input.b.x, u_input.b.x), ~u_input.b.x) % vec3<u32>(32u)), -(max(vec3<i32>(2147483647i, -30399i, -24569i), vec3<i32>(u_input.a, var_0.x, -7915i)) ^ -vec3<i32>(var_0.x, 34632i, -91749i)));
    var_1 = abs(reverseBits(vec3<i32>(firstTrailingBit(1322i), 32318i, u_input.a) & ~reverseBits(vec3<i32>(-15183i, 1i, 1i))));
    global0 = array<Struct_1, 31>();
    var var_2 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(u_input.b.x, 4294967295u), ~abs(u_input.b.x), ~u_input.b.x), ~(~_wgslsmith_mod_vec3_u32(u_input.b.yzw, u_input.b.ywz))), 31u)], global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.b.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(9711u, u_input.b.x, u_input.b.x), u_input.b.wzx), u_input.b.x)), 31u)], 1f);
    var var_3 = -100f;
    let x = u_input.a;
    s_output = StorageBuffer(~select(vec2<u32>(10947u, 50481u << (1u % 32u)), var_2.a.d, vec2<bool>(true, 1i == u_input.a)), ~var_2.a.d.x, _wgslsmith_dot_vec2_i32(var_1.zy, _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_add_i32(var_2.b.e, -2147483647i), 0i), -vec2<i32>(var_1.x, var_0.x))));
}

