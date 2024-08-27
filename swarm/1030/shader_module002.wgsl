struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<bool>,
    d: u32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: vec2<u32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    let var_0 = ~reverseBits(~abs(-1i)) != _wgslsmith_add_i32(~_wgslsmith_add_i32(-u_input.b.x, max(u_input.c.x, -2147483647i)), 0i);
    global1 = vec2<u32>(reverseBits(global1.x), _wgslsmith_add_u32(1u, _wgslsmith_mod_u32(global1.x | 69462u, _wgslsmith_mult_u32(global1.x, global1.x)))) ^ _wgslsmith_sub_vec2_u32(max(vec2<u32>(global1.x, global1.x) ^ max(vec2<u32>(47148u, 1u), vec2<u32>(global1.x, 64691u)), reverseBits(~vec2<u32>(150263u, 52090u))), _wgslsmith_sub_vec2_u32(select(reverseBits(vec2<u32>(10645u, 11889u)), min(vec2<u32>(42922u, 31177u), vec2<u32>(4294967295u, global1.x)), !vec2<bool>(true, var_0)), ~(~vec2<u32>(18103u, global1.x))));
    return select(!vec4<bool>(any(vec3<bool>(var_0, true, false)), var_0, var_0, true), vec4<bool>(var_0, true, false, false), var_0);
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec2<u32>, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(arg_0.a), global0[_wgslsmith_index_u32(arg_3.x, 9u)], arg_0, Struct_1(arg_0.a));
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -286f), _wgslsmith_f_op_f32(floor(-190f)), 1000f, _wgslsmith_f_op_f32(select(1524f, -1227f, arg_0.a.x))) - vec4<f32>(314f, _wgslsmith_f_op_f32(-743f - 597f), _wgslsmith_f_op_f32(f32(-1f) * -622f), _wgslsmith_f_op_f32(abs(706f)))))), var_0.a, !(!(!select(vec3<bool>(false, arg_1, false), arg_0.a.yzy, var_0.b.a.yzw))), 33482u, arg_3);
    let var_2 = global1.x;
    global1 = min(vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, arg_2.x), arg_3.x), ~1u) ^ ~arg_2, ~(~vec2<u32>(1u, 4294967295u)) >> (arg_2 % vec2<u32>(32u)));
    var var_3 = !func_3();
    return Struct_1(func_3());
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    let var_0 = Struct_1(vec4<bool>(true || select(!arg_0.a.a.x, arg_1.a.x, true), arg_1.a.x, all(arg_0.d.a.yz), all(vec4<bool>(arg_1.a.x, true, true, true))));
    var var_1 = arg_0;
    return arg_1.a.x;
}

fn func_5(arg_0: vec2<f32>, arg_1: bool) -> Struct_2 {
    global1 = ~vec2<u32>(global1.x, _wgslsmith_sub_u32(global1.x, 1u));
    let var_0 = func_2(global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(0u, global1.x, global1.x)), _wgslsmith_div_vec3_u32(vec3<u32>(global1.x, 1u, global1.x), vec3<u32>(global1.x, global1.x, global1.x))), 4294967295u), 9u)], arg_1 && true, ~((vec2<u32>(global1.x, 43965u) << (vec2<u32>(global1.x, global1.x) % vec2<u32>(32u))) >> (vec2<u32>(global1.x, global1.x) % vec2<u32>(32u))) & ~_wgslsmith_clamp_vec2_u32(vec2<u32>(global1.x, global1.x), ~vec2<u32>(0u, 45001u), vec2<u32>(78186u, global1.x) << (vec2<u32>(753u, 52570u) % vec2<u32>(32u))), select(vec3<u32>((global1.x << (global1.x % 32u)) & global1.x, global1.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(1u, 38394u), global1.x)), _wgslsmith_add_vec3_u32(~(~vec3<u32>(1u, global1.x, global1.x)), ~countOneBits(vec3<u32>(71351u, 4294967295u, global1.x))), _wgslsmith_mult_u32(~4294967295u, max(global1.x, 41657u)) < ~_wgslsmith_add_u32(9167u, global1.x)));
    global1 = firstLeadingBit(abs(vec2<u32>(~(global1.x << (global1.x % 32u)), _wgslsmith_mod_u32(~4294967295u, reverseBits(115118u)))));
    let var_1 = 26505u;
    var var_2 = vec4<bool>(false, func_4(Struct_2(global0[_wgslsmith_index_u32(~global1.x, 9u)], Struct_1(var_0.a), global0[_wgslsmith_index_u32(~var_1, 9u)], var_0), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, var_1, global1.x), vec3<u32>(7029u, 38959u, 5166u)) & ~0u, 9u)]) || (!(u_input.a.x >= u_input.c.x) & !(u_input.d.x != u_input.b.x)), arg_1, var_0.a.x);
    return Struct_2(var_0, func_2(Struct_1(!(!vec4<bool>(true, var_0.a.x, var_0.a.x, arg_1))), ~_wgslsmith_mult_u32(global1.x, 4294967295u) >= _wgslsmith_sub_u32(~var_1, _wgslsmith_mod_u32(1u, var_1)), firstTrailingBit(countOneBits(min(vec2<u32>(17312u, 4294967295u), vec2<u32>(var_1, global1.x)))), ~max(vec3<u32>(global1.x, 57720u, 114674u), vec3<u32>(50698u, var_1, 39628u) & vec3<u32>(global1.x, var_1, 29521u))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global1.x, var_1), 9u)], var_0);
}

