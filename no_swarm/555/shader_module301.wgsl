struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: u32,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
    c: vec2<bool>,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_5 {
    a: vec2<i32>,
    b: bool,
    c: i32,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(1631i, -1i, -1i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-242f, _wgslsmith_f_op_f32(-1716f - 1f), _wgslsmith_f_op_f32(min(-731f, _wgslsmith_f_op_f32(1620f - 1832f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1158f, 2276f)), -1014f))))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, 453f), var_0.xzy, vec3<bool>(true, true, true))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(134f, -468f, -1000f), var_0.xyz, true))) * var_0.yzx), ~(arg_0 & 65165u) < (_wgslsmith_div_u32(28100u, arg_0) >> ((arg_0 >> (arg_0 % 32u)) % 32u))), vec3<bool>(_wgslsmith_div_f32(var_0.x, var_0.x) <= var_0.x, true, false), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-514f, -1000f, 442f, -471f) + vec4<f32>(459f, var_0.x, -1506f, var_0.x)) + var_0), _wgslsmith_f_op_vec4_f32(sign(var_0)), select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true)), false))))));
    global0 = firstTrailingBit(~firstTrailingBit(firstTrailingBit(vec3<i32>(21970i, global0.x, 2147483647i))) | reverseBits(firstTrailingBit(vec3<i32>(53463i, u_input.c.x, -2147483647i) << (vec3<u32>(arg_0, arg_0, 34342u) % vec3<u32>(32u)))));
    var var_2 = Struct_5(global0.yy, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(1304f * -732f)), -316f)) >= _wgslsmith_div_f32(var_1.a.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_1.a.b.x, var_0.x))))), 0i, _wgslsmith_f_op_f32(-var_1.c.x), abs(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 27905u, 9197u, 0u), vec4<u32>(arg_0, arg_0, 46819u, arg_0)), _wgslsmith_div_vec4_u32(~vec4<u32>(26996u, arg_0, arg_0, arg_0), vec4<u32>(43984u, arg_0, arg_0, arg_0) >> (vec4<u32>(1u, arg_0, arg_0, 1u) % vec4<u32>(32u))))));
    let var_3 = Struct_5(vec2<i32>(firstTrailingBit(firstLeadingBit(var_2.c)), -var_2.a.x >> (~var_2.e % 32u)) ^ global0.yz, !(~firstLeadingBit(var_2.e) != _wgslsmith_div_u32(0u, 4294967295u)), 0i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_div_f32(-1879f, var_1.a.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(448f)), 678f)), all(!var_1.b))))), var_2.e & _wgslsmith_div_u32(arg_0, ~70683u ^ arg_0));
    return 321f;
}

fn func_2(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: vec2<u32>) -> vec3<i32> {
    let var_0 = 843f;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c))) + var_0), _wgslsmith_f_op_f32(func_3(arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)))), -314f);
    let var_2 = Struct_3(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(global0.zy, ~vec2<i32>(global0.x, 1i), vec2<i32>(1i, -1i) >> (vec2<u32>(4294967295u, arg_0.d) % vec2<u32>(32u))), select(_wgslsmith_sub_vec2_i32(arg_0.a, ~arg_0.a), arg_0.a, (var_0 > 1021f) || false)), 337f, _wgslsmith_div_f32(var_0, var_1.x), _wgslsmith_add_u32(~(~42863u) << (countOneBits(_wgslsmith_clamp_u32(arg_0.d, arg_0.d, arg_2.x)) % 32u), _wgslsmith_mod_u32(0u, ~select(1u, 4294967295u, false))));
    var var_3 = 1000f;
    var var_4 = vec4<bool>(arg_1.x, any(arg_1.zzx), all(vec4<bool>(false, all(vec4<bool>(false, true, true, true)), arg_1.x, select(arg_1.x, any(arg_1.yyy), true))), !(arg_0.a.x >= -arg_0.a.x) || !(-2147483647i <= global0.x));
    return (vec3<i32>(arg_0.a.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, -43697i, 2147483647i, arg_0.a.x), vec4<i32>(u_input.b, arg_0.a.x, 2147483647i, global0.x)), abs(reverseBits(-1i))) ^ countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, var_2.a.x, 2147483647i), vec3<i32>(var_2.a.x, -18220i, arg_0.a.x)))) & -((abs(vec3<i32>(global0.x, arg_0.a.x, arg_0.a.x)) | ~vec3<i32>(47327i, u_input.c.x, arg_0.a.x)) | _wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.b, 0i, 42945i), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, u_input.d.x, 2147483647i), vec3<i32>(arg_0.a.x, 23984i, u_input.e))));
}

