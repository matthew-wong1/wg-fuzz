struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = Struct_2(_wgslsmith_sub_i32(arg_0, -1i), vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-185f + 497f))), Struct_1(vec2<bool>(all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true))), false)), Struct_1(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)))));
    return _wgslsmith_clamp_i32(_wgslsmith_mult_i32(arg_0, firstLeadingBit(max(-1i, 0i))), arg_0, max(arg_0, firstTrailingBit(arg_0) | (11421i & var_0.a))) >= 0i;
}

fn func_2(arg_0: vec4<u32>, arg_1: i32) -> i32 {
    var var_0 = ~4294967295u;
    var_0 = _wgslsmith_add_u32(28135u, ~39292u);
    var_0 = arg_0.x;
    var_0 = 15549u;
    var var_1 = !(select(!func_3(arg_1), true, false) | true);
    return ~_wgslsmith_sub_i32(22599i, 0i);
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: vec2<bool>, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = !all(vec3<bool>(true, !arg_2.x, arg_0));
    var var_1 = _wgslsmith_add_vec3_i32(-(~vec3<i32>(-2147483647i, -38902i, 4347i) >> (u_input.b.xyw % vec3<u32>(32u))), abs(_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(0i, -1i, 0i)), ~(-vec3<i32>(-13814i, 2073i, -15617i)))));
    var_1 = countOneBits(select(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.x, -41354i, 2147483647i), vec3<i32>(var_1.x, -19412i, var_1.x)) | _wgslsmith_clamp_vec3_i32(vec3<i32>(-9500i, 0i, var_1.x), vec3<i32>(var_1.x, -2147483647i, 0i), vec3<i32>(var_1.x, var_1.x, var_1.x)), ~(~vec3<i32>(-3274i, -14229i, var_1.x))), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, -45015i, _wgslsmith_add_i32(-5311i, 2147483647i)), -(~vec3<i32>(2147483647i, var_1.x, 51700i))), false));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1390f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2049f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(101f)) * _wgslsmith_f_op_f32(sign(-429f)))) + 1f));
    return Struct_2(-var_1.x & ~func_2(_wgslsmith_clamp_vec4_u32(u_input.b, u_input.b, vec4<u32>(1u, u_input.b.x, u_input.a, 40390u)), var_1.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-142f - -270f), _wgslsmith_f_op_f32(-1133f - 456f))), 274f) + vec2<f32>(505f, _wgslsmith_f_op_f32(round(-799f)))), Struct_1(!select(vec2<bool>(arg_2.x, arg_2.x), vec2<bool>(arg_3.x, arg_2.x), vec2<bool>(arg_3.x, true))), Struct_1(select(select(arg_3, vec2<bool>(arg_0, false), true), !vec2<bool>(true, arg_2.x), select(select(arg_3, vec2<bool>(true, true), arg_0), vec2<bool>(false, arg_2.x), arg_2))));
}

fn func_5(arg_0: Struct_2) -> vec2<u32> {
    var var_0 = arg_0.c;
    var_0 = Struct_1(vec2<bool>(arg_0.c.a.x, true));
    return select(abs(~u_input.b.xw), reverseBits(select(max(vec2<u32>(0u, u_input.a), u_input.b.xw), u_input.b.wy, select(var_0.a, var_0.a, var_0.a))) << (_wgslsmith_mod_vec2_u32(~(vec2<u32>(42135u, 4294967295u) << (u_input.b.yx % vec2<u32>(32u))), vec2<u32>(firstLeadingBit(u_input.a), 4402u)) % vec2<u32>(32u)), var_0.a);
}

fn func_1() -> i32 {
    let var_0 = -1i;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-982f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-555f - _wgslsmith_f_op_f32(f32(-1f) * -197f)) - _wgslsmith_f_op_f32(-813f * _wgslsmith_f_op_f32(sign(927f))))));
    var var_2 = func_5(func_4(~abs(var_0) >= func_2(~u_input.b, countOneBits(var_0)), ~u_input.b.yw, !vec2<bool>(true, u_input.b.x > u_input.a), vec2<bool>(true, ~var_0 <= -9565i)));
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1431f), 1298f, true)))));
    var_2 = u_input.b.wy ^ ~u_input.b.yy;
    return ~(-2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(vec3<i32>(1i, ~(~(-1546i)), func_1())) >> (abs(u_input.b.ywy) % vec3<u32>(32u));
    let var_1 = u_input.b;
    var_0 = vec3<i32>(-2147483647i, var_0.x ^ ~(abs(var_0.x) & abs(-2147483647i)), var_0.x);
    var_0 = firstLeadingBit(firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, abs(-19987i), _wgslsmith_clamp_i32(var_0.x, -16557i, var_0.x)), -(~vec3<i32>(var_0.x, var_0.x, -1i)))));
    let var_2 = !vec4<bool>((_wgslsmith_sub_i32(0i, var_0.x) != ~79045i) | !func_4(true, vec2<u32>(42501u, var_1.x), vec2<bool>(false, false), vec2<bool>(false, true)).d.a.x, true, false & (~var_0.x < var_0.x), any(!select(vec2<bool>(true, true), vec2<bool>(true, false), false)));
    var_0 = vec3<i32>(_wgslsmith_sub_i32(firstLeadingBit(i32(-1i) * -19751i), ~_wgslsmith_mult_i32(-var_0.x, var_0.x)), var_0.x, _wgslsmith_add_i32(~_wgslsmith_mod_i32(max(var_0.x, var_0.x), 0i), var_0.x));
    var_0 = -vec3<i32>(reverseBits(2147483647i), var_0.x, var_0.x);
    var_0 = vec3<i32>(var_0.x, -63169i, (var_0.x & -1i) & _wgslsmith_add_i32(-(~var_0.x), var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(593f, 309f, -388f, 1443f)) * vec4<f32>(1453f, -597f, -1270f, -384f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(365f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -489f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(664f - -359f)), func_4(true, abs(vec2<u32>(45506u, 8541u)), vec2<bool>(true, var_2.x), vec2<bool>(var_2.x, false)).b.x))), vec3<i32>(-2147483647i, _wgslsmith_div_i32(2147483647i, ~max(var_0.x, 1i)), var_0.x));
}

