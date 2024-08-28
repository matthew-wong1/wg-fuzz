struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec4<f32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1000f, false, -278f);

var<private> global1: Struct_4 = Struct_4(Struct_3(vec4<bool>(true, true, true, true), Struct_2(-1701f, false, -2123f), vec4<f32>(-1061f, 120f, 1828f, 110f), true), Struct_3(vec4<bool>(false, true, false, false), Struct_2(713f, false, -649f), vec4<f32>(-519f, 1094f, -594f, 474f), true), false);

var<private> global2: bool;

var<private> global3: Struct_3 = Struct_3(vec4<bool>(false, true, false, true), Struct_2(445f, true, 815f), vec4<f32>(-1086f, -259f, -508f, 1010f), false);

var<private> global4: array<i32, 21> = array<i32, 21>(1i, 68668i, 2147483647i, -505i, -20908i, 2147483647i, -40734i, 1i, -1i, -1012i, 40524i, 2250i, -2081i, i32(-2147483648), 0i, -1i, 29490i, 41402i, 1i, -23694i, -1i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> vec2<bool> {
    let var_0 = firstLeadingBit(u_input.a.x);
    global0 = global3.b;
    global0 = global1.a.b;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(global3.c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -912f))));
    let var_2 = global3.b;
    return vec2<bool>(true, 120294u < ~(u_input.e.x << (u_input.d.x % 32u)));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec4<f32>) -> bool {
    global1 = Struct_4(global1.a, Struct_3(!(!(!vec4<bool>(global3.a.x, arg_0.x, global1.b.a.x, true))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-520f, -1008f))), global3.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1377f, -1150f)), _wgslsmith_f_op_f32(-global3.c.x))), global1.a.c, arg_0.x), u_input.b != abs(u_input.b));
    var var_0 = !(!select(vec2<bool>(global0.b, false), select(!arg_0.xz, vec2<bool>(arg_0.x, global3.a.x), vec2<bool>(global1.c, false)), !func_2()));
    global4 = array<i32, 21>();
    var var_1 = !(!arg_1.a.zww);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -200f);
    return global0.b;
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_3) -> bool {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_3.c.x)))) - 1076f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c.x)) * 866f)));
    let var_1 = Struct_4(global1.a, global1.a, false);
    let var_2 = Struct_3(vec4<bool>(false, true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-100f)))) >= -1885f, (arg_3.b.a == global1.a.c.x) | true), Struct_2(_wgslsmith_f_op_f32(min(951f, _wgslsmith_f_op_f32(-var_1.b.c.x))), true, _wgslsmith_f_op_f32(exp2(global3.b.c))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.c.x, global3.c.x, 429f, 1362f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1638f, _wgslsmith_f_op_f32(arg_0 - global3.c.x), var_0.x, global0.c)))), true);
    let var_3 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, reverseBits(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(64445u, 27854u, u_input.e.x, u_input.c.x)), select(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.d.x, 1u), u_input.e, global1.b.a))), u_input.c.x), 21u)];
    let var_4 = vec4<bool>(true, arg_3.d, !all(!select(var_1.a.a.yy, vec2<bool>(true, global1.c), arg_3.b.b)), false);
    return false;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_3) -> StorageBuffer {
    var var_0 = abs(u_input.a);
    let var_1 = vec3<bool>(!global3.d, global1.a.d, true);
    var var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.b.a) + arg_2.c.x), -1344f)))));
    var_2 = vec2<f32>(var_2.x, _wgslsmith_div_f32(-2024f, _wgslsmith_f_op_f32(f32(-1f) * -1506f)));
    global0 = Struct_2(global3.c.x, false, 206f);
    return StorageBuffer(_wgslsmith_mod_u32(~_wgslsmith_mult_u32(~u_input.d.x, ~28690u), 3556u), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<i32, 21>();
    global2 = !any(select(vec4<bool>(u_input.a.x < 38693i, global0.b, global1.a.b.b, global1.b.a.x), !select(global1.b.a, vec4<bool>(global3.d, global3.a.x, true, true), global0.b), !global1.b.a));
    global4 = array<i32, 21>();
    var var_0 = !select(global3.a.wyx, select(select(select(vec3<bool>(false, true, true), global3.a.xzx, true), select(global3.a.wzw, global3.a.zxw, true), !global3.a.xyz), select(global3.a.wzy, vec3<bool>(global1.a.b.b, false, global3.d), false), true), all(global1.a.a.xzw));
    let x = u_input.a;
    s_output = func_4(select(vec4<bool>(any(vec2<bool>(false, true)) | any(vec3<bool>(true, var_0.x, true)), !func_1(global3.a.xzy, Struct_3(vec4<bool>(false, false, global3.a.x, var_0.x), global1.a.b, vec4<f32>(global1.b.c.x, global1.b.b.a, 1321f, -183f), global0.b), global1.a.c), var_0.x, any(select(global3.a, global3.a, true))), select(vec4<bool>(func_2().x, any(vec2<bool>(global0.b, true)), func_3(global1.a.c.x, global4[_wgslsmith_index_u32(u_input.d.x, 21u)], Struct_1(vec2<i32>(global4[_wgslsmith_index_u32(4294967295u, 21u)], 1i)), global1.a), true), global1.b.a, global3.a), vec4<bool>(true, all(select(vec3<bool>(true, global0.b, true), vec3<bool>(global1.c, global3.b.b, global0.b), false)), u_input.a.x == 0i, !any(global1.b.a.xz))), global1.a.b, global1.b);
}

