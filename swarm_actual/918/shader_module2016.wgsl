struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(1u, 0u, 1u, 31120u), vec2<i32>(38231i, -27111i), vec3<u32>(6468u, 51979u, 1u));

var<private> global1: array<vec4<f32>, 11> = array<vec4<f32>, 11>(vec4<f32>(-386f, 368f, 2149f, 1486f), vec4<f32>(120f, 348f, -1517f, 1000f), vec4<f32>(-198f, 731f, 612f, 266f), vec4<f32>(-1717f, 1556f, -267f, -1860f), vec4<f32>(217f, 883f, 376f, 558f), vec4<f32>(524f, 1586f, -307f, 2124f), vec4<f32>(-1430f, -244f, 1420f, -365f), vec4<f32>(-984f, -223f, -195f, -470f), vec4<f32>(1092f, 1000f, -325f, 277f), vec4<f32>(-155f, -980f, -279f, 531f), vec4<f32>(-714f, -805f, 693f, 413f));

var<private> global2: vec3<f32>;

var<private> global3: array<vec4<bool>, 15>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>) -> vec4<u32> {
    global1 = array<vec4<f32>, 11>();
    var var_0 = (~global0.b.x ^ -global0.b.x) & -(_wgslsmith_add_i32(~u_input.a.x, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a)) << (83950u % 32u));
    let var_1 = vec2<bool>(arg_0, arg_0 || (arg_1.x == global2.x));
    global0 = Struct_1(select(~(vec4<u32>(u_input.c.x, global0.a.x, u_input.c.x, 43817u) ^ ~vec4<u32>(u_input.c.x, global0.c.x, global0.a.x, 17964u)), vec4<u32>(firstLeadingBit(126507u), _wgslsmith_dot_vec4_u32(~global0.a, abs(u_input.c)), ~1u, 27113u), var_1.x), _wgslsmith_sub_vec2_i32(~u_input.a.wx, select(~global0.b, ~(-vec2<i32>(u_input.b, -2147483647i)), var_1.x)), _wgslsmith_sub_vec3_u32(select(~u_input.c.wwy, vec3<u32>(u_input.c.x, 1u, u_input.c.x), vec3<bool>(true, arg_0, false)), abs(select(vec3<u32>(u_input.c.x, 45486u, u_input.c.x), vec3<u32>(global0.a.x, 86390u, u_input.c.x), var_1.x))) | ~vec3<u32>(28714u, 1u, 23054u));
    let var_2 = Struct_2(u_input.c, vec4<i32>(-1i, 24529i, select(41961i, _wgslsmith_dot_vec2_i32(u_input.a.yx ^ vec2<i32>(1i, -82944i), select(global0.b, global0.b, var_1)), !all(vec3<bool>(var_1.x, var_1.x, true))), _wgslsmith_div_i32(24324i, countOneBits(global0.b.x) | max(-1i, -1i))));
    return vec4<u32>(_wgslsmith_mult_u32(~(~0u) >> (max(countOneBits(var_2.a.x), ~u_input.c.x) % 32u), ~(global0.a.x >> (16225u % 32u)) << (5494u % 32u)), u_input.c.x, ~(reverseBits(0u) ^ firstLeadingBit(u_input.c.x)), 62976u);
}

fn func_2(arg_0: vec3<u32>) -> vec2<bool> {
    let var_0 = Struct_1(func_3(any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), _wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(u_input.c.x, 11u)] + vec4<f32>(global2.x, global2.x, 1594f, _wgslsmith_f_op_f32(-588f + -122f)))), ~u_input.a.zz >> (vec2<u32>(global0.a.x, select(26940u, min(arg_0.x, 20427u), true)) % vec2<u32>(32u)), vec3<u32>(29722u, ~(~abs(u_input.c.x)), ~global0.c.x));
    let var_1 = vec2<bool>(_wgslsmith_add_u32(3371u, 23255u) == ~_wgslsmith_dot_vec3_u32(~global0.c, ~global0.c), all(vec4<bool>(global0.b.x == var_0.b.x, all(vec2<bool>(true, true)), false, any(vec4<bool>(false, false, true, true)))) && true);
    global0 = Struct_1(countOneBits(u_input.c), firstTrailingBit(countOneBits(firstTrailingBit(abs(vec2<i32>(0i, 2147483647i))))), vec3<u32>(abs(_wgslsmith_div_u32(56877u, ~1u)), 23888u, var_0.a.x));
    let var_2 = var_0;
    let var_3 = Struct_2(var_2.a, firstTrailingBit(-(~u_input.a)));
    return vec2<bool>(false, false);
}

