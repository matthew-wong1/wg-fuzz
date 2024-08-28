struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: bool,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23>;

var<private> global1: bool = true;

var<private> global2: vec2<u32>;

var<private> global3: Struct_1 = Struct_1(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), false, vec2<bool>(false, false), vec3<bool>(true, true, false));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>) -> i32 {
    global2 = u_input.c;
    let var_0 = _wgslsmith_mult_i32(abs(1i) << (1u % 32u), 41851i);
    global1 = arg_1;
    global1 = global3.d.x & true;
    global1 = true;
    return u_input.b;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(286f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-454f, -218f))))), -1219f));
    var var_2 = countOneBits(global2.x);
    let var_3 = 320f;
    let var_4 = Struct_1(!vec4<bool>(!any(arg_1.e), global3.c, true, true), arg_1.a, false, !vec2<bool>(var_0.b.x || true, all(!vec2<bool>(true, global3.b.x))), select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(var_0.d.x, arg_0.a.x, global3.a.x)), global3.a.x, 0u > (global2.x >> (global2.x % 32u))), vec3<bool>(any(vec2<bool>(false, false)), true, false)));
    return max(vec4<u32>(~22699u, 2135u, 31404u, 1u), ~vec4<u32>(4294967295u, ~(~u_input.c.x), _wgslsmith_mult_u32(~4294967295u, _wgslsmith_sub_u32(u_input.a, global2.x)), _wgslsmith_mult_u32(u_input.a, 1u)));
}

fn func_2(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = _wgslsmith_dot_vec4_u32(func_3(arg_0, Struct_1(arg_0.a, select(vec4<bool>(false, global0[_wgslsmith_index_u32(global2.x, 23u)], global0[_wgslsmith_index_u32(u_input.a, 23u)], global0[_wgslsmith_index_u32(global2.x, 23u)]), vec4<bool>(false, global3.b.x, arg_0.e.x, global0[_wgslsmith_index_u32(66328u, 23u)]), vec4<bool>(true, global3.b.x, false, true)), arg_0.e.x, global3.e.xz, !(!arg_0.e))), vec4<u32>(global2.x, min(4294967295u, global2.x), 1u ^ (u_input.a & 1u), global2.x) >> (~abs(vec4<u32>(u_input.c.x, 4294967295u, 4294967295u, 11438u)) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 772f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-600f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-825f)) * _wgslsmith_f_op_f32(abs(1523f))))))));
    let var_2 = u_input.c.x;
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1160f, var_1)), -116f)), -744f)), all(vec3<bool>(global0[_wgslsmith_index_u32(var_2, 23u)], global0[_wgslsmith_index_u32(1u, 23u)], arg_0.d.x)) || ((u_input.b < u_input.b) | global3.b.x)))));
    let var_4 = u_input.b;
    return ~(~(-(~_wgslsmith_mod_vec3_i32(vec3<i32>(var_4, u_input.b, var_4), vec3<i32>(u_input.b, u_input.b, u_input.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(global3.b, select(global3.b, global3.a, !(false & (u_input.b < 34349i))), any(!(!select(vec2<bool>(true, false), vec2<bool>(global3.a.x, true), true))), global3.a.yz, vec3<bool>(!(global3.a.x & true), true != any(vec2<bool>(global3.d.x, global0[_wgslsmith_index_u32(global2.x, 23u)])), false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(vec3<i32>(-(u_input.b ^ -11142i), func_1(Struct_1(global3.b, global3.a, global0[_wgslsmith_index_u32(4294967295u, 23u)], vec2<bool>(true, global3.c), global3.b.xzz), global0[_wgslsmith_index_u32(u_input.a, 23u)], vec3<i32>(u_input.b, u_input.b, u_input.b)), -7006i), func_2(Struct_1(global3.b, !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 23u)], false, false, global0[_wgslsmith_index_u32(30161u, 23u)]), global3.d.x && global0[_wgslsmith_index_u32(u_input.c.x, 23u)], select(global3.a.zx, global3.a.yx, vec2<bool>(global3.a.x, true)), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 23u)], true, global0[_wgslsmith_index_u32(u_input.c.x, 23u)]))), min(-select(vec3<i32>(u_input.b, -70036i, 95271i), vec3<i32>(u_input.b, u_input.b, 5087i), vec3<bool>(false, global0[_wgslsmith_index_u32(20663u, 23u)], true)), firstLeadingBit(-vec3<i32>(u_input.b, -66366i, u_input.b)))), _wgslsmith_mod_vec2_i32(vec2<i32>(15578i, reverseBits(-2147483647i)), reverseBits(-_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(68339i, 2147483647i)))));
}

