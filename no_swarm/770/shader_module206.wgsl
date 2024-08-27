struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: vec2<i32>,
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

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), 723f));
    let var_1 = arg_0.c;
    let var_2 = arg_0;
    let var_3 = var_2;
    let var_4 = u_input.a;
    return _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(select((u_input.a.wzz << (vec3<u32>(1u, 42321u, 4639u) % vec3<u32>(32u))) << (_wgslsmith_mult_vec3_u32(vec3<u32>(12154u, 73313u, arg_0.b), vec3<u32>(u_input.b.x, 26368u, var_3.d)) % vec3<u32>(32u)), vec3<i32>(0i, u_input.a.x, ~1i), !select(true, false, var_2.c)), vec3<i32>(_wgslsmith_div_i32(-16086i, 2745i), var_4.x, min(u_input.a.x, -74163i)) << (vec3<u32>(~63445u, _wgslsmith_mod_u32(var_3.d, var_3.d), 1u) % vec3<u32>(32u))), var_4.wxw);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec4_i32(~_wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, ~u_input.a), select(vec4<i32>(u_input.a.x, 4360i, 1i, select(u_input.a.x, -2147483647i, arg_1.c)), _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a.x, arg_0.x, -2147483647i, arg_0.x) | vec4<i32>(arg_0.x, -2147483647i, 2147483647i, u_input.a.x), abs(vec4<i32>(arg_0.x, 37707i, arg_0.x, u_input.a.x))), any(!select(vec3<bool>(arg_1.c, arg_1.c, arg_1.c), vec3<bool>(arg_1.c, false, arg_1.c), vec3<bool>(false, false, true)))));
    let var_1 = Struct_1(arg_1.a, _wgslsmith_sub_u32(arg_1.d, u_input.b.x), _wgslsmith_f_op_f32(f32(-1f) * -415f) < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -769f))), 0u);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -100f) * _wgslsmith_f_op_f32(select(var_1.a, _wgslsmith_f_op_f32(trunc(var_1.a)), -u_input.a.x == _wgslsmith_div_i32(var_0.x, u_input.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-274f * -764f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1196f, var_1.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.a)))))));
    let var_3 = arg_1;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-2085f * _wgslsmith_f_op_f32(-var_1.a)), arg_1.d, ~_wgslsmith_add_u32(1u, select(var_3.b, 0u, arg_1.c)) == _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(4294967295u, var_1.b, u_input.b.x, var_3.d) & vec4<u32>(var_1.d, u_input.b.x, 4294967295u, u_input.b.x)), vec4<u32>(~var_3.d, firstLeadingBit(var_1.b), min(44473u, var_3.d), ~0u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(5655u, 1u, 1u, abs(var_1.b)), ~min(vec4<u32>(4294967295u, 40487u, var_1.d, var_3.d), vec4<u32>(var_1.d, var_3.d, var_3.b, u_input.b.x))));
    return var_1;
}

