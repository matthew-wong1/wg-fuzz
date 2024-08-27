struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec2<u32>,
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

var<private> global0: array<i32, 17> = array<i32, 17>(15535i, -1i, -39612i, i32(-2147483648), -1i, 2147483647i, i32(-2147483648), -1i, -29488i, 1i, 1i, 75899i, 2147483647i, i32(-2147483648), 24062i, 12303i, 0i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: bool, arg_3: i32) -> Struct_2 {
    let var_0 = false;
    var var_1 = Struct_2(43320u);
    global0 = array<i32, 17>();
    var_1 = Struct_2(var_1.a);
    let var_2 = reverseBits(~(~min(vec3<u32>(83580u, 0u, u_input.d.x), arg_0.xwx >> (vec3<u32>(4294967295u, arg_1.a, arg_1.a) % vec3<u32>(32u)))));
    return arg_1;
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec4<u32>(_wgslsmith_mult_u32(~u_input.e.x, u_input.d.x), _wgslsmith_dot_vec3_u32(arg_0.xww, arg_0.ywx), arg_0.x, arg_2.a) >> (vec4<u32>(36511u ^ ~firstTrailingBit(4294967295u), ~(~arg_1.a) >> (~arg_2.a % 32u), u_input.e.x, arg_0.x) % vec4<u32>(32u));
    global0 = array<i32, 17>();
    var var_1 = arg_2.b;
    let var_2 = false;
    var_0 = ~arg_0;
    return Struct_1(abs(1u), var_2, arg_2.c);
}

