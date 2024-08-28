struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: f32,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global1: array<vec2<f32>, 21>;

var<private> global2: array<Struct_2, 12>;

var<private> global3: array<i32, 11>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    var var_0 = false;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-221f, -1753f, _wgslsmith_f_op_f32(f32(-1f) * -3597f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1585f, -359f)) + _wgslsmith_f_op_f32(f32(-1f) * -1525f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))) - 1000f)), ~(vec3<u32>(4294967295u >> (0u % 32u), 0u, 8025u) ^ vec3<u32>(~128370u, reverseBits(u_input.d.x), u_input.d.x >> (0u % 32u))), ~7352u);
    let var_2 = ~countOneBits(abs(u_input.d.x));
    let var_3 = !all(!select(vec2<bool>(global0.x, global0.x), select(global0.wz, global0.wy, global0.x), !global0.yz));
    let var_4 = all(!(!(!vec4<bool>(true, var_3, false, false)))) && global0.x;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(701f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1832f)))), _wgslsmith_f_op_f32(var_1.a.x * var_1.b)));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d.x, ~(u_input.d.x | arg_0)), ~(~(~vec2<u32>(u_input.d.x, arg_0)))) | ~(vec2<u32>(u_input.d.x, _wgslsmith_add_u32(arg_0, 4294967295u)) ^ u_input.d.zx);
    var var_1 = u_input.a;
    var var_2 = true;
    let var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(725f * -1600f))), -1000f, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-371f)) + _wgslsmith_f_op_f32(select(321f, -2048f, global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(u_input.c.wy)), 991f)))), 328f, _wgslsmith_mod_vec3_u32(select(u_input.d, u_input.d, select(select(global0.yyy, vec3<bool>(false, false, true), global0.wxx), select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(false, global0.x, true), vec3<bool>(true, global0.x, false)), vec3<bool>(false, true, false))), u_input.d & vec3<u32>(u_input.d.x, abs(13681u), u_input.d.x)), 1u);
    let var_4 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 10646u), 21u)])) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_3.b, var_3.b))) + vec2<f32>(var_3.b, var_3.a.x))))));
    return var_3;
}

fn func_4(arg_0: Struct_2) -> vec4<f32> {
    global1 = array<vec2<f32>, 21>();
    var var_0 = vec4<bool>(true, global0.x, all(select(vec4<bool>(true, global0.x, false, arg_0.b.d == arg_0.c.d), vec4<bool>(any(vec4<bool>(arg_0.a.x, false, true, false)), !arg_0.a.x, true | arg_0.a.x, true), all(select(vec2<bool>(true, global0.x), arg_0.a, arg_0.a.x)))), !any(!(!global0.zxz)));
    let var_1 = u_input.d.x;
    var var_2 = Struct_4(_wgslsmith_dot_vec2_i32(-abs(u_input.c.xz & vec2<i32>(global3[_wgslsmith_index_u32(4294967295u, 11u)], global3[_wgslsmith_index_u32(0u, 11u)])), vec2<i32>(2147483647i, _wgslsmith_dot_vec4_i32(u_input.c, u_input.c)) | firstLeadingBit(u_input.c.zx)), !(true | (arg_0.b.c.x < 39018u)) || false, Struct_3(global2[_wgslsmith_index_u32(5714u, 12u)], var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b.a.x + _wgslsmith_f_op_f32(trunc(arg_0.b.a.x))), _wgslsmith_f_op_f32(min(-247f, _wgslsmith_f_op_f32(-arg_0.c.b))))));
    global0 = vec4<bool>(true, !all(global0.www), select(false, false, var_2.b), all(select(vec4<bool>(!var_0.x, var_2.c.a.c.d >= 28146u, global0.x, any(global0.xwy)), select(vec4<bool>(false, global0.x, false, true), vec4<bool>(global0.x, false, arg_0.a.x, var_0.x), arg_0.b.d == u_input.d.x), vec4<bool>(true, var_1 != var_1, arg_0.a.x, !global0.x))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(571f, arg_0.b.b, arg_0.c.b, func_2(_wgslsmith_mult_u32(firstTrailingBit(41553u), _wgslsmith_div_u32(4294967295u, var_2.c.a.c.d))).a.x));
}

fn func_5(arg_0: f32, arg_1: vec4<f32>, arg_2: vec4<u32>) -> Struct_3 {
    return Struct_3(Struct_2(vec2<bool>(true, !select(global0.x, global0.x, false)), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(arg_1)), arg_1), _wgslsmith_f_op_f32(f32(-1f) * -2271f), vec3<u32>(abs(0u), _wgslsmith_sub_u32(u_input.d.x, u_input.d.x), 2113u), func_2(~arg_2.x).c.x), func_2(arg_2.x)), !(select(false, !global0.x, !global0.x) & false), _wgslsmith_div_f32(func_2(15191u).b, _wgslsmith_f_op_f32(abs(arg_0))));
}

fn func_1() -> StorageBuffer {
    let var_0 = func_5(294f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_2(!global0.xw, Struct_1(vec4<f32>(-673f, 184f, -125f, -673f), 991f, vec3<u32>(15489u, 9880u, 0u), u_input.d.x), func_2(u_input.d.x))))), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.d.x, 46919u, 10156u, u_input.d.x), vec4<u32>(u_input.d.x, 1u, 4294967295u, 4294967295u), false), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 1u, u_input.d.x), vec4<u32>(23689u, 4294967295u, 0u, u_input.d.x))), ~_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x)), ~vec4<u32>(33327u, u_input.d.x, u_input.d.x, u_input.d.x))));
    global1 = array<vec2<f32>, 21>();
    return StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a.c.b))))), func_5(_wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(var_0.c + var_0.a.c.a.x)), var_0.a.c.a, vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.c.d, 17669u, 25909u), var_0.a.c.c), ~63859u, firstLeadingBit(39248u), _wgslsmith_div_u32(u_input.d.x, 0u))).a.b.a.x, all(select(vec2<bool>(global0.x, false), var_0.a.a, any(vec4<bool>(true, var_0.b, true, global0.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(448f)), var_0.a.b.b, _wgslsmith_f_op_f32(abs(1137f)), _wgslsmith_f_op_f32(-var_0.a.c.b)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1065f), _wgslsmith_f_op_f32(floor(var_0.c)), _wgslsmith_f_op_f32(var_0.c * 586f), -780f))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 11>();
    var var_0 = Struct_3(global2[_wgslsmith_index_u32(~(_wgslsmith_clamp_u32(u_input.d.x, select(4294967295u, u_input.d.x, true), 1u) | ~1u), 12u)], global0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -130f)), -136f)));
    var var_1 = _wgslsmith_mult_i32(16822i, abs(2064i));
    var_1 = (-2147483647i & global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(u_input.d.x ^ 1u), ~17367u), 11u)]) & -43262i;
    var var_2 = true;
    var var_3 = var_0.a.b.a.xzx;
    let x = u_input.a;
    s_output = func_1();
}

