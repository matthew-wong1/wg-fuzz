struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_2,
    d: bool,
    e: vec3<u32>,
}

struct Struct_5 {
    a: bool,
    b: vec4<bool>,
    c: vec2<bool>,
    d: Struct_4,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28>;

var<private> global1: array<vec2<u32>, 26> = array<vec2<u32>, 26>(vec2<u32>(6394u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(63073u, 4294967295u), vec2<u32>(34754u, 1u), vec2<u32>(2771u, 1u), vec2<u32>(13681u, 4294967295u), vec2<u32>(19351u, 1u), vec2<u32>(55335u, 0u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 85266u), vec2<u32>(4294967295u, 38419u), vec2<u32>(53283u, 15621u), vec2<u32>(36336u, 61161u), vec2<u32>(26907u, 41534u), vec2<u32>(34617u, 0u), vec2<u32>(38596u, 13180u), vec2<u32>(0u, 11525u), vec2<u32>(21977u, 1u), vec2<u32>(101239u, 6272u), vec2<u32>(0u, 1u), vec2<u32>(1u, 90027u), vec2<u32>(4294967295u, 332u), vec2<u32>(4294967295u, 20605u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 1u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: Struct_5, arg_3: vec3<f32>) -> i32 {
    global0 = array<Struct_2, 28>();
    let var_0 = Struct_3(-1000f);
    global1 = array<vec2<u32>, 26>();
    let var_1 = 1i > -arg_2.d.c.c.x;
    let var_2 = firstLeadingBit(arg_2.d.e.x);
    return ~u_input.a.x;
}

fn func_3() -> u32 {
    var var_0 = vec4<i32>(0i, min(abs(u_input.b), countOneBits(_wgslsmith_div_i32(reverseBits(u_input.a.x), ~u_input.b))), abs(-select(2147483647i, u_input.c.x, true) ^ 1i), (~_wgslsmith_mult_i32(u_input.a.x, u_input.c.x) ^ -1i) << ((1u & _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 59858u, 4294967295u), vec3<u32>(68668u, 15112u, 1u)), ~vec3<u32>(49667u, 3683u, 47245u))) % 32u));
    let var_1 = Struct_3(113f);
    global0 = array<Struct_2, 28>();
    var var_2 = Struct_4(Struct_1(true), select(vec4<bool>(true, true, true, all(vec2<bool>(false, true)) || all(vec4<bool>(false, false, true, false))), select(vec4<bool>(false, 22279i <= var_0.x, true, false), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), false), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false))), vec4<bool>(!any(vec2<bool>(false, false)), (-4678i > u_input.a.x) || true, _wgslsmith_mult_u32(61826u, 1u) != _wgslsmith_dot_vec2_u32(vec2<u32>(10395u, 3432u), vec2<u32>(4294967295u, 91564u)), !(var_1.a == -1000f))), Struct_2(Struct_1(true), 795f, max(reverseBits(u_input.d), vec3<i32>(2862i, u_input.a.x, u_input.a.x)) >> (~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 0u, 1u), vec3<u32>(4294967295u, 4294967295u, 32930u)) % vec3<u32>(32u)), vec3<bool>(all(vec4<bool>(true, true, true, true)), !any(vec4<bool>(false, false, true, false)), true | (835f <= var_1.a)), Struct_1(all(vec4<bool>(true, false, false, true)))), all(vec4<bool>(1541f > var_1.a, true, any(vec2<bool>(false, false)), _wgslsmith_f_op_f32(1659f * var_1.a) <= _wgslsmith_f_op_f32(-1061f * -354f))), ~(~(~firstTrailingBit(vec3<u32>(3485u, 17086u, 4294967295u)))));
    var_2 = Struct_4(var_2.a, !var_2.b, var_2.c, false, max(firstTrailingBit(vec3<u32>(var_2.e.x, countOneBits(37956u), var_2.e.x)), var_2.e));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.e.x, 10329u, (~13306u << (_wgslsmith_clamp_u32(55783u, var_2.e.x, 8643u) % 32u)) | _wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_2.e.x, var_2.e.x, var_2.e.x), 30924u), ~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_2.e.x, 7257u, var_2.e.x), vec3<u32>(var_2.e.x, var_2.e.x, var_2.e.x)), vec3<u32>(var_2.e.x, 28616u, var_2.e.x))), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_add_u32(~1u, abs(var_2.e.x)), _wgslsmith_div_u32(34729u, firstTrailingBit(0u)), (4294967295u ^ var_2.e.x) << (4294967295u % 32u), _wgslsmith_dot_vec3_u32(var_2.e | vec3<u32>(1u, var_2.e.x, 54451u), _wgslsmith_sub_vec3_u32(var_2.e, var_2.e))), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(max(vec4<u32>(var_2.e.x, 1u, var_2.e.x, 4294967295u), vec4<u32>(2674u, var_2.e.x, 39091u, var_2.e.x)), select(vec4<u32>(var_2.e.x, 1u, var_2.e.x, 53683u), vec4<u32>(4294967295u, var_2.e.x, var_2.e.x, var_2.e.x), var_2.b.x)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(47703u, 0u, var_2.e.x, var_2.e.x), vec4<u32>(var_2.e.x, 4294967295u, var_2.e.x, 58148u)))));
}

