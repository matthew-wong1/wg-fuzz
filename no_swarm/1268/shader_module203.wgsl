struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<i32, 21>;

var<private> global2: array<Struct_4, 18>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    let var_0 = arg_2.d.a;
    var var_1 = vec3<i32>(arg_2.c.x, -12546i, arg_2.a | -global1[_wgslsmith_index_u32(u_input.c.x, 21u)]);
    var_1 = u_input.a;
    let var_2 = _wgslsmith_dot_vec4_i32(firstTrailingBit(reverseBits(_wgslsmith_clamp_vec4_i32(u_input.b, vec4<i32>(1i, -43611i, arg_2.a, arg_2.a), vec4<i32>(global1[_wgslsmith_index_u32(var_0, 21u)], -1i, 17416i, arg_2.a))) << (~(~vec4<u32>(1u, 4294967295u, arg_0.a, arg_1.d.a)) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_mod_i32(var_1.x, ~2147483647i) | -9531i, abs(66071i), _wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(max(4294967295u, 1u), 21u)], abs(1i)), max(firstLeadingBit(arg_1.c), u_input.b.yx >> (vec2<u32>(70113u, var_0) % vec2<u32>(32u)))), countOneBits(arg_1.a)));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.b.x - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1127f, arg_1.d.b.x))))));
    return _wgslsmith_f_op_f32(-global0.x);
}

fn func_2(arg_0: Struct_3) -> u32 {
    let var_0 = Struct_2(41311i, Struct_1(_wgslsmith_div_u32(u_input.c.x, u_input.c.x), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 407f, 1270f, 573f) * vec4<f32>(arg_0.a, arg_0.a, arg_0.a, global0.x))), vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(1u, vec4<f32>(arg_0.a, 598f, global0.x, global0.x)), Struct_2(16169i, Struct_1(4294967295u, vec4<f32>(1530f, arg_0.a, global0.x, 1836f)), vec2<i32>(2147483647i, -24326i), Struct_1(u_input.c.x, vec4<f32>(-829f, global0.x, arg_0.a, arg_0.a))), Struct_2(2147483647i, Struct_1(74844u, vec4<f32>(-515f, arg_0.a, -2144f, -869f)), u_input.a.yx, Struct_1(63896u, vec4<f32>(global0.x, -1000f, global0.x, 119f))))), _wgslsmith_f_op_f32(func_3(Struct_1(27340u, vec4<f32>(global0.x, global0.x, -1154f, arg_0.a)), Struct_2(0i, Struct_1(u_input.c.x, vec4<f32>(arg_0.a, global0.x, 1367f, 1024f)), vec2<i32>(7620i, 13649i), Struct_1(20239u, vec4<f32>(global0.x, -1295f, -201f, -240f))), Struct_2(u_input.b.x, Struct_1(u_input.c.x, vec4<f32>(global0.x, -941f, -168f, global0.x)), u_input.b.xz, Struct_1(u_input.c.x, vec4<f32>(1000f, -522f, global0.x, 1084f))))), arg_0.a, arg_0.a)))), vec2<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 21u)] ^ global1[_wgslsmith_index_u32(u_input.c.x, 21u)], abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.d, -1i), _wgslsmith_mod_vec3_i32(u_input.b.yxy, vec3<i32>(u_input.d, 0i, -8760i))))), Struct_1(~2138u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -2520f, global0.x)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-331f, 446f, -1136f, arg_0.a), vec4<f32>(global0.x, global0.x, global0.x, 554f)))))));
    let var_1 = arg_0;
    var var_2 = 1i <= -_wgslsmith_mult_i32(_wgslsmith_mod_i32(~global1[_wgslsmith_index_u32(u_input.c.x, 21u)], global1[_wgslsmith_index_u32(~u_input.c.x, 21u)]), 50849i);
    let var_3 = u_input.c.zzw;
    var var_4 = vec4<bool>(false, -1815f != _wgslsmith_f_op_f32(ceil(-581f)), !any(vec4<bool>(false, all(vec2<bool>(false, true)), true, false)), true);
    return max(0u, _wgslsmith_mod_u32((~var_0.d.a | (var_3.x ^ 40463u)) << (1u % 32u), var_3.x));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: Struct_4) -> f32 {
    global2 = array<Struct_4, 18>();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)));
    let var_1 = var_0.a;
    var var_2 = Struct_2(_wgslsmith_clamp_i32(select(-abs(arg_2.b), -1i, true), ~arg_2.b, countOneBits(global1[_wgslsmith_index_u32(u_input.c.x << (func_2(var_0) % 32u), 21u)])), Struct_1(firstLeadingBit(u_input.c.x), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 * -713f), 1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0.x)), global0.x), -744f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + 701f)))), arg_2.c.c, Struct_1(min(firstTrailingBit(~1u), 68606u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_2.a.b, vec4<f32>(global0.x, 1437f, 448f, arg_2.c.b.b.x)))));
    global0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1697f, var_1)))))), vec2<f32>(185f, _wgslsmith_f_op_f32(trunc(var_1)))));
    return -341f;
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_2) -> Struct_2 {
    global2 = array<Struct_4, 18>();
    var var_0 = select(select(vec4<bool>(all(vec2<bool>(false, false)), false || select(true, false, false), all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), false)), all(vec3<bool>(false, true, false))), select(vec4<bool>(any(vec3<bool>(true, false, true)), 2147483647i != arg_0, true, all(vec2<bool>(false, true))), vec4<bool>(any(vec3<bool>(false, true, true)), true, true, any(vec2<bool>(false, true))), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), false)), true), vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec4<bool>(true, true, true, true)), any(select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true), true)), true));
    let var_1 = _wgslsmith_dot_vec2_i32(u_input.b.yz, -(~arg_3.c));
    global1 = array<i32, 21>();
    global2 = array<Struct_4, 18>();
    return arg_3;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec2<bool>) -> vec2<u32> {
    let var_0 = arg_0.d.a;
    return ~vec2<u32>(~(~func_2(Struct_3(-1481f))), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(u_input.c, ~abs(abs(vec4<u32>(4294967295u, 4294967295u, 55644u, u_input.c.x)))), u_input.a.x, _wgslsmith_dot_vec2_u32(func_5(func_4(global1[_wgslsmith_index_u32(24697u, 21u)], _wgslsmith_div_vec2_u32(vec2<u32>(1u, 60489u), u_input.c.xz), _wgslsmith_f_op_f32(func_1(15975i, -806f, global2[_wgslsmith_index_u32(u_input.c.x, 18u)])), Struct_2(global1[_wgslsmith_index_u32(u_input.c.x, 21u)], Struct_1(1u, vec4<f32>(global0.x, global0.x, 1705f, global0.x)), u_input.b.zx, Struct_1(17681u, vec4<f32>(global0.x, global0.x, 531f, -1529f)))), vec3<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1292f)), vec2<bool>(true, true)), vec2<u32>(0u, 11148u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.x)) + func_4(u_input.b.x, ~vec2<u32>(u_input.c.x, u_input.c.x), -1000f, Struct_2(u_input.d, Struct_1(u_input.c.x, vec4<f32>(812f, 595f, global0.x, -969f)), vec2<i32>(71796i, -24826i), Struct_1(u_input.c.x, vec4<f32>(global0.x, global0.x, global0.x, global0.x)))).d.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global0.x, global0.x)))) * -1343f))));
}

