struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec2<i32>,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(271f, -9156i, vec4<f32>(-374f, -872f, -1562f, -119f), 366f, vec4<bool>(false, false, false, true)), Struct_1(1619f, 12143i, vec4<f32>(-1000f, 838f, -365f, 234f), -212f, vec4<bool>(false, false, false, false)), Struct_1(-775f, -17823i, vec4<f32>(-1000f, 421f, -366f, 193f), 528f, vec4<bool>(true, false, true, true)));

var<private> global3: vec3<i32>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec3<bool>) -> vec4<i32> {
    global1 = vec4<i32>(-6274i, global3.x >> (1u % 32u), -2147483647i, u_input.a);
    let var_0 = Struct_5(global2[_wgslsmith_index_u32(arg_0, 3u)], arg_1.x);
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.a.c.x)), 577f), firstLeadingBit(abs(firstLeadingBit(0i))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_0.a.c - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a.c))))), var_0.a.c.x, var_0.a.e);
    var_1 = Struct_1(531f, 71886i, var_0.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1542f, var_1.c.x)) - var_0.a.c.x)), vec4<bool>(true, var_0.a.e.x, all(var_1.e) || !all(var_0.a.e.wx), !(!var_0.a.e.x)));
    let var_2 = firstLeadingBit(global1.x);
    return _wgslsmith_sub_vec4_i32(select(~vec4<i32>(var_2, var_2, reverseBits(var_2), -2147483647i << (arg_0 % 32u)), _wgslsmith_clamp_vec4_i32(~firstTrailingBit(vec4<i32>(var_0.a.b, 1i, -14226i, global3.x)), vec4<i32>(var_0.a.b << (1u % 32u), -u_input.a, global3.x, firstLeadingBit(-921i)), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, 2147483647i, 2147483647i, var_2), vec4<i32>(u_input.a, var_2, 2147483647i, var_1.b)))), vec4<bool>(var_1.e.x, var_1.e.x, !var_1.e.x, !var_0.b)), vec4<i32>(abs(global3.x), ~countOneBits(_wgslsmith_sub_i32(-2147483647i, global1.x)), var_0.a.b, var_0.a.b));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_4) -> i32 {
    let var_0 = Struct_3(all(arg_1.a.e.wx), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.d + arg_1.a.a)), _wgslsmith_f_op_f32(1505f + _wgslsmith_f_op_f32(778f - -2257f)), _wgslsmith_f_op_f32(222f - _wgslsmith_f_op_f32(exp2(arg_1.a.c.x))), arg_1.a.a)), vec2<i32>(-1i, -global1.x), _wgslsmith_add_vec4_i32(~abs(vec4<i32>(global3.x, global1.x, 1i, global3.x)), func_3(arg_0.x, vec3<bool>(select(arg_1.a.e.x, arg_1.a.e.x, true), !arg_1.a.e.x, any(arg_1.a.e)))), Struct_1(_wgslsmith_f_op_f32(max(arg_1.a.a, _wgslsmith_f_op_f32(-arg_1.a.a))), arg_1.a.b, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.d)), arg_1.a.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-677f * -2805f) + arg_1.a.d), arg_1.a.d), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(306f * _wgslsmith_f_op_f32(arg_1.a.c.x + -310f)))), select(select(!arg_1.a.e, select(vec4<bool>(arg_1.a.e.x, arg_1.a.e.x, arg_1.a.e.x, false), arg_1.a.e, arg_1.a.e), arg_1.a.c.x > arg_1.a.c.x), vec4<bool>(true, arg_1.a.e.x, true, !arg_1.a.e.x), vec4<bool>(!arg_1.a.e.x, true && arg_1.a.e.x, arg_0.x == 48817u, arg_1.a.e.x))));
    global1 = -reverseBits(vec4<i32>(-1971i, _wgslsmith_dot_vec3_i32(~var_0.d.xxw, var_0.d.xxx), 25525i, ~(u_input.a >> (0u % 32u))));
    let var_1 = arg_0.x;
    global0 = ~(~(~global3.x)) > 1i;
    global1 = max(vec4<i32>(_wgslsmith_sub_i32(var_0.d.x & -1i, firstLeadingBit(u_input.a)) ^ -(~40984i), 0i, var_0.c.x << (~arg_0.x % 32u), ~countOneBits(-arg_1.a.b)), var_0.d);
    return -global3.x;
}

