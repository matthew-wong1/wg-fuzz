struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1> = array<u32, 1>(33724u);

var<private> global1: u32 = 8602u;

var<private> global2: i32;

var<private> global3: array<u32, 6>;

var<private> global4: Struct_3 = Struct_3(Struct_2(vec3<u32>(1u, 43518u, 18622u), Struct_1(2805f, 1177f)), Struct_1(1132f, -425f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = -19608i;
    global4 = Struct_3(global4.a, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -181f), 163f));
    global3 = array<u32, 6>();
    let var_1 = _wgslsmith_add_vec3_i32(abs(min(-vec3<i32>(0i, 2147483647i, u_input.a), countOneBits(vec3<i32>(u_input.a, u_input.a, u_input.a))) ^ (firstLeadingBit(vec3<i32>(u_input.a, 1i, u_input.a)) ^ max(vec3<i32>(u_input.a, u_input.a, -1i), vec3<i32>(u_input.a, u_input.a, u_input.a)))), vec3<i32>(u_input.a, 2147483647i, u_input.a));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1743f)) - _wgslsmith_f_op_f32(exp2(global4.a.b.b))) + _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(global4.a.b.a + 2091f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(global4.a.b.b)))));
    return 56251u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32, arg_3: vec2<u32>) -> vec2<bool> {
    global3 = array<u32, 6>();
    global1 = func_3();
    let var_0 = vec2<bool>(4294967295u >= min(global0[_wgslsmith_index_u32(arg_1.a.x, 1u)], 0u), any(vec3<bool>(global4.a.b.b > global4.b.b, all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true))), false)));
    global0 = array<u32, 1>();
    let var_1 = true;
    return select(var_0, select(vec2<bool>(any(vec2<bool>(true, true)), var_1), vec2<bool>(any(select(vec3<bool>(var_0.x, false, true), vec3<bool>(true, var_1, var_1), vec3<bool>(false, true, false))), 110284u == _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, arg_1.a.x, arg_3.x, 0u), vec4<u32>(15009u, u_input.b, u_input.b, arg_2))), !vec2<bool>(false, !var_1)), var_0);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: Struct_4, arg_3: Struct_2) -> bool {
    var var_0 = Struct_4(vec3<u32>(1u, arg_3.a.x, global3[_wgslsmith_index_u32(~4294967295u, 6u)] >> ((arg_2.a.x & ~global0[_wgslsmith_index_u32(u_input.b, 1u)]) % 32u)));
    var var_1 = vec4<bool>(any(func_2(Struct_1(global4.a.b.b, -1206f), arg_3, min(arg_2.a.x | arg_3.a.x, 1u), arg_3.a.zy)), true, all(!arg_1), arg_1.x);
    var var_2 = vec3<bool>(any(!(!func_2(global4.a.b, Struct_2(global4.a.a, Struct_1(-110f, global4.b.a)), u_input.b, vec2<u32>(0u, u_input.b)))), var_1.x, any(!vec4<bool>(true, any(vec2<bool>(var_1.x, false)), true, true)));
    global0 = array<u32, 1>();
    var var_3 = !any(func_2(Struct_1(-580f, 1f), Struct_2(select(arg_2.a, vec3<u32>(4294967295u, arg_2.a.x, arg_3.a.x), vec3<bool>(var_1.x, false, true)), Struct_1(-1530f, arg_3.b.a)), ~abs(2008u), var_0.a.xz));
    return any(!select(var_2.yx, var_2.zz, select(var_2.xx, vec2<bool>(arg_1.x, var_2.x), var_2.yy)));
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: vec2<bool>, arg_3: bool) -> Struct_3 {
    global4 = Struct_3(Struct_2(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(10063u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(81763u, 1u)], 1u)], global4.a.a.x), global4.a.a, ~vec3<u32>(59515u, 4294967295u, 4294967295u)), global4.a.a, arg_0.zyx), global4.b), global4.a.b);
    let var_0 = select(!select(select(arg_0.zwx, arg_0.yyz, true), vec3<bool>(true, all(arg_2), arg_3), (false | arg_0.x) != (global4.b.a > global4.b.b)), !(!select(vec3<bool>(arg_3, true, false), select(arg_0.xxw, arg_0.zwz, arg_0.wxx), select(arg_2.x, false, false))), !vec3<bool>(arg_3, false, !arg_2.x));
    let var_1 = -2147483647i;
    var var_2 = global4.a.b;
    global3 = array<u32, 6>();
    return Struct_3(Struct_2(global4.a.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(239f, var_2.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) + 650f))), Struct_1(2136f, var_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_4(select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_1(vec3<i32>(2147483647i, 0i, 0i), vec2<bool>(false, true), Struct_4(global4.a.a), Struct_2(global4.a.a, Struct_1(global4.b.a, -468f)))), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), true)), vec4<bool>(true, true, false, true), vec4<bool>(true, true, func_2(global4.b, Struct_2(global4.a.a, Struct_1(global4.b.b, -342f)), 1u, vec2<u32>(50725u, 4294967295u)).x, func_2(global4.a.b, Struct_2(global4.a.a, global4.b), select(42916u, 1u, false), vec2<u32>(global3[_wgslsmith_index_u32(101901u, 6u)], 0u)).x)), -u_input.a, !select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, true)), true);
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(242f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-256f)))), _wgslsmith_f_op_f32(min(-179f, _wgslsmith_f_op_f32(global4.a.b.a - global4.a.b.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.b.a), _wgslsmith_f_op_f32(ceil(218f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a.b.b, global4.a.b.a, global4.a.b.a, global4.b.b)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(651f, -161f, 729f, global4.a.b.a) * vec4<f32>(1000f, 649f, global4.b.b, global4.a.b.a))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(167f, global4.b.b, -709f, 520f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.b.a, -198f, 1038f, global4.a.b.a))))) + vec4<f32>(_wgslsmith_f_op_f32(-global4.a.b.b), _wgslsmith_f_op_f32(f32(-1f) * -395f), _wgslsmith_f_op_f32(round(-148f)), _wgslsmith_f_op_f32(ceil(global4.a.b.b)))));
    global0 = array<u32, 1>();
    var var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, var_0.x), var_0.x);
    var var_2 = vec2<bool>(all(select(vec4<bool>(true, true, func_2(global4.b, global4.a, global4.a.a.x, vec2<u32>(global4.a.a.x, u_input.b)).x, false), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true)), false)), any(vec2<bool>(true, all(vec4<bool>(true, true, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, u_input.a, u_input.a)), firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, 29336i)))), ~(vec3<i32>(u_input.a, 2147483647i, u_input.a) << (vec3<u32>(global0[_wgslsmith_index_u32(78305u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(59361u, 1u)]) % vec3<u32>(32u)))));
}