fn func_1(arg_0: u32) -> Struct_3 {
    global0 = _wgslsmith_clamp_vec3_i32(firstTrailingBit(firstLeadingBit(~vec3<i32>(global0.x, global0.x, -16232i))), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, 0i), vec3<i32>(0i, 4135i, u_input.a.x)), vec3<i32>(global0.x, global0.x, global0.x) | vec3<i32>(global0.x, 42172i, -32836i)), ~(-vec3<i32>(0i, 14191i, u_input.b))), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-2147483647i, u_input.b), u_input.d.x, ~u_input.d.x), min(vec3<i32>(-2147483647i, global0.x, -2147483647i) & vec3<i32>(u_input.a.x, -81176i, global0.x), vec3<i32>(1i, u_input.b, 0i))), vec3<i32>(global0.x, 28171i, -56148i)), _wgslsmith_clamp_vec3_i32(countOneBits(_wgslsmith_clamp_vec3_i32(func_2(Struct_3(vec2<i32>(u_input.e, -8548i), 639f, -999f, arg_0), vec4<bool>(true, true, true, true), vec2<u32>(arg_0, 0u)), vec3<i32>(-8298i, u_input.d.x, u_input.b), select(vec3<i32>(u_input.c.x, -3441i, 2147483647i), vec3<i32>(2147483647i, 24598i, global0.x), vec3<bool>(false, false, true)))), -(~countOneBits(vec3<i32>(-15128i, global0.x, u_input.d.x))), reverseBits(-vec3<i32>(u_input.b, u_input.c.x, 30870i))));
    let var_0 = vec3<u32>(~4294967295u, 4294967295u, _wgslsmith_mult_u32(_wgslsmith_add_u32(~27605u, 1u), max(_wgslsmith_mult_u32(10770u >> (arg_0 % 32u), firstTrailingBit(4294967295u)), select(_wgslsmith_add_u32(10771u, arg_0), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(arg_0, arg_0, arg_0)), true))));
    var var_1 = abs(-24010i);
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(-1f), -264f) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -199f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-520f + -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1106f + -843f) * _wgslsmith_f_op_f32(f32(-1f) * -2198f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -865f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.x))))));
    return Struct_3(vec2<i32>(-global0.x, global0.x), var_3, _wgslsmith_f_op_f32(var_2.x - -1965f), _wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, arg_0, 39655u), vec3<u32>(var_0.x, var_0.x, arg_0)), abs(max(vec3<u32>(19081u, var_0.x, 0u), var_0))) | 4294967295u);
}

fn func_4(arg_0: Struct_3) -> vec3<i32> {
    var var_0 = Struct_1(arg_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(423f, arg_0.b, 412f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_0.c, arg_0.b))))))), true);
    var var_1 = _wgslsmith_f_op_f32(floor(-586f));
    let var_2 = -global0.x;
    global0 = -select(_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(2147483647i, u_input.c.x, 34235i)), vec3<i32>(37570i, 2147483647i, 1i)) | -vec3<i32>(global0.x, -2147483647i, 0i), -vec3<i32>(-global0.x, 20145i, ~(-1i)), vec3<bool>(all(!vec4<bool>(false, true, false, var_0.c)), var_0.c | all(vec2<bool>(var_0.c, var_0.c)), true));
    global0 = -_wgslsmith_add_vec3_i32(min(-vec3<i32>(5853i, arg_0.a.x, -13188i), -vec3<i32>(1i, var_2, -1i)) << (vec3<u32>(firstLeadingBit(4294967295u), max(39725u, 25711u), ~1u) % vec3<u32>(32u)), ~(~vec3<i32>(u_input.e, var_2, 1i) & vec3<i32>(0i, u_input.e, 1i)));
    return countOneBits(vec3<i32>(select(-3126i, u_input.a.x, false), (i32(-1i) * -u_input.e) & arg_0.a.x, firstTrailingBit(-arg_0.a.x & _wgslsmith_add_i32(-2147483647i, u_input.d.x))));
}

