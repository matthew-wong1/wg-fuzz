struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: vec2<u32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: vec4<u32>,
    e: bool,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: u32,
    c: vec3<u32>,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4>;

var<private> global1: Struct_3;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>) -> vec3<bool> {
    var var_0 = Struct_1(!vec3<bool>(true, true, global1.a.a.x));
    global1 = Struct_3(global1.a, Struct_1(select(global1.a.a, vec3<bool>(global1.e != global1.b.a.x, var_0.a.x, global1.e != global1.e), all(var_0.a.yx))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.c.x, global1.c.x, global1.c.x, 515f))) - global1.c)), reverseBits(abs(firstLeadingBit(select(arg_0, vec4<u32>(global1.d.x, 3812u, 0u, global1.d.x), false)))), global1.b.a.x);
    var_0 = global1.a;
    var var_1 = reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(~31850u, reverseBits(global1.d.x)), max(~vec2<u32>(arg_0.x, 14636u), ~arg_0.xz)) | max(select(vec2<u32>(global1.d.x, arg_0.x), vec2<u32>(4294967295u, 84824u), global1.a.a.xz) & abs(global1.d.xy), firstLeadingBit(~vec2<u32>(arg_0.x, global1.d.x))));
    var var_2 = global1.c.zw;
    return var_0.a;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_5) -> f32 {
    var var_0 = Struct_1(func_3(global1.d));
    let var_1 = arg_0.a.x;
    global1 = Struct_3(global1.b, global1.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -634f)), global1.c.x, -241f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.x - _wgslsmith_f_op_f32(-global1.c.x)) + global1.c.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.b, arg_1.d.c, min(arg_1.c.x, arg_1.b) | 12917u, arg_1.b), vec4<u32>(~arg_1.d.c << ((arg_1.d.c << (global1.d.x % 32u)) % 32u), ~4294967295u, global1.d.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(global1.d.x, 0u, global1.d.x), vec3<u32>(global1.d.x, global1.d.x, 12888u) | global1.d.xxx))), arg_0.a.x);
    var var_2 = global1.a;
    let var_3 = Struct_1(vec3<bool>(var_1, _wgslsmith_dot_vec2_u32(global1.d.xx, vec2<u32>(arg_1.d.c, global1.d.x)) <= _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 4294967295u, 1u), global1.d), func_3(vec4<u32>(30842u, 1u, arg_1.b, 107221u) ^ ~global1.d).x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.c.x)) - _wgslsmith_f_op_f32(global1.c.x + global1.c.x));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32) -> Struct_3 {
    let var_0 = true;
    var var_1 = (i32(-1i) * -_wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.c), u_input.a)) << (max(130480u, 4294967295u >> (~(~arg_0.c.x) % 32u)) % 32u);
    let var_2 = Struct_3(global1.a, Struct_1(global1.a.a), global1.c, ~firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2, 1u, 1u, 57675u) >> (global1.d % vec4<u32>(32u)), vec4<u32>(arg_1.c.x, 1u, arg_2, arg_2), _wgslsmith_sub_vec4_u32(global1.d, global1.d))), !global1.b.a.x);
    return var_2;
}

