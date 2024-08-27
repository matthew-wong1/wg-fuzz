struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 0u, 19507u);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> u32 {
    var var_0 = select(23967i, _wgslsmith_clamp_i32(reverseBits(_wgslsmith_dot_vec2_i32(~u_input.b, u_input.b)), -9778i & u_input.b.x, -min(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x), _wgslsmith_add_i32(u_input.b.x, u_input.b.x))), !arg_1.x);
    var var_1 = true;
    var_1 = arg_1.x;
    var var_2 = ~4294967295u;
    var var_3 = arg_1.x;
    return _wgslsmith_div_u32(_wgslsmith_mod_u32(arg_0.a.x, ~arg_0.a.x), ~744u) | global0.x;
}

fn func_3() -> u32 {
    global0 = u_input.a;
    let var_0 = Struct_3(u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(select(316f, -751f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -149f)), true))));
    global0 = _wgslsmith_mod_vec3_u32(~vec3<u32>((36188u | global0.x) << (_wgslsmith_mult_u32(72639u, u_input.a.x) % 32u), (global0.x << (4294967295u % 32u)) << ((var_0.a | global0.x) % 32u), global0.x), vec3<u32>(firstLeadingBit(func_2(Struct_1(vec4<u32>(4294967295u, 4937u, 1u, var_0.a), vec2<f32>(335f, -2259f)), vec4<bool>(false, true, true, false)) >> (0u % 32u)), 6131u, _wgslsmith_add_u32(12072u, ~firstTrailingBit(global0.x))));
    var var_1 = _wgslsmith_div_f32(850f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.b)), _wgslsmith_f_op_f32(max(-716f, var_0.b)))) + _wgslsmith_f_op_f32(ceil(var_0.b))));
    var var_2 = true;
    return _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, ~_wgslsmith_mult_u32(var_0.a, global0.x), ~abs(~0u), 908u), ~(~(~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, var_0.a))));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2) -> u32 {
    global0 = _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(countOneBits(57329u), ~13808u, arg_1.b.a.x << (global0.x % 32u)), ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 22163u, global0.x), u_input.a))), ~vec3<u32>(func_2(Struct_1(arg_1.c.a, arg_1.b.b), vec4<bool>(true, true, true, true)), ~_wgslsmith_div_u32(0u, 1338u), _wgslsmith_div_u32(arg_1.c.a.x, 33564u) | u_input.a.x), _wgslsmith_add_vec3_u32(vec3<u32>(~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), ~31669u, 20142u), vec3<u32>(4294967295u, ~func_3(), 26366u)));
    var var_0 = u_input.b.x;
    var_0 = u_input.b.x & _wgslsmith_mod_i32(min(reverseBits(u_input.b.x), ~1i) >> (~0u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(arg_1.a, arg_1.a), -2612i, -u_input.b.x, -364i), _wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.b.x, u_input.b.x, 1i, u_input.b.x), abs(vec4<i32>(arg_1.a, u_input.b.x, 0i, 4298i)), vec4<i32>(u_input.b.x, u_input.b.x, arg_1.a, 32219i) >> (vec4<u32>(global0.x, arg_1.c.a.x, 1u, 10533u) % vec4<u32>(32u)))));
    var var_1 = arg_1;
    global0 = ~select(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(var_1.c.a.wzz, u_input.a), vec3<u32>(arg_1.c.a.x, u_input.a.x, global0.x)) & var_1.c.a.wzx, arg_1.b.a.zzx, select(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), vec3<bool>(false, true, arg_1.e.x != -775f), true));
    return ~6171u;
}

fn func_4(arg_0: u32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(368f - 534f))), _wgslsmith_f_op_f32(sign(-1187f)))))));
    let var_1 = ~vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.b.x, -13677i, u_input.b.x), min(vec4<i32>(-1i, u_input.b.x, u_input.b.x, 5582i), vec4<i32>(u_input.b.x, -1i, u_input.b.x, -15680i))), ~u_input.b.x), u_input.b.x, ~1i);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0));
    var var_3 = vec3<u32>(arg_0, 6271u, 0u);
    var_3 = _wgslsmith_clamp_vec3_u32(u_input.a, ~(~(~(~vec3<u32>(4294967295u, 1u, global0.x)))), ~(u_input.a >> ((vec3<u32>(1u, global0.x, arg_0) >> (u_input.a % vec3<u32>(32u))) % vec3<u32>(32u))) >> (reverseBits(abs(u_input.a & vec3<u32>(0u, u_input.a.x, arg_0))) % vec3<u32>(32u)));
    return Struct_3(0u, var_0);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1) -> vec3<u32> {
    global0 = _wgslsmith_mod_vec3_u32(u_input.a, abs(~vec3<u32>(4294967295u, 10046u, 44418u) >> (u_input.a % vec3<u32>(32u)))) << (~(~(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.a, u_input.a.x, 4294967295u), arg_2.a.yxz, vec3<u32>(1u, 0u, arg_1.a)) & u_input.a)) % vec3<u32>(32u));
    var var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, ~select(i32(-1i) * -2147483647i, u_input.b.x, false)), u_input.b, u_input.b & -_wgslsmith_sub_vec2_i32(abs(u_input.b), _wgslsmith_mult_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, u_input.b.x))));
    var var_1 = arg_0;
    global0 = arg_2.a.yyw;
    var_0 = vec2<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -47756i), -u_input.b), abs(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.b.x, 14168i) | -57752i, abs(2147483647i) << (~arg_1.a % 32u), -var_0.x | 2147483647i)));
    return countOneBits(vec3<u32>(min(var_1.a, func_4(4294967295u).a), min(0u, u_input.a.x), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(global0.zx, arg_2.a.zw), ~vec2<u32>(2222u, u_input.a.x)) ^ global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a;
    global0 = vec3<u32>(_wgslsmith_dot_vec3_u32(min(vec3<u32>(_wgslsmith_add_u32(global0.x, 12404u), _wgslsmith_sub_u32(global0.x, global0.x), ~global0.x), vec3<u32>(4294967295u, global0.x, select(0u, 0u, false))), func_5(func_4(func_1(vec3<f32>(864f, -795f, 508f), Struct_2(47551i, Struct_1(vec4<u32>(global0.x, 0u, 4294967295u, u_input.a.x), vec2<f32>(1000f, 1000f)), Struct_1(vec4<u32>(u_input.a.x, 14755u, global0.x, u_input.a.x), vec2<f32>(-1000f, -1000f)), vec2<f32>(1238f, 493f), vec3<f32>(943f, 796f, -514f)))), func_4(1u), Struct_1(~vec4<u32>(1u, u_input.a.x, 4294967295u, u_input.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-852f, 1223f))))), firstTrailingBit(24866u), 15289u);
    let var_0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1000f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-416f * -755f)))));
    global0 = vec3<u32>(select(reverseBits(firstLeadingBit(global0.x)), 0u, true), u_input.a.x ^ abs(59619u), ~_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a.x, 0u), var_0));
    var var_2 = abs(_wgslsmith_dot_vec4_i32(abs(reverseBits(vec4<i32>(u_input.b.x, u_input.b.x, 7705i, u_input.b.x))), ~_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.b.x, 2147483647i, u_input.b.x), vec4<i32>(19852i, u_input.b.x, u_input.b.x, u_input.b.x)), ~vec4<i32>(u_input.b.x, -8534i, 2147483647i, 32819i))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, _wgslsmith_div_vec3_u32(vec3<u32>(97790u, abs(global0.x), 0u), firstTrailingBit(u_input.a & u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1 - 109f)))))));
}

