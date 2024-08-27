struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: f32,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: Struct_1,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<i32>(9578i, -1i), 275f, Struct_1(vec2<u32>(37603u, 0u), vec4<bool>(true, false, true, false), -1146f, -16517i, vec4<u32>(28500u, 1u, 1u, 0u)), Struct_2(vec2<u32>(4294967295u, 45130u), vec2<bool>(true, false), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec4<bool>(false, true, true, false), -516f, 1i, vec4<u32>(4294967295u, 1u, 18112u, 17987u)), -23454i), -772f);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: f32, arg_3: vec4<f32>) -> u32 {
    global0 = Struct_3(reverseBits(vec2<i32>(global0.a.x, global0.a.x >> (firstTrailingBit(0u) % 32u))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(min(global0.e, 520f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2 + 1482f), arg_0, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * arg_1.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.c.c, 1841f, true)) + _wgslsmith_f_op_f32(1668f - arg_1.x))))), Struct_1(_wgslsmith_mult_vec2_u32(u_input.b, ~u_input.a) | select(~global0.d.c.a, ~u_input.a, true), !vec4<bool>(arg_0 <= -304f, !global0.d.b.x, true || global0.c.b.x, !global0.d.c.b.x), arg_0, global0.c.d, global0.d.c.e), global0.d, _wgslsmith_f_op_f32(select(-1479f, -484f, global0.c.b.x)));
    global0 = Struct_3(vec2<i32>(~global0.a.x, 1i), 1000f, global0.c, Struct_2(countOneBits(vec2<u32>(global0.d.c.e.x, global0.d.a.x)), select(vec2<bool>(true, true), vec2<bool>(global0.d.b.x, false), select(vec2<bool>(true, true), !vec2<bool>(false, global0.d.b.x), vec2<bool>(global0.c.b.x, global0.d.b.x))), Struct_1(~u_input.a, select(global0.d.c.b, select(vec4<bool>(true, true, global0.c.b.x, global0.d.b.x), global0.d.c.b, vec4<bool>(true, false, global0.d.b.x, false)), select(true, global0.d.c.b.x, global0.c.b.x)), _wgslsmith_f_op_f32(max(1765f, arg_0)), _wgslsmith_sub_i32(global0.a.x >> (global0.d.a.x % 32u), firstLeadingBit(-1i)), ~vec4<u32>(u_input.c, global0.c.e.x, 31319u, 1u)), firstLeadingBit(_wgslsmith_div_i32(firstTrailingBit(-1521i), global0.c.d))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.x), arg_2)));
    let var_0 = select(!vec3<bool>(global0.d.c.b.x, 15234i <= _wgslsmith_add_i32(global0.d.d, -35006i), !(global0.c.b.x && global0.c.b.x)), global0.c.b.zyz, select(!vec3<bool>(all(global0.c.b), true, any(global0.c.b.xwy)), select(vec3<bool>(!global0.c.b.x, true, global0.c.b.x), !global0.c.b.xzy, any(select(global0.d.c.b, global0.c.b, vec4<bool>(true, global0.c.b.x, global0.d.b.x, global0.c.b.x)))), min(-26317i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, 2147483647i, -19313i), vec4<i32>(global0.a.x, global0.a.x, 0i, global0.c.d))) < (global0.c.d >> (~4294967295u % 32u))));
    var var_1 = ~vec2<u32>(_wgslsmith_div_u32(abs(_wgslsmith_clamp_u32(4294967295u, 7307u, 1u)), firstLeadingBit(firstLeadingBit(u_input.c))), max(11129u, ~(global0.d.c.a.x | 1u)));
    var var_2 = countOneBits(global0.a.x);
    return _wgslsmith_mult_u32(1u, ~_wgslsmith_div_u32(~u_input.c, var_1.x));
}

