struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: u32,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_2,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(217f, -990f, 574f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: i32, arg_3: vec4<f32>) -> f32 {
    var var_0 = !(!(!vec3<bool>(true, true & arg_1, select(false, false, arg_0.b))));
    var var_1 = arg_0.a.x;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-387f, _wgslsmith_f_op_f32(max(-1000f, -1000f))))), global0.x);
    var var_3 = arg_0.a.x;
    let var_4 = Struct_1(vec2<bool>(any(vec4<bool>(arg_0.b | arg_1, arg_0.b, true, select(arg_0.b, true, var_0.x))), arg_1), ~arg_0.a, vec4<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.x - 136f))), _wgslsmith_f_op_f32(sign(-1823f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_3.x))), var_2.x), select(firstLeadingBit(vec2<i32>(u_input.b.x, 28027i)) & min(u_input.b, _wgslsmith_sub_vec2_i32(vec2<i32>(arg_2, arg_2), vec2<i32>(u_input.b.x, 31343i))), -abs(u_input.b) & firstTrailingBit(u_input.a.yy << (arg_0.a.xz % vec2<u32>(32u))), select(vec2<bool>(arg_0.b, u_input.c > arg_0.a.x), !var_0.xy, true & select(arg_0.b, true, arg_0.b))), ~(~arg_0.a.x) != 0u);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1322f)), arg_3.x));
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: bool, arg_3: Struct_3) -> vec4<f32> {
    let var_0 = arg_1;
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(~arg_3.c.b, var_0.c.e), all(!vec4<bool>(false, true, arg_1.c.e, false)), arg_3.c.d.x, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-arg_1.c.c), vec4<f32>(-280f, 699f, -1449f, -1245f))))), var_0.c.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1360f))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_3.c.c.x), 579f)), arg_3.c.c.x, _wgslsmith_f_op_f32(max(global0.x, arg_1.c.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)));
    let var_2 = Struct_2(_wgslsmith_div_vec4_u32(~(~vec4<u32>(0u, 32640u, u_input.c, var_0.c.b.x)), ~arg_3.c.b), (arg_1.c.a.x || (_wgslsmith_f_op_f32(min(arg_1.c.c.x, global0.x)) >= var_1.x)) | any(select(vec2<bool>(true, true), !arg_3.c.a, false)));
    var var_3 = Struct_3(arg_3.a, _wgslsmith_dot_vec2_i32(arg_3.c.d, ~arg_1.c.d), arg_3.c, _wgslsmith_div_u32(arg_1.d, 58719u) & (arg_3.c.b.x << (262u % 32u)), _wgslsmith_clamp_i32(-15844i, max(-14808i, -1i), ~arg_3.e));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(arg_1.c.c)));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: bool, arg_3: u32) -> f32 {
    var var_0 = Struct_2(vec4<u32>(arg_3, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, ~u_input.c, 0u, 4294967295u), vec4<u32>(arg_3, _wgslsmith_mod_u32(40938u, 30740u), 34008u & u_input.c, 1u)), arg_3), !all(select(!vec4<bool>(arg_2, true, false, arg_2), vec4<bool>(true, false, arg_2, arg_2), arg_1.x)));
    var var_1 = ~(~var_0.a.xwy);
    var var_2 = abs(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_add_u32(4294967295u, var_0.a.x), u_input.c, 1u) ^ var_0.a.zwy, vec3<u32>(120814u, _wgslsmith_dot_vec3_u32(var_0.a.xxw << (vec3<u32>(var_0.a.x, 0u, var_1.x) % vec3<u32>(32u)), var_0.a.xxw), u_input.c)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(sign(global0.x)))), _wgslsmith_f_op_f32(step(1220f, 1000f)));
}

fn func_5(arg_0: bool, arg_1: vec2<f32>, arg_2: vec4<u32>, arg_3: vec4<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(min(143f, 974f)))));
    var var_1 = Struct_2(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 2232u), arg_2.xx), select(~u_input.c, 11210u, true), _wgslsmith_mod_u32(u_input.c, arg_2.x) | 0u, arg_2.x) >> (select(select(select(arg_2, arg_2, arg_0), ~vec4<u32>(45694u, 4294967295u, u_input.c, arg_2.x), !arg_0), countOneBits(~vec4<u32>(arg_2.x, 56087u, 4294967295u, 4294967295u)), vec4<bool>(!arg_3.x, !arg_3.x, u_input.b.x < u_input.a.x, select(false, true, arg_0))) % vec4<u32>(32u)), true);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -1036f, var_0)) - vec3<f32>(-425f, -1154f, -139f)))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1422f, global0.x, 777f), vec3<f32>(_wgslsmith_f_op_f32(-var_0), var_0, _wgslsmith_f_op_f32(-global0.x)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(min(125f, -1026f)), 2283f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, var_0, var_0, -676f), vec4<f32>(global0.x, 333f, -1000f, arg_1.x)) * vec4<f32>(472f, -419f, var_0, arg_1.x))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0))), arg_1.x, _wgslsmith_f_op_f32(-global0.x)) * var_2.yzx);
    return all(select(!arg_3, !arg_3, arg_3.x));
}

