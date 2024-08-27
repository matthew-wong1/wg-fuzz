struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_3,
    d: i32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1794f;

var<private> global1: array<vec4<u32>, 13> = array<vec4<u32>, 13>(vec4<u32>(73912u, 4294967295u, 8221u, 55495u), vec4<u32>(15766u, 0u, 4294967295u, 66033u), vec4<u32>(4294967295u, 0u, 8915u, 30924u), vec4<u32>(1u, 0u, 1u, 4294967295u), vec4<u32>(1u, 4294967295u, 4294967295u, 112783u), vec4<u32>(0u, 15426u, 3261u, 2214u), vec4<u32>(4294967295u, 56149u, 134168u, 0u), vec4<u32>(57179u, 1u, 12459u, 0u), vec4<u32>(33440u, 0u, 35236u, 63397u), vec4<u32>(1304u, 1u, 60533u, 29361u), vec4<u32>(29520u, 3842u, 26724u, 90052u), vec4<u32>(1u, 4294967295u, 1244u, 0u), vec4<u32>(4294967295u, 1u, 0u, 1u));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_3.a.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-747f)))), any(vec2<bool>(arg_3.a.d, _wgslsmith_mult_u32(arg_2.a.b, 50836u) > _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, 1u), arg_3.a.c)))));
    var var_1 = _wgslsmith_mult_i32(~(-(~(~0i))), 40944i);
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(arg_0.x))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_3.a.b - arg_2.a.a.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2)) * var_2))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.a.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -950f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-814f))))));
    let var_4 = 0i;
    return _wgslsmith_mult_i32(u_input.b.x, 15785i);
}

fn func_4(arg_0: i32, arg_1: vec2<i32>, arg_2: i32, arg_3: vec2<bool>) -> f32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-964f, -287f, false)))), -127f)) * _wgslsmith_f_op_f32(select(-1599f, -1173f, !arg_3.x && false))) * _wgslsmith_f_op_f32(abs(-2865f)));
    let var_0 = arg_1.x;
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -158f);
    global0 = -1116f;
    var var_1 = arg_3.x;
    return 1f;
}

fn func_2() -> Struct_5 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -582f) - 987f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1975f))) + _wgslsmith_f_op_f32(func_4(func_3(vec3<f32>(389f, -625f, -1114f), vec3<i32>(u_input.b.x, 858i, u_input.b.x) & vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x), Struct_3(Struct_2(Struct_1(u_input.c, -419f, vec3<u32>(28552u, u_input.a, 15885u), true), u_input.d.x)), Struct_2(Struct_1(vec4<u32>(u_input.a, u_input.c.x, 4294967295u, 0u), -622f, vec3<u32>(10592u, 1u, u_input.a), true), 0u)), u_input.b, _wgslsmith_mult_i32(abs(u_input.b.x), u_input.b.x), vec2<bool>(all(vec3<bool>(true, true, true)), true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-376f))) + _wgslsmith_f_op_f32(sign(1000f))));
    var var_1 = select(_wgslsmith_clamp_u32(reverseBits(u_input.d.x), u_input.d.x, firstTrailingBit(~1u & _wgslsmith_sub_u32(u_input.d.x, 26010u))), 4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0, -1277f, true)) - _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(min(var_0, -182f)))) >= _wgslsmith_f_op_f32(abs(var_0)));
    let var_2 = !(~u_input.a >= 4294967295u);
    let var_3 = vec2<bool>(any(select(select(!vec2<bool>(var_2, var_2), vec2<bool>(var_2, true), vec2<bool>(true, true)), !select(vec2<bool>(var_2, var_2), vec2<bool>(false, false), var_2), vec2<bool>(u_input.c.x <= 40719u, true))), !var_2);
    let var_4 = abs(~u_input.c.wz);
    return Struct_5(!(!(!(var_2 != var_2))));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: f32) -> Struct_5 {
    return func_2();
}

