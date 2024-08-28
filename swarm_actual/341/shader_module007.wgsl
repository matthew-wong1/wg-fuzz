struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<bool>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(1520f, 1981f), vec2<f32>(128f, 1119f), vec2<f32>(444f, -498f), vec2<f32>(397f, 174f), vec2<f32>(1067f, 1109f), vec2<f32>(808f, -109f), vec2<f32>(456f, -833f), vec2<f32>(1000f, -304f), vec2<f32>(683f, 362f), vec2<f32>(-1000f, -871f), vec2<f32>(690f, 1236f), vec2<f32>(1380f, 103f), vec2<f32>(406f, -637f));

var<private> global1: array<Struct_2, 15>;

var<private> global2: i32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> u32 {
    global0 = array<vec2<f32>, 13>();
    let var_0 = Struct_2(vec2<i32>(_wgslsmith_mult_i32(~1i, 0i), select(u_input.c.x, u_input.c.x, !arg_0)), arg_1, !vec4<bool>(arg_0, true, arg_1.b <= 1u, arg_0), _wgslsmith_f_op_f32(arg_1.c - 673f), arg_1);
    global2 = _wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(~(-u_input.c.xyy), vec3<i32>(~(-60541i), _wgslsmith_mod_i32(var_0.a.x, u_input.c.x), u_input.c.x)), _wgslsmith_add_vec3_i32(u_input.c.wzz, _wgslsmith_mod_vec3_i32(-u_input.c.ywx, vec3<i32>(-1i) * -vec3<i32>(u_input.c.x, 0i, 19385i))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2551f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c + 1329f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(245f)) + -1000f))), _wgslsmith_sub_u32(~_wgslsmith_div_u32(firstLeadingBit(arg_1.b), 22075u), var_0.b.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b.c))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_0.b.a, _wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.a.x, var_1.a.x, arg_1.a.x, var_1.a.x), _wgslsmith_f_op_vec4_f32(select(var_0.b.a, var_1.a, false)))))), ~_wgslsmith_add_u32(var_1.b, 1u), var_1.c);
    return _wgslsmith_add_u32(0u, _wgslsmith_clamp_u32(1u, var_2.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_2.b, 0u) << (u_input.b.xxx % vec3<u32>(32u)), u_input.b.ywy)));
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    global1 = array<Struct_2, 15>();
    let var_0 = Struct_2(-countOneBits(abs(select(arg_0.zz, arg_0.yz, vec2<bool>(true, false)))), Struct_1(vec4<f32>(155f, 371f, -1939f, 270f), _wgslsmith_dot_vec2_u32(u_input.b.xy, vec2<u32>(13084u, u_input.a.x)) | (firstTrailingBit(u_input.a.x) ^ func_3(false, Struct_1(vec4<f32>(871f, -352f, -1005f, 1000f), 93187u, -271f))), _wgslsmith_f_op_f32(-1f)), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(true, false, false))), vec4<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), false, false, !all(vec3<bool>(false, false, true)))), _wgslsmith_f_op_f32(-1752f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(124f + -460f), -173f))), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1499f, -1239f, -534f, -862f)))))), ~(~u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(367f * -989f), -680f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1298f))))));
    var var_1 = select(select(vec2<i32>(~0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-3919i, arg_0.x, 1i, arg_0.x), vec4<i32>(var_0.a.x, arg_0.x, u_input.c.x, var_0.a.x))), abs(-u_input.c.zx), vec2<bool>(arg_0.x > var_0.a.x, true)) ^ vec2<i32>(-u_input.c.x, _wgslsmith_clamp_i32(firstLeadingBit(2147483647i), var_0.a.x, countOneBits(var_0.a.x))), var_0.a, select(var_0.c.yz, !(!(!var_0.c.xw)), var_0.c.x));
    var var_2 = var_0.e;
    let var_3 = select(vec4<i32>(_wgslsmith_mod_i32(~(~(-18047i)), -13760i), -reverseBits(arg_0.x), 1i, var_0.a.x), firstLeadingBit(vec4<i32>(-var_0.a.x, 1i, countOneBits(_wgslsmith_mod_i32(var_1.x, var_1.x)), 17249i >> (_wgslsmith_sub_u32(u_input.a.x, 21330u) % 32u))), var_0.c);
    return var_0.e;
}

fn func_1(arg_0: f32) -> bool {
    global2 = abs(_wgslsmith_div_i32(-2147483647i, -22855i));
    let var_0 = func_2(vec3<i32>(1i, abs(~reverseBits(u_input.c.x)), 1i));
    let var_1 = min(_wgslsmith_add_i32(u_input.c.x, firstLeadingBit(-u_input.c.x)), _wgslsmith_clamp_i32(-2147483647i, ~(-25279i), u_input.c.x)) << (_wgslsmith_clamp_u32(var_0.b, firstLeadingBit(0u), var_0.b) % 32u);
    global2 = 4042i;
    global0 = array<vec2<f32>, 13>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.c.x;
    global2 = -1i;
    global2 = u_input.c.x;
    var var_0 = Struct_2(abs(u_input.c.xy) << (u_input.b.wz % vec2<u32>(32u)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1263f + -228f)), _wgslsmith_f_op_f32(-350f + _wgslsmith_div_f32(1000f, -1361f)), _wgslsmith_f_op_f32(656f * -797f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -623f))), ~u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1366f)), _wgslsmith_f_op_f32(744f - -488f))))), vec4<bool>(select(true, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -11889i), u_input.c.xz) >= reverseBits(0i), any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)))), false, func_1(755f), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(373f * -168f))) + _wgslsmith_f_op_f32(733f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-253f, 515f) - _wgslsmith_div_f32(1258f, 1620f)))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(858f, 425f))), _wgslsmith_f_op_f32(f32(-1f) * -980f), _wgslsmith_f_op_f32(f32(-1f) * -693f), _wgslsmith_f_op_f32(1248f - -254f)), u_input.b.x & 1u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -603f) - _wgslsmith_f_op_f32(floor(128f)))))));
    var var_1 = global1[_wgslsmith_index_u32(u_input.a.x, 15u)];
    global2 = _wgslsmith_clamp_i32(abs(1i), abs(_wgslsmith_sub_i32(firstLeadingBit(u_input.c.x), _wgslsmith_mult_i32(-u_input.c.x, -20984i))), 0i);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(~u_input.c.x, var_0.a.x, _wgslsmith_mult_i32(var_0.a.x, ~var_1.a.x), var_1.a.x), vec2<i32>(-27496i, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(var_1.a.x, 0i), select(vec2<i32>(2147483647i, -33771i), vec2<i32>(u_input.c.x, u_input.c.x), vec2<bool>(var_0.c.x, var_0.c.x))), var_0.a)), 10589u, vec4<f32>(var_0.d, var_0.b.c, _wgslsmith_f_op_f32(-var_0.b.c), 1000f));
}

