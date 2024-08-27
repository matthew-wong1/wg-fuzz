struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<i32>,
    c: Struct_3,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_5) -> f32 {
    var var_0 = select(vec4<u32>(~select(28867u, 40764u, true), firstLeadingBit(_wgslsmith_mult_u32(u_input.b.x, 1u)), arg_1.c.b.x, max(_wgslsmith_dot_vec3_u32(vec3<u32>(11275u, arg_1.c.b.x, arg_1.a.b.x), arg_1.c.b), u_input.a.x)), firstTrailingBit(~(vec4<u32>(u_input.b.x, arg_1.c.b.x, 4294967295u, u_input.a.x) & vec4<u32>(34499u, 55096u, u_input.b.x, u_input.b.x))), true) >> (~select(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a.c, 48390u), arg_1.c.b.xx), u_input.a.x, arg_1.a.b.x >> (1u % 32u), 31109u), ~vec4<u32>(u_input.b.x, arg_1.c.b.x, u_input.a.x, arg_1.c.b.x), select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true)))) % vec4<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1344f + arg_1.e.x), _wgslsmith_f_op_f32(round(1000f))), _wgslsmith_f_op_vec2_f32(abs(arg_1.d))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.e.xz, vec2<f32>(arg_0, arg_1.a.a.x)) * _wgslsmith_f_op_vec2_f32(select(arg_1.e.yy, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0, -781f))), all(vec2<bool>(false, false)))))) * _wgslsmith_div_vec2_f32(arg_1.e.xx, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.e.x, 1000f) * vec2<f32>(arg_0, 423f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, arg_0), arg_1.d, vec2<bool>(true, false))), vec2<bool>(true, false)))))));
    var_0 = ~_wgslsmith_mult_vec4_u32(firstTrailingBit(abs(vec4<u32>(26097u, u_input.b.x, u_input.a.x, u_input.b.x) & u_input.a)), select(u_input.a, ~abs(u_input.a), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), false))));
    var var_2 = !(!(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), true)));
    let var_3 = Struct_1(_wgslsmith_div_f32(-1232f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - 715f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(223f, -1000f)) + _wgslsmith_f_op_f32(min(800f, arg_0))))));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(581f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.a), _wgslsmith_f_op_f32(-var_3.a)))))), 1f));
}

