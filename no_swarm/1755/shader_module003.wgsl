struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> vec2<bool> {
    let var_0 = _wgslsmith_mult_vec2_i32(select(max(-_wgslsmith_clamp_vec2_i32(u_input.c.zz, u_input.c.yz, vec2<i32>(u_input.a, u_input.a)), u_input.c.yy), u_input.c.xz, 11377u != ~_wgslsmith_clamp_u32(u_input.b.x, 1u, 65806u)), vec2<i32>(u_input.c.x, u_input.c.x));
    global0 = !select(vec2<bool>(true, false), select(select(select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, false), global0.x), select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, true), false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, global0.x))), select(select(vec2<bool>(false, global0.x), vec2<bool>(true, true), vec2<bool>(true, global0.x)), vec2<bool>(true, global0.x), vec2<bool>(true, true)), !global0.x & select(global0.x, global0.x, false)), !(!(var_0.x < 1i)));
    var var_1 = -(min(_wgslsmith_dot_vec3_i32(abs(u_input.c), _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, -1i, u_input.c.x), vec3<i32>(-10056i, var_0.x, 2147483647i))), countOneBits(var_0.x)) | 42025i);
    let var_2 = !(!select(select(!vec4<bool>(true, false, true, global0.x), select(vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(false, false, global0.x, global0.x), global0.x), false), select(!vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, false, true, global0.x)), vec4<bool>(global0.x, global0.x, true, false)));
    let var_3 = Struct_2(0i, !vec3<bool>(all(vec3<bool>(true, true, true)), any(vec2<bool>(false, false)) | true, var_2.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-1218f)), _wgslsmith_div_f32(-267f, 2101f), _wgslsmith_f_op_f32(f32(-1f) * -639f), 1000f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-185f, -1000f, 2035f, -1445f))) + vec4<f32>(-630f, -158f, _wgslsmith_f_op_f32(select(-562f, -1283f, all(vec2<bool>(true, var_2.x)))), _wgslsmith_div_f32(-1133f, _wgslsmith_f_op_f32(800f - 746f)))));
    return !var_2.xx;
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: bool, arg_3: Struct_1) -> i32 {
    return ((i32(-1i) * -1i) >> (u_input.b.x % 32u)) ^ u_input.a;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    global0 = vec2<bool>(true, global0.x);
    global0 = vec2<bool>(true, true);
    global0 = select(!vec2<bool>(!(!global0.x), all(!vec4<bool>(global0.x, global0.x, true, global0.x))), vec2<bool>(false, true), vec2<bool>((true & all(vec2<bool>(global0.x, false))) | !global0.x, !global0.x));
    let var_0 = arg_0;
    global0 = func_3();
    return arg_2.a;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 0u), u_input.b.x >> (1u % 32u))) >> (_wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, 68131u), ~(~vec2<u32>(0u, u_input.b.x))) % vec2<u32>(32u)), vec2<u32>(~abs(u_input.b.x >> (48505u % 32u)), _wgslsmith_mult_u32(countOneBits(u_input.b.x ^ u_input.b.x), ~(~u_input.b.x))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1338f + 128f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-727f + -204f) * _wgslsmith_f_op_f32(202f + -343f))), _wgslsmith_f_op_f32(trunc(-1525f))));
    var var_2 = u_input.b.yxx;
    var var_3 = ~(~var_2.x);
    let var_4 = 1u;
    return Struct_1(func_5(Struct_1(~(-46072i), func_4(var_1.x, func_3(), true, Struct_1(u_input.c.x, -2147483647i))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2512f) * _wgslsmith_div_f32(1049f, var_1.x)), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, var_1.x, true)))), Struct_1(1i, firstTrailingBit(~(-1i))), Struct_1(select(30773i, u_input.a, any(vec2<bool>(false, global0.x))), ~u_input.c.x)), firstLeadingBit(~firstTrailingBit(1899i)));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: f32) -> vec2<bool> {
    var var_0 = Struct_1(2147483647i, -(~_wgslsmith_sub_i32(-14131i, -1i)) & _wgslsmith_mod_i32((u_input.a >> (1u % 32u)) ^ countOneBits(-4250i), -2147483647i | arg_0.b));
    global0 = !(!(!select(!arg_1, arg_1, false)));
    var var_1 = func_2();
    let var_2 = select(vec3<bool>(_wgslsmith_sub_u32(~u_input.b.x, 19708u) != (u_input.b.x | u_input.b.x), false, global0.x), vec3<bool>(true && arg_1.x, !all(!vec4<bool>(true, true, global0.x, false)), !any(!vec4<bool>(global0.x, global0.x, false, true))), !vec3<bool>((-2147483647i | var_1.b) > (arg_0.a << (u_input.b.x % 32u)), !arg_1.x, !arg_1.x));
    var_1 = func_2();
    return vec2<bool>(var_2.x, all(!(!(!arg_1))));
}

