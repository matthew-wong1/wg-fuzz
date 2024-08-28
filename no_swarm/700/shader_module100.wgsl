struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: i32,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 10> = array<vec2<u32>, 10>(vec2<u32>(40414u, 4294967295u), vec2<u32>(1u, 39733u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 30978u), vec2<u32>(4294967295u, 27576u), vec2<u32>(51481u, 16426u), vec2<u32>(0u, 24291u), vec2<u32>(84375u, 1u), vec2<u32>(51479u, 83860u), vec2<u32>(56732u, 65897u));

var<private> global1: vec3<i32> = vec3<i32>(1i, i32(-2147483648), -16586i);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> vec3<i32> {
    global0 = array<vec2<u32>, 10>();
    var var_0 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-161f + _wgslsmith_f_op_f32(abs(-777f))), -768f, _wgslsmith_f_op_f32(f32(-1f) * -583f)), vec3<i32>(1i, -10078i, u_input.c.x)), u_input.b);
    global0 = array<vec2<u32>, 10>();
    var var_1 = var_0.a;
    global0 = array<vec2<u32>, 10>();
    return var_0.a.b;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<bool>) -> f32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-359f, 417f, 153f))), _wgslsmith_div_vec3_f32(vec3<f32>(1087f, -733f, 1387f), vec3<f32>(-1995f, -1843f, 1000f)), select(arg_1, vec3<bool>(arg_1.x, arg_1.x, arg_1.x), arg_1)))), _wgslsmith_div_vec3_i32(vec3<i32>(-31802i, u_input.c.x, global1.x), func_3(true))), u_input.a);
    global1 = -(~(-(var_0.a.b >> (_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, var_0.b, arg_0.x), arg_0) % vec3<u32>(32u)))));
    global1 = reverseBits(vec3<i32>(-firstTrailingBit(abs(-2510i)), global1.x, reverseBits(_wgslsmith_sub_i32(global1.x, u_input.c.x))));
    let var_1 = u_input.b;
    global0 = array<vec2<u32>, 10>();
    return _wgslsmith_f_op_f32(f32(-1f) * -275f);
}

