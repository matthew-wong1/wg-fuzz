struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<bool>(true, false, false, false), 11532i, vec2<i32>(2147483647i, -32356i), vec4<u32>(4294967295u, 1u, 0u, 0u)));

var<private> global1: array<i32, 30> = array<i32, 30>(-1i, 1i, -76267i, 19702i, -55586i, 8635i, 50681i, -34848i, 6064i, -27856i, 0i, -15460i, i32(-2147483648), 1i, -30148i, -14054i, i32(-2147483648), -27136i, 1i, -7905i, 0i, 54772i, -56580i, 0i, -1i, i32(-2147483648), -51304i, 1i, 14544i, 2147483647i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> vec2<u32> {
    global0 = Struct_2(arg_1.a);
    var var_0 = -253f;
    global1 = array<i32, 30>();
    var_0 = 1272f;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f))));
    return ~(~(~(~(~arg_1.a.d.wx))));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec4<u32>) -> u32 {
    global0 = Struct_2(Struct_1(!(!select(vec4<bool>(false, global0.a.a.x, global0.a.a.x, true), vec4<bool>(false, false, global0.a.a.x, global0.a.a.x), global0.a.a)), global0.a.c.x, u_input.b.xy | global0.a.c, arg_2));
    let var_0 = Struct_3(Struct_1(global0.a.a, reverseBits(0i), u_input.b.yy, vec4<u32>(~(~global0.a.d.x), firstTrailingBit(firstLeadingBit(0u)), 1u, ~(~arg_2.x))), 1u, all(global0.a.a.wy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1803f))))));
    var var_1 = Struct_4(Struct_2(global0.a), select(global0.a.a.xyw, vec3<bool>(true, select(all(var_0.a.a), false, false), any(global0.a.a.wx)), !vec3<bool>(global0.a.a.x, var_0.d <= var_0.d, global0.a.a.x)), 50937u);
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.d, _wgslsmith_f_op_f32(var_0.d * 295f), _wgslsmith_f_op_f32(var_0.d * 935f)), vec3<f32>(219f, -586f, -702f), all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, var_1.b.x), var_1.b))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(1199f, _wgslsmith_f_op_f32(var_0.d * var_0.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -726f)), 1f) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1332f, var_0.d, var_0.d)))))), any(!select(var_0.a.a, !vec4<bool>(var_1.a.a.a.x, true, global0.a.a.x, false), vec4<bool>(global0.a.a.x, global0.a.a.x, global0.a.a.x, var_1.b.x)))));
    global1 = array<i32, 30>();
    return 0u;
}

