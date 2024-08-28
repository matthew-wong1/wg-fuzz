struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<u32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    let var_0 = firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.b, _wgslsmith_mod_vec4_i32(u_input.b, u_input.b)), global0.b)) | vec2<i32>(1i, ~global0.b);
    var var_1 = u_input.c;
    var var_2 = Struct_1(_wgslsmith_mod_vec2_i32(var_0, vec2<i32>(~firstLeadingBit(global0.a.x), -(~global0.b))), 0i);
    global0 = Struct_1(-_wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(0i, 34838i)), min(vec2<i32>(var_0.x, u_input.a.x), firstLeadingBit(u_input.b.zw))), -2147483647i);
    var var_3 = Struct_2(Struct_1(u_input.a, -(~(global0.a.x ^ u_input.d))), Struct_1(vec2<i32>(max(~u_input.b.x, -27725i), var_2.b), ~_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(var_0.x, u_input.b.x)), var_2.a)), Struct_1(-firstLeadingBit(~vec2<i32>(0i, -59890i)), min(4888i, -59745i)));
    return arg_0.x;
}

fn func_2() -> Struct_1 {
    let var_0 = firstLeadingBit(firstLeadingBit(~abs(vec4<u32>(4294967295u, 1u, 2727u, u_input.e)))) >> (min(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(41776u, 0u), 1u), 1u, 1u, _wgslsmith_mod_u32(u_input.e, _wgslsmith_add_u32(u_input.c, u_input.c))), vec4<u32>(abs(1u), ~45922u, u_input.e, ~_wgslsmith_mod_u32(4294967295u, 29916u))) % vec4<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1297f - _wgslsmith_f_op_f32(step(-1036f, -1376f)))), 1597f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(vec3<f32>(609f, 815f, -807f)))))) * vec3<f32>(_wgslsmith_f_op_f32(round(889f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1207f, -284f))), -131f)), 664f));
    global0 = Struct_1(global0.a, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(5635i & u_input.b.x, u_input.d | -2147483647i)), _wgslsmith_clamp_vec2_i32(u_input.a, firstLeadingBit(vec2<i32>(u_input.d, u_input.b.x)), u_input.b.zy)));
    let var_2 = Struct_1(u_input.a, min(abs(global0.a.x), u_input.b.x));
    let var_3 = Struct_2(var_2, Struct_1(vec2<i32>(_wgslsmith_mod_i32(max(global0.b, var_2.a.x), u_input.b.x), global0.a.x >> (103943u % 32u)), _wgslsmith_dot_vec3_i32(u_input.b.wzz, ~vec3<i32>(global0.a.x, global0.a.x, -2147483647i) & _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 0i, 36848i), u_input.b.zzw))), Struct_1(max(firstTrailingBit(-var_2.a), firstLeadingBit(-u_input.b.zx)), 1i));
    return var_3.b;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_1 {
    global0 = Struct_1(~(~global0.a), arg_0.b);
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-2261f)), _wgslsmith_f_op_f32(round(-1185f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_1.zz), arg_1.xx, select(false, true, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.xx + arg_1.yz))) + arg_1.zz));
    global0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(118f + 419f))))));
    global0 = arg_0;
    return arg_0;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<i32>) -> i32 {
    global0 = func_4(func_2(), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1345f, -1000f, -1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-559f, -1109f, -500f) * vec3<f32>(-1000f, 390f, -163f)), select(arg_0, vec3<bool>(true, true, false), false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(986f, -1471f, -369f))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(196f, -213f, -232f) + vec3<f32>(619f, -1216f, 1358f)), vec3<f32>(-697f, 287f, -290f)))), arg_0)));
    var var_0 = !(!(!(!(!vec2<bool>(arg_0.x, arg_0.x)))));
    let var_1 = Struct_2(arg_1, Struct_1(_wgslsmith_div_vec2_i32(-vec2<i32>(10384i, 1i), global0.a), global0.a.x), Struct_1(-arg_1.a, abs(_wgslsmith_dot_vec2_i32(select(u_input.b.zw, vec2<i32>(arg_1.a.x, 1i), false), -vec2<i32>(arg_1.a.x, 16072i)))));
    var var_2 = arg_0.xx;
    let var_3 = func_4(func_4(Struct_1(abs(global0.a), -_wgslsmith_mod_i32(var_1.c.b, arg_2.x)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1069f, -1498f, -1991f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1101f, -1014f, 597f)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1973f))), -355f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -229f) * -206f)))));
    return -u_input.b.x;
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = func_2();
    global0 = func_2();
    global0 = func_2();
    var var_1 = all(vec4<bool>(true, false, true, all(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)))));
    var var_2 = select(!select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false))), true), select(!vec4<bool>(true, select(true, true, true), true, true), vec4<bool>(true, true, any(vec3<bool>(true, false, false)) | false, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true)), !all(vec3<bool>(false, false, true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), true))));
    return select(select(!var_2.zw, vec2<bool>(false, !select(false, false, var_2.x)), var_2.x), var_2.zy, !select(var_2.xz, !var_2.wz, false));
}

