struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4>;

var<private> global1: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: f32, arg_3: vec2<bool>) -> bool {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) * -793f);
    let var_0 = u_input.c;
    var var_1 = ~0u;
    global0 = array<Struct_2, 4>();
    let var_2 = 4294967295u;
    return all(arg_0.a.a.wwy);
}

fn func_3(arg_0: Struct_3) -> f32 {
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(631f))));
    global0 = array<Struct_2, 4>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.b, arg_0.a.c.x, 904f, 600f)))))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(arg_0.d.d)), arg_0.b.x)));
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(36443i, _wgslsmith_clamp_i32(40428i, arg_0.e.x, u_input.a.x)), _wgslsmith_clamp_i32(arg_0.e.x, -2147483647i, -1i)), 0i), 0i & (-(2147483647i | arg_0.e.x) << (max(106863u, 1u) % 32u)));
    let var_2 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1499f - -1542f), _wgslsmith_f_op_f32(f32(-1f) * -2183f)))));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>) -> vec4<bool> {
    global0 = array<Struct_2, 4>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.d.c) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-arg_0.a.c)))))), _wgslsmith_f_op_f32(-arg_0.d.d));
    let var_1 = select(abs(92545u), 31946u, false);
    var var_2 = arg_0.d;
    let var_3 = ~firstLeadingBit(~(~vec2<u32>(var_1, var_1)));
    return vec4<bool>(all(var_2.a.yw) != true, true, abs(4315u) > var_1, var_2.a.x);
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    return func_4(Struct_3(arg_0, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(arg_0.d * -452f), 310f))), all(!(!vec4<bool>(arg_0.a.x, true, true, false))), Struct_1(!(!arg_0.a), -428f, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-arg_0.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(arg_0.a, arg_0.c.x, arg_0.c, arg_0.b), arg_0.c.yw, false, Struct_1(vec4<bool>(false, true, true, false), arg_0.b, arg_0.c, 502f), vec4<i32>(1i, u_input.a.x, 71162i, -1i)))) - _wgslsmith_f_op_f32(-arg_0.c.x))), vec4<i32>(-u_input.b, _wgslsmith_div_i32(~2147483647i, 1i << (1u % 32u)), _wgslsmith_add_i32(-33370i, _wgslsmith_add_i32(u_input.a.x, 33088i)), _wgslsmith_sub_i32(u_input.c, 1i))), vec3<i32>(~firstLeadingBit(u_input.c) >> ((select(30474u, 29355u, true) | 1u) % 32u), 31793i, firstTrailingBit(u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -773f), -1055f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-333f)) * -179f))));
    var var_0 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, true), true)), all(vec4<bool>(true, true, true, true)), false, false), !all(vec4<bool>(true, true, true, true))), select(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, true, true), true), vec4<bool>(select(func_1(Struct_3(Struct_1(vec4<bool>(true, true, true, true), -547f, vec4<f32>(366f, 224f, 985f, -196f), -1000f), vec2<f32>(-1066f, 105f), true, Struct_1(vec4<bool>(true, true, false, true), 549f, vec4<f32>(1000f, 1740f, 1155f, -461f), 682f), vec4<i32>(u_input.a.x, 2147483647i, u_input.b, u_input.b)), true, 157f, vec2<bool>(false, false)), false, true), true, true, select(any(vec2<bool>(false, false)), all(vec3<bool>(true, true, true)), false)), !func_2(Struct_1(vec4<bool>(false, false, false, true), -1000f, vec4<f32>(-141f, -664f, 1200f, -1339f), 567f))), all(vec2<bool>(true, true)));
    global0 = array<Struct_2, 4>();
    let var_1 = Struct_3(Struct_1(vec4<bool>(true, func_1(Struct_3(Struct_1(vec4<bool>(false, var_0.x, var_0.x, false), 133f, vec4<f32>(535f, -498f, 1000f, 237f), 555f), vec2<f32>(-183f, 372f), var_0.x, Struct_1(vec4<bool>(true, var_0.x, var_0.x, var_0.x), 1236f, vec4<f32>(136f, -400f, -1000f, -3122f), 237f), vec4<i32>(u_input.c, -16276i, u_input.b, 14467i)), false | var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), vec2<bool>(true, true)), !var_0.x, u_input.b != reverseBits(-2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, 154f))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1680f * -1334f))), -390f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1599f)), _wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(vec4<bool>(var_0.x, false, var_0.x, var_0.x), -1015f, vec4<f32>(-457f, 1403f, 266f, -893f), -1253f), vec2<f32>(-529f, -462f), true, Struct_1(vec4<bool>(true, var_0.x, true, true), -471f, vec4<f32>(2371f, 825f, 1150f, 1813f), -370f), vec4<i32>(-2147483647i, 2147483647i, 1i, u_input.c)))), false)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-786f, _wgslsmith_f_op_f32(f32(-1f) * -1558f)) + _wgslsmith_div_f32(-426f, -164f))), vec2<f32>(1f, 1f), func_4(Struct_3(Struct_1(func_4(Struct_3(Struct_1(vec4<bool>(true, true, true, var_0.x), 348f, vec4<f32>(595f, 824f, -1076f, -701f), 1462f), vec2<f32>(399f, 1895f), var_0.x, Struct_1(vec4<bool>(false, true, false, var_0.x), -2238f, vec4<f32>(282f, -470f, -309f, -879f), -1000f), vec4<i32>(17015i, 1i, u_input.c, 1i)), vec3<i32>(-2147483647i, 26842i, -38231i)), -1392f, _wgslsmith_div_vec4_f32(vec4<f32>(388f, -1110f, 1232f, 614f), vec4<f32>(-330f, -761f, -1379f, 497f)), _wgslsmith_f_op_f32(sign(-949f))), vec2<f32>(_wgslsmith_f_op_f32(-1000f - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -423f)), var_0.x && (false | var_0.x), Struct_1(vec4<bool>(false, true, var_0.x, var_0.x), _wgslsmith_f_op_f32(574f - 567f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1184f, 262f, 847f, 896f)), _wgslsmith_f_op_f32(f32(-1f) * -655f)), reverseBits(abs(vec4<i32>(u_input.b, 1i, u_input.c, u_input.b)))), select(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(14473i, u_input.c, u_input.c), vec3<i32>(-46609i, 1i, u_input.c)), vec3<i32>(u_input.a.x, 50906i, u_input.a.x)), ~vec3<i32>(u_input.a.x, u_input.c, u_input.c), all(select(var_0.xwy, var_0.wwz, vec3<bool>(var_0.x, var_0.x, false))))).x, Struct_1(func_2(Struct_1(!vec4<bool>(var_0.x, true, var_0.x, var_0.x), _wgslsmith_f_op_f32(select(-315f, -1416f, true)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(804f, -792f, -1000f, 270f))), -1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-110f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(156f)), -235f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-505f)), _wgslsmith_div_f32(-2198f, 331f), _wgslsmith_f_op_f32(999f * 643f), -626f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(432f)), -315f)))), _wgslsmith_mod_vec4_i32(~(-vec4<i32>(u_input.b, u_input.a.x, 1i, u_input.b)) | -max(vec4<i32>(u_input.c, u_input.b, 907i, -14288i), vec4<i32>(u_input.c, u_input.b, -5034i, -2147483647i)), _wgslsmith_add_vec4_i32(max(vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b), vec4<i32>(u_input.b, u_input.c, 2147483647i, -74735i)) ^ vec4<i32>(u_input.c, u_input.a.x, u_input.b, -35667i), abs(vec4<i32>(2147483647i, 0i, u_input.c, u_input.b)))));
    global0 = array<Struct_2, 4>();
    var var_2 = Struct_1(var_1.d.a, 2211f, vec4<f32>(_wgslsmith_f_op_f32(abs(-572f)), _wgslsmith_f_op_f32(sign(var_1.b.x)), _wgslsmith_f_op_f32(ceil(943f)), _wgslsmith_f_op_f32(max(1319f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.d.b + var_1.d.d), var_1.a.b))))), _wgslsmith_div_f32(-316f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.b.x))) - 856f)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(select(u_input.b, _wgslsmith_mod_i32(2147483647i, u_input.a.x), select(false, true, false)), u_input.b, select(~u_input.b, var_1.e.x, var_1.a.a.x), var_1.e.x));
}

