struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1() -> f32 {
    let var_0 = 0i;
    let var_1 = -18005i;
    var var_2 = 110f;
    var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-241f))));
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-577f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1536f - -1403f) * 102f), _wgslsmith_f_op_f32(sign(-113f))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(972f, -885f, -1054f, 1220f), vec4<f32>(-513f, 1000f, 2025f, 2052f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 703f, 143f, -1000f)))))));
    return _wgslsmith_f_op_f32(-var_3.x);
}

fn func_3(arg_0: u32) -> vec4<i32> {
    let var_0 = vec2<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(191f))))), 1000f));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)), _wgslsmith_f_op_f32(249f - var_0.x), any(vec2<bool>(false, true)))))))));
    var var_2 = !vec3<bool>(any(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, var_1))) < 195f, true | (_wgslsmith_f_op_f32(-var_0.x) >= -1000f));
    let var_3 = Struct_2(firstTrailingBit(vec2<u32>(abs(4294967295u), abs(abs(arg_0)))));
    var var_4 = u_input.a.yw;
    return -select(max(~min(vec4<i32>(-1i, -18504i, -9014i, 20465i), vec4<i32>(2147483647i, 2147483647i, 2147483647i, 18985i)), ~(-vec4<i32>(2147483647i, -36772i, -20386i, -13173i))), -abs(vec4<i32>(-2147483647i, -7334i, -1074i, -14503i)), !(!vec4<bool>(var_2.x, var_2.x, false, var_2.x)));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: i32, arg_3: vec4<i32>) -> bool {
    let var_0 = u_input.a.x & (4294967295u >> (reverseBits(u_input.a.x) % 32u));
    var var_1 = Struct_2(u_input.a.ww);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-713f - -1040f)), -436f, -1250f, _wgslsmith_f_op_f32(561f + 792f));
    var var_3 = !select(vec3<bool>(false, !all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(trunc(var_2.x)) < _wgslsmith_f_op_f32(var_2.x * 281f)), vec3<bool>(var_1.a.x > var_1.a.x, false, true), vec3<bool>(true && any(vec3<bool>(false, true, false)), true, true));
    let var_4 = true;
    return !(!((arg_3.x | arg_1.x) > -(~0i)));
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = ~(~(~u_input.a));
    var var_1 = vec4<bool>(false, true, _wgslsmith_f_op_f32(f32(-1f) * -885f) == _wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -246f)))), !func_4(func_3(arg_2.a.x), vec3<i32>(1i, 1i, 1i), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-3427i, -1i), vec2<i32>(-2147483647i, -14323i))), firstLeadingBit(vec4<i32>(0i, -1i, 86224i, -7406i)) << (u_input.a % vec4<u32>(32u))));
    var var_2 = Struct_1(select(firstLeadingBit(firstTrailingBit(u_input.a.xz) | _wgslsmith_div_vec2_u32(arg_2.a, var_0.wz)), vec2<u32>(max(_wgslsmith_mod_u32(0u, u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(25238u, var_0.x, 18688u, arg_2.a.x), var_0)), var_0.x), !var_1.xy));
    let var_3 = _wgslsmith_f_op_vec3_f32(-arg_1.wyy);
    var var_4 = reverseBits(reverseBits(57057i));
    return Struct_1(max(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 29569u), vec2<u32>(var_0.x, 4294967295u)), u_input.a.x), _wgslsmith_sub_vec2_u32(~vec2<u32>(1u, var_0.x) ^ arg_2.a, ~select(arg_2.a, u_input.a.xx, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(func_1()), -194f), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1810f, -1219f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(798f * -1000f), -1018f)), _wgslsmith_f_op_f32(func_1())))) + vec3<f32>(1f, 1f, 1f));
    let var_1 = func_2(false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, 1000f) * vec4<f32>(var_0.x, -1554f, var_0.x, -375f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1004f, var_0.x, var_0.x, -791f) - vec4<f32>(1217f, 726f, var_0.x, var_0.x))))), Struct_2(max(vec2<u32>(~u_input.a.x, 4294967295u), u_input.a.xx)));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(133f, -1050f))), _wgslsmith_f_op_f32(-1250f + _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(-220f * 621f))))));
    var var_2 = Struct_2(func_2(true, vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(step(1835f, 1062f)), _wgslsmith_div_f32(var_0.x, 251f)), Struct_2(~var_1.a)).a >> (u_input.a.zz % vec2<u32>(32u)));
    let var_3 = func_2(true, vec4<f32>(-1462f, 1000f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))), Struct_2(_wgslsmith_sub_vec2_u32(select(vec2<u32>(var_1.a.x, 0u), vec2<u32>(var_2.a.x, 1u) << (var_2.a % vec2<u32>(32u)), true), countOneBits(vec2<u32>(var_1.a.x, var_2.a.x)) & var_1.a)));
    let var_4 = false;
    var_0 = vec3<f32>(-1423f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 875f))), -420f)), _wgslsmith_f_op_f32(floor(var_0.x)));
    let var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_dot_vec4_i32(max(~vec4<i32>(-2147483647i, 5625i, -6343i, -1i), -vec4<i32>(1i, 21284i, 29403i, -1i)), vec4<i32>(i32(-1i) * -2147483647i, -24352i >> (var_2.a.x % 32u), i32(-1i) * -2147483647i, min(5398i, -41641i))), countOneBits(_wgslsmith_mult_i32(_wgslsmith_mult_i32(19508i, -11689i), 1i)), abs(~_wgslsmith_dot_vec2_i32(vec2<i32>(-18818i, 1i), vec2<i32>(19651i, -2147483647i))), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), reverseBits(~vec2<i32>(8052i, 1i)))), _wgslsmith_dot_vec2_u32(firstLeadingBit(firstTrailingBit(vec2<u32>(0u, 40925u))), vec2<u32>(reverseBits(67246u), ~14432u)) >> (var_2.a.x % 32u));
}

