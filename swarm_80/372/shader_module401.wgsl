struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: u32,
    d: vec4<bool>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<u32>, 11> = array<vec2<u32>, 11>(vec2<u32>(1u, 90377u), vec2<u32>(15630u, 9404u), vec2<u32>(97362u, 62998u), vec2<u32>(48333u, 4294967295u), vec2<u32>(70268u, 14510u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(28560u, 38688u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(17974u, 32931u), vec2<u32>(0u, 2730u));

var<private> global2: array<u32, 7>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: bool) -> u32 {
    global2 = array<u32, 7>();
    let var_0 = Struct_1(arg_0, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(global0.b, _wgslsmith_f_op_vec2_f32(-global0.b))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-854f, -459f), vec2<f32>(global0.b.x, 560f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-355f, 325f))))), false)))), reverseBits(countOneBits(global2[_wgslsmith_index_u32(50938u, 7u)])), vec4<bool>(true, !arg_2, any(global0.d), all(vec3<bool>(any(vec2<bool>(true, false)), any(global0.d.wz), true))), arg_1.x);
    var var_1 = select(!(!select(global0.d.wzx, !var_0.d.wxx, arg_2 || var_0.d.x)), !select(!vec3<bool>(false, arg_0, global0.a), !var_0.d.xxw, true | (var_0.b.x != -305f)), !(!vec3<bool>(var_0.a, arg_2, !arg_0)));
    var var_2 = var_0;
    global1 = array<vec2<u32>, 11>();
    return reverseBits(reverseBits(59936u));
}

fn func_2() -> vec3<f32> {
    var var_0 = Struct_1(any(!vec2<bool>(global0.a, true)), _wgslsmith_div_vec2_f32(global0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global0.b))))), u_input.a, !global0.d, _wgslsmith_mult_u32(~1u, _wgslsmith_mult_u32(22174u, firstTrailingBit(0u))));
    global1 = array<vec2<u32>, 11>();
    var var_1 = 0u;
    var var_2 = Struct_1(any(var_0.d.zww), vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.x), -258f), func_3(true, ~(abs(vec3<u32>(1u, global0.c, u_input.a)) << (vec3<u32>(10828u, 36720u, global0.e) % vec3<u32>(32u))), all(vec2<bool>(true, false))), select(var_0.d, !(!vec4<bool>(var_0.d.x, var_0.a, true, false)), var_0.d), _wgslsmith_sub_u32(12095u >> (u_input.b.x % 32u), ~(~0u)) >> (func_3(!(!var_0.d.x), vec3<u32>(var_0.e, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.c, 77407u), 7u)], 1u & global0.e), select(false, any(var_0.d.wy), global0.d.x)) % 32u));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1643f, -1068f, var_2.b.x) - vec3<f32>(831f, -712f, var_0.b.x))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1135f, 1000f, -1000f)))))), _wgslsmith_div_vec3_f32(vec3<f32>(global0.b.x, -1759f, _wgslsmith_f_op_f32(var_2.b.x - 1146f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.b.x, var_0.b.x, -284f))) + vec3<f32>(var_2.b.x, 684f, 1163f))), true)));
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(var_3, vec3<f32>(_wgslsmith_f_op_f32(842f - -492f), _wgslsmith_f_op_f32(var_0.b.x - global0.b.x), var_0.b.x))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: i32, arg_3: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.b.x)))));
    global1 = array<vec2<u32>, 11>();
    var var_1 = !global0.d.xw;
    let var_2 = arg_1;
    global2 = array<u32, 7>();
    return firstTrailingBit(_wgslsmith_mult_u32(arg_3.x, 0u));
}

