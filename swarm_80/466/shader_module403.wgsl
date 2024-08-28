struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<f32>) -> f32 {
    var var_0 = vec3<f32>(1000f, arg_2.x, _wgslsmith_f_op_f32(step(-1493f, arg_2.x)));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1410f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-619f, -105f) * _wgslsmith_f_op_f32(floor(arg_2.x))), var_0.x))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, arg_2.x, -898f))))))));
    var var_1 = arg_2.x;
    var var_2 = Struct_2(Struct_1(arg_0.a.a));
    return _wgslsmith_f_op_f32(-var_0.x);
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: bool, arg_3: vec2<f32>) -> vec2<u32> {
    let var_0 = arg_2;
    let var_1 = select(~u_input.a.x, _wgslsmith_sub_u32(~select(u_input.c, u_input.a.x, false), 1u) >> (arg_0.x % 32u), !(!all(select(vec4<bool>(true, var_0, true, var_0), vec4<bool>(false, false, var_0, var_0), var_0))));
    var var_2 = Struct_1(~min(~(~u_input.a.xy), _wgslsmith_mult_vec2_u32(u_input.a.yz, vec2<u32>(48894u, var_1))));
    var var_3 = arg_3.x;
    let var_4 = arg_0.x;
    return var_2.a;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = u_input.a.wz;
    var_0 = _wgslsmith_mult_vec2_u32(func_4(countOneBits(vec4<u32>(4912u, var_0.x, firstTrailingBit(0u), 1u)), 2147483647i, arg_1.x, vec2<f32>(_wgslsmith_f_op_f32(-662f * 811f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(u_input.a.yy)), arg_0, vec2<f32>(-814f, -1000f))) * _wgslsmith_f_op_f32(f32(-1f) * -1687f)))), u_input.a.wx);
    var var_1 = _wgslsmith_clamp_i32(u_input.b & u_input.b, reverseBits(_wgslsmith_dot_vec2_i32(min(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(0i, -2147483647i)), vec2<i32>(u_input.b, u_input.b)), ~abs(vec2<i32>(-9422i, 40877i)))), u_input.b);
    var_0 = vec2<u32>(4294967295u, func_4(~(u_input.a | (vec4<u32>(u_input.a.x, u_input.a.x, 2847u, u_input.a.x) << (vec4<u32>(arg_0.a.x, 106676u, 1u, arg_0.a.x) % vec4<u32>(32u)))), _wgslsmith_sub_i32(~_wgslsmith_mult_i32(-19819i, 0i), _wgslsmith_div_i32(2147483647i, u_input.b)), true, vec2<f32>(_wgslsmith_f_op_f32(-1994f - _wgslsmith_f_op_f32(f32(-1f) * -1942f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-141f - -722f), _wgslsmith_f_op_f32(f32(-1f) * -598f)))).x);
    var var_2 = any(!arg_1);
    return Struct_1(firstTrailingBit(~vec2<u32>(arg_0.a.x, arg_0.a.x) & _wgslsmith_div_vec2_u32(u_input.a.wx, arg_0.a)) | _wgslsmith_clamp_vec2_u32(arg_0.a, _wgslsmith_mod_vec2_u32(arg_0.a, vec2<u32>(arg_0.a.x, u_input.c)), vec2<u32>(var_0.x, arg_0.a.x) << (arg_0.a % vec2<u32>(32u))));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec2<i32>, arg_3: f32) -> bool {
    let var_0 = arg_0;
    var var_1 = Struct_2(arg_0);
    var_1 = Struct_2(func_2(func_2(Struct_1(_wgslsmith_div_vec2_u32(var_1.a.a, vec2<u32>(var_1.a.a.x, 0u))), vec3<bool>(true, all(vec2<bool>(false, true)), all(vec3<bool>(true, false, false)))), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), select(false, true, true))));
    var_1 = Struct_2(var_1.a);
    let var_2 = Struct_2(Struct_1(var_1.a.a));
    return true;
}