fn func_1(arg_0: i32, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1741f)))), 313f, -366f), vec3<i32>(0i, global1.x, _wgslsmith_mult_i32(abs(_wgslsmith_mod_i32(-1i, arg_0)), _wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, arg_0), firstLeadingBit(vec2<i32>(2147483647i, global1.x))))));
    let var_1 = Struct_3(vec4<f32>(423f, var_0.a.x, _wgslsmith_f_op_f32(min(-503f, 337f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(select(vec3<u32>(4294967295u, u_input.b, u_input.a), vec3<u32>(4294967295u, 4294967295u, arg_1), vec3<bool>(false, false, true)), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(trunc(-272f)))), !vec2<bool>(true, !all(vec2<bool>(true, true))), -global1.x, global1.x, _wgslsmith_sub_i32(~global1.x & global1.x, ~abs(101044i)));
    global0 = array<vec2<u32>, 10>();
    let var_2 = ~(~(~1u));
    global0 = array<vec2<u32>, 10>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-324f * _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-624f, 1000f, var_1.b.x)), _wgslsmith_f_op_f32(trunc(398f))), var_1.a.x)), ~var_0.b);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_3) -> vec4<u32> {
    global1 = (~abs(_wgslsmith_div_vec3_i32(arg_0.zww, vec3<i32>(0i, u_input.c.x, -2147483647i))) ^ vec3<i32>(1i, reverseBits(-u_input.c.x), _wgslsmith_dot_vec3_i32(arg_0.yxy, vec3<i32>(2147483647i, arg_1.b.x, global1.x) ^ arg_0.zzx))) >> (~_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.a), vec3<u32>(36858u, u_input.b, u_input.a), vec3<u32>(0u, 0u, 4294967295u)), vec3<u32>(1u, 1u, 1u)), vec3<u32>(countOneBits(19440u), 1u, 59138u)) % vec3<u32>(32u));
    var var_0 = arg_1;
    var var_1 = firstTrailingBit(~1i);
    var_0 = arg_1;
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(arg_2.a.yxx, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.a.wxw)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_1.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(138f, var_0.a.x, arg_2.a.x) + vec3<f32>(-613f, -277f, -492f)), vec3<bool>(true, true, true))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.x, -900f, var_0.a.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.a.zzz)))));
    return select(reverseBits(vec4<u32>(~_wgslsmith_mod_u32(6925u, u_input.a), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(u_input.b, 10u)], vec2<u32>(27262u, u_input.b)), ~0u, 43245u), _wgslsmith_mod_u32(57746u, abs(u_input.b)), _wgslsmith_div_u32(90123u, _wgslsmith_clamp_u32(1u, u_input.b, 81397u)))), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, ~u_input.a, _wgslsmith_sub_u32(75595u, u_input.b), u_input.a) ^ vec4<u32>(~4294967295u, ~u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b), vec4<u32>(1u, 53345u, u_input.a, 9143u)), u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.b, 53587u), vec3<u32>(4294967295u, 7263u, u_input.b)), ~u_input.b, u_input.a), ~(vec4<u32>(0u, 0u, u_input.b, 4294967295u) ^ vec4<u32>(u_input.a, 45025u, u_input.b, 89966u)))), select(vec4<bool>(!(arg_2.b.x | arg_2.b.x), !(arg_2.b.x || arg_2.b.x), false, arg_2.b.x), select(vec4<bool>(!arg_2.b.x, true, arg_2.e < u_input.c.x, !arg_2.b.x), select(select(vec4<bool>(arg_2.b.x, true, false, arg_2.b.x), vec4<bool>(arg_2.b.x, arg_2.b.x, arg_2.b.x, true), vec4<bool>(true, false, true, arg_2.b.x)), select(vec4<bool>(false, false, arg_2.b.x, arg_2.b.x), vec4<bool>(arg_2.b.x, arg_2.b.x, true, arg_2.b.x), vec4<bool>(arg_2.b.x, false, arg_2.b.x, false)), any(vec4<bool>(arg_2.b.x, false, true, true))), arg_2.b.x), !vec4<bool>(arg_2.b.x | false, arg_2.b.x & arg_2.b.x, arg_2.b.x, any(arg_2.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~13035u;
    let var_1 = _wgslsmith_add_vec4_u32(~(~func_4(_wgslsmith_mult_vec4_i32(vec4<i32>(-54979i, u_input.c.x, global1.x, u_input.c.x), vec4<i32>(40302i, global1.x, -52385i, u_input.c.x)), func_1(7508i, u_input.a), Struct_3(vec4<f32>(-788f, -2463f, -627f, 2126f), vec2<bool>(false, true), 0i, 13511i, 31168i))), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(firstLeadingBit(func_4(vec4<i32>(2147483647i, global1.x, 0i, -2147483647i), Struct_1(vec3<f32>(-887f, -176f, -1036f), vec3<i32>(u_input.c.x, -47859i, -1i)), Struct_3(vec4<f32>(-694f, -590f, -1000f, 511f), vec2<bool>(true, true), -2147483647i, -2147483647i, global1.x))), select(select(vec4<u32>(u_input.a, 28141u, u_input.a, u_input.b), vec4<u32>(100517u, 26633u, u_input.b, 1828u), true), ~vec4<u32>(33316u, 4294967295u, u_input.b, 0u), true), ~(~vec4<u32>(u_input.a, u_input.b, u_input.a, 35732u))), ~vec4<u32>(4294967295u, max(u_input.b, u_input.b), 33495u & u_input.a, firstLeadingBit(u_input.a))));
    global0 = array<vec2<u32>, 10>();
    var_0 = 0u;
    var var_2 = Struct_3(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1018f * _wgslsmith_f_op_f32(958f - -1077f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(296f)) + _wgslsmith_f_op_f32(min(-1149f, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<u32>(19481u, u_input.a, 1u), vec3<bool>(false, true, true)))), -408f), vec4<f32>(_wgslsmith_f_op_f32(1078f - 199f), 1000f, _wgslsmith_div_f32(-1663f, _wgslsmith_f_op_f32(step(-810f, -739f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(657f * 1325f), _wgslsmith_f_op_f32(ceil(-1580f))))), vec2<bool>(true != (_wgslsmith_f_op_f32(412f + 1370f) != _wgslsmith_f_op_f32(step(161f, 1100f))), true), _wgslsmith_add_i32(global1.x, -1i), min(global1.x, global1.x & (~global1.x | (-1i & global1.x))), -(_wgslsmith_div_i32(reverseBits(u_input.c.x), _wgslsmith_div_i32(38209i, u_input.c.x)) | -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(u_input.a), _wgslsmith_sub_u32(var_1.x, var_1.x)), var_1.zz), u_input.a ^ 11019u), -vec4<i32>(u_input.c.x, -49911i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, global1.x), vec2<i32>(global1.x, 1i)), -global1.x) | (vec4<i32>(-var_2.e, var_2.c >> (1u % 32u), ~global1.x, -29151i) | ~(vec4<i32>(u_input.c.x, global1.x, -4591i, -29763i) ^ vec4<i32>(-5353i, var_2.d, 2147483647i, 0i))), abs(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.c, 0i), global1.yy), _wgslsmith_mod_i32(20483i, u_input.c.x), reverseBits(global1.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-14147i, global1.x, global1.x), vec3<i32>(-17227i, -2147483647i, 0i))) ^ vec4<i32>(min(var_2.d, -8325i), -31605i, -10376i, global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(_wgslsmith_clamp_i32(-2147483647i, 46779i, global1.x), _wgslsmith_div_u32(u_input.b, 62715u)).a.x)));
}

