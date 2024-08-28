struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2082f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(trunc(-577f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(324f + 2024f))))));
    return _wgslsmith_mod_i32(6154i, 1i);
}

fn func_2() -> i32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -934f)))));
    let var_1 = var_0;
    var var_2 = _wgslsmith_clamp_vec4_i32(~vec4<i32>(1i, 1i, 1i, 1i) & _wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(47440i, -2147483647i, -21537i, -2147483647i)) << (~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(29496i, -40104i, 2147483647i, -1i), vec4<i32>(13501i, 1i, 2147483647i, 2147483647i)), abs(4692i), _wgslsmith_mult_i32(-10700i, 1i), func_3(true))), vec4<i32>(abs(6283i), -2147483647i, firstTrailingBit(~1i), ~(-2147483647i)), vec4<i32>(-1i) * -vec4<i32>(1i, 1i, 1i, 1i));
    let var_3 = vec4<bool>(true, any(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), vec3<bool>(true, true, false), !all(vec3<bool>(true, false, true)))), false, !(_wgslsmith_f_op_f32(-var_1.a) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a, var_0.a)))));
    var var_4 = select(_wgslsmith_dot_vec4_u32(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), vec4<u32>(4294967295u, 0u, 24868u, u_input.a.x)) & (vec4<u32>(1u, 3246u, u_input.a.x, 4294967295u) & vec4<u32>(0u, 4294967295u, 10654u, u_input.a.x))), firstTrailingBit(~abs(vec4<u32>(1u, u_input.a.x, 71197u, 71830u)))), max(11518u, ~(~1u)), _wgslsmith_div_f32(1024f, _wgslsmith_f_op_f32(-var_1.a)) < _wgslsmith_f_op_f32(floor(-986f)));
    return var_2.x;
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> vec3<bool> {
    var var_0 = _wgslsmith_add_vec2_i32(~vec2<i32>(func_2(), -41865i) | _wgslsmith_add_vec2_i32(vec2<i32>(1i, _wgslsmith_sub_i32(-1i, 50220i)), ~vec2<i32>(-2702i, 1i)), vec2<i32>(min(reverseBits(-21267i >> (1u % 32u)), _wgslsmith_mult_i32(1i, 1i)), -(~(-2147483647i))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-arg_0.a));
    var_0 = select(_wgslsmith_mult_vec2_i32(~(-vec2<i32>(-2147483647i, var_0.x)), -abs(countOneBits(vec2<i32>(var_0.x, var_0.x)))), vec2<i32>(_wgslsmith_mod_i32(var_0.x, _wgslsmith_mult_i32(_wgslsmith_div_i32(var_0.x, 34908i), var_0.x)), _wgslsmith_div_i32(_wgslsmith_clamp_i32(2147483647i, -12011i, 2044i) >> (~16975u % 32u), -var_0.x)), select(vec2<bool>(true, arg_1 == true), select(select(vec2<bool>(true, arg_1), !vec2<bool>(arg_1, arg_1), select(vec2<bool>(arg_1, false), vec2<bool>(true, true), vec2<bool>(false, false))), select(select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false)), false), vec2<bool>(false, true)), true));
    var_0 = vec2<i32>(countOneBits(-(i32(-1i) * -8445i)), func_2());
    let var_2 = Struct_1(vec2<i32>(1i, var_0.x), !vec3<bool>(any(vec2<bool>(arg_1, false)), false, true), u_input.a.x, _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(-1i, 39808i, _wgslsmith_clamp_i32(0i, var_0.x, -12566i))), _wgslsmith_div_vec3_i32(-vec3<i32>(-12199i, -23583i, var_0.x) >> (~vec3<u32>(u_input.a.x, 1u, u_input.a.x) % vec3<u32>(32u)), reverseBits(vec3<i32>(var_0.x, -1i, var_0.x)) | ~vec3<i32>(var_0.x, var_0.x, -41685i)), min(-(vec3<i32>(var_0.x, var_0.x, -1i) ^ vec3<i32>(var_0.x, var_0.x, -2147483647i)), _wgslsmith_sub_vec3_i32(-vec3<i32>(var_0.x, -6680i, 17952i), vec3<i32>(var_0.x, -1i, var_0.x)))));
    return !select(select(vec3<bool>(all(vec2<bool>(var_2.b.x, true)), any(vec3<bool>(true, var_2.b.x, true)), all(vec3<bool>(var_2.b.x, true, var_2.b.x))), vec3<bool>(var_2.b.x | var_2.b.x, true, true), !vec3<bool>(var_2.b.x, true, arg_1)), !var_2.b, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec2<i32>(~select(1i, -2147483647i << (0u % 32u), true), -2147483647i);
    var var_1 = Struct_1(-(~_wgslsmith_div_vec2_i32(var_0, abs(vec2<i32>(var_0.x, var_0.x)))), select(select(vec3<bool>(all(vec4<bool>(true, true, false, true)), true, false), select(vec3<bool>(true, true, true), func_1(Struct_2(1000f), false), true), true), func_1(Struct_2(-1138f), u_input.a.x <= _wgslsmith_sub_u32(4294967295u, 4294967295u)), true), (~firstTrailingBit(1381u) ^ select(1u, 0u, false)) << (min(u_input.a.x, u_input.a.x) % 32u), max(_wgslsmith_sub_vec3_i32(~(vec3<i32>(0i, var_0.x, var_0.x) >> (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(-2147483647i, var_0.x)), -2147483647i, var_0.x)), -_wgslsmith_mod_vec3_i32(vec3<i32>(-96i, -1i, -6043i), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, var_0.x, 49484i), vec3<i32>(-1i, -30053i, var_0.x)))));
    let var_2 = any(var_1.b);
    var_1 = Struct_1(vec2<i32>(-25436i, ~0i), func_1(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(853f - -436f))), true), var_1.c, _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, -1i, 47401i), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-10729i, var_0.x, var_1.d.x), reverseBits(var_1.d), vec3<i32>(-1i, var_1.a.x, 40925i)), -select(var_1.d, var_1.d, var_1.b))));
    let var_3 = _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(min(~vec2<i32>(var_1.d.x, 40969i), var_0), -firstLeadingBit(vec2<i32>(var_1.a.x, -1i))), countOneBits(var_0), vec2<i32>(0i, ~var_1.a.x)), -vec2<i32>(~0i, var_0.x));
    let var_4 = Struct_2(446f);
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_add_i32(var_3 | min(3002i, var_0.x), 0i), var_3), ~(~_wgslsmith_mod_i32(var_0.x, 2147483647i)) << ((_wgslsmith_mult_u32(var_1.c, 1u) & abs(var_1.c >> (var_1.c % 32u))) % 32u));
}

