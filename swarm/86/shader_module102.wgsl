struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(5226i, i32(-2147483648), -47492i);

var<private> global1: vec2<f32> = vec2<f32>(-598f, -582f);

var<private> global2: array<u32, 6>;

var<private> global3: array<f32, 14>;

var<private> global4: array<Struct_4, 7>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> bool {
    var var_0 = Struct_2(select(!select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), global0.x > -37497i), vec2<bool>(true, true), !(global2[_wgslsmith_index_u32(u_input.a, 6u)] >= countOneBits(0u))), _wgslsmith_sub_u32(u_input.b.x, 0u));
    let var_1 = Struct_1(countOneBits(vec3<u32>(_wgslsmith_sub_u32(~var_0.b, select(var_0.b, 1u, var_0.a.x)), ~(~global2[_wgslsmith_index_u32(u_input.b.x, 6u)]), abs(1u))));
    let var_2 = reverseBits(~var_1.a.zx);
    var var_3 = Struct_2(select(vec2<bool>(false, true), var_0.a, any(!select(vec2<bool>(true, false), vec2<bool>(var_0.a.x, false), var_0.a))), _wgslsmith_clamp_u32(u_input.a | ~(~var_2.x), ~13559u, global2[_wgslsmith_index_u32(4294967295u, 6u)]));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(167f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), global3[_wgslsmith_index_u32(4294967295u, 14u)], 657f, global1.x);
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: vec4<bool>) -> vec4<f32> {
    let var_0 = Struct_1(_wgslsmith_mult_vec3_u32(u_input.b ^ ~_wgslsmith_mod_vec3_u32(u_input.b, u_input.b), vec3<u32>(arg_0.b, abs(global2[_wgslsmith_index_u32(min(58472u, arg_0.b), 6u)]), _wgslsmith_div_u32(1u, 57391u))));
    var var_1 = select(select(select(select(select(vec3<bool>(false, arg_0.a.x, false), arg_3.wxz, false), arg_3.zyy, vec3<bool>(true, true, true)), vec3<bool>(arg_0.a.x, !arg_2.a.x, true), arg_3.x), !(!(!vec3<bool>(false, arg_0.a.x, true))), !vec3<bool>(true, func_3(), true)), !select(select(vec3<bool>(arg_2.a.x, arg_3.x, arg_0.a.x), select(vec3<bool>(arg_3.x, arg_3.x, arg_0.a.x), arg_3.yyz, vec3<bool>(true, false, arg_2.a.x)), vec3<bool>(arg_0.a.x, true, arg_3.x)), arg_3.yxx, true), true);
    var var_2 = 441f;
    var var_3 = arg_2;
    global0 = min(firstTrailingBit(reverseBits(arg_1)), arg_1);
    return vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~0u, 14u)])) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(arg_0.b, 14u)])))), global1.x, global1.x);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = vec3<bool>(select(false, true, true), ~_wgslsmith_sub_u32(~0u, u_input.b.x) >= 0u, true);
    let var_1 = Struct_4(Struct_2(vec2<bool>(all(vec3<bool>(false, var_0.x, var_0.x)), all(select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(false, false, var_0.x)))), min(_wgslsmith_clamp_u32(4294967295u, u_input.b.x, 0u) << (31978u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, global2[_wgslsmith_index_u32(0u, 6u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 6u)], 6u)]), _wgslsmith_mult_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(23420u, 6u)], 108558u, u_input.a, u_input.a), vec4<u32>(1u, u_input.a, 28273u, 48640u))))), Struct_3(vec3<f32>(312f, _wgslsmith_f_op_f32(trunc(-2129f)), -1328f), Struct_1(u_input.b), Struct_1(u_input.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x)))))), Struct_1(u_input.b & u_input.b), Struct_3(vec3<f32>(-896f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(abs(-105f))), Struct_1(~u_input.b), Struct_1(~u_input.b), -441f));
    let var_2 = _wgslsmith_dot_vec3_i32(reverseBits(firstLeadingBit(vec3<i32>(0i, 2147483647i, global0.x) >> (u_input.b % vec3<u32>(32u)))), ~max(-vec3<i32>(1i, global0.x, -28889i), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, -2147483647i), vec3<i32>(1i, -1i, u_input.c.x), vec3<i32>(12061i, 18493i, global0.x))) & _wgslsmith_mult_vec3_i32(vec3<i32>(0i, 1i, _wgslsmith_mod_i32(global0.x, -1i)), _wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(global0.x, global0.x, u_input.c.x)), vec3<i32>(global0.x, -64485i, u_input.c.x) | vec3<i32>(u_input.c.x, 40650i, global0.x))));
    global3 = array<f32, 14>();
    global3 = array<f32, 14>();
    return Struct_1(~u_input.b);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: bool) -> vec2<u32> {
    let var_0 = func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1332f + global3[_wgslsmith_index_u32(59291u, 14u)]), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(111858u, 14u)] - global3[_wgslsmith_index_u32(79581u, 14u)]), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(f32(-1f) * -439f))), _wgslsmith_f_op_vec4_f32(func_2(Struct_2(!vec2<bool>(arg_0.x, false), ~u_input.b.x), -(vec3<i32>(2147483647i, u_input.c.x, arg_1.x) | vec3<i32>(arg_1.x, -2765i, 0i)), Struct_2(!arg_0.yz, arg_2.x & global2[_wgslsmith_index_u32(0u, 6u)]), !arg_0))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(371f, global3[_wgslsmith_index_u32(0u, 14u)]))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(206f, -1926f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -530f) * vec2<f32>(global3[_wgslsmith_index_u32(arg_2.x, 14u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 6u)], 14u)])))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1718f, -1484f) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(383f, 1582f), vec2<f32>(-283f, 1415f), arg_0.zz)))))));
    var var_1 = var_0.a.x;
    var var_2 = _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * -761f) - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 14u)] * 1925f)));
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3[_wgslsmith_index_u32(39869u, 14u)], global3[_wgslsmith_index_u32(0u, 14u)], 2958f), vec3<f32>(global1.x, global1.x, -468f), arg_0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(arg_2.x, 14u)], global1.x, global1.x)) + vec3<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 14u)], global3[_wgslsmith_index_u32(0u, 14u)], global3[_wgslsmith_index_u32(19901u, 14u)]))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(616f, 607f, global1.x)))))), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global3[_wgslsmith_index_u32(1u, 14u)], global1.x, global1.x) * vec4<f32>(1020f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 6u)], 14u)], 703f, 909f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -732f, global1.x, global1.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(262f, global3[_wgslsmith_index_u32(u_input.a, 14u)], global1.x, global1.x)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(565f, -595f)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global3[_wgslsmith_index_u32(10586u, 14u)], 1175f), vec2<f32>(1101f, -1046f)))), vec2<f32>(1f, 1f), arg_0.yx))), Struct_1(var_0.a), _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_0.a.x, 14u)] * global3[_wgslsmith_index_u32(arg_2.x, 14u)]))))));
    var var_4 = var_3.a;
    return u_input.b.zz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(~(~_wgslsmith_sub_u32(4294967295u, global2[_wgslsmith_index_u32(1u, 6u)])), _wgslsmith_dot_vec2_u32(~min(vec2<u32>(1u, 39553u), u_input.b.xy), select(_wgslsmith_div_vec2_u32(u_input.b.zz, vec2<u32>(4294967295u, u_input.a)), vec2<u32>(1u, 0u), any(vec3<bool>(false, false, false))))), vec2<u32>(~_wgslsmith_mult_u32(max(u_input.b.x, global2[_wgslsmith_index_u32(4294967295u, 6u)]), ~u_input.a), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(28742u, 6u)], 6u)]), func_1(vec4<bool>(true, any(vec4<bool>(false, true, false, true)) || true, false, true), ~(~vec2<i32>(-1i, -15610i)) >> ((~u_input.b.zz ^ vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), firstTrailingBit(u_input.b.yz), !(!all(vec2<bool>(true, true)))));
    let var_1 = vec2<bool>(false, ~u_input.c.x == global0.x);
    let var_2 = u_input.c.x;
    var var_3 = Struct_2(vec2<bool>(true, var_1.x), 6095u);
    global3 = array<f32, 14>();
    let var_4 = select(true, var_3.a.x, var_1.x);
    global0 = -firstTrailingBit(vec3<i32>(-1i) * -countOneBits(vec3<i32>(global0.x, var_2, u_input.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2602f, 818f, -478f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(918f - global3[_wgslsmith_index_u32(61054u, 14u)]), _wgslsmith_f_op_f32(min(1673f, -273f)), 282f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-426f, global3[_wgslsmith_index_u32(var_0.x, 14u)], global1.x))) + vec3<f32>(global1.x, global3[_wgslsmith_index_u32(var_0.x, 14u)], -1077f)), vec3<f32>(_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(u_input.b.x, 14u)])), _wgslsmith_f_op_f32(-global1.x), global1.x))) + vec3<f32>(1405f, _wgslsmith_f_op_f32(f32(-1f) * -811f), global1.x)));
}

