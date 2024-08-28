struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 28> = array<vec3<u32>, 28>(vec3<u32>(48393u, 32458u, 0u), vec3<u32>(1u, 37628u, 4294967295u), vec3<u32>(4294967295u, 149u, 12572u), vec3<u32>(13142u, 4294967295u, 1u), vec3<u32>(1u, 0u, 19379u), vec3<u32>(4294967295u, 14279u, 48154u), vec3<u32>(7243u, 42262u, 9091u), vec3<u32>(4637u, 86754u, 1u), vec3<u32>(31657u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 3731u, 1u), vec3<u32>(0u, 62748u, 0u), vec3<u32>(1u, 5916u, 53719u), vec3<u32>(20339u, 49714u, 1u), vec3<u32>(1u, 1u, 39001u), vec3<u32>(63475u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 28754u, 4294967295u), vec3<u32>(4294967295u, 93673u, 1u), vec3<u32>(10489u, 29341u, 1230u), vec3<u32>(45917u, 19394u, 50836u), vec3<u32>(4294967295u, 44937u, 101083u), vec3<u32>(90798u, 0u, 63198u), vec3<u32>(4294967295u, 35132u, 41424u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(85422u, 45643u, 4294967295u), vec3<u32>(11876u, 0u, 64062u), vec3<u32>(1u, 0u, 56551u), vec3<u32>(75183u, 0u, 4294967295u), vec3<u32>(1u, 0u, 4294967295u));

var<private> global1: f32;

var<private> global2: Struct_2;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(448f, 1005f)));
    let var_1 = Struct_3(-1055f, true);
    global0 = array<vec3<u32>, 28>();
    let var_2 = u_input.d.yx << (vec2<u32>(60406u, min(_wgslsmith_clamp_u32(60105u, 0u, u_input.a), 21814u) << (~max(u_input.a, u_input.d.x) % 32u)) % vec2<u32>(32u));
    let var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1857f, global2.a.a, 549f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-634f, -381f, -678f)))), any(!vec3<bool>(false, arg_0.x, true)))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a, global2.a.a, -1910f), vec3<f32>(-116f, var_1.a, 1095f), vec3<bool>(arg_0.x, arg_0.x, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -500f, -891f))), vec3<f32>(_wgslsmith_f_op_f32(-1351f + 1000f), _wgslsmith_f_op_f32(floor(1128f)), _wgslsmith_f_op_f32(global2.a.a - var_1.a)), false))))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2253f + -1752f), var_1.a));
}

fn func_2(arg_0: i32) -> vec3<f32> {
    let var_0 = vec3<bool>(u_input.b.x < (reverseBits(arg_0) >> (4294967295u % 32u)), true, true);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.a * -2798f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1561f, global2.a.a)) + _wgslsmith_f_op_f32(571f - -126f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.a.a))))), -995f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.a)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -349f)))))));
    let var_2 = global2.a;
    let var_3 = var_2.b;
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(554f, -327f, global2.a.a, 2522f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1006f, -1398f, 1258f, var_2.a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-520f, -2289f, global2.a.a, var_2.a) - vec4<f32>(236f, 773f, -1144f, -129f)))))));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_0.xy, vec3<i32>(~arg_0, arg_0, arg_0 | 0i)))), -989f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.a.a))));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: vec3<f32>, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(ceil(1f))), _wgslsmith_f_op_f32(-arg_1)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-772f + _wgslsmith_div_f32(global2.a.a, global2.a.a)))));
    var var_1 = Struct_2(Struct_1(arg_1, arg_3.x));
    var var_2 = _wgslsmith_mult_u32(u_input.d.x, _wgslsmith_div_u32(u_input.c, ~(~u_input.e) | (u_input.d.x >> (4294967295u % 32u))));
    var var_3 = 9328u;
    var_1 = Struct_2(global2.a);
    return Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + global2.a.a) - _wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -158f), !(!(!var_0)))), _wgslsmith_add_i32(abs(u_input.b.x), arg_3.x));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<i32>) -> Struct_2 {
    global1 = -1361f;
    var var_0 = func_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.a) * 120f)), true), 1609f, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_2(~u_input.b.x)))), -(~(~u_input.b)));
    let var_1 = global2.a.a;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_2(-2147483647i)).x, _wgslsmith_f_op_vec3_f32(func_2(u_input.b.x)).x)), !(abs(~u_input.d.x) < 41262u));
    let var_3 = Struct_2(Struct_1(var_0.a, -18031i));
    return Struct_2(func_4(Struct_3(_wgslsmith_f_op_f32(sign(var_3.a.a)), all(select(vec2<bool>(true, true), vec2<bool>(var_2.b, var_2.b), vec2<bool>(true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1959f - -412f) * 590f)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(161f)) + _wgslsmith_f_op_f32(var_2.a - -113f)), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1451f) * _wgslsmith_f_op_f32(max(-1004f, var_2.a)))), vec4<i32>(global2.a.b, -2147483647i, _wgslsmith_mod_i32(reverseBits(var_0.b), global2.a.b), var_0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(max(reverseBits(~vec4<u32>(u_input.d.x, u_input.c, 74341u, 79318u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.e, u_input.a, 3576u, u_input.e), vec4<u32>(34070u, u_input.e, 0u, u_input.e) ^ vec4<u32>(1u, 4294967295u, 67167u, 0u)), ~vec4<u32>(u_input.d.x, u_input.a, 15461u, u_input.e), vec4<u32>(u_input.c, u_input.d.x, countOneBits(0u), 16335u))), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, -1i), vec2<i32>(global2.a.b, ~global2.a.b)) << (~(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 45820u), u_input.d.xy) << (u_input.d.yy % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_0 = func_1(_wgslsmith_mult_vec4_u32(~_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, u_input.e, u_input.e, u_input.c), vec4<u32>(u_input.e, u_input.d.x, u_input.d.x, 4294967295u)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 90804u), vec2<u32>(u_input.c, u_input.d.x)) & ~u_input.e, 1u | (u_input.d.x | 6917u), 0u, ~u_input.d.x)), u_input.b.xw);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.a.a + _wgslsmith_f_op_f32(exp2(var_0.a.a))), var_0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(458f, var_0.a.a)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-544f * _wgslsmith_f_op_f32(f32(-1f) * -1199f)), global2.a.a)));
    var var_2 = Struct_2(func_1(~(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 64594u, 14561u), vec4<u32>(32603u, u_input.d.x, u_input.e, u_input.d.x)) & ~vec4<u32>(1u, 4294967295u, 4294967295u, u_input.d.x)), vec2<i32>(~1i, firstLeadingBit(1i))).a);
    let var_3 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(0u, 1u) >> (~reverseBits(_wgslsmith_mult_u32(u_input.c, u_input.d.x)) % 32u));
}