fn func_6(arg_0: vec2<bool>) -> Struct_1 {
    global0 = func_2();
    var var_0 = arg_0.x;
    var_0 = arg_0.x;
    var_0 = false;
    var_0 = false;
    return Struct_1(global0.a, u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(func_5(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(2147483647i, -52491i), 48448i, func_1(vec3<bool>(false, false, true), Struct_1(u_input.b.zx, 2147483647i), u_input.b.zzx)), u_input.b.zww), func_2()));
    var var_0 = vec4<i32>(~14666i, ~(~(~49189i)), u_input.b.x, -_wgslsmith_mult_i32(19441i, 0i));
    let var_1 = vec2<bool>(true, true);
    let var_2 = u_input.c;
    let var_3 = var_1;
    var var_4 = ~1u;
    let var_5 = vec4<f32>(1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(654f + 867f) + _wgslsmith_f_op_f32(select(-1000f, -1000f, var_3.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1538f) - -944f) - 201f))), _wgslsmith_f_op_f32(func_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-153f, -222f)) + -195f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1128f, 1000f, var_3.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1118f + -2337f)))))), -139f);
    let var_6 = vec4<i32>(_wgslsmith_clamp_i32(u_input.b.x, min(global0.b << (~92782u % 32u), var_0.x), 0i), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, _wgslsmith_dot_vec2_i32(var_0.zw, u_input.b.wz), _wgslsmith_sub_i32(-22074i, 64746i)), _wgslsmith_add_vec3_i32(~vec3<i32>(global0.a.x, 2147483647i, global0.b), _wgslsmith_clamp_vec3_i32(var_0.zzz, vec3<i32>(-2147483647i, var_0.x, global0.a.x), vec3<i32>(global0.a.x, -57328i, var_0.x)))), min(~u_input.d ^ 1i, max(1i, -2147483647i))), max(-abs(i32(-1i) * -1i), 1i), ~global0.a.x);
    var var_7 = Struct_2(func_2(), func_4(func_6(!(!var_1)), vec3<f32>(var_5.x, _wgslsmith_f_op_f32(var_5.x + var_5.x), _wgslsmith_f_op_f32(f32(-1f) * -873f))), Struct_1(-(select(u_input.b.wy, var_6.zw, var_1) << ((vec2<u32>(22987u, var_2) | vec2<u32>(10494u, 33919u)) % vec2<u32>(32u))), ~u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(var_5, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_5))) + vec4<f32>(_wgslsmith_f_op_f32(-var_5.x), _wgslsmith_f_op_f32(-1958f * var_5.x), -416f, _wgslsmith_f_op_f32(round(var_5.x))))), _wgslsmith_f_op_f32(ceil(773f)), ~vec3<u32>(60227u, 0u, var_2), 1i, _wgslsmith_mult_vec3_u32(firstTrailingBit(~countOneBits(vec3<u32>(0u, 0u, 0u))), ~(~vec3<u32>(u_input.e, 65083u, 1u)) & ~_wgslsmith_mult_vec3_u32(vec3<u32>(var_2, u_input.e, u_input.c), vec3<u32>(var_2, 4294967295u, 0u))));
}

