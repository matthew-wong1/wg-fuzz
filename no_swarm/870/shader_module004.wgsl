struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: f32,
    d: vec3<i32>,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_4 = Struct_4(vec3<f32>(282f, -214f, 483f), vec4<u32>(1u, 6930u, 4294967295u, 18762u), 455f, vec3<i32>(2147483647i, 9298i, -1i));

var<private> global2: bool;

var<private> global3: vec2<u32>;

var<private> global4: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: vec2<bool>, arg_3: vec2<f32>) -> u32 {
    let var_0 = Struct_2(vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(global1.b.x, ~global3.x), ~(~18343u)), 4294967295u), arg_0.d.b, arg_0.d.c, _wgslsmith_dot_vec4_i32(~(-vec4<i32>(-28663i, -29469i, 13558i, -2147483647i)) | ~countOneBits(vec4<i32>(2147483647i, -24301i, -31118i, arg_0.d.d)), vec4<i32>(-global1.d.x, max(0i, global1.d.x), arg_0.d.b.x, -73579i) << (global1.b % vec4<u32>(32u))));
    let var_1 = ~6800u;
    global2 = arg_2.x;
    global3 = global1.b.zx;
    global0 = global1.a.x;
    return _wgslsmith_dot_vec4_u32(~(~vec4<u32>(_wgslsmith_mult_u32(global1.b.x, u_input.a), 4294967295u, 22576u, 62472u)), countOneBits(vec4<u32>(1u, 1u, abs(_wgslsmith_mult_u32(26848u, 0u)), reverseBits(max(0u, 0u)))));
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> vec2<bool> {
    global3 = reverseBits(~_wgslsmith_div_vec2_u32(arg_0.a, ~(~arg_0.a)));
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1)));
    global2 = true;
    let var_0 = vec3<u32>(global1.b.x, 0u, 2535u);
    global3 = vec2<u32>(~var_0.x << (4294967295u % 32u), _wgslsmith_sub_u32(global3.x, func_3(Struct_3(global1.a, Struct_1(vec2<i32>(-1i, global1.d.x), 538f), -1244f, Struct_2(var_0.zy, arg_0.b, true, global1.d.x)), countOneBits(global1.b.xwy), vec2<bool>(arg_0.c, false), vec2<f32>(181f, -1000f)))) ^ vec2<u32>(_wgslsmith_clamp_u32(~(arg_0.a.x & var_0.x), global3.x, 50942u), var_0.x);
    return vec2<bool>(true, true);
}

fn func_4(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: vec2<bool>) -> Struct_2 {
    global4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(474f)) + 801f), global1.c));
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(1325f - -413f)), _wgslsmith_f_op_f32(ceil(global1.c)))) < _wgslsmith_div_f32(-278f, _wgslsmith_div_f32(global1.c, 754f));
    var_0 = var_1;
    let var_2 = Struct_2(global1.b.xw, vec3<i32>(~arg_1.x, _wgslsmith_div_i32(global1.d.x, 17430i), global1.d.x), arg_2.x, (arg_1.x << (4294967295u % 32u)) & global1.d.x);
    return var_2;
}

fn func_1() -> StorageBuffer {
    var var_0 = ~global1.b.x;
    let var_1 = func_4(Struct_5(~(reverseBits(global1.b) | _wgslsmith_add_vec4_u32(global1.b, global1.b))), select(global1.d.yx, ~global1.d.zz, true), select(vec2<bool>(all(vec2<bool>(false, true)), true), vec2<bool>(true, true), any(!func_2(Struct_2(vec2<u32>(u_input.a, 33621u), global1.d, true, -2147483647i), global1.a.x))));
    let var_2 = -350f;
    let var_3 = Struct_1(var_1.b.yx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2))) - _wgslsmith_f_op_f32(min(-635f, _wgslsmith_f_op_f32(select(global1.c, global1.c, true))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2 * global1.c))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.c, 437f))))));
    let var_4 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(110f)) * _wgslsmith_f_op_f32(-var_3.b))), _wgslsmith_f_op_f32(exp2(var_3.b)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_3.b, _wgslsmith_f_op_f32(trunc(global1.c)), false))))), Struct_1(~vec2<i32>(var_3.a.x, -586i), global1.c), var_3.b, var_1);
    return StorageBuffer(~abs(min(global1.d.x, 99146i >> (global1.b.x % 32u))), var_2, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) * _wgslsmith_f_op_f32(global1.c - _wgslsmith_f_op_f32(f32(-1f) * -1849f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x))), 638f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_2)))), _wgslsmith_f_op_f32(round(-1092f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~min(max(vec2<u32>(_wgslsmith_dot_vec3_u32(global1.b.zzz, vec3<u32>(global3.x, u_input.a, global1.b.x)), ~global3.x), global1.b.zz), ~(~global1.b.zy) & vec2<u32>(global1.b.x | 1u, reverseBits(33843u)));
    var var_0 = true;
    let x = u_input.a;
    s_output = func_1();
}

