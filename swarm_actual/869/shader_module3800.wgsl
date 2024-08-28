struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec3<bool>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

var<private> global1: i32 = -69879i;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_1) -> u32 {
    let var_0 = true;
    var var_1 = _wgslsmith_sub_vec3_u32(select(select(select(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.e), vec3<u32>(arg_1.c.x, 1684u, 38891u)), vec3<u32>(u_input.d.x, 18575u, 54886u), vec3<bool>(var_0, true, arg_3.a.x)), arg_3.c.xwx, false), ~_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(arg_1.c.wyw, vec3<u32>(arg_3.c.x, 57298u, arg_3.c.x)), countOneBits(vec3<u32>(37457u, 68403u, 1u))), true), ~_wgslsmith_clamp_vec3_u32(reverseBits(arg_3.c.zxy), arg_1.c.zxx, vec3<u32>(arg_3.c.x, arg_1.c.x, 4294967295u) | arg_2));
    var var_2 = arg_0;
    return ~var_1.x;
}

fn func_2() -> Struct_1 {
    var var_0 = abs(~abs(~func_3(true, Struct_1(vec4<bool>(true, false, false, false), vec2<f32>(628f, 1201f), vec4<u32>(u_input.d.x, 0u, 4294967295u, 4294967295u), vec3<bool>(false, false, false), -23008i), vec3<u32>(0u, u_input.e, 1u), Struct_1(vec4<bool>(true, false, true, true), vec2<f32>(-1184f, -184f), vec4<u32>(4294967295u, 69739u, u_input.d.x, 44727u), vec3<bool>(false, true, true), u_input.b))));
    let var_1 = any(select(vec4<bool>(all(vec3<bool>(true, true, true)), false, select(true, true, true), true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), true), vec4<bool>(false, true, true, true)), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, true, true), true)));
    var var_2 = ~(~(~(~vec2<i32>(u_input.b, 2147483647i)))) >> ((vec2<u32>(~(~1u), _wgslsmith_sub_u32(u_input.a, 19236u)) << (_wgslsmith_clamp_vec2_u32(~_wgslsmith_mult_vec2_u32(u_input.d, vec2<u32>(0u, 132180u)), vec2<u32>(u_input.a, u_input.d.x), u_input.d) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_3 = Struct_1(vec4<bool>(!var_1 || var_1, true, !var_1, -42267i == global0[_wgslsmith_index_u32(abs(u_input.d.x) >> (~u_input.e % 32u), 9u)]), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(step(1431f, 1000f)), -413f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-885f, -1525f)))), vec4<u32>(1u, ~46384u, ~reverseBits(u_input.a >> (u_input.d.x % 32u)), ~(~30154u) ^ ~u_input.a), !select(select(!vec3<bool>(true, var_1, false), select(vec3<bool>(true, var_1, var_1), vec3<bool>(false, true, false), var_1), vec3<bool>(var_1, true, false)), select(select(vec3<bool>(var_1, var_1, false), vec3<bool>(var_1, var_1, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, var_1, var_1), vec3<bool>(false, true, true), true), select(vec3<bool>(var_1, true, true), vec3<bool>(var_1, false, var_1), vec3<bool>(true, var_1, var_1))), var_1), _wgslsmith_add_i32(~u_input.b, -47348i));
    var var_4 = abs(_wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(u_input.c | var_3.c.x, _wgslsmith_dot_vec3_u32(var_3.c.yzz, var_3.c.wyy))), u_input.d));
    return Struct_1(!select(select(vec4<bool>(var_1, false, true, var_1), var_3.a, true && var_3.d.x), vec4<bool>(var_3.a.x, false, var_3.d.x, all(var_3.d)), var_3.a), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(var_3.b)), var_3.b, any(var_3.d))), min(~var_3.c, var_3.c), select(var_3.a.zwz, vec3<bool>(false, select(true, all(var_3.d), select(true, true, var_1)), true), var_3.a.yww), ~_wgslsmith_add_i32(_wgslsmith_sub_i32(min(var_2.x, global0[_wgslsmith_index_u32(1u, 9u)]), 42990i), (var_2.x >> (u_input.a % 32u)) & -global0[_wgslsmith_index_u32(57149u, 9u)]));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    global0 = array<i32, 9>();
    let var_1 = var_0;
    var var_2 = min(min(~(-vec2<i32>(13192i, var_0.e)), _wgslsmith_mult_vec2_i32(vec2<i32>(-6110i, global0[_wgslsmith_index_u32(10171u, 9u)]), _wgslsmith_mod_vec2_i32(vec2<i32>(var_1.e, -1i), vec2<i32>(var_0.e, -25397i)))), abs(_wgslsmith_add_vec2_i32(vec2<i32>(-41697i, global0[_wgslsmith_index_u32(var_1.c.x, 9u)]), _wgslsmith_mod_vec2_i32(vec2<i32>(10682i, var_0.e), vec2<i32>(var_1.e, var_1.e))))) ^ _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(reverseBits(max(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], -2147483647i), vec2<i32>(3568i, 8565i))), vec2<i32>(_wgslsmith_clamp_i32(var_0.e, u_input.b, -1i), var_1.e)), vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(1u, 9u)]));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.b.x)) - _wgslsmith_f_op_f32(trunc(-170f))) * -658f) - _wgslsmith_f_op_f32(var_0.b.x + 353f)) * _wgslsmith_f_op_f32(select(1000f, var_0.b.x, (i32(-1i) * -2968i) < (1i & ~var_1.e))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~abs(select(-2147483647i, ~select(1i, u_input.b, true), true));
    let var_0 = func_1();
    let var_1 = var_0.a;
    global0 = array<i32, 9>();
    let var_2 = var_0.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(func_2().c.zxw | var_0.c.xzx), ~abs(firstLeadingBit(vec4<u32>(u_input.a, var_0.c.x, 0u, 91609u))), u_input.d, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_0.b * var_0.b))), _wgslsmith_f_op_vec2_f32(var_0.b - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.b, var_0.b, var_0.a.x)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(495f, var_2))))))));
}

