struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: u32,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_1, 9>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: i32, arg_1: u32) -> Struct_2 {
    var var_0 = global1[_wgslsmith_index_u32(~u_input.b, 9u)];
    var var_1 = -163f;
    let var_2 = Struct_3(vec2<i32>(-abs(arg_0), arg_0), Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.b.x + var_0.e.x))) < _wgslsmith_div_f32(var_0.e.x, _wgslsmith_f_op_f32(var_0.b.x * -771f)), _wgslsmith_div_vec2_f32(var_0.b.xx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.e.zy)))), Struct_2(var_0.a, vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_0.b.x, 188f)))), 183f)), var_0.d);
    var var_3 = arg_0 == var_2.d;
    let var_4 = global1[_wgslsmith_index_u32(44926u, 9u)];
    return Struct_2(true, vec2<f32>(362f, 1477f));
}

fn func_3(arg_0: i32, arg_1: f32) -> f32 {
    global1 = array<Struct_1, 9>();
    var var_0 = global1[_wgslsmith_index_u32(66112u, 9u)];
    var var_1 = vec4<u32>(1u, _wgslsmith_div_u32(6190u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.c, 32108u), _wgslsmith_clamp_vec3_u32(vec3<u32>(30139u, u_input.c.x, 0u), u_input.c, u_input.c))) ^ reverseBits(max(~75096u, ~14713u)), 53629u, ~_wgslsmith_mod_u32(~var_0.c, ~var_0.c));
    var_1 = ~(~vec4<u32>(~1u, 79630u, firstLeadingBit(5203u), countOneBits(0u)));
    var var_2 = vec3<bool>(1i <= (_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, var_0.d), vec2<i32>(arg_0, arg_0)), -vec2<i32>(-81900i, -36906i)) | _wgslsmith_clamp_i32(reverseBits(arg_0), var_0.d, -1i)), var_0.a, any(!(!(!vec2<bool>(var_0.a, false)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1))));
}

fn func_1(arg_0: f32, arg_1: i32) -> Struct_2 {
    let var_0 = func_2(~arg_1, 1u);
    var var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(-37955i >> (u_input.a % 32u), arg_1), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(abs(firstLeadingBit(vec2<i32>(arg_1, arg_1))), -vec2<i32>(0i, -8363i) | min(vec2<i32>(-407i, arg_1), vec2<i32>(23750i, -1i))), firstLeadingBit(select(-vec2<i32>(arg_1, 21043i), vec2<i32>(arg_1, arg_1), !vec2<bool>(var_0.a, true))), min(vec2<i32>(arg_1, 54157i), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_1, arg_1), vec2<i32>(arg_1, arg_1))) << (max(~vec2<u32>(59974u, 4294967295u), u_input.c.xy) % vec2<u32>(32u))));
    var var_2 = Struct_3(vec2<i32>(1i, -9112i), func_2(_wgslsmith_mod_i32(select(2147483647i, 1i, !var_0.a), _wgslsmith_sub_i32(var_1.x << (u_input.c.x % 32u), 0i)), 21961u >> (u_input.a % 32u)), Struct_2(false, vec2<f32>(491f, _wgslsmith_f_op_f32(func_3(_wgslsmith_div_i32(var_1.x, 0i), -399f)))), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(firstLeadingBit(~vec2<i32>(-15954i, var_1.x)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_1, var_1.x, var_1.x), vec4<i32>(arg_1, 2147483647i, var_1.x, var_1.x)), -22109i ^ var_1.x)), arg_1));
    var var_3 = _wgslsmith_add_vec2_i32(~abs(-var_2.a), _wgslsmith_mod_vec2_i32(select(var_2.a, vec2<i32>(12699i, var_2.a.x) ^ vec2<i32>(var_1.x, arg_1), vec2<bool>(var_0.a, var_2.c.a)) ^ -(var_2.a << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), (var_2.a >> (~u_input.c.xy % vec2<u32>(32u))) & reverseBits(var_2.a << (u_input.c.yz % vec2<u32>(32u)))));
    var_2 = Struct_3(_wgslsmith_sub_vec2_i32(vec2<i32>(19716i, min(2147483647i, arg_1)), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(arg_1, arg_1), vec2<i32>(var_1.x, 26120i)), vec2<i32>(var_1.x, -1337i))) ^ vec2<i32>(1i, var_3.x), Struct_2(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b))), var_0, -(~firstTrailingBit(var_3.x)) & _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-5877i, var_3.x, -21744i), vec3<i32>(arg_1, var_1.x, 22769i)) | ~0i, countOneBits(-8188i)));
    return func_2(var_2.d, countOneBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.a, 5557u, 53342u), vec4<u32>(0u, 1u, u_input.c.x, u_input.a)) ^ min(abs(u_input.a), ~u_input.b)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> Struct_2 {
    global0 = !(!(_wgslsmith_dot_vec3_i32(-vec3<i32>(arg_0.d, 15820i, 23084i), vec3<i32>(arg_0.a.x, arg_0.a.x, -1i)) == arg_0.d));
    let var_0 = vec4<u32>(_wgslsmith_mult_u32(u_input.a, 1u), u_input.c.x, abs(0u), u_input.a);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_1.b, vec2<f32>(731f, arg_0.b.b.x), arg_0.d != -2147483647i)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-463f, -1539f))))));
    global0 = arg_0.a.x < arg_0.a.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(func_2(reverseBits(firstLeadingBit(arg_0.a.x)), abs(u_input.b)).b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.b.x, -774f)))))) + vec2<f32>(525f, var_1.x));
    return func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(314f, 1000f)))), -272f, false)), 2147483647i);
}

fn func_5(arg_0: Struct_3) -> StorageBuffer {
    let var_0 = 19414u;
    let var_1 = Struct_2(false && !(!arg_0.b.a), arg_0.c.b);
    var var_2 = global1[_wgslsmith_index_u32(~var_0, 9u)];
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(506f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_1.b.x)), 1f)) * _wgslsmith_f_op_f32(544f - _wgslsmith_f_op_f32(min(-926f, var_1.b.x))))));
    global0 = arg_0.c.a;
    return StorageBuffer(~vec4<u32>(~var_2.c, 1u, var_2.c, var_2.c));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(Struct_3(firstLeadingBit(_wgslsmith_add_vec2_i32(select(vec2<i32>(2942i, 2147483647i), vec2<i32>(-33909i, -34565i), false), vec2<i32>(20608i, 21740i))), func_4(Struct_3(~vec2<i32>(31132i, -2147483647i), func_1(-601f, -1i), Struct_2(true, vec2<f32>(1000f, 1126f)), 1i), Struct_2(func_1(-1325f, -5156i).a, _wgslsmith_f_op_vec2_f32(vec2<f32>(-682f, -1000f) + vec2<f32>(-481f, 318f)))), func_4(Struct_3(firstLeadingBit(vec2<i32>(-2147483647i, -1i)), func_4(Struct_3(vec2<i32>(0i, -2147483647i), Struct_2(true, vec2<f32>(1458f, -1793f)), Struct_2(true, vec2<f32>(-243f, -744f)), -1i), Struct_2(false, vec2<f32>(1426f, 255f))), func_1(1411f, 27441i), max(-12772i, 0i)), Struct_2(any(vec2<bool>(true, false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-595f, -1335f)))), i32(-1i) * -7706i));
}

