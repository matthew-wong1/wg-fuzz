struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24>;

var<private> global1: f32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_1(1000f, 74713u);
    var var_1 = _wgslsmith_sub_i32(-56687i, ~u_input.c.x);
    var var_2 = Struct_3(var_0);
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, var_2.a.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_2.a.a, var_2.a.a)), _wgslsmith_f_op_f32(372f - 874f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-472f, -497f, var_2.a.a, var_2.a.a), vec4<f32>(177f, -2127f, var_0.a, -840f))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1382f, var_2.a.a, var_0.a, var_0.a)))) + vec4<f32>(-717f, _wgslsmith_f_op_f32(var_2.a.a - var_0.a), -384f, _wgslsmith_f_op_f32(-var_2.a.a))))));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_2(vec2<u32>(abs(_wgslsmith_sub_u32(firstTrailingBit(u_input.b.x), _wgslsmith_div_u32(4929u, u_input.b.x))), u_input.b.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(func_3());
    var_0 = Struct_2(u_input.b | ~vec2<u32>(1u, 1u));
    global0 = array<bool, 24>();
    return Struct_1(-275f, select((u_input.b.x << (_wgslsmith_sub_u32(var_0.a.x, u_input.b.x) % 32u)) >> (~u_input.b.x % 32u), _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.b.x, 1u), var_0.a.x) | countOneBits(~74561u), all(vec3<bool>(global0[_wgslsmith_index_u32(0u, 24u)] || global0[_wgslsmith_index_u32(32622u, 24u)], select(false, true, true), global0[_wgslsmith_index_u32(abs(71906u), 24u)]))));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-223f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a))))));
    let var_0 = select(!(!(!vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(u_input.b.x, 24u)]))), !(!(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 24u)], false, global0[_wgslsmith_index_u32(9239u, 24u)], global0[_wgslsmith_index_u32(arg_0.a.b, 24u)]))), u_input.d.x >= u_input.a.x);
    var var_1 = Struct_2(_wgslsmith_mult_vec2_u32(vec2<u32>(27937u, arg_0.a.b >> (u_input.b.x % 32u)), u_input.b));
    var var_2 = select(!vec3<bool>(all(!var_0), var_0.x, true), select(select(var_0.yxz, !select(var_0.zyw, var_0.xxy, var_0.x), !var_0.x), !(!select(var_0.wyy, vec3<bool>(var_0.x, false, false), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 24u)], var_0.x, true))), !global0[_wgslsmith_index_u32(u_input.b.x, 24u)]), all(vec4<bool>(select(global0[_wgslsmith_index_u32(~u_input.b.x, 24u)], global0[_wgslsmith_index_u32(arg_0.a.b, 24u)] || true, true), all(select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 24u)], var_0.x, global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(0u, 24u)]), vec4<bool>(var_0.x, global0[_wgslsmith_index_u32(var_1.a.x, 24u)], true, false), var_0.x)), true, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0.a.b, 82400u), vec3<u32>(arg_0.a.b, 4294967295u, arg_0.a.b)), 4294967295u), 24u)])));
    let var_3 = var_2.xx;
    return arg_0.a;
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: u32) -> f32 {
    var var_0 = _wgslsmith_mult_u32(u_input.b.x, ~1u);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1778f, _wgslsmith_f_op_f32(f32(-1f) * -1241f)))));
    var var_2 = func_4(Struct_3(func_2(0i)));
    let var_3 = 1193f;
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-698f, var_3, var_3, 525f)))), vec4<f32>(_wgslsmith_f_op_f32(-var_2.a), var_2.a, var_3, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1360f - var_3), -892f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1437f, -321f, var_3, var_3)))))));
    return 586f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.b.x, ~(~select(u_input.b.x, 52019u, global0[_wgslsmith_index_u32(6386u, 24u)])), abs(u_input.b.x)), 24u)], true, abs(1u)));
    let var_0 = true;
    global0 = array<bool, 24>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(-2147483647i).a * _wgslsmith_f_op_f32(-599f + -1125f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -220f));
    global0 = array<bool, 24>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3()).x));
    var var_1 = select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], all(vec4<bool>(true, true, select(var_0, global0[_wgslsmith_index_u32(13723u, 24u)], var_0), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 1u, 17078u), vec3<u32>(u_input.b.x, 0u, u_input.b.x)), 24u)])), true, all(select(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], var_0), vec2<bool>(var_0, false), var_0))), vec4<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, 0i, -18743i), ~vec3<i32>(u_input.c.x, -34460i, 0i)) <= ~firstLeadingBit(u_input.c.x), select(true, any(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], var_0), vec2<bool>(true, var_0), vec2<bool>(global0[_wgslsmith_index_u32(94741u, 24u)], true))), false), !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, 37620u), ~u_input.b), 24u)], any(!(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 24u)])))), vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, u_input.b.x), 24u)], false, global0[_wgslsmith_index_u32(1634u, 24u)], true));
    let var_2 = vec3<i32>(~(~u_input.c.x), u_input.d.x, countOneBits(countOneBits(~u_input.c.x) >> (reverseBits(~u_input.b.x) % 32u)));
    let var_3 = Struct_3(Struct_1(930f, u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, select(~var_2.x, -2147483647i, any(var_1.ywx)) & u_input.c.x, countOneBits(var_2.zx), _wgslsmith_clamp_vec2_u32(u_input.b, vec2<u32>(firstTrailingBit(~1u), u_input.b.x), u_input.b), ~select(~43374u, firstTrailingBit(~12131u), global0[_wgslsmith_index_u32(~u_input.b.x, 24u)] & (var_2.x != 15743i)));
}

