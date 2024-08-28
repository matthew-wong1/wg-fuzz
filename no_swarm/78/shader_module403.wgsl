struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = !(any(select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(false, true, true), false)) && (any(vec4<bool>(false, arg_0, arg_0, false)) | false)) & false;
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-295f, 1482f, -348f, -409f), vec4<f32>(237f, 1174f, 2042f, 934f))), vec4<f32>(_wgslsmith_f_op_f32(-1878f * -2073f), -1502f, _wgslsmith_f_op_f32(ceil(953f)), _wgslsmith_f_op_f32(-600f + -1254f)), select(vec4<bool>(true, false, true, arg_0), !vec4<bool>(true, false, arg_0, arg_0), select(vec4<bool>(arg_0, false, false, arg_0), vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(false, arg_0, arg_0, true))))))));
    var var_2 = _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(_wgslsmith_dot_vec3_u32(u_input.e, u_input.e)), 53941u, 1u, select(_wgslsmith_add_u32(45204u, 47132u), 39795u >> (u_input.e.x % 32u), select(true, true, arg_0))), vec4<u32>(~1u & _wgslsmith_dot_vec2_u32(u_input.e.xy, vec2<u32>(4294967295u, u_input.d)), (1684u & u_input.d) ^ _wgslsmith_dot_vec2_u32(u_input.e.yy, vec2<u32>(u_input.d, u_input.e.x)), firstTrailingBit(0u), u_input.e.x ^ _wgslsmith_mult_u32(34550u, u_input.d))), 18983u);
    var_0 = false;
    var var_3 = var_1.x;
    return min(~u_input.e.x, abs(~u_input.d & ~(~45586u)));
}

fn func_2(arg_0: vec4<u32>, arg_1: f32) -> Struct_2 {
    var var_0 = vec2<u32>(4294967295u, func_3(all(vec2<bool>(true, true))));
    let var_1 = vec3<bool>(_wgslsmith_f_op_f32(trunc(arg_1)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(115f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-985f * arg_1), _wgslsmith_f_op_f32(-1200f - arg_1))), true, !(_wgslsmith_f_op_f32(sign(750f)) == _wgslsmith_f_op_f32(arg_1 * -1000f)));
    var_0 = u_input.e.zz;
    var var_2 = _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(970f, -538f))));
    let var_3 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1289f))), _wgslsmith_div_f32(235f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1, -365f, false)) + 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1172f - 1000f) + _wgslsmith_f_op_f32(arg_1 * arg_1)) - -1330f)), Struct_1(min(4294967295u, func_3(true)), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-815f - -491f), _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1580f + arg_1), _wgslsmith_f_op_f32(1000f - arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * 515f)), 1432f), _wgslsmith_mult_i32(u_input.c, firstLeadingBit(u_input.a.x))), firstTrailingBit(firstLeadingBit(~1u) ^ ~firstLeadingBit(u_input.e.x)));
    return Struct_2(Struct_1(~43902u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.x, arg_1, arg_1, -1000f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.x, 420f, var_3.a.x, 1264f)))), 0i), var_1.x, var_3.b, abs(func_3(any(vec4<bool>(false, false, var_1.x, var_1.x)) | true)));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: Struct_2) -> vec3<f32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(1422f, arg_1.a.b.x, arg_1.a.b.x), vec3<f32>(1467f, arg_2.x, 262f))))))), arg_3.a, firstLeadingBit(1u));
    var var_1 = ~firstTrailingBit(u_input.e);
    var_1 = select(~(~(~vec3<u32>(1u, arg_3.c.a, 4294967295u))), u_input.e, all(vec3<bool>(any(vec4<bool>(true, true, arg_1.b, arg_3.b)), true, false)));
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3.c.b.wxx) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2))), func_2(~(~vec4<u32>(23062u, u_input.e.x, 4294967295u, var_0.c)), arg_2.x).a, ~(~firstTrailingBit(countOneBits(arg_1.a.a))));
    var var_2 = reverseBits(213u);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1804f, _wgslsmith_f_op_f32(abs(-2459f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.x))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.x, -248f, _wgslsmith_f_op_f32(abs(arg_2.x))), _wgslsmith_f_op_vec3_f32(-arg_2), false)) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -554f)), var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.b.x + arg_2.x) - _wgslsmith_f_op_f32(round(var_0.a.x))))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<i32>) -> i32 {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-1540f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-244f)))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -334f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -371f), _wgslsmith_f_op_f32(round(3366f))))), _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -544f))), func_2(vec4<u32>(98553u, 1u << (arg_0.x % 32u), arg_0.x, arg_0.x), 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-839f, -613f, 1921f) - vec3<f32>(997f, 1279f, -1000f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-438f, -889f, 636f)))), Struct_2(Struct_1(70880u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-144f, -936f, 733f, 1144f)), 33300i), true, func_2(vec4<u32>(u_input.e.x, 47444u, arg_0.x, u_input.e.x), _wgslsmith_div_f32(-2619f, 866f)).c, 0u))));
    var var_1 = Struct_2(Struct_1(~0u, vec4<f32>(-976f, _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -2423f))), -1029f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1038f)), _wgslsmith_f_op_f32(815f + var_0.x))), -2147483647i), true, Struct_1(_wgslsmith_mod_u32(u_input.e.x, ~4294967295u) ^ ~arg_0.x, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(-var_0.x), 109f))), select(abs(_wgslsmith_div_i32(5171i, -37749i)), firstTrailingBit(-u_input.c), select(true, true, true) & func_2(vec4<u32>(4294967295u, 14981u, 71951u, 26183u), var_0.x).b)), _wgslsmith_sub_u32(u_input.e.x, _wgslsmith_div_u32(~1u, _wgslsmith_mult_u32(~23153u, _wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(arg_0.x, 4294967295u, arg_0.x))))));
    let var_2 = ~var_1.d;
    var_0 = _wgslsmith_f_op_vec3_f32(var_1.a.b.xzz + vec3<f32>(var_1.c.b.x, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-608f, _wgslsmith_f_op_f32(f32(-1f) * -176f)) - var_1.c.b.x)));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-731f, 185f, var_1.b)) + var_1.c.b.x) * _wgslsmith_f_op_f32(f32(-1f) * -271f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 355f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1031f)), _wgslsmith_f_op_f32(min(-1859f, var_0.x)))) * -1000f), var_1.a.b.x);
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(-1i) * -(max(vec4<i32>(u_input.c, -1i, 1581i, u_input.a.x) ^ u_input.a, u_input.a) << (vec4<u32>(u_input.e.x, firstTrailingBit(4294967295u), firstLeadingBit(u_input.d), ~53506u) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(func_1(vec3<u32>(_wgslsmith_mult_u32(4294967295u, u_input.d), min(0u, u_input.d), u_input.d), min(min(vec4<i32>(u_input.b, u_input.c, 2147483647i, var_0.x), vec4<i32>(var_0.x, 17552i, 9885i, 38107i)), u_input.a)), firstTrailingBit(~_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(var_0.x, u_input.b, u_input.c, u_input.c)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(821f, -828f))) + 448f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(737f, -122f) - _wgslsmith_f_op_f32(select(-369f, 1271f, true))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -369f)))), abs(~u_input.b));
}

