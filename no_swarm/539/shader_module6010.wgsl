struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: u32,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 20> = array<f32, 20>(677f, 1618f, 1449f, -1000f, -641f, -947f, -571f, 843f, 738f, 653f, 1659f, 877f, -471f, 812f, -186f, 168f, -1334f, -1440f, 1000f, 921f);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec4<u32> {
    global1 = array<f32, 20>();
    let var_0 = !select(vec3<bool>((global0.b.x < -47423i) & false, _wgslsmith_f_op_f32(-1000f * 804f) > _wgslsmith_div_f32(-1024f, global0.a.x), !(64894i <= u_input.a)), !select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), true), !(-143f > global0.a.x));
    global0 = Struct_1(vec4<f32>(-428f, -256f, global1[_wgslsmith_index_u32(~(~1u), 20u)], global1[_wgslsmith_index_u32(select(~1u, max(49741u, 0u), true), 20u)]), _wgslsmith_add_vec4_i32(vec4<i32>(12641i, max(-1i & global0.b.x, 61575i), 2147483647i, abs(0i)), abs(max(~vec4<i32>(u_input.a, 19928i, 1i, global0.b.x), -vec4<i32>(global0.b.x, u_input.a, u_input.a, global0.b.x)))));
    global1 = array<f32, 20>();
    var var_1 = vec2<u32>(51378u, 4294967295u);
    return ~vec4<u32>(var_1.x, var_1.x, ((var_1.x >> (53313u % 32u)) ^ var_1.x) ^ ~(~1u), var_1.x);
}

fn func_2(arg_0: u32) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, global0.a.x, 522f, global0.a.x) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(432f, 823f, -692f, global0.a.x), vec4<f32>(global1[_wgslsmith_index_u32(arg_0, 20u)], global1[_wgslsmith_index_u32(arg_0, 20u)], 2298f, global0.a.x)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 20u)], 544f, global1[_wgslsmith_index_u32(arg_0, 20u)], global0.a.x) + vec4<f32>(-963f, global1[_wgslsmith_index_u32(arg_0, 20u)], 294f, global0.a.x))))), _wgslsmith_clamp_vec4_i32(global0.b, abs(reverseBits(-global0.b)), select(~global0.b, global0.b, !(global1[_wgslsmith_index_u32(arg_0, 20u)] > 947f))));
    let var_0 = Struct_2(-1i, false, ~arg_0, any(vec3<bool>(true, true, true)), true);
    let var_1 = select(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_0, 55729u, 1u, arg_0), vec4<u32>(var_0.c, 4294967295u, 0u, 4294967295u) << (vec4<u32>(0u, var_0.c, 84260u, arg_0) % vec4<u32>(32u)), ~vec4<u32>(77458u, 30765u, var_0.c, 46037u)), func_3(), ~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.c, arg_0, var_0.c, 8990u), vec4<u32>(46112u, var_0.c, 63316u, var_0.c))), vec4<u32>(arg_0, var_0.c ^ abs(18771u), var_0.c, min(arg_0, 0u) << (_wgslsmith_sub_u32(var_0.c, arg_0) % 32u))), _wgslsmith_sub_vec4_u32(~vec4<u32>(_wgslsmith_clamp_u32(1u, arg_0, 130557u), 1u, ~arg_0, 1u), select(vec4<u32>(var_0.c, arg_0, 0u >> (var_0.c % 32u), arg_0 ^ 15764u), vec4<u32>(arg_0, arg_0, ~var_0.c, ~0u), select(!vec4<bool>(true, var_0.b, true, false), select(vec4<bool>(var_0.d, var_0.b, false, false), vec4<bool>(false, var_0.d, var_0.e, var_0.d), var_0.d), var_0.e && false))), select(!(!select(vec4<bool>(true, var_0.e, var_0.b, true), vec4<bool>(true, var_0.b, false, var_0.e), vec4<bool>(false, true, var_0.e, false))), vec4<bool>((var_0.c >> (0u % 32u)) > ~var_0.c, false, var_0.a != _wgslsmith_div_i32(2147483647i, -843i), false), any(!vec3<bool>(var_0.d, var_0.d, var_0.b))));
    global1 = array<f32, 20>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1[_wgslsmith_index_u32(1u, 20u)], -2023f, 622f, global0.a.x)))))) + global0.a), -global0.b);
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(-361f)), -235f, -1123f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.a.x)) + _wgslsmith_f_op_f32(abs(738f)))), vec4<i32>(_wgslsmith_mult_i32(-(~(-14096i)), -u_input.a), var_2.b.x, select(_wgslsmith_mod_i32(var_2.b.x, -1i), 0i, select(true, arg_0 == 65268u, false)), global0.b.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_1 {
    global0 = arg_0;
    let var_0 = Struct_2(~_wgslsmith_mult_i32((2147483647i << (arg_1.x % 32u)) << (4294967295u % 32u), -(global0.b.x | -1i)), false, arg_1.x | 1u, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, all(vec2<bool>(true, true)), true, false))), any(vec2<bool>(true, true)) || false);
    global1 = array<f32, 20>();
    let var_1 = Struct_1(global0.a, global0.b);
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_1.a))), arg_0.b << (vec4<u32>(arg_1.x, _wgslsmith_add_u32(4294967295u, arg_1.x) << (6320u % 32u), _wgslsmith_div_u32(~var_0.c, 8602u), ~61417u) % vec4<u32>(32u)));
    return func_2(~0u);
}

