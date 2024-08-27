struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = min(~(~104368u) | select(firstLeadingBit(arg_3.a.x), 4294967295u, u_input.a.x > 0i), arg_0.a.x) < 23076u;
    var var_1 = arg_0;
    var var_2 = vec3<i32>(38627i >> ((~1u | ~(arg_3.a.x >> (var_1.a.x % 32u))) % 32u), i32(-1i) * -(~u_input.a.x >> (var_1.a.x % 32u)), -countOneBits(-2147483647i));
    var var_3 = 1i;
    var var_4 = Struct_1(var_1.a, 1000f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-442f)) * _wgslsmith_f_op_f32(select(var_1.c.x, arg_0.c.x, false)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1014f)))))));
    return true & !select(select(all(vec3<bool>(true, true, true)), true, true), all(vec3<bool>(true, false, true)) && true, false);
}

fn func_2(arg_0: vec4<bool>) -> vec3<f32> {
    let var_0 = u_input.d.x;
    var var_1 = u_input.b;
    let var_2 = !select(vec4<bool>(true | func_3(Struct_1(vec3<u32>(40355u, 4294967295u, u_input.b), -1000f, vec2<f32>(266f, -167f)), Struct_1(vec3<u32>(u_input.b, u_input.b, 4294967295u), 188f, vec2<f32>(-761f, 1065f)), Struct_1(vec3<u32>(u_input.b, u_input.b, u_input.b), -247f, vec2<f32>(-675f, -634f)), Struct_1(vec3<u32>(u_input.b, u_input.b, 47679u), -2195f, vec2<f32>(-129f, -222f))), true, arg_0.x, false), arg_0, true);
    var var_3 = Struct_1(reverseBits(vec3<u32>(u_input.b, u_input.b, _wgslsmith_sub_u32(max(u_input.b, u_input.b), 54804u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1718f - 197f)))) - _wgslsmith_f_op_f32(-480f * 601f)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -573f), _wgslsmith_f_op_f32(max(649f, -136f)))) * _wgslsmith_f_op_f32(1f - 1341f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1000f))))))));
    var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(1u, _wgslsmith_dot_vec2_u32(reverseBits(var_3.a.xz) ^ var_3.a.zz, _wgslsmith_mult_vec2_u32(~var_3.a.zy, firstTrailingBit(vec2<u32>(14888u, 4294967295u))))), vec2<u32>(63921u, _wgslsmith_mod_u32(min(select(1u, 1u, true), u_input.b), ~firstLeadingBit(4294967295u))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-210f, var_3.c.x, -1000f))))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(886f, 268f, -1000f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(813f, var_3.b, 710f), vec3<f32>(var_3.c.x, var_3.b, -1414f)), vec3<f32>(var_3.c.x, var_3.b, var_3.b))))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_2(!vec4<bool>(select(false, false, true) || true, true, !all(vec4<bool>(true, false, false, true)), true || (u_input.b != 22231u))));
    var var_1 = Struct_1(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(u_input.b, u_input.b, 4294967295u)), countOneBits(vec3<u32>(0u, u_input.b, u_input.b))), ~(vec3<u32>(1u, u_input.b, u_input.b) | vec3<u32>(u_input.b, u_input.b, 31640u))), vec3<u32>(u_input.b, 0u, u_input.b), ~((vec3<u32>(u_input.b, 0u, 1u) & vec3<u32>(u_input.b, 0u, 55589u)) << (select(vec3<u32>(6440u, u_input.b, 0u), vec3<u32>(u_input.b, 36373u, 37698u), vec3<bool>(false, false, false)) % vec3<u32>(32u)))), var_0.x, _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-379f - 201f), var_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -471f)))), _wgslsmith_f_op_vec2_f32(round(var_0.zz))));
    var_1 = Struct_1(select(var_1.a, vec3<u32>(var_1.a.x >> (countOneBits(var_1.a.x) % 32u), ~var_1.a.x, var_1.a.x), vec3<bool>(select(true, false, true), true, !any(vec3<bool>(true, true, true)))), var_1.b, var_1.c);
    var_1 = Struct_1(abs(~vec3<u32>(_wgslsmith_div_u32(var_1.a.x, var_1.a.x), 1u, min(1u, 61996u))), _wgslsmith_f_op_f32(-306f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, var_1.b) - 225f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.x, -2103f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.x, var_1.b))))));
    let var_2 = Struct_1(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.a.x, 0u, 1u), reverseBits(var_1.a)), vec3<u32>(1u, u_input.b, ~var_1.a.x)) >> (~abs(countOneBits(vec3<u32>(0u, var_1.a.x, var_1.a.x))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec3_f32(func_2(vec4<bool>(func_3(Struct_1(vec3<u32>(var_1.a.x, var_1.a.x, var_1.a.x), 194f, var_1.c), Struct_1(var_1.a, var_0.x, var_1.c), Struct_1(vec3<u32>(4294967295u, 15104u, 102440u), 356f, var_0.yy), Struct_1(vec3<u32>(var_1.a.x, 6189u, var_1.a.x), var_1.c.x, vec2<f32>(-576f, var_1.c.x))), all(vec4<bool>(true, true, true, true)), true, arg_0 > 0i))).x, -626f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.xz * var_1.c)))));
    return Struct_1(vec3<u32>(82875u, firstTrailingBit(~4294967295u), 1u), -686f, vec2<f32>(741f, -414f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(244f, -1911f))) - 254f);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(862f, -467f)), vec2<f32>(296f, 344f), any(vec4<bool>(true, false, false, true)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-513f, -278f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1532f, 453f) * vec2<f32>(601f, -2086f)))))));
    let var_2 = func_1(_wgslsmith_mod_i32(u_input.c.x, u_input.a.x));
    var var_3 = 1i;
    var_1 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(1i, ~(~_wgslsmith_dot_vec2_i32(u_input.c.xx, u_input.d.zz)), 2147483647i));
}

