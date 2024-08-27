struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: bool,
    d: bool,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
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

fn func_3(arg_0: vec3<f32>) -> u32 {
    let var_0 = ~1u;
    var var_1 = u_input.b;
    var var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(0i, -2147483647i, -2147483647i, _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), i32(-1i) * -2147483647i), ~countOneBits(17363i))), u_input.a);
    var var_3 = arg_0.zy;
    var_1 = _wgslsmith_div_vec3_i32(-_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(select(vec3<i32>(1i, -42270i, u_input.b.x), u_input.b, true), select(vec3<i32>(var_1.x, var_2.x, 7174i), vec3<i32>(var_1.x, 2147483647i, 1i), vec3<bool>(false, false, false))), min(_wgslsmith_add_vec3_i32(vec3<i32>(var_1.x, u_input.a.x, var_1.x), u_input.b), abs(u_input.a.zyx)), -min(vec3<i32>(0i, 0i, var_2.x), vec3<i32>(-1i, -2147483647i, -26486i))), var_2.wyw);
    return var_0;
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    return _wgslsmith_dot_vec3_u32(~abs(~(~vec3<u32>(4294967295u, 55776u, 0u))), min(~vec3<u32>(55441u, 1u, 0u), abs(vec3<u32>(1u, 1u, func_3(vec3<f32>(-989f, -254f, 1000f))))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = 1i;
    var_0 = countOneBits(-10015i);
    var var_1 = arg_2;
    var var_2 = arg_2.e.x;
    return arg_2;
}

fn func_1(arg_0: vec2<i32>) -> bool {
    let var_0 = func_4(~_wgslsmith_div_vec3_i32(vec3<i32>(countOneBits(-1i), arg_0.x | 2147483647i, ~(-2147483647i)), u_input.b), _wgslsmith_add_vec2_i32(arg_0, ~vec2<i32>(~arg_0.x, -9494i)), Struct_1(~(-_wgslsmith_sub_vec4_i32(u_input.a, u_input.a)), u_input.a.wzw, ~4294967295u >= ~firstTrailingBit(7467u), func_2(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, -2147483647i), u_input.a.wx)) <= min(0u, 23691u), ~vec4<u32>(1u, 1u, 1u, 1u)), ~abs(select(vec3<u32>(4294967295u, 534u, 47042u), vec3<u32>(1u, 1u, 1u), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-700f, -741f)) - _wgslsmith_f_op_f32(sign(903f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(388f - 934f))), var_0.e.x <= _wgslsmith_dot_vec2_u32(var_0.e.yy, vec2<u32>(var_0.e.x, 1u)))), _wgslsmith_f_op_f32(-2155f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1602f * 225f), _wgslsmith_f_op_f32(f32(-1f) * -490f)))));
    let var_2 = var_0;
    let var_3 = var_0.c;
    let var_4 = !select(!select(!vec4<bool>(false, var_0.c, false, var_3), select(vec4<bool>(true, true, false, false), vec4<bool>(var_3, var_3, true, true), var_3), vec4<bool>(var_2.d, false, var_3, false)), !select(vec4<bool>(false, var_3, var_0.d, false), !vec4<bool>(true, var_0.d, var_2.c, var_0.c), true), !(!vec4<bool>(var_2.d, false, false, true)));
    return true;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> vec4<i32> {
    return arg_2.a;
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: vec4<i32>) -> bool {
    let var_0 = func_4(arg_0.a.wwz, vec2<i32>(~_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.x, -16840i, 1i), arg_3.xzy), 1i, ~arg_0.b.x), _wgslsmith_mult_i32(0i << (~arg_0.e.x % 32u), (arg_3.x ^ -5701i) & (-9i << (arg_0.e.x % 32u)))), arg_0, vec3<u32>(76292u, 5894u, _wgslsmith_sub_u32(26747u, arg_0.e.x)));
    var var_1 = vec3<u32>(1u, _wgslsmith_mult_u32((~arg_0.e.x ^ (arg_0.e.x >> (62307u % 32u))) << (var_0.e.x % 32u), 55424u), ~1u);
    var var_2 = vec2<u32>(func_3(vec3<f32>(1f, _wgslsmith_f_op_f32(sign(1f)), 652f)), func_2(max(_wgslsmith_sub_vec2_i32(arg_0.a.xx, vec2<i32>(-7246i, arg_0.b.x)), vec2<i32>(var_0.b.x, 2147483647i))) << (_wgslsmith_mult_u32(5325u, ~(~3530u)) % 32u));
    let var_3 = var_0.a.x | select(1i, firstTrailingBit(arg_3.x), true & var_0.d);
    var_2 = vec2<u32>(10340u, 0u);
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 346f;
    var var_1 = all(vec3<bool>(false, false, select(var_0 > var_0, true, all(vec4<bool>(true, true, true, true)))));
    var_1 = func_6(Struct_1(func_5(Struct_1(u_input.a ^ u_input.a, u_input.b << (vec3<u32>(0u, 0u, 39243u) % vec3<u32>(32u)), func_1(u_input.a.yw), var_0 >= var_0, vec4<u32>(1u, 1u, 1u, 1u)), 35356i, Struct_1(u_input.a, -vec3<i32>(-2147483647i, 1i, u_input.b.x), any(vec3<bool>(false, true, true)), any(vec3<bool>(false, true, false)), vec4<u32>(1u, 1u, 1u, 1u))), vec3<i32>(u_input.b.x, i32(-1i) * -6879i, ~(-13949i)), true, true, ~vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, -407f)))) <= _wgslsmith_f_op_f32(ceil(var_0)), countOneBits(~(~13166u)) & _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(1u, 1u)), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(15865u, 0u))), countOneBits(min(0u, 4294967295u))), vec4<i32>(~min(~u_input.a.x, ~u_input.b.x), _wgslsmith_add_i32(2147483647i << (_wgslsmith_dot_vec2_u32(vec2<u32>(25426u, 32269u), vec2<u32>(4294967295u, 109111u)) % 32u), 2147483647i), ~_wgslsmith_mult_i32(u_input.b.x, u_input.b.x) >> (~max(1u, 0u) % 32u), _wgslsmith_div_i32(58357i, _wgslsmith_div_i32(u_input.b.x, u_input.b.x))));
    let var_2 = func_4(~select(~vec3<i32>(u_input.a.x, 2630i, 1i), _wgslsmith_div_vec3_i32(select(u_input.b, u_input.a.ywx, vec3<bool>(true, true, false)), u_input.b), true), select(_wgslsmith_clamp_vec2_i32(firstTrailingBit(u_input.a.xz), -abs(u_input.a.wx), ~_wgslsmith_mult_vec2_i32(u_input.b.zz, u_input.b.zy)), _wgslsmith_mult_vec2_i32(reverseBits(u_input.a.yx), vec2<i32>(2147483647i ^ u_input.a.x, min(u_input.a.x, u_input.a.x))), select(!select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true), true)), func_4(vec3<i32>(-44066i, firstTrailingBit(select(u_input.b.x, -1i, true)), ~(u_input.b.x >> (78606u % 32u))), u_input.a.xx, func_4(_wgslsmith_add_vec3_i32(u_input.a.xxw >> (vec3<u32>(1u, 4294967295u, 0u) % vec3<u32>(32u)), vec3<i32>(u_input.a.x, u_input.a.x, -1i)), u_input.a.yy, Struct_1(vec4<i32>(-1i, 11711i, -2147483647i, -2147483647i) | u_input.a, u_input.a.xwz >> (vec3<u32>(25606u, 1u, 30820u) % vec3<u32>(32u)), func_4(u_input.b, vec2<i32>(-7719i, 2147483647i), Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, u_input.b.x, -1i), u_input.b, false, true, vec4<u32>(53108u, 30924u, 1u, 4294967295u)), vec3<u32>(4199u, 1u, 0u)).c, true, vec4<u32>(1u, 1u, 1u, 1u)), select(abs(vec3<u32>(42530u, 15288u, 0u)), ~vec3<u32>(1u, 104247u, 55298u), vec3<bool>(false, false, true))), ~vec3<u32>(~4293u, 1u, 4294967295u)), ~abs(min(_wgslsmith_mult_vec3_u32(vec3<u32>(36611u, 0u, 0u), vec3<u32>(1u, 0u, 77528u)), vec3<u32>(1u, 1u, 40391u))));
    var_1 = func_1(max(~u_input.a.yx, u_input.b.xz));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(max(var_2.e.x, ~var_2.e.x)));
}

