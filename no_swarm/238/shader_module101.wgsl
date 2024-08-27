struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -469f;

var<private> global1: bool;

var<private> global2: vec3<u32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> vec2<bool> {
    global2 = _wgslsmith_mult_vec3_u32(~vec3<u32>((global2.x & arg_0.c) << ((13445u ^ global2.x) % 32u), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, arg_0.c), vec4<u32>(u_input.a.x, global2.x, u_input.a.x, u_input.c) | vec4<u32>(arg_0.c, 0u, 9874u, 23296u))), vec3<u32>(_wgslsmith_clamp_u32(u_input.a.x, reverseBits(global2.x), ~103661u), _wgslsmith_add_u32(0u, global2.x) << (4294967295u % 32u), 76155u));
    global0 = 1000f;
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1099f))) - 1473f) * 154f), _wgslsmith_f_op_f32(ceil(-1667f)));
    let var_1 = arg_0;
    global1 = var_1.a.x < -max(var_1.b, 1i);
    return arg_1;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: bool, arg_3: bool) -> bool {
    let var_0 = abs(-(vec3<i32>(countOneBits(-52131i), u_input.b, 2147483647i) ^ vec3<i32>(24396i, u_input.b, ~45990i)));
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(127f, arg_1, 603f, arg_1)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(303f, arg_1, 614f, 714f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-366f, -1014f, arg_1, arg_1))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1, -201f, arg_1, arg_1), vec4<f32>(arg_1, 993f, 1003f, arg_1))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(612f, 553f, arg_1, 366f))))))));
    global1 = false;
    global2 = vec3<u32>(u_input.c, ~76567u, ~global2.x);
    let var_2 = Struct_1(var_0, -abs(select(select(u_input.b, u_input.b, arg_3), min(0i, u_input.b), func_1(Struct_1(vec3<i32>(16097i, var_0.x, var_0.x), u_input.b, 1u), vec2<bool>(arg_3, false)).x)), ~(~arg_0));
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> bool {
    global2 = ~vec3<u32>(33353u, _wgslsmith_sub_u32(66058u, 37033u), reverseBits(arg_2.c));
    let var_0 = vec4<u32>(~arg_2.c, 39068u, ~(38801u << (abs(global2.x) % 32u)), 13458u | min(~(~50402u), (global2.x & global2.x) ^ ~0u));
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(143f, _wgslsmith_f_op_f32(2517f * 1f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1617f, 455f) - vec2<f32>(329f, -1717f)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-156f, 2224f)))), vec2<f32>(1f, 1f), vec2<bool>(true, true))))));
    var var_2 = arg_1;
    var var_3 = Struct_1(-vec3<i32>((22787i >> (u_input.a.x % 32u)) << ((var_2.c << (7182u % 32u)) % 32u), _wgslsmith_dot_vec2_i32(var_2.a.yy, vec2<i32>(arg_1.a.x, -12490i)), (arg_2.b << (63466u % 32u)) >> (5517u % 32u)), arg_3, _wgslsmith_add_u32(var_0.x >> (firstLeadingBit(68827u) % 32u), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(22787u, global2.x), firstLeadingBit(u_input.a), max(u_input.a, vec2<u32>(16708u, 1u))), vec2<u32>(~var_0.x, _wgslsmith_mod_u32(arg_2.c, 4294967295u)))));
    return true;
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: u32, arg_3: vec3<i32>) -> i32 {
    let var_0 = Struct_1(vec3<i32>(-(i32(-1i) * -96793i), _wgslsmith_dot_vec3_i32(arg_3, vec3<i32>(min(63575i, u_input.b), arg_3.x, u_input.b)), firstLeadingBit(_wgslsmith_div_i32(arg_3.x, 42309i)) ^ (_wgslsmith_clamp_i32(2147483647i, arg_3.x, u_input.b) & -u_input.b)), ~1i, global2.x);
    global2 = vec3<u32>(~1u, max(var_0.c, select(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4735u, 1u), firstTrailingBit(vec3<u32>(global2.x, global2.x, u_input.a.x))), var_0.c, all(vec2<bool>(true, true)))), _wgslsmith_div_u32(_wgslsmith_sub_u32(11260u, _wgslsmith_mult_u32(14312u, arg_2 | 31129u)), _wgslsmith_mult_u32(var_0.c, 66721u)));
    global1 = arg_0.x;
    global0 = -109f;
    var var_1 = !select(vec4<bool>(arg_1, !arg_1 | true, !(arg_1 || false), select(false, arg_0.x, false) && arg_1), select(vec4<bool>(true, arg_0.x, true, true), select(select(vec4<bool>(arg_1, true, arg_1, arg_0.x), vec4<bool>(arg_1, arg_0.x, arg_0.x, arg_0.x), arg_0.x), !vec4<bool>(arg_1, true, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true)), any(vec3<bool>(arg_1, false, arg_1)) || true), !(!select(vec4<bool>(arg_0.x, arg_0.x, arg_1, true), vec4<bool>(false, false, arg_0.x, arg_1), vec4<bool>(arg_0.x, arg_1, arg_0.x, true))));
    return min(firstLeadingBit(_wgslsmith_mult_i32(20407i, 23074i)), select(var_0.b, var_0.b, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 1i), vec2<i32>(u_input.b, u_input.b)), 0i, -2147483647i) << (vec3<u32>(27499u, ~u_input.a.x, 1u) % vec3<u32>(32u))), max(_wgslsmith_clamp_i32(u_input.b, _wgslsmith_mult_i32(-1i, _wgslsmith_mult_i32(-2147483647i, u_input.b)), u_input.b), -1i), 1u);
    global2 = select(vec3<u32>(reverseBits(u_input.c), (_wgslsmith_dot_vec4_u32(vec4<u32>(19206u, global2.x, 354u, global2.x), vec4<u32>(0u, 58166u, 0u, u_input.c)) & _wgslsmith_div_u32(53948u, 1u)) ^ 27490u, 992u), vec3<u32>(select(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 37448u, 9207u) & vec3<u32>(var_0.c, 76429u, 7510u), _wgslsmith_div_vec3_u32(vec3<u32>(10866u, var_0.c, 8696u), vec3<u32>(11507u, var_0.c, global2.x))), _wgslsmith_div_u32(4294967295u, u_input.c) | u_input.a.x, !all(vec2<bool>(true, true))), _wgslsmith_mult_u32(~(~0u), 1u), 4294967295u), all(select(func_1(Struct_1(vec3<i32>(-1i, var_0.b, var_0.a.x), -24459i, global2.x), select(vec2<bool>(true, true), vec2<bool>(true, true), false)), vec2<bool>(true, true), true)));
    global1 = true & !(!func_2(u_input.a.x, 2200f, select(true, false, false), true));
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-139f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-903f + 1720f) + -1309f))))));
    var_0 = Struct_1(firstLeadingBit(-vec3<i32>(-var_0.b, var_0.b, min(0i, var_0.a.x))), func_4(func_1(Struct_1(vec3<i32>(-40813i, -33864i, var_0.b), var_0.b, u_input.a.x ^ global2.x), vec2<bool>(false, func_3(Struct_1(vec3<i32>(-4481i, 22205i, u_input.b), -62252i, var_0.c), Struct_1(var_0.a, u_input.b, 68861u), Struct_1(vec3<i32>(-1i, 32019i, var_0.b), u_input.b, 46619u), u_input.b))), _wgslsmith_f_op_f32(select(-1809f, -136f, u_input.b <= 1i)) > -1199f, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.a, _wgslsmith_mod_vec2_u32(global2.yy, vec2<u32>(global2.x, 31898u))), min(max(56318u, 22593u), global2.x >> (4294967295u % 32u))), select(var_0.a, max(vec3<i32>(u_input.b, u_input.b, 0i), vec3<i32>(u_input.b, u_input.b, var_0.a.x)), select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), true))), u_input.a.x);
    global1 = all(vec2<bool>(true, true));
    global1 = true;
    var var_1 = vec2<bool>(true, true);
    let var_2 = ~select(_wgslsmith_mod_vec4_u32(firstLeadingBit(~vec4<u32>(global2.x, global2.x, global2.x, u_input.a.x)), _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(65570u, 35887u, var_0.c, 4294967295u)), ~vec4<u32>(var_0.c, global2.x, 4294967295u, 56516u), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, global2.x, 35260u), vec4<u32>(1u, var_0.c, 13448u, global2.x)))), abs(abs(vec4<u32>(0u, u_input.c, global2.x, u_input.a.x))), select(select(!vec4<bool>(false, false, var_1.x, var_1.x), vec4<bool>(true, true, false, var_1.x), vec4<bool>(true, var_1.x, var_1.x, var_1.x)), select(!vec4<bool>(true, false, var_1.x, false), select(vec4<bool>(true, false, var_1.x, true), vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, false, true)), vec4<bool>(false, var_1.x, true, false)), var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(-1i) * -vec3<i32>(1i, u_input.b, 0i)), var_0.a));
}

