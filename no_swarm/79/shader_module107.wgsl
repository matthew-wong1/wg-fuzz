struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = arg_1;
    var var_1 = !(!any(select(vec3<bool>(arg_1.b.x, true, var_0.b.x), vec3<bool>(true, false, true), !vec3<bool>(arg_0.x, var_0.b.x, true))));
    var var_2 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(913f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(303f)), 892f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(1850f * -445f)) - 1f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -649f), -1646f)), vec2<u32>(u_input.c.x, 1u) & reverseBits(max(u_input.b >> (u_input.a.zy % vec2<u32>(32u)), ~vec2<u32>(u_input.b.x, var_0.a))));
    var var_3 = _wgslsmith_sub_u32((_wgslsmith_dot_vec4_u32(u_input.c, u_input.c) << (var_0.a % 32u)) >> (_wgslsmith_add_u32(min(5319u, ~103796u), 1u) % 32u), _wgslsmith_div_u32(abs(var_2.c.x), 77899u));
    let var_4 = vec3<bool>((6332u <= _wgslsmith_dot_vec2_u32(~u_input.b, vec2<u32>(var_2.c.x, arg_1.a))) & all(!arg_0), var_2.c.x >= 31598u, any(!vec3<bool>(true, true, arg_1.b.x | true)));
    return ~vec4<i32>(min(1i, _wgslsmith_mult_i32(firstTrailingBit(12377i), 1i)), -1i, _wgslsmith_div_i32(max(56578i, ~62851i), 1i), select(~(~(-49234i)), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, 39360i), vec3<i32>(1i, 2147483647i, -2830i)), ~28885i), !any(vec4<bool>(arg_1.b.x, false, var_0.b.x, true))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: vec3<f32>) -> vec3<f32> {
    var var_0 = Struct_1(40022u, select(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), all(vec3<bool>(false, false, true))), vec2<bool>(true, true), true));
    var var_1 = ~u_input.c.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, 289f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1134f, arg_1.x))), arg_2.yz))));
    var_1 = u_input.c.x ^ var_0.a;
    var var_3 = arg_0;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-653f, 1752f, arg_1.x))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<bool>) -> vec2<f32> {
    var var_0 = vec3<f32>(392f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(1051f * 180f), arg_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-822f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(267f * 1306f)))) + -266f));
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 908f) - vec3<f32>(var_0.x, var_0.x, var_0.x)) * _wgslsmith_f_op_vec3_f32(func_4(func_3(vec2<bool>(arg_1.x, true), Struct_1(4294967295u, vec2<bool>(arg_1.x, false))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(285f, 2171f, -830f))), vec3<f32>(var_0.x, 526f, var_0.x))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(sign(var_0.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1283f)))), u_input.b);
    var var_2 = var_1;
    let var_3 = firstTrailingBit(_wgslsmith_sub_vec4_u32(max(min(vec4<u32>(var_1.c.x, u_input.b.x, var_1.c.x, var_2.c.x), vec4<u32>(2439u, var_2.c.x, var_2.c.x, 1u)) >> (u_input.c % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(20195u, var_1.c.x, u_input.a.x, var_2.c.x), _wgslsmith_clamp_vec4_u32(u_input.c, vec4<u32>(u_input.b.x, var_1.c.x, 4294967295u, var_2.c.x), u_input.c))), reverseBits(select(reverseBits(vec4<u32>(4294967295u, 4294967295u, var_2.c.x, var_2.c.x)), u_input.c, !arg_1))));
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.b + var_2.a.xx), _wgslsmith_f_op_vec2_f32(-var_0.zz)), vec2<f32>(_wgslsmith_f_op_f32(sign(834f)), -1157f))))));
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_2, arg_3: vec2<i32>) -> Struct_2 {
    var var_0 = 13904u;
    var_0 = 0u;
    var_0 = _wgslsmith_mult_u32(8453u, countOneBits(~((arg_2.a.x >> (arg_2.a.x % 32u)) | u_input.c.x)));
    let var_1 = firstTrailingBit(_wgslsmith_add_u32(arg_2.a.x, ~_wgslsmith_mult_u32(~0u, u_input.b.x)));
    var_0 = arg_2.a.x;
    return Struct_2(~vec3<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(arg_2.a.x, arg_2.a.x), 48091u), u_input.a.x, var_1), _wgslsmith_f_op_vec2_f32(-arg_2.b), arg_2.b.x);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3) -> Struct_2 {
    return func_5(_wgslsmith_div_i32(select(max(0i, abs(2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 2147483647i, 1i) >> (u_input.c.zxx % vec3<u32>(32u)), ~vec3<i32>(7902i, 56478i, 35020i)), arg_1.c.x < reverseBits(38093u)), 2147483647i), firstLeadingBit(-(~(-8751i))), Struct_2(u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.a.yx - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, 1728f))) - arg_1.a.xx), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.b.x)))))), select(vec2<i32>(firstTrailingBit(1i), _wgslsmith_add_i32(1797i, 0i)), select(vec2<i32>(~(-54335i), -2147483647i), vec2<i32>(_wgslsmith_mult_i32(1i, 28787i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(-28061i, 1i))), any(vec4<bool>(true, true, true, true))), true));
}

