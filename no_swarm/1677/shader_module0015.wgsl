struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29>;

var<private> global1: array<vec2<f32>, 25>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> i32 {
    let var_0 = Struct_1(!any(vec3<bool>(any(vec3<bool>(true, false, true)), any(vec4<bool>(true, false, true, false)), true)));
    let var_1 = Struct_1(var_0.a & var_0.a);
    var var_2 = Struct_1(!(!(any(vec3<bool>(false, true, var_0.a)) || true)));
    let var_3 = 1i;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(max(-1889f, _wgslsmith_f_op_f32(trunc(-1033f)))))));
    return var_3 | u_input.a.x;
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(367f, 592f, 554f, _wgslsmith_f_op_f32(-756f - -190f)), vec4<bool>(arg_0.a, !(!arg_0.a), arg_0.a, any(select(vec2<bool>(true, arg_0.a), vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(true, false)))))));
    var var_1 = arg_0;
    var_1 = arg_0;
    return vec2<bool>(all(!(!select(vec4<bool>(true, false, var_1.a, true), vec4<bool>(var_1.a, var_1.a, false, var_1.a), false))), any(vec3<bool>(!var_1.a, select(arg_0.a, arg_0.a, var_1.a), true)) & var_1.a);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = arg_2.yy;
    var var_1 = arg_0 || true;
    var_1 = all(!select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, arg_1.a, all(vec2<bool>(arg_0, arg_0))), arg_1.a));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x));
    let var_3 = Struct_1(func_3(Struct_1(any(!vec2<bool>(arg_0, true))), countOneBits(-abs(2147483647i)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(0u, ~4294967295u), global0[_wgslsmith_index_u32(~1u, 29u)]), 29u)]).x);
    return var_3;
}

fn func_1(arg_0: vec3<bool>) -> StorageBuffer {
    global1 = array<vec2<f32>, 25>();
    var var_0 = 0i;
    let var_1 = func_4(any(func_3(Struct_1(any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), _wgslsmith_sub_i32(func_2(), u_input.a.x), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19638u, 29u)], 29u)])), Struct_1(any(select(select(arg_0.zz, arg_0.zx, arg_0.xy), vec2<bool>(false, arg_0.x), arg_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1328f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -428f), -956f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -2554f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1000f, 702f)))) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1234f - -1401f), 147f), 1029f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -191f)), 1f)));
    var var_2 = vec4<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.a.zz << (~vec2<u32>(20420u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(49374u, 29u)], 29u)]) % vec2<u32>(32u))), firstLeadingBit(u_input.a.xx)), (i32(-1i) * -2147483647i) << (global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(4294967295u, 29u)] ^ ~global0[_wgslsmith_index_u32(6900u, 29u)], 29u)], (9701u & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33885u, 29u)], 29u)]) ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15183u, 29u)], 29u)]), 29u)] % 32u), firstLeadingBit(~_wgslsmith_sub_i32(u_input.a.x & 45931i, i32(-1i) * -1i)), 0i);
    global0 = array<u32, 29>();
    return StorageBuffer(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, global0[_wgslsmith_index_u32(27000u, 29u)]), 29u)], 29u)], 29u)], _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 29u)], global0[_wgslsmith_index_u32(0u, 29u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 29u)]), vec4<u32>(56326u, 1850u, 518u, 4294967295u)), 1u, ~22262u) ^ ~(~(~vec4<u32>(0u, global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(54800u, 29u)], 29u)], 29u)], 29u)], 1u))), _wgslsmith_mod_vec4_i32(~_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(u_input.a, u_input.a), select(vec4<i32>(1i, 44179i, u_input.a.x, 0i), u_input.a, vec4<bool>(var_1.a, false, var_1.a, true)), countOneBits(vec4<i32>(var_2.x, 22596i, 33041i, 1i))), vec4<i32>(_wgslsmith_clamp_i32(-u_input.a.x, ~(-12420i), _wgslsmith_add_i32(var_2.x, 48233i)), u_input.a.x, 1i, var_2.x)), _wgslsmith_f_op_f32(ceil(-562f)), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 29u)]) | vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 29u)], 29u)], 29u)], 29u)], 29u)], 44089u)), vec2<u32>(select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], 29u)], 29u)], 29u)], 29u)], 29u)], 29u)], global0[_wgslsmith_index_u32(46906u, 29u)], true), ~23779u)), ~(select(vec2<u32>(global0[_wgslsmith_index_u32(0u, 29u)], 77530u), vec2<u32>(73675u, 54762u), arg_0.x) & vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 29>();
    let var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, i32(-1i) * -65502i, u_input.a.x & countOneBits(-1i), -select(u_input.a.x, -61034i, false)), vec4<i32>(max(-u_input.a.x, -2147483647i), u_input.a.x >> (~4294967295u % 32u), u_input.a.x, _wgslsmith_mod_i32(0i, u_input.a.x))), u_input.a.x);
    global1 = array<vec2<f32>, 25>();
    global0 = array<u32, 29>();
    var var_1 = all(vec2<bool>(false, ((global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 29u)], 29u)] ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(102979u, 29u)], 29u)], 29u)]) ^ global0[_wgslsmith_index_u32(40910u, 29u)]) < 63068u));
    global0 = array<u32, 29>();
    var var_2 = Struct_1(any(!(!select(vec2<bool>(false, false), vec2<bool>(false, false), true))));
    let x = u_input.a;
    s_output = func_1(select(select(vec3<bool>(!var_2.a, u_input.a.x <= var_0.x, true), vec3<bool>(var_2.a && false, var_2.a, all(vec3<bool>(true, false, var_2.a))), all(!vec4<bool>(true, true, true, var_2.a))), vec3<bool>(true, !(!var_2.a), all(vec2<bool>(true, true))), true != var_2.a));
}