fn func_2() -> vec3<f32> {
    let var_0 = vec4<u32>(abs(reverseBits(func_3(1000f, vec2<f32>(global0.b, global0.b), 947f, vec4<f32>(1307f, -661f, global0.e, 867f)))), u_input.a.x, ~u_input.b.x, ~abs(20550u)) ^ vec4<u32>(59777u, ~(u_input.b.x & 43688u) << (18292u % 32u), _wgslsmith_dot_vec4_u32(abs(~global0.d.c.e), countOneBits(firstTrailingBit(global0.d.c.e))), 10269u);
    let var_1 = global0.d.c;
    let var_2 = global0.d;
    let var_3 = 38036u;
    var var_4 = var_2.c.b.yww;
    return vec3<f32>(_wgslsmith_div_f32(-2052f, 189f), -1571f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -386f)))))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_2());
    let var_1 = Struct_3(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.c.c)))) * var_0.x), global0.c, Struct_2(vec2<u32>(~(~31692u), u_input.b.x), !vec2<bool>(false, global0.d.c.c <= 487f), global0.c, _wgslsmith_mult_i32(global0.d.d, global0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_0.x))))));
    global0 = Struct_3(var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -500f), Struct_1(~(vec2<u32>(u_input.a.x, var_1.c.e.x) >> (vec2<u32>(1u, global0.d.c.e.x) % vec2<u32>(32u))), var_1.c.b, var_0.x, -(~(-1i)), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(31132u, var_1.d.a.x, 0u, 10907u), ~global0.c.e)), var_1.d, global0.b);
    var var_2 = var_1.c.e.x;
    var_2 = firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(global0.c.e, ~min(vec4<u32>(u_input.b.x, 17789u, 50903u, u_input.a.x), global0.c.e)), 1u));
    return Struct_1(~(~global0.c.e.yz), !select(select(!vec4<bool>(var_1.c.b.x, global0.c.b.x, global0.c.b.x, true), vec4<bool>(global0.d.c.b.x, false, false, global0.d.b.x), !global0.d.c.b.x), vec4<bool>(var_1.d.b.x, all(var_1.d.b), true, all(vec3<bool>(var_1.c.b.x, false, false))), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1453f, 1825f)) + _wgslsmith_div_f32(903f, global0.e)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(572f)), _wgslsmith_f_op_f32(var_1.d.c.c - -1000f)))), var_1.c.d, vec4<u32>(~var_1.d.c.a.x, var_1.c.a.x, 51499u, 19326u));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<f32>) -> Struct_1 {
    global0 = Struct_3(arg_1 >> (~vec2<u32>(48601u, 26529u) % vec2<u32>(32u)), -2634f, Struct_1(vec2<u32>(arg_0.a.x, arg_0.a.x), arg_0.b, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(319f, _wgslsmith_f_op_f32(f32(-1f) * -1229f)))), -_wgslsmith_clamp_i32(-87366i, -15205i, -38713i) << (global0.d.a.x % 32u), firstTrailingBit(arg_0.e)), Struct_2(select(~u_input.a >> (global0.c.e.xz % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(arg_0.a, vec2<u32>(1u, 45932u)), u_input.b), global0.d.b), vec2<bool>(arg_0.e.x < _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 2829u, 22626u, 75910u), arg_0.e), false), func_1(), -_wgslsmith_mod_i32(countOneBits(arg_1.x), ~arg_0.d)), _wgslsmith_f_op_f32(-global0.e));
    let var_0 = Struct_2(vec2<u32>(_wgslsmith_sub_u32(1u ^ _wgslsmith_dot_vec4_u32(global0.c.e, vec4<u32>(u_input.c, 4294967295u, 0u, 52966u)), 8435u), arg_0.a.x), !(!(!(!arg_0.b.yx))), Struct_1(_wgslsmith_mod_vec2_u32(arg_0.e.yz, vec2<u32>(1877u, 60650u) << (select(arg_0.a, global0.c.e.xy, global0.c.b.xz) % vec2<u32>(32u))), vec4<bool>(all(arg_0.b), any(arg_0.b.yx), false, !(!arg_0.b.x)), 2074f, min(-global0.c.d, ~(-1i)) >> (abs(~global0.d.c.a.x) % 32u), vec4<u32>(arg_0.a.x, ~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.e.x, arg_0.a.x), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.a.x, 4294967295u), global0.c.a)), 1u)), -58546i);
    global0 = Struct_3(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(var_0.c.d, select(2147483647i, -2147483647i, true)), ~_wgslsmith_add_i32(var_0.d, arg_1.x)), global0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(285f, _wgslsmith_f_op_f32(global0.b * var_0.c.c))) - -495f)), func_1(), var_0, _wgslsmith_f_op_f32(-1545f + 331f));
    var var_1 = ~abs(firstLeadingBit(_wgslsmith_mod_vec3_i32(~vec3<i32>(2147483647i, global0.a.x, 2147483647i), ~vec3<i32>(37365i, 0i, arg_1.x))));
    let var_2 = _wgslsmith_clamp_u32(var_0.a.x, global0.c.a.x & abs(4294967295u), _wgslsmith_add_u32(~_wgslsmith_mult_u32(_wgslsmith_add_u32(var_0.c.e.x, 4294967295u), _wgslsmith_mod_u32(u_input.b.x, 1u)), _wgslsmith_add_u32(abs(_wgslsmith_sub_u32(arg_0.e.x, 111884u)), _wgslsmith_dot_vec3_u32(select(vec3<u32>(global0.c.a.x, var_0.a.x, 20766u), arg_0.e.yww, var_0.c.b.x), ~global0.d.c.e.wxw))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(), ~global0.a, vec3<f32>(_wgslsmith_f_op_f32(global0.e - _wgslsmith_f_op_f32(-1092f + _wgslsmith_f_op_f32(global0.b * -616f))), global0.d.c.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -672f)))));
    var_0 = global0.d.c;
    var var_1 = global0.d.c.b.x;
    let var_2 = true;
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-220f, vec4<i32>(reverseBits(~(var_0.d | var_0.d)), -1i, _wgslsmith_mult_i32(var_0.d, -47564i), var_0.d), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(abs(max(vec3<i32>(global0.c.d, -34620i, -34765i), vec3<i32>(46730i, var_0.d, 1i))), ~vec3<i32>(-40034i, 0i, var_0.d)), _wgslsmith_sub_vec3_i32(-firstLeadingBit(vec3<i32>(2909i, var_0.d, var_0.d)), ~max(vec3<i32>(1i, -1i, 1i), vec3<i32>(global0.a.x, global0.c.d, global0.d.c.d)))), var_0.c, 4294967295u);
}

