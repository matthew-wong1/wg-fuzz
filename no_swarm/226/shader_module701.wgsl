struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 10>;

var<private> global1: vec3<bool> = vec3<bool>(false, true, true);

var<private> global2: array<vec4<bool>, 4> = array<vec4<bool>, 4>(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~arg_2.b.x, firstLeadingBit(54092u)), firstTrailingBit(min(arg_2.b.x, 0u))), 4u)], vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.b.x, 1u, arg_2.b.x, 60956u), vec4<u32>(arg_2.b.x, 1u, arg_2.b.x, 0u)), arg_2.b.x, ~arg_2.b.x) ^ arg_2.b, _wgslsmith_clamp_vec2_i32(~(-vec2<i32>(1i, u_input.a.x)), abs(select(vec2<i32>(-2147483647i, arg_2.c.x), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, -1i), u_input.a.yy), global1.yz)), arg_2.c), vec4<f32>(arg_2.d.x, _wgslsmith_div_f32(-475f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -281f))), -1907f, -242f));
    var var_1 = u_input.a.x;
    global0 = array<vec3<f32>, 10>();
    var var_2 = Struct_1(vec4<bool>(false, _wgslsmith_mult_i32(reverseBits(var_0.c.x), 0i) >= _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, 1i, u_input.a.x), vec4<i32>(16280i, 24387i, -24921i, u_input.a.x) | vec4<i32>(11569i, 15951i, u_input.a.x, arg_2.c.x)), any(arg_2.a.yzz), 0i <= var_0.c.x), _wgslsmith_add_vec3_u32(vec3<u32>(reverseBits(0u), var_0.b.x, 5593u) >> (_wgslsmith_add_vec3_u32(~var_0.b, vec3<u32>(arg_2.b.x, arg_2.b.x, 1u) | arg_2.b) % vec3<u32>(32u)), arg_2.b), u_input.a.yz, _wgslsmith_div_vec4_f32(arg_2.d, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_1)), var_0.d.x, _wgslsmith_f_op_f32(-764f + -779f), _wgslsmith_f_op_f32(972f - 659f))))));
    var_1 = abs(~80018i);
    return var_2.b.x;
}

