struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: bool,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>) -> bool {
    let var_0 = Struct_1(1i, vec4<bool>(any(vec3<bool>(false, true, true)), true, false | select(false, true, true), all(vec2<bool>(false, false)) || !any(vec4<bool>(false, false, true, false))), vec2<i32>(u_input.e.x, -_wgslsmith_clamp_i32(-2147483647i, -2147483647i, -u_input.e.x)));
    var var_1 = ~28071u;
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-157f, 154f, 821f) + vec3<f32>(-1447f, 747f, 1810f)), _wgslsmith_div_vec3_f32(vec3<f32>(-780f, 1191f, -1169f), vec3<f32>(-2312f, 595f, -631f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-449f, _wgslsmith_f_op_f32(f32(-1f) * -571f), 243f)))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.x)) - var_2.x);
    var var_4 = Struct_2(Struct_1(reverseBits(abs(u_input.e.x)), var_0.b, vec2<i32>(38394i, var_0.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_2.x)), _wgslsmith_f_op_f32(-var_3), var_3, _wgslsmith_f_op_f32(var_2.x * -1000f)) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1085f, var_3, var_3, var_2.x) * vec4<f32>(var_3, -1874f, var_2.x, -296f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 950f, var_3, var_2.x)))))), true);
    return var_4.c;
}

fn func_2() -> Struct_1 {
    var var_0 = 13400i;
    var_0 = u_input.e.x;
    var var_1 = u_input.c.x;
    let var_2 = !select(vec4<bool>(select(false, true, true), func_3(u_input.b) | true, all(vec4<bool>(true, false, true, false)), true), select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true)), any(vec3<bool>(true, true, true))), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)), any(vec3<bool>(true, true, true))), true);
    var_0 = ~(u_input.e.x >> (29375u % 32u));
    return Struct_1(-1i, select(vec4<bool>(!(u_input.e.x <= -2147483647i), any(select(vec2<bool>(var_2.x, true), var_2.xx, var_2.zy)), true, true), var_2, vec4<bool>((var_2.x && true) || var_2.x, !func_3(vec3<u32>(1u, 3692u, u_input.d.x)), !all(var_2.ww), true)), vec2<i32>(u_input.e.x, -u_input.e.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    let var_0 = vec3<i32>(u_input.e.x >> (0u % 32u), ~u_input.e.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(firstLeadingBit(firstTrailingBit(vec4<i32>(29632i, 33612i, arg_1.c.x, 6058i))), -(u_input.e >> (vec4<u32>(u_input.d.x, u_input.c.x, 4294967295u, 4294967295u) % vec4<u32>(32u)))), arg_1.a));
    let var_1 = 589f;
    var var_2 = abs(var_0.x);
    var var_3 = Struct_3(3370u, u_input.e, ~(~(-2147483647i)), Struct_2(func_2(), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(144f)), _wgslsmith_f_op_f32(sign(-1179f))), arg_2.b.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1154f)), 594f)), _wgslsmith_div_f32(var_1, arg_2.b.x)), arg_2.c), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, 1f) + _wgslsmith_div_f32(arg_2.b.x, arg_2.b.x)));
    var var_4 = -_wgslsmith_clamp_vec4_i32(u_input.e, countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -1i, 0i, 1i), vec4<i32>(arg_0.c.x, arg_1.c.x, var_0.x, var_3.c)) & vec4<i32>(33621i, 9917i, var_3.d.a.c.x, arg_1.a)), -vec4<i32>(-2147483647i, firstLeadingBit(2147483647i), arg_0.c.x, arg_1.c.x));
    return Struct_2(Struct_1(u_input.e.x & 1i, select(arg_2.a.b, !(!var_3.d.a.b), !(!var_3.d.a.b)), -(vec2<i32>(-1i, arg_1.c.x) >> (u_input.a % vec2<u32>(32u))) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(var_3.d.a.c.x, -12154i) << (vec2<u32>(var_3.a, var_3.a) % vec2<u32>(32u)), u_input.e.wz)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-516f)))), _wgslsmith_f_op_f32(-586f + _wgslsmith_f_op_f32(ceil(var_3.d.b.x))), arg_2.b.x, 210f)), var_3.d.a.b.x);
}

