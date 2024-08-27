struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: f32,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: u32) -> vec2<i32> {
    var var_0 = arg_1.a;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-global0.x), arg_0, _wgslsmith_f_op_f32(arg_1.b.x + -526f), ~arg_2, Struct_2(arg_0.a, arg_0.b, _wgslsmith_f_op_f32(-arg_1.b.x)));
    let var_2 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-349f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-505f, 1450f)))), -725f))));
    var var_3 = !(!any(select(vec4<bool>(arg_0.b.x, true, arg_0.b.x, arg_0.b.x), !vec4<bool>(true, true, false, var_1.b.b.x), var_1.b.b.x)));
    let var_4 = !(!(!select(vec4<bool>(arg_0.b.x, true, var_1.b.b.x, var_1.b.b.x), vec4<bool>(true, var_1.e.b.x, var_1.b.b.x, true), var_1.e.b.x)));
    return vec2<i32>(select(~_wgslsmith_add_i32(arg_1.a.x, var_1.b.a.a), min(11625i >> (_wgslsmith_clamp_u32(86251u, 1283u, u_input.a.x) % 32u), countOneBits(1i << (arg_2 % 32u))), -_wgslsmith_mult_i32(arg_0.a.a, -25113i) > ~(var_1.b.a.a & u_input.b)), -21897i);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<i32>) -> vec4<f32> {
    var var_0 = Struct_1(~(i32(-1i) * -2147483647i));
    let var_1 = select(vec4<bool>(false, select(true, true, any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true))), true, true), select(vec4<bool>(_wgslsmith_mod_u32(4294967295u, 4294967295u) == u_input.a.x, 1u >= u_input.a.x, _wgslsmith_div_f32(1000f, 893f) > _wgslsmith_f_op_f32(sign(1680f)), false), vec4<bool>(false, true, true, any(vec2<bool>(true, false)) || true), false), select(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, all(vec3<bool>(false, true, false)), var_0.a <= ~var_0.a, true), all(vec2<bool>(all(vec4<bool>(true, true, true, true)), true))));
    var var_2 = Struct_2(Struct_1(1i), var_1.xxw, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x * global0.x))));
    var var_3 = 4294967295u;
    var_2 = Struct_2(var_2.a, !var_2.b, var_2.c);
    return vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-216f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x)))))), 2117f, global0.x, var_2.c);
}

fn func_2() -> Struct_2 {
    var var_0 = select(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), false)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), all(vec3<bool>(false, true, false))), vec4<bool>(true, true, true, true)), !vec4<bool>(all(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, false)), true, true), all(!vec3<bool>(any(vec2<bool>(false, false)), true, 2851u < u_input.a.x)));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(func_3(Struct_2(Struct_1(u_input.b), var_0.zwz, global0.x), Struct_4(vec2<i32>(u_input.b, 13330i), global0.zz, u_input.b), 1u), vec4<i32>(-2771i, -1i, -1i, u_input.b)))))) + vec4<f32>(_wgslsmith_f_op_f32(select(-245f, global0.x, true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1998f, global0.x))), _wgslsmith_f_op_f32(-461f - _wgslsmith_f_op_f32(-global0.x)))), 1826f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, global0.x))), _wgslsmith_f_op_f32(-376f - _wgslsmith_f_op_vec4_f32(func_4(vec2<i32>(21928i, 9890i), vec4<i32>(u_input.b, -14108i, -17517i, u_input.b))).x))));
    let var_1 = Struct_1(-21298i);
    let var_2 = Struct_4(~abs(~(vec2<i32>(var_1.a, u_input.b) >> (vec2<u32>(49180u, 49987u) % vec2<u32>(32u)))), vec2<f32>(global0.x, -706f), var_1.a);
    let var_3 = !all(select(vec4<bool>(var_0.x, var_0.x, any(var_0.wxz), all(vec4<bool>(true, var_0.x, var_0.x, false))), vec4<bool>(all(var_0.yw), any(var_0.yz), true, 34385u != u_input.a.x), !(!vec4<bool>(false, var_0.x, false, true))));
    return Struct_2(Struct_1(-80916i | -_wgslsmith_mult_i32(u_input.b, var_1.a)), var_0.wyw, -141f);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: Struct_2) -> f32 {
    let var_0 = arg_3.b.x || (_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(arg_3.a.a, 11495i), vec2<i32>(u_input.b, 0i)), ~vec4<i32>(arg_0.a, arg_0.a, 40906i, u_input.b))).x)) >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_3.c - _wgslsmith_f_op_f32(-arg_3.c)))));
    let var_1 = -_wgslsmith_sub_vec2_i32(vec2<i32>(1i ^ arg_3.a.a, -_wgslsmith_sub_i32(arg_0.a, arg_0.a)), (vec2<i32>(-2147483647i, arg_3.a.a) >> (countOneBits(vec2<u32>(arg_2.x, 0u)) % vec2<u32>(32u))) & vec2<i32>(-23642i, firstTrailingBit(0i)));
    let var_2 = ~arg_3.a.a;
    var var_3 = arg_3.b.x;
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.c, func_2().c, 1000f, func_2().c));
    return arg_1.x;
}

