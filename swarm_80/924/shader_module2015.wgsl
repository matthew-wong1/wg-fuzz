struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-905f * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1007f)), -125f)))) * _wgslsmith_div_f32(-995f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(-698f, -1227f))))));
    let var_1 = vec4<bool>(true, all(select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), any(vec4<bool>(true, true, false, false))))), !any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), false);
    var var_2 = 1i;
    let var_3 = var_1;
    var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, _wgslsmith_dot_vec2_i32(~vec2<i32>(-34906i, u_input.d.x), u_input.c.yx ^ vec2<i32>(33329i, 38931i)), -u_input.d.x, _wgslsmith_div_i32(i32(-1i) * -18709i, 2147483647i)) >> ((~(~vec4<u32>(4294967295u, 4294967295u, 48424u, 1458u)) & vec4<u32>(u_input.a, 0u, 1u, ~42218u)) % vec4<u32>(32u)), ~(~_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.c.x, u_input.d.x, u_input.c.x, u_input.b.x), -vec4<i32>(-35403i, u_input.d.x, -1i, u_input.c.x))));
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec3<bool>) -> vec4<i32> {
    var var_0 = Struct_1(arg_2.a, ~(~_wgslsmith_mod_u32(0u, ~39142u)), vec3<bool>(false, select(all(vec3<bool>(true, false, true)), select(true, true, true), false), any(arg_0.c)));
    var var_1 = Struct_1(762f, countOneBits(~_wgslsmith_add_u32(21008u, 13881u)) ^ ~u_input.e, vec3<bool>(true, true, true || arg_1));
    var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1788f))) - -662f) - _wgslsmith_f_op_f32(max(arg_2.a, -1170f))), _wgslsmith_clamp_u32(0u & (countOneBits(arg_2.b) | u_input.a), ~(~countOneBits(4294967295u)), ~4294967295u), vec3<bool>(func_3(), min(~4294967295u, 38620u) < _wgslsmith_div_u32(arg_0.b, ~var_0.b), !arg_2.c.x && (_wgslsmith_f_op_f32(-arg_2.a) >= _wgslsmith_f_op_f32(f32(-1f) * -653f))));
    let var_2 = Struct_1(533f, 1u, !vec3<bool>(false, arg_2.c.x, func_3()));
    var_1 = Struct_1(886f, 12574u >> (arg_2.b % 32u), select(!select(var_1.c, select(vec3<bool>(var_1.c.x, arg_0.c.x, true), vec3<bool>(true, true, arg_3.x), arg_0.c), true | var_1.c.x), var_1.c, !(!(!arg_0.c))));
    return vec4<i32>(u_input.b.x, firstTrailingBit(-95667i), u_input.d.x, u_input.c.x);
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> f32 {
    var var_0 = countOneBits(_wgslsmith_clamp_vec4_i32(~_wgslsmith_clamp_vec4_i32(func_2(arg_0, arg_0.c.x, arg_0, vec3<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x)), select(vec4<i32>(2147483647i, u_input.c.x, u_input.d.x, 43990i), vec4<i32>(u_input.d.x, u_input.c.x, 0i, u_input.b.x), arg_0.c.x), select(vec4<i32>(1i, 4615i, u_input.c.x, u_input.b.x), vec4<i32>(u_input.b.x, 2147483647i, u_input.d.x, u_input.d.x), arg_0.c.x)), vec4<i32>(0i, countOneBits(~1i), -71882i, -36703i), ~(~max(vec4<i32>(u_input.c.x, 0i, u_input.c.x, 0i), vec4<i32>(0i, 1i, u_input.b.x, 33156i)))));
    let var_1 = arg_0;
    var_0 = vec4<i32>(-17141i, countOneBits(-2147483647i), select(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, select(-1i, -65341i, arg_0.c.x)), u_input.b), _wgslsmith_dot_vec4_i32(-vec4<i32>(46189i, -41204i, 27123i, u_input.b.x), _wgslsmith_sub_vec4_i32(vec4<i32>(5357i, -1i, u_input.d.x, u_input.b.x), vec4<i32>(-54199i, u_input.b.x, -1i, var_0.x))) | -7792i, arg_0.c.x), ~(-31987i));
    var_0 = select(_wgslsmith_mod_vec4_i32(vec4<i32>(-u_input.b.x, ~(-1i), -(var_0.x & 1i), _wgslsmith_mod_i32(2147483647i >> (arg_0.b % 32u), u_input.c.x)), ~abs(~vec4<i32>(1i, 42356i, u_input.b.x, u_input.b.x))), vec4<i32>(2147483647i, 49514i | ~(-u_input.b.x), -58704i, -30084i), false);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-192f, 1124f)) + _wgslsmith_f_op_f32(min(-444f, 313f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(1f * 1071f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1967f)), _wgslsmith_f_op_f32(-352f * -1000f))) * _wgslsmith_f_op_f32(f32(-1f) * -1376f)), -117f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(155f, 1u, vec3<bool>(false, true, true)), _wgslsmith_f_op_f32(-236f + -1142f)))) * -964f));
    var var_1 = select(!vec3<bool>(-835f == _wgslsmith_f_op_f32(1679f * var_0.x), false, true), vec3<bool>(!any(select(vec2<bool>(false, true), vec2<bool>(false, false), false)), func_3(), !(!all(vec2<bool>(true, false)))), all(select(vec2<bool>(false, all(vec4<bool>(false, false, true, false))), vec2<bool>(true, all(vec3<bool>(false, false, true))), vec2<bool>(var_0.x <= var_0.x, true))));
    let var_2 = Struct_1(-1578f, firstLeadingBit(0u), select(!vec3<bool>(var_0.x >= -246f, true, true), vec3<bool>(-345f == var_0.x, var_1.x | true, true), all(!select(vec4<bool>(var_1.x, true, false, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, false), true))));
    let var_3 = var_1.yy;
    let var_4 = var_2.b;
    let var_5 = firstLeadingBit(~_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a, var_2.b, 82624u), vec3<u32>(4294967295u, 79317u, 32907u), ~vec3<u32>(1u, u_input.a, var_2.b)), select(vec3<u32>(var_2.b, u_input.a, u_input.e), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.e, var_4, u_input.e), vec3<u32>(54311u, u_input.e, var_2.b)), !var_2.c)));
    var var_6 = var_2;
    var_6 = Struct_1(-515f, 0u, select(var_6.c, var_2.c, select(vec3<bool>(false && var_6.c.x, true, all(var_6.c.xz)), !(!vec3<bool>(var_6.c.x, true, false)), var_2.c)));
    var var_7 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_6.a)), _wgslsmith_f_op_f32(-var_6.a)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1092f), _wgslsmith_f_op_f32(f32(-1f) * -1185f))))), var_6.b, !select(!vec3<bool>(true, var_2.c.x, var_2.c.x), select(vec3<bool>(var_6.c.x, false, false), vec3<bool>(true, true, true), select(var_2.c, var_6.c, false)), select(vec3<bool>(var_1.x, false, var_6.c.x), select(vec3<bool>(var_1.x, true, true), vec3<bool>(true, false, false), var_3.x), vec3<bool>(false, var_3.x, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(var_5.yx | vec2<u32>(4294967295u, var_6.b))));
}