fn func_1(arg_0: vec2<i32>, arg_1: i32) -> Struct_1 {
    var var_0 = ~(firstLeadingBit(~(~vec4<u32>(u_input.c, 133775u, u_input.c, u_input.c))) & abs(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 16813u), vec4<u32>(u_input.c, 67082u, u_input.c, u_input.c)) & firstLeadingBit(vec4<u32>(1u, u_input.c, u_input.c, 4294967295u))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, global0.x, -245f);
    var var_2 = func_5(false, vec2<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(var_1 * _wgslsmith_f_op_vec4_f32(func_2(arg_1, Struct_3(true, 21307i, Struct_1(vec2<bool>(false, true), vec4<u32>(38845u, u_input.c, u_input.c, u_input.c), var_1, arg_0, true), u_input.c, 2147483647i), true, Struct_3(true, arg_0.x, Struct_1(vec2<bool>(true, false), vec4<u32>(var_0.x, u_input.c, 1u, var_0.x), var_1, u_input.a.zy, false), 1u, u_input.b.x)))), vec2<bool>(true, true), _wgslsmith_f_op_f32(f32(-1f) * -871f) != _wgslsmith_f_op_f32(select(global0.x, 1584f, false)), 18998u)), global0.x), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(~(vec4<u32>(var_0.x, u_input.c, var_0.x, 4294967295u) >> (vec4<u32>(u_input.c, 0u, var_0.x, 7741u) % vec4<u32>(32u))), vec4<u32>(u_input.c, 70256u, var_0.x, var_0.x) >> (min(vec4<u32>(var_0.x, 18134u, var_0.x, u_input.c), vec4<u32>(16867u, var_0.x, var_0.x, var_0.x)) % vec4<u32>(32u))), vec4<u32>(108993u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 10244u, 0u, 21881u), vec4<u32>(u_input.c, 4294967295u, var_0.x, 1u)), vec4<u32>(var_0.x, u_input.c, u_input.c, 4294967295u)), 4294967295u, 122183u)), !select(select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), true), global0.x >= global0.x), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), false), true), true));
    return Struct_1(select(select(!select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), true), !vec2<bool>(any(vec3<bool>(true, true, false)), any(vec4<bool>(false, false, false, false))), vec2<bool>(true, true)), firstTrailingBit(reverseBits(~abs(vec4<u32>(42823u, var_0.x, var_0.x, 180u)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(var_1)))), _wgslsmith_clamp_vec2_i32(u_input.a.xw, ~vec2<i32>(reverseBits(u_input.a.x), i32(-1i) * -1i), ~arg_0), true);
}

fn func_6(arg_0: Struct_3) -> f32 {
    global0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.c.x, global0.x, -1135f) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1061f, 588f, 423f), arg_0.c.c.zxw)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 404f, -591f)))))));
    let var_0 = -511f;
    let var_1 = _wgslsmith_f_op_f32(-1056f + -990f);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))))), -1799f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !all(vec4<bool>(true, true, true, (u_input.b.x == 28276i) & true));
    var var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(Struct_3(false, -2147483647i, func_1(vec2<i32>(-2147483647i, u_input.b.x), 30771i), firstTrailingBit(4294967295u), _wgslsmith_mult_i32(var_1.x, u_input.a.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(reverseBits(vec2<i32>(-18037i, var_1.x)) << (vec2<u32>(0u, u_input.c) % vec2<u32>(32u)), ~u_input.b.x).d.x, vec4<f32>(var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(256f)), _wgslsmith_f_op_f32(sign(-194f))))), global0.x, _wgslsmith_f_op_f32(524f * global0.x)), ~vec3<u32>(_wgslsmith_div_u32(u_input.c & 24814u, 57856u), u_input.c, 4294967295u));
}

