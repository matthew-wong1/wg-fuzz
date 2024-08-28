struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: f32,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(-1450f), Struct_1(-1000f), Struct_1(-1298f), Struct_1(1997f), Struct_1(-1000f), Struct_1(712f), Struct_1(1366f), Struct_1(672f), Struct_1(1366f), Struct_1(-318f), Struct_1(-233f), Struct_1(-314f), Struct_1(446f), Struct_1(-546f), Struct_1(1779f), Struct_1(-116f), Struct_1(164f), Struct_1(-1398f), Struct_1(-638f), Struct_1(579f), Struct_1(373f), Struct_1(-714f), Struct_1(-1246f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> f32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(976f, _wgslsmith_f_op_f32(-2013f * 850f), _wgslsmith_f_op_f32(sign(1961f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(850f, -2184f, -1049f))) + vec3<f32>(-1622f, 247f, -1136f)), false != all(vec2<bool>(false, true)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1632f, 1222f, 1000f) + vec3<f32>(166f, -194f, -1141f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, 413f, -780f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(331f, -1000f, 263f))))), Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-143f)) + _wgslsmith_div_f32(1194f, -207f))), vec4<i32>(1i, u_input.d, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.d, u_input.b.x, -32753i, u_input.d)), u_input.b), max(~u_input.b.x, -1490i << (1u % 32u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-587f * 1000f), _wgslsmith_f_op_f32(1149f * -1334f), true)))), _wgslsmith_f_op_f32(trunc(-249f))), true, _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(u_input.b, -u_input.b ^ abs(u_input.b)), _wgslsmith_add_vec4_i32(u_input.b, ~u_input.b)));
    var_0 = Struct_3(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a.a)), _wgslsmith_f_op_f32(-var_0.b.a.a)), var_0.c, 1403f), Struct_2(var_0.b.a, var_0.e), 2068f, false, vec4<i32>(-1i, -var_0.b.b.x, -2147483647i, firstTrailingBit(_wgslsmith_mult_i32(-15106i, 0i))));
    let var_1 = min(_wgslsmith_div_u32(14841u, _wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(u_input.a, 4294967295u, 0u, u_input.a)), abs(~vec4<u32>(0u, u_input.a, 4294967295u, u_input.c.x)))), ~firstLeadingBit(u_input.e));
    let var_2 = 1i;
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(select(var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, var_0.c, var_0.c) + vec3<f32>(var_0.c, var_0.c, var_0.c)))), vec3<bool>(_wgslsmith_f_op_f32(max(var_0.a.x, 1153f)) >= _wgslsmith_f_op_f32(ceil(-1193f)), all(select(vec3<bool>(var_0.d, var_0.d, var_0.d), vec3<bool>(true, false, var_0.d), var_0.d)), false))), Struct_2(Struct_1(1f), vec4<i32>(-8027i, 1i, ~(i32(-1i) * -2147483647i), reverseBits(-2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1876f)) - var_0.b.a.a), all(!select(vec2<bool>(false, var_0.d), select(vec2<bool>(var_0.d, var_0.d), vec2<bool>(var_0.d, false), vec2<bool>(var_0.d, var_0.d)), var_0.d)), vec4<i32>(84534i, var_0.b.b.x, -1674i, ~(var_2 >> (~u_input.e % 32u))));
    return var_0.c;
}