fn func_1(arg_0: vec3<i32>) -> vec2<f32> {
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-global0.x)) * global0.x), _wgslsmith_f_op_f32(max(-928f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(f32(-1f) * -480f)))), global0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_5(Struct_1(-3213i), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1629f, global0.x, global0.x, -1378f) - vec4<f32>(189f, global0.x, global0.x, global0.x)), u_input.a, func_2()))))));
    var var_0 = Struct_4(-(~arg_0.zz) << (~(vec2<u32>(29990u, u_input.a.x) | ~u_input.a) % vec2<u32>(32u)), vec2<f32>(_wgslsmith_div_f32(func_2().c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x))), -1349f), -select(max(u_input.b, func_2().a.a), _wgslsmith_clamp_i32(~2147483647i, u_input.b, -1i >> (u_input.a.x % 32u)), select(true, true, false)));
    var var_1 = Struct_4(countOneBits(min(arg_0.xy, arg_0.yy)), vec2<f32>(_wgslsmith_div_f32(global0.x, var_0.b.x), _wgslsmith_f_op_f32(func_2().c * _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1291f))))), func_3(func_2(), Struct_4(var_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-253f, var_0.b.x)))), -min(arg_0.x, var_0.a.x)), countOneBits(select(countOneBits(u_input.a.x), ~4294967295u, true))).x);
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_0.x, 2147483647i & _wgslsmith_add_i32(~49455i, var_0.a.x), 2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(~select(-1i, arg_0.x, true), 1i, var_1.c, -4658i), -vec4<i32>(2147483647i, var_1.a.x, arg_0.x, 2147483647i)));
    var_2 = ~(12230i >> (u_input.a.x % 32u));
    return _wgslsmith_f_op_vec2_f32(global0.xx - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, -982f)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b), _wgslsmith_f_op_vec2_f32(-var_1.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(~vec3<i32>(u_input.b, u_input.b, u_input.b) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.b, u_input.b), vec3<i32>(2147483647i, u_input.b, u_input.b)))) * _wgslsmith_f_op_vec2_f32(select(global0.zw, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_1(vec3<i32>(2147483647i, u_input.b, -1i))), global0.xy, select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)))), !select(vec2<bool>(false, true), vec2<bool>(false, true), false)))));
    let var_1 = 106556i;
    let var_2 = _wgslsmith_clamp_u32(reverseBits(firstLeadingBit(~_wgslsmith_mod_u32(82265u, u_input.a.x))), u_input.a.x, ~1u);
    var var_3 = var_0.x;
    let var_4 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.wwy) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(1156f, global0.x)), _wgslsmith_f_op_f32(max(global0.x, -417f)), _wgslsmith_f_op_f32(-global0.x))))));
    global0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 234f, var_0.x, 587f))))));
    let var_5 = vec4<u32>(var_2, abs(4294967295u), 10295u, var_2);
    var var_6 = vec4<i32>(_wgslsmith_clamp_i32(~_wgslsmith_mod_i32(2147483647i, u_input.b << (4294967295u % 32u)), 1i, firstTrailingBit(~(-56827i)) | select(2280i ^ var_1, u_input.b, true)), 0i, min(func_2().a.a, func_3(func_2(), Struct_4(-vec2<i32>(17644i, var_1), vec2<f32>(1197f, 495f), u_input.b), u_input.a.x).x), select(u_input.b, -(~max(-4478i, u_input.b)), false));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_4.x, var_4.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-374f * 1199f))))), var_2);
}

