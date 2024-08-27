struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> bool {
    var var_0 = ~u_input.b;
    var var_1 = _wgslsmith_add_vec2_u32(u_input.a.xx, vec2<u32>(reverseBits(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(52501u, arg_1.a), vec2<u32>(18335u, arg_1.a)))), u_input.a.x));
    var var_2 = select(vec4<bool>(arg_1.b < firstTrailingBit(arg_1.b), all(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), true, true), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), false)), vec4<bool>(false, true, select(false, true, true), true), true), !vec4<bool>(true, -1187f < arg_0.x, true, all(vec4<bool>(false, false, false, true))), !select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), true))), ((true | (-49771i == arg_1.b)) | false) & false);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1145f * _wgslsmith_f_op_f32(609f + _wgslsmith_f_op_f32(arg_0.x * -703f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x))), 227f)));
    let var_4 = min(~vec3<i32>(_wgslsmith_sub_i32(u_input.b, abs(u_input.b)), 1i, max(arg_1.b, 0i) >> (arg_1.a % 32u)), firstTrailingBit(abs(-(~vec3<i32>(2147483647i, arg_1.b, arg_1.b)))));
    return !(var_4.x >= var_4.x);
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: i32) -> Struct_1 {
    let var_0 = select(vec2<bool>(!func_3(vec2<f32>(-1558f, 282f), Struct_1(9277u, 58656i)) && !arg_0.x, all(select(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, arg_0.x))) & arg_0.x), !(!(!select(vec2<bool>(arg_0.x, false), vec2<bool>(false, true), true))), _wgslsmith_add_i32(~(-37151i), -28766i) >= u_input.b);
    let var_1 = any(select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(var_0.x, var_0.x, arg_0.x), var_0.x), !vec3<bool>(true, false, arg_0.x), !vec3<bool>(true, true, arg_0.x)), true), vec3<bool>(true, func_3(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(397f, 351f), vec2<f32>(210f, 900f))), Struct_1(u_input.c, arg_1)), true), select(vec3<bool>(var_0.x, 22431i != u_input.b, false), select(select(vec3<bool>(arg_0.x, true, true), vec3<bool>(false, true, arg_0.x), true), !vec3<bool>(false, arg_0.x, arg_0.x), any(var_0)), select(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, false, true), vec3<bool>(false, var_0.x, true)), vec3<bool>(false, true, true), vec3<bool>(false, false, var_0.x)))));
    let var_2 = vec2<u32>(u_input.a.x, firstLeadingBit(_wgslsmith_div_u32(~(~u_input.c), max(u_input.c, 52352u) & (u_input.a.x ^ 3354u))));
    var var_3 = Struct_2(Struct_1(~116008u, abs(~(-2147483647i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(2636f, 474f, 827f), vec3<f32>(-169f, 296f, -609f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-604f, 634f, -621f))))), u_input.a.zz, reverseBits(_wgslsmith_mod_vec2_u32(~var_2, reverseBits(var_2)) >> (~abs(u_input.a.zy) % vec2<u32>(32u))));
    var var_4 = vec4<i32>(countOneBits(arg_1), -65522i, -_wgslsmith_dot_vec3_i32(vec3<i32>(-arg_1, -var_3.a.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, -9314i), vec3<i32>(9383i, arg_1, var_3.a.b))), vec3<i32>(arg_2 << (u_input.c % 32u), u_input.b >> (u_input.c % 32u), 1i)), firstLeadingBit(~(-_wgslsmith_mod_i32(0i, -1i))));
    return Struct_1(_wgslsmith_add_u32(u_input.c, (reverseBits(var_3.d.x) & countOneBits(1u)) << (1u % 32u)), -32525i);
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(-(~0i), _wgslsmith_div_i32(u_input.b, 1i), ~_wgslsmith_dot_vec3_i32(-vec3<i32>(arg_1.b, 10998i, arg_1.b), min(vec3<i32>(-1i, u_input.b, -10861i), vec3<i32>(arg_0, arg_1.b, -3571i))), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(51564i, u_input.b, 55175i)), vec3<i32>(~arg_0, ~arg_0, _wgslsmith_add_i32(arg_0, -29831i)))), abs(vec4<i32>(firstLeadingBit(arg_0 | -14383i), u_input.b, max(2726i, 4960i) << (u_input.c % 32u), countOneBits(_wgslsmith_mod_i32(0i, -2147483647i)))));
    let var_1 = !vec4<bool>(any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), true)), true, all(!select(vec2<bool>(false, true), vec2<bool>(false, false), false)), _wgslsmith_sub_i32(arg_1.b, -arg_1.b) == -_wgslsmith_mult_i32(arg_1.b, 2147483647i));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1427f, _wgslsmith_f_op_f32(f32(-1f) * -1415f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1311f, -799f)))))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(441f, 138f)), vec2<f32>(226f, 1000f))))));
    let var_3 = vec2<u32>(~0u, ~(_wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, u_input.c), ~1u) | ((59391u >> (arg_1.a % 32u)) | func_2(vec2<bool>(var_1.x, false), -4092i, arg_1.b).a)));
    var_2 = vec2<f32>(1000f, var_2.x);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.x)) + _wgslsmith_f_op_f32(-var_2.x)), var_2.x, -658f)) - vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), var_2.x, var_2.x));
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1851f, 885f, -814f)))) + _wgslsmith_f_op_vec3_f32(func_4(54355i, func_2(arg_0, 1i, 36234i)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(i32(-1i) * -64635i, Struct_1(1u, u_input.b)))) * vec3<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(step(-196f, 581f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(665f + -789f)), _wgslsmith_div_f32(-260f, 373f)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.yx, vec2<f32>(var_0.x, 1369f)) + vec2<f32>(228f, 561f)) * _wgslsmith_f_op_vec2_f32(var_0.zz - var_0.yx))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(floor(1000f)))));
    let var_2 = vec4<bool>((-250f > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_vec3_f32(func_4(9216i, Struct_1(u_input.c, u_input.b))).x))) || true, !all(arg_0), true, !arg_0.x);
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1797f - var_0.x)), -1137f);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-134f * var_1.x) + -226f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(16747i, ~(-21116i), -1i, u_input.b);
    var var_1 = vec2<bool>(false, 7056u != _wgslsmith_mod_u32(8698u, ~(~u_input.c)));
    let var_2 = 16694i;
    var_1 = !vec2<bool>(false, false || (true | var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_1(!(!(!vec2<bool>(var_1.x, var_1.x))))), _wgslsmith_f_op_f32(-1000f + 108f));
}

