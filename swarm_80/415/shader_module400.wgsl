struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: f32) -> vec4<bool> {
    let var_0 = arg_1;
    let var_1 = Struct_1(vec2<i32>(-1i) * -arg_0.a);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-360f, -567f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2)) - _wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-795f - _wgslsmith_f_op_f32(f32(-1f) * -2130f)))));
    let var_3 = true;
    let var_4 = !(!vec3<bool>(any(vec3<bool>(var_3, var_3, var_3)), true, false | (arg_1.x == 4294967295u)));
    return vec4<bool>(true, _wgslsmith_f_op_f32(-194f + arg_2) == -1000f, !(~4294967295u == arg_1.x), -(min(arg_0.a.x, 1347i) & ~arg_0.a.x) > arg_0.a.x);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mod_i32(arg_2, ~arg_0.a.x << (~min(_wgslsmith_sub_u32(u_input.b, u_input.b), ~u_input.b) % 32u));
    var var_1 = all(select(!select(vec4<bool>(true, true, true, true), func_3(Struct_1(vec2<i32>(arg_2, u_input.a.x)), vec4<u32>(1u, 4479u, arg_1, u_input.b), -690f), vec4<bool>(true, true, true, true)), select(func_3(Struct_1(arg_3.a), vec4<u32>(4294967295u, 69555u, u_input.b, 89675u) ^ vec4<u32>(u_input.b, u_input.b, u_input.b, arg_1), _wgslsmith_f_op_f32(min(131f, -2911f))), select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), true), true), all(vec3<bool>(true, true, true))), select(func_3(arg_3, vec4<u32>(4294967295u, 0u, 4294967295u, 1u) ^ vec4<u32>(4294967295u, u_input.b, 52586u, 4294967295u), 911f), vec4<bool>(true, true, true, true), all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))))));
    var_0 = u_input.a.x;
    var var_2 = Struct_1(select(_wgslsmith_mult_vec2_i32(arg_0.a, ~u_input.a) ^ (u_input.a & -arg_3.a), -(~(~arg_3.a)), vec2<bool>(false, true)));
    return Struct_1(~_wgslsmith_mod_vec2_i32(arg_3.a, _wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(22678i, arg_2)), _wgslsmith_add_vec2_i32(arg_0.a, u_input.a))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = ~(-1i);
    var var_1 = firstLeadingBit(select(vec3<i32>(u_input.a.x, u_input.a.x, max(u_input.a.x, ~arg_2.a.x)), -vec3<i32>(u_input.a.x, 16325i, 49572i) | _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.a.x, -2147483647i, u_input.a.x), select(vec3<i32>(arg_2.a.x, 93942i, arg_0.a.x), vec3<i32>(arg_0.a.x, arg_0.a.x, 1i), true)), select(vec3<bool>(true, false, all(vec4<bool>(false, true, false, true))), vec3<bool>(true, true, true), true)));
    var var_2 = _wgslsmith_f_op_f32(-arg_1.x);
    var var_3 = Struct_1(_wgslsmith_div_vec2_i32(select(var_1.zz, _wgslsmith_add_vec2_i32(~vec2<i32>(2147483647i, arg_0.a.x), ~arg_2.a), select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true), any(vec2<bool>(true, false)))), ~(u_input.a ^ (var_1.zz & vec2<i32>(arg_2.a.x, 0i)))));
    let var_4 = arg_0.a;
    return arg_2;
}

