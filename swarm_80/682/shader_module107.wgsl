struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: u32,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = Struct_4(Struct_1(arg_0.d.wz, vec2<i32>(min(_wgslsmith_div_i32(1i, -7312i), -25833i), countOneBits(u_input.a)), vec4<f32>(_wgslsmith_f_op_f32(trunc(706f)), _wgslsmith_f_op_f32(1142f + 613f), _wgslsmith_f_op_f32(select(arg_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -968f), all(vec3<bool>(arg_0.a, arg_0.a, false)))), -416f), vec3<i32>(u_input.d.x, _wgslsmith_div_i32(2147483647i, 2147483647i), max(u_input.a, 1i))), arg_0.d.wx);
    let var_1 = select(i32(-1i) * -_wgslsmith_div_i32(min(arg_0.c.b.x, var_0.a.d.x), var_0.a.d.x), ~(~_wgslsmith_mod_i32(u_input.d.x, ~var_0.a.d.x)), all(vec2<bool>(true, true)));
    var var_2 = abs(_wgslsmith_add_vec4_i32(-(vec4<i32>(-1327i, var_1, 37431i, 0i) | vec4<i32>(arg_0.c.b.x, -2147483647i, 4474i, 51444i)), _wgslsmith_mod_vec4_i32(~vec4<i32>(arg_0.c.b.x, u_input.c, 28887i, 99732i), countOneBits(vec4<i32>(u_input.c, u_input.d.x, 62979i, 2147483647i)))) ^ vec4<i32>(~var_0.a.b.x, -17328i, min(max(arg_0.c.b.x, -1i), -18474i), 1i));
    var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.c.b.x, -49696i, ((-44737i & var_0.a.d.x) ^ max(u_input.d.x, var_0.a.d.x)) | var_0.a.d.x, ~(~_wgslsmith_mult_i32(var_1, arg_0.c.b.x))), ~select(-countOneBits(vec4<i32>(var_2.x, var_2.x, -6607i, 20674i)), ~firstLeadingBit(vec4<i32>(var_0.a.d.x, 0i, 2147483647i, 46491i)), arg_0.a), vec4<i32>(_wgslsmith_sub_i32(-_wgslsmith_add_i32(1i, u_input.a), -(var_0.a.d.x >> (1399u % 32u))), abs(~(-var_0.a.b.x)), -15983i, 0i));
    let var_3 = false;
    return _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.x, u_input.b), u_input.e.yz);
}