fn func_1(arg_0: f32, arg_1: vec4<bool>) -> Struct_3 {
    global1 = array<i32, 30>();
    let var_0 = ~abs(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(func_2(false, Struct_2(Struct_1(arg_1, global1[_wgslsmith_index_u32(4294967295u, 30u)], global0.a.c, global0.a.d))), _wgslsmith_mult_vec2_u32(vec2<u32>(111964u, 20507u), global0.a.d.xw), _wgslsmith_div_vec2_u32(vec2<u32>(52189u, 1u), global0.a.d.yw)), vec2<u32>(~4294967295u, 4294967295u)));
    var var_1 = Struct_1(vec4<bool>(true, arg_1.x, select(any(vec3<bool>(true, arg_1.x, global0.a.a.x)), false, arg_1.x), !any(vec4<bool>(false, true, false, true))), u_input.b.x, vec2<i32>(~(-_wgslsmith_mod_i32(u_input.c.x, -14015i)), ~((i32(-1i) * -36324i) >> ((16078u << (global0.a.d.x % 32u)) % 32u))), _wgslsmith_mod_vec4_u32(global0.a.d, ~vec4<u32>(6307u, var_0.x, u_input.a.x, global0.a.d.x) & vec4<u32>(firstLeadingBit(7421u), var_0.x, ~80506u, var_0.x)));
    let var_2 = ~(~u_input.a.x);
    let var_3 = Struct_3(global0.a, func_3(max(1i, 1i), var_1.d.x, countOneBits(countOneBits(vec4<u32>(var_0.x, var_1.d.x, 39075u, var_2)))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-907f - 1443f)))));
    return var_3;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: bool, arg_3: Struct_3) -> f32 {
    let var_0 = arg_2;
    global0 = Struct_2(func_1(612f, select(select(vec4<bool>(arg_3.a.a.x, var_0, true, arg_1.b.x), !vec4<bool>(true, true, arg_3.c, false), arg_3.a.a), vec4<bool>(var_0, true, false, !var_0), _wgslsmith_mult_u32(global0.a.d.x, 2374u) < _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_1.c, global0.a.d.x), vec3<u32>(global0.a.d.x, global0.a.d.x, 29634u)))).a);
    let var_1 = -30759i;
    global1 = array<i32, 30>();
    var var_2 = !arg_3.a.a;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(571f, 961f)), _wgslsmith_f_op_f32(f32(-1f) * -788f))), -156f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(global0.a.a.yx, !(!(!(!global0.a.a.xy))), global0.a.a.wz);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(675f, -2108f, 1310f, -167f))), Struct_4(Struct_2(global0.a), global0.a.a.zxy, u_input.a.x >> (12134u % 32u)), var_0.x, func_1(_wgslsmith_f_op_f32(f32(-1f) * -635f), !global0.a.a))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-376f + 851f) - _wgslsmith_f_op_f32(max(-280f, -479f))), -515f)), global0.a.a.x)));
    let var_2 = vec3<u32>(40805u, 21523u, 101568u);
    var var_3 = 86096u;
    let var_4 = Struct_4(Struct_2(global0.a), !select(select(func_1(-1000f, vec4<bool>(false, global0.a.a.x, true, var_0.x)).a.a.zxy, global0.a.a.wxx, any(global0.a.a)), !global0.a.a.zxz, !(!global0.a.a.x)), u_input.a.x);
    var_3 = 1u;
    global0 = Struct_2(Struct_1(vec4<bool>(!var_0.x, !(var_4.b.x == false), var_4.b.x, true), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-2263i, var_4.a.a.c.x), var_4.a.a.c), vec2<i32>(firstTrailingBit(global1[_wgslsmith_index_u32(u_input.a.x, 30u)] ^ global0.a.c.x), global1[_wgslsmith_index_u32(min(~var_4.c, _wgslsmith_add_u32(var_2.x, 4554u)), 30u)]), _wgslsmith_sub_vec4_u32(var_4.a.a.d, ~vec4<u32>(1u, var_4.a.a.d.x, 27214u, 4294967295u))));
    var var_5 = vec4<bool>(false & (func_1(1316f, var_4.a.a.a).a.a.x & global0.a.a.x), !(!all(var_0)), true, func_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.a.a).a.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(98018u, select(vec4<i32>(u_input.c.x, -2147483647i, -11550i, -1i) << (vec4<u32>(var_4.c, 4294967295u, 1u, var_4.c) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 0i, u_input.b.x, global1[_wgslsmith_index_u32(10163u, 30u)]) ^ vec4<i32>(var_4.a.a.b, u_input.c.x, 1i, -1i), select(vec4<i32>(12884i, var_4.a.a.c.x, -1i, 2147483647i), vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 30u)], var_4.a.a.c.x, -1i, u_input.b.x), var_5.x), -vec4<i32>(var_4.a.a.b, global1[_wgslsmith_index_u32(u_input.a.x, 30u)], global0.a.b, -2147483647i)), true) >> (vec4<u32>(_wgslsmith_add_u32(~1u, countOneBits(u_input.a.x)), ~func_1(-243f, var_4.a.a.a).a.d.x, ~func_2(var_4.b.x, Struct_2(Struct_1(vec4<bool>(true, false, true, true), -2147483647i, vec2<i32>(global1[_wgslsmith_index_u32(global0.a.d.x, 30u)], u_input.b.x), vec4<u32>(var_2.x, u_input.a.x, var_4.c, var_4.a.a.d.x)))).x, var_2.x) % vec4<u32>(32u)), vec3<u32>(global0.a.d.x, _wgslsmith_clamp_u32(~14672u, var_2.x, u_input.a.x), abs(63044u)), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1371f - _wgslsmith_f_op_f32(abs(1000f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_div_f32(-1518f, -2230f)) - _wgslsmith_f_op_f32(-2655f * _wgslsmith_f_op_f32(min(-235f, 514f))))));
}

