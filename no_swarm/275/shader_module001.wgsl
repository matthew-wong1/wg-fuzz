struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 28>;

var<private> global1: array<i32, 27> = array<i32, 27>(0i, i32(-2147483648), -13223i, 7716i, i32(-2147483648), 1i, 0i, -1i, 24429i, -9363i, 2147483647i, 24066i, 3546i, 31054i, -1i, -36807i, -1i, -1i, -1i, 1i, 1i, 3858i, 36032i, 1i, 27915i, -5535i, -29532i);

var<private> global2: i32 = -1i;

var<private> global3: array<vec3<i32>, 24>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> u32 {
    return firstLeadingBit(~29970u);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<i32>) -> i32 {
    let var_0 = Struct_3(arg_1.x, true);
    global3 = array<vec3<i32>, 24>();
    global0 = array<Struct_4, 28>();
    let var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(444f)) - 1f))), _wgslsmith_f_op_f32(-1f)), _wgslsmith_mult_u32(~(~1u), countOneBits(0u)), vec3<f32>(1f, 1f, 1f), i32(-1i) * -(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, u_input.a.x, u_input.c.x, global1[_wgslsmith_index_u32(1u, 27u)]), u_input.d)), _wgslsmith_mod_u32(1u, ~1u));
    let var_2 = select(arg_0.zz, arg_0.zz, true);
    return -2147483647i;
}

fn func_1(arg_0: Struct_2) -> Struct_4 {
    let var_0 = Struct_4(_wgslsmith_div_i32(-(-64917i >> (arg_0.b % 32u)) ^ 1i, ~global1[_wgslsmith_index_u32(~(~arg_0.e), 27u)]), arg_0.d, vec4<u32>(~(~max(arg_0.e, arg_0.e)), func_2(), ~arg_0.e, ~(~74588u)), select(~vec2<u32>(3856u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b, 0u, 41708u), vec3<u32>(8226u, arg_0.b, 4294967295u))), ~(~abs(vec2<u32>(arg_0.b, arg_0.e))), vec2<bool>(all(vec4<bool>(false, true, false, false)) | true, all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false))))), vec4<bool>(false, true, true, true));
    global3 = array<vec3<i32>, 24>();
    let var_1 = var_0.e.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1072f, -192f)), 1184f, arg_0.a, _wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(920f + -789f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-981f, arg_0.c.x, arg_0.a, 349f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, arg_0.a, arg_0.a, arg_0.c.x))), vec4<f32>(-581f, _wgslsmith_f_op_f32(arg_0.a - arg_0.c.x), arg_0.a, arg_0.c.x)), var_0.e.x)));
    var var_3 = Struct_1(-arg_0.d, select(var_0.e, !var_0.e, !var_0.e));
    return Struct_4(_wgslsmith_div_i32(1i, arg_0.d), func_3(!vec4<bool>(var_3.b.x, arg_0.e <= arg_0.b, var_3.b.x, false), select(vec2<i32>(12737i, -32816i), u_input.c.yy, !var_3.b.zz)), var_0.c, vec2<u32>(~(abs(34291u) & _wgslsmith_mult_u32(arg_0.e, var_0.d.x)), func_2()), var_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_2(_wgslsmith_div_f32(290f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(220f))))), ~0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-901f, -111f, 227f))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-996f, 439f, 268f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-172f, 859f, -479f))), all(vec4<bool>(true, true, true, false))))), 2147483647i, ~_wgslsmith_mult_u32(firstTrailingBit(22370u), firstLeadingBit(0u))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 843f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(298f, -1368f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-525f, 166f, -1000f), vec3<f32>(1f, 1f, 1f))), !var_0.e.wyz)));
    global3 = array<vec3<i32>, 24>();
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + 555f) - -629f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - var_1.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, -360f, -1113f, var_1.x)))))));
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u ^ var_0.c.x, _wgslsmith_add_u32(0u, min(_wgslsmith_mult_u32(var_0.c.x, 0u), 44572u) >> (func_2() % 32u))), 28u)];
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.x, 182f, _wgslsmith_f_op_f32(abs(1445f)), var_1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 1000f, 348f, var_2.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -608f, var_2.x, 1523f)))))));
    var var_3 = Struct_3(24290i, var_0.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1336f, var_2.x), _wgslsmith_f_op_vec2_f32(var_1.yz + _wgslsmith_f_op_vec2_f32(exp2(var_1.yy))))), vec3<i32>((34931i | u_input.d.x) & _wgslsmith_mult_i32(abs(global1[_wgslsmith_index_u32(4294967295u, 27u)]), _wgslsmith_mod_i32(var_3.a, u_input.b.x)), var_3.a, _wgslsmith_mod_i32(~(-20416i), global1[_wgslsmith_index_u32(var_0.c.x, 27u)])), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-622f, _wgslsmith_f_op_f32(f32(-1f) * -2103f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-367f - -1367f), var_1.x, !var_0.e.x)), -532f))));
}

