struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_1 = Struct_1(vec4<i32>(-1i, 18991i, 23103i, 1227i), -21601i);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> u32 {
    global1 = Struct_1(vec4<i32>(global1.b, ~9304i, _wgslsmith_add_i32(min(global1.b | global1.a.x, _wgslsmith_sub_i32(global1.b, 25229i)), global1.a.x), -44922i), global1.a.x);
    var var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(805f, 128f, 1358f, 355f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-144f, -524f, 1807f, 353f) * vec4<f32>(226f, -1066f, -736f, 825f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(300f, 1096f, 1520f, 305f), vec4<f32>(-652f, 602f, -395f, 630f), vec4<bool>(global0.x, false, false, global0.x))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1243f, 1361f, -1000f, 940f), vec4<f32>(141f, 1000f, -2805f, -192f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1656f, -1786f, -400f, 176f) + vec4<f32>(1000f, 1000f, -527f, -1337f)))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1017f, 1375f, 295f, 635f), vec4<f32>(847f, 737f, 594f, -665f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1317f, -368f, 2076f, 896f) + vec4<f32>(-597f, -2218f, 148f, 1145f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(212f, 301f, 280f, -325f), vec4<f32>(-1000f, -153f, -656f, -1000f)))))))));
    global0 = !select(!(!select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(false, global0.x, global0.x, true), global0.x)), !(!vec4<bool>(global0.x, true, global0.x, false)), vec4<bool>(!global0.x, !(!global0.x), global0.x, true));
    var var_1 = var_0.x;
    global0 = vec4<bool>(true, true, !global0.x, -471f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) - _wgslsmith_f_op_f32(-var_0.x))));
    return u_input.a.x;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2((max(func_3(), _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 0u)) | ~_wgslsmith_sub_u32(4294967295u, 1u)) << (76630u % 32u), true, Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(abs(global1.a.x), _wgslsmith_mod_i32(-2147483647i, -1i), global1.b, 0i), ~vec4<i32>(-2147483647i, -2147483647i, 1i, -6250i) | reverseBits(global1.a)), 1i), u_input.a.x <= 0u, Struct_1(_wgslsmith_sub_vec4_i32(~vec4<i32>(-2147483647i, global1.b, global1.b, 25447i), countOneBits(-global1.a)), ~global1.b));
    global0 = vec4<bool>(~(~(-46094i)) <= _wgslsmith_sub_i32(global1.a.x, -global1.b ^ firstLeadingBit(59361i)), var_0.d, all(global0.yw), select(var_0.b, !all(vec3<bool>(false, global0.x, false)), true));
    global0 = select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(var_0.d, global0.x, true, -57522i <= var_0.c.a.x), true), !(!select(vec4<bool>(false, false, true, true), vec4<bool>(global0.x, var_0.b, global0.x, var_0.d), var_0.d)), !vec4<bool>(global0.x, !var_0.b, true, false)), vec4<bool>(true, var_0.d, any(select(!vec4<bool>(true, global0.x, var_0.d, global0.x), vec4<bool>(global0.x, var_0.b, var_0.b, global0.x), all(vec3<bool>(false, var_0.b, true)))), true), vec4<bool>(true, true, true, !all(select(global0.xx, vec2<bool>(true, false), global0.yy))));
    global1 = Struct_1(global1.a, global1.a.x);
    var var_1 = var_0.e;
    return var_0.e;
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, -1465f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2)))) + vec2<f32>(arg_2, _wgslsmith_f_op_f32(abs(arg_2))))));
    global1 = Struct_1(_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(global1.b, 2147483647i, -14369i, -34862i) ^ select(global1.a, global1.a, vec4<bool>(true, true, arg_0, arg_0))), vec4<i32>(-42350i, global1.b, 1i, -100i)), min(firstLeadingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(global1.a, global1.a), vec4<i32>(1i, global1.a.x, 2147483647i, global1.a.x))), 2147483647i));
    let var_1 = func_2();
    var var_2 = vec3<f32>(-180f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-381f)) * _wgslsmith_f_op_f32(arg_2 + -1270f)), _wgslsmith_f_op_f32(f32(-1f) * -601f)))), _wgslsmith_f_op_f32(860f - _wgslsmith_f_op_f32(floor(460f))));
    var var_3 = global0.x & false;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -7247i;
    global1 = func_1(!global0.x, ~global1.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -348f))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -855f)) + -665f) - _wgslsmith_div_f32(-1369f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-455f + -343f))))));
    let var_2 = func_2();
    let var_3 = -32244i;
    var var_4 = Struct_2(_wgslsmith_div_u32(abs(_wgslsmith_div_u32(1u, 1u)), u_input.a.x), global0.x, Struct_1(_wgslsmith_clamp_vec4_i32(-(global1.a << (vec4<u32>(32184u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), ~select(vec4<i32>(66557i, global1.b, var_2.a.x, var_2.a.x), var_2.a, true), _wgslsmith_mod_vec4_i32(global1.a >> (vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), vec4<i32>(var_2.a.x, 6717i, var_3, var_3))), var_2.b), any(!select(global0.yz, global0.yx, global0.xw)) && false, func_1(global0.x, -(var_3 | -27747i) | _wgslsmith_add_i32(global1.a.x, var_2.b ^ 26223i), var_1));
    var var_5 = Struct_2(func_3(), true, Struct_1(vec4<i32>(_wgslsmith_sub_i32(abs(41805i), 1i), -(var_2.a.x >> (u_input.a.x % 32u)), reverseBits(-var_3), max(-1i, var_3)), 30638i), var_4.b, var_2);
    var var_6 = -_wgslsmith_mod_vec3_i32(var_5.e.a.xzz, ~func_1(var_3 == -19119i, var_4.c.b, _wgslsmith_f_op_f32(select(var_1, -188f, var_5.b))).a.xzx);
    var var_7 = 351f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(5562i, 1i, var_4.c.a.x), _wgslsmith_sub_vec4_u32(max(~vec4<u32>(63320u, u_input.a.x, var_4.a, var_4.a), _wgslsmith_sub_vec4_u32(~vec4<u32>(var_4.a, 4294967295u, 55379u, 1u), vec4<u32>(0u, 1u, 1u, var_4.a))), vec4<u32>(~var_4.a ^ ~var_5.a, ~(~66769u), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_4.a, var_4.a, 4294967295u), vec3<u32>(var_4.a, u_input.a.x, var_5.a)), 0u)), vec3<i32>(abs(abs(-2147483647i)), func_2().b, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(var_4.e.a.zwy, var_2.a.xwx) & vec3<i32>(1i, var_5.c.b, 0i), ~_wgslsmith_sub_vec3_i32(vec3<i32>(var_6.x, 0i, 1i), vec3<i32>(61880i, var_4.e.b, -1i)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - var_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(min(var_1, var_1)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * _wgslsmith_div_f32(1044f, -731f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1082f)), _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(floor(var_1))))), -(~var_6.x));
}

