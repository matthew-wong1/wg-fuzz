struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
    d: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<f32>) -> u32 {
    var var_0 = Struct_2(Struct_1(vec4<i32>(~_wgslsmith_dot_vec2_i32(arg_0.a.yz, arg_0.a.zx), -abs(-4575i), reverseBits(arg_0.a.x), u_input.b.x), arg_0.b), arg_0, Struct_1(select(arg_0.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.a.x, u_input.d.x, arg_0.a.x, arg_0.a.x), reverseBits(vec4<i32>(-1i, u_input.b.x, arg_0.a.x, arg_0.a.x)), max(vec4<i32>(u_input.b.x, 2147483647i, 0i, -1i), vec4<i32>(-11673i, arg_0.a.x, arg_0.a.x, 43368i))), !(!arg_0.b)), select(!(!arg_0.b), vec4<bool>(all(arg_0.b.xzx), true, u_input.e > u_input.c, arg_1.x), arg_0.b)), !all(vec2<bool>(all(vec2<bool>(false, arg_0.b.x)), arg_2.x > arg_2.x)));
    var var_1 = arg_0.a.x;
    var var_2 = Struct_4(vec2<i32>(arg_0.a.x, var_0.c.a.x), arg_1);
    let var_3 = u_input.e & u_input.a.x;
    var var_4 = vec4<bool>(!(!(!any(arg_1))), var_2.b.x, any(var_2.b), true || all(select(!var_0.b.b.zw, var_0.b.b.ww, var_0.b.b.zw)));
    return 11863u << (u_input.c % 32u);
}

fn func_2(arg_0: bool) -> vec4<i32> {
    var var_0 = -469f >= global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a.x, 0u & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 1u, 0u, 0u), vec4<u32>(1u, u_input.a.x, 370u, 4693u))), ~func_3(Struct_1(vec4<i32>(u_input.b.x, -1i, u_input.b.x, u_input.d.x), vec4<bool>(false, false, arg_0, arg_0)), vec2<bool>(arg_0, false), _wgslsmith_f_op_vec2_f32(vec2<f32>(1538f, global0[_wgslsmith_index_u32(u_input.a.x, 23u)]) - vec2<f32>(global0[_wgslsmith_index_u32(19896u, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)])))), 23u)];
    let var_1 = Struct_3(Struct_1((_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, u_input.b.x, -18909i, u_input.d.x), vec4<i32>(-1i, 3464i, -50367i, -2147483647i)) | ~vec4<i32>(-51357i, u_input.b.x, 1i, u_input.d.x)) >> (~(vec4<u32>(13209u, 50534u, 14210u, u_input.e) << (vec4<u32>(5296u, 23257u, 27018u, u_input.c) % vec4<u32>(32u))) % vec4<u32>(32u)), !vec4<bool>(any(vec3<bool>(true, false, true)), u_input.c <= u_input.c, arg_0, 845f <= global0[_wgslsmith_index_u32(4294967295u, 23u)])), Struct_2(Struct_1(reverseBits(min(vec4<i32>(u_input.b.x, 2147483647i, -7000i, u_input.b.x), vec4<i32>(1i, u_input.b.x, -1i, -1i))), !vec4<bool>(false, false, arg_0, arg_0)), Struct_1(-(~vec4<i32>(2147483647i, -49906i, u_input.b.x, -68568i)), select(vec4<bool>(arg_0, false, arg_0, arg_0), select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(arg_0, true, true, false), true), all(vec2<bool>(false, true)))), Struct_1(vec4<i32>(u_input.b.x, 48747i, _wgslsmith_dot_vec3_i32(vec3<i32>(30964i, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, u_input.d.x, u_input.b.x)), _wgslsmith_div_i32(8001i, -24246i)), select(select(vec4<bool>(false, arg_0, arg_0, true), vec4<bool>(false, arg_0, false, arg_0), vec4<bool>(true, arg_0, arg_0, arg_0)), vec4<bool>(arg_0, false, false, true), arg_0 && true)), arg_0), 0i, countOneBits(~(~(~26525i))));
    global0 = array<f32, 23>();
    var var_2 = !(!vec4<bool>(-773f >= _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(4294967295u, 23u)])), true, false, !(!arg_0)));
    global0 = array<f32, 23>();
    return _wgslsmith_div_vec4_i32(var_1.a.a & _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 2147483647i), _wgslsmith_sub_vec4_i32(var_1.a.a, vec4<i32>(u_input.b.x, u_input.d.x, u_input.d.x, 0i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, u_input.b.x, var_1.b.a.a.x, var_1.a.a.x), vec4<i32>(-10638i, u_input.b.x, u_input.b.x, 2147483647i), vec4<i32>(u_input.b.x, u_input.d.x, 26030i, -680i))), var_1.b.c.a), ~reverseBits(vec4<i32>(0i, firstTrailingBit(2147483647i), ~0i, u_input.b.x)));
}

