struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec3<bool>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23>;

var<private> global1: Struct_1 = Struct_1(false, vec3<u32>(29616u, 0u, 5970u), vec3<bool>(false, false, true), true);

var<private> global2: array<i32, 14> = array<i32, 14>(23298i, 1i, -447i, -1i, 55115i, i32(-2147483648), 2147483647i, 2147483647i, i32(-2147483648), -1i, i32(-2147483648), -1i, -1i, 9912i);

var<private> global3: Struct_1 = Struct_1(true, vec3<u32>(8749u, 1u, 1u), vec3<bool>(false, true, true), false);

var<private> global4: f32 = -1704f;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<u32> {
    global1 = arg_3;
    global4 = -1507f;
    var var_0 = vec2<bool>(any(select(global3.c.xx, global1.c.zy, !global3.c.xz)), true);
    global0 = array<u32, 23>();
    var var_1 = vec4<u32>(~(~28423u), ~abs(global3.b.x), 4294967295u, min(firstTrailingBit(global3.b.x), firstLeadingBit(abs(abs(1u)))));
    return vec3<u32>(firstLeadingBit(~global1.b.x), 41414u, ~select(global1.b.x, u_input.a, 65138u >= _wgslsmith_clamp_u32(0u, 4294967295u, 4294967295u)));
}

fn func_2() -> Struct_1 {
    global3 = Struct_1(true && (global3.c.x | !(global3.c.x || true)), ~func_3(select(vec2<bool>(global1.c.x, global1.d), vec2<bool>(global1.c.x, true), global3.d), !vec4<bool>(global1.d, global1.c.x, global1.a, global3.a), Struct_1(global3.a, global3.b, global1.c, true), Struct_1(global3.d, global1.b, vec3<bool>(false, true, global3.d), true)) ^ ~global3.b, global1.c, all(vec4<bool>(true, global3.d, any(vec4<bool>(false, true, global3.c.x, global3.c.x)), true)) || global1.c.x);
    global0 = array<u32, 23>();
    let var_0 = global1.b | global1.b;
    return Struct_1(all(global3.c), countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(select(4294967295u, 4294967295u, false), ~31976u, abs(60138u)), vec3<u32>(~global1.b.x, _wgslsmith_add_u32(global3.b.x, 0u), 15949u))), select(!(!global3.c), vec3<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global3.b.x, u_input.b.x, 4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(global1.b.x, 23u)], u_input.a, 1u, 1255u)) >= _wgslsmith_mod_u32(112282u, 1u), true, all(!vec4<bool>(true, global3.d, false, global3.a))), select(global3.c, vec3<bool>(false || global1.d, true, true), !global3.c)), true & global1.d);
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    let var_1 = Struct_1(!global1.d, vec3<u32>(global1.b.x, ~func_2().b.x, global1.b.x) ^ vec3<u32>(~global0[_wgslsmith_index_u32(7363u, 23u)] | ~0u, ~_wgslsmith_mult_u32(34182u, global3.b.x), 4294967295u), vec3<bool>(global1.a, global3.d | var_0.c.x, func_2().a), global1.a);
    var var_2 = global2[_wgslsmith_index_u32(global3.b.x, 14u)];
    global0 = array<u32, 23>();
    var_2 = max(-65353i, -1i);
    return Struct_1(true, global3.b, func_2().c, !global1.c.x);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> i32 {
    var var_0 = Struct_1(any(global1.c.xy), arg_1.b, global1.c, all(!global1.c));
    var var_1 = all(select(vec2<bool>(false, false), func_1().c.zx, (i32(-1i) * -global2[_wgslsmith_index_u32(6230u, 14u)]) <= _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 14u)], -22223i, global2[_wgslsmith_index_u32(1u, 14u)], 65694i), vec4<i32>(-23060i, global2[_wgslsmith_index_u32(u_input.b.x, 14u)], -2147483647i, 2147483647i)), -global2[_wgslsmith_index_u32(arg_1.b.x, 14u)])));
    var_1 = select(false, true, arg_1.c.x);
    var_1 = _wgslsmith_f_op_f32(-748f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + arg_0.x))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_f32(f32(-1f) * -528f)));
    var_0 = Struct_1(arg_1.a, arg_1.b, func_2().c, global3.a);
    return -56994i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 14>();
    global0 = array<u32, 23>();
    var var_0 = _wgslsmith_add_i32(-5551i, ~1i) & func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-882f, -1092f, -247f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1131f, -422f, 1000f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-951f, -1761f, 199f) - vec3<f32>(119f, 486f, -383f)))), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