fn func_2(arg_0: u32) -> i32 {
    let var_0 = ~4294967295u;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1298f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1968f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1041f, 1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-743f, -314f)))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-var_1.ww);
    let var_3 = Struct_5(Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -570f, var_1.x, var_1.x)), select(u_input.a.xw, u_input.a.xz, true), u_input.a.x), u_input.d, Struct_3(_wgslsmith_dot_vec3_i32(reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, u_input.d.x, u_input.c), vec3<i32>(u_input.d.x, 44545i, -2147483647i), vec3<i32>(u_input.d.x, 20984i, u_input.d.x))), ~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d.x, -1i, -2147483647i), vec3<i32>(u_input.c, u_input.d.x, u_input.c))), countOneBits(u_input.a.yyw)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-854f + 809f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(var_2.x, Struct_5(Struct_4(vec4<f32>(-675f, 118f, -860f, var_2.x), vec2<u32>(u_input.b.x, arg_0), 1u), vec2<i32>(14151i, u_input.d.x), Struct_3(u_input.d.x, u_input.a.wyw), var_2, vec3<f32>(var_1.x, var_1.x, 172f)))))), var_1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-653f, var_2.x, var_1.x)))));
    let var_4 = var_3.c;
    return u_input.c;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2) -> vec3<i32> {
    var var_0 = -u_input.c;
    var_0 = -(~func_2(arg_1.a.x >> (u_input.b.x % 32u)) | 0i);
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.c.a), _wgslsmith_f_op_f32(-388f - arg_1.c.a), -677f)))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1853f, _wgslsmith_f_op_f32(-675f * var_1.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.c.a), _wgslsmith_f_op_f32(arg_1.c.a + var_1.x), all(arg_1.b))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c.a, 990f, var_1.x) + vec3<f32>(arg_1.c.a, -1713f, 216f))))));
    return vec3<i32>(u_input.d.x, u_input.d.x, max(-1i, _wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.d), -u_input.d)) | func_2(1u));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: vec3<i32>) -> Struct_4 {
    var var_0 = Struct_5(Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-182f, 2061f, 1610f, 338f) * vec4<f32>(289f, 199f, -1192f, -1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(395f, -1157f, 235f, 607f), vec4<f32>(586f, -149f, 337f, 1283f)))), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.xx, arg_2.b.yy), arg_2.b.yx), _wgslsmith_div_vec2_u32(vec2<u32>(arg_2.b.x, 5357u), vec2<u32>(1u, 1u))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b.x, u_input.b.x, 14639u, 23902u), u_input.a)), ~(~(arg_3.yy | vec2<i32>(-3717i, -1i))) | (_wgslsmith_mult_vec2_i32(vec2<i32>(58409i, 0i), arg_3.zy) | u_input.d), Struct_3(_wgslsmith_dot_vec2_i32(~arg_1.yz, ~arg_1.zz), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.b.x, 122777u, arg_2.b.x), select(u_input.a.yxz, ~u_input.a.xzy, any(vec3<bool>(arg_0.x, true, false))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1422f, -732f) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(803f, -563f) + vec2<f32>(1925f, 560f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1235f, -457f)), arg_0.yx))) * vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(964f, 209f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -150f) - _wgslsmith_f_op_f32(min(517f, _wgslsmith_f_op_f32(sign(585f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(1682f, 617f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -689f))));
    var var_1 = vec4<u32>(_wgslsmith_mod_u32(~(~u_input.b.x), min(~38151u, ~u_input.b.x)), reverseBits(~u_input.b.x), 0u, var_0.a.c) | ~abs(u_input.a);
    var_0 = Struct_5(Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.x, var_0.a.a.x, var_0.e.x, 658f))), var_0.a.b, _wgslsmith_clamp_u32(firstTrailingBit(~14974u), _wgslsmith_div_u32(arg_2.b.x, ~4294967295u), _wgslsmith_mult_u32(_wgslsmith_div_u32(72782u, var_1.x), var_1.x << (2147u % 32u)))), -_wgslsmith_mod_vec2_i32(u_input.d, _wgslsmith_add_vec2_i32(vec2<i32>(69651i, arg_2.a), vec2<i32>(-17267i, u_input.c)) << (var_1.wy % vec2<u32>(32u))), arg_2, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.e.x, var_0.e.x))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(341f, var_0.d.x)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -943f), 1045f))), var_0.e);
    let var_2 = Struct_5(Struct_4(vec4<f32>(_wgslsmith_div_f32(-1413f, _wgslsmith_f_op_f32(-var_0.a.a.x)), var_0.a.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1117f * 300f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x * 1481f))), ~((vec2<u32>(71442u, var_0.c.b.x) & var_1.xz) << (_wgslsmith_div_vec2_u32(vec2<u32>(58430u, var_0.c.b.x), vec2<u32>(68630u, 25167u)) % vec2<u32>(32u))), ~_wgslsmith_div_u32(19827u, u_input.a.x)), reverseBits(-vec2<i32>(func_1(vec3<u32>(0u, var_1.x, u_input.b.x), Struct_2(vec4<u32>(6477u, 5853u, u_input.a.x, 0u), vec4<bool>(false, arg_0.x, false, true), Struct_1(var_0.e.x), arg_0.x)).x, -47117i)), Struct_3(reverseBits(~(-20977i)), u_input.a.xzx), var_0.e.xy, _wgslsmith_f_op_vec3_f32(floor(var_0.a.a.zxx)));
    var var_3 = vec3<i32>(u_input.d.x, max(min(u_input.d.x, max(countOneBits(arg_3.x), 42581i)), arg_3.x), arg_3.x);
    return var_0.a;
}

