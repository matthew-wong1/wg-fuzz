struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(114559u), Struct_2(4294967295u), Struct_2(4294967295u), Struct_2(4294967295u), Struct_2(45874u), Struct_2(0u), Struct_2(0u), Struct_2(1u), Struct_2(106122u), Struct_2(0u), Struct_2(40323u), Struct_2(4294967295u), Struct_2(1u), Struct_2(1u), Struct_2(1u), Struct_2(87115u), Struct_2(4294967295u), Struct_2(24008u), Struct_2(57353u), Struct_2(64385u), Struct_2(1u), Struct_2(13970u), Struct_2(1u), Struct_2(0u), Struct_2(4294967295u), Struct_2(1519u));

var<private> global1: Struct_1 = Struct_1(98524u, 102051u, vec2<f32>(-1345f, -1000f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = global1.a <= ~(~(min(arg_0.x, global1.a) | ~31054u));
    global0 = array<Struct_2, 26>();
    let var_1 = _wgslsmith_sub_u32(max(1u, (arg_0.x & _wgslsmith_sub_u32(14024u, 1u)) << (firstTrailingBit(arg_0.x) % 32u)), global1.b);
    var var_2 = ~u_input.a.x;
    global1 = Struct_1(~(~14203u), ~(~(~(arg_0.x | arg_0.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(global1.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-760f, -918f) * global1.c)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1029f) * _wgslsmith_f_op_vec2_f32(-global1.c)))));
    return Struct_1(_wgslsmith_dot_vec3_u32(arg_0.zyz, ~vec3<u32>(firstLeadingBit(global1.b), max(4294967295u, 0u), 33248u)), 4294967295u >> (firstLeadingBit(~global1.a) % 32u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.c.x)) * _wgslsmith_f_op_f32(step(2069f, 636f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.x - 534f) * 1000f))));
}