fn func_1() -> bool {
    var var_0 = func_2(select(vec3<u32>(~_wgslsmith_mod_u32(28127u, 12842u), 1u, ~max(0u, global0.c.x)), ~vec3<u32>(~4441u, ~global0.c.x, 61602u), false));
    global0 = Struct_1(min(firstTrailingBit(vec4<u32>(u_input.c.x, _wgslsmith_add_u32(u_input.c.x, 53703u), 4294967295u, abs(50805u))), u_input.c), vec2<i32>(reverseBits(-25104i), ~_wgslsmith_dot_vec3_i32(u_input.a.yxw, u_input.a.zyx)), global0.a.wzz);
    let var_1 = !var_0.x;
    return any(select(!vec3<bool>(1679f > global2.x, all(vec2<bool>(var_1, var_1)), any(vec4<bool>(true, true, var_0.x, false))), !(!vec3<bool>(true, var_0.x, var_1)), select(vec3<bool>(var_1 & var_1, var_0.x, true), select(vec3<bool>(var_0.x, var_0.x, true), !vec3<bool>(var_1, var_1, true), !vec3<bool>(var_0.x, true, var_1)), vec3<bool>(!var_0.x, true, any(vec4<bool>(true, false, false, false))))));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.x + -462f), 927f))))));
    var var_1 = Struct_2(max(~min(~global0.a, ~vec4<u32>(0u, global0.c.x, global0.c.x, u_input.c.x)), vec4<u32>(u_input.c.x, u_input.c.x, ~11002u & u_input.c.x, ~51396u)), max(firstTrailingBit(vec4<i32>(-1i, -global0.b.x, arg_2, ~arg_2)), vec4<i32>(-(i32(-1i) * -46056i), 1i, 1i, reverseBits(9787i))));
    let var_2 = Struct_2(~(vec4<u32>(firstLeadingBit(4294967295u), ~12749u, 0u << (1u % 32u), 0u) | var_1.a), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(var_1.b, countOneBits(vec4<i32>(-17269i, u_input.b, u_input.a.x, arg_2)) & -vec4<i32>(2147483647i, -41793i, -80522i, 3801i)), var_1.b));
    var_1 = var_2;
    let var_3 = _wgslsmith_div_u32(var_1.a.x, ~reverseBits(~(~88183u)));
    return Struct_2(vec4<u32>(~(_wgslsmith_dot_vec2_u32(var_1.a.yz, vec2<u32>(var_2.a.x, var_2.a.x)) << (22523u % 32u)), _wgslsmith_sub_u32(global0.c.x, _wgslsmith_mod_u32(global0.c.x & var_2.a.x, global0.c.x << (var_1.a.x % 32u))), _wgslsmith_sub_u32(func_3(arg_1, _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(global0.c.x, 11u)])).x, ~_wgslsmith_mult_u32(var_2.a.x, 1u)), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(var_1.a.zx, vec2<u32>(u_input.c.x, var_3)), ~(var_1.a.zz << (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u))))), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(~(-10927i), _wgslsmith_div_i32(global0.b.x, -1i)), -10404i, 1i, 0i), vec4<i32>(31290i, 12870i, global0.b.x, firstTrailingBit(-2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(abs(~(abs(2147483647i) ^ u_input.a.x)), func_1(), i32(-1i) * -firstTrailingBit(1i));
    var var_1 = ~(-_wgslsmith_dot_vec3_i32(var_0.b.yzy, func_4(0i, select(false, true, false), _wgslsmith_clamp_i32(-16595i, var_0.b.x, 0i)).b.wxx));
    var_1 = global0.b.x;
    let var_2 = -7230i;
    var_1 = select(var_2, 16450i, all(vec4<bool>(func_2(max(vec3<u32>(var_0.a.x, global0.c.x, 36439u), vec3<u32>(var_0.a.x, u_input.c.x, var_0.a.x))).x, true, !any(vec4<bool>(false, false, true, true)), !any(vec4<bool>(false, true, false, true)))));
    var var_3 = var_0;
    let var_4 = func_4(_wgslsmith_mod_i32(-max(~2147483647i, -10547i), 2147483647i), func_2(min(var_3.a.yww, var_0.a.wzw)).x, var_3.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(~func_3(any(vec2<bool>(true, false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1396f, -533f, 2123f, global2.x) * global1[_wgslsmith_index_u32(var_3.a.x, 11u)]) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1788f, global2.x, global2.x, 948f))))).wwz);
}