fn func_1(arg_0: vec3<f32>) -> Struct_3 {
    global1 = func_4(Struct_2(global1.e, global1.c, ~abs(_wgslsmith_sub_vec2_u32(vec2<u32>(global1.d.x, 1u), vec2<u32>(global1.d.x, global1.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(global1.a.a), Struct_5(vec4<bool>(false, false, global1.a.a.x, global1.e), 21319u, vec3<u32>(1u, 25036u, global1.d.x), Struct_4(u_input.c.xy, 25488i, 1u)))) + arg_0.x))), Struct_2(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.x + -992f), _wgslsmith_f_op_f32(-global1.c.x), arg_0.x, _wgslsmith_f_op_f32(trunc(global1.c.x)))), _wgslsmith_mod_vec2_u32(firstTrailingBit(~global1.d.wz), vec2<u32>(global1.d.x, global1.d.x) >> (global1.d.yy % vec2<u32>(32u))), arg_0.x), ~14798u);
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1173f - 961f)), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1588f));
    var var_1 = global1.d;
    var var_2 = Struct_3(func_4(Struct_2(global1.e, vec4<f32>(-188f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(2020f)), arg_0.x), ~_wgslsmith_mod_vec2_u32(global1.d.wz, vec2<u32>(var_1.x, 4294967295u)), _wgslsmith_f_op_f32(-1021f - _wgslsmith_f_op_f32(exp2(var_0.x)))), Struct_2(!(global1.e & global1.b.a.x), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, global1.c.x, var_0.x, arg_0.x)))), var_1.xz, 1011f), 69612u).a, func_4(Struct_2(global1.e, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.c) - _wgslsmith_f_op_vec4_f32(floor(global1.c))), firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 105460u), var_1.zw)), func_4(Struct_2(global1.b.a.x, global1.c, var_1.xy, 1520f), Struct_2(global1.a.a.x, global1.c, global1.d.zy, global1.c.x), ~40049u).c.x), Struct_2(global1.b.a.x, vec4<f32>(_wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_f32(step(-1079f, var_0.x)), global1.c.x), firstLeadingBit(var_1.yz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.c.x)))), 13842u).a, func_4(Struct_2(false, func_4(Struct_2(true, vec4<f32>(var_0.x, 233f, 242f, -315f), var_1.yy, var_0.x), Struct_2(global1.e, global1.c, global1.d.yz, 804f), global1.d.x).c, vec2<u32>(4294967295u, var_1.x), -768f), Struct_2(true, vec4<f32>(_wgslsmith_f_op_f32(ceil(-705f)), -326f, -1072f, _wgslsmith_f_op_f32(floor(global1.c.x))), func_4(Struct_2(true, global1.c, var_1.xx, var_0.x), Struct_2(true, vec4<f32>(arg_0.x, 1414f, arg_0.x, 932f), global1.d.xy, var_0.x), 45397u).d.ww, var_0.x), global1.d.x).c, global1.d & max(global1.d ^ ~vec4<u32>(3298u, global1.d.x, 24655u, var_1.x), global1.d), global1.a.a.x);
    let var_3 = ~30000u;
    return Struct_3(func_4(Struct_2(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.c.x, arg_0.x, global1.c.x, 1576f), var_2.c)), (var_2.d.wy << (var_2.d.xx % vec2<u32>(32u))) >> (max(vec2<u32>(70599u, 2550u), global1.d.yw) % vec2<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global1.c.x)), _wgslsmith_f_op_f32(-1000f - -561f))), Struct_2(false, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_2.c), vec4<f32>(1831f, global1.c.x, arg_0.x, arg_0.x))), abs(_wgslsmith_clamp_vec2_u32(var_1.zz, global1.d.yx, vec2<u32>(29178u, 40378u))), -2843f), abs(_wgslsmith_add_u32(~40788u, var_1.x))).b, func_4(Struct_2(var_2.a.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.c) - var_2.c), abs(_wgslsmith_add_vec2_u32(var_1.zy, vec2<u32>(var_3, 3477u))), global1.c.x), Struct_2(all(!vec4<bool>(false, true, var_2.e, true)), _wgslsmith_f_op_vec4_f32(-var_2.c), countOneBits(vec2<u32>(0u, var_2.d.x)), -2388f), 11798u).b, global1.c, ~var_2.d, var_2.a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!(!(!select(vec3<bool>(false, false, true), global1.b.a, global1.a.a))));
    global1 = func_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.c.xyx))))));
    let var_1 = ~max(2147483647i, u_input.a.x);
    var var_2 = Struct_4(vec2<i32>(min(~(-2147483647i) & global0[_wgslsmith_index_u32(global1.d.x << (41873u % 32u), 4u)], countOneBits(global0[_wgslsmith_index_u32(0u, 4u)]) ^ select(-36055i, var_1, false)), select(_wgslsmith_dot_vec3_i32(-vec3<i32>(-338i, global0[_wgslsmith_index_u32(global1.d.x, 4u)], 2147483647i), ~vec3<i32>(u_input.a.x, -25109i, -1i)), ~(-12432i), var_0.a.x)), u_input.b, firstTrailingBit(countOneBits(~max(0u, 10538u))));
    var var_3 = !(!vec2<bool>(true, var_0.a.x));
    global0 = array<i32, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~_wgslsmith_mod_u32(~140031u, var_2.c)), -1819f);
}

