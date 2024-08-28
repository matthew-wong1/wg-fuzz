struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec3<bool>, 29>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec4<u32>) -> vec2<bool> {
    var var_0 = arg_1;
    var var_1 = ~min(_wgslsmith_add_u32(_wgslsmith_clamp_u32(arg_0.x, 62723u >> (u_input.b % 32u), var_0.a.a.x >> (global0.a.a.x % 32u)), reverseBits(~arg_3.x)), var_0.a.a.x);
    return arg_2.c;
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: f32) -> Struct_2 {
    let var_0 = global0.a;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1083f, arg_2, arg_2), vec3<f32>(642f, -1014f, arg_2))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-422f, arg_2, -348f) * vec3<f32>(886f, 396f, arg_2))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 981f, arg_2))) + vec3<f32>(-570f, arg_2, arg_2));
    global1 = array<vec3<bool>, 29>();
    global1 = array<vec3<bool>, 29>();
    global1 = array<vec3<bool>, 29>();
    return Struct_2(Struct_1(abs(var_0.a) | vec4<u32>(arg_0.x, ~101408u, arg_0.x & global0.a.a.x, 2483u)), global0.a, select(select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true)), vec2<bool>(true, true), all(global1[_wgslsmith_index_u32(var_0.a.x, 29u)])), select(select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, false)), vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, true), true)), func_3(~_wgslsmith_clamp_vec3_u32(var_0.a.yyz, vec3<u32>(u_input.b, u_input.b, 13337u), global0.a.a.zyy), Struct_3(global0.a), Struct_2(Struct_1(var_0.a), Struct_1(vec4<u32>(1u, global0.a.a.x, var_0.a.x, 24405u)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), global0.a), _wgslsmith_div_vec4_u32(var_0.a, vec4<u32>(global0.a.a.x, global0.a.a.x, 36526u, 1u)) << (vec4<u32>(u_input.b, 68908u, 36058u, 1u) % vec4<u32>(32u)))), global0.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: Struct_3) -> f32 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(arg_1.c.zyx, vec3<f32>(-1238f, 825f, arg_1.c.x), global1[_wgslsmith_index_u32(54796u, 29u)])), vec3<f32>(arg_1.c.x, 170f, arg_1.c.x), global1[_wgslsmith_index_u32(abs(arg_1.b.b.a.x), 29u)])))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-arg_1.c.zww))));
    var var_1 = arg_3.a.a.x;
    var var_2 = _wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(global0.a.a.x, arg_2.x)), ~(~vec2<u32>(1u, arg_0.d.a.x))), arg_2.x, global0.a.a.x);
    let var_3 = !(!(!(arg_1.c.x <= 304f)) & false);
    let var_4 = ~min(abs(_wgslsmith_mult_vec3_u32(arg_3.a.a.xxz, arg_2.yzx)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(24122u, arg_0.b.a.x, 0u), vec3<u32>(0u, u_input.b, 4294967295u)), ~(vec3<u32>(0u, 7773u, 0u) | _wgslsmith_mod_vec3_u32(arg_3.a.a.wwz, vec3<u32>(10251u, 0u, 4294967295u))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.c.x, arg_1.c.x))) * -658f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x)))) + var_0.x);
}

fn func_1(arg_0: vec3<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(754f * -378f)))), -580f, -640f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(696f, 1241f)))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), -2121f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1871f, -2352f, true))), 2476f)));
    let var_1 = countOneBits(vec4<i32>(abs(-17191i), 22904i, arg_0.x, countOneBits(abs(_wgslsmith_clamp_i32(u_input.a.x, 0i, arg_0.x)))));
    let var_2 = _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-148f * _wgslsmith_f_op_f32(func_4(func_2(global0.a.a.xw, u_input.c.x, 1182f), Struct_4(Struct_3(Struct_1(global0.a.a)), Struct_2(Struct_1(vec4<u32>(4294967295u, u_input.b, 1u, 1u)), Struct_1(global0.a.a), vec2<bool>(false, false), global0.a), vec4<f32>(177f, -257f, -406f, var_0.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(10289u, global0.a.a.x, u_input.b, u_input.b), global0.a.a), Struct_3(global0.a))))));
    let var_3 = !(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(-16782i != arg_0.x, true, true, true), vec4<bool>(true, true, false, all(vec2<bool>(true, false)))));
    let var_4 = Struct_4(Struct_3(global0.a), Struct_2(func_2(~func_2(global0.a.a.zz, arg_0.x, 341f).a.a.zx, -arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(633f, -262f))).a, Struct_1(_wgslsmith_mod_vec4_u32(select(global0.a.a, vec4<u32>(1u, global0.a.a.x, 4294967295u, 81815u), vec4<bool>(true, true, var_3.x, true)), firstLeadingBit(vec4<u32>(u_input.b, 50023u, u_input.b, 4294967295u)))), !var_3.zx, Struct_1(global0.a.a)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, var_0.x, var_0.x, 1249f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, var_2, var_2, -1229f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2, var_2, var_2, var_2), vec4<f32>(-433f, var_0.x, var_2, -426f))), var_3.x)), vec4<f32>(_wgslsmith_f_op_f32(var_0.x - 569f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1080f * var_2))), _wgslsmith_f_op_f32(step(230f, _wgslsmith_div_f32(1000f, var_2))), -181f))));
    return Struct_3(func_2(func_2(var_4.a.a.a.xw, var_1.x, var_4.c.x).a.a.xw ^ global0.a.a.xz, ~(-(~var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 1153f)))).d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(min(-vec3<i32>(17183i, ~u_input.a.x, 2147483647i), -countOneBits(vec3<i32>(u_input.a.x, -26258i, -18115i))));
    let var_0 = global0.a.a.yx;
    let var_1 = Struct_1(vec4<u32>(func_2(vec2<u32>(_wgslsmith_dot_vec2_u32(global0.a.a.wy, vec2<u32>(4294967295u, 1u)), _wgslsmith_sub_u32(4294967295u, 13038u)), u_input.c.x, _wgslsmith_f_op_f32(-879f * _wgslsmith_f_op_f32(f32(-1f) * -871f))).d.a.x, ~(~u_input.b & min(var_0.x, 77458u)), global0.a.a.x, 4294967295u));
    let var_2 = Struct_4(Struct_3(var_1), func_2(global0.a.a.wx, -1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1435f) * -229f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1083f, -1709f, 511f, 710f) + vec4<f32>(-1000f, -330f, -1840f, 110f)), _wgslsmith_div_vec4_f32(vec4<f32>(-523f, 683f, -889f, -151f), vec4<f32>(1031f, -439f, -283f, -1203f)), false))))));
    global0 = func_1(-(~(-(vec3<i32>(0i, u_input.c.x, -2147483647i) << (global0.a.a.wzx % vec3<u32>(32u))))));
    var var_3 = global0.a.a.wx;
    global1 = array<vec3<bool>, 29>();
    let var_4 = vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, 1i, u_input.c.x), ~vec4<i32>(-10936i, u_input.c.x, -9484i, u_input.c.x)), vec4<i32>(-9730i, abs(u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -31243i, -2860i, u_input.c.x), vec4<i32>(0i, u_input.c.x, -37818i, -32534i)), 12192i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(reverseBits(var_1.a ^ var_1.a) << (var_2.a.a.a % vec4<u32>(32u)), var_2.b.b.a), var_1.a.x, global0.a.a);
}