fn func_1() -> Struct_3 {
    let var_0 = func_6(func_5(-_wgslsmith_sub_i32(_wgslsmith_mult_i32(1i, 35648i), 2147483647i), _wgslsmith_add_i32(-2147483647i, 1i) | ~_wgslsmith_dot_vec3_i32(vec3<i32>(22579i, 13874i, -37139i), vec3<i32>(1i, 43700i, -13174i)), Struct_2(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 1u, u_input.c.x), ~u_input.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(vec4<i32>(-1i, -22911i, -26250i, -8403i), vec4<bool>(false, true, true, true))) * vec2<f32>(587f, 1436f)), _wgslsmith_div_f32(-870f, _wgslsmith_f_op_f32(min(-301f, -602f)))), _wgslsmith_mult_vec2_i32(vec2<i32>(i32(-1i) * -6798i, _wgslsmith_dot_vec3_i32(vec3<i32>(16811i, 16941i, 1i), vec3<i32>(-41947i, 19910i, 2147483647i))), vec2<i32>(i32(-1i) * -70479i, 37967i))), Struct_3(vec3<f32>(1f, -959f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(364f)) + _wgslsmith_f_op_vec3_f32(func_4(vec4<i32>(-28816i, 1i, 2147483647i, -2147483647i), vec3<f32>(-2007f, 1048f, -292f), vec3<f32>(-429f, 555f, 302f))).x)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-144f, 1504f) - _wgslsmith_div_vec2_f32(vec2<f32>(-1045f, -733f), vec2<f32>(-1579f, 106f))))), vec2<u32>(~25519u, u_input.c.x)));
    var var_1 = Struct_1(var_0.a.x, !vec2<bool>(all(vec3<bool>(true, true, true)), true));
    let var_2 = Struct_1(~var_1.a, var_1.b);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-779f * var_0.c));
    let var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1023f), _wgslsmith_f_op_f32(-var_0.c), var_0.c))))), _wgslsmith_f_op_vec2_f32(-var_0.b), vec2<u32>(17762u, var_0.a.x) << (vec2<u32>(4294967295u, countOneBits(98855u >> (u_input.b.x % 32u))) % vec2<u32>(32u)));
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true)), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true)), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true))), vec2<bool>(true, !all(vec2<bool>(false, false))), vec2<bool>(true, 2199f < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(2903f, 1441f, true)), -1842f))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-541f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1004f - -813f), -1724f)));
    var var_2 = func_1();
    var var_3 = Struct_1(~u_input.b.x, var_0);
    var_3 = Struct_1(_wgslsmith_clamp_u32(var_2.c.x, u_input.c.x, ~1u), select(!(!select(var_0, var_0, var_3.b)), !vec2<bool>(true, all(var_0)), false));
    let var_4 = vec2<i32>(-1i, ~_wgslsmith_sub_i32(0i, 0i & _wgslsmith_dot_vec4_i32(vec4<i32>(34716i, 1i, -2147483647i, 0i), vec4<i32>(-1i, -1i, -1i, 1i))));
    let var_5 = Struct_2(u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-312f, 315f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1364f))));
    var var_6 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_2.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-268f, var_5.b.x, var_5.b.x))), vec3<f32>(842f, -1624f, var_1))), var_2.a.zx, vec2<u32>(_wgslsmith_add_u32(~max(1u, 4294967295u), var_3.a), var_2.c.x));
    var_6 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(91092u);
}

