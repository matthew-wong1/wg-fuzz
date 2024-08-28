struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 10> = array<vec4<u32>, 10>(vec4<u32>(0u, 0u, 1u, 0u), vec4<u32>(1u, 59957u, 0u, 4294967295u), vec4<u32>(2011u, 23919u, 54565u, 4294967295u), vec4<u32>(0u, 35292u, 32689u, 43007u), vec4<u32>(14334u, 0u, 0u, 51569u), vec4<u32>(0u, 1u, 6371u, 0u), vec4<u32>(1u, 1u, 36288u, 18013u), vec4<u32>(1u, 55673u, 12754u, 9293u), vec4<u32>(0u, 0u, 31866u, 4294967295u), vec4<u32>(0u, 5178u, 60779u, 0u));

var<private> global1: array<u32, 12> = array<u32, 12>(40586u, 29843u, 1u, 1u, 46335u, 3082u, 29299u, 0u, 4294967295u, 0u, 6318u, 6957u);

var<private> global2: Struct_1 = Struct_1(9958u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_4) -> f32 {
    let var_0 = vec4<bool>(false, true & (u_input.d.x >= ~(~arg_2.c.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(round(-705f)))) - _wgslsmith_f_op_f32(round(-862f))) < -651f, !arg_2.b.x);
    global0 = array<vec4<u32>, 10>();
    var var_1 = all(vec3<bool>(false, !arg_2.b.x, !(!var_0.x)));
    global0 = array<vec4<u32>, 10>();
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1068f, 1000f)), _wgslsmith_f_op_f32(-146f + -278f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 1313f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-817f, -1047f, -206f) * vec3<f32>(1252f, -3098f, 403f)) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -120f), _wgslsmith_f_op_f32(-547f - -827f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-556f, 2002f, -951f) + vec3<f32>(-2317f, 305f, 705f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1673f, -174f, 1537f))), vec3<f32>(-1055f, _wgslsmith_div_f32(-708f, 163f), _wgslsmith_f_op_f32(ceil(953f)))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -239f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(291f))));
}

fn func_2(arg_0: Struct_4) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(i32(-1i) * -10744i, max(_wgslsmith_div_i32(~u_input.e.x, -arg_0.a.b), 556i), arg_0)) - -1831f);
    let var_1 = ~(-abs(~(~vec2<i32>(arg_0.a.b, u_input.e.x))));
    var var_2 = arg_0.a.b | (i32(-1i) * -reverseBits(-var_1.x));
    let var_3 = firstLeadingBit(4294967295u);
    let var_4 = arg_0.a.b;
    return Struct_2(arg_0.a.a, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, -45761i, var_1.x), u_input.a.www), ~reverseBits(61039u & ~global1[_wgslsmith_index_u32(global2.a, 12u)]), 1u);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3) -> i32 {
    global1 = array<u32, 12>();
    global1 = array<u32, 12>();
    var var_0 = _wgslsmith_f_op_f32(-1765f + 1f);
    var var_1 = ~u_input.a.xx;
    global0 = array<vec4<u32>, 10>();
    return abs(-2147483647i) << (_wgslsmith_mult_u32(u_input.b.x, 0u) % 32u);
}

fn func_1(arg_0: Struct_4) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2233f, 411f, -1336f, 327f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1495f, -947f, -1017f, -2106f) - vec4<f32>(1116f, -1592f, 1341f, 886f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1427f, 1000f, -1472f, -1911f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1597f, -775f, 473f, 593f))), !all(arg_0.b))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1647f, 602f, 618f, -163f) + vec4<f32>(268f, 253f, 2103f, 160f))))))));
    var var_1 = ~_wgslsmith_add_u32(~global1[_wgslsmith_index_u32(u_input.b.x, 12u)], u_input.b.x);
    global1 = array<u32, 12>();
    let var_2 = vec2<i32>(firstTrailingBit(func_4(-arg_0.a.b, func_2(Struct_4(arg_0.a, vec3<bool>(false, arg_0.b.x, arg_0.b.x), arg_0.c)), Struct_3(arg_0.a))), -36569i) >> (~u_input.b.wy % vec2<u32>(32u));
    global0 = array<vec4<u32>, 10>();
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(u_input.a.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1049f, -168f, -758f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-337f, 1251f, -881f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1000f, 1020f), _wgslsmith_f_op_f32(func_1(Struct_4(Struct_2(Struct_1(1u), u_input.c, 1u, 1u), vec3<bool>(true, false, false), Struct_1(4294967295u)))), _wgslsmith_f_op_f32(1115f - -580f)) * vec3<f32>(-1304f, _wgslsmith_div_f32(845f, -442f), _wgslsmith_f_op_f32(-346f - -2074f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(607f, 239f, -945f))), vec3<f32>(363f, -2074f, -1305f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-2319f, 333f, 752f) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(262f, -126f, -493f)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(661f)) - 1483f), var_1.x) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_1.x, 255f)), _wgslsmith_f_op_f32(f32(-1f) * -1577f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - 150f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x))), var_1.x));
    let var_2 = func_2(Struct_4(Struct_2(func_2(Struct_4(Struct_2(Struct_1(38355u), 2147483647i, u_input.b.x, 0u), vec3<bool>(true, true, false), Struct_1(global1[_wgslsmith_index_u32(9755u, 12u)]))).a, select(1i, ~2147483647i, any(vec2<bool>(true, false))), global2.a, ~(global2.a << (u_input.d.x % 32u))), vec3<bool>(_wgslsmith_f_op_f32(-var_1.x) < _wgslsmith_f_op_f32(min(-135f, -510f)), select(false, true, false) | true, !(u_input.c == var_0)), Struct_1(abs(_wgslsmith_mod_u32(global2.a, 0u)))));
    let var_3 = _wgslsmith_sub_i32(var_2.b, ~_wgslsmith_sub_i32(_wgslsmith_div_i32(firstTrailingBit(1i), -8805i), var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), 2812f)), -firstTrailingBit(-2147483647i), vec3<f32>(741f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * var_1.x), _wgslsmith_f_op_f32(-818f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.e.x, -6016i, Struct_4(Struct_2(var_2.a, 40639i, 1u, u_input.d.x), vec3<bool>(true, true, true), var_2.a))) + _wgslsmith_f_op_f32(trunc(1824f))))), 134f, var_2.b);
}

