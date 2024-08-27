struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: vec3<bool>) -> bool {
    let var_0 = _wgslsmith_mult_vec2_u32(~select(_wgslsmith_clamp_vec2_u32(vec2<u32>(875u, 53403u), vec2<u32>(u_input.b, u_input.b), vec2<u32>(36115u, u_input.b)) & _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(42436u, u_input.b)), vec2<u32>(0u, u_input.b), !vec2<bool>(arg_2.x, false)), vec2<u32>(select(~0u, _wgslsmith_mod_u32(select(0u, u_input.b, true), ~1u), any(!vec4<bool>(arg_2.x, true, arg_2.x, true))), u_input.b));
    let var_1 = -2147483647i;
    var var_2 = var_0;
    var_2 = var_0;
    let var_3 = vec2<u32>(var_2.x, 0u);
    return true;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: vec2<bool>) -> i32 {
    let var_0 = Struct_2(_wgslsmith_add_u32(1u >> (0u % 32u), _wgslsmith_sub_u32(u_input.b ^ _wgslsmith_mod_u32(4294967295u, u_input.b), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(u_input.b, 42977u, u_input.b)), vec3<u32>(u_input.b, 3672u, u_input.b)))), -_wgslsmith_dot_vec3_i32(abs(-vec3<i32>(0i, -25006i, 0i)), vec3<i32>(~u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(0i, u_input.a)), reverseBits(23618i))), Struct_1(abs(vec4<i32>(u_input.a, 24927i, u_input.a, u_input.a) >> (~vec4<u32>(48511u, u_input.b, 33333u, u_input.b) % vec4<u32>(32u)))));
    let var_1 = -26409i;
    let var_2 = Struct_4(select(~vec4<u32>(u_input.b, u_input.b, 36173u, var_0.a), vec4<u32>(~0u, select(6634u, 0u, arg_3.x), 1u, u_input.b), vec4<bool>(func_3(arg_1, var_0.c.a.wxw, vec3<bool>(true, arg_3.x, true)), var_0.a <= u_input.b, arg_3.x, true)) >> (vec4<u32>(firstTrailingBit(4294967295u), 1u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.b, 1u)), reverseBits(vec2<u32>(4294967295u, 2865u))), u_input.b) % vec4<u32>(32u)));
    let var_3 = var_0.c.a.www;
    var var_4 = Struct_3(vec4<u32>(~(~abs(4294967295u)), 31163u, 28772u, _wgslsmith_dot_vec2_u32(select(_wgslsmith_mod_vec2_u32(var_2.a.zw, var_2.a.yx), vec2<u32>(var_0.a, u_input.b), select(arg_3, vec2<bool>(arg_3.x, arg_3.x), arg_3)), ~vec2<u32>(1u, 4294967295u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(arg_0.x, -2621f, arg_3.x)))), var_0);
    return 1i;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_4) -> vec4<f32> {
    var var_0 = _wgslsmith_mod_i32(arg_1.a.x, -1i ^ func_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-213f, -232f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(371f, -706f, 729f, 962f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-178f, 240f, 817f, -723f)), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-979f, -727f)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-521f, 303f), vec2<f32>(-315f, 860f)))), vec2<bool>(true, false)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1128f + 314f) + _wgslsmith_f_op_f32(floor(-367f)))), _wgslsmith_f_op_f32(f32(-1f) * -378f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-2084f, _wgslsmith_f_op_f32(f32(-1f) * -901f))), _wgslsmith_f_op_f32(f32(-1f) * -1181f), arg_1.a.x < 43123i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(668f, 717f, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(618f)))))));
    var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-arg_2.c.a, vec4<i32>(-_wgslsmith_mult_i32(arg_1.a.x, arg_1.a.x), 2147483647i, -_wgslsmith_clamp_i32(0i, 0i, 59827i), i32(-1i) * -u_input.a)), select(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.a, u_input.a), 48069i), arg_2.c.a.x, _wgslsmith_mult_i32(14408i, arg_1.a.x), _wgslsmith_add_i32(-43496i, func_2(var_1.yz, vec4<f32>(-450f, var_1.x, var_1.x, var_1.x), var_1.xy, vec2<bool>(true, false)))), vec4<i32>(_wgslsmith_sub_i32(max(u_input.a, 13723i), _wgslsmith_mult_i32(arg_2.b, 8477i)), _wgslsmith_dot_vec2_i32(arg_2.c.a.xz, firstLeadingBit(vec2<i32>(-89364i, 0i))), ~u_input.a, arg_1.a.x), any(vec2<bool>(true, true))));
    var_0 = ~u_input.a;
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(168f * 874f)), -228f, _wgslsmith_f_op_f32(1458f + _wgslsmith_f_op_f32(-var_1.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(456f * var_1.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(340f * var_1.x) + -469f)))));
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, var_1.x, var_1.x, -184f), vec4<f32>(var_1.x, var_1.x, -102f, -1681f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, 1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1000f, -481f, var_1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(vec4<u32>(0u, 1u ^ (u_input.b >> (1u % 32u)), 0u, _wgslsmith_mult_u32(u_input.b, 40553u)));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1939f, -262f, 1000f, 509f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(482f, 1000f, 1952f, -1919f), vec4<f32>(188f, -3465f, -577f, -463f), vec4<bool>(true, true, true, false))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-602f, 1192f, 1448f, -939f), vec4<f32>(-643f, -689f, 2733f, -172f), true))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_1(Struct_4(var_0.a), Struct_1(vec4<i32>(u_input.a, u_input.a, u_input.a, -37931i)), Struct_2(var_0.a.x, -9018i, Struct_1(vec4<i32>(1i, -1i, u_input.a, 0i))), var_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1254f, 1000f, -1376f, -530f) - vec4<f32>(-568f, 1128f, -781f, 2100f)))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_4(vec4<u32>(var_0.a.x, u_input.b, 93013u, 13805u)), Struct_1(vec4<i32>(u_input.a, -36195i, 0i, u_input.a)), Struct_2(var_0.a.x, u_input.a, Struct_1(vec4<i32>(0i, 1i, u_input.a, u_input.a))), Struct_4(var_0.a))))))));
    var var_2 = reverseBits(1i);
    var var_3 = Struct_3(~(~select(var_0.a, var_0.a, all(vec4<bool>(true, true, true, true)))), 361f, Struct_2(var_0.a.x, abs(~(-u_input.a)), Struct_1(-vec4<i32>(u_input.a, u_input.a, 0i, u_input.a))));
    var_2 = u_input.a;
    let var_4 = Struct_4(var_3.a);
    let var_5 = ~var_3.a;
    var_3 = Struct_3(~_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(var_4.a.x, 38288u, var_4.a.x, 402u)), vec4<u32>(var_5.x, var_0.a.x, 1147u, 4294967295u)), reverseBits(vec4<u32>(431u, 53734u, var_3.c.a, u_input.b)) ^ (vec4<u32>(1u, 75279u, 4294967295u, var_4.a.x) & vec4<u32>(1u, var_3.a.x, 21164u, u_input.b))), -256f, var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-151f, _wgslsmith_f_op_f32(f32(-1f) * -1201f))), vec4<i32>(2147483647i, _wgslsmith_add_i32(~(i32(-1i) * -14603i), func_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-988f, -706f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_3.b, 1499f, var_1.x, -1000f))), var_1.xw, vec2<bool>(true, true))), reverseBits(u_input.a) ^ (i32(-1i) * -2147483647i), firstLeadingBit(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_3.c.c.a.x, u_input.a, var_3.c.c.a.x, 34866i), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, var_3.c.b, u_input.a, -61289i), vec4<i32>(2147483647i, u_input.a, var_3.c.b, -1i))))), var_3.c.c.a.ww);
}

