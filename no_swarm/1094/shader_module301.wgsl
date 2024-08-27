struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, 1i, -13259i, 23222i);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2) -> vec2<u32> {
    var var_0 = abs(vec4<i32>(arg_0.d.a, arg_0.a.x, -2147483647i ^ _wgslsmith_dot_vec3_i32(global0.wwz, arg_0.a), 26641i | _wgslsmith_sub_i32(45781i, global0.x)) & select(vec4<i32>(2147483647i, global0.x, global0.x, global0.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.a.x, arg_0.d.a, 1i, global0.x), abs(vec4<i32>(global0.x, 51915i, global0.x, 14468i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, arg_0.d.a, 1i, arg_0.d.a), vec4<i32>(36508i, global0.x, -2147483647i, arg_0.a.x), vec4<i32>(1i, 2147483647i, global0.x, 1i))), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    global0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(26691i, arg_0.d.a, -abs(-28160i), firstLeadingBit(firstLeadingBit(-global0.x))), firstLeadingBit(vec4<i32>(global0.x, 39994i, max(countOneBits(var_0.x), global0.x), ~_wgslsmith_clamp_i32(var_0.x, -5913i, arg_0.d.a))), countOneBits(~vec4<i32>(arg_0.a.x, arg_0.d.a, arg_0.a.x, -1i)) & min(vec4<i32>(min(var_0.x, -1i), i32(-1i) * -5584i, var_0.x, arg_0.d.a), ~vec4<i32>(-1555i, var_0.x, arg_0.a.x, global0.x) >> (abs(vec4<u32>(1u, 0u, 1u, 1u)) % vec4<u32>(32u))));
    var var_1 = _wgslsmith_f_op_f32(-arg_0.d.c.x);
    let var_2 = arg_0.d;
    var_1 = 769f;
    return firstLeadingBit(arg_0.b.yy);
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: Struct_2) -> bool {
    var var_0 = select(!(!vec4<bool>(any(vec2<bool>(true, false)), true, all(vec4<bool>(false, false, true, true)), true)), !select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)), false), vec4<bool>(true, true, true, true));
    let var_1 = true || any(var_0.zw);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_1.a.d.c.x, arg_1.a.c.x)), -707f), 1000f))) < _wgslsmith_f_op_f32(-arg_1.a.c.x);
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: Struct_1, arg_3: vec4<f32>) -> bool {
    var var_0 = Struct_3(arg_2.b);
    let var_1 = reverseBits(21497u);
    var_0 = Struct_3(u_input.b.x);
    let var_2 = arg_2;
    var var_3 = Struct_2(global0.zzz, vec3<u32>(u_input.b.x, ~u_input.a, _wgslsmith_add_u32(12628u, 1u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c.x, 178f, -2325f, arg_1))))), arg_2);
    return select(arg_0, func_4(arg_2.a, Struct_4(Struct_2(global0.zwx, u_input.c.zxz, _wgslsmith_div_vec4_f32(vec4<f32>(arg_3.x, -379f, 114f, var_2.c.x), arg_3), arg_2), -firstTrailingBit(var_3.a.x), select(func_3(Struct_2(global0.yzx, var_3.b, vec4<f32>(1282f, -986f, 1234f, var_2.c.x), Struct_1(var_2.a, var_2.b, vec2<f32>(-254f, -1000f)))), ~var_3.b.xz, vec2<bool>(arg_0, arg_0))), Struct_2(var_3.a, _wgslsmith_sub_vec3_u32(~var_3.b, min(var_3.b, vec3<u32>(1u, 3275u, 1u))), var_3.c, var_3.d)), ~(~_wgslsmith_div_u32(117623u, var_2.b)) < firstTrailingBit(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b, 6970u, 26782u, var_1), vec4<u32>(u_input.b.x, 39798u, 0u, 0u)))));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    var var_0 = select(vec3<bool>(!func_4(0i, Struct_4(arg_3, 30216i, vec2<u32>(arg_3.b.x, 4294967295u)), arg_3), !arg_2, true), select(!vec3<bool>(any(vec4<bool>(true, arg_2, false, false)), arg_2, any(vec4<bool>(true, false, arg_2, true))), select(select(select(vec3<bool>(false, arg_2, true), vec3<bool>(false, arg_2, arg_2), false), vec3<bool>(arg_2, arg_2, false), true), select(select(vec3<bool>(arg_2, arg_2, true), vec3<bool>(arg_2, false, false), false), vec3<bool>(false, true, true), func_4(global0.x, Struct_4(Struct_2(vec3<i32>(-1i, 1i, global0.x), vec3<u32>(63734u, 19138u, u_input.c.x), arg_0, arg_3.d), arg_3.d.a, vec2<u32>(1u, arg_3.d.b)), arg_3)), select(vec3<bool>(false, arg_2, arg_2), select(vec3<bool>(false, arg_2, arg_2), vec3<bool>(false, arg_2, arg_2), false), vec3<bool>(false, false, arg_2))), false), select(vec3<bool>(all(select(vec3<bool>(true, true, arg_2), vec3<bool>(true, arg_2, false), false)), all(!vec2<bool>(false, arg_2)), false), vec3<bool>(arg_2 && all(vec3<bool>(false, arg_2, arg_2)), !arg_2, !func_4(1i, Struct_4(arg_3, global0.x, vec2<u32>(0u, 4294967295u)), arg_3)), vec3<bool>(true, arg_2, !func_4(global0.x, Struct_4(Struct_2(arg_3.a, arg_3.b, vec4<f32>(arg_0.x, arg_3.c.x, 1011f, arg_3.d.c.x), arg_3.d), arg_1.x, vec2<u32>(56299u, 1u)), arg_3))));
    let var_1 = arg_3;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.d.c.x, var_1.c.x))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, -698f)))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(arg_0.yz, arg_0.xy)))))));
    let var_3 = Struct_3(arg_3.b.x);
    global0 = -arg_1;
    return Struct_1(var_1.a.x, firstTrailingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 32443u, 4294967295u, var_3.a), vec4<u32>(_wgslsmith_div_u32(69319u, 1u), arg_3.d.b & arg_3.d.b, _wgslsmith_mod_u32(arg_3.d.b, arg_3.b.x), u_input.a))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-485f, var_2.x) - _wgslsmith_f_op_f32(min(var_1.d.c.x, 456f))))));
}

