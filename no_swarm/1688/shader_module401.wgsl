struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7> = array<f32, 7>(-215f, 325f, -1428f, -2240f, 349f, 616f, -330f);

var<private> global1: array<i32, 24> = array<i32, 24>(23737i, -1i, i32(-2147483648), 0i, 15098i, -12816i, -36758i, 42192i, 57974i, -1997i, i32(-2147483648), 1i, -25501i, i32(-2147483648), 2147483647i, 13827i, 6704i, 10112i, 2147483647i, -1i, 301i, 54378i, 18302i, 26417i);

var<private> global2: Struct_3 = Struct_3(Struct_2(-980f), Struct_2(-1143f), -23141i, Struct_2(1000f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32) -> u32 {
    var var_0 = !select(vec2<bool>(!(arg_0.x != u_input.a), any(vec2<bool>(false, true)) | true), vec2<bool>(true, true), !all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true)));
    return _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(37239u, 124097u) & _wgslsmith_dot_vec3_u32(~u_input.c.zwx, u_input.c.yyx), 4294967295u), 0u);
}

fn func_2() -> Struct_3 {
    let var_0 = all(!(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)))));
    return Struct_3(global2.a, Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c.x, 7u)] * 585f)))), u_input.a, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 7u)] + global0[_wgslsmith_index_u32(u_input.b, 7u)]) - _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.d, 7u)], global0[_wgslsmith_index_u32(func_3(vec3<i32>(global1[_wgslsmith_index_u32(u_input.b, 24u)], -5362i, 2147483647i), 536f), 7u)])))));
}

fn func_1(arg_0: bool, arg_1: u32) -> u32 {
    global2 = func_2();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(268f, global2.a.a, 971f, -1000f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-635f, 522f, 1280f, -2046f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(163f, 199f, global0[_wgslsmith_index_u32(arg_1, 7u)], 436f))))));
    global0 = array<f32, 7>();
    let var_1 = u_input.a;
    var var_2 = _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(~select(vec3<u32>(73970u, 1u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1, arg_1, 0u), vec3<u32>(0u, 4294967295u, u_input.b), vec3<u32>(u_input.c.x, arg_1, 0u)), arg_0), _wgslsmith_mod_vec3_u32(select(_wgslsmith_add_vec3_u32(vec3<u32>(18563u, 1u, 7529u), vec3<u32>(arg_1, u_input.d, u_input.b)), u_input.c.zzx | vec3<u32>(7283u, 21046u, 24197u), vec3<bool>(false, arg_0, arg_0)), ~countOneBits(u_input.c.zxz))), u_input.c.wxw);
    return ~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(var_2.yz, abs(select(vec2<u32>(arg_1, var_2.x), vec2<u32>(var_2.x, 11550u), false))), select(~(~var_2.yz), _wgslsmith_div_vec2_u32(u_input.c.zy, u_input.c.wz & vec2<u32>(u_input.b, 73075u)), arg_0));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    global0 = array<f32, 7>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1991f))), 1267f));
    var var_1 = select(!select(vec2<bool>(all(vec4<bool>(false, arg_0, true, arg_0)), 2147483647i <= arg_2), vec2<bool>(any(vec2<bool>(true, false)), any(vec3<bool>(false, false, arg_0))), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(arg_0, arg_0))), !vec2<bool>(select(1649f != global0[_wgslsmith_index_u32(46546u, 7u)], true, select(arg_0, true, true)), true), false || any(vec3<bool>(arg_0, true, any(vec2<bool>(arg_0, arg_0)))));
    var_1 = !vec2<bool>(all(select(vec4<bool>(true, arg_0, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, false, arg_0), vec4<bool>(var_1.x, var_1.x, false, var_1.x))) | false, !(!var_1.x));
    global1 = array<i32, 24>();
    return Struct_1(var_1.x);
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-335f + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d, 7u)])));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(false);
    global2 = Struct_3(global2.b, func_5(func_4(global2.d.a < global0[_wgslsmith_index_u32(func_1(true, u_input.b), 7u)], global2.a, -u_input.e.x | u_input.e.x), 1u), global2.c, Struct_2(537f));
    let var_1 = ((max(u_input.c.xz, reverseBits(u_input.c.wz)) ^ vec2<u32>(~4294967295u, ~1u)) >> (abs(vec2<u32>(_wgslsmith_add_u32(u_input.c.x, 13307u), ~u_input.b)) % vec2<u32>(32u))) & ~min(~u_input.c.yw, _wgslsmith_clamp_vec2_u32(u_input.c.wx, vec2<u32>(18434u, 58379u), u_input.c.yy));
    var var_2 = _wgslsmith_sub_i32(2147483647i, ~_wgslsmith_sub_i32(-1i, ~_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(1u, 24u)], 2147483647i)));
    let var_3 = vec3<f32>(global0[_wgslsmith_index_u32(8116u, 7u)], _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -589f));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(~0u & var_1.x, 7u)], ~(~_wgslsmith_mult_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(var_1.x, 24u)], 11616i, -26866i, global2.c) & vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 24u)], 14495i, global2.c, global2.c), vec4<i32>(0i, -2147483647i, 1i, 1i))));
}