fn func_2(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, 575f)))))));
    let var_1 = select(vec4<u32>(~(~(~arg_0.b.x)), func_3(-1000f, _wgslsmith_f_op_f32(-1000f * arg_0.d.x), Struct_1(select(arg_0.a, global2[_wgslsmith_index_u32(0u, 4u)], vec4<bool>(true, true, false, arg_0.a.x)), vec3<u32>(1666u, 4294967295u, arg_0.b.x), vec2<i32>(0i, arg_0.c.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.d.x, -1930f, arg_0.d.x, arg_0.d.x), arg_0.d, arg_0.a.x)))), arg_0.b.x, 66717u), ~abs(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, 1u, arg_0.b.x), vec4<u32>(arg_0.b.x, 1u, 3156u, 1u)))), !(!arg_0.a.x));
    let var_2 = -873f;
    var var_3 = Struct_1(global2[_wgslsmith_index_u32((~(arg_0.b.x & var_1.x) << (arg_0.b.x % 32u)) >> ((37820u | arg_0.b.x) % 32u), 4u)], ~_wgslsmith_mult_vec3_u32(vec3<u32>(~var_1.x, ~arg_0.b.x, ~var_1.x), var_1.wxz), countOneBits(-vec2<i32>(14383i, _wgslsmith_clamp_i32(-2147483647i, arg_0.c.x, arg_0.c.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1987f, _wgslsmith_f_op_f32(f32(-1f) * -704f), _wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(-arg_0.d.x)), var_2)));
    var_3 = arg_0;
    return _wgslsmith_f_op_vec4_f32(-arg_0.d);
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    let var_0 = true;
    global0 = array<vec3<f32>, 10>();
    global1 = !select(!(!vec3<bool>(false, var_0, true)), !(!select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(false, global1.x, true), vec3<bool>(global1.x, var_0, global1.x))), vec3<bool>(all(select(vec3<bool>(false, var_0, global1.x), vec3<bool>(global1.x, var_0, false), vec3<bool>(false, var_0, var_0))), -24617i > u_input.a.x, any(vec3<bool>(var_0, false, var_0)) | false));
    global0 = array<vec3<f32>, 10>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_2(Struct_1(vec4<bool>(false, var_0, var_0, global1.x), vec3<u32>(4294967295u, 42418u, 20231u), vec2<i32>(-4434i, u_input.a.x), vec4<f32>(arg_0.x, -806f, 1275f, arg_0.x)))), vec4<f32>(arg_0.x, -980f, arg_0.x, arg_0.x)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-159f, arg_0.x, -538f, _wgslsmith_f_op_f32(f32(-1f) * -1903f)) - vec4<f32>(-1255f, -991f, _wgslsmith_f_op_f32(max(arg_0.x, -774f)), -436f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.x))), -2317f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.x + arg_0.x))), -1000f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-1097f - -1086f), -740f, arg_0.x))));
    return 30654u;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_1(vec4<bool>(global1.x, true | any(!arg_1.xxz), any(select(arg_1.zz, select(arg_1.zy, vec2<bool>(arg_1.x, arg_1.x), true), any(arg_1.ywz))), true), vec3<u32>(~(~(~0u)), countOneBits(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u, 0u, 4294967295u), ~0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(1u, _wgslsmith_clamp_u32(0u, 4294967295u, 117644u)))), vec2<i32>(-25570i, -41150i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.x, arg_0.x, 982f, arg_0.x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-163f, -2056f, 972f, -190f))))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -810f), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_vec4_f32(func_2(Struct_1(arg_1, vec3<u32>(47241u, 16101u, 1u), u_input.a.zz, vec4<f32>(-294f, 935f, -2009f, 1000f)))).x, _wgslsmith_f_op_f32(-767f * arg_0.x)))));
    return Struct_1(!global2[_wgslsmith_index_u32(reverseBits(4294967295u), 4u)], vec3<u32>(~30131u, ~_wgslsmith_add_u32(firstTrailingBit(var_0.b.x), _wgslsmith_clamp_u32(0u, 1u, 70684u)), 6999u), u_input.a.xy, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_0.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.d.x, 1275f, arg_0.x, -1943f))))) - vec4<f32>(-969f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(min(-1000f, -1135f)), _wgslsmith_f_op_f32(f32(-1f) * -1055f))), var_0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(38655u, 10u)])))), !(!global2[_wgslsmith_index_u32(~func_1(vec2<f32>(592f, 826f)), 4u)]));
    let var_1 = select(vec3<bool>((-1i <= -var_0.c.x) & !(global1.x & global1.x), global1.x, any(var_0.a.wzw)), vec3<bool>(true, !(true || var_0.a.x), u_input.a.x <= abs(_wgslsmith_add_i32(0i, -28981i))), vec3<bool>(true, false, func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(721f, -548f))) < (7828u ^ (4885u >> (var_0.b.x % 32u)))));
    global2 = array<vec4<bool>, 4>();
    let var_2 = var_0.d.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.d.x, _wgslsmith_f_op_vec4_f32(func_2(var_0)).x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_2, _wgslsmith_f_op_f32(ceil(-1000f)))), _wgslsmith_f_op_f32(2107f - func_4(global0[_wgslsmith_index_u32(var_0.b.x, 10u)], vec4<bool>(false, true, var_1.x, false)).d.x)), 1f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(210f, -328f)), 778f)), -1286f, -935f), _wgslsmith_f_op_vec3_f32(-var_0.d.wwy), var_1.x))));
    global1 = vec3<bool>(false, (-241f >= _wgslsmith_f_op_f32(sign(var_0.d.x))) && func_4(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1921f, var_2, -819f))), var_0.a).a.x, var_0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1227f + -1330f), _wgslsmith_f_op_f32(-var_3.x)), -568f, -741f))), _wgslsmith_mult_vec4_u32(~firstLeadingBit(vec4<u32>(4294967295u, 1u, 0u, 1u) >> (vec4<u32>(3156u, 4294967295u, var_0.b.x, 0u) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(abs(vec4<u32>(var_0.b.x, 30236u, var_0.b.x, 78778u)) ^ vec4<u32>(1u, var_0.b.x, var_0.b.x, 4294967295u), abs(vec4<u32>(var_0.b.x, 4294967295u, var_0.b.x, var_0.b.x)))), i32(-1i) * -var_0.c.x, u_input.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(var_0.d.zzy, vec4<bool>(var_1.x, true, var_1.x, true)).d * _wgslsmith_f_op_vec4_f32(-var_0.d)) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_0.d)))), var_0.d, true)));
}