fn func_1(arg_0: Struct_1) -> bool {
    var var_0 = Struct_2(vec3<i32>(-global0.x, -698i, -647i), u_input.c.wyz, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, -632f, 1080f, -1050f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(554f, arg_0.c.x, -232f, arg_0.c.x) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.c.x, 313f, -943f, -3256f)))), any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false))))) * vec4<f32>(_wgslsmith_f_op_f32(-532f + _wgslsmith_f_op_f32(-1000f + arg_0.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)))), func_5(vec4<f32>(1732f, _wgslsmith_f_op_f32(round(arg_0.c.x)), arg_0.c.x, _wgslsmith_f_op_f32(234f * _wgslsmith_f_op_f32(arg_0.c.x * arg_0.c.x))), firstLeadingBit(~vec4<i32>(-2147483647i, global0.x, global0.x, arg_0.a) & (vec4<i32>(36308i, 23258i, global0.x, global0.x) & vec4<i32>(5759i, 21191i, 40923i, arg_0.a))), func_2(true, _wgslsmith_div_f32(1292f, 744f), Struct_1(-2147483647i, 0u, vec2<f32>(arg_0.c.x, arg_0.c.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(794f, 150f, arg_0.c.x, -1503f))) || select(true, true, true), Struct_2(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.a, arg_0.a, -2147483647i), ~global0.zwy), u_input.c.xxx, _wgslsmith_f_op_vec4_f32(-vec4<f32>(137f, 759f, arg_0.c.x, arg_0.c.x)), Struct_1(_wgslsmith_mult_i32(24775i, 1i), u_input.b.x, _wgslsmith_f_op_vec2_f32(min(arg_0.c, vec2<f32>(arg_0.c.x, -428f)))))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -761f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1912f) + _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1814f, -666f)))))));
    var_1 = _wgslsmith_f_op_f32(-arg_0.c.x);
    var_1 = _wgslsmith_f_op_f32(abs(arg_0.c.x));
    let var_2 = arg_0.a;
    return !(_wgslsmith_f_op_f32(arg_0.c.x - -1656f) > _wgslsmith_f_op_f32(floor(arg_0.c.x)));
}

