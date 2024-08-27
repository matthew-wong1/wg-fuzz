struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1134f, 428f, 1981f), vec3<f32>(-306f, -543f, -1066f), !vec3<bool>(arg_0.x, arg_0.x, true))))))), arg_2, arg_2, Struct_1(~reverseBits(arg_1.a ^ 46346u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a.x + -551f), -408f)) + 690f)));
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(736f, _wgslsmith_f_op_f32(f32(-1f) * -662f)), 1044f, -171f)), var_0.b, Struct_1(0u), arg_1);
    let var_2 = ~u_input.a.x;
    let var_3 = var_0.a.x;
    return countOneBits(47740u);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2) -> f32 {
    var var_0 = ((~(vec3<u32>(51763u, 0u, arg_1.b.a) >> (vec3<u32>(22252u, 0u, 4294967295u) % vec3<u32>(32u))) >> (firstLeadingBit(~vec3<u32>(arg_1.c.a, arg_1.c.a, arg_1.b.a)) % vec3<u32>(32u))) >> (vec3<u32>(0u, 1u, countOneBits(~28842u)) % vec3<u32>(32u))) ^ _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.b.a, arg_1.d.a, arg_1.d.a), vec3<u32>(arg_1.c.a, 24816u, arg_1.b.a)), select(vec3<u32>(1u, 57903u, arg_1.d.a) << (vec3<u32>(arg_1.d.a, arg_1.c.a, arg_1.b.a) % vec3<u32>(32u)), min(vec3<u32>(arg_1.c.a, 4294967295u, arg_1.b.a), vec3<u32>(arg_1.b.a, arg_1.c.a, arg_1.b.a)), vec3<bool>(true, true, true))), vec3<u32>(~(~0u), _wgslsmith_mult_u32(min(arg_1.c.a, 25043u), arg_1.d.a << (4294967295u % 32u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.d.a, arg_1.c.a, arg_1.c.a), vec3<u32>(arg_1.b.a, 38374u, arg_1.d.a))));
    var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(min(abs(1u), _wgslsmith_clamp_u32(~18779u, _wgslsmith_div_u32(0u, var_0.x), 1u)), 83521u, ~var_0.x), vec3<u32>(_wgslsmith_sub_u32(0u, arg_1.d.a), arg_1.c.a, countOneBits(abs(arg_1.b.a))));
    var_0 = ~_wgslsmith_clamp_vec3_u32(firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(2752u, 4294967295u, 1u) << (vec3<u32>(var_0.x, 4294967295u, arg_1.d.a) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.x, 19596u, 0u), vec3<u32>(var_0.x, arg_1.c.a, 4294967295u), vec3<u32>(4294967295u, arg_1.c.a, 0u)))), vec3<u32>(arg_1.c.a, func_3(vec3<bool>(false, true, true), arg_1.b, Struct_1(arg_1.c.a), arg_1.c), var_0.x) >> (~(~vec3<u32>(arg_1.b.a, var_0.x, 1u)) % vec3<u32>(32u)), vec3<u32>((15272u ^ arg_1.b.a) >> (0u % 32u), _wgslsmith_add_u32(~50574u, arg_1.b.a), var_0.x));
    var var_1 = Struct_3(~vec4<i32>(_wgslsmith_mult_i32(~u_input.a.x, u_input.a.x), _wgslsmith_mult_i32(1i, ~u_input.a.x), u_input.a.x, u_input.a.x), _wgslsmith_add_u32(_wgslsmith_mult_u32(arg_1.d.a, firstTrailingBit(~arg_1.b.a)), ~var_0.x), firstLeadingBit(reverseBits(firstTrailingBit(select(vec4<u32>(4294967295u, 30632u, arg_1.b.a, var_0.x), vec4<u32>(4294967295u, 13604u, arg_1.b.a, 4294967295u), vec4<bool>(false, true, false, true))))), 4294967295u);
    var_1 = Struct_3(var_1.a, ~countOneBits(var_1.c.x), vec4<u32>(abs(_wgslsmith_add_u32(var_1.d, var_0.x ^ 109472u)), 44797u, _wgslsmith_sub_u32(_wgslsmith_add_u32(firstTrailingBit(var_0.x), abs(var_0.x)), countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(40901u, arg_1.d.a, 1u, var_0.x), vec4<u32>(5212u, arg_1.d.a, 0u, 81911u)))), abs(28268u)), 1u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.x)));
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<bool>(false, true, true & (~(-u_input.a.x) == _wgslsmith_mod_i32(countOneBits(1i), -u_input.a.x)), -2147483647i == _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(17342i, u_input.a.x, -1i, u_input.a.x), vec4<i32>(u_input.a.x, 47396i, -1i, -52476i)), vec4<i32>(u_input.a.x, -1i, -2147483647i, u_input.a.x) ^ vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, 1i)), select(vec4<i32>(-8156i, -11885i, u_input.a.x, 32568i), abs(vec4<i32>(-29049i, 2147483647i, u_input.a.x, -2147483647i)), vec4<bool>(true, true, true, true))));
    var_0 = vec4<bool>(!(~_wgslsmith_dot_vec2_i32(u_input.a, u_input.a) < _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(19363i, u_input.a.x, -20332i, 0i)), -vec4<i32>(-8357i, u_input.a.x, u_input.a.x, u_input.a.x))), !(!any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, var_0.x, var_0.x, var_0.x), true))), true, true);
    var_0 = !select(vec4<bool>(-224f <= _wgslsmith_f_op_f32(func_2(vec4<f32>(-1407f, -1000f, 151f, -846f), Struct_2(vec3<f32>(-212f, -526f, 486f), Struct_1(61715u), Struct_1(0u), Struct_1(54711u)))), true, all(select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(false, var_0.x, false, true), vec4<bool>(var_0.x, false, var_0.x, true))), false), !(!vec4<bool>(var_0.x, true, false, true)), select(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, false, true), vec4<bool>(var_0.x, true, false, false)), select(select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(false, false, false, true)), select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(true, true, true, var_0.x), vec4<bool>(false, var_0.x, var_0.x, false)), select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, true, var_0.x, true), false)), var_0.x));
    var_0 = vec4<bool>(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(31724u, 0u), vec2<u32>(4294967295u, 0u))) != _wgslsmith_add_u32(~abs(4294967295u), func_3(vec3<bool>(var_0.x, true, var_0.x), Struct_1(4294967295u), Struct_1(1u), Struct_1(4294967295u)) ^ func_3(var_0.wyz, Struct_1(80083u), Struct_1(12178u), Struct_1(59703u))), var_0.x, true, false);
    var var_1 = vec3<u32>(~0u, 1u, abs(17277u));
    return Struct_1(~1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1045f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -922f))), func_1(), func_1(), func_1());
    var var_1 = Struct_2(vec3<f32>(-223f, -214f, _wgslsmith_f_op_f32(ceil(var_0.a.x))), func_1(), var_0.c, Struct_1(abs(func_3(vec3<bool>(true, false, true), var_0.b, Struct_1(1u), func_1()))));
    var_1 = var_0;
    let var_2 = !(!select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), any(vec4<bool>(true, true, false, true))), vec3<bool>(true, true, true), true));
    var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<i32>(u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x) & _wgslsmith_div_i32(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2154i, u_input.a.x), vec3<i32>(-1i, -32665i, u_input.a.x)) | -u_input.a.x)), u_input.a.x & ~u_input.a.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(-var_1.a.x)) + _wgslsmith_f_op_f32(var_1.a.x - 1871f)), 512f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a.x))) + var_1.a.x)));
}