fn func_2(arg_0: Struct_4, arg_1: vec4<i32>) -> f32 {
    let var_0 = -countOneBits(~(arg_1.x << (u_input.b % 32u)) ^ (arg_1.x << (0u % 32u)));
    let var_1 = Struct_3(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1u, arg_0.b.x) ^ ~vec4<u32>(arg_0.b.x, 0u, u_input.b, arg_0.b.x), vec4<u32>(0u, arg_0.b.x, func_3(Struct_2(true, vec4<f32>(-120f, arg_0.a.c.x, 146f, arg_0.a.c.x), arg_0.a, vec4<u32>(0u, u_input.e.x, 4294967295u, 47600u))), 4294967295u)) ^ (arg_0.b.x | ~(~9601u)), u_input.e.x, Struct_1(vec2<u32>(49182u, ~0u), arg_1.wy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0.a.c, vec4<f32>(204f, arg_0.a.c.x, arg_0.a.c.x, arg_0.a.c.x)))), vec3<i32>(arg_1.x, countOneBits(-8687i), -arg_0.a.b.x) | ~(-arg_1.zzx)), select(vec2<bool>(true, true), !(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))), !(arg_0.a.d.x < ~arg_0.a.d.x)));
    let var_2 = var_1.e.x;
    var var_3 = Struct_2(true, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.d.c.x, -1000f, true)) - 1000f)), _wgslsmith_f_op_f32(trunc(arg_0.a.c.x)), _wgslsmith_f_op_f32(step(-1494f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.a.c.x, arg_0.a.c.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(409f, 1f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_0.a.c.x)))))), Struct_1(vec2<u32>(u_input.b | 89882u, 66638u ^ _wgslsmith_add_u32(0u, arg_0.a.a.x)), vec2<i32>(var_0, ~_wgslsmith_dot_vec4_i32(arg_1, arg_1)), vec4<f32>(-851f, -455f, -1378f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.a.c.x, arg_0.a.c.x)))), min(arg_0.a.d | _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, arg_1.x, arg_0.a.b.x), arg_1.yzz), -vec3<i32>(var_0, var_0, 0i))), ~(_wgslsmith_div_vec4_u32(vec4<u32>(20791u, u_input.b, u_input.b, arg_0.a.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_1.c, 40240u, arg_0.b.x), vec4<u32>(0u, var_1.b, arg_0.a.a.x, var_1.d.a.x))) ^ (vec4<u32>(arg_0.b.x, 4294967295u, u_input.b, 43207u) & vec4<u32>(u_input.b, 50342u, 1u, var_1.b))));
    let var_4 = _wgslsmith_f_op_f32(select(arg_0.a.c.x, _wgslsmith_f_op_f32(488f + _wgslsmith_f_op_f32(-1f)), true && !var_1.e.x));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec4<bool>) -> Struct_4 {
    var var_0 = Struct_2(arg_2.x, vec4<f32>(1000f, _wgslsmith_f_op_f32(round(-769f)), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_4(Struct_1(vec2<u32>(28489u, u_input.e.x), u_input.d, vec4<f32>(278f, -948f, 385f, -695f), vec3<i32>(u_input.d.x, 0i, 0i)), u_input.e.yx), vec4<i32>(u_input.a, 1i, -21978i, arg_0))), _wgslsmith_f_op_f32(min(-1911f, -1200f))))), Struct_1(~u_input.e.zz, abs(u_input.d) ^ u_input.d, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1775f * -631f), _wgslsmith_f_op_f32(597f - -921f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1581f + 798f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-467f, 407f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(147f)), 1000f)), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, arg_0), u_input.c), select(-44939i, arg_0, true) ^ arg_0, reverseBits(arg_0) & arg_0)), vec4<u32>(~reverseBits(abs(0u)), _wgslsmith_add_u32(~_wgslsmith_div_u32(u_input.b, u_input.e.x), u_input.b), u_input.e.x, ~u_input.e.x));
    var var_1 = Struct_4(Struct_1(vec2<u32>(~(~u_input.e.x), ~_wgslsmith_div_u32(var_0.c.a.x, 0u)), -vec2<i32>(u_input.c, -10563i), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(492f, 1074f, var_0.c.c.x, var_0.c.c.x) - var_0.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.c.x, -746f, var_0.b.x, -551f) - vec4<f32>(-1355f, 1253f, 210f, var_0.c.c.x))))), _wgslsmith_mult_vec3_i32(~(~var_0.c.d), ~abs(var_0.c.d))), vec2<u32>(112532u, _wgslsmith_add_u32(44127u, select(_wgslsmith_dot_vec2_u32(u_input.e.xz, vec2<u32>(var_0.c.a.x, 0u)), var_0.d.x, var_0.a))));
    var_0 = Struct_2(!var_0.a || select(all(vec2<bool>(arg_1, false)), 1i < var_0.c.d.x, !all(vec3<bool>(false, false, true))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-1572f, _wgslsmith_f_op_f32(-628f + var_1.a.c.x)), -492f), -218f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1857f, -606f) - -427f)), 953f), Struct_1(u_input.e.xy, u_input.d, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_1.a.c, vec4<f32>(-1401f, -453f, 1000f, var_1.a.c.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.x, -1060f, -456f, -175f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1569f, -215f, 582f, -1000f)), select(arg_2, vec4<bool>(true, true, false, arg_1), arg_2))))), vec3<i32>(var_0.c.b.x, ~1i, u_input.d.x)), countOneBits(vec4<u32>(1u << (u_input.e.x % 32u), ~u_input.b, abs(_wgslsmith_add_u32(4294967295u, var_0.c.a.x)), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(37056u, var_1.a.a.x, 17527u, var_1.a.a.x), vec4<u32>(var_0.c.a.x, 0u, 1u, var_0.c.a.x)), ~11773u))));
    let var_2 = arg_2.x;
    return Struct_4(Struct_1(_wgslsmith_sub_vec2_u32(var_1.a.a, _wgslsmith_mod_vec2_u32(~vec2<u32>(0u, var_0.c.a.x), var_0.c.a)), _wgslsmith_clamp_vec2_i32(var_0.c.b, vec2<i32>(u_input.a, arg_0) ^ ~vec2<i32>(var_1.a.b.x, -5670i), ~var_1.a.d.xx), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -116f), _wgslsmith_f_op_f32(440f - -1000f), var_0.b.x, _wgslsmith_f_op_f32(floor(var_1.a.c.x))) * vec4<f32>(_wgslsmith_f_op_f32(var_0.b.x * var_1.a.c.x), var_0.c.c.x, _wgslsmith_f_op_f32(var_0.c.c.x * var_0.c.c.x), _wgslsmith_f_op_f32(-1000f * var_0.c.c.x))), ~((vec3<i32>(1i, -1i, arg_0) << (var_0.d.wzz % vec3<u32>(32u))) ^ firstLeadingBit(var_1.a.d))), vec2<u32>(abs(var_0.c.a.x), ~func_3(Struct_2(arg_1, vec4<f32>(var_1.a.c.x, var_1.a.c.x, var_1.a.c.x, 1903f), Struct_1(u_input.e.zz, var_1.a.b, vec4<f32>(var_1.a.c.x, var_0.c.c.x, -402f, -1352f), var_0.c.d), var_0.d))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_div_i32(-75164i, -25695i), true, !vec4<bool>(true, any(vec3<bool>(true, false, false)) != all(vec4<bool>(true, true, true, true)), true, all(vec4<bool>(false, false, false, false))));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(2140f + _wgslsmith_f_op_f32(var_0.a.c.x - -1856f))));
    var_1 = -554f;
    var var_2 = _wgslsmith_f_op_f32(-var_0.a.c.x);
    let var_3 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(min(14069u, _wgslsmith_mod_u32(0u ^ var_0.b.x, 35861u) ^ _wgslsmith_div_u32(4294967295u, 4294967295u)), var_0.b, 2147483647i, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1276f, _wgslsmith_f_op_f32(func_2(var_0, vec4<i32>(-80343i, 45542i, 1i, 0i))), false)) * _wgslsmith_f_op_f32(sign(var_0.a.c.x))), _wgslsmith_f_op_f32(-var_3.c.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_3.c.x * -2393f), _wgslsmith_f_op_f32(trunc(599f)), _wgslsmith_f_op_f32(f32(-1f) * -1119f))) * var_0.a.c.zzx));
}