fn func_3(arg_0: u32) -> vec4<bool> {
    var var_0 = func_1(abs(abs(select(vec4<u32>(87422u, arg_0, arg_0, global1.a), vec4<u32>(global1.b, global1.a, 4294967295u, 39233u), true) >> (~vec4<u32>(arg_0, 1u, 0u, 83516u) % vec4<u32>(32u)))));
    var var_1 = -1783f;
    var var_2 = Struct_1(var_0.b, _wgslsmith_add_u32(global1.a, 108037u), var_0.c);
    let var_3 = Struct_3(func_1(vec4<u32>(4294967295u, ~(var_2.b | 40401u), 29587u, ~max(var_2.b, 2714u))));
    global1 = Struct_1(~(14701u << (var_0.b % 32u)), 4294967295u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(var_3.a.c.x, var_0.c.x)), _wgslsmith_f_op_f32(ceil(459f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.a.c)))));
    return vec4<bool>(all(vec4<bool>(true, true, true, true)), false, any(vec4<bool>(any(vec3<bool>(true, false, true)), abs(16388u) > _wgslsmith_div_u32(var_2.a, var_3.a.a), any(vec4<bool>(true, true, true, true)), true)), select(true, true, any(vec4<bool>(true, true, true, true))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> vec3<i32> {
    var var_0 = -1000f;
    var var_1 = func_1(abs(select(firstLeadingBit(vec4<u32>(4294967295u, arg_0.a, 4294967295u, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.a, 75204u, global1.b, arg_1.a), vec4<u32>(4294967295u, arg_1.a, 73360u, 11138u)), func_3(arg_1.a))) >> (max(min(~vec4<u32>(arg_0.a, 0u, 4294967295u, 0u), abs(vec4<u32>(arg_1.a, 2611u, 7587u, arg_0.a))), vec4<u32>(0u, 1u, global1.b, arg_0.a) | _wgslsmith_clamp_vec4_u32(vec4<u32>(52112u, arg_1.b, 3663u, arg_1.a), vec4<u32>(1u, global1.b, global1.b, arg_1.b), vec4<u32>(0u, arg_0.a, 0u, arg_1.a))) % vec4<u32>(32u)));
    var_1 = arg_1;
    var var_2 = Struct_3(arg_1);
    var var_3 = reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(~arg_1.a, reverseBits(3432u), ~global1.b) & ~(~vec3<u32>(1u, arg_0.a, 4294967295u)), vec3<u32>(_wgslsmith_div_u32(global1.a, ~19895u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a, global1.b), vec2<u32>(var_1.a, arg_0.a)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, var_1.a), vec3<u32>(0u, 0u, var_2.a.a)))));
    return _wgslsmith_div_vec3_i32(u_input.a.xyx, u_input.a.xzy);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: vec2<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-arg_3.x);
    var var_1 = Struct_3(Struct_1(~14577u, firstLeadingBit(43473u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_3 * vec2<f32>(arg_3.x, global1.c.x)))));
    let var_2 = vec4<i32>(8790i, arg_2.x, u_input.a.x, abs(~_wgslsmith_dot_vec2_i32(~arg_1, u_input.a.zy)));
    var_1 = Struct_3(var_1.a);
    var var_3 = Struct_3(Struct_1(8639u, arg_0.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c.x, -1429f) - _wgslsmith_f_op_f32(sign(1340f))), arg_3.x)));
    return Struct_2(global1.a);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_1(min(~vec4<u32>(45821u, 4294967295u, arg_0.b, 37599u) | _wgslsmith_mod_vec4_u32(vec4<u32>(arg_3.b, global1.b, arg_0.b, 20976u), abs(vec4<u32>(global1.b, 26446u, 61705u, 1u))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_0.a, global1.b, global1.b, global1.b), min(firstLeadingBit(vec4<u32>(1u, 2722u, arg_0.b, 1u)), vec4<u32>(1u, global1.a, 0u, 4294967295u)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4784u, 1u, arg_3.a), vec4<u32>(arg_0.b, arg_0.a, arg_1.a, 2764u)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_3.c.x * global1.c.x), _wgslsmith_div_f32(595f, -825f), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_div_f32(var_0.c.x, -1422f))))));
    global1 = func_1(_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(firstLeadingBit(38596u), arg_0.b & 53176u, ~var_0.b, arg_3.a >> (12766u % 32u))), _wgslsmith_mult_vec4_u32(~abs(vec4<u32>(arg_0.a, arg_1.a, arg_1.a, 34180u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.b, var_0.b, arg_3.a, 12006u), ~vec4<u32>(var_0.a, 28278u, var_0.a, arg_3.a)))));
    global0 = array<Struct_2, 26>();
    return Struct_1(global1.a, arg_0.a, vec2<f32>(_wgslsmith_f_op_f32(1000f + -965f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.c.x) * -1000f) * global1.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(global1.a, 18210u ^ _wgslsmith_dot_vec2_u32(~vec2<u32>(2515u, global1.b), vec2<u32>(global1.b, 72563u)), global1.c), func_4(firstLeadingBit(select(vec2<u32>(54794u, 44609u), ~vec2<u32>(34798u, 4294967295u), true)), abs(~(~u_input.a.zx)), func_2(Struct_2(~global1.a), func_1(_wgslsmith_div_vec4_u32(vec4<u32>(85501u, global1.a, global1.a, global1.a), vec4<u32>(global1.b, global1.a, global1.a, 0u)))), vec2<f32>(_wgslsmith_f_op_f32(round(591f)), _wgslsmith_f_op_f32(trunc(global1.c.x)))), !(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), true)), func_1(~(~(~vec4<u32>(global1.a, global1.b, 18209u, global1.a)))));
    let var_1 = _wgslsmith_f_op_f32(ceil(-422f));
    var var_2 = global0[_wgslsmith_index_u32(abs(29187u), 26u)];
    let var_3 = _wgslsmith_add_vec3_u32(firstLeadingBit(~(~vec3<u32>(var_0.b, var_0.b, 1u))), vec3<u32>(_wgslsmith_sub_u32(0u, firstTrailingBit(15088u)), firstTrailingBit(~var_0.a), _wgslsmith_div_u32(global1.a, select(var_0.b, 47414u, false))) & (select(vec3<u32>(var_2.a, global1.b, global1.a) ^ vec3<u32>(var_2.a, global1.b, 1u), countOneBits(vec3<u32>(1u, 33129u, var_0.b)), vec3<bool>(true, true, true)) & (vec3<u32>(global1.a, 10346u, global1.a) ^ vec3<u32>(1u, global1.b, var_0.a))));
    global0 = array<Struct_2, 26>();
    var var_4 = _wgslsmith_f_op_f32(max(global1.c.x, global1.c.x));
    var var_5 = select(select(select(vec2<bool>(true, var_1 <= 1407f), vec2<bool>(true, true), vec2<bool>(true, true)), !func_3(~4294967295u).xw, select(vec2<bool>(true, any(vec3<bool>(true, true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true)), vec2<bool>(true, all(vec2<bool>(true, true))))), select(vec2<bool>(true, true), vec2<bool>(true, true), !vec2<bool>(7713i <= u_input.a.x, all(vec4<bool>(false, true, true, false)))), select(!(_wgslsmith_f_op_f32(trunc(global1.c.x)) == -650f), !select(true, any(vec2<bool>(true, false)), true), !all(vec3<bool>(true, false, true))));
    var_2 = func_4(_wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(var_0.b, global1.b)), var_3.zy), u_input.a.zz, u_input.a.xxy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_0.c.x))))) + var_0.c));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<i32>(2147483647i, -2147483647i, _wgslsmith_dot_vec2_i32(u_input.a.xw, reverseBits(vec2<i32>(u_input.a.x, -1i)))), u_input.a.zyx, all(!select(vec3<bool>(true, true, true), vec3<bool>(false, var_5.x, var_5.x), vec3<bool>(false, var_5.x, true)))));
}