fn func_2(arg_0: f32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(func_3());
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(step(var_0, 108f))), reverseBits(vec4<i32>(1i, ~0i, 75610i, ~u_input.d)));
    global0 = array<Struct_1, 23>();
    return false;
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    global0 = array<Struct_1, 23>();
    var var_0 = select(select(vec4<bool>(true, false, func_2(_wgslsmith_f_op_f32(max(525f, arg_0.a))), all(vec4<bool>(false, true, true, false))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true && any(vec3<bool>(false, true, true)), all(vec3<bool>(false, false, true)) || all(vec3<bool>(true, true, true)), arg_0.a > 953f, all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true)))), !(!(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), true))), vec4<bool>(true, true, all(vec2<bool>(true, true)) && (1i > select(1i, 23305i, false)), true));
    var var_1 = arg_0;
    var_0 = vec4<bool>(arg_0.a < -1291f, all(select(select(var_0.wzw, select(vec3<bool>(false, false, var_0.x), var_0.zwz, true), func_2(var_1.a)), select(select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, false), true), !vec3<bool>(var_0.x, true, true), select(var_0.xzw, vec3<bool>(false, false, true), vec3<bool>(false, var_0.x, false))), select(false, true, true))), !(!all(var_0.xy)), all(vec3<bool>(arg_0.a != var_1.a, var_0.x == false, 1i == ~u_input.d)));
    var_0 = !select(!vec4<bool>(!var_0.x, var_0.x, true, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), var_0.x);
    return arg_0;
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1332f, arg_3.a.a, arg_3.a.a)) + vec3<f32>(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(f32(-1f) * -597f)), arg_3.a.a, arg_3.a.a)), Struct_2(Struct_1(_wgslsmith_f_op_f32(-arg_0.x)), -vec4<i32>(u_input.b.x, 0i, 1i, arg_3.b.x)), _wgslsmith_f_op_f32(func_3()), arg_1, -_wgslsmith_div_vec4_i32(-vec4<i32>(-16690i, arg_2.x, -65622i, arg_3.b.x), u_input.b) >> (~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.c.x, 0u, 0u), select(vec4<u32>(0u, u_input.c.x, u_input.a, 1u), vec4<u32>(4294967295u, u_input.a, u_input.e, 28518u), vec4<bool>(arg_1, arg_1, false, arg_1))) % vec4<u32>(32u)));
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -2267f), _wgslsmith_div_f32(arg_3.a.a, 494f))), Struct_2(func_1(arg_3.a, u_input.c.x), u_input.b), -558f, false, abs(abs(max(vec4<i32>(var_0.e.x, -17502i, u_input.b.x, 10427i), vec4<i32>(0i, -12791i, u_input.b.x, u_input.d)) | (u_input.b >> (vec4<u32>(u_input.a, 84790u, 37717u, u_input.a) % vec4<u32>(32u))))));
    let var_1 = ~max(countOneBits(_wgslsmith_clamp_i32(arg_3.b.x, ~arg_2.x, firstTrailingBit(-2147483647i))), _wgslsmith_sub_i32(21752i, -1i) & min(_wgslsmith_mult_i32(-2147483647i, arg_2.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.b.x, arg_3.b.x), arg_2)));
    var var_2 = u_input.a;
    global0 = array<Struct_1, 23>();
    return Struct_1(arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(u_input.a, 23u)];
    let var_1 = func_4(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.a, var_0.a), vec2<f32>(var_0.a, var_0.a))))))), false, -(vec3<i32>(u_input.b.x, firstTrailingBit(u_input.b.x), _wgslsmith_sub_i32(1i, 52891i)) | select(-vec3<i32>(-2147483647i, -27310i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.d, u_input.d), true)), Struct_2(func_1(Struct_1(245f), 4294967295u), -firstTrailingBit(u_input.b)));
    var var_2 = var_1;
    var var_3 = ~firstTrailingBit(u_input.e);
    var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.c.x, u_input.c.x, u_input.e), vec4<u32>(4294967295u, u_input.c.x, u_input.a, 17227u)), vec4<u32>(12927u, _wgslsmith_sub_u32(u_input.e, 4294967295u), countOneBits(u_input.c.x), u_input.a)), max(u_input.e, select(4294967295u & abs(u_input.a), _wgslsmith_clamp_u32(countOneBits(u_input.a), select(u_input.e, 67724u, true), ~63433u), all(vec2<bool>(false, true))))), 23u)];
    let x = u_input.a;
    s_output = StorageBuffer(~11121i, u_input.b, (vec2<u32>(_wgslsmith_clamp_u32(1u, u_input.c.x, u_input.c.x), ~u_input.a) ^ u_input.c.yx) & ~(max(u_input.c.xz, vec2<u32>(18472u, 4294967295u)) ^ u_input.c.zz));
}

