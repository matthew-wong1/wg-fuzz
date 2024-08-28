struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13> = array<i32, 13>(2147483647i, -69276i, -1i, 8195i, 1035i, 1897i, i32(-2147483648), -15267i, 1i, i32(-2147483648), -10320i, -1i, -22208i);

var<private> global1: Struct_1 = Struct_1(vec2<f32>(390f, -215f), vec3<bool>(false, true, true), 1u, 608f);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>) -> u32 {
    global0 = array<i32, 13>();
    let var_0 = countOneBits(vec2<i32>(-4712i, -51982i & -u_input.b.x));
    return firstLeadingBit(countOneBits(~_wgslsmith_mod_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.c, 45086u, 14066u), vec3<u32>(global1.c, 0u, global1.c)))));
}

fn func_2() -> u32 {
    let var_0 = Struct_3(global1.c, vec3<u32>(u_input.a.x, select(func_3(531f, vec2<u32>(0u, 0u)), ~69499u, global1.b.x), global1.c));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -249f), -1420f)), vec3<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -316f) < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.d))), any(select(vec3<bool>(true, true, global1.b.x), vec3<bool>(true, false, global1.b.x), true)) || false), 58697u, -385f);
    var var_1 = Struct_1(global1.a, global1.b, ~abs((22387u ^ var_0.b.x) & ~global1.c), _wgslsmith_f_op_f32(f32(-1f) * -523f));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, 1342f, 1000f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-217f, global1.a.x, global1.d), vec3<f32>(global1.a.x, var_1.a.x, 1351f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a.x, 565f, var_1.d), vec3<f32>(-1113f, -756f, 1050f), global1.b))))));
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-693f, -427f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global1.a)) + vec2<f32>(-791f, -729f)), _wgslsmith_f_op_vec2_f32(var_1.a * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, -209f))))))), vec3<bool>(var_1.b.x, global1.b.x, -848f != _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1325f, global1.a.x)))), u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x + -547f)));
    return _wgslsmith_mod_u32(~_wgslsmith_sub_u32(firstTrailingBit(global1.c), var_0.b.x), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~u_input.a, vec2<u32>(0u, u_input.c)) ^ (_wgslsmith_div_vec2_u32(var_0.b.yy, vec2<u32>(global1.c, var_1.c)) | _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.b.x, var_1.c), u_input.a)), ~(~(~u_input.a))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = vec4<u32>(~(~(~min(global1.c, 1u))), _wgslsmith_add_u32((~14095u << (u_input.a.x % 32u)) ^ u_input.d, 35300u), abs(reverseBits(_wgslsmith_div_u32(32194u, 4294967295u << (global1.c % 32u)))), func_2());
    let var_1 = ~countOneBits(var_0.ywx) << (firstLeadingBit(var_0.wyy) % vec3<u32>(32u));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(global1.a, vec2<f32>(985f, -888f), global1.b.x)))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(global1.a, vec2<f32>(744f, -369f)), global1.a))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(357f - global1.a.x), global1.d))), select(select(vec3<bool>(global1.b.x, true, true), select(select(global1.b, global1.b, global1.b), select(global1.b, vec3<bool>(false, global1.b.x, false), true), vec3<bool>(false, true, global1.b.x)), all(select(vec4<bool>(false, false, global1.b.x, global1.b.x), vec4<bool>(true, true, false, false), true))), vec3<bool>(global1.b.x, !(var_1.x == 1u), select(!global1.b.x, true, false)), !global1.b), ~(~(~1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, global1.d)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(848f, global1.a.x), vec2<f32>(2282f, global1.a.x))))), !select(select(vec3<bool>(global1.b.x, global1.b.x, true), !vec3<bool>(true, false, global1.b.x), select(vec3<bool>(global1.b.x, true, global1.b.x), global1.b, vec3<bool>(true, true, global1.b.x))), select(!global1.b, vec3<bool>(true, true, global1.b.x), global1.b), all(!vec4<bool>(false, global1.b.x, false, global1.b.x))), ~abs(~u_input.a.x), global1.a.x);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.d), arg_0) - -1147f));
    return Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(2476f + 578f), _wgslsmith_f_op_f32(189f - -127f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global1.a), global1.a, var_2.b.x)))), select(select(!(!global1.b), global1.b, !vec3<bool>(var_2.b.x, global1.b.x, global1.b.x)), global1.b, global1.b.x), 1u, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 13>();
    global0 = array<i32, 13>();
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(global1.a)), vec3<bool>(global1.b.x | true, true, global1.b.x), u_input.a.x, 1000f);
    var var_0 = global1.b.x;
    global0 = array<i32, 13>();
    let var_1 = Struct_2(global1.a.x);
    global1 = func_1(-207f);
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(4294967295u, 103892u), ~4294967295u, abs(global1.c))), 13u)]);
}