fn func_5(arg_0: Struct_5) -> Struct_3 {
    var var_0 = arg_0.c;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1471f) - arg_0.e.x))))));
    let var_2 = abs(vec3<i32>(0i >> (0u % 32u), -23109i, var_0.a));
    let var_3 = firstLeadingBit(vec4<i32>(func_2(4294967295u), -(~(var_0.a >> (1u % 32u))), select(countOneBits(_wgslsmith_sub_i32(-54915i, 29281i)), _wgslsmith_add_i32(firstLeadingBit(-6550i), -2147483647i), 21133i > u_input.d.x), ~_wgslsmith_sub_i32(min(2147483647i, 1i), func_1(arg_0.c.b, Struct_2(u_input.a, vec4<bool>(true, true, false, true), Struct_1(var_1.a), true)).x)));
    let var_4 = -1439f;
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_5(func_4(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), u_input.a.x >= u_input.b.x), firstLeadingBit(func_1(u_input.a.zyy, Struct_2(u_input.a, vec4<bool>(true, true, false, true), Struct_1(941f), false))), Struct_3(~5306i, vec3<u32>(u_input.b.x, 8550u, 50974u)), ~(~vec3<i32>(1i, 20746i, -1i))), _wgslsmith_mult_vec2_i32(u_input.d, vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.d, u_input.d), 1i)), Struct_3(func_2(14289u), vec3<u32>(~u_input.a.x, ~0u, u_input.a.x)), func_4(vec3<bool>(true, true, true), firstLeadingBit(func_1(u_input.a.yzz, Struct_2(vec4<u32>(1u, 1u, 1u, u_input.a.x), vec4<bool>(true, true, true, true), Struct_1(-408f), false))), Struct_3(-1i, reverseBits(vec3<u32>(5455u, 4294967295u, u_input.b.x))), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, u_input.c, 25632i) | vec3<i32>(2147483647i, -10297i, u_input.d.x), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, u_input.d.x, u_input.c), vec3<i32>(1i, u_input.c, u_input.c)))).a.wx, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(713f, -1464f, 812f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -255f, -1277f)))))));
    let var_1 = var_0.b.x;
    var_0 = func_5(Struct_5(Struct_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(815f, 343f, 250f, -269f), vec4<f32>(-1135f, 1199f, 1170f, 152f), false)))), max(var_0.b.xx, ~vec2<u32>(49144u, u_input.a.x)), 48879u), min(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(16509i, u_input.c)) >> (~vec2<u32>(u_input.b.x, 0u) % vec2<u32>(32u)), abs(-u_input.d)), func_5(Struct_5(func_4(vec3<bool>(false, true, true), vec3<i32>(49311i, u_input.d.x, 2147483647i), Struct_3(u_input.d.x, var_0.b), vec3<i32>(u_input.c, var_0.a, -1i)), -u_input.d, func_5(Struct_5(Struct_4(vec4<f32>(-1670f, -324f, 895f, 258f), u_input.a.yz, u_input.a.x), vec2<i32>(var_0.a, -1i), Struct_3(24495i, vec3<u32>(var_0.b.x, var_0.b.x, u_input.b.x)), vec2<f32>(2210f, -583f), vec3<f32>(1093f, 2407f, -289f))), vec2<f32>(-1000f, 234f), vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(741f * -1259f), _wgslsmith_f_op_f32(f32(-1f) * -136f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(561f, -274f, 485f) * vec3<f32>(1000f, 134f, 2103f)) - vec3<f32>(1000f, -1261f, -861f)), vec3<f32>(-643f, _wgslsmith_f_op_f32(546f + 1702f), -100f))));
    let var_2 = Struct_1(-514f);
    var var_3 = -1056f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(_wgslsmith_add_i32(-(~var_0.a), -29628i), ~select(var_0.a, u_input.d.x, any(vec4<bool>(false, false, true, false)))), vec2<u32>(1u, u_input.a.x), ~(-_wgslsmith_mod_vec2_i32(u_input.d, -vec2<i32>(u_input.d.x, u_input.d.x))), func_5(Struct_5(func_4(vec3<bool>(true, true, true), firstLeadingBit(vec3<i32>(var_0.a, -2147483647i, u_input.d.x)), Struct_3(var_0.a, vec3<u32>(u_input.a.x, 19822u, var_0.b.x)), vec3<i32>(var_0.a, var_0.a, var_0.a)), _wgslsmith_mult_vec2_i32(firstLeadingBit(u_input.d), reverseBits(vec2<i32>(u_input.d.x, var_0.a))), func_5(Struct_5(Struct_4(vec4<f32>(var_2.a, 122f, -795f, 1000f), var_0.b.xy, var_0.b.x), vec2<i32>(var_0.a, -1i), Struct_3(39304i, var_0.b), vec2<f32>(var_2.a, 2075f), vec3<f32>(var_2.a, -603f, var_2.a))), _wgslsmith_div_vec2_f32(vec2<f32>(-1830f, -236f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, -1467f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1517f, var_2.a, -1272f)))))).a);
}