fn func_1() -> Struct_4 {
    global0 = array<Struct_2, 28>();
    global1 = array<vec2<u32>, 26>();
    let var_0 = -2147483647i;
    let var_1 = -748f;
    let var_2 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(-1i, var_0), -_wgslsmith_add_i32(func_2(true, var_1, Struct_5(true, vec4<bool>(false, false, true, true), vec2<bool>(false, false), Struct_4(Struct_1(true), vec4<bool>(false, false, false, false), Struct_2(Struct_1(true), var_1, vec3<i32>(-4645i, var_0, u_input.a.x), vec3<bool>(true, false, true), Struct_1(true)), true, vec3<u32>(1u, 33364u, 1u)), Struct_1(false)), vec3<f32>(-1109f, var_1, var_1)), u_input.a.x)) < ~(-var_0);
    return Struct_4(Struct_1(false), select(vec4<bool>(any(vec4<bool>(false, false, true, var_2)), var_2, all(vec3<bool>(true, true, true)), false), !(!(!vec4<bool>(var_2, var_2, var_2, true))), !vec4<bool>(!var_2, var_2, all(vec2<bool>(var_2, true)), true)), global0[_wgslsmith_index_u32(~func_3(), 28u)], var_2, ~vec3<u32>(min(72481u, min(4294967295u, 1u)), ~1u, func_3()));
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: vec3<f32>, arg_3: vec4<i32>) -> bool {
    global1 = array<vec2<u32>, 26>();
    global1 = array<vec2<u32>, 26>();
    var var_0 = vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_1.e, arg_1.e, arg_1.e) << (_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.e.x, 0u, arg_1.e.x), vec3<u32>(64297u, arg_1.e.x, arg_1.e.x)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(0u, 40864u, arg_1.e.x)), firstLeadingBit(arg_1.e))), ~_wgslsmith_clamp_u32(arg_1.e.x >> (1u % 32u), arg_1.e.x, select(arg_1.e.x, 77139u, false))), arg_1.e.x, 4294967295u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~global1[_wgslsmith_index_u32(3541u, 26u)] >> ((vec2<u32>(arg_1.e.x, arg_1.e.x) ^ vec2<u32>(127007u, 0u)) % vec2<u32>(32u)), vec2<u32>(4294967295u, ~92062u)), 22107u));
    let var_1 = vec4<bool>(arg_0, all(select(!(!vec3<bool>(true, arg_0, false)), arg_1.b.xww, arg_1.b.zww)), arg_1.a.a, func_1().d);
    let var_2 = arg_2;
    return true;
}

fn func_5(arg_0: bool, arg_1: Struct_5) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(arg_1.d.c.b)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-115f, 196f)))), _wgslsmith_f_op_f32(step(arg_1.d.c.b, -2199f)), 261f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1610f), -802f, 818f, _wgslsmith_f_op_f32(floor(-1139f)))))));
    let var_1 = arg_1.d.c.a;
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(floor(-2085f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1662f)))), _wgslsmith_f_op_f32(-arg_1.d.c.b), var_0.x);
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -518f), var_0.x, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-arg_1.d.c.b)), 1193f), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-arg_1.d.c.b), _wgslsmith_f_op_f32(abs(var_0.x)), var_0.x), vec4<f32>(_wgslsmith_f_op_f32(-arg_1.d.c.b), _wgslsmith_f_op_f32(f32(-1f) * -330f), _wgslsmith_f_op_f32(arg_1.d.c.b - arg_1.d.c.b), arg_1.d.c.b))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(func_1().c.b, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(594f + var_0.x)), arg_1.d.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(786f * arg_1.d.c.b))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(353f, arg_1.d.c.b) - var_0.yz);
    return StorageBuffer(_wgslsmith_mod_vec2_i32(arg_1.d.c.c.yz, ~func_1().c.c.xz), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2488f), _wgslsmith_f_op_f32(1296f - arg_1.d.c.b))) - var_0.wz), _wgslsmith_dot_vec3_i32(arg_1.d.c.c, vec3<i32>(~(~(-21864i)), _wgslsmith_clamp_i32(~(-19686i), -41049i, func_1().c.c.x), -1i)), -min(arg_1.d.c.c.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, -13612i), select(vec2<i32>(-2147483647i, -12713i), arg_1.d.c.c.yx, vec2<bool>(var_1.a, arg_1.b.x)))), 592f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_4(!(!any(vec4<bool>(false, false, true, true))), func_1(), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(410f, -136f, -329f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(145f, 841f, -603f)))))), -vec4<i32>(~u_input.b, firstLeadingBit(u_input.d.x), -u_input.c.x, _wgslsmith_clamp_i32(-2582i, u_input.c.x, u_input.b))), Struct_5(true, vec4<bool>(false, true, true, true), vec2<bool>(true, !any(vec3<bool>(true, true, false))), func_1(), func_1().a));
}

