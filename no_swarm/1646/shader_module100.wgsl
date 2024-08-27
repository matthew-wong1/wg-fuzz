struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: vec2<bool>, arg_3: bool) -> vec3<u32> {
    var var_0 = Struct_1(u_input.e.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1137f, -968f, 616f, 720f)))));
    var_0 = Struct_1(u_input.e.x, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(min(var_0.b.x, -640f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b.x))), var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + var_0.b.x))))));
    var_0 = Struct_1(u_input.e.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1234f, 1000f, var_0.b.x, var_0.b.x))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(605f, var_0.b.x, var_0.b.x, -926f)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(var_0.b)))))));
    var var_1 = arg_3;
    var_0 = Struct_1(u_input.e.x, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.x, var_0.b.x, -1000f, -509f), vec4<f32>(var_0.b.x, 1069f, -990f, _wgslsmith_f_op_f32(max(var_0.b.x, var_0.b.x))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, arg_3, false, true), arg_2.x))))));
    return reverseBits(vec3<u32>(~(~var_0.a), 26665u, ~arg_0.x ^ firstLeadingBit(var_0.a)));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = arg_2;
    let var_1 = min(u_input.d.yxy << (_wgslsmith_clamp_vec3_u32(u_input.e.zxy, func_3(u_input.e, 0u, vec2<bool>(arg_0.a, arg_0.a), arg_0.a), reverseBits(vec3<u32>(34572u, 1u, arg_2.a))) % vec3<u32>(32u)), -(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, u_input.d.x, u_input.b), vec3<i32>(-17091i, -1i, u_input.a)) & u_input.d.xzz)) << (~vec3<u32>(max(arg_3, 87937u), ~0u, ~u_input.c.x) % vec3<u32>(32u));
    let var_2 = -(~(~(-reverseBits(20508i))));
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(620f, arg_1, 1000f, arg_2.b.x) + vec4<f32>(561f, arg_1, var_0.b.x, arg_1))) * vec4<f32>(_wgslsmith_div_f32(arg_0.b, -824f), arg_1, _wgslsmith_f_op_f32(-1724f + var_0.b.x), -1000f)))), Struct_2(_wgslsmith_f_op_f32(-arg_1) != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -743f), -1179f)), arg_2.b.x), -(28593i | -var_1.x), arg_0);
    var_0 = Struct_1(select(countOneBits(_wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_2.a, 0u), u_input.e.x)), 1u, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-272f, 732f, 3075f, var_3.b.b)))) * vec4<f32>(arg_2.b.x, arg_2.b.x, _wgslsmith_f_op_f32(arg_2.b.x * _wgslsmith_f_op_f32(round(157f))), -494f)));
    return Struct_1(_wgslsmith_add_u32(~_wgslsmith_div_u32(arg_2.a, 4294967295u), arg_3) ^ arg_2.a, var_3.a);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1) -> bool {
    var var_0 = arg_1.b.x;
    let var_1 = Struct_3(arg_1.b, Struct_2(true || !(arg_0.x <= arg_1.a), 119f), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, abs(1i), -u_input.b, -26163i) << (u_input.e % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(-firstTrailingBit(vec4<i32>(1i, -57922i, 1993i, 2147483647i)), u_input.d)), Struct_2(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1519f))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-var_1.a.xy);
    var var_3 = Struct_2(all(select(vec3<bool>(true, true, true), vec3<bool>(!var_1.d.a, var_1.d.a == true, !var_1.b.a), false)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f))));
    var var_4 = ~firstLeadingBit(-select(vec4<i32>(var_1.c, 0i, 0i, var_1.c), vec4<i32>(0i, -2147483647i, -2147483647i, u_input.a), var_1.d.a)) & vec4<i32>(_wgslsmith_sub_i32(u_input.b, _wgslsmith_clamp_i32(var_1.c | var_1.c, -u_input.a, 0i)), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(firstLeadingBit(u_input.d), vec4<i32>(var_1.c, -19084i, 2147483647i, 18099i)), u_input.d.x), -countOneBits(~19424i), ~(-min(1i, 1537i)));
    return true;
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = -902f;
    let var_1 = 607f;
    var var_2 = !vec4<bool>(!all(vec2<bool>(true, true)), false, true, (-u_input.d.x >> (_wgslsmith_dot_vec3_u32(u_input.e.zzx, u_input.e.wxz) % 32u)) <= u_input.b);
    let var_3 = !func_4(abs(vec2<u32>(54713u, 0u) << ((vec2<u32>(u_input.c.x, 1u) & u_input.e.yw) % vec2<u32>(32u))), func_2(Struct_2(var_0 == var_1, _wgslsmith_f_op_f32(step(270f, var_1))), -1177f, Struct_1(~49374u, vec4<f32>(var_1, 1229f, 1845f, var_1)), _wgslsmith_div_u32(1u, 24196u)));
    var_2 = select(select(vec4<bool>(any(select(var_2.zy, vec2<bool>(true, false), false)), var_2.x, !(var_3 || var_2.x), var_2.x), vec4<bool>(min(0u, u_input.e.x) != 1u, func_4(~vec2<u32>(96321u, 0u), func_2(Struct_2(true, var_0), -1604f, Struct_1(u_input.e.x, vec4<f32>(963f, var_0, var_1, var_1)), u_input.e.x)), !var_2.x, all(!vec4<bool>(true, var_3, false, var_3))), false), vec4<bool>(!(_wgslsmith_mult_i32(1i, -2147483647i) != ~u_input.d.x), any(vec2<bool>(true, true)), select(true, false, _wgslsmith_f_op_f32(1000f + var_1) >= _wgslsmith_f_op_f32(1030f * var_1)), true), select(!vec4<bool>(var_2.x, any(vec3<bool>(true, var_2.x, false)), true, false), !select(vec4<bool>(var_2.x, false, var_2.x, true), vec4<bool>(true, var_2.x, false, true), vec4<bool>(true, false, true, var_3)), vec4<bool>(!var_2.x, false, !(var_3 | false), all(!vec2<bool>(var_2.x, var_3)))));
    return false;
}