fn func_1(arg_0: vec2<u32>) -> bool {
    var var_0 = func_3(func_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(474f, 335f)), reverseBits(arg_0.x) ^ 37252u, true, abs(23916u) >> (max(84199u, u_input.b.x) % 32u))), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(422f, -1562f, true))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-222f)))), true)), ~95040u, true, 4294967295u));
    var_0 = Struct_1(170f, var_0.b, ~(u_input.b.x >> (102003u % 32u)) != select(arg_0.x, _wgslsmith_dot_vec2_u32(arg_0, u_input.b) >> (1u % 32u), all(select(vec2<bool>(false, false), vec2<bool>(var_0.c, var_0.c), vec2<bool>(var_0.c, true)))), u_input.b.x);
    var_0 = Struct_1(_wgslsmith_f_op_f32(step(var_0.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(186f)))))), 17873u, select(any(vec3<bool>(true, var_0.a <= 1245f, var_0.c)), all(vec4<bool>(var_0.c, all(vec4<bool>(var_0.c, true, var_0.c, false)), var_0.c, !var_0.c)), true), arg_0.x);
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a, 586f, var_0.c)) * _wgslsmith_f_op_f32(abs(var_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - 549f))) + -250f), 1u, true, var_0.b);
    var var_1 = func_3(~max((u_input.a.xzx << (vec3<u32>(var_0.b, u_input.b.x, 8114u) % vec3<u32>(32u))) | firstLeadingBit(u_input.a.wyz), vec3<i32>(1i, select(u_input.a.x, u_input.a.x, true), _wgslsmith_sub_i32(u_input.a.x, 9758i))), func_3(_wgslsmith_div_vec3_i32(max(u_input.a.zzx, vec3<i32>(-24143i, u_input.a.x, -32540i)) | (vec3<i32>(u_input.a.x, 0i, 0i) & vec3<i32>(-62695i, 1i, 0i)), -vec3<i32>(-35865i, u_input.a.x, -10458i)), func_3(min(vec3<i32>(0i, u_input.a.x, -4130i), vec3<i32>(u_input.a.x, u_input.a.x, 13716i)) | ~vec3<i32>(1i, u_input.a.x, u_input.a.x), func_3(func_2(Struct_1(712f, 0u, true, 29984u)), func_3(u_input.a.zyy, Struct_1(var_0.a, arg_0.x, var_0.c, 53195u))))));
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1007f, _wgslsmith_f_op_f32(958f - 1000f), all(vec2<bool>(true, false)))) * 1f)), 33589u, all(!vec4<bool>(true, false, func_1(vec2<u32>(0u, u_input.b.x)), true)), func_3(-(~(~vec3<i32>(u_input.a.x, -1i, 0i))), func_3(select(vec3<i32>(u_input.a.x, u_input.a.x, 23270i) ^ vec3<i32>(23369i, 1i, 1i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, -46996i, 25428i), vec3<i32>(12150i, u_input.a.x, 26577i)), true), Struct_1(-938f, abs(u_input.b.x), select(true, true, false), ~1u))).d);
    let var_1 = Struct_1(var_0.a, u_input.b.x, select(var_0.c, false, func_3(countOneBits(reverseBits(vec3<i32>(1i, -2147483647i, -11141i))), Struct_1(func_3(u_input.a.ywy, var_0).a, ~0u, func_1(vec2<u32>(4294967295u, 0u)), u_input.b.x)).c), max(min(0u, ~49873u) & var_0.b, 58315u));
    let var_2 = select(~vec4<u32>(u_input.b.x & countOneBits(0u), u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4166u, 4294967295u, 1u), vec3<u32>(var_1.d, u_input.b.x, var_1.b)) ^ ~33526u, firstLeadingBit(1u)), _wgslsmith_div_vec4_u32(~(_wgslsmith_add_vec4_u32(vec4<u32>(7399u, var_1.b, 54742u, 40151u), vec4<u32>(50278u, u_input.b.x, var_1.d, 52903u)) | ~vec4<u32>(var_1.d, 22787u, 1u, u_input.b.x)), _wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, var_1.b, 10094u, 0u) | firstLeadingBit(vec4<u32>(var_1.b, 25396u, var_1.d, var_1.d)), ~(~vec4<u32>(4294967295u, var_0.b, 1u, var_1.b)))), select(select(select(select(vec4<bool>(var_1.c, true, var_0.c, var_0.c), vec4<bool>(false, var_0.c, var_0.c, var_0.c), vec4<bool>(var_0.c, var_1.c, true, false)), !vec4<bool>(var_1.c, var_0.c, false, var_1.c), vec4<bool>(var_0.c, false, false, false)), vec4<bool>(false, var_0.b < 1u, true, true), reverseBits(u_input.a.x) > func_2(var_0).x), vec4<bool>(true, var_1.c, !var_1.c || !var_1.c, var_1.c), true));
    let var_3 = func_3(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, -1736i, u_input.a.x) & u_input.a.yyz, _wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(-2147483647i, -21503i, u_input.a.x)), select(u_input.a.xww, u_input.a.yyx, !vec3<bool>(var_1.c, var_1.c, false)))), func_3(abs(u_input.a.zww), var_0));
    let var_4 = true;
    var var_5 = select(select(vec4<bool>(true, -2147483647i < u_input.a.x, false, !(-26922i >= u_input.a.x)), !(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), var_0.c)), select(vec4<bool>(true || var_3.c, var_1.c, true, !var_1.c), select(vec4<bool>(true, false, var_0.c, false), select(vec4<bool>(var_1.c, true, var_3.c, var_3.c), vec4<bool>(true, false, var_4, false), vec4<bool>(false, var_3.c, var_3.c, var_3.c)), vec4<bool>(var_1.c, true, var_1.c, true)), true)), vec4<bool>(any(select(select(vec3<bool>(var_3.c, true, true), vec3<bool>(var_1.c, true, false), var_3.c), !vec3<bool>(true, var_0.c, false), !vec3<bool>(true, true, var_1.c))), false, all(select(select(vec2<bool>(false, true), vec2<bool>(var_0.c, true), vec2<bool>(true, var_4)), select(vec2<bool>(false, true), vec2<bool>(false, var_1.c), vec2<bool>(false, false)), var_3.c)), !var_4), var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(select(select(u_input.b, vec2<u32>(0u, var_2.x), vec2<bool>(var_1.c, false)), u_input.b, false), vec2<u32>(0u, 1u)), vec2<u32>(1u, var_3.d)), -510f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1794f + 1000f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_3.a)) - _wgslsmith_f_op_f32(var_0.a + var_3.a)))), select(func_2(var_0).yx, ~u_input.a.xw, false));
}

