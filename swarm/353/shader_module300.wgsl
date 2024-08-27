struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    var var_0 = 1i;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(943f, 932f, 1119f, 482f) + vec4<f32>(269f, 2247f, -803f, -454f)))), vec4<f32>(_wgslsmith_f_op_f32(max(3023f, 975f)), _wgslsmith_f_op_f32(-897f - -901f), _wgslsmith_f_op_f32(-513f * 924f), 1344f)))));
    var var_2 = -308f;
    let var_3 = ~(-2147483647i);
    var var_4 = !all(!vec3<bool>(all(vec3<bool>(false, true, true)), false, true));
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), 1229f));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = -(vec4<i32>(~(arg_1.x & arg_1.x), -min(arg_1.x, arg_1.x), firstLeadingBit(0i), i32(-1i) * -30487i) ^ ~arg_1);
    var_0 = ~(-vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(50397i, var_0.x, 53526i, var_0.x), vec4<i32>(arg_1.x, var_0.x, arg_1.x, 41936i)), var_0.x, min(arg_1.x, ~var_0.x), reverseBits(-arg_1.x)));
    var_0 = vec4<i32>(arg_1.x, arg_1.x, arg_1.x, 0i);
    var_0 = -arg_1;
    let var_1 = 4294967295u;
    return u_input.a.zzw;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<u32>) -> vec4<bool> {
    var var_0 = countOneBits(func_3(vec3<bool>(true, true, true), ~vec4<i32>(2147483647i, _wgslsmith_mod_i32(arg_0.x, 0i), arg_0.x, -10005i), func_2(), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(661f, 1194f) - vec2<f32>(-623f, 894f))))));
    var var_1 = select(!vec2<bool>(false, false != (arg_1.x <= arg_1.x)), !select(vec2<bool>(arg_1.x > u_input.a.x, any(vec3<bool>(true, false, true))), !select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), (2949u >= ~u_input.a.x) && true);
    let var_2 = reverseBits(u_input.a.ww);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-722f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1246f * -2055f) + _wgslsmith_f_op_f32(round(900f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1423f, -610f)) - _wgslsmith_div_f32(-2782f, -2013f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-285f * -356f), -264f))))));
    var var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1708f, -798f, 427f) + vec3<f32>(455f, -886f, -416f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))))), func_2(), func_2());
    return vec4<bool>(true, any(select(select(!vec2<bool>(var_1.x, var_1.x), select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, true)), var_1.x), vec2<bool>(any(vec3<bool>(true, var_1.x, var_1.x)), false), vec2<bool>(true, all(vec3<bool>(false, var_1.x, false))))), !(!((var_0.x > 0u) | true)), ~48705u <= ((var_2.x ^ 4294967295u) >> (35289u % 32u)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = arg_1.b;
    var var_1 = u_input.a.zzy;
    let var_2 = abs(_wgslsmith_sub_i32(-21663i, ~(-arg_2.x))) <= _wgslsmith_clamp_i32(arg_2.x, 38997i, arg_2.x);
    var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(~_wgslsmith_mod_u32(u_input.b, u_input.b), u_input.b, 30615u) >> (~(~u_input.a.zww) % vec3<u32>(32u)), u_input.a.zzy);
    var var_3 = firstLeadingBit(abs(var_1.x));
    return arg_1;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_2 {
    return Struct_2(arg_0.a, func_4(!vec4<bool>(true, false, all(vec4<bool>(false, true, true, true)), true), arg_0, vec4<i32>(-(i32(-1i) * -2147483647i), -11477i, 9538i, abs(_wgslsmith_clamp_i32(22439i, -2147483647i, -13123i)))).c, arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -firstLeadingBit(-1i);
    let var_1 = ~u_input.a.wyx;
    var var_2 = func_5(func_4(!(!func_1(vec2<i32>(1i, 10771i), u_input.a)), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1844f, 2359f, 280f))) * vec3<f32>(1f, 1f, 1f)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-792f, 518f))), func_2()), -(~vec4<i32>(1i, -2147483647i, 10852i, -2147483647i))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -130f))), func_4(vec4<bool>(any(vec2<bool>(false, true)), true, true, select(true, false, false)), func_4(vec4<bool>(true, true, false, true), func_4(vec4<bool>(true, true, false, true), Struct_2(vec3<f32>(1337f, 307f, -1488f), Struct_1(vec2<f32>(238f, -460f)), Struct_1(vec2<f32>(-572f, 1231f))), vec4<i32>(0i, 0i, -11507i, -2147483647i)), select(vec4<i32>(1i, 18677i, -2147483647i, 1i), vec4<i32>(-1i, -39234i, 7803i, 34600i), true)), ~countOneBits(vec4<i32>(0i, -2147483647i, -2147483647i, 1i))).b.a.x, -526f));
    var var_3 = func_4(!vec4<bool>(all(vec3<bool>(true, true, true)), true, any(func_1(vec2<i32>(1i, -6973i), u_input.a).yyy), all(vec4<bool>(false, false, false, false))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_2.a.x, var_2.a.x) * var_2.a) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(497f, var_2.c.a.x, var_2.a.x)))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.a.x, var_2.c.a.x))) * vec2<f32>(-1352f, 1528f))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.a.xz)))), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_add_i32(-2147483647i, 1i), ~2156i, -2147483647i, -1i), select(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i), vec4<bool>(true, true, true, true))) >> (~vec4<u32>(reverseBits(var_1.x), u_input.a.x, _wgslsmith_div_u32(u_input.a.x, u_input.a.x), u_input.a.x) % vec4<u32>(32u)));
    var var_4 = func_1(_wgslsmith_sub_vec2_i32(~(~vec2<i32>(14842i, -1i)), vec2<i32>(-1i) * -vec2<i32>(-40846i, 2226i)) >> (var_1.xx % vec2<u32>(32u)), u_input.a).zwy;
    var_0 = 1i;
    var var_5 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1087f), _wgslsmith_div_f32(var_2.b.a.x, func_5(Struct_2(_wgslsmith_f_op_vec3_f32(-var_2.a), func_5(Struct_2(vec3<f32>(789f, var_2.a.x, var_3.a.x), var_2.b, var_3.c), vec3<f32>(271f, var_3.b.a.x, -872f)).c, func_5(Struct_2(var_3.a, Struct_1(var_2.c.a), var_2.c), var_3.a).b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-655f, -1000f, var_3.c.a.x))).b.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(0u, 44785u ^ _wgslsmith_dot_vec3_u32(u_input.a.wxy, vec3<u32>(0u, u_input.a.x, u_input.a.x)), u_input.a.x), firstTrailingBit(select(reverseBits(~vec3<i32>(23886i, -57716i, -1i)), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 69810i, -34677i), vec3<i32>(-2147483647i, 0i, -3699i)), firstLeadingBit(vec3<i32>(2147483647i, 1i, -20795i))), select(select(vec3<bool>(var_4.x, false, false), vec3<bool>(var_4.x, true, false), true), vec3<bool>(var_4.x, var_4.x, false), var_2.b.a.x >= var_3.a.x))));
}

