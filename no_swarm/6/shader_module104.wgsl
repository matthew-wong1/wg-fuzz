struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: bool,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_3,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: u32) -> f32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.a.x));
    var var_0 = -(~(-arg_2.d.zy | ~vec2<i32>(103339i, arg_2.d.x)));
    var_0 = min(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_2.e & arg_1.x, arg_2.e), vec2<i32>(~0i, abs(var_0.x))), vec2<i32>((var_0.x >> (68875u % 32u)) & 7213i, i32(-1i) * -33160i)), min(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(select(arg_2.d.xx, arg_1, vec2<bool>(false, arg_2.a.x)), _wgslsmith_sub_vec2_i32(arg_2.d.zy, arg_2.d.zy), select(vec2<i32>(1i, var_0.x), arg_1, false)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.d.x, arg_2.d.x, arg_2.e, arg_2.d.x), vec4<i32>(-15132i, var_0.x, -34437i, -2147483647i)), abs(var_0.x))), ~(~arg_1)));
    var var_1 = any(vec4<bool>(arg_2.b.a.x <= 798f, arg_2.a.x, !all(!vec2<bool>(false, arg_2.a.x)), arg_2.a.x | false));
    let var_2 = Struct_4(vec3<i32>(_wgslsmith_clamp_i32(-74841i, ~(-2147483647i), -_wgslsmith_sub_i32(0i, var_0.x)), _wgslsmith_add_i32(abs(0i), firstTrailingBit(var_0.x & arg_1.x)), ~2147483647i));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1780f * 150f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(479f, arg_0))))));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> f32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(612f)))));
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(954f, -643f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(950f + arg_1.a.x)), arg_1.a.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x - arg_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-504f))), _wgslsmith_f_op_f32(min(arg_1.a.x, -1238f)), -166f)))));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-192f, vec2<i32>(arg_0, -26475i), Struct_2(vec2<bool>(false, true), Struct_1(arg_1.a), u_input.a.x, vec3<i32>(arg_0, arg_0, 23613i), arg_0), u_input.a.x)) * _wgslsmith_f_op_f32(var_0.x * 1640f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(-509f, vec2<i32>(arg_0, arg_0), Struct_2(vec2<bool>(true, true), arg_1, 4294967295u, vec3<i32>(-1i, arg_0, arg_0), 9936i), u_input.a.x)), -1488f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-217f)), _wgslsmith_f_op_f32(var_0.x * arg_1.a.x), true)) - _wgslsmith_f_op_f32(f32(-1f) * -504f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + -2114f), _wgslsmith_f_op_f32(-2334f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_1 = ~firstTrailingBit(-1i) ^ -20702i;
    let var_2 = 306f;
    return _wgslsmith_f_op_f32(var_2 + -1000f);
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2(arg_0, Struct_1(vec3<f32>(-271f, -639f, -1494f)))), _wgslsmith_f_op_f32(abs(395f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1539f, 909f) + vec2<f32>(555f, 1000f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(593f, -172f) - vec2<f32>(-494f, -240f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(583f, -669f), vec2<f32>(1359f, 1005f), arg_0 <= -1i)))))));
    var var_1 = Struct_3(Struct_2(vec2<bool>(true, true), Struct_1(vec3<f32>(1000f, 1172f, _wgslsmith_f_op_f32(-var_0.x))), 4294967295u, vec3<i32>(reverseBits(arg_0 & -13453i), arg_0, reverseBits(-2147483647i)), 1i), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) + _wgslsmith_f_op_f32(func_2(arg_0, Struct_1(vec3<f32>(-1585f, var_0.x, -1000f))))), _wgslsmith_f_op_f32(min(-825f, var_0.x)), arg_0 > arg_0)), any(select(vec2<bool>(true, true), vec2<bool>(false, any(vec2<bool>(false, true))), vec2<bool>(any(vec2<bool>(true, false)), true))), vec4<bool>(any(!select(vec2<bool>(true, true), vec2<bool>(false, true), true)), true, any(vec4<bool>(true, true, true, true)), !all(vec3<bool>(true, true, true))), u_input.a);
    let var_2 = reverseBits(~(max(reverseBits(vec2<i32>(arg_0, -14202i)), firstTrailingBit(vec2<i32>(arg_0, arg_0))) | vec2<i32>(-arg_0, countOneBits(-55853i))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-737f, var_0.x, -808f))) + var_1.a.b.a)) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, -138f, -1134f))))))));
    var var_4 = !select(var_1.a.a.x, true, abs(firstTrailingBit(1i)) > 2147483647i);
    return reverseBits(965i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_f32(776f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    var var_0 = select(vec4<i32>(-54522i, 2147483647i, -_wgslsmith_clamp_i32(abs(1i), _wgslsmith_sub_i32(-1819i, 1i), func_1(2147483647i)), 0i), countOneBits(vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(-42141i, -24872i), vec2<i32>(0i, 2147483647i)), ~(-2147483647i), _wgslsmith_div_i32(i32(-1i) * -10149i, 16950i), ~1i)), select(vec4<bool>(all(vec2<bool>(true, true)), false, false, false), vec4<bool>(false, true, true, reverseBits(u_input.a.x) <= 15876u), true));
    let var_1 = reverseBits(max(~(~vec3<u32>(0u, 0u, u_input.a.x)), select(_wgslsmith_add_vec3_u32(select(vec3<u32>(u_input.a.x, 1u, 4294967295u), vec3<u32>(62729u, u_input.a.x, u_input.a.x), true), max(vec3<u32>(1u, u_input.a.x, 35125u), vec3<u32>(127028u, u_input.a.x, u_input.a.x))), min(vec3<u32>(11425u, u_input.a.x, 4294967295u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 26169u, u_input.a.x))), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false), true))));
    var var_2 = true;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -966f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-346f * _wgslsmith_f_op_f32(1000f - 126f)))) * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-408f, _wgslsmith_f_op_f32(round(999f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1193f - 932f)))))));
    var var_3 = Struct_2(select(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(vec2<bool>(false, true), vec2<bool>(false, false), false)), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(true, true, true, false)))), Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(316f, -1972f, -921f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-489f, 746f, -1000f)), vec3<bool>(true, true, true)))))), 4294967295u, _wgslsmith_mod_vec3_i32(vec3<i32>(-(~(-2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 2147483647i, -15663i) ^ var_0.xxy, var_0.wzz), var_0.x), var_0.wzy), _wgslsmith_dot_vec2_i32(~abs(firstLeadingBit(var_0.wx)), abs(~vec2<i32>(var_0.x, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_div_i32(~var_0.x, reverseBits(var_3.e ^ (var_0.x | var_3.e))), _wgslsmith_f_op_f32(floor(var_3.b.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1044f + _wgslsmith_f_op_f32(-var_3.b.a.x))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3.b.a.x - var_3.b.a.x), _wgslsmith_f_op_f32(func_3(var_3.b.a.x, vec2<i32>(-26164i, var_0.x), Struct_2(vec2<bool>(var_3.a.x, false), var_3.b, 1u, var_0.wzy, 37671i), 115639u))))), 989f, var_3.b.a.x, -976f));
}

