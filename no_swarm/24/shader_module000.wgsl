struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: f32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
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

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32) -> f32 {
    return _wgslsmith_f_op_f32(step(-471f, _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(353f - 645f))))))));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    let var_0 = -max(vec3<i32>(arg_0.x, arg_0.x, 0i), -max(vec3<i32>(-26016i, -27095i, arg_0.x), _wgslsmith_div_vec3_i32(arg_0.xzz, arg_0.www)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1405f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1183f)))), vec2<bool>(!(_wgslsmith_f_op_f32(select(-488f, 2134f, true)) >= _wgslsmith_f_op_f32(f32(-1f) * -1195f)), abs(81749u) < u_input.b.x), -185f, select(arg_0.zw, select(max(var_0.yx, _wgslsmith_clamp_vec2_i32(var_0.xy, arg_0.yw, var_0.xz)), vec2<i32>(-6561i, _wgslsmith_div_i32(-2147483647i, -14838i)), true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) != _wgslsmith_div_f32(1245f, _wgslsmith_f_op_f32(f32(-1f) * -612f))), countOneBits(firstLeadingBit(-arg_0)) ^ select(-abs(arg_0), ~reverseBits(arg_0), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), false), vec4<bool>(false, false, true, true), false)));
    let var_2 = vec2<bool>(false, true);
    var var_3 = Struct_1(var_1.c, var_2, var_1.a, var_0.zy, _wgslsmith_add_vec4_i32(select(_wgslsmith_div_vec4_i32(~vec4<i32>(var_1.e.x, var_0.x, -2147483647i, 0i), select(arg_0, arg_0, vec4<bool>(false, var_2.x, var_1.b.x, var_1.b.x))), vec4<i32>(15116i, var_1.d.x, arg_0.x, arg_0.x) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 23878u, u_input.a, u_input.a), vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 1u)) % vec4<u32>(32u)), true), ~(vec4<i32>(25351i, -40400i, -15863i, 1i) << (abs(vec4<u32>(0u, 32368u, u_input.a, 1u)) % vec4<u32>(32u)))));
    let var_4 = !vec4<bool>(true, any(vec3<bool>(var_2.x, true, any(vec3<bool>(true, var_2.x, var_1.b.x)))), !var_2.x, ~2174u == reverseBits(~u_input.b.x));
    return 134f;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> Struct_1 {
    let var_0 = arg_1;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<f32>(478f, arg_2, arg_0), arg_2)) + -1054f), select(vec2<bool>(!(u_input.a < u_input.b.x), arg_0 > arg_1.a), var_0.b, arg_1.b), -1704f, max(firstTrailingBit(var_0.e.yy ^ var_0.d), vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(var_0.e.x, arg_3, arg_1.d.x), reverseBits(vec3<i32>(0i, var_0.d.x, arg_3))), arg_3)), firstTrailingBit(~var_0.e));
}

fn func_1() -> f32 {
    var var_0 = true;
    var_0 = false;
    var var_1 = func_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<f32>(-440f, -860f, -979f), -2006f)) * 1056f) + -156f))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<i32>(1i, 2147483647i, 45548i, 2147483647i) << (vec4<u32>(4294967295u, u_input.a, u_input.a, 1u) % vec4<u32>(32u))))), vec2<bool>(false, any(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, 240f)) - -1132f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(552f)) * _wgslsmith_f_op_f32(-843f + -1000f)))), vec2<i32>(-17985i, firstTrailingBit(-18884i)), _wgslsmith_mult_vec4_i32(-countOneBits(vec4<i32>(8673i, 4425i, -1i, -50920i)), vec4<i32>(-38288i, 0i, -2147483647i, _wgslsmith_clamp_i32(-2147483647i, 2147483647i, 1i)))), -240f, 21211i << ((10197u >> (u_input.a % 32u)) % 32u));
    var var_2 = u_input.b.x;
    let var_3 = var_1.d.x > -1i;
    return _wgslsmith_f_op_f32(sign(func_4(-141f, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - _wgslsmith_f_op_f32(f32(-1f) * -445f)), vec2<bool>(var_1.b.x, all(var_1.b)), 1671f, _wgslsmith_mod_vec2_i32(vec2<i32>(var_1.e.x, var_1.d.x), firstTrailingBit(var_1.e.xx)), vec4<i32>(-1i) * -var_1.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1403f, -1514f))) * var_1.c), 90456i).a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(1656f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-389f, 1f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(1734f, -776f) * _wgslsmith_div_f32(-811f, -932f))) - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(f32(-1f) * -105f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-601f, -696f) - _wgslsmith_div_f32(-405f, 388f))))), -363f);
    let var_1 = min(u_input.a, _wgslsmith_dot_vec2_u32(u_input.b, max(u_input.b, _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, 61431u), vec2<u32>(4294967295u, u_input.a)), reverseBits(u_input.b)))));
    let var_2 = var_1;
    let var_3 = select(vec3<i32>(abs(13059i) >> (_wgslsmith_clamp_u32(var_2, var_1, 0u) % 32u), _wgslsmith_mod_i32(-9662i, ~0i), 2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, ~abs(-2147483647i), ~1i), -(min(vec3<i32>(-54107i, 0i, 1i), vec3<i32>(1i, -4722i, 62986i)) & (vec3<i32>(-15891i, -2147483647i, -36418i) << (vec3<u32>(var_2, u_input.b.x, 0u) % vec3<u32>(32u))))), -70101i <= (~_wgslsmith_sub_i32(1i, -58585i) >> ((var_2 | 4294967295u) % 32u)));
    var var_4 = -vec2<i32>(-var_3.x, -2147483647i);
    var_4 = vec2<i32>(~(_wgslsmith_div_i32(firstLeadingBit(1i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_3.x), var_3.zz)) << (countOneBits(u_input.a) % 32u)), 48608i);
    let var_5 = func_4(_wgslsmith_f_op_f32(max(1003f, -1000f)), Struct_1(func_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)), _wgslsmith_f_op_f32(abs(-1316f)))), func_4(var_0.x, func_4(var_0.x, Struct_1(1000f, vec2<bool>(true, false), -823f, vec2<i32>(var_3.x, var_3.x), vec4<i32>(-1i, var_3.x, 0i, var_3.x)), var_0.x, var_4.x), _wgslsmith_f_op_f32(-856f + var_0.x), ~var_3.x), _wgslsmith_f_op_f32(min(564f, _wgslsmith_f_op_f32(func_1()))), _wgslsmith_mult_i32(var_4.x, 0i)).a, vec2<bool>(~var_4.x > 60259i, !all(vec2<bool>(true, true))), var_0.x, -vec2<i32>(firstLeadingBit(var_4.x), abs(8514i)), vec4<i32>(-1i, var_4.x & var_4.x, -var_3.x, reverseBits(var_4.x)) << (~abs(vec4<u32>(var_2, var_2, u_input.a, var_2)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(325f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * -1706f), _wgslsmith_f_op_f32(ceil(-737f))) - -420f)), -2147483647i).d.x;
    let var_6 = 156f;
    var var_7 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(func_1()))));
}

