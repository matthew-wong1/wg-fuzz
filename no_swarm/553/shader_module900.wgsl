struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec4<i32>(-9611i, 22927i, 9832i, -30691i), vec2<bool>(false, true)), vec2<bool>(true, false), Struct_1(vec4<i32>(2147483647i, 1i, -1i, i32(-2147483648)), vec2<bool>(false, false)), vec2<u32>(4294967295u, 1u));

var<private> global1: Struct_1 = Struct_1(vec4<i32>(-1i, -7829i, -1301i, 1i), vec2<bool>(false, false));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    global0 = Struct_3(global0.a, vec2<bool>(any(!select(vec4<bool>(global0.a.b.x, true, global0.c.b.x, false), vec4<bool>(global0.b.x, global0.b.x, true, global1.b.x), vec4<bool>(false, global1.b.x, global1.b.x, true))), global1.b.x), global0.c, global0.d);
    let var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(288f - 1581f), _wgslsmith_f_op_f32(ceil(-199f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(236f)))), _wgslsmith_f_op_f32(-494f - _wgslsmith_f_op_f32(965f + -322f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1302f, _wgslsmith_f_op_f32(f32(-1f) * -1848f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2042f, -257f))) * _wgslsmith_f_op_f32(f32(-1f) * -245f)))), -429f);
    global1 = Struct_1(firstLeadingBit(global0.c.a ^ (vec4<i32>(-1i, global0.a.a.x, 27441i, global0.c.a.x) | global1.a)), select(!vec2<bool>(!global0.b.x, any(vec4<bool>(global0.c.b.x, false, global1.b.x, false))), global0.a.b, global0.a.b.x));
    global1 = global0.a;
    var var_1 = min(~(arg_0.x | _wgslsmith_div_i32(global0.a.a.x, -65794i)), 11648i) >> (~u_input.a.x % 32u);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-577f))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_3(arg_1, vec2<bool>(all(select(vec4<bool>(arg_1.b.x, global0.b.x, global1.b.x, global1.b.x), select(vec4<bool>(global0.b.x, false, false, global0.a.b.x), vec4<bool>(global1.b.x, true, true, global1.b.x), vec4<bool>(global0.b.x, global0.c.b.x, true, global1.b.x)), vec4<bool>(global0.b.x, arg_1.b.x, arg_1.b.x, false))), any(global0.c.b)), Struct_1(~_wgslsmith_add_vec4_i32(vec4<i32>(-32749i, global0.c.a.x, -12721i, arg_0.x), ~arg_0), !select(select(vec2<bool>(false, true), global1.b, vec2<bool>(arg_1.b.x, global0.b.x)), vec2<bool>(false, true), select(vec2<bool>(global1.b.x, arg_1.b.x), global0.b, global1.b))), ~(~vec2<u32>(_wgslsmith_div_u32(82574u, 1u), 4294967295u ^ u_input.a.x)));
    global1 = global0.c;
    global0 = var_0;
    let var_1 = global1.a.yzy;
    let var_2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-871f * 161f), 871f)), _wgslsmith_f_op_f32(func_3(select(global1.a.wxy << (u_input.a.ywz % vec3<u32>(32u)), vec3<i32>(35583i, 60545i, 0i), vec3<bool>(true, true, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(383f)) + 138f));
    return var_0.c;
}

