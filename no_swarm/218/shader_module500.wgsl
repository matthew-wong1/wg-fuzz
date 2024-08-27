struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: Struct_2,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: bool;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<bool>) -> vec4<u32> {
    var var_0 = Struct_1(max(vec4<u32>(_wgslsmith_mult_u32(u_input.a, _wgslsmith_div_u32(u_input.a, u_input.a)), max(68101u, 0u), select(u_input.a, u_input.a, false) << (4294967295u % 32u), 4294967295u), select(select(_wgslsmith_div_vec4_u32(vec4<u32>(14398u, 34947u, 934u, 0u), vec4<u32>(58760u, u_input.a, u_input.a, u_input.a)), vec4<u32>(58589u, 5584u, u_input.a, 4294967295u) | vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, false, arg_0.x, false), true)), ~vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a) << (vec4<u32>(0u, 61668u, u_input.a, 23633u) % vec4<u32>(32u)), !vec4<bool>(arg_2.x, false, false, arg_0.x))));
    global0 = 31987u;
    var var_1 = !arg_2.x;
    var var_2 = _wgslsmith_div_vec2_u32(var_0.a.wx, ~vec2<u32>(var_0.a.x, 1u));
    var var_3 = vec2<f32>(arg_1, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(arg_1)))));
    return var_0.a;
}

fn func_2(arg_0: vec3<i32>, arg_1: bool) -> vec4<bool> {
    var var_0 = Struct_3(true, vec4<bool>(arg_1, true, u_input.b > -2147483647i, all(select(select(vec2<bool>(false, arg_1), vec2<bool>(true, true), arg_1), vec2<bool>(true, true), arg_1))), Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a << (u_input.a % 32u), 17572u, 38213u & u_input.a, countOneBits(u_input.a)), max(vec4<u32>(1u, 1u, 570u, u_input.a), func_3(vec3<bool>(arg_1, false, arg_1), -467f, vec2<bool>(true, false))))));
    let var_1 = Struct_2(var_0.c, Struct_1(_wgslsmith_clamp_vec4_u32(var_0.c.a, var_0.c.a >> (vec4<u32>(4294967295u, var_0.c.a.x, 88188u, 14688u) % vec4<u32>(32u)), func_3(vec3<bool>(arg_1, true, true), _wgslsmith_f_op_f32(246f + -729f), !var_0.b.yx))));
    var var_2 = vec4<bool>(!var_0.b.x && true, _wgslsmith_sub_u32(~u_input.a, 1u) >= ~_wgslsmith_div_u32(var_0.c.a.x, ~u_input.a), arg_1 | true, false & var_0.b.x);
    let var_3 = Struct_4(_wgslsmith_f_op_f32(trunc(-290f)), firstLeadingBit(~(~(arg_0.x | -2147483647i))), var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 826f))))), Struct_2(var_1.a, Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(24042u, var_0.c.a.x, var_1.a.a.x, var_1.a.a.x), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), var_0.c.a)))));
    let var_4 = 651f;
    return !vec4<bool>(all(!select(var_0.b, var_0.b, var_0.b.x)), false, var_2.x, var_0.a);
}

fn func_1() -> Struct_1 {
    global0 = ~(_wgslsmith_dot_vec3_u32(vec3<u32>(22414u, u_input.a, 5687u) ^ firstLeadingBit(vec3<u32>(16927u, u_input.a, 8748u)), ~(vec3<u32>(45222u, 29436u, 0u) ^ vec3<u32>(10181u, u_input.a, 27404u))) >> (u_input.a % 32u));
    var var_0 = func_2(-vec3<i32>(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b) << (vec2<u32>(u_input.a, 34556u) % vec2<u32>(32u)), reverseBits(vec2<i32>(-35714i, u_input.b))), _wgslsmith_add_i32(u_input.b & u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -2147483647i, 1i, u_input.b), vec4<i32>(20528i, 2147483647i, u_input.b, -20301i)))), ~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.b, -1i), -vec3<i32>(1i, u_input.b, 0i)) >= ~(~(i32(-1i) * -40170i)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -334f), _wgslsmith_f_op_f32(round(-661f)), 716f) * vec3<f32>(_wgslsmith_f_op_f32(step(2891f, 1000f)), -689f, _wgslsmith_f_op_f32(2749f - 199f))));
    var var_2 = Struct_3(any(!vec3<bool>(false, !var_0.x, var_0.x)), !vec4<bool>(var_1.x <= var_1.x, !var_0.x, all(!vec4<bool>(var_0.x, true, false, true)), true), Struct_1(_wgslsmith_clamp_vec4_u32(~vec4<u32>(25589u, u_input.a, u_input.a, 0u), ~vec4<u32>(u_input.a, u_input.a, 3993u, u_input.a), firstTrailingBit(firstLeadingBit(vec4<u32>(4294967295u, 73239u, 37568u, 1245u))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(var_1.x * 139f), 1f, -1591f)));
    return var_2.c;
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: i32, arg_3: vec2<bool>) -> f32 {
    var var_0 = Struct_2(arg_0.c, arg_0.c);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-106f, 1748f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) + 164f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -130f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-836f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(190f + 1529f) - 721f))));
    global1 = var_1.x != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(f32(-1f) * -733f)) + _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(ceil(var_1.x))))));
    var_0 = Struct_2(func_1(), func_1());
    global1 = !(!(func_2(vec3<i32>(-1i, -2147483647i, 1i), arg_1.x).x || true));
    return _wgslsmith_f_op_f32(f32(-1f) * -2173f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 28739u;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_3(true, select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false)), func_1()), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), true), u_input.b, vec2<bool>(true, true)))));
    let var_1 = Struct_4(-793f, u_input.b, Struct_2(func_1(), func_1()), -138f, Struct_2(func_1(), func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -125f)), var_1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1407f + -627f) * _wgslsmith_f_op_f32(min(var_1.a, var_1.d)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1281f, 2080f, var_1.a, -1465f) * _wgslsmith_div_vec4_f32(vec4<f32>(622f, var_1.a, 571f, var_1.d), vec4<f32>(var_1.d, -440f, 1001f, var_1.d))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1974f, var_1.a, var_1.d, var_1.d)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, var_1.d, -283f, 406f))), false)), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.a, var_1.d)) + var_1.a), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(min(var_1.e.a.a, vec4<u32>(var_1.c.a.a.x, 5474u, 0u, u_input.a)) | vec4<u32>(4294967295u, 40827u, var_1.e.b.a.x, u_input.a), var_1.e.b.a), ~(~(~var_1.c.a.a))), var_1.e.a.a.zxy);
}

