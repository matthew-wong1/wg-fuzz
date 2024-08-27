struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 21>;

var<private> global1: array<vec4<u32>, 3>;

var<private> global2: array<Struct_1, 22>;

var<private> global3: array<Struct_1, 22>;

var<private> global4: Struct_1 = Struct_1(vec4<bool>(false, true, false, false), i32(-2147483648), 123545u, 0u, vec3<f32>(-460f, 342f, -995f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1() -> vec4<bool> {
    var var_0 = global4.e;
    let var_1 = vec3<bool>(true, global4.a.x, all(vec3<bool>(var_0.x != 1886f, all(global4.a.wwx), true)));
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.x)), 1744f, _wgslsmith_f_op_f32(-268f - _wgslsmith_f_op_f32(-127f + 2573f)), _wgslsmith_f_op_f32(1f * global4.e.x))))));
    let var_3 = ~vec3<i32>(1i, -41733i, 21167i);
    global3 = array<Struct_1, 22>();
    return select(!(!select(global4.a, !vec4<bool>(var_1.x, global4.a.x, var_1.x, global4.a.x), vec4<bool>(false, false, var_1.x, var_1.x))), !(!vec4<bool>(global4.a.x, true, any(var_1), 16870u != u_input.d.x)), !global4.a);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1) -> vec4<bool> {
    global0 = array<vec4<u32>, 21>();
    var var_0 = _wgslsmith_f_op_f32(-global4.e.x);
    global1 = array<vec4<u32>, 3>();
    let var_1 = Struct_1(vec4<bool>(arg_2.a.x, arg_2.a.x & (select(arg_0.a.x, arg_2.a.x, true) || arg_2.a.x), false, true && (arg_2.a.x && all(arg_2.a.yxw))), arg_2.b, ~global4.d, u_input.a.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global4.e.x))) - _wgslsmith_f_op_f32(sign(-765f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.e.x, global4.e.x, true))) - arg_0.e.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(arg_2.e.x, _wgslsmith_f_op_f32(step(arg_2.e.x, 267f)), any(vec2<bool>(true, arg_0.a.x))))))));
    let var_2 = global4.a.x;
    return select(vec4<bool>(true, var_1.c > _wgslsmith_mod_u32(var_1.c, arg_1.x << (0u % 32u)), false, _wgslsmith_clamp_i32(max(-2147483647i, u_input.e), ~1146i, i32(-1i) * -2147483647i) < (countOneBits(-17317i) >> (reverseBits(var_1.c) % 32u))), select(!vec4<bool>(false, all(var_1.a), arg_0.a.x, true && arg_2.a.x), select(vec4<bool>(true, true, arg_2.a.x, var_1.a.x), !(!vec4<bool>(var_1.a.x, false, true, global4.a.x)), global4.a.x), vec4<bool>(arg_0.a.x, any(var_1.a.wyw), false, !any(vec2<bool>(global4.a.x, true)))), !(arg_0.d < ~17790u) != select((i32(-1i) * -18295i) <= arg_2.b, all(!vec3<bool>(false, true, arg_2.a.x)), 1i < ~global4.b));
}

fn func_2(arg_0: u32) -> i32 {
    var var_0 = Struct_1(func_3(Struct_1(global4.a, -2147483647i, arg_0, ~(20394u >> (global4.d % 32u)), global4.e), u_input.d.zz, global3[_wgslsmith_index_u32(30169u, 22u)]), _wgslsmith_dot_vec4_i32(~(~_wgslsmith_mod_vec4_i32(vec4<i32>(global4.b, u_input.b, -6218i, -83642i), vec4<i32>(u_input.e, -18023i, global4.b, global4.b))), (vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) << (select(vec4<u32>(u_input.d.x, 67247u, 17373u, 34602u), global0[_wgslsmith_index_u32(0u, 21u)], vec4<bool>(global4.a.x, global4.a.x, global4.a.x, false)) % vec4<u32>(32u))) >> (select(~vec4<u32>(52109u, 20727u, arg_0, u_input.a.x), _wgslsmith_add_vec4_u32(global1[_wgslsmith_index_u32(global4.c, 3u)], global1[_wgslsmith_index_u32(93422u, 3u)]), 10825i >= u_input.e) % vec4<u32>(32u))), global4.d, 1u, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1076f - 1000f) + _wgslsmith_f_op_f32(floor(global4.e.x)))), global4.e.x, 1663f));
    var var_1 = !(arg_0 <= _wgslsmith_mod_u32(global4.c, global4.d));
    let var_2 = -1117f;
    global2 = array<Struct_1, 22>();
    let var_3 = global2[_wgslsmith_index_u32(~firstLeadingBit(~u_input.d.x), 22u)];
    return ~_wgslsmith_add_i32(global4.b, ~_wgslsmith_sub_i32(-7594i, var_3.b)) << (var_3.d % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_1(), select(func_2(u_input.d.x | global4.d), 2147483647i, true || select(false, false, all(vec4<bool>(global4.a.x, false, global4.a.x, true)))), _wgslsmith_mod_u32(u_input.a.x, ~(~u_input.d.x | _wgslsmith_mod_u32(4294967295u, global4.c))), _wgslsmith_dot_vec3_u32(vec3<u32>(~reverseBits(global4.c), _wgslsmith_add_u32(global4.d, u_input.d.x) | abs(19806u), ~(~53372u)), u_input.c.wzz), global4.e);
    global4 = Struct_1(select(select(global4.a, global4.a, select(select(vec4<bool>(false, false, var_0.a.x, true), global4.a, var_0.a), global4.a, false)), !(!global4.a), !(!any(vec2<bool>(global4.a.x, global4.a.x)))), _wgslsmith_add_i32(countOneBits(var_0.b), global4.b), ~(~(~var_0.c)), ~global4.d, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.e.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(global4.e.x, global4.e.x, var_0.a.x))))))));
    let var_1 = _wgslsmith_add_u32(~(~min(u_input.a.x, 1u)), 1u);
    global0 = array<vec4<u32>, 21>();
    var_0 = global3[_wgslsmith_index_u32(var_1, 22u)];
    let var_2 = !(!(!(false && var_0.a.x) || all(global4.a)));
    global2 = array<Struct_1, 22>();
    let var_3 = global2[_wgslsmith_index_u32(var_1, 22u)];
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(7038u), -1000f, firstLeadingBit(firstTrailingBit(reverseBits(select(vec2<i32>(2147483647i, var_0.b), vec2<i32>(global4.b, var_0.b), true)))), var_3.b, _wgslsmith_f_op_f32(-1229f - _wgslsmith_f_op_f32(max(1009f, _wgslsmith_f_op_f32(sign(var_3.e.x))))));
}

