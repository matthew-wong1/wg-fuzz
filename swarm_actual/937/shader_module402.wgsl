struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> i32 {
    var var_0 = -u_input.e;
    var_0 = _wgslsmith_mult_vec4_i32(~vec4<i32>(var_0.x, u_input.e.x, -_wgslsmith_div_i32(-1355i, u_input.c), 1i), abs(u_input.a));
    var_0 = vec4<i32>(0i, 1i, -_wgslsmith_mult_i32(_wgslsmith_sub_i32(var_0.x, var_0.x), -43120i), u_input.e.x) ^ ~vec4<i32>(i32(-1i) * -var_0.x, _wgslsmith_sub_i32(23042i, var_0.x) >> (u_input.d % 32u), ~(-2147483647i), _wgslsmith_clamp_i32(~u_input.e.x, -40048i, ~0i));
    var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(reverseBits(~(~(-1i))), _wgslsmith_sub_i32(u_input.e.x, -1i), u_input.e.x ^ -var_0.x, _wgslsmith_clamp_i32(abs(reverseBits(u_input.c)), ~(var_0.x << (4294967295u % 32u)), var_0.x)), vec4<i32>(firstTrailingBit(2147483647i >> (0u % 32u)), countOneBits(~abs(u_input.c)), firstLeadingBit(var_0.x), u_input.e.x));
    var var_1 = true;
    return _wgslsmith_mult_i32(var_0.x, -2147483647i) & 2157i;
}

fn func_2() -> Struct_2 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1343f, 2154f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1210f))), 785f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -207f))))), -261f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1085f))), 1204f)));
    var var_1 = _wgslsmith_f_op_vec2_f32(max(var_0.yz, var_0.wx));
    var_0 = vec4<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-var_0.x)))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -156f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -821f) - -1799f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1145f, _wgslsmith_f_op_f32(max(280f, var_0.x)), true)), 1476f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(abs(var_1.x)))), _wgslsmith_f_op_f32(-var_0.x)));
    var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(var_0.xy, var_0.wy)), _wgslsmith_div_vec2_f32(vec2<f32>(-1351f, var_1.x), var_0.wz))), vec2<f32>(_wgslsmith_f_op_f32(var_1.x - var_0.x), var_1.x)))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.xw, var_0.yz) + vec2<f32>(var_0.x, 470f));
    return Struct_2(2147483647i | func_3(), _wgslsmith_sub_u32(u_input.b.x, u_input.b.x), u_input.a.yzy << (vec3<u32>(~u_input.b.x, u_input.d, max(select(27390u, u_input.b.x, false), 55812u)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_1.x, 358f)))), u_input.e.x | u_input.c);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: u32, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = func_2();
    let var_1 = any(!select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)));
    var var_2 = 1i;
    var_2 = u_input.c;
    let var_3 = var_0;
    return !select(select(select(vec4<bool>(false, var_1, false, var_1), !vec4<bool>(var_1, var_1, var_1, var_1), true), vec4<bool>(var_1, false, true, !var_1), vec4<bool>(all(vec2<bool>(true, true)), true, any(vec4<bool>(var_1, var_1, var_1, false)), false)), !select(select(vec4<bool>(var_1, var_1, var_1, true), vec4<bool>(var_1, false, var_1, var_1), var_1), !vec4<bool>(false, false, var_1, true), !vec4<bool>(var_1, var_1, false, var_1)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!func_1(~vec3<u32>(1u, 1u, u_input.d), firstTrailingBit(vec3<u32>(u_input.b.x, u_input.b.x, u_input.d)), u_input.d, Struct_1(1i, 1000f, ~vec4<u32>(4294967295u, u_input.b.x, 0u, u_input.b.x))), !vec4<bool>(any(vec2<bool>(true, true)), true, true, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-856f)))) <= 1f);
    var var_1 = Struct_1(-u_input.a.x, _wgslsmith_f_op_f32(196f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1578f)), _wgslsmith_f_op_f32(750f + -721f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1110f))))), vec4<u32>(~54823u, ~(~4294967295u), ~10572u >> (_wgslsmith_mult_u32(~u_input.d, countOneBits(56787u)) % 32u), ~1u));
    var_1 = Struct_1(2147483647i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-312f + -557f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(363f * var_1.b), _wgslsmith_f_op_f32(-var_1.b))), -1162f), var_1.c);
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b, var_1.b) * _wgslsmith_f_op_f32(-346f * 1057f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(func_2().d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))))))));
    var_1 = Struct_1(~firstTrailingBit(0i) ^ -13517i, var_1.b, _wgslsmith_add_vec4_u32(u_input.b, u_input.b));
    var var_3 = Struct_1(countOneBits(_wgslsmith_add_i32(-3023i ^ u_input.c, ~var_1.a)) << (u_input.d % 32u), _wgslsmith_f_op_f32(trunc(var_2)), var_1.c);
    let var_4 = vec2<u32>(~(~1u >> (~_wgslsmith_clamp_u32(4294967295u, 52338u, var_1.c.x) % 32u)), _wgslsmith_clamp_u32(u_input.b.x, var_3.c.x, ~_wgslsmith_clamp_u32(var_1.c.x & var_1.c.x, ~6388u, u_input.d)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

