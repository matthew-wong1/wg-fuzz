struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<u32>, 1> = array<vec4<u32>, 1>(vec4<u32>(4294967295u, 6794u, 0u, 0u));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = select(true, any(vec4<bool>(false, true, false && (arg_0.c > 1470f), true)), !(arg_0.a.x != 0i));
    global0 = u_input.c;
    var_0 = !(_wgslsmith_sub_i32(countOneBits(1i), _wgslsmith_clamp_i32(-2147483647i, -arg_0.a.x, _wgslsmith_add_i32(arg_0.a.x, 0i))) <= -(_wgslsmith_mult_i32(-14578i, arg_0.a.x) ^ -arg_0.a.x));
    global1 = array<vec4<u32>, 1>();
    global1 = array<vec4<u32>, 1>();
    return arg_0.b.x;
}

fn func_2() -> u32 {
    let var_0 = Struct_4(Struct_1(-_wgslsmith_div_vec3_i32(vec3<i32>(60596i, -1i, 1i) >> (vec3<u32>(u_input.a, u_input.c, u_input.b.x) % vec3<u32>(32u)), vec3<i32>(-2147483647i, -12907i, 2147483647i)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-202f, 968f, -603f) - vec3<f32>(529f, -221f, -377f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-163f, 906f, -792f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1711f, -1330f, 657f), vec3<f32>(-796f, 340f, 716f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec3<i32>(1i, 2147483647i, -1i), vec3<f32>(-341f, -501f, 2099f), -636f))))))));
    let var_1 = Struct_3(Struct_2(u_input.b), vec3<u32>(select(0u, _wgslsmith_sub_u32(67871u, 8000u), any(vec4<bool>(false, true, true, true))), u_input.a, _wgslsmith_dot_vec3_u32(u_input.b, select(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.b.x, u_input.b.x), u_input.b), vec3<u32>(0u, u_input.b.x, u_input.a) | u_input.b, true))), Struct_2(_wgslsmith_sub_vec3_u32(~(~u_input.b), ~select(vec3<u32>(u_input.b.x, u_input.c, u_input.d), u_input.b, vec3<bool>(false, false, true)))));
    let var_2 = var_1.a;
    global1 = array<vec4<u32>, 1>();
    var var_3 = var_0.a.a;
    return var_1.b.x;
}

fn func_1(arg_0: i32) -> bool {
    var var_0 = _wgslsmith_add_u32(abs(~u_input.d), func_2() << (~31474u % 32u));
    let var_1 = vec2<i32>(-_wgslsmith_div_i32(arg_0, ~(-30536i)), (i32(-1i) * -2147483647i) ^ arg_0) >> (u_input.b.zx % vec2<u32>(32u));
    let var_2 = Struct_1(min(vec3<i32>(arg_0, -1i >> (u_input.b.x % 32u), _wgslsmith_add_i32(min(var_1.x, 0i), ~(-14716i))), min(reverseBits(vec3<i32>(arg_0, arg_0, 21906i)), min(vec3<i32>(arg_0, 0i, 38945i), vec3<i32>(arg_0, var_1.x, 2147483647i))) | _wgslsmith_add_vec3_i32(-vec3<i32>(var_1.x, var_1.x, -1i), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -1i, var_1.x), vec3<i32>(var_1.x, arg_0, -4513i)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(178f - 859f) * -877f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-969f, 1800f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1219f), _wgslsmith_f_op_f32(max(-831f, -1697f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-690f, _wgslsmith_f_op_f32(f32(-1f) * -899f))) + _wgslsmith_f_op_f32(func_3(Struct_1(vec3<i32>(8240i, 65486i, var_1.x), vec3<f32>(-597f, -1050f, 1195f), 357f))))), _wgslsmith_f_op_f32(step(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -105f) * 743f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-572f, -2170f)))))));
    var var_3 = _wgslsmith_mult_vec2_i32(firstLeadingBit(_wgslsmith_mult_vec2_i32(-var_2.a.zx, countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, var_1.x), var_2.a.yx)))), select(vec2<i32>(arg_0 & arg_0, abs(var_1.x)), -firstLeadingBit(var_1), var_2.a.x <= -1i) ^ var_1);
    var var_4 = _wgslsmith_div_f32(var_2.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b.x, var_2.b.x) - _wgslsmith_f_op_f32(round(-1000f))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !all(vec4<bool>(func_1(964i), true, false, true)) | true;
    global1 = array<vec4<u32>, 1>();
    let var_1 = vec4<f32>(_wgslsmith_div_f32(263f, 1681f), _wgslsmith_f_op_f32(f32(-1f) * -482f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1000f, -1281f)))))), _wgslsmith_f_op_f32(-220f - -566f));
    global1 = array<vec4<u32>, 1>();
    var_0 = !any(select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true), true));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -864f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_1.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-932f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(896f, 130f) + var_1.x)), 0u >= firstLeadingBit(u_input.c))));
    global1 = array<vec4<u32>, 1>();
    let var_3 = Struct_4(Struct_1(-vec3<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-26558i, 0i), vec2<i32>(22367i, 39430i)), 1i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1171f, _wgslsmith_f_op_f32(sign(-723f)), _wgslsmith_f_op_f32(-1386f + -656f))), var_1.x));
    let var_4 = select(select(vec4<bool>(all(vec4<bool>(false, true, false, true)), select(false, false, false) || (2275f >= var_1.x), true, false), vec4<bool>(true, true, true, true), !(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), false))), !vec4<bool>(!(u_input.c >= 106976u), func_1(max(-368i, 2147483647i)), _wgslsmith_f_op_f32(var_1.x - 1000f) <= -1308f, false | (1u > u_input.a)), vec4<bool>(_wgslsmith_f_op_f32(floor(-838f)) > _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(step(var_3.a.b.x, -952f))), true, false | ((var_2.x < var_1.x) && all(vec4<bool>(true, true, true, false))), !any(vec3<bool>(false, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1000f * var_2.x), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(var_3.a.a.xz, -var_3.a.a.zx), vec2<i32>(_wgslsmith_sub_i32(-1i, var_3.a.a.x), _wgslsmith_dot_vec2_i32(var_3.a.a.zy, var_3.a.a.yy))), ~max(_wgslsmith_sub_vec2_i32(var_3.a.a.zz, var_3.a.a.zz), var_3.a.a.yx)), 1u, 218f);
}