fn func_5(arg_0: u32, arg_1: bool) -> f32 {
    let var_0 = u_input.d.x;
    var var_1 = true;
    let var_2 = vec3<bool>(func_1(u_input.e.x), all(vec2<bool>(func_1(reverseBits(arg_0)), func_4(u_input.e.xz, func_2(Struct_2(false, 280f), 161f, Struct_1(u_input.e.x, vec4<f32>(-782f, 529f, -399f, -735f)), u_input.e.x)))), any(select(vec2<bool>(arg_0 < 30737u, !arg_1), vec2<bool>(arg_1, all(vec3<bool>(arg_1, arg_1, true))), arg_1)));
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(-1404f * -1254f), _wgslsmith_f_op_f32(934f * -647f), _wgslsmith_f_op_f32(ceil(1000f))))), Struct_2(any(vec2<bool>(u_input.e.x <= u_input.e.x, true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-543f - -1128f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1529f + -919f))))), ~(~(var_0 >> (1u % 32u)) << (u_input.e.x % 32u)), Struct_2(_wgslsmith_add_i32(~u_input.b, -12849i) != -var_0, -1516f));
    var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_3.a, vec4<f32>(-146f, var_3.a.x, -462f, -1000f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.d.b, var_3.b.b, var_3.a.x, -172f))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_3.a)))) * var_3.a), Struct_2(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.d.b)))), -44061i, Struct_2(!(!any(var_2)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.d.b), var_3.a.x))));
    return -707f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_5(_wgslsmith_add_u32(u_input.e.x, u_input.e.x), func_1(2122u)));
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(533f, -157f, 303f, 491f), vec4<f32>(1000f, 1290f, 1740f, 962f))))))), Struct_2(func_1(u_input.e.x) && true, -2000f), 9399i, Struct_2(true, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-var_1.a), var_1.b, -(max(firstTrailingBit(u_input.b), -var_1.c) >> (abs(firstLeadingBit(1u)) % 32u)), var_1.d);
    let var_3 = var_2.b.b;
    let var_4 = vec3<i32>(u_input.b, 2147483647i, 42384i);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, ~(-_wgslsmith_add_vec4_i32(-vec4<i32>(var_2.c, 31661i, var_1.c, 13323i), -u_input.d)), 4294967295u, max(-9163i, var_4.x));
}

