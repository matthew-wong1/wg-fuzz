struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: vec3<bool>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
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

var<private> global0: Struct_4 = Struct_4(true, -46493i, vec3<bool>(true, true, false));

var<private> global1: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(false, -7099i, vec3<bool>(true, true, true)), Struct_4(false, -1i, vec3<bool>(false, false, false)), Struct_4(false, 0i, vec3<bool>(false, false, true)), Struct_4(false, 0i, vec3<bool>(false, false, false)), Struct_4(true, 891i, vec3<bool>(true, false, true)), Struct_4(true, -1i, vec3<bool>(true, false, false)), Struct_4(true, 1i, vec3<bool>(false, false, true)), Struct_4(false, 2147483647i, vec3<bool>(true, true, true)), Struct_4(true, 17301i, vec3<bool>(false, false, true)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1() -> u32 {
    global1 = array<Struct_4, 9>();
    var var_0 = u_input.a;
    return 21820u;
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1400f), _wgslsmith_div_f32(610f, 890f), -908f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(357f, -713f, -288f) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-853f, -176f, 559f)))))));
    var var_1 = (~(38274i << (0u % 32u)) << (~max(~4294967295u, u_input.a.x) % 32u)) & _wgslsmith_mod_i32(max(-16101i, _wgslsmith_clamp_i32(u_input.b, u_input.b, firstTrailingBit(global0.b))), -10922i);
    var var_2 = ~_wgslsmith_mult_vec3_u32(countOneBits(~abs(vec3<u32>(u_input.a.x, 42396u, 0u))), _wgslsmith_mult_vec3_u32(vec3<u32>(53883u, u_input.a.x, 1u), vec3<u32>(25024u, 0u, arg_0) | vec3<u32>(arg_0, 65948u, u_input.a.x)) >> (firstTrailingBit(~vec3<u32>(arg_0, 1u, 15914u)) % vec3<u32>(32u)));
    let var_3 = Struct_2(~4294967295u, arg_1);
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, var_0.x, -1682f), vec3<f32>(-234f, var_0.x, var_0.x))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 288f, var_0.x)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, -199f, -1218f)))))) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(596f, var_0.x, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1130f, var_0.x, var_0.x)), vec3<f32>(-661f, -318f, var_0.x)))))));
    return vec3<bool>(_wgslsmith_mod_u32(reverseBits(1u >> (var_2.x % 32u)), select(~39139u, 0u, 3192i == u_input.b)) < ~var_2.x, !all(vec2<bool>(var_3.b.b.x != true, global0.b <= -1i)), arg_1.b.x);
}

fn func_4(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: Struct_5, arg_3: Struct_5) -> u32 {
    global1 = array<Struct_4, 9>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-1279f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x))), vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.x * arg_2.b.x)), _wgslsmith_f_op_f32(sign(-1240f)))));
    var var_1 = ~_wgslsmith_mult_vec4_u32(~_wgslsmith_add_vec4_u32(~vec4<u32>(0u, 4294967295u, u_input.a.x, 0u), vec4<u32>(46540u, 47525u, u_input.a.x, u_input.a.x)), vec4<u32>(1u | ~u_input.a.x, ~u_input.a.x, 55898u, ~0u));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -626f)))));
    let var_3 = vec4<i32>(-1i, -61804i, -20646i, -global0.b);
    return max(0u, 4294967295u);
}

fn func_2(arg_0: bool, arg_1: bool) -> vec4<bool> {
    global1 = array<Struct_4, 9>();
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1114f, -804f) - _wgslsmith_f_op_f32(trunc(-1829f)))), -1216f, -708f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(421f * -630f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(785f * 804f) - -238f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(550f, 2894f)), _wgslsmith_f_op_f32(1000f - -949f))), -1378f, -823f, 613f));
    var var_1 = countOneBits(1u);
    let var_2 = vec3<u32>(37248u & u_input.a.x, func_4(global1[_wgslsmith_index_u32(0u, 9u)], func_3(53134u, Struct_1(global0.b, global0.c.xx)), Struct_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1428f, 1000f, 563f) * vec3<f32>(884f, 727f, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1711f, var_0.x, var_0.x) - vec4<f32>(var_0.x, var_0.x, 439f, 384f))), Struct_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)), var_0)), ~_wgslsmith_mult_u32(min(81633u, 2644u), u_input.a.x & u_input.a.x)) | ~(~select(vec3<u32>(1u, 0u, 96447u), vec3<u32>(22670u, 4294967295u, u_input.a.x), false) << (vec3<u32>(u_input.a.x | 2977u, ~20074u, ~u_input.a.x) % vec3<u32>(32u)));
    var_1 = 14841u;
    return vec4<bool>(all(global0.c), arg_0, false, all(!select(!vec4<bool>(true, arg_0, arg_1, false), vec4<bool>(arg_1, true, false, false), vec4<bool>(false, global0.c.x, arg_0, arg_1))));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: vec4<bool>) -> u32 {
    global0 = Struct_4(any(vec3<bool>(false, true, select(arg_1.x, true, true))), _wgslsmith_sub_i32(-24987i, -1i), vec3<bool>(!(!(!arg_2.x)), any(vec3<bool>(false, func_2(false, true).x, true)), any(arg_1)));
    let var_0 = Struct_2(firstLeadingBit(u_input.a.x), Struct_1(2147483647i, func_3(30286u, Struct_1(_wgslsmith_clamp_i32(global0.b, 23444i, -13426i), !global0.c.yx)).zz));
    let var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(~abs(var_0.b.a), ~select(0i, u_input.b, arg_2.x)), vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(vec2<i32>(global0.b, var_0.b.a), vec2<i32>(global0.b, var_0.b.a))), vec2<i32>(-_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global0.b, global0.b, -49103i), vec3<i32>(global0.b, u_input.b, u_input.b)), vec3<i32>(global0.b, global0.b, global0.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(~4325i, var_0.b.a), vec2<i32>(select(-63888i, -28144i, false), ~(-10716i)))));
    var var_2 = global1[_wgslsmith_index_u32(var_0.a, 9u)];
    let var_3 = Struct_4(true, -3945i, vec3<bool>(var_0.b.b.x, all(vec3<bool>(arg_2.x, false, arg_0.x)) == !arg_0.x, !(!(var_0.b.b.x || true))));
    return _wgslsmith_mod_u32(~(~(~countOneBits(u_input.a.x))), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(_wgslsmith_add_u32(u_input.a.x ^ ~u_input.a.x, u_input.a.x), countOneBits(~firstLeadingBit(u_input.a.x))) ^ u_input.a;
    var_0 = vec2<u32>(var_0.x, 68799u);
    var var_1 = func_1();
    let var_2 = 57403u;
    let var_3 = Struct_2(_wgslsmith_sub_u32(_wgslsmith_add_u32(max(0u, var_0.x), 4294967295u) >> (_wgslsmith_mult_u32(var_2 | 0u, var_2) % 32u), var_0.x), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.b, u_input.b, global0.b, -2147483647i) << (vec4<u32>(53211u, 4294967295u, 71350u, 22173u) % vec4<u32>(32u)), countOneBits(vec4<i32>(11840i, global0.b, u_input.b, -2147483647i))) >> (func_1() % 32u), vec2<bool>(!(!global0.a), true)));
    let var_4 = 1u;
    global0 = global1[_wgslsmith_index_u32(abs(~78520u) >> (func_5(!var_3.b.b, vec2<bool>(true, !(!var_3.b.b.x)), !(!func_2(false, global0.a))) % 32u), 9u)];
    let var_5 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -2549f), -30593i);
}

