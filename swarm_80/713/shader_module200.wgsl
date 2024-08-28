struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(286f)), -1111f, 1365f, _wgslsmith_f_op_f32(ceil(-960f))) * vec4<f32>(_wgslsmith_f_op_f32(sign(888f)), _wgslsmith_f_op_f32(step(116f, 490f)), _wgslsmith_f_op_f32(-728f - 1283f), _wgslsmith_div_f32(-788f, -1397f))) - vec4<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-934f + -918f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) + -568f), -1390f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1000f)), 320f))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-717f, _wgslsmith_f_op_f32(sign(1151f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -368f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(435f - 314f) - _wgslsmith_f_op_f32(round(143f))), _wgslsmith_f_op_f32(trunc(-632f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1791f) - _wgslsmith_f_op_f32(min(-1000f, -229f))) - 1555f)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))))))));
    var var_2 = _wgslsmith_add_i32(u_input.a, select(-2147483647i, 1i, !any(vec2<bool>(false, true)))) | ~u_input.a;
    let var_3 = (true & !(~u_input.b.x > u_input.b.x)) || true;
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.a + 332f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + _wgslsmith_div_f32(795f, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -748f))));
    return 1000f;
}

fn func_2(arg_0: vec2<u32>) -> bool {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-387f, -1367f)))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(func_3()));
    let var_2 = ~1i;
    let var_3 = vec4<bool>(any(!vec3<bool>(false, any(vec4<bool>(false, false, false, false)), select(false, false, false))), !(!any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), true))), true, (firstTrailingBit(1i) <= firstLeadingBit(2147483647i)) && (true && select(true, all(vec3<bool>(false, false, true)), all(vec4<bool>(false, false, false, true)))));
    var var_4 = true;
    return any(!var_3.ywy);
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1114f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(582f + 567f), 2097f)), _wgslsmith_f_op_f32(-469f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-803f)), _wgslsmith_f_op_f32(max(505f, -184f)))))));
    var var_1 = !select(vec2<bool>(true, func_2(_wgslsmith_sub_vec2_u32(u_input.b, u_input.b))), vec2<bool>(true, true), ~24177u < u_input.b.x);
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + var_0.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1905f)))))));
    var var_2 = select(vec4<bool>(!(!var_1.x), var_1.x, var_1.x, !(!func_2(vec2<u32>(u_input.b.x, 4294967295u)))), select(vec4<bool>(true, true, true, true), !vec4<bool>(select(var_1.x, true, true), all(vec4<bool>(false, true, var_1.x, var_1.x)), var_1.x, all(vec3<bool>(false, var_1.x, false))), !(!select(vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(true, var_1.x, var_1.x, false), false))), select(select(vec4<bool>(var_0.a == 242f, true, false, var_1.x && false), !vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), var_1.x), select(!(!vec4<bool>(var_1.x, false, var_1.x, false)), vec4<bool>(any(vec3<bool>(true, var_1.x, false)), true, !var_1.x, true), !(!vec4<bool>(false, false, var_1.x, var_1.x))), any(!select(vec3<bool>(var_1.x, true, true), vec3<bool>(var_1.x, false, true), false))));
    var_1 = !(!var_2.xy);
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2559f + var_0.a), 1393f), -445f));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = abs(reverseBits(~vec2<i32>(u_input.a, 49288i)) >> (u_input.b % vec2<u32>(32u)));
    var_0 = ~reverseBits(vec2<i32>(~(var_0.x | var_0.x), 33991i));
    let var_1 = u_input.a << (50285u % 32u);
    var_0 = vec2<i32>(-(-(i32(-1i) * -63055i) >> (u_input.b.x % 32u)), var_1);
    var_0 = vec2<i32>(_wgslsmith_mod_i32(0i, -53413i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(-6585i), 2147483647i, ~u_input.a, min(u_input.a, var_0.x)), vec4<i32>(1i, reverseBits(-15389i), 2147483647i, -u_input.a)));
    return func_1(select(firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, var_0.x), vec2<i32>(-13889i, var_0.x)), max(var_1, -9344i), var_0.x)), ~(-firstLeadingBit(vec3<i32>(21428i, u_input.a, u_input.a))), select(!vec3<bool>(true, arg_1, true), !select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(arg_1, arg_1, true), arg_1), any(select(vec4<bool>(true, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, false, arg_1), arg_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(u_input.b.x, u_input.b.x);
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -849f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-998f + 1293f)))));
    var var_2 = !vec4<bool>(firstLeadingBit(-43802i) >= (max(u_input.a, u_input.a) ^ u_input.a), !all(vec2<bool>(false, false)), var_1.a > _wgslsmith_f_op_f32(var_1.a + 1445f), u_input.a >= min(~u_input.a, 2147483647i));
    let var_3 = func_4(func_1(vec3<i32>(~u_input.a & min(17614i, 0i), u_input.a, firstTrailingBit(2147483647i))), var_2.x, func_1(firstTrailingBit(max(~vec3<i32>(20589i, 2147483647i, u_input.a), -vec3<i32>(u_input.a, u_input.a, u_input.a)))));
    let var_4 = select(vec4<u32>(3714u, ~51591u, 31269u, min(~0u, ~abs(6630u))), select(vec4<u32>(38177u, 26496u, 0u & u_input.b.x, firstLeadingBit(16063u)) & min(vec4<u32>(1u, u_input.b.x, 4404u, u_input.b.x), ~vec4<u32>(46468u, 0u, 4294967295u, u_input.b.x)), ~(~abs(vec4<u32>(4294967295u, u_input.b.x, 6636u, var_0))), !(!(!vec4<bool>(true, var_2.x, false, true)))), all(var_2.wxz));
    var var_5 = -reverseBits(~_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(-32929i, u_input.a))) | _wgslsmith_mod_vec2_i32(-vec2<i32>(11737i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -1i, u_input.a), vec4<i32>(u_input.a, 1i, u_input.a, u_input.a))), ~(~countOneBits(vec2<i32>(-1105i, u_input.a))));
    var var_6 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a + var_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-773f))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(select((vec3<u32>(1u, u_input.b.x, 24676u) | var_4.zwz) << (firstLeadingBit(vec3<u32>(var_4.x, 74741u, 32196u)) % vec3<u32>(32u)), vec3<u32>(1u, var_0, 0u >> (u_input.b.x % 32u)), !(!var_2.wyy))), -1704f, vec2<i32>(i32(-1i) * -2147483647i, 1i));
}

