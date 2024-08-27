struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: i32 = -1i;

var<private> global2: bool;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_3 {
    var var_0 = max(min(~vec3<i32>(-20903i << (u_input.b % 32u), -12177i, min(-22769i, 0i)), ~select(vec3<i32>(1i, -3217i, -16883i), vec3<i32>(2147483647i, 2147483647i, -1i), global0.b.c.x) >> (u_input.c.wxz % vec3<u32>(32u))), vec3<i32>(1i, 1i, 1i));
    var var_1 = -7148i;
    let var_2 = Struct_2(~vec2<u32>(abs(0u), max(reverseBits(0u), global0.a.d | 27955u)), global0.c, global0.b, firstTrailingBit(select(i32(-1i) * -var_0.x, abs(_wgslsmith_clamp_i32(var_0.x, 2147483647i, var_0.x)), false)), 231f);
    global0 = Struct_3(global0.a, global0.c, global0.c);
    let var_3 = vec3<u32>(max(~(~var_2.c.d), u_input.a.x) | u_input.a.x, ~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_2.c.d, var_2.b.d, 4294967295u, 14669u)), reverseBits(vec4<u32>(20835u, 1u, global0.b.d, global0.c.d))), 4294967295u), _wgslsmith_div_u32(~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), ~global0.c.d), var_2.c.d));
    return Struct_3(global0.c, global0.a, Struct_1(global0.b.a, vec4<f32>(_wgslsmith_f_op_f32(-var_2.c.b.x), -679f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(var_2.c.b.x)))), var_2.c.b.x), var_2.c.a, (var_3.x >> (29024u % 32u)) | 9339u));
}

fn func_1() -> u32 {
    global0 = func_2();
    var var_0 = Struct_3(global0.c, func_2().a, Struct_1(global0.b.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.c.b.x - global0.c.b.x), -732f, _wgslsmith_f_op_f32(-global0.b.b.x), _wgslsmith_f_op_f32(trunc(global0.c.b.x)))), global0.c.c, ~0u));
    global1 = 1i;
    var var_1 = var_0.a.b;
    var var_2 = func_2();
    return ~40411u;
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    let var_0 = 1i & ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-2147483647i, 2147483647i)), firstTrailingBit(vec2<i32>(-8087i, 7676i))), ~min(1i, -2147483647i), select(i32(-1i) * -26328i, -2147483647i, true));
    let var_1 = 18724u;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    global0 = func_2();
    var var_3 = _wgslsmith_f_op_vec2_f32(-global0.c.b.xw);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1089f)) * -639f)))), _wgslsmith_f_op_f32(min(var_3.x, 841f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    var_0 = func_1();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(global0.c.b.zy)))) * global0.b.b.x))));
    global2 = any(vec4<bool>(all(vec3<bool>(global0.b.a.x, true, all(vec2<bool>(true, global0.b.c.x)))), global0.b.c.x, true, false));
    global2 = global0.c.c.x;
    let var_2 = _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(~(~vec3<u32>(46188u, global0.a.d, global0.c.d)), vec3<u32>(global0.b.d, 0u, ~0u)), ~(vec3<u32>(4294967295u, 25531u, 1u) & vec3<u32>(u_input.c.x, 6473u, 78237u))) << (vec3<u32>(13620u, ~u_input.a.x, ~(~77091u)) % vec3<u32>(32u));
    let var_3 = select(all(select(select(select(vec4<bool>(false, global0.a.c.x, false, global0.a.a.x), vec4<bool>(false, global0.b.c.x, global0.c.c.x, global0.c.a.x), true), select(vec4<bool>(true, global0.c.a.x, global0.b.c.x, global0.a.a.x), vec4<bool>(global0.a.c.x, global0.b.c.x, global0.a.c.x, global0.b.a.x), vec4<bool>(false, global0.b.a.x, false, global0.b.c.x)), any(vec3<bool>(false, global0.c.c.x, global0.c.c.x))), select(vec4<bool>(false, global0.c.c.x, false, global0.a.c.x), !vec4<bool>(true, global0.b.a.x, global0.b.c.x, true), select(vec4<bool>(false, false, global0.c.a.x, global0.a.a.x), vec4<bool>(false, global0.c.a.x, true, true), vec4<bool>(true, global0.b.a.x, false, global0.a.a.x))), global0.a.c.x)), global0.a.c.x, any(select(!vec4<bool>(global0.b.c.x, global0.b.c.x, true, false), vec4<bool>(false, false, global0.a.a.x, global0.b.a.x), !vec4<bool>(global0.b.a.x, true, false, true))) && (all(!global0.a.c) != !(!global0.a.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.a.b.x, _wgslsmith_f_op_f32(-1092f - _wgslsmith_f_op_f32(440f + 1000f))), _wgslsmith_div_f32(global0.a.b.x, _wgslsmith_f_op_f32(var_1 - func_2().c.b.x))), -183f);
}