fn func_5(arg_0: vec4<u32>, arg_1: bool, arg_2: vec4<u32>, arg_3: Struct_5) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -124f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-803f + 1565f) * 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-221f))), _wgslsmith_f_op_f32(131f - _wgslsmith_f_op_f32(func_4(2147483647i, vec2<i32>(u_input.b.x, u_input.b.x), 2147483647i, vec2<bool>(false, arg_1))))))));
    global0 = _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(569f + -1580f) + _wgslsmith_f_op_f32(-var_0.x))))));
    let var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_f32(trunc(var_0.x))));
    let var_3 = min(select(vec3<i32>(-1i, 0i, -37353i), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(12474i, -38824i, 2147483647i), vec3<i32>(-1i, u_input.b.x, 1i)), ~vec3<i32>(u_input.b.x, -9525i, u_input.b.x)), true) | select(~_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 1i, 11481i), vec3<i32>(u_input.b.x, u_input.b.x, -29116i)), reverseBits(~vec3<i32>(u_input.b.x, -2147483647i, -57036i)), select(vec3<bool>(true, true, true), !vec3<bool>(true, true, arg_1), !vec3<bool>(arg_1, true, true))), firstTrailingBit(_wgslsmith_add_vec3_i32((vec3<i32>(-1i, u_input.b.x, -62539i) & vec3<i32>(u_input.b.x, -4299i, u_input.b.x)) & (vec3<i32>(-2147483647i, u_input.b.x, -47289i) & vec3<i32>(-4224i, -6407i, u_input.b.x)), ~firstLeadingBit(vec3<i32>(-23165i, u_input.b.x, u_input.b.x)))));
    return Struct_1(vec4<u32>(abs(~arg_2.x), ~0u >> (~4294967295u % 32u), 1u, 0u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(708f - -1864f))))), -1358f)), vec3<u32>(u_input.a, ~u_input.c.x & _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, arg_0.x, arg_0.x, 0u), _wgslsmith_mod_vec4_u32(global1[_wgslsmith_index_u32(0u, 13u)], vec4<u32>(arg_0.x, var_1, arg_0.x, arg_0.x))), countOneBits(~min(arg_2.x, var_1))), true);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_5, arg_3: u32) -> f32 {
    var var_0 = arg_0;
    var var_1 = Struct_2(arg_1.a, ~u_input.d.x);
    var var_2 = _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b, u_input.b, -vec2<i32>(u_input.b.x, -25737i)), vec2<i32>(-1i) * -(vec2<i32>(u_input.b.x, u_input.b.x) >> (vec2<u32>(0u, 72591u) % vec2<u32>(32u)))) << (var_1.a.a.wz % vec2<u32>(32u));
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_1.a.b)))) - -2142f)));
    let var_3 = Struct_3(arg_1);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-671f)), _wgslsmith_f_op_f32(-arg_1.a.b))), _wgslsmith_f_op_f32(f32(-1f) * -965f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1008f, 111f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_6(func_5(abs(vec4<u32>(92418u, u_input.d.x, u_input.a, 28046u)), true, vec4<u32>(51228u, 4294967295u, 32910u, 63117u), func_1(vec3<f32>(330f, 933f, -190f), Struct_2(Struct_1(vec4<u32>(29723u, 32585u, u_input.a, u_input.c.x), 1267f, u_input.c.zxz, true), u_input.d.x), -1167f)), Struct_2(Struct_1(vec4<u32>(u_input.a, 7652u, u_input.d.x, 40005u), 936f, vec3<u32>(4294967295u, 8033u, 1u), true), ~u_input.a), func_2(), 37738u)))));
    var var_1 = func_2();
    let var_2 = vec2<i32>(~2147483647i, -5311i);
    var var_3 = -710f;
    var_1 = Struct_5(u_input.b.x != u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(max(-(_wgslsmith_div_i32(var_2.x, 2193i) << (u_input.c.x % 32u)), var_2.x), 0u);
}

