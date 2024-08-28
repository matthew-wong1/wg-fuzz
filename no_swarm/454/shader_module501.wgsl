struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec4<u32>,
    d: i32,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: u32,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 12> = array<vec4<i32>, 12>(vec4<i32>(-33737i, 31640i, -1i, -1903i), vec4<i32>(2147483647i, -1i, 1i, 2147483647i), vec4<i32>(1060i, 0i, 6358i, -68885i), vec4<i32>(-21640i, 34693i, 45787i, -1i), vec4<i32>(-1i, 16399i, 1i, -40141i), vec4<i32>(8235i, -1i, 31820i, 0i), vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 14408i), vec4<i32>(-60703i, 32705i, 1i, -67334i), vec4<i32>(-14286i, -52481i, 33969i, 0i), vec4<i32>(22822i, 21466i, -9489i, 28881i), vec4<i32>(2147483647i, 27954i, 5648i, 1166i), vec4<i32>(-33300i, 1i, -81116i, 0i));

var<private> global1: array<Struct_1, 17>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32) -> i32 {
    global0 = array<vec4<i32>, 12>();
    var var_0 = !(!vec4<bool>(all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), true)), !all(vec3<bool>(true, false, true)), !any(vec3<bool>(true, false, false)), !any(vec4<bool>(true, false, true, true))));
    global0 = array<vec4<i32>, 12>();
    return 126994i;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    let var_0 = Struct_5(arg_2.a, !arg_1.d.x, _wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, _wgslsmith_sub_u32(0u | arg_2.d.x, 19994u)), _wgslsmith_mult_u32(~abs(u_input.c), arg_1.a)), -(i32(-1i) * -2147483647i), arg_2);
    let var_1 = -_wgslsmith_add_i32(_wgslsmith_clamp_i32(-35253i, _wgslsmith_add_i32(func_3(arg_2.b), 0i), firstLeadingBit(var_0.a)), -51869i);
    let var_2 = _wgslsmith_div_i32(arg_2.a, -63516i) != 0i;
    var var_3 = !select(select(vec3<bool>(true || var_2, arg_1.d.x, all(vec2<bool>(true, true))), !vec3<bool>(true, arg_1.d.x, var_2), select(vec3<bool>(var_2, var_2, false), !vec3<bool>(false, var_0.b, var_0.b), !vec3<bool>(var_0.b, true, arg_1.d.x))), !(!select(vec3<bool>(false, false, var_2), vec3<bool>(var_2, true, var_0.b), vec3<bool>(false, false, var_0.b))), !(!select(vec3<bool>(var_0.b, var_0.b, true), vec3<bool>(arg_1.d.x, false, var_2), false)));
    var var_4 = select(global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(u_input.b.x, 12u)], !(!(!vec4<bool>(var_2, var_3.x, true, arg_1.d.x)))) | global0[_wgslsmith_index_u32(33453u, 12u)];
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(240f, arg_1.c.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1085f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.x) * _wgslsmith_f_op_f32(740f * 1094f)));
}

fn func_1() -> u32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_2(vec2<f32>(-1202f, _wgslsmith_f_op_f32(trunc(-1100f))), global1[_wgslsmith_index_u32(select(u_input.a.x, u_input.b.x, true), 17u)], Struct_2(~_wgslsmith_mult_i32(1i, 1i), countOneBits(1u), ~(~(-51179i)), ~vec4<u32>(u_input.c, u_input.a.x, u_input.a.x, u_input.a.x)))), 897f);
    let var_1 = -1144f;
    global1 = array<Struct_1, 17>();
    var var_2 = firstLeadingBit(vec2<u32>(reverseBits(1u) | u_input.b.x, _wgslsmith_mod_u32(~24069u, 1u)) & (u_input.a.zy & ~(~vec2<u32>(0u, u_input.b.x))));
    global1 = array<Struct_1, 17>();
    return firstLeadingBit(select(select(_wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(66098u, u_input.b.x, u_input.c, u_input.b.x))), u_input.a.x, false), ~(~reverseBits(var_2.x)), any(select(vec2<bool>(false, false), vec2<bool>(true, true), true))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 17>();
    let var_0 = ~_wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 28756u, 4294967295u, u_input.b.x), u_input.b), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.b.x, 4294967295u), vec4<u32>(2752u, u_input.a.x, u_input.b.x, u_input.c))), u_input.b.x), ~(u_input.b.x | func_1()));
    global1 = array<Struct_1, 17>();
    var var_1 = !all(vec4<bool>(select(true, all(vec4<bool>(true, true, true, true)), true), false, select(false, any(vec3<bool>(true, true, true)), false), true));
    var var_2 = _wgslsmith_mod_u32(min(~1u, ~(~58660u)), ~_wgslsmith_mult_u32(u_input.c, 1u));
    global1 = array<Struct_1, 17>();
    var_2 = var_0;
    let var_3 = Struct_4(Struct_3(Struct_2(0i, _wgslsmith_div_u32(u_input.a.x, ~var_0), -firstTrailingBit(-1i), vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, 53230u), ~33738u, ~20676u, 0u & var_0))), Struct_3(Struct_2(abs(_wgslsmith_clamp_i32(2147483647i, -1901i, 1i)), _wgslsmith_sub_u32(~var_0, _wgslsmith_mod_u32(42125u, var_0)), _wgslsmith_sub_i32(~(-1i), _wgslsmith_add_i32(1i, 54269i)), ~vec4<u32>(11755u, u_input.a.x, 0u, 4294967295u) >> (vec4<u32>(59370u, u_input.a.x, u_input.c, u_input.a.x) % vec4<u32>(32u)))), ~(~(~firstLeadingBit(vec4<u32>(7264u, var_0, 57989u, 0u)))), 1i);
    let var_4 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1015f), -1285f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(313f - _wgslsmith_f_op_f32(f32(-1f) * -604f)) * 1053f), -380f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1012f, 502f, -1000f, 1931f), vec4<f32>(-1215f, 1000f, -1913f, -226f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1708f, 1000f, -1002f, -1000f) * vec4<f32>(-765f, 601f, -151f, -1512f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1304f, -2418f, 1756f, 2232f) + vec4<f32>(1000f, 382f, 329f, 1613f)), vec4<f32>(-554f, -274f, -1283f, 1705f))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-505f)), _wgslsmith_f_op_f32(f32(-1f) * -1126f), _wgslsmith_f_op_f32(-1119f * 286f), _wgslsmith_f_op_f32(f32(-1f) * -923f)) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(533f, -1029f, 544f, 1368f) + vec4<f32>(-910f, 1000f, -1256f, 798f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(abs(min(vec3<i32>(-2147483647i, var_3.d, var_3.b.a.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_3.a.a.a, 0i, 2147483647i), vec3<i32>(2147483647i, var_3.b.a.a, 0i), vec3<i32>(var_3.a.a.a, var_3.b.a.a, -2147483647i)))), vec3<i32>(-449i | var_3.b.a.c, min(var_3.a.a.c, var_3.d), firstTrailingBit(var_3.a.a.a))));
}

