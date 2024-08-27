struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: u32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<u32>) -> vec4<f32> {
    global0 = array<i32, 15>();
    var var_0 = arg_1.x;
    var var_1 = ~(~(vec4<i32>(u_input.e, global0[_wgslsmith_index_u32(25516u, 15u)], -26604i, global0[_wgslsmith_index_u32(u_input.d.x, 15u)]) >> (vec4<u32>(4294967295u, 0u, 4294967295u, 14909u) % vec4<u32>(32u))) ^ ~(~vec4<i32>(global0[_wgslsmith_index_u32(73223u, 15u)], u_input.a.x, u_input.e, -6910i))) & countOneBits(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 1i, u_input.a.x, 20915i), abs(vec4<i32>(-1i, global0[_wgslsmith_index_u32(arg_1.x, 15u)], 2147483647i, 38793i)), ~vec4<i32>(2147483647i, 1i, 1i, 2147483647i)), vec4<i32>(~(-56109i), 25940i, 13591i, u_input.a.x)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 363f, 588f)) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, -651f, arg_0.x) + vec4<f32>(-871f, 777f, arg_0.x, arg_0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(1326f, arg_0.x, -213f, arg_0.x), vec4<f32>(arg_0.x, arg_0.x, -841f, -1575f))))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x)), 3233f, _wgslsmith_f_op_f32(125f - _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_div_f32(-208f, 343f))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: i32) -> u32 {
    let var_0 = vec3<bool>(all(arg_2.a) || any(select(vec2<bool>(true, true), !arg_2.a, select(arg_2.a.x, arg_2.a.x, true))), !(_wgslsmith_f_op_f32(-arg_2.c.x) <= _wgslsmith_f_op_f32(f32(-1f) * -1631f)), arg_2.a.x);
    let var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(arg_3, u_input.a.x), u_input.a.xz);
    var var_2 = ~vec4<i32>(var_1, -global0[_wgslsmith_index_u32(1u, 15u)], 40652i, u_input.e);
    let var_3 = arg_2;
    global0 = array<i32, 15>();
    return u_input.b.x;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: u32) -> f32 {
    global0 = array<i32, 15>();
    var var_0 = arg_1;
    var var_1 = func_4(vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(round(var_0.c.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.d.x)))), u_input.b, Struct_1(vec2<bool>(all(arg_2), 23277i <= global0[_wgslsmith_index_u32(arg_1.b.x, 15u)]), vec3<u32>(0u, ~var_0.b.x, 5452u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, var_0.e.x, 361f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(arg_1.c.yx, vec2<u32>(1u, 65453u)))), vec3<f32>(665f, _wgslsmith_div_f32(1368f, var_0.d.x), 597f)), max(global0[_wgslsmith_index_u32(~1u, 15u)], 2147483647i)) << (~_wgslsmith_div_u32(14984u & arg_3, ~_wgslsmith_sub_u32(arg_1.b.x, var_0.b.x)) % 32u);
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.x, 918f, arg_0, arg_0))) - var_0.d))));
    var var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(906f, _wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(floor(var_0.c.x)), -102f))));
    return _wgslsmith_f_op_f32(step(123f, _wgslsmith_f_op_f32(1336f + var_3.x)));
}

