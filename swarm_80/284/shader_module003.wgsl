struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<bool>(true, true, true, true), Struct_1(vec3<u32>(1u, 0u, 48005u)), vec4<i32>(4011i, -1470i, 33174i, 10896i));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_5, arg_2: Struct_5, arg_3: vec4<f32>) -> bool {
    global0 = Struct_3(global0.a, global0.b, global0.c);
    var var_0 = global0.c.x;
    var_0 = _wgslsmith_clamp_i32(arg_1.c.x, _wgslsmith_mult_i32(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(global0.c.x, arg_2.c.x, u_input.c.x, -2147483647i), vec4<i32>(-85995i, -2147483647i, 2827i, 56006i))), -arg_1.c.x), global0.c.x);
    global0 = Struct_3(!global0.a, Struct_1(global0.b.a), abs(vec4<i32>(firstTrailingBit(0i), _wgslsmith_div_i32(arg_1.c.x, arg_1.c.x) & -2147483647i, _wgslsmith_clamp_i32(-1i, u_input.c.x, 1i), firstLeadingBit(~15966i))));
    global0 = Struct_3(global0.a, Struct_1(select(vec3<u32>(~arg_0.a.x, 1u, firstLeadingBit(4294967295u)), ~_wgslsmith_add_vec3_u32(u_input.b.xwz, global0.b.a), vec3<bool>(arg_2.b, false, !arg_1.b))), vec4<i32>(reverseBits(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(2147483647i, global0.c.x), _wgslsmith_clamp_i32(arg_2.c.x, u_input.c.x, 1i), countOneBits(arg_1.c.x))), u_input.c.x, -1i, -1i));
    return true;
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: u32) -> f32 {
    global0 = Struct_3(!vec4<bool>(!global0.a.x, any(!global0.a.zwx), global0.a.x, func_3(Struct_1(global0.b.a), Struct_5(-995f, false, vec3<i32>(global0.c.x, 2442i, u_input.c.x), 1156f), Struct_5(149f, false, vec3<i32>(u_input.c.x, global0.c.x, 10145i), -485f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(242f, -290f, 368f, 669f)))), Struct_1(_wgslsmith_mult_vec3_u32(max(~vec3<u32>(arg_1, 77671u, arg_0.x), firstLeadingBit(vec3<u32>(7859u, 1u, 4294967295u))), vec3<u32>(37992u, abs(12991u), max(0u, 5203u)))), -vec4<i32>(_wgslsmith_sub_i32(48922i, u_input.c.x), 2147483647i, -(i32(-1i) * -29886i), global0.c.x));
    let var_0 = _wgslsmith_add_u32(~arg_0.x, _wgslsmith_div_u32(global0.b.a.x, arg_1 & countOneBits(countOneBits(11554u))));
    global0 = Struct_3(vec4<bool>(!(global0.a.x || true), true, global0.a.x, all(!(!global0.a.yy))), global0.b, abs(~(-vec4<i32>(-46826i, global0.c.x, global0.c.x, u_input.c.x))));
    global0 = Struct_3(!vec4<bool>(global0.a.x, true, true, global0.a.x), Struct_1(max(countOneBits(arg_0.xyx), u_input.b.yyz)), _wgslsmith_sub_vec4_i32(~vec4<i32>(1i, 1i, 53894i, global0.c.x), -select(reverseBits(global0.c), vec4<i32>(-4518i, global0.c.x, 7123i, 1i) << (arg_0 % vec4<u32>(32u)), !vec4<bool>(false, true, global0.a.x, global0.a.x))));
    return 1310f;
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(vec4<u32>(u_input.a, 43701u, arg_2.a.x, arg_2.a.x), 539u, 30500u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-185f)) - 149f), -678f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-407f, _wgslsmith_f_op_f32(-2158f - 147f), _wgslsmith_f_op_f32(select(306f, 140f, false))), vec3<f32>(_wgslsmith_f_op_f32(round(-1895f)), _wgslsmith_f_op_f32(trunc(-1334f)), -147f)))));
    let var_1 = 18732i;
    let var_2 = global0.a.yyx;
    var var_3 = arg_1.c;
    global0 = Struct_3(select(!(!(!global0.a)), !select(global0.a, global0.a, true), ~(~global0.b.a.x) > ~max(u_input.a, 4294967295u)), global0.b, global0.c);
    return select(firstTrailingBit(u_input.c), abs(arg_1.b.zz), !vec2<bool>(!arg_0, true | arg_1.a));
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_3, arg_3: Struct_2) -> Struct_1 {
    global0 = arg_2;
    global0 = arg_2;
    global0 = Struct_3(global0.a, Struct_1(vec3<u32>(min(global0.b.a.x, 0u) & (arg_2.b.a.x ^ global0.b.a.x), 1u, firstTrailingBit(u_input.b.x))), arg_2.c);
    let var_0 = Struct_4(_wgslsmith_f_op_f32(1139f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(992f * _wgslsmith_f_op_f32(max(326f, 1401f))) + _wgslsmith_f_op_f32(f32(-1f) * -1579f))), global0.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2(vec4<u32>(global0.b.a.x, arg_2.b.a.x, arg_2.b.a.x, u_input.b.x), _wgslsmith_clamp_u32(4294967295u, 0u, arg_2.b.a.x), global0.b.a.x << (global0.b.a.x % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(976f + -302f)))));
    let var_1 = var_0.a;
    return Struct_1(select(vec3<u32>(~4294967295u | var_0.b.a.x, ~4294967295u, ~1u), ~max(max(u_input.b.yzy, vec3<u32>(global0.b.a.x, 4294967295u, arg_2.b.a.x)), ~global0.b.a), global0.a.yxw));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(select(vec2<bool>(select(global0.a.x, global0.a.x, !global0.a.x), (3603u & u_input.a) < global0.b.a.x), select(!select(vec2<bool>(true, true), vec2<bool>(global0.a.x, global0.a.x), global0.a.x), global0.a.yz, !vec2<bool>(global0.a.x, false)), select(vec2<bool>(global0.a.x, !global0.a.x), vec2<bool>(2147483647i != u_input.c.x, false), vec2<bool>(false, any(global0.a.yxx)))), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(func_1(false, Struct_2(true, vec3<i32>(7225i, 42366i, -1i), global0.a.x), global0.b), global0.c.zy), _wgslsmith_div_i32(~30797i, global0.c.x)), max(_wgslsmith_add_i32(-u_input.c.x, u_input.c.x), 3728i), -global0.c.x), Struct_3(!vec4<bool>(global0.a.x, global0.a.x, true, false), global0.b, countOneBits(global0.c)), Struct_2(false, global0.c.zyx, global0.a.x));
    let var_1 = ~1u;
    let var_2 = _wgslsmith_f_op_f32(-885f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-956f * _wgslsmith_f_op_f32(-1047f - -183f)))));
    global0 = Struct_3(!select(vec4<bool>(true == global0.a.x, true, true, false), !global0.a, false), func_4(vec2<bool>(!global0.a.x, any(select(global0.a.wy, vec2<bool>(global0.a.x, true), global0.a.zx))), abs(-(~global0.c.x)), Struct_3(global0.a, var_0, -(~vec4<i32>(global0.c.x, -17785i, 72081i, -1i))), Struct_2(false, abs(_wgslsmith_sub_vec3_i32(global0.c.xwx, vec3<i32>(1422i, -4080i, global0.c.x))), global0.a.x)), global0.c << (max(~(~vec4<u32>(var_1, global0.b.a.x, global0.b.a.x, global0.b.a.x)), select(u_input.b | u_input.b, ~u_input.b, 1u < u_input.b.x)) % vec4<u32>(32u)));
    var var_3 = Struct_4(_wgslsmith_f_op_f32(trunc(var_2)), global0.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2, var_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1087f * _wgslsmith_f_op_f32(-var_2)))));
    global0 = Struct_3(vec4<bool>((-129f != _wgslsmith_f_op_f32(min(var_2, var_3.a))) | global0.a.x, all(global0.a.ywy), (!global0.a.x | (var_3.a < -126f)) | (false && all(vec3<bool>(global0.a.x, global0.a.x, false))), ~global0.b.a.x < _wgslsmith_add_u32(27171u, u_input.a)), Struct_1(var_3.b.a), _wgslsmith_mult_vec4_i32(global0.c, vec4<i32>(2147483647i, max(global0.c.x, _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(-51295i, -8422i))), _wgslsmith_sub_i32(global0.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -51787i, 1i), global0.c.xxx)), u_input.c.x ^ u_input.c.x)));
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_3.c.x, var_3.c.x), _wgslsmith_f_op_f32(548f + var_3.a), true)) + _wgslsmith_f_op_f32(var_3.c.x * 345f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-333f, _wgslsmith_f_op_f32(var_3.a + -387f))))));
    let var_5 = global0.c >> (select(firstTrailingBit(u_input.b), ~u_input.b, vec4<bool>(false, true, any(global0.a), true)) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(4294967295u, ~var_0.a.x), -7912i, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2, 1021f), var_3.c)), ~max(global0.c.x & 42339i, -2147483647i));
}

