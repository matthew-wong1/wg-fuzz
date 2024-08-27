struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> u32 {
    var var_0 = Struct_1(-1897f, any(vec2<bool>(_wgslsmith_f_op_f32(sign(307f)) >= _wgslsmith_f_op_f32(round(711f)), select(false, true, true))));
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(u_input.c.zx, u_input.c.zz), countOneBits(abs(countOneBits(u_input.c.zx)) << (_wgslsmith_clamp_vec2_u32(~vec2<u32>(27150u, u_input.c.x), u_input.c.xx, max(u_input.c.yy, u_input.c.xy)) % vec2<u32>(32u)))), 3u)];
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a)))), _wgslsmith_f_op_f32(max(-2609f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + -960f))))), 1717f, -1000f);
    global0 = array<Struct_1, 3>();
    return ~u_input.c.x;
}

fn func_3(arg_0: u32) -> vec3<f32> {
    let var_0 = ~select(u_input.c.zz, vec2<u32>(_wgslsmith_sub_u32(~arg_0, arg_0), ~u_input.c.x), false);
    global0 = array<Struct_1, 3>();
    var var_1 = u_input.c >> (vec3<u32>(5427u, abs(_wgslsmith_div_u32(u_input.c.x, var_0.x)), 0u) % vec3<u32>(32u));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1168f, -1112f, 1171f)))), vec3<f32>(-226f, 513f, _wgslsmith_f_op_f32(trunc(277f))))))));
}

fn func_1(arg_0: bool) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(~func_2())) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-130f, -1051f, 222f), vec3<f32>(523f, -1559f, -883f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(796f, 1033f, -214f), vec3<f32>(-1933f, 219f, 383f))), !vec3<bool>(true, arg_0, arg_0))))));
    global0 = array<Struct_1, 3>();
    let var_1 = u_input.c;
    let var_2 = select(vec3<bool>(all(vec2<bool>(true, true)), 1886f > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x)), true), select(!vec3<bool>(any(vec3<bool>(arg_0, false, arg_0)), true, true), vec3<bool>(true, true, true), !select(vec3<bool>(arg_0, true, true), !vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, arg_0, arg_0))), !(304f < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -341f)))));
    global0 = array<Struct_1, 3>();
    return Struct_3(select(select(select(!vec4<bool>(true, var_2.x, false, true), select(vec4<bool>(true, arg_0, false, false), vec4<bool>(var_2.x, arg_0, var_2.x, arg_0), true), vec4<bool>(true, true, true, true)), !(!vec4<bool>(arg_0, false, true, true)), all(select(vec4<bool>(true, true, var_2.x, true), vec4<bool>(true, var_2.x, true, var_2.x), arg_0))), select(!vec4<bool>(true, arg_0, false, arg_0), !select(vec4<bool>(var_2.x, var_2.x, arg_0, true), vec4<bool>(var_2.x, true, false, false), true), true), !(!(!vec4<bool>(true, arg_0, false, var_2.x)))), u_input.c.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(410f, 1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))), var_0.x) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1987f, -886f, 677f))) + vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-378f - var_0.x), _wgslsmith_f_op_f32(1000f * 517f), 2038f))));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec4<u32>) -> f32 {
    global0 = array<Struct_1, 3>();
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(~u_input.c.x, 3u)]);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_f_op_f32(exp2(var_0.a.a))), var_0.a.b));
    var var_2 = 0i;
    var var_3 = 2526u;
    return _wgslsmith_f_op_f32(var_1.a.a + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.a + arg_0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(true).c.x))));
}

fn func_5(arg_0: vec2<f32>, arg_1: u32, arg_2: bool, arg_3: vec4<f32>) -> u32 {
    global0 = array<Struct_1, 3>();
    let var_0 = 1i;
    var var_1 = Struct_3(vec4<bool>(false, (!arg_2 | true) || false, !(any(vec4<bool>(true, arg_2, arg_2, true)) == arg_2), arg_2), select(~34511u, 71605u << ((arg_1 << (1u % 32u)) % 32u), false), vec4<f32>(arg_3.x, _wgslsmith_f_op_f32(-553f + 1744f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + arg_3.x), _wgslsmith_f_op_f32(-1252f * -924f)));
    global0 = array<Struct_1, 3>();
    let var_2 = arg_1;
    return arg_1;
}

fn func_6(arg_0: i32, arg_1: u32, arg_2: Struct_2, arg_3: f32) -> Struct_2 {
    var var_0 = Struct_3(!(!select(!vec4<bool>(arg_2.a.b, arg_2.a.b, true, arg_2.a.b), vec4<bool>(true, false, arg_2.a.b, false), true)), ~(_wgslsmith_sub_u32(u_input.c.x, 1u) << (~u_input.c.x % 32u)), vec4<f32>(_wgslsmith_f_op_f32(-1176f - arg_3), _wgslsmith_f_op_f32(func_1(arg_2.a.a != arg_3).c.x * 678f), func_1(arg_2.a.b).c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.a.a))), _wgslsmith_f_op_f32(f32(-1f) * -511f))));
    var var_1 = abs(-2731i);
    var var_2 = vec3<bool>(!select(arg_2.a.b, arg_2.a.b, select(select(var_0.a.x, var_0.a.x, arg_2.a.b), true, 26369i < arg_0)), false, false);
    var_0 = Struct_3(vec4<bool>(!any(vec3<bool>(true, var_2.x, arg_2.a.b)), func_1(var_2.x).a.x, var_0.a.x, !var_0.a.x), arg_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_2.a.a + arg_3), arg_2.a.a, -788f, _wgslsmith_f_op_f32(f32(-1f) * -991f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c) * vec4<f32>(-203f, arg_3, -1599f, -809f)))));
    let var_3 = func_1(any(vec2<bool>(all(var_0.a.yzw), true)));
    return Struct_2(arg_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 3>();
    let var_0 = ~u_input.a.xx;
    var var_1 = u_input.b;
    let var_2 = func_6(var_0.x << ((56460u >> (countOneBits(u_input.c.x) % 32u)) % 32u), func_5(vec2<f32>(_wgslsmith_f_op_f32(func_4(func_1(false), select(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.c.x), vec4<bool>(true, false, false, true)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 43187u, u_input.c.x, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u)))), _wgslsmith_f_op_f32(-187f * -1299f)), _wgslsmith_add_u32(~u_input.c.x, (0u << (u_input.c.x % 32u)) ^ 13354u), any(vec2<bool>(false, false)) || true, vec4<f32>(_wgslsmith_f_op_f32(abs(-495f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1129f - -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -702f), _wgslsmith_f_op_f32(f32(-1f) * -366f))), Struct_2(global0[_wgslsmith_index_u32(abs(1u), 3u)]), _wgslsmith_f_op_f32(175f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-333f + _wgslsmith_f_op_f32(f32(-1f) * -370f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -927f) + _wgslsmith_f_op_f32(f32(-1f) * -910f)))));
    var var_3 = u_input.c.x;
    let var_4 = var_2.a.b & (-1000f >= var_2.a.a);
    let var_5 = -1731f;
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.x, ~u_input.c.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5, _wgslsmith_f_op_f32(max(var_5, var_5)), _wgslsmith_f_op_f32(-1000f + -1000f), _wgslsmith_f_op_f32(exp2(var_5))))), ~reverseBits(~vec3<u32>(u_input.c.x, u_input.c.x, 8623u)));
}

