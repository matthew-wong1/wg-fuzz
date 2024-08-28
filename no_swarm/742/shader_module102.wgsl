struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 6> = array<vec4<bool>, 6>(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true));

var<private> global1: vec3<u32>;

var<private> global2: Struct_1 = Struct_1(true, vec3<f32>(479f, -2551f, -437f));

var<private> global3: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(false, vec3<f32>(-1053f, 393f, 838f)), Struct_1(true, vec3<f32>(-1165f, -1398f, -462f)), Struct_1(true, vec3<f32>(924f, 1333f, 1535f)), Struct_1(false, vec3<f32>(-1270f, -678f, -276f)), Struct_1(false, vec3<f32>(-788f, -2675f, 1097f)), Struct_1(false, vec3<f32>(1347f, -793f, 607f)), Struct_1(true, vec3<f32>(-674f, -489f, -235f)), Struct_1(false, vec3<f32>(-436f, -224f, -453f)), Struct_1(false, vec3<f32>(655f, 882f, 1000f)), Struct_1(true, vec3<f32>(-360f, 1694f, -528f)), Struct_1(false, vec3<f32>(-1740f, -386f, 1348f)), Struct_1(false, vec3<f32>(-1479f, 833f, -103f)), Struct_1(true, vec3<f32>(136f, 222f, -400f)), Struct_1(true, vec3<f32>(-763f, -1340f, -1355f)), Struct_1(false, vec3<f32>(589f, 551f, -1000f)), Struct_1(true, vec3<f32>(155f, 611f, 1000f)), Struct_1(false, vec3<f32>(497f, -519f, 1400f)), Struct_1(true, vec3<f32>(-1082f, -480f, -331f)), Struct_1(false, vec3<f32>(322f, -1000f, 264f)), Struct_1(false, vec3<f32>(-723f, -259f, -454f)), Struct_1(true, vec3<f32>(119f, -1296f, -858f)), Struct_1(true, vec3<f32>(-997f, 1000f, -150f)), Struct_1(false, vec3<f32>(1000f, -1000f, -775f)), Struct_1(true, vec3<f32>(-873f, 1298f, -1665f)), Struct_1(false, vec3<f32>(-1593f, 249f, 169f)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<i32> {
    global2 = global3[_wgslsmith_index_u32(firstTrailingBit(~0u), 25u)];
    var var_0 = global1.x;
    let var_1 = Struct_1(true, global2.b);
    let var_2 = true;
    let var_3 = !global2.a;
    return reverseBits(abs(vec4<i32>(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-9621i, u_input.a)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -16411i), vec2<i32>(-12580i, u_input.a))), u_input.a, 1i, -2147483647i)));
}

fn func_2() -> u32 {
    let var_0 = ~(~global1.x);
    var var_1 = -abs(_wgslsmith_mult_vec4_i32(func_3(), ~select(vec4<i32>(u_input.a, u_input.a, -62672i, -2147483647i), vec4<i32>(u_input.a, u_input.a, u_input.a, 1i), global0[_wgslsmith_index_u32(global1.x, 6u)])));
    let var_2 = _wgslsmith_sub_u32(max(select(max(4294967295u, global1.x), min(30339u, 4294967295u), global2.a), ~firstLeadingBit(global1.x)), _wgslsmith_add_u32(~1u, var_0)) | var_0;
    var_1 = vec4<i32>(~u_input.a, var_1.x, u_input.a, max(10693i, u_input.a ^ u_input.a));
    var_1 = vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(var_1.xxx, var_1.wxz) & var_1.x, func_3().x ^ _wgslsmith_sub_i32(-2147483647i, var_1.x)) & -45885i, _wgslsmith_sub_i32(_wgslsmith_div_i32(44872i, ~(-3071i)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, var_0, 17530u, 1u) | vec4<u32>(77785u, 40832u, 1u, 1u), abs(vec4<u32>(2672u, 1u, var_0, global1.x))) % 32u), u_input.a), var_1.x, reverseBits(~_wgslsmith_dot_vec2_i32(var_1.ww, var_1.wz)));
    return ~(~(~max(10316u, 121727u))) & ~(~_wgslsmith_div_u32(1u | var_0, var_2 & var_2));
}

fn func_1() -> Struct_1 {
    global2 = Struct_1(!(!(global2.a == true)), global2.b);
    var var_0 = global3[_wgslsmith_index_u32(~func_2(), 25u)];
    let var_1 = min(40519u, _wgslsmith_dot_vec3_u32(select(~(vec3<u32>(1u, global1.x, 20576u) ^ vec3<u32>(global1.x, global1.x, 36309u)), _wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(35011u, global1.x, 113573u)), select(vec3<u32>(35968u, global1.x, 10276u), vec3<u32>(87009u, 1u, 0u), vec3<bool>(false, global2.a, false)), ~vec3<u32>(36985u, 0u, global1.x)), !vec3<bool>(var_0.a, var_0.a, var_0.a)), min(reverseBits(vec3<u32>(global1.x, 1u, global1.x) >> (vec3<u32>(4294967295u, global1.x, 48064u) % vec3<u32>(32u))), vec3<u32>(~global1.x, global1.x, firstTrailingBit(4294967295u)))));
    global3 = array<Struct_1, 25>();
    let var_2 = ~(~(~global1.x));
    return global3[_wgslsmith_index_u32(103930u, 25u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global3 = array<Struct_1, 25>();
    var var_1 = Struct_1(u_input.a > _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.a, 59868i), u_input.a), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * _wgslsmith_f_op_f32(366f * -2797f))), 183f, _wgslsmith_f_op_f32(step(func_1().b.x, _wgslsmith_f_op_f32(func_1().b.x - -1000f)))));
    global1 = ~_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global1.x, global1.x, global1.x), vec3<u32>(0u, 1u, global1.x)), firstLeadingBit(vec3<u32>(971u, 6816u, global1.x))), vec3<u32>(0u, global1.x, 4294967295u) & ~vec3<u32>(1u, 4294967295u, 4294967295u)), vec3<u32>(~(1u | global1.x), ~global1.x, select(_wgslsmith_dot_vec2_u32(global1.zz, global1.zy), select(1u, 5915u, true), var_0.b.x > var_0.b.x)));
    let var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~countOneBits(vec4<u32>(32802u, 1u, 14082u, global1.x))), global1.yy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.b.x))) - global2.b.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1178f, -1950f), _wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_f32(-1089f - _wgslsmith_f_op_f32(floor(285f))))));
}

