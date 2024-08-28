struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 4>;

var<private> global1: vec4<bool>;

var<private> global2: u32 = 51430u;

var<private> global3: array<vec4<i32>, 15>;

var<private> global4: vec3<i32> = vec3<i32>(-3359i, 1i, 1i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> vec2<i32> {
    var var_0 = Struct_2(!vec4<bool>(true, global1.x, all(vec4<bool>(true, global1.x, false, global1.x)) & true, u_input.a.x >= ~4978u));
    var var_1 = true;
    var_1 = global1.x;
    let var_2 = global1.x;
    let var_3 = select(true, !any(!vec4<bool>(true, global1.x, var_0.a.x, true)), global1.x);
    return vec2<i32>(26635i, -(abs(1i) & min(~0i, _wgslsmith_clamp_i32(u_input.c.x, global4.x, u_input.b))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: i32) -> bool {
    let var_0 = select(select(vec4<bool>(global1.x, true || global1.x, global1.x, !global1.x), vec4<bool>(any(select(global1.xzx, global1.wzz, true)), global1.x, true, global1.x), !vec4<bool>(global1.x, true, true, global1.x)), !vec4<bool>(select(false, true, false), ~54578u < _wgslsmith_clamp_u32(31818u, arg_2.a.x, u_input.a.x), false, false), all(global1.ww));
    var var_1 = 2147483647i;
    global3 = array<vec4<i32>, 15>();
    var var_2 = Struct_2(var_0);
    let var_3 = global1.xwx;
    return var_0.x;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_3, arg_3: f32) -> Struct_2 {
    let var_0 = func_2();
    let var_1 = global1.yzw;
    global1 = vec4<bool>(true, false, func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3, arg_3, -834f), vec3<f32>(-995f, -739f, arg_2.c.a), arg_2.c.d)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(364f, arg_2.b.x, 782f), vec3<f32>(-790f, -2573f, 1405f))), !global1.x))), ~var_0, Struct_4(~vec3<u32>(u_input.a.x, 20201u, 4186u) >> (~vec3<u32>(u_input.a.x, 0u, 0u) % vec3<u32>(32u))), min(~1i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.b, var_0.x, u_input.b), _wgslsmith_add_i32(11441i, 1i)))), true);
    let var_2 = arg_0.a;
    global4 = vec3<i32>(-(~2147483647i), global4.x, _wgslsmith_div_i32(var_0.x, -1i));
    return arg_0;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> u32 {
    global4 = _wgslsmith_mult_vec3_i32(u_input.c.yxw, select(u_input.c.ywy, _wgslsmith_clamp_vec3_i32(-u_input.c.www, vec3<i32>(u_input.b ^ arg_2, ~arg_2, 60099i), vec3<i32>(-u_input.b, global4.x, 1i)), global1.x));
    let var_0 = global0[_wgslsmith_index_u32(max(u_input.a.x, ~_wgslsmith_mod_u32(arg_0.x, _wgslsmith_mod_u32(arg_0.x, arg_0.x))), 4u)];
    global2 = max(_wgslsmith_mod_u32(((arg_0.x ^ 7301u) | ~arg_0.x) << (~arg_0.x % 32u), ~u_input.a.x), ~_wgslsmith_sub_u32(firstLeadingBit(35110u) >> (firstTrailingBit(36811u) % 32u), ~(u_input.a.x & 85610u)));
    var var_1 = arg_1;
    global2 = _wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(0u, ~15623u, arg_0.x, ~u_input.a.x)), _wgslsmith_mod_vec4_u32(select(vec4<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(2904u, arg_0.x, arg_0.x), vec3<u32>(1u, u_input.a.x, 19522u)), u_input.a.x, 0u), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, 68358u, u_input.a.x, u_input.a.x), firstTrailingBit(vec4<u32>(0u, 22297u, u_input.a.x, 1u))), !var_1.a.x), vec4<u32>(max(arg_0.x | arg_0.x, abs(18116u)), ~abs(12706u), ~countOneBits(arg_0.x), 1u)));
    return _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, arg_0.x, u_input.a.x, 40361u) << (vec4<u32>(arg_0.x, 1u, arg_0.x, 1u) % vec4<u32>(32u)), reverseBits(vec4<u32>(arg_0.x, 5323u, 4832u, u_input.a.x))), _wgslsmith_add_u32(~arg_0.x, 1u), ~(~1u)), _wgslsmith_mod_u32(~u_input.a.x, ~u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(u_input.a.x <= 0u, true, true);
    let var_1 = Struct_4(vec3<u32>(~4294967295u, ~reverseBits(1u), ~func_4(vec3<u32>(u_input.a.x, u_input.a.x, 1u), func_1(Struct_2(vec4<bool>(false, false, false, global1.x)), Struct_1(233f, -1i, u_input.c.x, global1.zzz), global0[_wgslsmith_index_u32(u_input.a.x, 4u)], 596f), func_2().x, func_1(Struct_2(vec4<bool>(var_0.x, var_0.x, false, global1.x)), Struct_1(433f, u_input.c.x, 0i, var_0), global0[_wgslsmith_index_u32(4294967295u, 4u)], 621f))));
    global4 = u_input.c.wxy;
    global1 = select(select(vec4<bool>(true, global1.x, all(vec3<bool>(false, var_0.x, var_0.x)), select(select(true, true, var_0.x), var_0.x, !var_0.x)), !select(!vec4<bool>(false, var_0.x, var_0.x, global1.x), !vec4<bool>(false, true, true, var_0.x), true), abs(~var_1.a.x) <= abs(~37572u)), select(select(vec4<bool>(4294967295u != u_input.a.x, true, true, all(var_0.yx)), select(vec4<bool>(var_0.x, true, global1.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, true), !vec4<bool>(var_0.x, var_0.x, true, var_0.x)), vec4<bool>(!var_0.x, !var_0.x, var_0.x | true, global1.x)), select(select(func_1(Struct_2(vec4<bool>(false, true, true, false)), Struct_1(-463f, global4.x, u_input.b, vec3<bool>(var_0.x, global1.x, false)), global0[_wgslsmith_index_u32(5768u, 4u)], 749f).a, !vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(false, false, var_0.x, global1.x)), vec4<bool>(var_0.x, global1.x, !global1.x, all(vec3<bool>(false, var_0.x, var_0.x))), var_0.x), func_1(Struct_2(vec4<bool>(true, true, true, true)), Struct_1(_wgslsmith_f_op_f32(round(-577f)), -25541i, ~(-1i), var_0), global0[_wgslsmith_index_u32(~var_1.a.x, 4u)], 334f).a.x), select(!func_1(func_1(Struct_2(vec4<bool>(true, var_0.x, false, false)), Struct_1(1258f, 1i, 0i, var_0), Struct_3(global1.x, vec2<f32>(-1500f, -508f), Struct_1(210f, 32297i, u_input.b, vec3<bool>(false, global1.x, var_0.x))), 125f), Struct_1(-509f, 1i, 1i, vec3<bool>(true, var_0.x, var_0.x)), Struct_3(false, vec2<f32>(1441f, 715f), Struct_1(329f, u_input.b, u_input.c.x, vec3<bool>(var_0.x, false, false))), _wgslsmith_f_op_f32(ceil(-904f))).a, !(!vec4<bool>(false, global1.x, var_0.x, global1.x)), global1.x));
    var var_2 = ~4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-global4.x, _wgslsmith_clamp_i32(_wgslsmith_div_i32(37415i, -27192i), u_input.b >> (u_input.a.x % 32u), _wgslsmith_div_i32(-1i, u_input.c.x)), u_input.c.x | global4.x) << (vec3<u32>(~1u, u_input.a.x, 0u) % vec3<u32>(32u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(243f - _wgslsmith_f_op_f32(-632f * _wgslsmith_div_f32(-2078f, -561f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1125f))), 1076f)), all(select(func_1(Struct_2(vec4<bool>(global1.x, global1.x, global1.x, true)), Struct_1(-1000f, u_input.b, u_input.b, var_0), Struct_3(global1.x, vec2<f32>(-168f, -813f), Struct_1(-1322f, -2147483647i, global4.x, var_0)), -495f).a, vec4<bool>(false, false, false, var_0.x), global1.x || true)))), ~(select(vec4<u32>(2016u, 0u, var_1.a.x, u_input.a.x) | vec4<u32>(u_input.a.x, 39176u, var_1.a.x, var_1.a.x), select(vec4<u32>(4294967295u, var_1.a.x, var_1.a.x, 12241u), vec4<u32>(1u, var_1.a.x, u_input.a.x, var_1.a.x), vec4<bool>(var_0.x, false, false, true)), vec4<bool>(true, global1.x, global1.x, false)) ^ vec4<u32>(1u, ~u_input.a.x, ~4294967295u, 1u << (u_input.a.x % 32u))), global4.yx, -1832f);
}

