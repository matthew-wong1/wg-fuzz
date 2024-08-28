struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> i32 {
    let var_0 = ~u_input.a.xw & (u_input.a.yz | vec2<i32>(2147483647i, max(-2147483647i, arg_0.a)));
    let var_1 = ~(~(~1u));
    var var_2 = -_wgslsmith_sub_i32(min(~u_input.c, 19186i), -46621i) | (firstLeadingBit(44902i ^ _wgslsmith_mod_i32(arg_0.a, var_0.x)) ^ max(~1i, _wgslsmith_sub_i32(27082i, i32(-1i) * -59436i)));
    var var_3 = abs(max(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.b, 58078u)), ~vec2<u32>(0u, 2052u)), _wgslsmith_add_u32(arg_1, arg_1)), (var_1 ^ reverseBits(var_1)) << (select(countOneBits(0u), 0u, false) % 32u)));
    var var_4 = -484f;
    return 1i;
}

fn func_2(arg_0: vec2<f32>) -> Struct_3 {
    var var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, abs(u_input.a.x), _wgslsmith_sub_i32(select(u_input.a.x, 15540i, false), u_input.c), -func_3(Struct_3(-2339i, arg_0, vec4<f32>(-857f, arg_0.x, 873f, arg_0.x)), 4294967295u)), vec4<i32>(_wgslsmith_clamp_i32(15943i, -u_input.a.x, select(u_input.c, 19709i, true)), u_input.a.x, ~_wgslsmith_mult_i32(-6194i, u_input.a.x), u_input.c)) << (vec4<u32>(37613u, ~abs(abs(u_input.b)), u_input.b, 0u) % vec4<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_2 = Struct_2(any(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), any(vec2<bool>(true, false))), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true))), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_0.x)))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-956f, -458f, var_1) - vec3<f32>(arg_0.x, -1582f, arg_0.x)), vec3<f32>(-238f, arg_0.x, -511f)))))), -countOneBits(u_input.a.x), vec2<f32>(_wgslsmith_f_op_f32(ceil(-1049f)), 246f));
    var_2 = Struct_2(false, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1, _wgslsmith_div_f32(-370f, var_2.b.a)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(359f, 320f, -1248f))))))), _wgslsmith_mult_i32(var_0.x, _wgslsmith_div_i32(var_0.x, var_0.x) & var_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -836f)));
    var_2 = Struct_2(any(select(!(!vec4<bool>(false, false, false, var_2.a)), select(!vec4<bool>(true, var_2.a, var_2.a, true), select(vec4<bool>(true, var_2.a, var_2.a, var_2.a), vec4<bool>(var_2.a, true, true, var_2.a), vec4<bool>(var_2.a, true, var_2.a, var_2.a)), var_2.a), !var_2.a)), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-var_2.d.x)))), var_2.b.b), 2147483647i, arg_0);
    return Struct_3(var_2.c, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(111f, var_1), -184f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-139f * var_1))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1180f, 534f, var_2.d.x, var_1) + vec4<f32>(-1306f, 658f, var_2.d.x, var_1)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1417f, 509f, var_2.d.x, arg_0.x), vec4<f32>(522f, var_1, -1000f, 778f))))));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    var var_0 = arg_0.b.x;
    var_0 = -129f;
    var var_1 = func_2(_wgslsmith_f_op_vec2_f32(exp2(arg_0.c.xz)));
    let var_2 = arg_0.c.x;
    var_1 = arg_0;
    return Struct_1(-865f, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.c.yzz)))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<f32>) -> vec2<i32> {
    let var_0 = func_4(func_2(vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))));
    let var_1 = select(vec3<bool>((_wgslsmith_mod_u32(4294967295u, u_input.b) | reverseBits(u_input.b)) < u_input.b, (u_input.b <= _wgslsmith_sub_u32(1u, u_input.b)) != any(vec4<bool>(false, false, true, false)), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, select(true, true, true), true), u_input.c > u_input.a.x), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(false, true)), !(arg_1.x >= 1050f), true)));
    var var_2 = Struct_2(!var_1.x, func_4(func_2(arg_1.zw)), -select(_wgslsmith_div_i32(func_2(var_0.b.yx).a, -2147483647i), u_input.a.x, u_input.b > _wgslsmith_div_u32(91903u, 12695u)), _wgslsmith_f_op_vec2_f32(-func_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1.x, arg_0.x)))).c.wy));
    var var_3 = -1i;
    var var_4 = ~var_2.c;
    return ~(~vec2<i32>(~var_2.c, u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -653f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-264f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(818f, _wgslsmith_f_op_f32(abs(-866f))))), -569f));
    let var_1 = Struct_2(true, func_4(Struct_3(~(~var_0.x), vec2<f32>(-166f, _wgslsmith_f_op_f32(step(-877f, 1000f))), vec4<f32>(-1295f, -1000f, _wgslsmith_f_op_f32(-1183f * -1000f), _wgslsmith_f_op_f32(sign(394f))))), -var_0.x, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1144f), _wgslsmith_f_op_f32(1024f - -304f))), _wgslsmith_f_op_f32(f32(-1f) * -592f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-456f, -142f) - vec2<f32>(-1925f, 1259f))) * vec2<f32>(-1356f, -665f)))));
    var var_2 = ~countOneBits(4294967295u);
    var_2 = firstLeadingBit(u_input.b);
    let var_3 = Struct_2(all(select(vec2<bool>(false, var_1.a), select(!vec2<bool>(var_1.a, var_1.a), select(vec2<bool>(false, true), vec2<bool>(var_1.a, false), true), false & var_1.a), vec2<bool>(true, true))), func_4(Struct_3(_wgslsmith_mult_i32(~var_0.x, _wgslsmith_div_i32(var_1.c, 2147483647i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.b.b.yy, var_1.b.b.xy) - _wgslsmith_f_op_vec2_f32(-var_1.d)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1463f, -1292f, var_1.d.x, var_1.b.b.x), vec4<f32>(135f, var_1.d.x, 724f, 201f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-217f, 1670f, var_1.d.x, -915f)))))), func_3(func_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-417f, var_1.d.x) + vec2<f32>(var_1.d.x, 421f))))), countOneBits(~_wgslsmith_div_u32(1u, u_input.b))), _wgslsmith_f_op_vec2_f32(select(var_1.d, var_1.b.b.zx, select(!vec2<bool>(false, var_1.a), vec2<bool>(select(true, false, var_1.a), var_1.b.a != 111f), !(!vec2<bool>(var_1.a, var_1.a))))));
    let var_4 = Struct_3(func_3(func_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(var_1.b.b.yz)), _wgslsmith_f_op_vec2_f32(floor(var_3.b.b.zy))))), abs(u_input.b)), _wgslsmith_f_op_vec2_f32(var_3.b.b.xy * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(394f, var_1.d.x)) * var_1.d)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x)), 576f, _wgslsmith_f_op_f32(min(var_1.b.b.x, -1650f)), _wgslsmith_f_op_f32(var_3.d.x + -875f)), vec4<f32>(func_2(_wgslsmith_f_op_vec2_f32(floor(var_1.b.b.xz))).c.x, -1803f, 1394f, _wgslsmith_div_f32(var_1.b.b.x, func_2(var_1.d).c.x)))));
    var_2 = (55345u & _wgslsmith_add_u32(~_wgslsmith_clamp_u32(u_input.b, 0u, 0u), ~abs(0u))) >> (~_wgslsmith_dot_vec2_u32(min(reverseBits(vec2<u32>(u_input.b, 4294967295u)), vec2<u32>(1u, 4294967295u)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(u_input.b, 4294967295u))) % 32u);
    let var_5 = func_4(Struct_3(0i, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_4.c.zy, _wgslsmith_f_op_vec2_f32(var_3.d - var_3.b.b.xx)) - vec2<f32>(-108f, _wgslsmith_f_op_f32(var_1.d.x - var_3.b.b.x))), var_4.c));
    let var_6 = Struct_2(!var_3.a, Struct_1(809f, vec3<f32>(_wgslsmith_f_op_f32(-2000f - _wgslsmith_f_op_f32(-887f - var_4.b.x)), var_3.d.x, _wgslsmith_div_f32(var_5.b.x, var_3.b.b.x))), ~u_input.a.x, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_2(vec2<f32>(1819f, -413f)).c.yx + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1078f), _wgslsmith_f_op_f32(f32(-1f) * -1141f))))));
    let x = u_input.a;
    s_output = StorageBuffer((-u_input.a.wz ^ ~(vec2<i32>(var_0.x, u_input.c) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)))) & _wgslsmith_div_vec2_i32((u_input.a.yy & var_0) >> (select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b), vec2<bool>(var_6.a, var_3.a)) % vec2<u32>(32u)), (vec2<i32>(var_4.a, 22502i) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))) ^ vec2<i32>(1i, 2147483647i)), _wgslsmith_mult_vec3_u32(~(~vec3<u32>(4294967295u, 4294967295u, 45783u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.b, u_input.b, u_input.b) | select(vec3<u32>(79153u, u_input.b, 1u), vec3<u32>(u_input.b, 0u, u_input.b), vec3<bool>(true, var_1.a, var_6.a)), ~vec3<u32>(1u, u_input.b, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1u, u_input.b), abs(vec3<u32>(u_input.b, 12042u, 68773u))))), vec3<f32>(_wgslsmith_f_op_f32(-var_6.d.x), 175f, 124f));
}