fn func_6(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_2 {
    var var_0 = min(select(0u, ~(_wgslsmith_add_u32(global1.x, 4294967295u) ^ global1.x), (!arg_0.d.a.x | false) | true), _wgslsmith_mod_u32(4294967295u | ~_wgslsmith_mod_u32(global1.x, global1.x), global1.x & _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 27243u), vec2<u32>(8261u, 1u))));
    var var_1 = arg_1;
    global0 = array<Struct_1, 9>();
    var var_2 = !select(arg_0.a.a.yx, !func_2(arg_0.b, arg_0.a.a.x, vec2<u32>(global1.x, global1.x) & vec2<u32>(global1.x, global1.x), vec3<u32>(global1.x, 16329u, 0u) ^ vec3<u32>(global1.x, 52528u, global1.x)).a.zy, func_3().xz);
    var var_3 = firstLeadingBit(4294967295u);
    return func_5(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(792f, 455f, var_2.x)))), 1f), true);
}

fn func_1() -> vec2<u32> {
    let var_0 = ~vec3<u32>(_wgslsmith_clamp_u32(14753u, global1.x, min(~51051u, global1.x)), ~(~firstLeadingBit(4294967295u)), global1.x | (abs(global1.x) | ~4294967295u));
    var var_1 = Struct_2(Struct_1(!vec4<bool>(any(vec4<bool>(false, true, false, false)), all(vec2<bool>(false, true)), all(vec4<bool>(false, true, false, true)), true)), global0[_wgslsmith_index_u32(1u, 9u)], Struct_1(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), any(vec3<bool>(false, false, true))), true)), Struct_1(vec4<bool>(true, true, true, true)));
    var_1 = func_6(func_5(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(503f * 428f))), 517f), func_4(Struct_2(func_2(global0[_wgslsmith_index_u32(var_0.x, 9u)], false, var_0.yz, var_0), var_1.a, func_2(global0[_wgslsmith_index_u32(1u, 9u)], false, var_0.yy, var_0), global0[_wgslsmith_index_u32(select(var_0.x, 1u, var_1.b.a.x), 9u)]), Struct_1(func_3()))), ~vec3<i32>(u_input.b.x, u_input.c.x, u_input.d.x));
    global0 = array<Struct_1, 9>();
    let var_2 = Struct_2(Struct_1(vec4<bool>(any(select(vec4<bool>(var_1.c.a.x, var_1.a.a.x, false, true), var_1.a.a, vec4<bool>(true, var_1.d.a.x, var_1.c.a.x, var_1.a.a.x))), var_1.c.a.x, !var_1.b.a.x, true)), global0[_wgslsmith_index_u32(68069u, 9u)], Struct_1(var_1.b.a), func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-558f, -354f)))), func_6(Struct_2(Struct_1(vec4<bool>(true, true, var_1.b.a.x, true)), var_1.c, func_2(Struct_1(vec4<bool>(var_1.b.a.x, false, false, var_1.b.a.x)), true, vec2<u32>(1u, var_0.x), vec3<u32>(var_0.x, 5326u, global1.x)), Struct_1(vec4<bool>(true, var_1.c.a.x, var_1.b.a.x, var_1.c.a.x))), vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, 19947i, 554i, -2147483647i)), _wgslsmith_dot_vec2_i32(u_input.b.xx, vec2<i32>(-19800i, 0i)), u_input.d.x)).a.a.x).b);
    return vec2<u32>(~(~25723u), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 9>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(106f + -134f))), 166f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(685f)) * _wgslsmith_f_op_f32(f32(-1f) * -1268f)), -347f, true)) - -396f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(349f * -1343f)))));
    var var_1 = _wgslsmith_mod_vec2_u32(~firstTrailingBit(~vec2<u32>(global1.x, global1.x)), vec2<u32>(1u, abs(4294967295u))) ^ func_1();
    let var_2 = i32(-1i) * -6159i;
    let var_3 = func_6(func_5(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2031f), _wgslsmith_f_op_f32(var_0.x + 764f)), 1027f), true), -u_input.a.yzw);
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_0.zz, var_0.zx), vec2<f32>(1350f, var_0.x)))));
    let var_5 = func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.yy, var_0.xx) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.x, -1165f) + vec2<f32>(879f, var_4.x)))) + vec2<f32>(_wgslsmith_f_op_f32(trunc(var_4.x)), _wgslsmith_f_op_f32(select(-615f, _wgslsmith_f_op_f32(-200f - var_4.x), true)))), true).a;
    let x = u_input.a;
    s_output = StorageBuffer(var_2, global1.x);
}