fn func_5(arg_0: vec2<f32>, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = -abs(_wgslsmith_sub_i32(max(arg_3.a.x ^ -2147483647i, _wgslsmith_div_i32(-4249i, 64058i)), _wgslsmith_dot_vec2_i32(u_input.a, arg_3.a)));
    var_0 = ~select(firstLeadingBit(-_wgslsmith_dot_vec2_i32(arg_3.a, vec2<i32>(2147483647i, u_input.a.x))), ~(1i & abs(arg_3.a.x)), false);
    var_0 = arg_3.a.x;
    var var_1 = func_2(arg_3, u_input.b, 1i, Struct_1(_wgslsmith_clamp_vec2_i32(min(arg_3.a, _wgslsmith_add_vec2_i32(vec2<i32>(arg_3.a.x, u_input.a.x), vec2<i32>(-34347i, arg_3.a.x))), firstTrailingBit(vec2<i32>(u_input.a.x, u_input.a.x)), max(vec2<i32>(u_input.a.x, 2147483647i), firstTrailingBit(vec2<i32>(u_input.a.x, 2276i))))));
    return func_2(arg_3, _wgslsmith_sub_u32(0u, firstLeadingBit(_wgslsmith_clamp_u32(abs(u_input.b), ~arg_2.x, u_input.b))), -18629i, arg_3);
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = Struct_1(-max(~(-arg_1.a), countOneBits(-arg_1.a)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)));
    var_1 = _wgslsmith_f_op_f32(1862f * -649f);
    var var_2 = select(vec4<bool>(select(false, any(vec2<bool>(true, true)), true), -1131f >= _wgslsmith_f_op_f32(-1926f - _wgslsmith_f_op_f32(arg_0.x * 117f)), false | (any(vec2<bool>(true, false)) | all(vec4<bool>(true, true, false, true))), true), vec4<bool>(false, false, false, any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), func_3(arg_1, vec4<u32>(4294967295u, 28224u, 52693u, u_input.b), arg_0.x).xzy))), false);
    var_2 = vec4<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-2257f, _wgslsmith_f_op_f32(floor(arg_0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -126f), _wgslsmith_f_op_f32(round(arg_0.x))))) > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-712f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(746f - 579f) * _wgslsmith_f_op_f32(floor(arg_0.x))), true)), var_2.x, var_2.x, true);
    return vec2<i32>(1i, _wgslsmith_sub_i32(min(~u_input.a.x, -41592i), 1i));
}

