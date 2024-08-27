struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec4<bool>;

var<private> global2: f32 = 637f;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec4<f32>) -> vec3<i32> {
    global1 = !vec4<bool>(arg_0, select(true, _wgslsmith_f_op_f32(max(arg_3.x, -131f)) > -1822f, all(select(vec4<bool>(global1.x, global1.x, arg_0, arg_0), vec4<bool>(global1.x, arg_0, global1.x, arg_0), vec4<bool>(true, arg_0, global1.x, true)))), true && all(select(global1.wxx, vec3<bool>(global1.x, true, true), global1.x)), true);
    var var_0 = firstLeadingBit(u_input.c);
    let var_1 = -17953i;
    var var_2 = u_input.a.yy;
    var_0 = ~vec4<i32>(min(~(i32(-1i) * -2147483647i), arg_2.d.x), arg_2.d.x, min(_wgslsmith_mult_i32(-1i, var_1) << (min(arg_1.x, 29454u) % 32u), var_0.x), var_1);
    return _wgslsmith_clamp_vec3_i32(~vec3<i32>(var_0.x, u_input.c.x, _wgslsmith_div_i32(0i, firstLeadingBit(-1i))), vec3<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(u_input.c.xw & vec2<i32>(var_1, 19457i), var_0.xz) & arg_2.b, _wgslsmith_mult_i32(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(569i, var_0.x, 17309i), vec3<i32>(var_0.x, 22836i, var_1)) & var_0.x)), (firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(var_1, -2147483647i, 1i), vec3<i32>(2147483647i, 28943i, 80771i))) ^ (-vec3<i32>(0i, 0i, -2147483647i) ^ (arg_2.a >> (u_input.a % vec3<u32>(32u))))) | -_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 1i, arg_2.b), arg_2.d));
}

fn func_2() -> vec3<bool> {
    global2 = 1060f;
    let var_0 = Struct_4(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(~(vec3<i32>(u_input.c.x, -1i, u_input.c.x) & u_input.c.xyw), -abs(u_input.c.xwx)), vec3<i32>(u_input.b, u_input.c.x, _wgslsmith_clamp_i32(firstLeadingBit(-10119i), u_input.b, u_input.b))), func_3(true, _wgslsmith_div_vec2_u32(~(u_input.a.xz & vec2<u32>(132207u, 41407u)), u_input.a.yz), Struct_1(u_input.c.zxy, _wgslsmith_mult_i32(u_input.c.x, u_input.c.x & 2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1108f + 1245f) + _wgslsmith_f_op_f32(max(1054f, -693f))), ~(vec3<i32>(-2147483647i, u_input.c.x, 0i) ^ vec3<i32>(u_input.b, u_input.b, u_input.b)), _wgslsmith_f_op_f32(f32(-1f) * -179f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-745f, 1476f, -407f, -1057f)) - vec4<f32>(1507f, 701f, -260f, -243f)))), countOneBits(_wgslsmith_mult_vec4_i32(select(vec4<i32>(1i, 51520i, u_input.b, u_input.b), u_input.c, !global1.x), _wgslsmith_sub_vec4_i32(u_input.c, _wgslsmith_add_vec4_i32(vec4<i32>(-24538i, u_input.b, u_input.b, u_input.c.x), vec4<i32>(u_input.c.x, 0i, -2506i, u_input.b))))));
    var var_1 = Struct_1(var_0.c.zxx, -1i, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -196f))))))), vec3<i32>(~_wgslsmith_sub_i32(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-17236i, u_input.c.x, -1i, var_0.b.x), vec4<i32>(0i, var_0.a, 0i, -6183i))), _wgslsmith_sub_i32(firstTrailingBit(4876i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, -1i) >> (vec2<u32>(101914u, 67913u) % vec2<u32>(32u)), vec2<i32>(u_input.c.x, var_0.b.x))), -_wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, 2147483647i), vec2<i32>(1i, 1i))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1161f * -1085f))))));
    let var_2 = var_0.c;
    let var_3 = var_0;
    return vec3<bool>(~countOneBits(~u_input.a.x) >= 99111u, true, any(global1.zyz));
}