fn func_5(arg_0: u32, arg_1: vec3<i32>, arg_2: bool, arg_3: vec3<i32>) -> Struct_5 {
    global0 = vec3<i32>(1i, 9445i, -(u_input.c.x | (-72132i & _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 1i, 32808i, u_input.a.x), vec4<i32>(13877i, 1i, arg_3.x, arg_3.x)))));
    var var_0 = Struct_3(global0.xz, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(func_1(arg_0).b, _wgslsmith_f_op_f32(-386f * -338f)))))), 153f, arg_0);
    var var_1 = firstLeadingBit(_wgslsmith_clamp_vec4_i32(reverseBits(~vec4<i32>(arg_3.x, 0i, -1i, 51953i)) >> (vec4<u32>(_wgslsmith_clamp_u32(3049u, 29438u, arg_0), ~51565u, ~4294967295u, ~1611u) % vec4<u32>(32u)), vec4<i32>(global0.x, -(arg_1.x & arg_1.x), min(-13948i << (1u % 32u), 19715i), var_0.a.x), vec4<i32>(-_wgslsmith_sub_i32(var_0.a.x, 2147483647i), 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, var_0.a.x, 53164i, arg_3.x) & vec4<i32>(-1i, var_0.a.x, 1i, arg_1.x), vec4<i32>(arg_1.x, -1i, arg_3.x, 0i) | vec4<i32>(arg_1.x, var_0.a.x, global0.x, -20642i)), abs(-var_0.a.x))));
    let var_2 = _wgslsmith_f_op_f32(trunc(var_0.c));
    var_1 = -vec4<i32>(37856i, ~arg_3.x, ~_wgslsmith_mult_i32(var_0.a.x, 2147483647i) & _wgslsmith_mod_i32(~55919i, i32(-1i) * -15789i), 0i);
    return Struct_5(abs(_wgslsmith_div_vec2_i32(~reverseBits(vec2<i32>(-9448i, arg_1.x)), firstTrailingBit(vec2<i32>(-34479i, global0.x)) ^ ~vec2<i32>(-2147483647i, var_1.x))), arg_2, arg_3.x, -1085f, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(45930u, reverseBits(45059u)), vec2<u32>(8020u, arg_0)), ~7760u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-494f, _wgslsmith_f_op_f32(sign(-1016f))));
    let var_1 = vec4<bool>(true, true, true, true);
    let var_2 = func_5(1u, ~(vec3<i32>(-1i) * -(vec3<i32>(u_input.d.x, -6898i, 1293i) & vec3<i32>(global0.x, 2147483647i, global0.x))), _wgslsmith_sub_u32(1u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4000u), vec2<u32>(1u, 1u)))) <= 46546u, func_4(func_1(1u)));
    var var_3 = Struct_5(min(_wgslsmith_mod_vec2_i32(u_input.c, abs(func_2(Struct_3(u_input.a, var_0, var_2.d, 1u), vec4<bool>(true, true, true, true), vec2<u32>(4294967295u, 4294967295u)).xy)), ~vec2<i32>(-u_input.e, -14678i | var_2.c)), !var_2.b, -global0.x, var_2.d, ~abs(~func_5(21274u, vec3<i32>(-2147483647i, -8282i, 14216i), var_1.x, vec3<i32>(u_input.e, var_2.c, 15184i)).e));
    var var_4 = vec2<f32>(var_2.d, var_3.d);
    let var_5 = true;
    var var_6 = Struct_5(vec2<i32>(51866i, 1i), var_1.x, 6634i, -1657f, _wgslsmith_sub_u32(~16982u | func_1(4294967295u).d, var_3.e ^ var_2.e) ^ _wgslsmith_add_u32(~(~var_3.e), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.e, 4570u, var_2.e, 4294967295u), vec4<u32>(var_2.e, var_3.e, var_2.e, var_3.e)), ~0u)));
    var var_7 = Struct_5(firstTrailingBit(var_3.a), !any(!var_1.ywx), ~var_3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -702f) - var_3.d)), 4294967295u);
    let var_8 = func_5(_wgslsmith_dot_vec3_u32(select(~(~vec3<u32>(9101u, var_6.e, var_3.e)), ~(~vec3<u32>(var_2.e, var_2.e, 13933u)), !all(vec3<bool>(var_1.x, var_3.b, false))), reverseBits(max(reverseBits(vec3<u32>(4294967295u, var_3.e, var_7.e)), ~vec3<u32>(var_2.e, 9713u, 0u)))), max(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, u_input.d.x, var_3.c) ^ vec3<i32>(var_6.a.x, -7394i, var_6.a.x), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 9309i, 43425i), vec3<i32>(-1i, 36431i, var_3.c)))), vec3<i32>(_wgslsmith_sub_i32(32094i, func_2(Struct_3(vec2<i32>(u_input.a.x, 1412i), 1843f, 840f, 0u), var_1, vec2<u32>(4294967295u, var_2.e)).x), ~_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, -86562i, -2147483647i, var_2.c), vec4<i32>(1i, 0i, var_6.c, var_2.c)), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_7.a.x), vec2<i32>(var_7.a.x, var_7.a.x)), firstLeadingBit(-17288i)))), !(!(!var_1.x)), ~vec3<i32>(var_7.a.x, -10153i, global0.x)).e;
    let x = u_input.a;
    s_output = StorageBuffer(-708f, var_8, ~vec3<i32>(_wgslsmith_mod_i32(func_2(Struct_3(vec2<i32>(0i, 42226i), -304f, var_4.x, 48815u), vec4<bool>(false, var_6.b, var_3.b, true), vec2<u32>(var_7.e, 4294967295u)).x, 1i & global0.x), ~_wgslsmith_dot_vec2_i32(vec2<i32>(46898i, var_3.a.x), vec2<i32>(-1029i, -4608i)), 0i & min(u_input.d.x, u_input.d.x)), abs(reverseBits(vec4<u32>(24944u, var_7.e, var_2.e, 23685u)) >> (vec4<u32>(var_3.e, var_8, _wgslsmith_dot_vec3_u32(vec3<u32>(var_7.e, var_2.e, var_7.e), vec3<u32>(17965u, 80701u, var_3.e)), var_3.e) % vec4<u32>(32u))), -abs(-35773i));
}