fn func_1() -> vec4<i32> {
    global0 = Struct_3(func_2(global1.a ^ ~(global0.a.a ^ vec4<i32>(-2147483647i, global1.a.x, global0.a.a.x, global0.c.a.x)), Struct_1(global1.a, global0.c.b)), global1.b, global0.a, vec2<u32>(~58907u, firstTrailingBit(global0.d.x)));
    global1 = func_2(~vec4<i32>(_wgslsmith_mult_i32(-17461i, -1i), -2147483647i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-2147483647i, global1.a.x, 16743i, global1.a.x)), _wgslsmith_div_vec4_i32(vec4<i32>(global1.a.x, global1.a.x, 7309i, global1.a.x), global1.a)), -global1.a.x | (global0.a.a.x & -1i)), func_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.a.a.x | global1.a.x, global0.a.a.x, -1i, ~20364i), vec4<i32>(firstLeadingBit(global1.a.x), -9407i, reverseBits(-28927i), 0i >> (u_input.b.x % 32u)), ~firstTrailingBit(global1.a)), func_2(firstTrailingBit(vec4<i32>(-1i, 9398i, 139456i, global1.a.x) & vec4<i32>(global1.a.x, 0i, global0.a.a.x, global0.c.a.x)), global0.c)));
    global0 = Struct_3(Struct_1(firstLeadingBit(~select(vec4<i32>(global0.c.a.x, global1.a.x, global0.a.a.x, 1i), vec4<i32>(global1.a.x, global1.a.x, global1.a.x, global0.a.a.x), vec4<bool>(global1.b.x, true, false, global0.a.b.x))), global1.b), !select(vec2<bool>(global1.b.x, false), global1.b, false), global0.c, ~(~vec2<u32>(~u_input.a.x, 4294967295u)));
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-812f * -826f) - _wgslsmith_f_op_f32(-1f)), -838f, _wgslsmith_f_op_f32(func_3(global1.a.xxy)));
    var var_1 = !vec3<bool>(global1.b.x, !(!(!global0.a.b.x)), ~(41785u | global0.d.x) == _wgslsmith_div_u32(select(4294967295u, 1u, true), global0.d.x));
    return abs(reverseBits(reverseBits(vec4<i32>(global0.c.a.x, -2593i, global0.c.a.x, global0.c.a.x))) ^ (vec4<i32>(~1i, abs(global0.c.a.x), 28345i | global1.a.x, min(0i, global1.a.x)) | (func_2(global1.a, Struct_1(vec4<i32>(2147483647i, global0.a.a.x, global1.a.x, global1.a.x), global1.b)).a | _wgslsmith_div_vec4_i32(global0.c.a, global0.c.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_vec4_i32(global1.a, ~func_1()), !global0.a.b), Struct_1(func_2(~(vec4<i32>(global1.a.x, 14273i, global1.a.x, global1.a.x) & vec4<i32>(global1.a.x, 2147483647i, global1.a.x, global1.a.x)), Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(global1.a.x, global1.a.x, global0.a.a.x, global1.a.x), global1.a), vec2<bool>(false, false))).a, vec2<bool>(true, true)), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, firstTrailingBit(global0.a.a.x), _wgslsmith_clamp_i32(global1.a.x, global0.a.a.x, -2147483647i) | (-22008i & global1.a.x), -1i), func_2(_wgslsmith_sub_vec4_i32(func_1(), func_2(vec4<i32>(43867i, -24554i, global1.a.x, 2147483647i), global0.c).a), func_2(vec4<i32>(global0.c.a.x, global0.a.a.x, global0.c.a.x, global0.a.a.x), global0.c)).a));
    let var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(global0.d.x, 10495u) & u_input.b.x, min(_wgslsmith_add_u32(110365u, 36418u), global0.d.x)) << (select(u_input.a.zw << ((u_input.b | vec2<u32>(56923u, u_input.a.x)) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(global0.d ^ global0.d, u_input.b), !global0.b) % vec2<u32>(32u)), max(_wgslsmith_mod_vec2_u32(~abs(global0.d), abs(_wgslsmith_mod_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, global0.d.x)))), abs(~(global0.d << (global0.d % vec2<u32>(32u))))));
    var var_2 = ~var_1;
    let var_3 = _wgslsmith_clamp_vec2_i32(firstTrailingBit(global1.a.yy >> (global0.d % vec2<u32>(32u))), func_1().wx, _wgslsmith_add_vec2_i32(~global1.a.yw, var_0.b.a.zz));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1021f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2393f, -1033f, false))), _wgslsmith_f_op_f32(1364f + _wgslsmith_f_op_f32(-868f * -1478f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1374f)) - -393f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1221f, 886f, 478f, 1180f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1967f, 372f, -621f, -283f))))), false)));
    let var_5 = max(global0.d.x, 4294967295u);
    let var_6 = vec4<u32>(1u, firstLeadingBit(1u & firstTrailingBit(abs(63468u))), 4294967295u, u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(6888i & ~global0.c.a.x, _wgslsmith_add_vec3_i32(~(~(~vec3<i32>(-2147483647i, global0.c.a.x, -1i))), global1.a.xwz), vec3<i32>(_wgslsmith_sub_i32(16522i, func_1().x | var_0.a.a.x), countOneBits(global1.a.x) >> (var_6.x % 32u), firstLeadingBit(~firstLeadingBit(-1i))), global0.c.a.zx);
}