fn func_1() -> vec4<u32> {
    let var_0 = vec3<bool>(global1.x, all(select(global1.yxw, select(vec3<bool>(global1.x, true, true), vec3<bool>(global1.x, true, global1.x), global1.x), func_2())) && (all(global1.yy) | false), true);
    var var_1 = false;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(1333f, _wgslsmith_f_op_f32(f32(-1f) * -389f))), _wgslsmith_f_op_f32(max(-1157f, -332f)))));
    global1 = select(select(select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, var_0.x, false), global1.x), vec4<bool>(false, false, true, true), vec4<bool>(global1.x, global1.x, true, var_0.x)), !select(vec4<bool>(global1.x, true, false, var_0.x), vec4<bool>(false, global1.x, true, false), true), select(vec4<bool>(global1.x, var_0.x, false, var_0.x), vec4<bool>(false, false, true, global1.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x))), select(vec4<bool>(true, !var_0.x, false, var_0.x), select(select(vec4<bool>(true, false, false, var_0.x), vec4<bool>(var_0.x, false, global1.x, true), var_0.x), vec4<bool>(global1.x, false, var_0.x, true), vec4<bool>(true, false, global1.x, var_0.x)), !(!vec4<bool>(true, global1.x, true, var_0.x))), !all(!var_0)), select(!select(select(vec4<bool>(false, false, global1.x, var_0.x), vec4<bool>(global1.x, global1.x, true, var_0.x), true), !vec4<bool>(false, false, var_0.x, var_0.x), true), !select(select(vec4<bool>(global1.x, var_0.x, false, global1.x), vec4<bool>(false, global1.x, false, global1.x), false), vec4<bool>(var_0.x, true, var_0.x, true), select(vec4<bool>(var_0.x, global1.x, global1.x, global1.x), vec4<bool>(false, false, global1.x, var_0.x), var_0.x)), global1.x), global1.x);
    let var_3 = var_2;
    return select(vec4<u32>(abs(~u_input.a.x), _wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, abs(u_input.a.x)), _wgslsmith_div_u32(u_input.a.x, countOneBits(u_input.a.x))), _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(57840u, 16264u), u_input.a.yy), _wgslsmith_add_vec2_u32(vec2<u32>(11248u, u_input.a.x), u_input.a.yy)), ~_wgslsmith_clamp_u32(u_input.a.x, ~u_input.a.x, 19231u)), ~(~(~vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x))), select(vec4<bool>(var_0.x, (u_input.a.x << (15105u % 32u)) != 33579u, any(vec4<bool>(false, false, true, true)), true), select(vec4<bool>(global1.x, var_0.x, !var_0.x, global1.x), !(!vec4<bool>(true, var_0.x, global1.x, global1.x)), !(!vec4<bool>(false, global1.x, var_0.x, false))), !(firstTrailingBit(2147483647i) < select(u_input.b, -55069i, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_dot_vec4_u32(~(~func_1()), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a.x, 0u, 31627u, 22013u), vec4<u32>(u_input.a.x, u_input.a.x, 740u, ~u_input.a.x))), -2147483647i);
    var var_1 = any(vec4<bool>(all(vec2<bool>(global1.x, global1.x)) | global1.x, !(!global1.x), global1.x, true)) || global1.x;
    var var_2 = Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(~(~var_0.b), u_input.b, -21614i >> (func_1().x % 32u)), ~vec3<i32>(0i, _wgslsmith_sub_i32(0i, u_input.b), i32(-1i) * -12747i)), ~0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(841f * _wgslsmith_f_op_f32(select(-454f, -1192f, global1.x))), -1229f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1546f) - _wgslsmith_f_op_f32(floor(366f))))), vec3<i32>(min(u_input.b, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.c, u_input.c), _wgslsmith_clamp_vec4_i32(u_input.c, vec4<i32>(var_0.b, var_0.b, u_input.c.x, u_input.c.x), u_input.c))), ~select(~0i, select(u_input.b, 2147483647i, global1.x), global1.x), -1935i), _wgslsmith_f_op_f32(f32(-1f) * -1740f));
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.c.zx), ~u_input.a);
}

