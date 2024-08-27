struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
    d: Struct_2,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(global0.a.zww + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a.yxz)) - arg_0.c.a.xxw)));
    global0 = Struct_1(global0.a, select(~vec4<i32>(global0.b.x, 1i, arg_0.d.b.d.x, u_input.b.x), global0.b, true), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.c))), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.d.x, global0.b.x, u_input.c, -4848i) >> (vec4<u32>(53733u, 32561u, 169069u, 26999u) % vec4<u32>(32u)), -vec4<i32>(-48359i, -1i, arg_0.d.a, 34268i)), countOneBits(30i) << (1u % 32u), global0.b.x, -_wgslsmith_mult_i32(26401i, global0.d.x)), -vec4<i32>(_wgslsmith_sub_i32(u_input.a, arg_0.c.d.x), countOneBits(-17521i), 1i, select(-6168i, 0i, false))));
    return vec4<u32>(max(~_wgslsmith_dot_vec2_u32(vec2<u32>(18098u, 46258u), vec2<u32>(39183u, 1u)) ^ 1u, ~_wgslsmith_mod_u32(firstTrailingBit(1u), _wgslsmith_div_u32(50754u, 67783u))), 43662u, ~1u, 16735u);
}

fn func_2() -> u32 {
    var var_0 = true;
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(round(411f)), _wgslsmith_f_op_f32(global0.a.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1043f)), _wgslsmith_f_op_f32(global0.c * global0.c)))));
    var var_3 = Struct_3(global0.d, global0.d.x, Struct_1(_wgslsmith_f_op_vec4_f32(-global0.a), -(~global0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(global0.c, -216f, var_1))))), global0.b), Struct_2(_wgslsmith_clamp_i32(abs(-5672i ^ u_input.a), u_input.c, ~0i), Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1829f, -1208f, var_2.x, -1661f)))), abs(-vec4<i32>(-26727i, -12572i, global0.d.x, -2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(183f))), global0.b >> (~vec4<u32>(54261u, 0u, 0u, 0u) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1168f + 598f), -460f))), _wgslsmith_f_op_vec3_f32(max(global0.a.zxx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.x, -708f, -632f), _wgslsmith_f_op_vec3_f32(select(global0.a.zwx, global0.a.wyz, true)), true))))));
    var var_4 = _wgslsmith_mod_i32(_wgslsmith_clamp_i32(global0.d.x, _wgslsmith_mult_i32(-u_input.d, -(~33800i)), -_wgslsmith_dot_vec3_i32(vec3<i32>(-29167i, global0.d.x, 546i), u_input.b.wzz)), 2147483647i);
    return _wgslsmith_dot_vec4_u32(~(~func_3(Struct_3(vec4<i32>(var_3.a.x, 1i, u_input.a, -39160i), u_input.a, var_3.c, Struct_2(-4209i, var_3.d.b, vec2<f32>(1000f, global0.c)), global0.a.zyz), 2147483647i)), vec4<u32>(abs(1u), select(1u, 1u >> (0u % 32u), 871f >= var_3.c.a.x), countOneBits(0u), _wgslsmith_div_u32(9903u, _wgslsmith_clamp_u32(22344u, 5653u, 1u)))) << (reverseBits(firstTrailingBit(15549u)) % 32u);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2) -> bool {
    var var_0 = -1513f;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(global0.a, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-global0.a), arg_1.b.a)), arg_0.x)), _wgslsmith_div_vec4_i32(~(-u_input.b), global0.b) >> (~(~vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2349f, -1358f))), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(-1i, _wgslsmith_sub_i32(u_input.d, 0i)), global0.d.x), firstLeadingBit(global0.d.x), arg_1.b.d.x, firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -34132i), ~vec2<i32>(u_input.d, 0i)))));
    var var_2 = ~_wgslsmith_clamp_u32(func_2(), 1u, ~85973u);
    let var_3 = vec2<bool>(!all(!arg_0.xx), arg_0.x);
    let var_4 = -22413i;
    return true && (_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(5963u, 1u)), ~max(vec2<u32>(0u, 52467u), vec2<u32>(62522u, 4294967295u))) <= 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1083f, global0.a.x, global0.c, -2745f), global0.a)), global0.a, func_1(vec3<bool>(true, true, true), Struct_2(29125i, Struct_1(global0.a, vec4<i32>(-2147483647i, 12004i, global0.b.x, 8200i), -307f, vec4<i32>(0i, global0.d.x, u_input.a, u_input.c)), vec2<f32>(1726f, 1407f))))) * vec4<f32>(_wgslsmith_div_f32(global0.c, global0.a.x), _wgslsmith_f_op_f32(-global0.c), global0.a.x, _wgslsmith_f_op_f32(abs(-1725f))))), -global0.b, _wgslsmith_f_op_f32(floor(753f)), ~(~vec4<i32>(_wgslsmith_clamp_i32(-47190i, 12566i, u_input.d), u_input.c, u_input.c, -u_input.c)));
    let var_0 = max(_wgslsmith_div_i32(min(~countOneBits(-24203i), i32(-1i) * -2147483647i), global0.b.x), u_input.c);
    var var_1 = vec2<bool>(!func_1(vec3<bool>(true, true, false), Struct_2(~u_input.b.x, Struct_1(global0.a, global0.d, -1000f, vec4<i32>(var_0, u_input.c, var_0, 0i)), _wgslsmith_f_op_vec2_f32(select(global0.a.zz, global0.a.zw, vec2<bool>(true, false))))), true);
    let var_2 = Struct_2(var_0, Struct_1(_wgslsmith_f_op_vec4_f32(global0.a * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, -752f, global0.a.x, 646f)))), _wgslsmith_mod_vec4_i32(~global0.b, vec4<i32>(-2812i, 1i, -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0, u_input.a, -848i, -2147483647i), vec4<i32>(u_input.d, 56069i, var_0, -61238i)))), _wgslsmith_div_f32(383f, -1000f), global0.b), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-244f * _wgslsmith_f_op_f32(-global0.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(565f, global0.c, false)))), -543f));
    var var_3 = Struct_3(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-75405i, ~global0.d.x), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), -var_2.b.b.zw)), i32(-1i) * -1i, global0.b.x, var_2.b.d.x), reverseBits(_wgslsmith_dot_vec4_i32(reverseBits(~var_2.b.d), var_2.b.d)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-global0.a.x), var_2.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x - var_2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -464f))), ~abs(_wgslsmith_mult_vec4_i32(u_input.b, global0.d)), _wgslsmith_f_op_f32(var_2.c.x * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_2.b.a.x, 1850f))))), -global0.d), Struct_2(1i, Struct_1(var_2.b.a, vec4<i32>(-u_input.a, var_2.b.d.x, _wgslsmith_div_i32(var_2.a, 15149i), 19641i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.b.a.x)) * _wgslsmith_div_f32(-1093f, var_2.b.a.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -6293i, u_input.d, -31688i), -var_2.b.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global0.a.wz, vec2<f32>(var_2.b.a.x, -1132f), true)) * vec2<f32>(1272f, global0.c)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.b.a.wxx) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1238f, 292f, 1319f), vec3<f32>(var_2.b.c, var_2.c.x, 491f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(var_2.a, var_2.b.d.x) | firstLeadingBit(var_0));
}