fn func_1() -> Struct_1 {
    let var_0 = select(vec4<bool>(select(true, true, false), 1u >= _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, u_input.a.x), u_input.a.xy | vec2<u32>(u_input.a.x, u_input.c)), !(all(vec2<bool>(true, true)) | true), func_5(func_2(Struct_1(u_input.a.yz), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1076f, -1721f, true))), vec2<i32>(u_input.b, u_input.b) | min(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, -28804i)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(2102f, 1157f), _wgslsmith_f_op_f32(floor(177f)))))), !vec4<bool>(false, all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), true)), true, true), select(vec4<bool>(true, true, !(-1i == u_input.b), !any(vec4<bool>(true, true, false, true))), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), !(!any(vec3<bool>(true, true, false)))));
    var var_1 = abs(_wgslsmith_clamp_vec2_i32(-(~vec2<i32>(-10497i, u_input.b)) >> (~vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u)), vec2<i32>(u_input.b, u_input.b), -min(select(vec2<i32>(u_input.b, -46792i), vec2<i32>(u_input.b, u_input.b), true), vec2<i32>(0i, u_input.b))));
    var_1 = -(~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.b), abs(vec2<i32>(u_input.b, u_input.b)))) >> (abs(vec2<u32>(~u_input.c, ~u_input.a.x)) % vec2<u32>(32u));
    var_1 = vec2<i32>(u_input.b, -17392i);
    var_1 = abs(~_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, u_input.b), -vec2<i32>(var_1.x, -2147483647i)), firstLeadingBit(vec2<i32>(0i, var_1.x))));
    return func_2(Struct_1(vec2<u32>(81526u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), u_input.a.wz))), select(select(!(!vec3<bool>(true, true, var_0.x)), var_0.zyw, var_0.x), !var_0.zyw, !select(vec3<bool>(var_0.x, true, false), !vec3<bool>(var_0.x, true, var_0.x), var_0.zxz)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var_0 = true | (~(-(~1i)) == -u_input.b);
    var_0 = true;
    var var_1 = func_1();
    let var_2 = true;
    let var_3 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(5538i, u_input.b) | countOneBits(vec2<i32>(-32636i, 1i)), vec2<i32>(min(-2147483647i, -41330i), 1i)), u_input.b, u_input.b, _wgslsmith_dot_vec3_i32(~(vec3<i32>(u_input.b, u_input.b, u_input.b) ^ vec3<i32>(-8850i, u_input.b, u_input.b)), reverseBits(vec3<i32>(u_input.b, u_input.b, -30322i)))), _wgslsmith_sub_vec4_i32((~vec4<i32>(u_input.b, 2147483647i, u_input.b, 1i) << (_wgslsmith_add_vec4_u32(vec4<u32>(var_1.a.x, 1u, 0u, u_input.a.x), vec4<u32>(4294967295u, 25040u, 35132u, var_1.a.x)) % vec4<u32>(32u))) ^ (_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(0i, u_input.b, u_input.b, -1i), vec4<i32>(u_input.b, -2147483647i, u_input.b, -25313i)) >> (select(vec4<u32>(var_1.a.x, 0u, u_input.c, 57269u), u_input.a, vec4<bool>(var_2, var_2, false, var_2)) % vec4<u32>(32u))), -vec4<i32>(-1i, 1i, u_input.b, _wgslsmith_clamp_i32(u_input.b, u_input.b, 5397i))));
    var var_4 = i32(-1i) * -48278i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -176f, 2011f, -1000f)))))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(round(-1978f)), _wgslsmith_f_op_f32(f32(-1f) * -918f), _wgslsmith_f_op_f32(-883f - 1000f), _wgslsmith_f_op_f32(sign(2142f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(346f, 731f, -2037f, 2028f) + vec4<f32>(367f, -2287f, 296f, -558f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(902f, -399f, -1010f, 882f))))));
}

