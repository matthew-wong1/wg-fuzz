struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec3<bool>;

var<private> global2: i32 = 1324i;

var<private> global3: array<vec3<f32>, 26>;

var<private> global4: array<f32, 8> = array<f32, 8>(1095f, -779f, 847f, -1012f, -376f, -416f, -548f, 444f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    return Struct_2(-1177f);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2) -> u32 {
    var var_0 = vec4<bool>(global1.x, true, abs(u_input.b >> ((u_input.b >> (u_input.b % 32u)) % 32u)) > abs(u_input.b), global1.x);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.a)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1476f, _wgslsmith_f_op_f32(ceil(-115f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.b, 8u)]) * global0.a));
    let var_2 = Struct_2(-242f);
    var_0 = vec4<bool>(var_1.x >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.a)) + -424f))), arg_0.x & true, var_0.x, false);
    global3 = array<vec3<f32>, 26>();
    return 1u >> (~(~(~(1u & u_input.d.x))) % 32u);
}

fn func_1() -> u32 {
    global3 = array<vec3<f32>, 26>();
    let var_0 = Struct_1(u_input.d.x >> (17092u % 32u), global1.zx, 64386u);
    global0 = func_2(var_0);
    var var_1 = Struct_5(var_0, var_0.c, ~1i, _wgslsmith_f_op_f32(sign(105f)));
    let var_2 = _wgslsmith_dot_vec2_i32(~(-vec2<i32>(u_input.a.x, 1i) | vec2<i32>(var_1.c ^ 13668i, -u_input.a.x)), ~u_input.a.wx);
    return _wgslsmith_add_u32(var_0.c, _wgslsmith_sub_u32(1u, func_3(vec2<bool>(false && global1.x, var_1.a.b.x && var_1.a.b.x), func_2(Struct_1(u_input.c, vec2<bool>(var_0.b.x, false), 4294967295u)))));
}

fn func_4(arg_0: Struct_5, arg_1: u32, arg_2: vec3<i32>) -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(round(1f)));
    let var_1 = func_2(arg_0.a);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(arg_0.a.a, 26u)] * global3[_wgslsmith_index_u32(u_input.d.x, 26u)]), _wgslsmith_f_op_vec3_f32(floor(global3[_wgslsmith_index_u32(u_input.c, 26u)]))))) * global3[_wgslsmith_index_u32(u_input.c, 26u)]) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(167f, _wgslsmith_f_op_f32(abs(global0.a)), arg_0.d), vec3<f32>(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(101630u, arg_0.a.a, 50829u), vec3<u32>(arg_0.a.c, u_input.c, arg_1)), 8u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d - var_1.a) - _wgslsmith_f_op_f32(-1341f + 114f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(429f * arg_0.d) + _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(19972u, 8u)] - arg_0.d))))));
    global2 = _wgslsmith_clamp_i32(-511i, _wgslsmith_dot_vec2_i32((vec2<i32>(2147483647i, 80999i) << (firstTrailingBit(vec2<u32>(u_input.b, 0u)) % vec2<u32>(32u))) >> (u_input.d.zz % vec2<u32>(32u)), -(~_wgslsmith_div_vec2_i32(vec2<i32>(19187i, 0i), arg_2.yz))), -1i << (u_input.d.x % 32u));
    return -1212f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_5(Struct_1(countOneBits(4294967295u), global1.zx, u_input.c), ~(~u_input.d.x), -_wgslsmith_sub_i32(24743i, 18179i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + -2072f)), func_1(), firstLeadingBit(~(-u_input.a.xyz)))) + _wgslsmith_f_op_f32(f32(-1f) * -667f));
    global0 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(781f)), _wgslsmith_f_op_f32(step(global0.a, _wgslsmith_f_op_f32(select(-2001f, 526f, !global1.x)))), !(any(vec3<bool>(global1.x, true, global1.x)) && all(vec4<bool>(global1.x, false, global1.x, false))))));
    var var_1 = -6612i;
    var var_2 = ~vec3<u32>(max(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 1u) | u_input.d.yx, max(u_input.d.yy, vec2<u32>(u_input.c, 1u))), ~0u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(func_3(global1.yz, Struct_2(global0.a)), firstLeadingBit(1u)), _wgslsmith_mod_u32(u_input.d.x, u_input.b ^ u_input.d.x)), abs(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(1457u, u_input.d.x, 0u)), vec3<u32>(u_input.c, 1866u, u_input.d.x))));
    var var_3 = 60985u;
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global4[_wgslsmith_index_u32(u_input.c, 8u)], -363f))))))));
    var var_5 = Struct_3(vec4<f32>(global4[_wgslsmith_index_u32(~(~(var_2.x ^ u_input.d.x)), 8u)], 378f, global4[_wgslsmith_index_u32(~(~abs(4294967295u)), 8u)], -398f));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, vec3<f32>(var_5.a.x, global0.a, 945f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-913f, var_4.x, _wgslsmith_f_op_f32(f32(-1f) * -496f), -830f) - var_5.a), -648f);
}

