struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec4<f32>,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.c.x, 1270f))))), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_0.c, _wgslsmith_f_op_vec4_f32(-arg_0.c))) * vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.a.x + 1023f))), -559f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(arg_0.c.x, arg_0.c.x, arg_0.e)))))), false, !arg_0.b);
    let var_1 = u_input.b.x;
    let var_2 = vec4<bool>(!(!arg_0.b), 0i <= _wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.b.x, -23556i), _wgslsmith_clamp_i32(2147483647i, var_1, u_input.b.x)), 52400i), false, ~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b.x), vec2<i32>(var_1, 15240i)), -var_1) > abs(2590i));
    var var_3 = arg_0.e;
    var_3 = (_wgslsmith_f_op_f32(ceil(var_0.a.x)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -848f))) || var_2.x;
    return firstLeadingBit(vec4<u32>(u_input.c.x | u_input.c.x, u_input.c.x, u_input.c.x, (u_input.a.x << (u_input.a.x % 32u)) >> (~u_input.c.x % 32u)) ^ ~select(abs(vec4<u32>(u_input.c.x, 5354u, 72382u, 100408u)), min(vec4<u32>(u_input.c.x, 3825u, u_input.a.x, 0u), vec4<u32>(u_input.a.x, u_input.c.x, 29841u, u_input.c.x)), var_0.d));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec3<u32>) -> vec2<f32> {
    var var_0 = 16398u;
    let var_1 = Struct_1(arg_1.a, true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(round(357f)), arg_1.a.x, _wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(floor(311f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(arg_1.c)) * _wgslsmith_f_op_vec4_f32(abs(arg_1.c))) * arg_1.c)), arg_1.d, arg_1.d);
    var var_2 = -48528i;
    var_2 = 46875i;
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1152f, -1656f))), _wgslsmith_f_op_f32(var_1.a.x - -2298f)) * _wgslsmith_f_op_vec2_f32(abs(var_1.a))), !(true & (true && arg_0)) || true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(708f, _wgslsmith_div_f32(var_1.c.x, 974f), _wgslsmith_f_op_f32(var_1.a.x + var_1.c.x), var_1.a.x), vec4<f32>(_wgslsmith_f_op_f32(sign(-1149f)), _wgslsmith_f_op_f32(arg_1.c.x * var_1.a.x), arg_1.c.x, _wgslsmith_f_op_f32(ceil(arg_1.a.x))))), any(vec4<bool>(all(vec4<bool>(var_1.b, arg_1.e, false, arg_0)), true, arg_1.d, true)), !all(select(select(vec4<bool>(arg_1.b, true, arg_0, true), vec4<bool>(arg_1.d, false, arg_1.e, true), true), select(vec4<bool>(var_1.d, false, var_1.e, arg_1.e), vec4<bool>(arg_0, var_1.b, arg_0, arg_1.d), true), vec4<bool>(arg_0, arg_0, arg_0, var_1.e))));
    return var_1.c.yz;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = min(-u_input.b.x, _wgslsmith_clamp_i32(u_input.b.x, abs(max(u_input.b.x, -9633i)), abs(_wgslsmith_mult_i32(u_input.b.x, 8818i)))) < min(reverseBits(~1i), i32(-1i) * -u_input.b.x);
    var var_1 = arg_2;
    var_0 = true;
    var var_2 = reverseBits(~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, u_input.a.x, 7437u, 1u), vec4<u32>(1u, 554u, u_input.c.x, 11351u), vec4<bool>(true, true, var_1.b, arg_0.e)), vec4<u32>(40249u, u_input.c.x, u_input.c.x, 86388u) ^ vec4<u32>(u_input.c.x, u_input.c.x, u_input.a.x, u_input.a.x)), u_input.a.x));
    var_1 = arg_1;
    return any(!select(!(!vec2<bool>(false, arg_1.b)), select(!vec2<bool>(var_1.e, arg_0.d), !vec2<bool>(arg_2.d, arg_2.d), true), select(vec2<bool>(true, true), vec2<bool>(true, true), false && arg_2.b)));
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: vec4<f32>, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-arg_2.xx), func_4(Struct_1(_wgslsmith_f_op_vec2_f32(func_3(!arg_0, Struct_1(vec2<f32>(1000f, arg_2.x), arg_0, arg_2, false, arg_0), vec2<u32>(4294967295u, arg_3.x), abs(vec3<u32>(arg_3.x, u_input.a.x, arg_3.x)))), true, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(578f, arg_2.x, arg_2.x, -673f) * arg_2))), arg_0, !(!arg_0)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, arg_2.x)), (arg_0 & true) != true, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(arg_2)))), true, 1i <= arg_1.x), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(arg_2.yy)), _wgslsmith_f_op_vec2_f32(arg_2.zw + arg_2.zy), select(vec2<bool>(false, false), vec2<bool>(true, arg_0), arg_0))), all(vec3<bool>(arg_0, arg_0, false)), arg_2, false, !arg_0)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(min(687f, arg_2.x))), -352f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(476f, 819f))), arg_2.x), arg_2)), !(arg_0 != arg_0), true);
    var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(274f - var_0.a.x), _wgslsmith_f_op_f32(step(388f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.x, arg_2.x) * var_0.a.x)))), !var_0.d, var_0.c, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * arg_2.x) * arg_2.x)) != var_0.a.x, !arg_0);
    let var_1 = vec2<f32>(-1303f, arg_2.x);
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_0.a)))), select(false, any(!select(vec3<bool>(true, var_0.d, false), vec3<bool>(arg_0, arg_0, false), vec3<bool>(var_0.e, var_0.b, false))), !all(!vec3<bool>(arg_0, var_0.d, arg_0))), vec4<f32>(var_0.c.x, var_0.c.x, -432f, _wgslsmith_f_op_f32(-var_1.x)), var_0.e, -144f < var_1.x);
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1249f + 734f))), _wgslsmith_div_f32(576f, _wgslsmith_div_f32(732f, 1603f))))), select(arg_0 | !any(vec2<bool>(var_0.b, var_0.e)), !any(vec3<bool>(var_0.e, arg_0, false)), !arg_0), arg_2, false, all(select(vec4<bool>(true, var_0.c.x >= var_1.x, false, var_0.d), select(!vec4<bool>(false, true, true, arg_0), !vec4<bool>(false, false, true, arg_0), select(vec4<bool>(var_0.d, var_0.e, arg_0, var_0.b), vec4<bool>(var_0.e, false, var_0.e, true), vec4<bool>(arg_0, var_0.e, var_0.b, false))), true)));
    return Struct_1(vec2<f32>(var_0.a.x, var_0.c.x), !(!any(!vec4<bool>(true, var_0.d, var_0.e, var_0.d))), arg_2, true && var_0.b, !(~1i < abs(firstTrailingBit(0i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u <= min(u_input.c.x, ~u_input.a.x);
    var var_1 = u_input.c.x;
    var_1 = 22770u;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(101f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-629f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-354f - 1f) + _wgslsmith_f_op_f32(f32(-1f) * -887f))));
    var var_3 = func_2(true, u_input.b, vec4<f32>(var_2.x, var_2.x, -2660f, _wgslsmith_f_op_f32(f32(-1f) * -1603f)), max(_wgslsmith_add_vec4_u32(vec4<u32>(~5726u, u_input.c.x & u_input.c.x, 1u >> (u_input.c.x % 32u), u_input.a.x << (u_input.a.x % 32u)), ~func_1(Struct_1(vec2<f32>(-1041f, var_2.x), true, vec4<f32>(-1665f, var_2.x, 1330f, -876f), false, true))), countOneBits(vec4<u32>(u_input.a.x, 1u, 87231u, u_input.a.x)) | _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 22908u, u_input.a.x, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 88989u, 1u, 1u), vec4<u32>(26258u, 1u, 25378u, u_input.c.x)), vec4<u32>(u_input.c.x, 4294967295u, 39944u, 101998u))));
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_3.c.xx))), true || ((var_3.b | true) || var_3.e), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -150f, _wgslsmith_f_op_f32(var_2.x - var_2.x), _wgslsmith_div_f32(var_3.a.x, var_2.x))) * var_3.c), any(vec2<bool>(false, any(!vec3<bool>(false, var_3.d, false)))), var_3.e);
    let var_5 = select(select(!(!(!vec3<bool>(var_3.e, var_4.d, true))), !select(!vec3<bool>(true, var_4.d, true), select(vec3<bool>(var_3.b, var_4.d, var_4.d), vec3<bool>(var_3.e, true, var_3.e), vec3<bool>(false, var_3.e, var_4.e)), vec3<bool>(true, true, true)), select(select(!vec3<bool>(true, var_3.e, false), select(vec3<bool>(var_3.b, var_3.d, var_4.e), vec3<bool>(var_4.e, true, false), false), var_3.b), !select(vec3<bool>(true, var_3.b, var_4.e), vec3<bool>(true, var_4.b, true), var_4.b), select(select(vec3<bool>(true, var_3.e, false), vec3<bool>(true, false, false), vec3<bool>(true, false, var_3.b)), !vec3<bool>(var_4.b, var_3.e, var_4.d), vec3<bool>(false, var_3.d, var_3.e)))), vec3<bool>(func_4(func_2(true, firstTrailingBit(u_input.b), _wgslsmith_f_op_vec4_f32(round(var_4.c)), vec4<u32>(0u, 1u, 1u, u_input.a.x)), var_4, Struct_1(var_3.c.zx, any(vec2<bool>(true, false)), var_4.c, u_input.b.x != u_input.b.x, var_3.e)), select(false, false, _wgslsmith_f_op_f32(step(var_3.a.x, var_2.x)) > _wgslsmith_f_op_f32(ceil(-1474f))), true), func_4(var_4, var_4, func_2(true, max(u_input.b, u_input.b), vec4<f32>(_wgslsmith_f_op_f32(104f + var_4.a.x), _wgslsmith_f_op_f32(200f - -208f), _wgslsmith_f_op_f32(select(var_4.a.x, 1000f, true)), _wgslsmith_f_op_f32(var_3.c.x - -349f)), abs(reverseBits(vec4<u32>(u_input.c.x, u_input.c.x, u_input.a.x, u_input.c.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, ~(~u_input.a.yz), _wgslsmith_f_op_vec4_f32(var_3.c * var_4.c));
}

