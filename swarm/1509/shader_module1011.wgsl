struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: vec2<bool>,
    d: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: vec3<bool>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 4> = array<Struct_4, 4>(Struct_4(3665i, -18216i, vec2<bool>(false, false), -1488f), Struct_4(i32(-2147483648), -19067i, vec2<bool>(false, true), 1167f), Struct_4(1i, 39049i, vec2<bool>(true, true), -514f), Struct_4(25424i, 2147483647i, vec2<bool>(true, true), 208f));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec3<bool>, arg_1: u32, arg_2: bool) -> vec4<f32> {
    global0 = array<Struct_4, 4>();
    var var_0 = true;
    let var_1 = -u_input.a.x;
    var_0 = arg_0.x;
    var var_2 = i32(-1i) * -var_1;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(3274f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-3216f, _wgslsmith_f_op_f32(1641f * -1500f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1998f, 648f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1601f)))));
}

fn func_3(arg_0: vec2<i32>) -> i32 {
    let var_0 = arg_0;
    let var_1 = Struct_5(Struct_2(Struct_1(_wgslsmith_sub_vec3_i32(-vec3<i32>(13559i, arg_0.x, -1i), ~u_input.a.zyy), -_wgslsmith_mod_vec2_i32(u_input.a.ww, vec2<i32>(3485i, 1i))), Struct_1(vec3<i32>(abs(u_input.a.x), -2147483647i, ~u_input.a.x), arg_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(447f, 183f, 1197f, 462f))) * vec4<f32>(-250f, 1976f, 256f, -600f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -548f, -1293f, 770f) - vec4<f32>(1f, 1f, 1f, 1f)))), Struct_4(-firstLeadingBit(var_0.x), u_input.a.x, !vec2<bool>(true, any(vec2<bool>(false, false))), -1257f), select(vec3<bool>(true, select(false, true, false) & true, true), !vec3<bool>(true, true, all(vec3<bool>(true, false, false))), select(vec3<bool>(true, true, false), vec3<bool>(all(vec4<bool>(true, false, false, false)), true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), true))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-121f, 255f) + vec2<f32>(1570f, 376f)) - vec2<f32>(1525f, -580f)))))));
    let var_2 = ~22618u;
    let var_3 = -abs(_wgslsmith_dot_vec4_i32(~(~u_input.a), u_input.a | ~u_input.a));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a.c) * var_1.a.c);
    return var_0.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: i32, arg_3: vec4<i32>) -> Struct_3 {
    global0 = array<Struct_4, 4>();
    var var_0 = Struct_3(countOneBits(arg_2), true, Struct_2(Struct_1(max(vec3<i32>(arg_2, 2147483647i, arg_3.x) ^ arg_3.yxx, select(vec3<i32>(-6164i, u_input.a.x, 2147483647i), arg_3.wzy, true)), countOneBits(arg_3.xx >> (vec2<u32>(arg_1, arg_1) % vec2<u32>(32u)))), Struct_1(reverseBits(vec3<i32>(u_input.a.x, 1i, -24153i)), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_3.x, -28024i) << (vec2<u32>(arg_1, 4294967295u) % vec2<u32>(32u)), u_input.a.wy)), arg_0));
    let var_1 = arg_0.x;
    global0 = array<Struct_4, 4>();
    var var_2 = Struct_1(vec3<i32>(arg_3.x, max(_wgslsmith_clamp_i32(~2147483647i, 25748i, arg_3.x), -1i), reverseBits(u_input.a.x)), ~(~(~vec2<i32>(arg_3.x, arg_3.x))));
    return Struct_3(func_3(-(~reverseBits(vec2<i32>(-4886i, 0i)))), !(!(-1992f > _wgslsmith_f_op_f32(-arg_0.x))), Struct_2(var_0.c.a, var_0.c.a, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_1)), _wgslsmith_f_op_f32(f32(-1f) * -108f), _wgslsmith_f_op_f32(-381f * 118f), -172f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, true, true);
    var var_1 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-884f, 3197f, -764f, 146f) + vec4<f32>(-846f, 775f, -1029f, 489f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1047f, -829f, -394f, 571f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-939f, 197f, -1211f, -1496f)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(var_0, 8305u, true)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(410f, 373f, -252f, 1526f), vec4<f32>(217f, 1993f, -261f, 436f), var_0.x)))))), 1u, -47197i, vec4<i32>(firstTrailingBit(-1i), 1i, _wgslsmith_sub_i32(_wgslsmith_add_i32(1i, ~(-64144i)), u_input.a.x), _wgslsmith_add_i32(reverseBits(_wgslsmith_clamp_i32(u_input.a.x, -1i, -88748i)), u_input.a.x | _wgslsmith_mod_i32(-65175i, 1i))));
    let var_2 = select(vec4<u32>(20721u, 82789u, 1u, ~select(max(5644u, 1u), 1u, false)), ~(~(~vec4<u32>(1u, 1u, 1u, 1u))), var_1.b);
    var var_3 = select(vec2<bool>(~min(u_input.a.x, var_1.a) < _wgslsmith_dot_vec4_i32(vec4<i32>(24730i, var_1.c.b.b.x, 0i, var_1.c.a.b.x), _wgslsmith_add_vec4_i32(vec4<i32>(-31763i, var_1.a, u_input.a.x, 25091i), vec4<i32>(var_1.a, -1i, var_1.c.b.a.x, 1i))), false), vec2<bool>(!var_0.x, (false || var_1.b) || (!var_0.x & true)), var_0.xy);
    let var_4 = countOneBits(var_1.c.a.b);
    var_3 = vec2<bool>(true, select(!var_1.b, var_3.x, select(false != var_1.b, select(var_1.b, var_0.x, var_3.x), !var_1.b) | var_0.x));
    global0 = array<Struct_4, 4>();
    var var_5 = 41875i;
    let x = u_input.a;
    s_output = StorageBuffer(1f);
}

