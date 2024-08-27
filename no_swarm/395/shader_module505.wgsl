struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: vec3<bool>,
    d: vec2<f32>,
    e: i32,
}

struct Struct_5 {
    a: i32,
    b: vec2<i32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3) -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-511f, -1000f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1418f)), -1104f, 944f);
    global0 = !(!select(select(vec3<bool>(global0.x, false, global0.x), select(vec3<bool>(false, global0.x, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, global0.x), arg_0.a), !arg_0.a), vec3<bool>(global0.x, !global0.x, true), true));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 817f, -1191f, var_0.x) + vec4<f32>(var_0.x, 170f, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1247f, var_0.x, var_0.x, var_0.x) * vec4<f32>(-272f, 173f, var_0.x, -448f)))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1045f, var_0.x, 378f, _wgslsmith_f_op_f32(-var_0.x))))));
    global0 = vec3<bool>(all(vec2<bool>(true, true)), global0.x, arg_0.a);
    global0 = select(vec3<bool>(true, false, true), vec3<bool>(select(true, true, !arg_0.a), any(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, global0.x, true, global0.x)), vec4<bool>(arg_0.a, global0.x, arg_0.a, true), select(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, false), vec4<bool>(arg_0.a, global0.x, global0.x, arg_0.a), global0.x))), true), !vec3<bool>(arg_0.a, u_input.b == _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, arg_0.c.x, u_input.b), vec4<u32>(u_input.b, 81386u, 0u, u_input.b)), !select(arg_0.a, global0.x, global0.x)));
    return ~(u_input.b | 31250u);
}

fn func_2(arg_0: Struct_4, arg_1: vec2<f32>) -> bool {
    var var_0 = arg_0.c.x;
    let var_1 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1638f, arg_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * arg_0.a)), _wgslsmith_f_op_f32(trunc(arg_0.a))), func_3(Struct_3(true, -u_input.c.yx, firstTrailingBit(vec2<u32>(arg_0.b, 1u)), u_input.c.x))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.a.a.x)))), 579f)));
    var var_3 = Struct_5(_wgslsmith_sub_i32(-_wgslsmith_sub_i32(reverseBits(46472i), -15359i), 32145i), ~reverseBits(-vec2<i32>(arg_0.e, arg_0.e)), arg_1.x);
    let var_4 = var_1.a.a.yz;
    return all(vec2<bool>(arg_0.c.x, all(!vec4<bool>(global0.x, arg_0.c.x, global0.x, true)))) && (_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -713f) - arg_0.d.x)));
}

fn func_4(arg_0: bool) -> Struct_4 {
    var var_0 = u_input.a >= ~_wgslsmith_mod_i32(u_input.a, u_input.c.x);
    var_0 = !(!arg_0);
    let var_1 = u_input.a;
    var var_2 = !arg_0;
    let var_3 = Struct_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-202f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2463f) - 510f)))), firstTrailingBit(u_input.b), !select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(!global0.x, u_input.b <= 43435u, any(global0.xz)), global0.x), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-616f, -1000f) * _wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(136f * 1916f), _wgslsmith_f_op_f32(abs(264f)))))), 19457i);
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_3.a, var_3.d.x)))))), u_input.b, select(var_3.c, vec3<bool>(841f > var_3.a, false, all(var_3.c)), !vec3<bool>(u_input.b >= var_3.b, true, true)), vec2<f32>(_wgslsmith_f_op_f32(max(var_3.d.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-2368f)), -1194f, true)))), var_3.d.x), _wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-61054i, u_input.c.x), u_input.c.zy) ^ (var_3.e >> (0u % 32u)), select(22981i, 34999i, global0.x) >> (_wgslsmith_add_u32(7009u, 4136u) % 32u)), -1i));
}

fn func_1(arg_0: Struct_5, arg_1: vec4<bool>, arg_2: bool, arg_3: bool) -> vec2<bool> {
    let var_0 = func_4((!any(arg_1) & func_2(Struct_4(arg_0.c, u_input.b, arg_1.zwx, vec2<f32>(arg_0.c, -613f), -6294i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(793f, 201f)))) && all(!(!arg_1.zzw)));
    var var_1 = false;
    let var_2 = Struct_2(Struct_1(vec3<f32>(-222f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1677f * 399f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1385f - -910f))), _wgslsmith_dot_vec3_u32(vec3<u32>(func_4(arg_1.x).b, _wgslsmith_mult_u32(u_input.b, 29562u), _wgslsmith_div_u32(4294967295u, 51369u)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(u_input.b, 116u, u_input.b), vec3<u32>(0u, 4294967295u, u_input.b)))));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.a.x, -1908f, arg_0.c) - var_2.a.a), var_2.a.a) * vec3<f32>(749f, _wgslsmith_f_op_f32(trunc(441f)), _wgslsmith_f_op_f32(var_2.a.a.x + var_2.a.a.x))), _wgslsmith_div_u32(0u, ~(~var_0.b))));
    let var_4 = Struct_4(_wgslsmith_div_f32(var_0.d.x, -623f), 1515u, arg_1.xxx, var_0.d, arg_0.b.x);
    return var_4.c.xz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec4<bool>(1u != u_input.b, global0.x, any(select(vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(true, global0.x, true, true), true)), global0.x), vec4<bool>(false, global0.x, (u_input.c.x & -1i) < -37323i, global0.x), any(select(func_1(Struct_5(u_input.c.x, u_input.c.xy, 814f), vec4<bool>(false, global0.x, true, false), global0.x, true), func_4(global0.x).c.xz, func_4(global0.x).c.yx)));
    global0 = select(!var_0.wxy, select(!(!var_0.ywx), var_0.yzx, select(func_4(true).c, var_0.wxy, !var_0.xxz)), !var_0.xzx);
    global0 = vec3<bool>(false, !global0.x, any(!(!vec4<bool>(true, var_0.x, true, false))));
    let var_1 = ~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.c.x, -15817i), u_input.c);
    let var_2 = Struct_5(-2147483647i, _wgslsmith_add_vec2_i32(~(-(vec2<i32>(-3027i, -50874i) ^ vec2<i32>(var_1.x, -1i))), reverseBits(var_1.yy)), _wgslsmith_f_op_f32(f32(-1f) * -1659f));
    let var_3 = 0u >> ((u_input.b << (_wgslsmith_clamp_u32(_wgslsmith_mult_u32(max(u_input.b, u_input.b), u_input.b), u_input.b, u_input.b) % 32u)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c) - _wgslsmith_f_op_f32(-1023f + var_2.c)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-528f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1464f)))), _wgslsmith_f_op_f32(555f + _wgslsmith_f_op_f32(-var_2.c))));
}

