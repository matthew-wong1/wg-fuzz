struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: vec2<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<i32>) -> u32 {
    var var_0 = Struct_1(!vec4<bool>(global0.b, all(vec2<bool>(true, true)), true, global0.b), firstTrailingBit(vec4<u32>(1u, ~(~50697u), _wgslsmith_add_u32(1u, _wgslsmith_mult_u32(0u, 34118u)), 1u)), vec2<bool>(global0.b, !all(vec2<bool>(global0.b, false))), vec4<f32>(1577f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1324f), -360f)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - -504f), -713f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f)))));
    var var_1 = Struct_1(!var_0.a, var_0.b, !var_0.a.xx, vec4<f32>(_wgslsmith_f_op_f32(step(var_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) * _wgslsmith_f_op_f32(f32(-1f) * -1588f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1437f + _wgslsmith_f_op_f32(floor(-1000f))))), var_0.d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-768f, _wgslsmith_f_op_f32(trunc(-1000f)))))));
    var var_2 = var_1.b;
    let var_3 = Struct_3(~select(max(-28985i, -arg_0.x), _wgslsmith_add_i32(_wgslsmith_sub_i32(arg_1.x, -1i), 1i << (var_2.x % 32u)), false | all(vec4<bool>(global0.b, var_0.a.x, global0.b, var_0.a.x))), select(any(var_0.a.yw), global0.b, var_0.c.x));
    var_1 = Struct_1(var_0.a, reverseBits(vec4<u32>(var_2.x, var_0.b.x, 39138u, var_1.b.x)), select(!(!var_0.c), var_0.a.yy, select(var_0.c, var_0.c, !(!var_1.a.xz))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.x, var_1.d.x, -1000f, var_1.d.x) + vec4<f32>(264f, 1514f, -669f, var_0.d.x))), var_0.d, all(select(vec3<bool>(var_3.b, var_3.b, true), var_1.a.zzy, true)))), _wgslsmith_div_vec4_f32(var_1.d, var_1.d)));
    return _wgslsmith_add_u32(21511u, 43309u);
}

fn func_2() -> vec2<i32> {
    global0 = Struct_3(global0.a, true);
    let var_0 = vec3<u32>(_wgslsmith_mult_u32(select(select(31808u, _wgslsmith_dot_vec3_u32(vec3<u32>(22423u, 47378u, 17479u), vec3<u32>(0u, 29063u, 4294967295u)), global0.b), 61884u, true), 1u), 1u, ~_wgslsmith_sub_u32(1u, func_3(vec3<i32>(u_input.a.x, -1i, u_input.a.x), u_input.a.xy & vec2<i32>(63180i, global0.a))));
    let var_1 = Struct_3(max(-30465i, max(u_input.a.x, u_input.a.x | -global0.a)), countOneBits(var_0.x) >= select(var_0.x, func_3(-u_input.a.zzw, u_input.a.xy), true));
    let var_2 = countOneBits(u_input.a.x & var_1.a);
    global0 = Struct_3(_wgslsmith_dot_vec2_i32(u_input.a.zz, ~firstTrailingBit(u_input.a.wz)) ^ -global0.a, var_1.b);
    return u_input.a.zy;
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: vec2<i32>) -> Struct_2 {
    global0 = Struct_3(-min(min(_wgslsmith_mod_i32(2147483647i, u_input.a.x), 58970i), global0.a), global0.b);
    global0 = Struct_3(-42721i, true);
    let var_0 = vec2<u32>(369u, 98182u);
    global0 = Struct_3(~(-21198i) << (_wgslsmith_add_u32(~1u, _wgslsmith_dot_vec2_u32(reverseBits(var_0), var_0)) % 32u), true);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1642f, -1105f))) * _wgslsmith_f_op_f32(round(-356f))))), -849f, arg_1, _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(trunc(arg_1))));
    return Struct_2(Struct_1(vec4<bool>(false, false, any(select(arg_0.zw, arg_0.ww, arg_0.zx)), false), vec4<u32>(~6292u, var_0.x >> (0u % 32u), var_0.x, var_0.x), arg_0.xy, _wgslsmith_f_op_vec4_f32(-var_1)), Struct_1(vec4<bool>(!all(vec3<bool>(global0.b, global0.b, true)), global0.b, select(arg_0.x, true, false) & any(arg_0.xz), true & !arg_0.x), vec4<u32>(_wgslsmith_sub_u32(52103u, var_0.x), ~max(1u, var_0.x), 1u, 758u), vec2<bool>(global0.b & (arg_1 < -158f), any(select(arg_0, arg_0, arg_0))), var_1), Struct_1(!vec4<bool>(!global0.b, true, arg_1 == -1387f, !arg_0.x), _wgslsmith_add_vec4_u32(vec4<u32>(~var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, 1u, var_0.x), vec4<u32>(16414u, 0u, 99559u, 16622u)), ~var_0.x, ~4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 0u, var_0.x, var_0.x), vec4<u32>(7221u, 1521u, var_0.x, var_0.x)) | ~vec4<u32>(var_0.x, var_0.x, 72739u, var_0.x)), select(arg_0.xw, arg_0.yz, !select(arg_0.yy, arg_0.xz, vec2<bool>(global0.b, true))), var_1), all(!vec4<bool>(global0.b, true, arg_0.x, arg_0.x)) && (false & global0.b));
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_1) -> u32 {
    var var_0 = func_4(select(!arg_3.a, arg_3.a, !arg_3.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1)), 1056f)), arg_1)), min(func_2(), countOneBits(~_wgslsmith_mod_vec2_i32(u_input.a.yw, vec2<i32>(global0.a, arg_0.a)))));
    let var_1 = true;
    var_0 = Struct_2(arg_3, arg_3, Struct_1(var_0.c.a, _wgslsmith_sub_vec4_u32(~(~arg_3.b), ~max(var_0.c.b, vec4<u32>(var_0.b.b.x, 4294967295u, 25593u, var_0.a.b.x))), vec2<bool>(true, select(false, var_1, any(vec3<bool>(true, true, true)))), vec4<f32>(_wgslsmith_f_op_f32(select(-1771f, -1000f, any(vec4<bool>(true, true, global0.b, true)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-543f, 865f) * -552f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(210f)) * _wgslsmith_f_op_f32(-arg_3.d.x)), 961f)), -1i == _wgslsmith_mod_i32(_wgslsmith_mod_i32(~50293i, 33962i ^ arg_2.x), countOneBits(arg_0.a | u_input.a.x)));
    var var_2 = (i32(-1i) * -2147483647i) | select(~(-16227i), func_2().x, arg_0.b | true);
    let var_3 = func_4(var_0.a.a, 734f, vec2<i32>(~arg_0.a, _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(arg_2.x, -34491i), -50918i), 0i))).c;
    return var_0.b.b.x;
}

