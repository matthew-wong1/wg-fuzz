struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 6>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: i32, arg_3: i32) -> i32 {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -811f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-575f, -527f)) + _wgslsmith_f_op_f32(trunc(-823f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -935f)) + -1557f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(737f)) - _wgslsmith_f_op_f32(ceil(-424f))) * _wgslsmith_f_op_f32(-261f + _wgslsmith_f_op_f32(round(-1432f)))), 208f), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1101f, 335f) - vec3<f32>(-1083f, -166f, -104f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(962f, -1499f, -511f))))))));
    var var_1 = ~u_input.a.wwz;
    global0 = array<vec2<bool>, 6>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a)), _wgslsmith_div_vec3_f32(vec3<f32>(-814f, var_0.b.x, var_0.a.x), var_0.a.wzy));
    let var_3 = Struct_2(~(-(min(u_input.d, 0i) << (_wgslsmith_mult_u32(90000u, u_input.c.x) % 32u))));
    return -(i32(-1i) * -2147483647i);
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: u32, arg_3: Struct_2) -> u32 {
    var var_0 = abs(u_input.a) | -vec4<i32>(-countOneBits(u_input.b.x), -2147483647i, -53096i, i32(-1i) * -19838i);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.a))) * arg_0.c.b.x), arg_0.c.b.x));
    var var_2 = -(~(arg_1 & ~func_2(true, var_0.x, 2147483647i, arg_1)));
    var_1 = arg_0.a;
    let var_3 = arg_0.c;
    return arg_0.d;
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: u32, arg_3: vec3<u32>) -> Struct_2 {
    global0 = array<vec2<bool>, 6>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(193f, 220f, 889f)))))) - vec3<f32>(543f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(243f - -1814f))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(682f, -810f)), _wgslsmith_f_op_f32(min(2419f, 731f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-904f, 321f) - _wgslsmith_f_op_f32(-520f - 345f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1470f)), _wgslsmith_f_op_f32(-332f * 232f)))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_0.x)))) + _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -225f)))));
    let var_2 = !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.x, 30722u, 12989u), u_input.c), ~(53949u & arg_0.x), arg_3.x, ~arg_0.x ^ arg_0.x), max(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, arg_2, u_input.c.x, 4294967295u), firstLeadingBit(vec4<u32>(arg_0.x, 53195u, arg_2, arg_2))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, arg_2, u_input.c.x, 0u), vec4<u32>(u_input.c.x, 1u, arg_0.x, u_input.c.x), vec4<u32>(arg_0.x, 4294967295u, arg_0.x, 4294967295u)))), 6u)];
    global0 = array<vec2<bool>, 6>();
    return Struct_2(_wgslsmith_dot_vec4_i32(u_input.a, firstTrailingBit(u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 6>();
    var var_0 = func_3(u_input.c, 1i, _wgslsmith_dot_vec3_u32(~vec3<u32>(func_1(Struct_3(-1731f, Struct_2(u_input.d), Struct_1(vec4<f32>(497f, -993f, -1083f, 1000f), vec3<f32>(667f, 2108f, -1040f)), 1865u), 12252i, u_input.c.x, Struct_2(-78157i)), firstTrailingBit(22303u), firstTrailingBit(u_input.c.x)), ~firstTrailingBit(min(u_input.c, u_input.c))), u_input.c);
    var_0 = func_3(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(56063u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(22279u, u_input.c.x, 75526u, u_input.c.x)), u_input.c.x), u_input.c.x, _wgslsmith_div_u32(8772u, u_input.c.x) | ~u_input.c.x) | _wgslsmith_div_vec3_u32(~(vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x) | vec3<u32>(u_input.c.x, 0u, u_input.c.x)), select(_wgslsmith_clamp_vec3_u32(u_input.c, u_input.c, u_input.c), ~u_input.c, any(vec4<bool>(false, false, false, true)))), func_2(true, min(min(~u_input.b.x, var_0.a | var_0.a), -2147483647i), ~reverseBits(2147483647i), max(u_input.a.x, abs(-var_0.a))), countOneBits(u_input.c.x), (_wgslsmith_div_vec3_u32(u_input.c, select(u_input.c, vec3<u32>(0u, u_input.c.x, u_input.c.x), true)) & u_input.c) & _wgslsmith_clamp_vec3_u32(vec3<u32>(3718u, func_1(Struct_3(2143f, Struct_2(u_input.b.x), Struct_1(vec4<f32>(601f, 1661f, 1971f, -697f), vec3<f32>(-1652f, -860f, -671f)), 67499u), u_input.a.x, u_input.c.x, Struct_2(5534i)), u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x) | u_input.c, u_input.c));
    var var_1 = abs(_wgslsmith_mult_u32(~(~(~u_input.c.x)), _wgslsmith_sub_u32(~u_input.c.x, firstLeadingBit(16971u))));
    var var_2 = vec3<i32>(-2147483647i, var_0.a, -1i);
    var var_3 = countOneBits(max(select(abs(u_input.c) << (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, 10810u, u_input.c.x), u_input.c) % vec3<u32>(32u)), vec3<u32>(u_input.c.x, u_input.c.x, 1u), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false)), _wgslsmith_mult_vec3_u32(u_input.c | ~vec3<u32>(26469u, u_input.c.x, 43487u), abs(u_input.c) >> (firstTrailingBit(u_input.c) % vec3<u32>(32u)))));
    var var_4 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1828f, -909f) - -1540f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1321f))), _wgslsmith_f_op_f32(min(755f, 1160f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1000f, 1646f)))), 1934f), vec3<f32>(_wgslsmith_f_op_f32(abs(1163f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1299f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(651f)) - -818f))));
    var_2 = firstLeadingBit(vec3<i32>(min(1i, min(var_2.x, u_input.b.x ^ -1i)), ~var_0.a, _wgslsmith_mod_i32(u_input.d, 0i << (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_3.x), u_input.c.yz) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1321f), -289f, var_4.a.x), ~vec4<u32>(abs(~41301u), var_3.x << (_wgslsmith_clamp_u32(1u, u_input.c.x, u_input.c.x) % 32u), u_input.c.x, 0u), -1i, ~_wgslsmith_mult_vec2_i32(firstLeadingBit(abs(var_2.zx)), ~_wgslsmith_clamp_vec2_i32(var_2.yz, vec2<i32>(var_2.x, var_0.a), vec2<i32>(u_input.b.x, 2147483647i))));
}