fn func_7(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_1(u_input.a);
    var_0 = func_2(func_2(func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(490f, -1068f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-964f * -1591f))), ~arg_0, func_2(Struct_1(u_input.a), u_input.b, arg_2.x, func_4(Struct_1(vec2<i32>(var_0.a.x, -17481i)), vec4<f32>(-707f, 1408f, 488f, -1000f), Struct_1(u_input.a), 0u))), ~1u, -1i & _wgslsmith_mult_i32(~u_input.a.x, u_input.a.x), Struct_1(vec2<i32>(func_4(Struct_1(vec2<i32>(var_0.a.x, u_input.a.x)), vec4<f32>(1338f, 1345f, 486f, 304f), Struct_1(vec2<i32>(-19458i, -1i)), arg_0.x).a.x, _wgslsmith_add_i32(0i, var_0.a.x)))), ~1628u ^ arg_0.x, -2147483647i, func_4(func_4(Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.a.x), vec2<i32>(2147483647i, u_input.a.x))), vec4<f32>(_wgslsmith_f_op_f32(-1342f * -941f), _wgslsmith_f_op_f32(floor(-1248f)), -311f, _wgslsmith_f_op_f32(250f + 1501f)), Struct_1(func_2(Struct_1(var_0.a), u_input.b, -23381i, Struct_1(u_input.a)).a), ~0u), vec4<f32>(_wgslsmith_f_op_f32(trunc(-1137f)), -1000f, -1265f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-188f)))), Struct_1(arg_2), ~(~u_input.b) & arg_0.x));
    var var_1 = any(arg_1) && all(arg_1.xz);
    var_1 = arg_1.x;
    var var_2 = -922f;
    return Struct_1(vec2<i32>(_wgslsmith_mod_i32((var_0.a.x << (u_input.b % 32u)) >> (~4294967295u % 32u), 20229i), -21887i));
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = func_7(vec4<u32>(13239u, u_input.b, reverseBits(~u_input.b), ~(~select(u_input.b, u_input.b, true))), select(!select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), true), !vec3<bool>(true, 4294967295u >= u_input.b, any(vec3<bool>(true, true, true))), true), func_6(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-186f, -438f)), 697f, _wgslsmith_f_op_f32(-515f + -1000f), _wgslsmith_f_op_f32(trunc(630f)))), Struct_1(u_input.a), Struct_1(u_input.a), func_5(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1170f, -740f) - vec2<f32>(-849f, -301f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-102f, 208f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -807f))), vec4<u32>(~47420u, _wgslsmith_mod_u32(u_input.b, u_input.b), 4294967295u, 3726u), func_4(func_2(Struct_1(u_input.a), u_input.b, arg_0, Struct_1(u_input.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-863f, 895f, 486f, 389f)), Struct_1(u_input.a), _wgslsmith_div_u32(u_input.b, u_input.b)))));
    var var_1 = Struct_1(~((vec2<i32>(-1i) * -vec2<i32>(-32342i, var_0.a.x)) << (vec2<u32>(u_input.b, min(u_input.b, 10788u)) % vec2<u32>(32u))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-365f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f)))));
    let var_3 = func_7(abs((vec4<u32>(u_input.b, u_input.b, 7655u, 0u) << (vec4<u32>(u_input.b, 0u, 1u, 1u) % vec4<u32>(32u))) & reverseBits(vec4<u32>(18531u, u_input.b, u_input.b, u_input.b))) << (vec4<u32>(98696u, _wgslsmith_clamp_u32(firstLeadingBit(4294967295u), 106200u, abs(u_input.b)), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, 72091u, 1u), ~vec3<u32>(1u, u_input.b, u_input.b)), 4294967295u) % vec4<u32>(32u)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(func_3(Struct_1(vec2<i32>(var_1.a.x, var_1.a.x)), vec4<u32>(u_input.b, 52860u, 78576u, u_input.b), var_2).wwy, vec3<bool>(true, true, true), all(vec3<bool>(false, false, true)))), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, _wgslsmith_div_i32(abs(arg_0), 2147483647i)), var_1.a));
    var_1 = var_0;
    return _wgslsmith_f_op_f32(round(1222f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, u_input.a.x), -max(vec2<i32>(u_input.a.x, -1i), vec2<i32>(-12010i, u_input.a.x))), u_input.a));
    var var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(u_input.a.x)), 1362f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1115f - 535f) * _wgslsmith_div_f32(1603f, 1094f)), _wgslsmith_f_op_f32(ceil(-495f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-124f - -890f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(265f)))))), _wgslsmith_f_op_f32(select(-1564f, 744f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(266f, 192f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -621f))));
    let var_2 = func_2(func_2(Struct_1(vec2<i32>(~2147483647i, _wgslsmith_add_i32(11248i, 11372i))), 0u, max(~(0i & var_0.a.x), _wgslsmith_dot_vec2_i32(u_input.a, var_0.a) & (1i & u_input.a.x)), func_5(vec2<f32>(_wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(624f - -704f)), 1f, min(_wgslsmith_mult_vec4_u32(vec4<u32>(82156u, u_input.b, 0u, 33877u), vec4<u32>(0u, u_input.b, 0u, u_input.b)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 30139u, u_input.b, u_input.b), vec4<u32>(u_input.b, 0u, 1u, 55080u))), func_7(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec3<bool>(true, false, false), func_6(vec4<f32>(-1957f, 357f, var_1.x, -194f), Struct_1(vec2<i32>(-16836i, -2147483647i)), Struct_1(var_0.a), Struct_1(u_input.a))))), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.b, ~u_input.b, u_input.b), ~vec4<u32>(_wgslsmith_mult_u32(u_input.b, 1u), ~1u, u_input.b, u_input.b)), ~_wgslsmith_div_i32(~var_0.a.x, func_5(vec2<f32>(var_1.x, var_1.x), 429f, vec4<u32>(u_input.b, 4294967295u, 1u, u_input.b), func_2(Struct_1(vec2<i32>(0i, 0i)), u_input.b, u_input.a.x, Struct_1(u_input.a))).a.x), Struct_1(func_4(func_7(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 12408u), vec4<u32>(u_input.b, 42142u, 42294u, u_input.b)), vec3<bool>(true, false, false), u_input.a), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, -1000f, var_1.x, 998f))), vec4<f32>(var_1.x, var_1.x, 219f, -1790f), vec4<bool>(false, false, true, false))), func_5(vec2<f32>(-816f, 1000f), _wgslsmith_f_op_f32(round(-1659f)), vec4<u32>(u_input.b, 45465u, 1u, 38661u), Struct_1(vec2<i32>(-13394i, u_input.a.x))), 19803u).a));
    var var_3 = var_1.x;
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(2153f)))))), var_1.x, false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.b, 4131u, 75955u) ^ ~abs(~vec3<u32>(1u, u_input.b, u_input.b)), ~var_0.a.x);
}

