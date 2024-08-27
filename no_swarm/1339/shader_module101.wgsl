struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec2<u32>,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: i32) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(713f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(474f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-877f, 496f))), 751f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(318f, 653f), _wgslsmith_div_f32(-1432f, 679f), _wgslsmith_f_op_f32(f32(-1f) * -736f), 1000f)), true && (any(vec3<bool>(false, false, false)) | true))));
    var_0 = vec4<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(min(var_0.x, -735f))), var_0.x) * -1421f), _wgslsmith_f_op_f32(min(2047f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))))))), -752f);
    let var_1 = var_0.yzz;
    var var_2 = vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(vec4<i32>(arg_2, -u_input.b, -6680i, _wgslsmith_mult_i32(0i, u_input.a)), ~vec4<i32>(u_input.a, 40070i, arg_2, arg_2));
    let var_3 = Struct_1(_wgslsmith_mod_vec2_i32(var_2.xw, select(var_2.yw, -u_input.d.zy >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), vec2<bool>(true, any(vec3<bool>(true, true, false))))), _wgslsmith_f_op_vec2_f32(var_0.yz - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_1.xz)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -738f))) * var_1.zx)), arg_1.x, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(591f, -538f, 1001f), var_0.xxy, false)))))));
    return true;
}

fn func_2() -> f32 {
    var var_0 = func_3(-6606i, min(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, _wgslsmith_clamp_u32(u_input.e.x, 1u, 1u), countOneBits(u_input.c.x), u_input.e.x | 25006u), vec4<u32>(u_input.c.x, 11624u, 72865u, _wgslsmith_add_u32(u_input.c.x, u_input.e.x))), ~u_input.c), -31324i);
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(736f, -651f, -1110f, 1101f), vec4<f32>(1772f, -350f, -813f, -293f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2253f, 2942f, 147f, -1000f)))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-383f, 445f, 840f, -1433f)))))), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false))))), all(vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), true | (1u > u_input.c.x), u_input.d.x >= -16398i)), -vec4<i32>(-28445i >> (u_input.c.x % 32u), 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, 1i), vec4<i32>(0i, u_input.d.x, u_input.b, u_input.a)), _wgslsmith_clamp_i32(u_input.d.x, u_input.a, -17627i)) | vec4<i32>(firstTrailingBit(17016i), 42443i, _wgslsmith_add_i32(u_input.b, u_input.b), u_input.a), Struct_1(u_input.d.xz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1637f, -572f)))), u_input.e.x, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1072f, 273f, 286f) * vec3<f32>(1234f, -701f, 606f)))))));
    var_0 = false;
    var_0 = var_1.b;
    var_0 = !any(select(select(select(vec3<bool>(var_1.b, var_1.b, true), vec3<bool>(var_1.b, false, var_1.b), vec3<bool>(var_1.b, var_1.b, true)), vec3<bool>(true, var_1.b, true), true), select(vec3<bool>(var_1.b, false, true), vec3<bool>(var_1.b, true, var_1.b), func_3(u_input.a, vec4<u32>(0u, 1u, 4769u, 4294967295u), 2147483647i)), select(vec3<bool>(var_1.b, true, true), select(vec3<bool>(true, true, var_1.b), vec3<bool>(false, false, var_1.b), vec3<bool>(var_1.b, false, var_1.b)), true)));
    return _wgslsmith_f_op_f32(f32(-1f) * -1251f);
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(208f, 437f, -723f))) + vec3<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-509f * 299f), _wgslsmith_f_op_f32(-1000f - -702f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-364f, 136f, 2063f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-719f, -520f, 2413f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-444f, -1247f, -813f) + vec3<f32>(-536f, 1567f, -148f))))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -803f), _wgslsmith_f_op_f32(sign(var_0.x))))))), var_0.x, _wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)));
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, var_0.x, 775f, -470f), vec4<f32>(-1000f, var_0.x, var_0.x, 339f))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, 2433f, -303f, -523f), vec4<f32>(241f, var_0.x, -1341f, 1281f))))), select(true, true, any(vec4<bool>(true, true, true, true))), -(vec4<i32>(u_input.a, u_input.d.x, 0i, u_input.d.x) << ((u_input.c | u_input.c) % vec4<u32>(32u))), Struct_1(-vec2<i32>(u_input.d.x, -40375i), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -1488f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1163f, var_0.x))), min(firstTrailingBit(0u), ~u_input.c.x), vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), -1000f, -1341f))), reverseBits(u_input.e.x));
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, -930f))) + 1000f)));
    var_0 = var_1.a.a.xwx;
    return Struct_2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)), _wgslsmith_f_op_f32(step(var_1.a.d.b.x, _wgslsmith_f_op_f32(var_1.a.d.b.x + var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_1.a.d.d.x)), _wgslsmith_f_op_f32(trunc(483f))))), _wgslsmith_f_op_f32(var_1.a.a.x + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(282f, -1988f))))), var_1.a.a.x), select(!(!var_1.a.b), 4294967295u <= var_1.a.d.c, func_3(_wgslsmith_add_i32(u_input.b, -1i), vec4<u32>(1u, 87545u, u_input.e.x, var_1.b), ~(-2147483647i))) || var_1.a.b, -var_1.a.c, var_1.a.d);
}

fn func_4(arg_0: Struct_2) -> f32 {
    let var_0 = arg_0.a.x;
    let var_1 = ~(u_input.c << (u_input.c % vec4<u32>(32u)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-var_0), 257f, -371f);
    let var_3 = _wgslsmith_mult_u32(arg_0.d.c, func_1().d.c);
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_0.d.d, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.d.d, arg_0.d.d), _wgslsmith_f_op_vec3_f32(min(arg_0.d.d, arg_0.d.d))), _wgslsmith_f_op_vec3_f32(-arg_0.d.d)))) * arg_0.d.d);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(819f, 921f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    let var_1 = vec4<f32>(-1314f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_1())) * -1015f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(587f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(769f - -1000f), _wgslsmith_f_op_f32(f32(-1f) * -114f))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1023f, _wgslsmith_div_f32(1869f, 1503f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-691f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1162f - 882f), _wgslsmith_f_op_f32(min(753f, 546f))))) + _wgslsmith_f_op_f32(func_2())));
    let var_2 = func_1();
    var var_3 = var_2.d.a.x;
    var var_4 = var_2.a.x;
    var_3 = -1i;
    var var_5 = Struct_1(select(~(~vec2<i32>(var_0, var_0)), u_input.d.yz, !var_2.b != func_1().b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.d.b - _wgslsmith_f_op_vec2_f32(step(var_1.zx, var_1.yw)))), ~abs(max(_wgslsmith_dot_vec2_u32(u_input.c.wx, vec2<u32>(12337u, 0u)), u_input.c.x)), var_2.a.zxw);
    var var_6 = u_input.a;
    var var_7 = Struct_3(Struct_2(var_1, true, min(-(var_2.c ^ var_2.c), var_2.c), var_2.d), _wgslsmith_mult_u32(var_5.c, var_2.d.c) >> (var_2.d.c % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~20796u);
}