fn func_1() -> f32 {
    global1 = (vec4<i32>(u_input.a, _wgslsmith_dot_vec3_i32(select(global1.wzz, vec3<i32>(-48076i, 2147483647i, u_input.a), vec3<bool>(true, false, false)), _wgslsmith_div_vec3_i32(global1.zyw, global1.zwz)), ~global3.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -29314i, 26115i, 2147483647i), vec4<i32>(-57547i, global3.x, -27914i, -8954i)) & 45867i) | vec4<i32>(global1.x >> (1u % 32u), global1.x, abs(global1.x) | func_2(vec4<u32>(47731u, 102564u, 0u, 1u), Struct_4(global2[_wgslsmith_index_u32(765u, 3u)], vec3<i32>(u_input.a, -2147483647i, -60650i))), global3.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(43565u, 84786u), vec2<u32>(79262u, 22140u)) % 32u))) | select(-vec4<i32>(-global1.x, 1i, u_input.a, ~8559i), ~vec4<i32>(~u_input.a, reverseBits(1i), -global1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(33027i, global3.x, -2147483647i, 0i), vec4<i32>(0i, -1i, u_input.a, global1.x))), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true), true));
    global2 = array<Struct_1, 3>();
    var var_0 = Struct_4(global2[_wgslsmith_index_u32(min(~(~35705u), 1u), 3u)], ~vec3<i32>(global3.x, firstLeadingBit(1i), -1i));
    var var_1 = Struct_5(global2[_wgslsmith_index_u32(1u, 3u)], var_0.a.e.x);
    var var_2 = var_0.a.b;
    return var_0.a.d;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 3>();
    var var_0 = vec3<u32>(abs(54321u), 13112u, min(0u, 0u));
    let var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(func_1()), select(global1.x, -firstTrailingBit(global3.x), select(true, true, all(vec4<bool>(false, true, false, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(120f, 931f, 580f, -815f), vec4<f32>(2007f, 311f, -606f, -950f), vec4<bool>(false, false, false, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(972f, 1517f, 640f, 335f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1264f, -450f, -1634f, -1000f), vec4<f32>(486f, -1094f, -2297f, -1000f), false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1020f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(399f - 418f))), select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false)), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), false), vec4<bool>(true, false, true, false), true), !all(vec2<bool>(true, true)))), abs(~global1.xzx));
    global3 = ~vec3<i32>((countOneBits(-2147483647i) << (_wgslsmith_mult_u32(var_0.x, var_0.x) % 32u)) >> (_wgslsmith_clamp_u32(min(var_0.x, var_0.x), var_0.x, ~var_0.x) % 32u), _wgslsmith_sub_i32(-1i, -15079i) ^ u_input.a, -1i);
    var var_2 = var_0.yy;
    global3 = min(_wgslsmith_sub_vec3_i32(var_1.b, vec3<i32>(17697i, 38731i, global3.x)), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(global1.xzy, vec3<i32>(-2147483647i, u_input.a, global1.x), firstLeadingBit(var_1.b)), _wgslsmith_mod_vec3_i32(global1.yww, ~func_3(var_2.x, var_1.a.e.zzy).zyx)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(877f + _wgslsmith_f_op_f32(579f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1182f)))))), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(1i, 0i, 1i, -32497i) & vec4<i32>(global1.x, global3.x, 5027i, u_input.a)), -reverseBits(vec4<i32>(2147483647i, u_input.a, -29828i, 2147483647i))), _wgslsmith_mod_vec4_i32(func_3(var_2.x, var_1.a.e.ywx), _wgslsmith_sub_vec4_i32(vec4<i32>(global3.x, var_1.b.x, 2147483647i, global1.x), vec4<i32>(-1i, u_input.a, global1.x, global3.x)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(1i, global1.x, u_input.a, global3.x), vec4<i32>(-1i, global1.x, var_1.a.b, u_input.a)))));
}