fn func_1() -> bool {
    let var_0 = Struct_2(Struct_1(func_2(517f < _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(1u, 23u)]))), !(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false)))), Struct_1(vec4<i32>(-1i, ~(~u_input.b.x), -2147483647i, firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, 15745i), vec3<i32>(u_input.b.x, 0i, 687i)))), vec4<bool>(0i >= (u_input.d.x ^ u_input.b.x), true, true, false)), Struct_1(vec4<i32>(1i >> (u_input.c % 32u), 2147483647i, select(countOneBits(u_input.b.x), i32(-1i) * -2147483647i, false), u_input.b.x), select(vec4<bool>(select(false, false, false), false, true, true), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, u_input.d.x == u_input.b.x, true, true))), true);
    global0 = array<f32, 23>();
    let var_1 = Struct_4(abs(vec2<i32>(44005i, 0i)), select(var_0.b.b.zx, !var_0.b.b.wx, var_0.b.b.yy));
    let var_2 = u_input.b;
    var var_3 = 1i;
    return any(!select(!var_0.c.b, vec4<bool>(all(var_0.b.b.xwy), var_1.b.x, var_1.b.x, false), select(select(var_0.a.b, var_0.a.b, var_1.b.x), !var_0.c.b, !var_0.c.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    var var_0 = func_1();
    var_0 = select(all(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true)), (i32(-1i) * -1i) < u_input.d.x, all(vec3<bool>(!select(false, false, false), any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true))), select(all(vec3<bool>(false, false, false)), true, true))));
    var_0 = true;
    var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(773f, 972f, 920f)) - vec3<f32>(global0[_wgslsmith_index_u32(u_input.e, 23u)], 2110f, global0[_wgslsmith_index_u32(0u, 23u)])) * vec3<f32>(global0[_wgslsmith_index_u32(1u, 23u)], _wgslsmith_f_op_f32(max(1000f, global0[_wgslsmith_index_u32(u_input.a.x, 23u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.e, 23u)]))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(1u, 23u)])), global0[_wgslsmith_index_u32(~u_input.a.x, 23u)], _wgslsmith_f_op_f32(round(506f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(9326u, 23u)], 407f, -773f) - vec3<f32>(-141f, 1139f, -1000f))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -770f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 23u)] + -358f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.c, 23u)], global0[_wgslsmith_index_u32(1u, 23u)]))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1717f, global0[_wgslsmith_index_u32(u_input.e, 23u)], -823f))))));
    var var_2 = Struct_1(vec4<i32>(-27435i, ~_wgslsmith_sub_i32(u_input.b.x, u_input.b.x), _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.d.x, -18227i), u_input.b.x), _wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(-81229i, 32411i))) & -min(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, 15395i, -2877i, 4122i), vec4<i32>(20918i, u_input.b.x, u_input.b.x, u_input.d.x)), reverseBits(vec4<i32>(-28953i, 4933i, -7160i, u_input.b.x))), select(select(vec4<bool>(true, any(vec4<bool>(true, true, false, true)), any(vec4<bool>(false, true, true, false)), true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(1u, 23u)], -1095f))), _wgslsmith_add_vec2_i32(vec2<i32>(-u_input.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(65518i, var_2.a.x, -8910i, u_input.d.x), var_2.a)), -select(-var_2.a.yz, -vec2<i32>(var_2.a.x, -57685i), select(vec2<bool>(true, true), vec2<bool>(false, var_2.b.x), false))));
}

