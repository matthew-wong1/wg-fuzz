struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: bool, arg_1: Struct_5, arg_2: vec2<f32>) -> f32 {
    var var_0 = countOneBits(~4294967295u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * _wgslsmith_div_f32(arg_2.x, -893f));
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_clamp_u32(24813u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(44643u, u_input.a) << (firstLeadingBit(0u) % 32u), ~(u_input.a >> (u_input.c.x % 32u))), u_input.c.x), u_input.c.x | (u_input.a & (u_input.a | _wgslsmith_dot_vec4_u32(vec4<u32>(24396u, 1u, 1u, u_input.a), vec4<u32>(u_input.c.x, 40807u, u_input.a, u_input.a)))));
    var var_1 = ~2147483647i;
    let var_2 = Struct_4(Struct_1(u_input.b.x, true, countOneBits(~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, 1i), u_input.b.xw))));
    var var_3 = var_2.a.c;
    var var_4 = 319f;
    return 63328u;
}

fn func_2() -> vec3<i32> {
    let var_0 = Struct_4(Struct_1(-2147483647i, false, -1i));
    var var_1 = -28544i;
    let var_2 = u_input.c.yy;
    var_1 = var_0.a.a;
    var_1 = -10596i;
    return firstLeadingBit((vec3<i32>(var_0.a.a >> (var_2.x % 32u), var_0.a.c, _wgslsmith_sub_i32(1i, -16717i)) ^ -_wgslsmith_mult_vec3_i32(u_input.b.ywx, u_input.b.xyy)) >> (abs(vec3<u32>(_wgslsmith_div_u32(0u, 67329u), ~6503u, func_3(vec2<i32>(0i, 10596i)))) % vec3<u32>(32u)));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: i32) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = var_0;
    var_1 = var_0;
    let var_2 = Struct_1(0i, all(select(!vec2<bool>(arg_2.x, true), select(arg_2.yx, select(vec2<bool>(false, arg_0.a.b), vec2<bool>(arg_2.x, var_0.a.b), false), !var_0.a.b), arg_2.wz)), _wgslsmith_mult_i32(_wgslsmith_sub_i32(i32(-1i) * -arg_1.x, _wgslsmith_add_i32(-arg_1.x, 2147483647i)), u_input.b.x));
    var_1 = Struct_4(Struct_1(select(abs(1i), 1i, var_1.a.b), all(arg_2.xyx), (23046i << (u_input.c.x % 32u)) | _wgslsmith_mod_i32(~14640i, 1i)));
    return var_2;
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: i32) -> Struct_2 {
    let var_0 = -(func_2().x << (0u % 32u));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1540f);
    let var_2 = Struct_1(-17493i, arg_1.c.b == false, select(~_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.b.wxx, u_input.b.xzy, vec3<i32>(26065i, var_0, var_0)), u_input.b.zww), ~(-(~0i)), false));
    var_1 = 616f;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(func_1(_wgslsmith_add_u32(firstTrailingBit(u_input.a), 0u) != 1u, Struct_5(-1916i, ~u_input.b.yx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(sign(465f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1442f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(arg_1.a.b, Struct_5(arg_1.b.d, vec2<i32>(-19885i, -50101i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2472f, 987f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -547f) + 1f)));
    return Struct_2(true, Struct_1(_wgslsmith_mult_i32(-2147483647i, _wgslsmith_add_i32(var_2.a, 1i)), !(!func_4(Struct_4(arg_1.a), u_input.b.xxy, vec4<bool>(var_2.b, arg_1.a.b, false, true), 51993i).b), 1i), 0u, arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(max(4294967295u, countOneBits(~countOneBits(u_input.a))), Struct_3(Struct_1(-1i, 1f <= _wgslsmith_f_op_f32(func_1(false, Struct_5(u_input.b.x, vec2<i32>(u_input.b.x, 38782i)), vec2<f32>(1128f, 1724f))), ~select(6157i, u_input.b.x, true)), Struct_2(select(false, false, false) & true, func_4(Struct_4(Struct_1(u_input.b.x, false, u_input.b.x)), func_2(), vec4<bool>(true, true, true, true), 0i ^ u_input.b.x), ~firstLeadingBit(u_input.a), ~reverseBits(-1i)), func_4(Struct_4(func_4(Struct_4(Struct_1(1i, false, u_input.b.x)), vec3<i32>(u_input.b.x, u_input.b.x, 1i), vec4<bool>(true, false, true, true), -1i)), u_input.b.zzx | firstTrailingBit(vec3<i32>(-2147483647i, u_input.b.x, 41859i)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), 22694i)), -2147483647i);
    var var_1 = var_0.b;
    var var_2 = !select(vec4<bool>(all(!vec3<bool>(var_1.b, true, false)), var_1.b, var_0.a, func_4(Struct_4(Struct_1(var_1.a, var_1.b, -13802i)), -vec3<i32>(0i, var_0.b.c, -1i), !vec4<bool>(false, var_1.b, var_1.b, var_0.b.b), u_input.b.x).b), vec4<bool>(true, true, true, var_0.b.b), !(!select(vec4<bool>(false, var_1.b, true, var_1.b), vec4<bool>(var_1.b, false, var_1.b, var_0.a), false)));
    let var_3 = var_0.b.b;
    var var_4 = _wgslsmith_dot_vec3_i32(abs(u_input.b.wwz), select(u_input.b.zwy, u_input.b.wxw, true));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1054f, 283f, -1312f), vec3<f32>(-689f, 1000f, 1000f))) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(145f, -1540f, -576f)))), vec3<f32>(_wgslsmith_f_op_f32(sign(-1405f)), -1029f, _wgslsmith_f_op_f32(558f + 1252f))))), _wgslsmith_f_op_f32(f32(-1f) * -1362f), abs(vec2<i32>(1i, var_1.a)));
}