fn func_5(arg_0: i32, arg_1: vec2<u32>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1496f - -308f))))) - _wgslsmith_f_op_f32(118f + -728f));
    global0 = Struct_3(arg_0, global0.b);
    global0 = Struct_3(arg_0, arg_1.x > _wgslsmith_mult_u32(_wgslsmith_sub_u32(firstTrailingBit(arg_1.x), 4294967295u), reverseBits(arg_1.x)));
    let var_1 = arg_1.x;
    global0 = Struct_3(firstLeadingBit(reverseBits(countOneBits(1392i) >> (arg_1.x % 32u))), true);
    return ~u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(2147483647i, vec2<u32>(~(~56634u) ^ _wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(2954u, 68312u, 99273u), vec3<u32>(1u, 0u, 1u))), ~func_1(Struct_3(u_input.a.x, false), -1705f, u_input.a.yw, Struct_1(vec4<bool>(global0.b, global0.b, global0.b, false), vec4<u32>(1427u, 0u, 7122u, 0u), vec2<bool>(false, false), vec4<f32>(-170f, -1000f, -1899f, 198f))) << (9491u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(select(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(42762u, 0u, 34989u), vec3<u32>(57512u, 4294967295u, 1u)), ~4294967295u, _wgslsmith_mod_u32(16130u, 19941u), _wgslsmith_add_u32(1u, 18155u)), abs(select(vec4<u32>(21771u, 33099u, 1u, 14374u), vec4<u32>(4294967295u, 49345u, 10850u, 0u), vec4<bool>(global0.b, false, global0.b, global0.b))) ^ ~vec4<u32>(1831u, 0u, 1366u, 6949u), !(!select(vec4<bool>(global0.b, global0.b, true, global0.b), vec4<bool>(false, true, true, true), vec4<bool>(global0.b, global0.b, true, global0.b)))), -1087f, _wgslsmith_clamp_u32(54165u, select(~4294967295u, _wgslsmith_mult_u32(30262u, 1u), any(vec2<bool>(global0.b, false))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(30598u, 0u, 30314u), vec3<u32>(20581u, 4294967295u, 0u))) << (~31724u % 32u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -217f)), func_4(func_4(vec4<bool>(global0.b, global0.b, global0.b, global0.b), -755f, var_0.xz).a.a, -1000f, var_0.wy).b.d.x, _wgslsmith_f_op_f32(func_4(vec4<bool>(global0.b, false, global0.b, true), 2086f, var_0.wz).b.d.x * -970f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1040f)))));
}

