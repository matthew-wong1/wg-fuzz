struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<i32>, 16>;

var<private> global2: array<vec2<bool>, 15>;

var<private> global3: vec4<bool>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<u32>) -> vec4<u32> {
    global1 = array<vec4<i32>, 16>();
    var var_0 = arg_1;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(492f * _wgslsmith_f_op_f32(f32(-1f) * -369f)));
    let var_2 = !(_wgslsmith_mod_i32(-reverseBits(u_input.a.x), 706i) >= u_input.a.x);
    let var_3 = 1143f;
    return vec4<u32>(~(~_wgslsmith_mod_u32(arg_3.x, arg_2.b.x) >> (28126u % 32u)), arg_3.x, u_input.c, ~_wgslsmith_clamp_u32(firstTrailingBit(10600u), arg_3.x, firstLeadingBit(0u)));
}

fn func_2() -> f32 {
    var var_0 = vec2<u32>(41200u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(7839u, u_input.b, u_input.c, u_input.e), vec4<u32>(1u, 42222u, u_input.c, 38786u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 1u, u_input.e, u_input.e) | vec4<u32>(u_input.b, u_input.e, 3953u, 0u), select(vec4<u32>(u_input.b, 1u, 4294967295u, u_input.e), vec4<u32>(u_input.e, 50523u, 25528u, u_input.c), vec4<bool>(false, global3.x, global3.x, global3.x)), vec4<u32>(4294967295u, u_input.c, u_input.e, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, 4294967295u), reverseBits(vec4<u32>(0u, 44166u, 51857u, u_input.c)))), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(11351u, 20730u, 1u, u_input.e), func_3(vec3<bool>(global3.x, global3.x, false), Struct_1(177f), Struct_2(vec4<bool>(false, true, global3.x, global3.x), vec2<u32>(10551u, u_input.b), u_input.d.x), vec2<u32>(1u, u_input.e))), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.e, u_input.c) >> (vec4<u32>(38689u, 1u, u_input.b, 47017u) % vec4<u32>(32u)), ~vec4<u32>(u_input.b, 4294967295u, u_input.c, 92478u)))));
    var var_1 = !global3.yyx;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-274f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-740f + 233f))) * _wgslsmith_f_op_f32(step(-2424f, 1f))));
    let var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a, var_2.a, 901f) * vec3<f32>(873f, var_2.a, var_2.a)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(var_2.a)), -614f, 551f)) * vec3<f32>(var_2.a, -1235f, var_2.a))));
    var_2 = Struct_1(var_2.a);
    return 268f;
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-171f, 766f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-108f))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1739f, 520f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(578f, 604f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -852f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-220f)) + _wgslsmith_f_op_f32(-547f - 1682f)))));
    global0 = -select(-1i, ~u_input.d.x, global3.x);
    global3 = vec4<bool>(!(!global3.x), 1u < u_input.e, u_input.a.x != (abs(arg_0.x) ^ firstLeadingBit(abs(u_input.d.x))), false);
    var var_1 = Struct_1(-1308f);
    let var_2 = !select(select(global3.yzw, select(global3.zwx, select(vec3<bool>(false, true, true), global3.yyz, vec3<bool>(true, false, true)), select(vec3<bool>(true, global3.x, false), vec3<bool>(global3.x, global3.x, false), false)), any(global3.zzz)), !global3.xwz, _wgslsmith_mod_u32(firstTrailingBit(65135u), ~18613u) < u_input.b);
    return Struct_2(select(!(!vec4<bool>(global3.x, var_2.x, var_2.x, true)), !vec4<bool>(any(global3.zzz), any(vec4<bool>(false, false, false, true)), var_1.a == var_1.a, true), vec4<bool>(false, any(vec3<bool>(global3.x, var_2.x, true)), true, global3.x)), vec2<u32>(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(u_input.e, u_input.e)), 1u & u_input.b, _wgslsmith_mult_u32(u_input.c, _wgslsmith_div_u32(u_input.b, u_input.c))), u_input.c | _wgslsmith_dot_vec3_u32(vec3<u32>(42583u, u_input.b, u_input.c), ~vec3<u32>(u_input.c, 73353u, 55257u))), ~(-_wgslsmith_dot_vec2_i32(arg_0, vec2<i32>(u_input.a.x, arg_0.x))) >> (_wgslsmith_sub_u32(min(~u_input.b, 43092u | u_input.c), _wgslsmith_sub_u32(u_input.e, _wgslsmith_mod_u32(1u, 33980u))) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = max(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, u_input.a.x, u_input.d.x) ^ countOneBits(global1[_wgslsmith_index_u32(60318u, 16u)]), max(-vec4<i32>(u_input.d.x, u_input.a.x, u_input.a.x, 2147483647i), vec4<i32>(u_input.d.x, -2147483647i, u_input.d.x, u_input.d.x)))), u_input.a.x >> (72676u % 32u));
    let var_0 = func_1(_wgslsmith_add_vec2_i32(firstTrailingBit(u_input.a.xy) << ((_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.c, u_input.e)) >> ((vec2<u32>(u_input.e, 24028u) & vec2<u32>(u_input.c, u_input.c)) % vec2<u32>(32u))) % vec2<u32>(32u)), firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), firstTrailingBit(u_input.d.zx)))));
    var var_1 = reverseBits(_wgslsmith_dot_vec2_i32(u_input.d.zz, select(-vec2<i32>(var_0.c, 33326i), vec2<i32>(u_input.a.x, var_0.c), !vec2<bool>(global3.x, var_0.a.x)))) >> (func_3(var_0.a.xzy, Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(712f)), _wgslsmith_f_op_f32(-3408f * -1121f), !global3.x))), func_1(~abs(u_input.d.zz)), _wgslsmith_sub_vec2_u32(~(~var_0.b), vec2<u32>(~60794u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, u_input.e, 8256u, 4294967295u), vec4<u32>(u_input.e, u_input.b, var_0.b.x, 12814u))))).x % 32u);
    global3 = select(!var_0.a, vec4<bool>(all(!var_0.a.zx) | false, all(vec4<bool>(all(vec4<bool>(false, false, true, global3.x)), true, global3.x, !global3.x)), any(var_0.a), true), func_1(vec2<i32>(4263i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(global1[_wgslsmith_index_u32(6693u, 16u)], vec4<i32>(0i, u_input.d.x, var_0.c, u_input.d.x)), vec4<i32>(20915i, var_0.c, 12891i, -2147483647i)))).a);
    var var_2 = !(-1i != ~select(-1i, _wgslsmith_add_i32(u_input.d.x, u_input.d.x), !global3.x));
    var var_3 = i32(-1i) * -1i;
    global0 = -7639i;
    let var_4 = global3.zwx;
    let var_5 = -reverseBits(14812i);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), 1851f)), 0u & ((0u & ~u_input.e) & var_0.b.x), abs(vec2<u32>(firstTrailingBit(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.e, u_input.c, u_input.c), vec4<u32>(0u, u_input.c, u_input.e, var_0.b.x)))) ^ ~(~(~var_0.b)));
}

