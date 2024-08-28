struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<f32>,
    d: i32,
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

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
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

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: i32) -> vec2<bool> {
    let var_0 = arg_0;
    let var_1 = arg_2;
    var var_2 = firstLeadingBit(vec2<u32>(1u, 1u));
    var var_3 = ~(~(~vec4<i32>(2147483647i, arg_3, u_input.a, u_input.a)) ^ -_wgslsmith_sub_vec4_i32(-vec4<i32>(arg_3, arg_3, 13588i, 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_3, 2147483647i, 13847i, arg_3), vec4<i32>(34000i, u_input.a, arg_3, 0i))));
    let var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(var_0.b.x, var_0.c)), -2091f, _wgslsmith_f_op_f32(-851f - arg_0.c), _wgslsmith_f_op_f32(-var_0.c))), -1083f, arg_2.d, var_1.d, Struct_1(arg_1, _wgslsmith_f_op_vec4_f32(var_0.b * _wgslsmith_f_op_vec4_f32(var_0.b - _wgslsmith_f_op_vec4_f32(-arg_0.b))), var_0.c));
    return select(!select(!select(vec2<bool>(true, false), vec2<bool>(var_0.a, false), vec2<bool>(arg_1, arg_2.c.a)), select(vec2<bool>(false, var_4.c.a), select(vec2<bool>(arg_2.e.a, arg_2.d.a), vec2<bool>(arg_1, true), vec2<bool>(false, true)), true), vec2<bool>(!var_0.a, var_2.x == var_2.x)), select(!(!(!vec2<bool>(false, var_4.e.a))), vec2<bool>(arg_1, var_1.c.a), !vec2<bool>(any(vec4<bool>(true, arg_1, false, true)), true)), vec2<bool>(any(!select(vec4<bool>(false, var_4.c.a, arg_2.c.a, arg_1), vec4<bool>(false, false, var_4.c.a, arg_0.a), false)), (_wgslsmith_f_op_f32(arg_0.b.x + var_1.a.x) == 201f) || var_1.e.a));
}

fn func_2(arg_0: vec2<i32>, arg_1: f32) -> vec2<i32> {
    var var_0 = arg_0.x;
    var var_1 = !(!(!(!func_3(Struct_1(true, vec4<f32>(arg_1, -168f, -197f, -883f), arg_1), true, Struct_2(vec4<f32>(389f, arg_1, arg_1, 1507f), 136f, Struct_1(true, vec4<f32>(arg_1, 195f, -236f, arg_1), arg_1), Struct_1(false, vec4<f32>(arg_1, -1130f, 865f, -1012f), arg_1), Struct_1(false, vec4<f32>(arg_1, arg_1, 1273f, -1657f), arg_1)), u_input.a))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(1522f, -1179f, 1000f, arg_1), _wgslsmith_div_vec4_f32(vec4<f32>(-520f, arg_1, -906f, arg_1), vec4<f32>(-1173f, arg_1, arg_1, arg_1)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-480f))), arg_1), Struct_1(all(!select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, var_1.x, false), var_1.x)), vec4<f32>(arg_1, arg_1, _wgslsmith_f_op_f32(step(-685f, _wgslsmith_f_op_f32(-arg_1))), -1199f), -472f), Struct_1(true, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1, arg_1, arg_1, 524f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 964f, arg_1, -1342f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -734f, 924f, arg_1))))), _wgslsmith_f_op_f32(-arg_1)), Struct_1(false, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2063f, 474f, 228f, 265f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + 869f) - -646f)))));
    var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -1138f, -900f, -713f))))), _wgslsmith_f_op_f32(exp2(var_2.e.c)), Struct_1(!(!any(vec4<bool>(false, var_1.x, var_2.e.a, false))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(var_2.c.b.x, 954f), _wgslsmith_f_op_f32(-var_2.b), _wgslsmith_div_f32(828f, arg_1), _wgslsmith_f_op_f32(405f + -2099f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1715f), _wgslsmith_f_op_f32(-arg_1)))), var_2.c, var_2.d);
    var var_3 = vec3<i32>(arg_0.x, 16994i, (~arg_0.x << (~13153u % 32u)) | arg_0.x) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(~1u, ~(~33449u), 0u), _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(21542u, 25125u, 1u), ~vec3<u32>(1600u, 64996u, 5359u), vec3<u32>(4294967295u, 14099u, 0u)), min(vec3<u32>(0u, 1u, 1769u), vec3<u32>(0u, 1u, 9281u)))) % vec3<u32>(32u));
    return var_3.yz;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec2<i32>) -> i32 {
    var var_0 = vec3<i32>(_wgslsmith_mod_i32(~min(select(-2147483647i, 30526i, arg_1.a), -1i), ~func_2(-arg_2, -1233f).x), arg_3.x, abs(func_2(arg_2, -427f).x) | -15389i);
    var_0 = vec3<i32>(abs(abs(_wgslsmith_add_i32(func_2(arg_2, -362f).x, i32(-1i) * -10463i))), var_0.x, _wgslsmith_sub_i32(var_0.x, max(18226i, arg_3.x)));
    var_0 = vec3<i32>(firstLeadingBit(~_wgslsmith_clamp_i32(2147483647i, countOneBits(var_0.x), arg_2.x)), var_0.x, firstTrailingBit(~var_0.x));
    let var_1 = 56349i;
    var_0 = ~_wgslsmith_mult_vec3_i32(vec3<i32>(33644i, -1i, _wgslsmith_add_i32(arg_2.x, 1i)), ~max(reverseBits(vec3<i32>(var_1, var_0.x, 18432i)), vec3<i32>(-1i, arg_2.x, arg_3.x)));
    return -1i;
}

fn func_1(arg_0: i32) -> vec3<f32> {
    let var_0 = Struct_1(false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-562f, _wgslsmith_f_op_f32(-284f - 169f), 1f, _wgslsmith_div_f32(117f, 354f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(661f, 1909f, -1323f, 936f) + vec4<f32>(-116f, -556f, 1386f, -435f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(421f, _wgslsmith_div_f32(-1106f, 232f))))))));
    var var_1 = vec2<bool>(!var_0.a, any(vec4<bool>(false, true, var_0.a, any(vec4<bool>(var_0.a, var_0.a, true, var_0.a)) && (var_0.c >= var_0.b.x))));
    var var_2 = Struct_1(all(!(!(!vec4<bool>(false, var_0.a, false, var_1.x)))), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(f32(-1f) * -1075f)))));
    var_1 = vec2<bool>(-func_4(reverseBits(63450u), var_0, vec2<i32>(2147483647i, arg_0), func_2(vec2<i32>(arg_0, -2147483647i), -216f)) < u_input.a, false);
    let var_3 = var_0;
    return vec3<f32>(var_3.c, var_0.c, 549f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_1(u_input.a)))), -2147483647i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1208f, _wgslsmith_f_op_f32(1157f * 202f), _wgslsmith_f_op_f32(f32(-1f) * -635f), -799f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-495f, -305f, -713f, -2640f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(816f, -380f, -1618f, -293f)), u_input.a != 71331i))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(467f, 154f, -1557f, 182f)))), vec4<f32>(_wgslsmith_f_op_f32(473f * -1161f), _wgslsmith_f_op_f32(abs(577f)), 1956f, -1576f)))), abs(~u_input.a));
}