fn func_1() -> bool {
    let var_0 = Struct_1(!(!all(vec3<bool>(false, true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b)), func_4(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-353f, global0.b.x, global0.b.x), vec3<f32>(global0.b.x, -1073f, 316f)))), vec3<f32>(_wgslsmith_f_op_vec3_f32(func_2()).x, _wgslsmith_f_op_f32(sign(-1269f)), global0.b.x))), Struct_1(u_input.a != (u_input.b.x | 0u), vec2<f32>(_wgslsmith_f_op_f32(ceil(global0.b.x)), _wgslsmith_f_op_f32(min(-744f, global0.b.x))), global2[_wgslsmith_index_u32(1u, 7u)], global0.d, global2[_wgslsmith_index_u32(1u, 7u)]), ~(-7108i), u_input.b), global0.d, u_input.b.x);
    var var_1 = global0.d;
    let var_2 = ~(~(~(~vec4<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 7u)], var_0.e, u_input.b.x, global2[_wgslsmith_index_u32(0u, 7u)])))) | vec4<u32>(47456u, ~_wgslsmith_mult_u32(~global0.c, max(u_input.a, u_input.b.x)), 13286u, 4294967295u);
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(316f * 477f), 678f, var_0.b.x, _wgslsmith_f_op_f32(ceil(1531f))));
    global1 = array<vec2<u32>, 11>();
    return all(var_1.ywy);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_1.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(global0.b.x))))), -1012f));
    global0 = arg_1;
    global0 = arg_1;
    global2 = array<u32, 7>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, 1074f, arg_1.b.x)))), vec3<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1939f * global0.b.x) + _wgslsmith_f_op_f32(1000f * -685f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), !(arg_1.a && !arg_1.d.x))));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_f_op_f32(sign(-153f)) == -698f, global0.b, global0.e, !vec4<bool>(true, false, true, !(global0.d.x && true)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, select(~u_input.a, countOneBits(u_input.a), global0.a), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, global0.e, global0.e), vec3<u32>(139174u, u_input.a, global2[_wgslsmith_index_u32(global0.c, 7u)])), vec3<u32>(u_input.b.x, 3173u, 4294967295u)), 7u)], firstLeadingBit(1u)), vec4<u32>(~0u, _wgslsmith_div_u32(global2[_wgslsmith_index_u32(62547u, 7u)] ^ 0u, 0u), global0.c, ~u_input.b.x ^ global2[_wgslsmith_index_u32(8257u, 7u)])), 7u)]);
    global1 = array<vec2<u32>, 11>();
    global1 = array<vec2<u32>, 11>();
    let var_0 = any(select(global0.d.zy, select(global0.d.xw, vec2<bool>(true, true), vec2<bool>(global0.d.x, global0.d.x)), func_5(vec2<i32>(_wgslsmith_clamp_i32(16684i, -35076i, -71826i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(1i, 4147i))), Struct_1(func_1(), _wgslsmith_f_op_vec2_f32(global0.b * global0.b), reverseBits(4294967295u), select(global0.d, vec4<bool>(false, global0.d.x, false, false), false), _wgslsmith_dot_vec3_u32(vec3<u32>(90172u, 23071u, 28471u), vec3<u32>(u_input.b.x, 4294967295u, global0.e))), firstTrailingBit(func_4(vec3<f32>(1342f, global0.b.x, global0.b.x), Struct_1(true, global0.b, global2[_wgslsmith_index_u32(u_input.b.x, 7u)], global0.d, u_input.a), -1i, vec2<u32>(global0.e, 0u))))));
    let var_1 = Struct_1(false, global0.b, _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(~4294967295u, 7u)], _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(~4993u, 7u)], global2[_wgslsmith_index_u32(~(~u_input.a), 7u)])), global0.d, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.b, ~vec2<u32>(global2[_wgslsmith_index_u32(global0.e, 7u)], 1u), vec2<u32>(68971u, 1731u)) | abs(_wgslsmith_add_vec2_u32(vec2<u32>(0u, global2[_wgslsmith_index_u32(61167u, 7u)]), u_input.b)), global1[_wgslsmith_index_u32(firstLeadingBit((1u & global2[_wgslsmith_index_u32(global0.e, 7u)]) ^ 1u), 11u)]), 7u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -105f)), _wgslsmith_f_op_f32(select(652f, _wgslsmith_f_op_f32(var_1.b.x - 1547f), true))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, global0.b.x, _wgslsmith_f_op_vec3_f32(func_2()).x))), ~u_input.a, reverseBits(select(countOneBits(select(1i, 1235i, global0.d.x)), min(0i, _wgslsmith_mod_i32(-31259i, 24888i)), var_1.d.x)), vec3<i32>(~max(6852i, 16178i) >> (func_3(any(vec3<bool>(global0.d.x, false, true)), vec3<u32>(global2[_wgslsmith_index_u32(0u, 7u)], global2[_wgslsmith_index_u32(global0.e, 7u)], u_input.b.x), all(vec4<bool>(var_1.a, global0.a, false, true))) % 32u), _wgslsmith_add_i32(abs(3641i), -59328i) << (_wgslsmith_dot_vec2_u32(vec2<u32>(16134u, 0u), _wgslsmith_clamp_vec2_u32(global1[_wgslsmith_index_u32(global0.c, 11u)], vec2<u32>(u_input.a, global0.e), vec2<u32>(69956u, u_input.a))) % 32u), countOneBits(50788i)));
}

