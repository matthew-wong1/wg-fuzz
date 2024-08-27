struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_2,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)), Struct_4(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false)), Struct_4(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)), Struct_4(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), Struct_4(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false)), Struct_4(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false)), Struct_4(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false)), Struct_4(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true)), Struct_4(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false)), Struct_4(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false)));

var<private> global1: array<Struct_3, 11>;

var<private> global2: f32 = 979f;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> vec4<i32> {
    global1 = array<Struct_3, 11>();
    var var_0 = ~_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a.x, ~u_input.a.x, u_input.a.x << (13669u % 32u)), ~vec3<u32>(~15926u, 7480u, 4294967295u));
    global1 = array<Struct_3, 11>();
    var var_1 = -76528i;
    let var_2 = !(!select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), false), true), vec4<bool>(true, true, true, true), select(true, false, true)));
    return min(~vec4<i32>(u_input.c, u_input.c, u_input.c, abs(-2147483647i)), _wgslsmith_add_vec4_i32(u_input.b, u_input.b));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: i32, arg_3: vec2<f32>) -> vec2<u32> {
    let var_0 = arg_0;
    return vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.yx, ~u_input.a.yz | ~vec2<u32>(78407u, u_input.a.x)), _wgslsmith_div_vec2_u32(min(~vec2<u32>(54092u, 9104u), vec2<u32>(u_input.a.x, u_input.a.x)), firstTrailingBit(u_input.a.yy))), 1u ^ ~(~(~u_input.a.x)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: Struct_3) -> Struct_4 {
    let var_0 = ~u_input.b.x;
    let var_1 = (abs(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(var_0, var_0))) | u_input.b.yx) >> (func_3(true, abs(reverseBits(var_0)), 0i, vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-210f)))))) % vec2<u32>(32u));
    global0 = array<Struct_4, 10>();
    var var_2 = arg_2.c;
    global2 = _wgslsmith_f_op_f32(var_2.d.x * 1000f);
    return Struct_4(vec4<bool>(((arg_0.x <= var_2.b.b.x) && false) || (_wgslsmith_f_op_f32(-arg_1.x) >= _wgslsmith_f_op_f32(-157f + arg_2.c.c.x)), true, arg_2.a.e.x, !arg_2.e.e.x), var_2.a.e);
}

fn func_4(arg_0: f32, arg_1: Struct_4) -> f32 {
    global1 = array<Struct_3, 11>();
    var var_0 = abs(u_input.a.x);
    var var_1 = Struct_3(Struct_1(0u, max(vec2<u32>(u_input.a.x | 11259u, u_input.a.x), _wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.a.x), u_input.a.zx)), u_input.a.zw, false, vec4<bool>(false || all(arg_1.a.yyy), all(vec3<bool>(true, true, true)), arg_1.a.x | (arg_1.b.x && arg_1.a.x), true)), ~vec2<u32>(1u, 4294967295u), Struct_2(Struct_1(~1u, ~(~vec2<u32>(u_input.a.x, u_input.a.x)), u_input.a.xy, true, !arg_1.a), Struct_1(abs(1u >> (1u % 32u)), u_input.a.yy, u_input.a.zx, !(arg_1.b.x & false), arg_1.b), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) + vec3<f32>(1400f, -284f, -1000f))))), vec4<f32>(_wgslsmith_f_op_f32(round(-1008f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -1078f)), arg_0, arg_0)), firstLeadingBit(vec2<u32>(17999u >> (_wgslsmith_dot_vec4_u32(u_input.a, u_input.a) % 32u), u_input.a.x << (~32868u % 32u))), Struct_1(14659u, u_input.a.xy, reverseBits(~vec2<u32>(0u, u_input.a.x)), arg_1.a.x, arg_1.b));
    let var_2 = u_input.b.zwx;
    global2 = _wgslsmith_div_f32(var_1.c.c.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-906f)), _wgslsmith_f_op_f32(f32(-1f) * -375f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.c.d.x))))))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_1.c.c.x)), _wgslsmith_f_op_f32(select(var_1.c.d.x, 264f, false)), false)) - _wgslsmith_f_op_f32(sign(1151f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_i32(func_1() ^ u_input.b, abs(firstLeadingBit(vec4<i32>(func_1().x, -2147483647i, -24556i, -1i))));
    let var_1 = !(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(258f - -140f)), _wgslsmith_f_op_f32(215f + _wgslsmith_f_op_f32(ceil(-1000f))))) <= _wgslsmith_f_op_f32(f32(-1f) * -1114f));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(109f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 1132f)) - _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(f32(-1f) * -1182f), func_2(u_input.a.wxw, vec2<f32>(572f, 175f), Struct_3(Struct_1(u_input.a.x, u_input.a.wx, u_input.a.yy, true, vec4<bool>(true, false, false, true)), u_input.a.zz, Struct_2(Struct_1(66897u, vec2<u32>(33879u, 65434u), vec2<u32>(u_input.a.x, 0u), var_1, vec4<bool>(var_1, var_1, false, true)), Struct_1(u_input.a.x, vec2<u32>(4294967295u, 82u), u_input.a.ww, false, vec4<bool>(false, false, var_1, var_1)), vec3<f32>(-153f, 195f, 1140f), vec4<f32>(-373f, -1090f, 616f, 525f)), u_input.a.wy, Struct_1(1u, vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yy, true, vec4<bool>(var_1, true, var_1, false)))))))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(f32(-1f) * -1939f))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-400f))) + 964f)) * -654f);
    var var_3 = vec3<i32>(-u_input.c, 27457i, u_input.c);
    global1 = array<Struct_3, 11>();
    var var_4 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(318f, 1029f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1614f, 1160f)), vec2<f32>(1f, 1f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(261f, 627f))))))), u_input.a.x, min(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_clamp_vec2_u32(u_input.a.xy, vec2<u32>(0u, 19392u), u_input.a.xx)), u_input.a.xx), (vec2<u32>(u_input.a.x, u_input.a.x) ^ vec2<u32>(55286u, 67979u)) | u_input.a.zz), _wgslsmith_dot_vec4_u32(~u_input.a, ~countOneBits(vec4<u32>(51514u, u_input.a.x, u_input.a.x, 10939u)) >> (~u_input.a % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(466f, 316f, 423f, 658f))) + vec4<f32>(_wgslsmith_f_op_f32(round(-934f)), _wgslsmith_f_op_f32(f32(-1f) * -321f), -1632f, -1000f))));
}