fn func_1() -> Struct_1 {
    var var_0 = firstLeadingBit(vec4<u32>(45769u, ~4294967295u, u_input.e.x, u_input.e.x));
    var_0 = ~(~((vec4<u32>(var_0.x, u_input.d.x, u_input.d.x, u_input.d.x) << (vec4<u32>(37167u, 54785u, u_input.e.x, u_input.e.x) % vec4<u32>(32u))) >> (_wgslsmith_add_vec4_u32(vec4<u32>(0u, var_0.x, 4294967295u, 0u), vec4<u32>(9085u, u_input.d.x, var_0.x, 15410u)) % vec4<u32>(32u))) & vec4<u32>(~(~var_0.x), 105639u, countOneBits(_wgslsmith_mult_u32(u_input.e.x, 4294967295u)), 4294967295u));
    let var_1 = func_3(firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(~18432u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, u_input.d.x), vec2<u32>(var_0.x, var_0.x)), 21899u, 0u), vec4<u32>(var_0.x, 97993u, 1u, u_input.d.x | 51873u))), func_2(vec4<u32>(u_input.d.x, ~_wgslsmith_dot_vec2_u32(u_input.d, u_input.d), 1u, u_input.e.x), Struct_2(1u), all(select(vec2<bool>(true, true), vec2<bool>(false, true), false)) & false, global0[_wgslsmith_index_u32(var_0.x ^ ~(~1u), 17u)]), Struct_1(abs(_wgslsmith_add_u32(1u, var_0.x)), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(272f, -1722f, -748f, -1058f)) * vec4<f32>(674f, 977f, -1115f, 670f)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(816f, -1049f, -997f, -1000f)))))));
    let var_2 = var_1;
    var var_3 = func_3(~(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 96841u, 53170u, 8338u) | vec4<u32>(var_0.x, 0u, 1u, 4764u), ~vec4<u32>(var_1.a, var_2.a, 4294967295u, var_2.a)) & vec4<u32>(min(var_0.x, var_1.a), 0u, 0u << (var_0.x % 32u), ~0u)), func_2(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, 4294967295u), _wgslsmith_clamp_u32(var_0.x, 20178u, 62705u)), 10428u, u_input.d.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.e.x, u_input.d.x, var_2.a), vec4<u32>(0u, 18372u, 57034u, 1u))), func_2(abs(vec4<u32>(u_input.d.x, var_0.x, var_2.a, 72862u)) >> (reverseBits(vec4<u32>(var_1.a, var_2.a, var_2.a, u_input.e.x)) % vec4<u32>(32u)), Struct_2(~70195u), !func_3(vec4<u32>(65213u, 58495u, var_1.a, var_2.a), Struct_2(var_0.x), Struct_1(0u, true, vec4<f32>(694f, 1000f, 1000f, var_1.c.x))).b, ~(-2147483647i)), true, -(~min(10449i, u_input.b.x))), Struct_1(4294967295u, !var_1.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_1.c), _wgslsmith_f_op_vec4_f32(sign(var_2.c)), var_2.b))));
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    var var_0 = u_input.d;
    global0 = array<i32, 17>();
    var var_1 = func_3(~min(vec4<u32>(~var_0.x, var_0.x, arg_0.a, arg_0.a), abs(min(vec4<u32>(48365u, 2148u, 89373u, 0u), vec4<u32>(u_input.d.x, 0u, 50436u, var_0.x)))), Struct_2(arg_0.a >> (_wgslsmith_clamp_u32(u_input.e.x, arg_0.a, ~u_input.e.x) % 32u)), Struct_1(_wgslsmith_add_u32(~(~u_input.e.x), select(u_input.e.x, firstTrailingBit(18950u), !arg_0.b)), any(vec4<bool>(arg_0.b, true, arg_0.b, false)) | false, _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.c.x, 2058f, arg_1, -409f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0.c, arg_0.c)))));
    let var_2 = ~var_1.a;
    global0 = array<i32, 17>();
    return func_2(~_wgslsmith_div_vec4_u32(~vec4<u32>(var_1.a, var_2, arg_0.a, 0u), vec4<u32>(_wgslsmith_mod_u32(u_input.d.x, var_0.x), 34403u, arg_0.a, arg_0.a)), Struct_2(_wgslsmith_div_u32(arg_0.a >> (var_0.x % 32u), 0u) & min(~9506u, u_input.e.x)), false && !all(select(vec4<bool>(arg_0.b, arg_0.b, false, true), vec4<bool>(var_1.b, arg_0.b, true, false), var_1.b)), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(), _wgslsmith_f_op_f32(f32(-1f) * -151f));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-501f, -591f)))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -520f), _wgslsmith_f_op_f32(trunc(446f))))), _wgslsmith_f_op_f32(f32(-1f) * -792f)) + vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1614f)), _wgslsmith_f_op_f32(-970f - _wgslsmith_div_f32(566f, 1319f)))), _wgslsmith_f_op_f32(f32(-1f) * -276f)));
    let var_2 = func_2(countOneBits(_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(var_0.a, var_0.a, var_0.a, 40577u)) & ~vec4<u32>(36396u, u_input.e.x, u_input.e.x, 10596u), vec4<u32>(4294967295u, ~0u, select(var_0.a, 3377u, true), u_input.d.x << (31828u % 32u)))), func_2(~vec4<u32>(~var_0.a, var_0.a >> (4294967295u % 32u), var_0.a, min(u_input.e.x, 29930u)), Struct_2(var_0.a), all(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(false, true, true, true))), ~global0[_wgslsmith_index_u32(35984u, 17u)]), any(select(vec4<bool>(true, true, true, true), vec4<bool>(47449i < u_input.b.x, true, true, func_1().b), vec4<bool>(var_1.x != -234f, true, true, any(vec4<bool>(false, true, true, false))))), abs(_wgslsmith_mod_i32(1i, _wgslsmith_div_i32(u_input.b.x, 18339i))) >> ((38853u >> (_wgslsmith_div_u32(func_2(vec4<u32>(u_input.d.x, 4294967295u, u_input.e.x, 0u), Struct_2(4294967295u), false, 48827i).a, ~1u) % 32u)) % 32u));
    let var_3 = var_2;
    var_0 = var_2;
    var var_4 = Struct_1(var_3.a, !func_3(vec4<u32>(func_4(Struct_1(var_3.a, true, vec4<f32>(var_1.x, -454f, -1000f, -846f)), var_1.x).a, u_input.d.x, var_2.a | 0u, var_3.a), func_2(_wgslsmith_div_vec4_u32(vec4<u32>(var_3.a, 0u, 1u, var_0.a), vec4<u32>(u_input.e.x, var_2.a, 154u, 4294967295u)), func_2(vec4<u32>(1482u, 55074u, 306u, 0u), Struct_2(var_2.a), true, 0i), true, min(u_input.b.x, global0[_wgslsmith_index_u32(u_input.e.x, 17u)])), func_1()).b, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1243f, _wgslsmith_f_op_f32(ceil(var_1.x)))), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(ceil(-342f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-423f, var_1.x)))));
    let var_5 = _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, ~(-14869i), -23721i, select(_wgslsmith_add_i32(-14537i, -20271i), u_input.b.x, var_4.b)), ~(~max(vec4<i32>(global0[_wgslsmith_index_u32(74868u, 17u)], -13608i, 33097i, 8838i), abs(vec4<i32>(0i, global0[_wgslsmith_index_u32(var_3.a, 17u)], u_input.a, u_input.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(abs(var_4.a << (reverseBits(6110u) % 32u)), reverseBits(~var_2.a), 4294967295u));
}

