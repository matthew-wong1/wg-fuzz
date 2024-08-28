struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<i32>,
    d: vec2<f32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_2, 18>;

var<private> global2: u32 = 0u;

var<private> global3: Struct_1;

var<private> global4: vec2<i32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<bool> {
    let var_0 = vec3<u32>(reverseBits(4294967295u), ~max(select(~u_input.b, u_input.b, u_input.b < 13826u), (0u << (0u % 32u)) & ~u_input.a), 1u);
    let var_1 = select(abs(~abs(~vec4<u32>(4294967295u, u_input.a, u_input.a, 50814u))), vec4<u32>(reverseBits(18049u), _wgslsmith_add_u32(~u_input.a, u_input.a), var_0.x, ~(~var_0.x)), all(vec4<bool>(global0.x, true, global0.x || select(true, global0.x, false), true)));
    global2 = 61930u;
    global3 = Struct_1(select(global3.a, vec3<bool>(global0.x, !all(global3.a), global3.c.x), !(var_1.x < var_1.x)), global3.a.x, select(global0.zy, vec2<bool>(any(vec3<bool>(global0.x, global0.x, false)), any(global0.yz)), !select(select(global3.c, global0.xx, global3.b), !vec2<bool>(global3.c.x, true), true)));
    var var_2 = 0u;
    return !select(!select(!global0.xx, !vec2<bool>(global0.x, true), !vec2<bool>(global3.a.x, true)), select(!select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, true), true), vec2<bool>(select(global3.a.x, false, global3.a.x), global3.b), vec2<bool>(true, true)), select(select(select(global0.xx, vec2<bool>(true, false), vec2<bool>(global0.x, false)), global3.c, !global0.yy), vec2<bool>(true, true), vec2<bool>(any(global3.a.zz), global0.x)));
}

fn func_2() -> vec3<bool> {
    global3 = Struct_1(global3.a, true, func_3());
    var var_0 = Struct_1(vec3<bool>(global0.x, !global3.c.x, any(vec4<bool>(true, !global3.c.x, global0.x, true))), any(!vec4<bool>(true, !global3.c.x, true, true)), global0.yz);
    var_0 = Struct_1(vec3<bool>(var_0.b, any(vec4<bool>(global0.x, global0.x, global3.c.x, global0.x)) != ((global3.c.x & global0.x) || true), func_3().x != global3.b), func_3().x, vec2<bool>(global3.b, all(!global0.yx)));
    let var_1 = global3.a.zz;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(892f, -1345f, -775f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(278f, -1677f, -1000f))))));
    return select(global3.a, select(select(var_0.a, vec3<bool>(any(vec4<bool>(var_1.x, var_1.x, false, false)), true, !var_0.a.x), var_0.a), !(!select(vec3<bool>(true, global3.b, false), global3.a, global0.x)), select(select(global3.a, !global3.a, u_input.b > u_input.a), !var_0.a, global3.a)), (_wgslsmith_div_i32(-2147483647i ^ global4.x, countOneBits(u_input.c)) <= 14917i) || true);
}

fn func_1() -> Struct_1 {
    var var_0 = !(!(!vec2<bool>(true, global0.x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(532f)) + -230f), -1343f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -414f))), _wgslsmith_f_op_f32(-1424f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -2053f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1274f) - 476f) + -2001f)));
    var var_2 = reverseBits(~0i);
    let var_3 = Struct_2(Struct_1(select(!func_2(), !global3.a, vec3<bool>(var_0.x, true || global0.x, true)), true, vec2<bool>(true, u_input.a != 1u)), !(-217f >= var_1.x), vec2<i32>(global4.x, firstTrailingBit(u_input.c)) >> (~vec2<u32>(_wgslsmith_mod_u32(18387u, 1u), ~20504u) % vec2<u32>(32u)), vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-733f)) - _wgslsmith_f_op_f32(1029f + -164f)))), countOneBits(vec3<u32>(_wgslsmith_clamp_u32(78031u, firstLeadingBit(21867u), firstLeadingBit(0u)), 36559u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), abs(vec2<u32>(31805u, 31517u))))));
    let var_4 = var_3.e;
    return Struct_1(vec3<bool>(false, var_0.x, select(!var_0.x, (517i < u_input.c) | !var_3.a.b, global3.a.x)), !(!(any(vec3<bool>(var_3.b, global0.x, true)) & all(global3.a.xz))), global0.zy);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 18>();
    let var_0 = func_1();
    var var_1 = _wgslsmith_div_i32(_wgslsmith_mod_i32(abs(-2015i) >> (u_input.a % 32u), -1i), 48123i) ^ 6453i;
    let var_2 = ~select(~(-46799i & (24872i << (u_input.b % 32u))), u_input.c >> (~(4294967295u >> (0u % 32u)) % 32u), global0.x);
    let var_3 = ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.b), vec3<u32>(u_input.b, u_input.a, 2909u)), u_input.a), vec3<u32>(_wgslsmith_mod_u32(u_input.a, u_input.b), 0u, 4294967295u | u_input.b)));
    var var_4 = global4.x;
    global0 = func_1().a;
    let x = u_input.a;
    s_output = StorageBuffer((37128u & u_input.a) >> (u_input.b % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-840f, -152f) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-127f, 1073f), vec2<f32>(-238f, 1827f)))))), ~max(_wgslsmith_sub_i32(global4.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global4.x, 2147483647i, -31671i), vec3<i32>(var_2, global4.x, var_2))), -(~0i)), ~105368u, 1f);
}

