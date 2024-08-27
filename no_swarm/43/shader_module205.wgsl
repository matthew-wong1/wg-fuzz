struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<i32>(11053i, 0i), Struct_2(-880f, Struct_1(true, vec4<i32>(-1i, i32(-2147483648), 1i, 5229i), true, vec3<i32>(-4465i, -16821i, -1i)), -1359f));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.c));
}

fn func_3(arg_0: f32) -> vec3<i32> {
    var var_0 = _wgslsmith_div_u32(firstTrailingBit(1u), ~1u) | 1u;
    var_0 = _wgslsmith_mult_u32(~1u, _wgslsmith_sub_u32(~(~0u), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 9030u, 0u), vec4<u32>(19479u, 4294967295u, 43871u, 0u)), 1u) << (1u % 32u)));
    var var_1 = ~select(vec4<u32>(0u, _wgslsmith_clamp_u32(12666u, 3795u, 57366u), _wgslsmith_add_u32(14395u, 24223u), 35510u), vec4<u32>(1u, 1u, _wgslsmith_mod_u32(4294967295u, 30392u), 4294967295u), !global0.b.b.c) & (_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~1u, ~71518u, 1u, _wgslsmith_mult_u32(92401u, 0u)), vec4<u32>(_wgslsmith_mult_u32(68013u, 21998u), 1u, 0u, _wgslsmith_mod_u32(1u, 22140u))) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(219f * -355f), _wgslsmith_f_op_f32(trunc(-999f)))))));
    let var_3 = Struct_1(global0.b.b.a, global0.b.b.b, global0.b.c > global0.b.c, ~vec3<i32>(min(13080i, 48741i), _wgslsmith_div_i32(-26929i, global0.a.x), ~(-u_input.a.x)));
    return firstTrailingBit(firstTrailingBit(-var_3.b.xyz));
}

fn func_1(arg_0: vec4<f32>) -> vec2<u32> {
    let var_0 = func_3(_wgslsmith_f_op_f32(func_2()));
    let var_1 = _wgslsmith_div_i32(2147483647i, var_0.x);
    let var_2 = -1099f;
    return ~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), min(vec2<u32>(1u, 1u), countOneBits(~vec2<u32>(3448u, 4294967295u))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec2<bool>) -> Struct_3 {
    global0 = Struct_3(u_input.d, arg_0);
    let var_0 = _wgslsmith_f_op_f32(-343f - 397f);
    let var_1 = min(-u_input.a | vec3<i32>(-2147483647i, ~_wgslsmith_div_i32(1i, -1i), ~(~(-17614i))), abs(vec3<i32>(-1i, _wgslsmith_mod_i32(global0.a.x, arg_0.b.b.x), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.b.d.x, 0i), u_input.d), ~vec2<i32>(arg_0.b.b.x, 2147483647i)))));
    global0 = Struct_3(vec2<i32>(~(-2147483647i >> (arg_1.x % 32u)), -(~global0.a.x)) | select(var_1.yz, vec2<i32>(reverseBits(11029i), ~(-18575i)), true), Struct_2(_wgslsmith_f_op_f32(-var_0), Struct_1(true, _wgslsmith_mult_vec4_i32(global0.b.b.b, vec4<i32>(global0.b.b.d.x, global0.a.x, -12611i, u_input.a.x)), !select(true, true, false), _wgslsmith_div_vec3_i32(firstLeadingBit(var_1), arg_0.b.d)), _wgslsmith_f_op_f32(step(-1125f, arg_0.a))));
    global0 = Struct_3(u_input.d, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.c)), global0.b.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * 594f) + _wgslsmith_f_op_f32(f32(-1f) * -122f)), _wgslsmith_f_op_f32(step(-2115f, _wgslsmith_f_op_f32(-1401f - arg_0.a))))));
    return Struct_3(vec2<i32>(-firstTrailingBit(_wgslsmith_div_i32(1i, -2147483647i)), i32(-1i) * -var_1.x), arg_0);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: u32) -> Struct_3 {
    var var_0 = func_4(global0.b, _wgslsmith_sub_vec2_u32(arg_0.zz, _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, firstTrailingBit(35081u)), ~vec2<u32>(arg_0.x, arg_2), min(firstTrailingBit(arg_0.xy), arg_0.xx))), vec2<bool>(true & !(arg_1.b.b.c & true), arg_1.b.b.c)).b;
    var_0 = arg_1.b;
    let var_1 = u_input.a.xx;
    var var_2 = global0.b.b.a;
    var var_3 = ~firstLeadingBit(~arg_0.x);
    return Struct_3(~arg_1.a, arg_1.b);
}