fn func_1() -> bool {
    global0 = array<i32, 15>();
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-506f, 1016f))))))));
    var var_1 = Struct_1(vec2<bool>(true, _wgslsmith_mult_u32(u_input.d.x, 52014u) >= (48377u & _wgslsmith_mod_u32(u_input.d.x, u_input.b.x))), ~u_input.d, vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(var_0.x, Struct_1(vec2<bool>(false, true), u_input.b.xwx, vec3<f32>(1440f, -1909f, var_0.x), vec4<f32>(1000f, -154f, -699f, var_0.x), vec3<f32>(var_0.x, 876f, var_0.x)), vec4<bool>(false, true, true, false), 17967u)), _wgslsmith_f_op_f32(ceil(var_0.x))))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-895f, -312f, var_0.x, var_0.x) - vec4<f32>(1930f, var_0.x, -947f, var_0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 1085f, -1000f, var_0.x), vec4<f32>(-988f, 888f, -1181f, -1415f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-495f, var_0.x, var_0.x, var_0.x))))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-111f, -866f, false)))), -991f, var_0.x));
    global0 = array<i32, 15>();
    global0 = array<i32, 15>();
    return !(!((var_1.a.x | (var_1.a.x | var_1.a.x)) != false));
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = select(~_wgslsmith_add_u32(_wgslsmith_mod_u32(0u | u_input.b.x, max(arg_1.b.x, 9106u)), 4294967295u), 0u, all(select(!select(vec3<bool>(arg_0, arg_1.a.x, true), vec3<bool>(false, arg_1.a.x, arg_0), arg_0), vec3<bool>(select(false, arg_1.a.x, arg_1.a.x), true, all(vec2<bool>(true, true))), select(!vec3<bool>(arg_1.a.x, arg_1.a.x, false), vec3<bool>(true, true, arg_1.a.x), vec3<bool>(arg_1.a.x, false, false)))));
    global0 = array<i32, 15>();
    global0 = array<i32, 15>();
    global0 = array<i32, 15>();
    global0 = array<i32, 15>();
    return Struct_1(select(!arg_1.a, select(vec2<bool>(arg_0 & arg_0, true), !(!arg_1.a), true), !vec2<bool>(arg_1.a.x, all(vec3<bool>(false, false, arg_1.a.x)))), ~vec3<u32>(firstTrailingBit(4294967295u), 0u, 96751u), vec3<f32>(379f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) - _wgslsmith_f_op_f32(abs(arg_1.d.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.e.x))), arg_1.d.x)), vec4<f32>(_wgslsmith_f_op_f32(-arg_1.e.x), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1442f - arg_1.c.x))), Struct_1(!vec2<bool>(arg_1.a.x, arg_0), vec3<u32>(arg_1.b.x, u_input.c.x, 0u), _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.e.x, arg_1.c.x, 1273f), vec3<f32>(arg_1.c.x, arg_1.d.x, 356f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1093f, arg_1.c.x, -245f, arg_1.d.x))), _wgslsmith_f_op_vec3_f32(-arg_1.e)), select(select(vec4<bool>(arg_1.a.x, false, arg_0, arg_1.a.x), vec4<bool>(arg_1.a.x, true, false, arg_1.a.x), arg_1.a.x), !vec4<bool>(arg_1.a.x, true, arg_0, arg_0), true), _wgslsmith_div_u32(~arg_1.b.x, ~84116u))), arg_1.d.x, arg_1.e.x), arg_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(true | func_1(), Struct_1(select(!select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(u_input.a.x > -2147483647i, any(vec4<bool>(true, false, true, false)))), vec3<u32>(~func_4(vec3<f32>(337f, -1000f, -613f), vec4<u32>(u_input.c.x, 5036u, 4294967295u, u_input.c.x), Struct_1(vec2<bool>(false, true), u_input.d, vec3<f32>(665f, 195f, 165f), vec4<f32>(-780f, -448f, 272f, 2016f), vec3<f32>(-1000f, -1331f, -1000f)), global0[_wgslsmith_index_u32(10526u, 15u)]), u_input.c.x >> (reverseBits(u_input.b.x) % 32u), 52002u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(810f, 1510f, 1556f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-155f, -570f, 581f)))), vec4<f32>(1f, 1f, 1f, 1f), vec3<f32>(1f, 1f, 1f)));
    var var_1 = Struct_1(var_0.a, var_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.e.x, var_0.d.x, -1425f), var_0.c, var_0.a.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.d.x * var_0.d.x), _wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(trunc(var_0.d.x)), -710f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, -412f, -417f, 394f)))), vec3<f32>(var_0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_0.d.x)), _wgslsmith_f_op_f32(-var_0.e.x), var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1738f * var_0.c.x))))));
    let var_2 = func_5(true, Struct_1(vec2<bool>(true, true), abs(vec3<u32>(var_0.b.x, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(26007u, var_1.b.x), var_0.b.xz))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(933f, 265f, -620f), vec3<f32>(var_1.d.x, var_0.d.x, var_1.d.x), vec3<bool>(var_1.a.x, var_0.a.x, var_1.a.x))), _wgslsmith_div_vec3_f32(var_0.e, var_0.c)))), var_1.d, var_1.d.yzx));
    var_1 = var_0;
    var var_3 = u_input.b;
    let var_4 = ~firstLeadingBit(_wgslsmith_mult_vec4_u32(u_input.b, u_input.b >> (abs(vec4<u32>(38179u, 4294967295u, var_1.b.x, 40871u)) % vec4<u32>(32u))));
    let var_5 = _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), abs(_wgslsmith_add_vec2_u32(vec2<u32>(~var_2.b.x, min(var_3.x, var_1.b.x)), ~vec2<u32>(var_0.b.x, var_0.b.x))), (~_wgslsmith_add_vec2_u32(vec2<u32>(99028u, var_0.b.x), vec2<u32>(var_1.b.x, 1u)) >> (abs(vec2<u32>(var_1.b.x, var_3.x)) % vec2<u32>(32u))) ^ abs(abs(var_3.wy)));
    var var_6 = var_1.d;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<i32>(u_input.e, select(global0[_wgslsmith_index_u32(var_1.b.x, 15u)] | global0[_wgslsmith_index_u32(4294967295u, 15u)], ~global0[_wgslsmith_index_u32(34282u, 15u)], var_3.x >= var_3.x), _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.e, u_input.e), ~global0[_wgslsmith_index_u32(u_input.b.x, 15u)])), ~firstLeadingBit(u_input.a) >> (select(var_3.wzy << (var_2.b % vec3<u32>(32u)), var_1.b, false) % vec3<u32>(32u)), !(!(!vec3<bool>(var_0.a.x, var_0.a.x, false)))), _wgslsmith_f_op_vec3_f32(var_0.c - var_0.c), countOneBits(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(var_3.x, var_3.x), 1u)), vec2<f32>(-883f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -204f)), var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-662f - 2135f) + var_1.e.x)));
}