fn func_1() -> vec2<f32> {
    let var_0 = u_input.e.wxw;
    var var_1 = func_4(func_2(), func_2(), Struct_2(func_2(), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(599f - -382f), _wgslsmith_f_op_f32(f32(-1f) * -325f), _wgslsmith_f_op_f32(f32(-1f) * -104f), _wgslsmith_f_op_f32(ceil(-321f))))), true));
    let var_2 = func_4(var_1.a, var_1.a, func_4(var_1.a, var_1.a, Struct_2(Struct_1(var_1.a.a, vec4<bool>(true, var_1.a.b.x, var_1.a.b.x, true), u_input.e.yz), _wgslsmith_f_op_vec4_f32(exp2(var_1.b)), (2608u ^ u_input.a.x) < _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)))).a;
    return var_1.b.zy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()) - vec2<f32>(499f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-983f * -1134f)))));
    let var_2 = func_4(func_4(func_4(func_2(), Struct_1(0i, func_4(Struct_1(-20850i, vec4<bool>(false, false, false, true), vec2<i32>(u_input.e.x, -1i)), Struct_1(-72342i, vec4<bool>(true, false, false, false), u_input.e.yx), Struct_2(Struct_1(0i, vec4<bool>(false, true, false, false), u_input.e.zw), vec4<f32>(173f, var_1.x, -142f, -760f), false)).a.b, ~vec2<i32>(0i, u_input.e.x)), Struct_2(Struct_1(5878i, vec4<bool>(true, false, false, false), vec2<i32>(u_input.e.x, u_input.e.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, 1644f, var_1.x, -1823f), vec4<f32>(var_1.x, 212f, 184f, 373f), false)), any(vec3<bool>(true, false, true)))).a, Struct_1(~_wgslsmith_sub_i32(-25116i, u_input.e.x), vec4<bool>(true, true, true, true), ~u_input.e.yz), Struct_2(func_4(Struct_1(-1i, vec4<bool>(false, false, false, false), vec2<i32>(u_input.e.x, u_input.e.x)), func_4(Struct_1(-8139i, vec4<bool>(false, false, true, false), u_input.e.xx), Struct_1(u_input.e.x, vec4<bool>(true, false, true, true), u_input.e.wx), Struct_2(Struct_1(-1i, vec4<bool>(false, false, false, false), vec2<i32>(20045i, u_input.e.x)), vec4<f32>(var_1.x, 738f, 897f, var_1.x), false)).a, Struct_2(Struct_1(u_input.e.x, vec4<bool>(true, true, false, false), vec2<i32>(u_input.e.x, u_input.e.x)), vec4<f32>(729f, 134f, -152f, -1443f), false)).a, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1137f), _wgslsmith_f_op_f32(var_1.x + -694f), -505f, _wgslsmith_f_op_f32(sign(-155f))), true)).a, func_2(), Struct_2(func_2(), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_1.x) - _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1()).x), -325f, var_1.x), true)).a;
    var var_3 = Struct_3(_wgslsmith_dot_vec4_u32((_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, 149156u, u_input.d.x, u_input.c.x), vec4<u32>(u_input.a.x, 20096u, u_input.c.x, 42688u)) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(18694u, u_input.a.x, u_input.d.x, u_input.c.x), vec4<u32>(u_input.a.x, u_input.c.x, 1u, u_input.d.x))) >> (~(~vec4<u32>(1646u, u_input.b.x, u_input.b.x, 99059u)) % vec4<u32>(32u)), ~(~vec4<u32>(22710u, u_input.c.x, 76816u, 49012u)) | min(vec4<u32>(u_input.d.x, 4294967295u, 26536u, u_input.d.x) >> (vec4<u32>(4294967295u, u_input.c.x, 1u, u_input.a.x) % vec4<u32>(32u)), vec4<u32>(10180u, 46601u, 4294967295u, u_input.c.x) ^ vec4<u32>(u_input.c.x, 63440u, 86878u, u_input.c.x))), reverseBits(u_input.e), u_input.e.x, func_4(func_2(), Struct_1(1i & u_input.e.x, vec4<bool>(var_2.b.x, true | var_2.b.x, 26376i > var_2.a, true), vec2<i32>(var_2.c.x << (4294967295u % 32u), 0i)), func_4(Struct_1(var_2.c.x, select(vec4<bool>(true, var_2.b.x, false, var_2.b.x), var_2.b, vec4<bool>(var_2.b.x, false, var_2.b.x, false)), var_2.c), var_2, Struct_2(Struct_1(1i, var_2.b, vec2<i32>(17779i, u_input.e.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 261f, var_1.x, var_1.x)), true))), _wgslsmith_f_op_f32(step(var_1.x, -506f)));
    let var_4 = !vec4<bool>(any(func_2().b), !any(var_2.b.wy), all(!var_3.d.a.b.zwz), ~_wgslsmith_dot_vec2_u32(vec2<u32>(72296u, 4294967295u), u_input.c) < ~0u);
    var_3 = Struct_3(firstLeadingBit(var_3.a), ~reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.e.x, var_3.b.x, var_3.b.x, -1i), var_3.b)) | vec4<i32>(u_input.e.x, _wgslsmith_dot_vec2_i32(-u_input.e.yx, u_input.e.xx), -(i32(-1i) * -2147483647i), u_input.e.x), ~firstTrailingBit(_wgslsmith_sub_i32(u_input.e.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a, -58312i), vec2<i32>(-7710i, u_input.e.x)))), Struct_2(Struct_1(max(countOneBits(var_2.c.x), 1i), vec4<bool>(func_3(u_input.b), select(true, false, var_2.b.x), false, false), -select(u_input.e.wz, var_3.b.yw, vec2<bool>(var_2.b.x, var_2.b.x))), _wgslsmith_f_op_vec4_f32(var_3.d.b + _wgslsmith_f_op_vec4_f32(vec4<f32>(-277f, var_1.x, var_3.d.b.x, -658f) + _wgslsmith_f_op_vec4_f32(-var_3.d.b))), !func_2().b.x), _wgslsmith_div_f32(_wgslsmith_div_f32(var_3.d.b.x, -1000f), -1445f));
    let var_5 = any(!var_4.zwx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_3.e), _wgslsmith_dot_vec3_u32(select(u_input.b, ~vec3<u32>(30409u, u_input.b.x, var_3.a), var_4.xyy), abs(vec3<u32>(var_3.a, 17000u, var_3.a)) | u_input.b), -2147483647i);
}