fn func_6(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_2(~global0.zww, vec3<u32>(u_input.a | ~1u, max(_wgslsmith_add_u32(_wgslsmith_add_u32(4294967295u, u_input.a), abs(38869u)), select(~u_input.a, 1u, any(vec2<bool>(arg_0.x, arg_0.x)))), ~(~u_input.a)), vec4<f32>(_wgslsmith_f_op_f32(trunc(-811f)), _wgslsmith_f_op_f32(select(-702f, -481f, arg_0.x)), 1929f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(995f + 405f)))))), Struct_1(-(i32(-1i) * -2147483647i), 40526u, vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-955f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(475f)))))));
    var_0 = Struct_2(_wgslsmith_div_vec3_i32(-_wgslsmith_mult_vec3_i32(-global0.wxx, -var_0.a), vec3<i32>(var_0.a.x << (~u_input.c.x % 32u), -(~global0.x), abs(var_0.d.a))), var_0.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(968f, var_0.d.c.x, -1000f, -1483f), var_0.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-178f, var_0.c.x, var_0.c.x, 1000f)) * var_0.c))), var_0.d);
    var var_1 = Struct_4(Struct_2(~(~var_0.a), ~(~var_0.b) ^ (_wgslsmith_mod_vec3_u32(u_input.c.xyy, var_0.b) ^ vec3<u32>(u_input.a, var_0.d.b, u_input.a)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1028f) - -1414f), -806f, -456f, var_0.c.x), Struct_1(12809i, var_0.b.x, var_0.c.xz)), global0.x, max(~countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(0u, var_0.b.x), vec2<u32>(var_0.d.b, var_0.d.b))), vec2<u32>(_wgslsmith_dot_vec2_u32(~var_0.b.zy, vec2<u32>(35663u, u_input.b.x)), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a, u_input.a, var_0.d.b, var_0.d.b)), _wgslsmith_add_vec4_u32(u_input.c, u_input.c)))));
    var_0 = Struct_2(abs(_wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -var_0.a, var_1.a.a)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, var_1.a.b.x, 4294967295u), ~vec3<u32>(~1u, _wgslsmith_add_u32(556u, 0u), ~u_input.b.x)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-var_1.a.c))), var_1.a.d);
    global0 = abs(_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(_wgslsmith_sub_i32(-2147483647i, -27822i), var_0.a.x << (0u % 32u), global0.x, global0.x)), ~_wgslsmith_sub_vec4_i32(~vec4<i32>(var_1.a.a.x, var_1.a.d.a, var_1.b, var_1.b), vec4<i32>(22475i, 2147483647i, -19578i, var_1.a.a.x) | vec4<i32>(var_1.a.a.x, 17111i, -61701i, var_0.d.a))));
    return var_0.d;
}

fn func_7(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec2<i32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1008f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)), true));
    let var_1 = true;
    var var_2 = (abs(~global0.x << (_wgslsmith_mod_u32(u_input.b.x, arg_0.b) % 32u)) > _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-2147483647i, arg_0.a), _wgslsmith_clamp_i32(-2147483647i, arg_0.a, arg_1.x), _wgslsmith_dot_vec3_i32(global0.xzx, vec3<i32>(-1i, global0.x, arg_2.x)), arg_1.x), vec4<i32>(_wgslsmith_clamp_i32(-60278i, -31303i, 0i), -29282i, arg_0.a, _wgslsmith_sub_i32(-1i, -16083i)))) || any(vec2<bool>(true, var_1));
    var var_3 = Struct_4(Struct_2(-arg_1, u_input.c.zwy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.c.x, arg_0.c.x, 1275f, -1573f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-692f, arg_0.c.x, -2869f, arg_0.c.x) - vec4<f32>(1243f, -1696f, -1133f, arg_0.c.x)))), func_6(!(!vec3<bool>(var_1, true, false)))), -1311i, vec2<u32>(20516u, u_input.a));
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -691f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-271f * 415f))), 1000f))));
    var var_1 = func_7(func_6(vec3<bool>(!any(vec3<bool>(false, false, true)), select(28395u, u_input.b.x, true) == firstTrailingBit(u_input.c.x), select(func_1(Struct_1(global0.x, u_input.a, var_0.yx)), false, true))), ~select(vec3<i32>(-2147483647i, global0.x, -22489i) | vec3<i32>(0i, global0.x, global0.x), -global0.wwx, select(false, true, false) || any(vec2<bool>(false, true))), global0.zz);
    var var_2 = Struct_3(u_input.c.x);
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, var_0.x, var_0.x)))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(var_0.x + 1940f), _wgslsmith_div_f32(var_0.x, var_0.x), -1922f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1802f, 652f, -376f) - vec3<f32>(var_0.x, var_0.x, 2314f)))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, -1314f, -1046f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1882f, var_0.x) + vec3<f32>(var_0.x, 2257f, var_0.x)))))));
    let var_3 = Struct_2(global0.wzw, ~select(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 4294967295u, var_1.x), u_input.c.xyx), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 35415u, u_input.a), var_1.wwz)), var_1.wzw, any(vec3<bool>(true, false, false)) & true), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1260f)), var_0.x, -413f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))), Struct_1(~global0.x, abs(_wgslsmith_dot_vec4_u32(~u_input.c, _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 80138u, 1u, u_input.a), vec4<u32>(0u, var_1.x, var_2.a, 80645u)))), _wgslsmith_f_op_vec2_f32(var_0.yz - var_0.yx)));
    let var_4 = var_1.zxz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(~_wgslsmith_sub_vec4_i32(-vec4<i32>(-688i, global0.x, -7521i, 14890i), _wgslsmith_add_vec4_i32(vec4<i32>(global0.x, -38295i, -23944i, -22189i), vec4<i32>(var_3.d.a, 2147483647i, 23622i, var_3.d.a))), min(_wgslsmith_div_vec4_i32(-vec4<i32>(2147483647i, -13560i, global0.x, 14150i), vec4<i32>(var_3.d.a, var_3.d.a, global0.x, -26777i)), ~(-vec4<i32>(7446i, -2147483647i, 0i, 2147483647i))), -vec4<i32>(global0.x, -39i, var_3.a.x, abs(1i))), var_3.b.x, var_3.c.x, var_1.ywz);
}