fn func_1() -> vec4<bool> {
    let var_0 = select(select(!func_6(func_2(), select(vec2<bool>(global0.x, true), vec2<bool>(true, true), vec2<bool>(global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-649f, -535f)), _wgslsmith_f_op_f32(-1414f * 830f)), vec2<bool>((global0.x || global0.x) | (global0.x || global0.x), !global0.x), !vec2<bool>(true, !global0.x)), !(!func_3()), !vec2<bool>(all(vec4<bool>(true, false, true, false)), all(vec4<bool>(false, false, false, global0.x)) && global0.x));
    global0 = var_0;
    let var_1 = reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, ~52643u), max(u_input.b.wy, ~u_input.b.wz))) << (u_input.b.x % 32u);
    global0 = var_0;
    var var_2 = vec3<f32>(-459f, -1802f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-627f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1251f, 1177f))))));
    return vec4<bool>(any(select(!select(vec3<bool>(true, var_0.x, false), vec3<bool>(var_0.x, var_0.x, global0.x), vec3<bool>(global0.x, global0.x, global0.x)), vec3<bool>(true, true, !global0.x), select(!vec3<bool>(var_0.x, global0.x, global0.x), select(vec3<bool>(true, true, false), vec3<bool>(true, true, var_0.x), true), !vec3<bool>(global0.x, true, true)))), true & (-(~u_input.c.x) == ~(-2147483647i >> (var_1 % 32u))), var_0.x | false, var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(!select(select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(global0.x, global0.x, true, false), vec4<bool>(global0.x, true, true, global0.x)), vec4<bool>(false, true, global0.x, global0.x), true), func_1(), any(select(select(vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(global0.x, global0.x, true, global0.x)), select(vec4<bool>(global0.x, false, global0.x, false), vec4<bool>(true, true, true, true), vec4<bool>(global0.x, global0.x, false, true)), select(vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(true, global0.x, false, false), vec4<bool>(true, global0.x, global0.x, true)))));
    var var_1 = 0i;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-646f, _wgslsmith_div_f32(866f, _wgslsmith_f_op_f32(sign(835f)))) * -785f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1715f)), 1867f)) + _wgslsmith_f_op_f32(736f * 682f)) - -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1984f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1025f))))));
    let var_3 = vec2<bool>(true, all(func_1().zww) & true);
    var_0 = func_1();
    var var_4 = func_2();
    var var_5 = select(vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.b, firstTrailingBit(_wgslsmith_mod_vec4_u32(u_input.b, u_input.b))), u_input.b.x & _wgslsmith_clamp_u32(21231u, u_input.b.x, u_input.b.x), ~u_input.b.x), u_input.b.yyz, vec3<bool>(true, true, !(var_3.x & true)));
    var var_6 = vec4<u32>(var_5.x, min(firstTrailingBit(0u) & (_wgslsmith_clamp_u32(u_input.b.x, 3414u, 64686u) | var_5.x), ~_wgslsmith_mult_u32(1u, firstLeadingBit(u_input.b.x))), ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(firstLeadingBit(u_input.b.xx), ~vec2<u32>(u_input.b.x, var_5.x)), vec2<u32>(firstTrailingBit(48078u), ~36255u)), 1u);
    var_5 = vec3<u32>(1u, 7358u, min(_wgslsmith_clamp_u32(30823u, u_input.b.x ^ var_6.x, ~max(1u, 47947u)), 69114u));
    let x = u_input.a;
    s_output = StorageBuffer((vec4<i32>(u_input.c.x, 2147483647i, -u_input.a, 0i) ^ vec4<i32>(var_4.a, u_input.a, u_input.c.x, 1i)) ^ vec4<i32>(~_wgslsmith_mod_i32(u_input.c.x, u_input.a), _wgslsmith_mod_i32(~(-3427i), _wgslsmith_clamp_i32(-35236i, -7717i, -293i)), var_4.b, ~(u_input.a >> (0u % 32u))), u_input.b >> (u_input.b % vec4<u32>(32u)));
}