fn func_1(arg_0: f32, arg_1: vec3<u32>) -> Struct_1 {
    global0 = func_4(func_2(arg_1.x), arg_1);
    global0 = Struct_1(global0.a, countOneBits(~select(select(vec4<i32>(79388i, u_input.a, 0i, -1i), global0.b, true), reverseBits(global0.b), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), true))));
    var var_0 = true;
    var var_1 = min(min(~_wgslsmith_dot_vec4_i32(vec4<i32>(global0.b.x, u_input.a, 62055i, u_input.a) >> (vec4<u32>(arg_1.x, arg_1.x, 0u, 44891u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(-66669i, 1i, global0.b.x, 27501i), vec4<i32>(u_input.a, 60338i, global0.b.x, 0i))), ~u_input.a), u_input.a);
    var_1 = -_wgslsmith_mult_i32(firstLeadingBit(-4685i), _wgslsmith_div_i32(global0.b.x, firstLeadingBit(u_input.a)));
    return func_2(1u);
}

fn func_5(arg_0: Struct_1) -> i32 {
    let var_0 = 0u;
    var var_1 = Struct_2(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -309f) * _wgslsmith_div_f32(-762f, 1499f)), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0, 75892u, 7468u) << (vec3<u32>(4294967295u, 46822u, 4294967295u) % vec3<u32>(32u)), vec3<u32>(var_0, var_0, var_0)), vec3<u32>(var_0 | 4294967295u, ~4294967295u, ~72220u))).b.x, any(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), false), false)), ~(~(~54375u)), all(select(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(1u > var_0, select(true, false, false), true, select(true, false, false)), vec4<bool>(var_0 != var_0, true, any(vec3<bool>(true, false, false)), true))), _wgslsmith_dot_vec4_u32(countOneBits(firstLeadingBit(vec4<u32>(var_0, var_0, var_0, var_0))), vec4<u32>(_wgslsmith_mod_u32(var_0, var_0), 0u | var_0, 0u, var_0 >> (var_0 % 32u))) > var_0);
    var var_2 = Struct_2(-firstTrailingBit(var_1.a), ~_wgslsmith_sub_u32(var_1.c, var_1.c >> (0u % 32u)) <= (~(~6784u) & var_1.c), var_1.c, 1u == ~var_0, var_1.c != _wgslsmith_mult_u32(firstTrailingBit(47810u), var_0));
    let var_3 = ~(~(~(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.c, var_0), vec2<u32>(4294967295u, 3974u)) & 32000u)));
    let var_4 = func_2(firstLeadingBit(var_1.c));
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(abs(firstTrailingBit(-1i) >> (0u % 32u)), -func_5(func_1(global1[_wgslsmith_index_u32(60906u, 20u)], vec3<u32>(41357u, 100612u, 85108u))), -u_input.a >> (4294967295u % 32u)), global0.b.wxz & (global0.b.xzy << (~min(vec3<u32>(23219u, 453u, 1u), vec3<u32>(4294967295u, 5984u, 1u)) % vec3<u32>(32u))));
    let var_1 = select(~abs(vec2<u32>(0u, 12646u)), func_3().wz, any(vec4<bool>(true, true, true, true))) | ~_wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, 0u), vec2<u32>(~60433u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 68221u), vec3<u32>(0u, 82532u, 1u))));
    let var_2 = _wgslsmith_mod_u32(4294967295u, 1u);
    let var_3 = !vec4<bool>(false, false, false, !all(vec3<bool>(true, true, true)));
    var var_4 = Struct_2(countOneBits(u_input.a), var_3.x | all(select(select(vec4<bool>(false, var_3.x, var_3.x, var_3.x), var_3, true), select(var_3, vec4<bool>(var_3.x, var_3.x, true, true), var_3), !var_3.x)), var_2, !var_3.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, max(_wgslsmith_add_u32(31567u, ~(~var_1.x)), var_4.c));
}

