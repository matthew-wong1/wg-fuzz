struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_3,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: i32,
    d: vec2<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<bool>) -> vec3<u32> {
    global0 = all(select(select(select(!vec4<bool>(arg_0.x, true, arg_0.x, false), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), arg_0.x), !arg_0.x), vec4<bool>(false, arg_0.x, true, arg_0.x), false && all(vec2<bool>(arg_0.x, arg_0.x))), !select(select(vec4<bool>(true, false, false, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, true), arg_0.x), !vec4<bool>(false, false, true, arg_0.x), !vec4<bool>(arg_0.x, false, false, false)), !any(vec3<bool>(arg_0.x, true, arg_0.x))));
    global0 = any(vec3<bool>(all(vec4<bool>(true, any(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)), arg_0.x && arg_0.x, arg_0.x || true)), true, false));
    var var_0 = 385f;
    global0 = _wgslsmith_div_f32(587f, 370f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(160f))) + -303f);
    let var_1 = vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x);
    return _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(~33360u, firstTrailingBit(_wgslsmith_dot_vec3_u32(select(vec3<u32>(133667u, 0u, 37024u), vec3<u32>(4294967295u, 4294967295u, 0u), var_1.x), firstLeadingBit(vec3<u32>(36709u, 10487u, 4294967295u)))), 1u));
}

fn func_2() -> bool {
    let var_0 = !(_wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, 4294967295u, 27340u), vec3<u32>(31871u, 13570u, 0u), false) << (func_3(vec2<bool>(true, false)) % vec3<u32>(32u)), ~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 32546u, 62560u), vec3<u32>(1u, 1u, 1u))) == 4294967295u);
    let var_1 = ~_wgslsmith_mod_vec2_i32(u_input.a.xy | -_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, -1i), u_input.a.yy), -u_input.a.wz);
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(322f, 2345f, 1606f) * vec3<f32>(-1621f, 559f, -664f)), vec3<f32>(1000f, 1640f, -178f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(186f, 536f, 569f), vec3<f32>(-492f, 746f, -132f)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1139f, -399f, 1696f)))), any(vec2<bool>(var_0, true))))), ~min(~(-vec3<i32>(var_1.x, var_1.x, u_input.a.x)), u_input.a.yxz | _wgslsmith_mod_vec3_i32(vec3<i32>(-14448i, var_1.x, -1i), u_input.a.yyy)));
    global0 = 13770i >= (abs(-1i) >> (min(abs(firstLeadingBit(1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(27971u, 0u, 26798u, 89778u), min(vec4<u32>(124884u, 4294967295u, 26209u, 5796u), vec4<u32>(53838u, 1u, 53076u, 1u)))) % 32u));
    let var_3 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.zw, var_2.b.zx), var_2.b.zx);
    return var_0;
}

fn func_1(arg_0: vec4<u32>, arg_1: bool, arg_2: vec2<u32>, arg_3: vec3<bool>) -> u32 {
    global0 = reverseBits(countOneBits(-_wgslsmith_add_i32(u_input.a.x, u_input.a.x))) == u_input.b;
    global0 = func_2();
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-644f, 570f, -1318f), vec3<f32>(1179f, 393f, -418f), vec3<bool>(arg_1, arg_3.x, arg_3.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-217f, -1267f, -1342f) - vec3<f32>(-136f, -184f, 1000f)), !arg_1)) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -702f), _wgslsmith_f_op_f32(-1080f * -755f), _wgslsmith_f_op_f32(f32(-1f) * -980f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2390f, -163f, 1643f)))))), ~(u_input.a.yzy >> (vec3<u32>(4294967295u, arg_0.x, 4294967295u) % vec3<u32>(32u))) ^ u_input.a.yzy);
    var var_1 = Struct_4(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x) * var_0.a.x)), ~(~var_0.b.x), Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1661f, var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a.x, 412f, arg_3.x)))))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_0.a)))), ~vec3<i32>(-5834i, -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 6006i), vec3<i32>(u_input.b, -2147483647i, u_input.a.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -386f))) == _wgslsmith_f_op_f32(-1f));
    var_1 = Struct_4(var_1.a, ~_wgslsmith_mult_i32(2147483647i, _wgslsmith_mod_i32(abs(var_1.b), abs(var_1.b))), var_1.c, var_1.d, any(select(select(!vec2<bool>(var_1.e, false), arg_3.yx, vec2<bool>(arg_1, var_1.e)), arg_3.yx, vec2<bool>(!var_1.e, all(vec2<bool>(var_1.e, false))))));
    return arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(any(vec4<bool>(true, true, true, true)) || !any(vec3<bool>(false, false, true)), select(false, true, func_1(~vec4<u32>(4294967295u, 80712u, 4294967295u, 13755u), true, _wgslsmith_mod_vec2_u32(vec2<u32>(80657u, 22277u), vec2<u32>(4294967295u, 4618u)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true)) < 1u));
    global0 = var_0.x;
    var_0 = vec2<bool>(true, true);
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1114f, 985f, -1445f)))))), firstLeadingBit(~(-(~u_input.a.ywz))));
    var var_2 = var_1;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(470f * _wgslsmith_f_op_f32(-var_1.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_mod_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(11401u, 56994u, 4294967295u, 37994u), vec4<u32>(0u, 3819u, 57834u, 0u))), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, 61208u, 42796u, 0u)), vec4<u32>(0u, 40952u, 4294967295u, 4294967295u))), max(abs(select(0u, 0u, var_0.x)), ~0u), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(min(vec2<u32>(10780u, 1u), vec2<u32>(59002u, 0u)), firstTrailingBit(vec2<u32>(4294967295u, 27058u))), ~(~13593u)), ~28704u), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.a.xx) - _wgslsmith_f_op_vec2_f32(var_1.a.xx * vec2<f32>(408f, var_1.a.x))), var_2.a.yx)))), var_1.b.x, abs(min(abs(vec2<u32>(143174u, 79034u)), countOneBits(vec2<u32>(0u, 21005u))) & (_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 42025u), vec2<u32>(0u, 13764u)) ^ select(vec2<u32>(14515u, 79785u), vec2<u32>(20813u, 22509u), vec2<bool>(false, var_0.x)))), _wgslsmith_mult_vec4_i32(min(u_input.a, -u_input.a), abs(vec4<i32>(var_1.b.x, var_1.b.x, u_input.a.x, var_1.b.x) >> (vec4<u32>(4294967295u, 1u, 4294967295u, 29524u) % vec4<u32>(32u)))) & min(vec4<i32>(i32(-1i) * -1i, -2147483647i, u_input.a.x, ~u_input.b), u_input.a));
}