fn func_6(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: i32) -> Struct_2 {
    global0 = Struct_3(global0.a, arg_0.b);
    global0 = func_5(vec3<u32>(_wgslsmith_clamp_u32(1u, ~1u, 4294967295u), func_1(_wgslsmith_f_op_vec4_f32(arg_1 - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.c, arg_0.b.a, arg_0.b.a, arg_1.x)))).x, 1u), func_5(firstTrailingBit(vec3<u32>(1u, 30775u, firstLeadingBit(59396u))), arg_0, _wgslsmith_div_u32(65426u, ~1u)), ~(~firstTrailingBit(~18092u)));
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(vec3<u32>(1u, 1u, 1u), func_4(Struct_2(_wgslsmith_f_op_f32(-global0.b.c), global0.b.b, _wgslsmith_f_op_f32(round(-984f))), max(func_1(vec4<f32>(-2202f, global0.b.c, global0.b.c, global0.b.c)), vec2<u32>(33346u, 60469u)), vec2<bool>(global0.b.b.c, true)), ~1u), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global0.b.a, -1758f), func_5(~vec3<u32>(23592u, 2044u, 4294967295u), Struct_3(u_input.b.xx, Struct_2(-1403f, Struct_1(global0.b.b.a, global0.b.b.b, true, global0.b.b.b.zyw), global0.b.a)), 0u).b.c, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(trunc(-636f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.a, 350f, -290f, 1971f) + vec4<f32>(1367f, global0.b.c, -1575f, global0.b.a))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.c, 1669f, -742f, global0.b.c)))))), ~5339i);
    global0 = Struct_3(firstLeadingBit(global0.b.b.d.xz), global0.b);
    var var_1 = _wgslsmith_clamp_vec4_u32(min(~(~max(vec4<u32>(0u, 4294967295u, 21080u, 1u), vec4<u32>(39402u, 0u, 0u, 1u))), vec4<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(6003u, 1u, 16569u), vec3<u32>(0u, 14490u, 1u), vec3<bool>(true, var_0.b.c, var_0.b.c)), vec3<u32>(0u, 27619u, 1u)), 1u, reverseBits(_wgslsmith_mult_u32(74422u, 1u)), 47256u)), vec4<u32>(1u, 1u, 1u, 1u), (~(~vec4<u32>(30999u, 0u, 38907u, 4294967295u)) | select(~vec4<u32>(4294967295u, 25574u, 4294967295u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u), !vec4<bool>(var_0.b.a, true, var_0.b.a, global0.b.b.a))) | vec4<u32>(~22227u, _wgslsmith_clamp_u32(~59087u, countOneBits(1u), 1u), firstLeadingBit(firstLeadingBit(58486u)), ~_wgslsmith_add_u32(0u, 4294967295u)));
    var var_2 = vec3<bool>(all(vec2<bool>(!global0.b.b.c, var_0.b.a | false)), true, any(!(!vec2<bool>(var_0.b.a, false))));
    let var_3 = var_0.b;
    var_2 = select(!vec3<bool>(var_3.a, true, true), !vec3<bool>(!global0.b.b.a, false, !var_0.b.c), vec3<bool>(!(global0.b.a > _wgslsmith_f_op_f32(var_0.c * -518f)), !var_3.a, any(!var_2.yz)));
    var_2 = vec3<bool>(true, true, true);
    var_2 = !select(vec3<bool>(true & select(var_3.a, var_0.b.a, true), var_3.a && !var_3.c, select(!var_2.x, all(vec3<bool>(var_2.x, var_2.x, true)), !var_2.x)), select(vec3<bool>(!var_2.x, func_6(Struct_3(vec2<i32>(5566i, -26774i), global0.b), vec4<f32>(global0.b.a, var_0.a, global0.b.c, var_0.a), -1i).b.c, u_input.a.x < var_0.b.b.x), !(!vec3<bool>(false, var_0.b.c, false)), (var_1.x >> (4294967295u % 32u)) == (var_1.x >> (1u % 32u))), false);
    var var_4 = func_5(abs(var_1.wyx), func_5(vec3<u32>(~var_1.x, var_1.x, max(func_1(vec4<f32>(var_0.c, global0.b.a, var_0.a, var_0.c)).x, ~1u)), func_5(vec3<u32>(0u, _wgslsmith_mult_u32(var_1.x, 17481u), ~var_1.x), Struct_3(-vec2<i32>(0i, u_input.d.x), Struct_2(761f, Struct_1(var_3.c, vec4<i32>(16326i, global0.a.x, u_input.c, 0i), var_0.b.c, global0.b.b.b.zyy), global0.b.c)), var_1.x ^ reverseBits(19245u)), 16800u << (_wgslsmith_dot_vec3_u32(vec3<u32>(14390u, 4294967295u, var_1.x), var_1.zzx) % 32u)), min(_wgslsmith_mod_u32(var_1.x ^ ~var_1.x, var_1.x >> ((var_1.x ^ 75260u) % 32u)), var_1.x)).b.b.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_div_i32(func_6(func_5(vec3<u32>(4294967295u, var_1.x, var_1.x), Struct_3(global0.b.b.b.xz, global0.b), 0u), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, var_0.a, -451f, -1000f) * vec4<f32>(339f, global0.b.c, var_0.c, global0.b.a)), 10737i).b.b.x, global0.a.x)), _wgslsmith_add_i32(var_3.b.x, u_input.b.x));
}

