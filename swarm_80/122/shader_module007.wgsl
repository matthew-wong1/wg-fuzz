struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> f32 {
    global0 = select(true, true, !all(!select(vec4<bool>(false, arg_1, true, arg_1), vec4<bool>(false, true, false, arg_1), arg_1)));
    let var_0 = any(select(select(!vec2<bool>(arg_1, arg_1), select(select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, arg_1), vec2<bool>(true, false)), !vec2<bool>(arg_1, arg_1), 16962u <= u_input.a.x), all(vec4<bool>(true, arg_1, arg_1, true))), !vec2<bool>(arg_1, true), vec2<bool>(true, arg_1)));
    return _wgslsmith_f_op_f32(-arg_2);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = 9370u;
    return Struct_1(arg_1.yx, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-573f, arg_0.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.a.x, false, 1162f, Struct_1(vec2<f32>(arg_0.x, -570f), arg_1, u_input.b.x))) + _wgslsmith_f_op_f32(f32(-1f) * -1200f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x))) + _wgslsmith_f_op_f32(max(arg_1.x, 770f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - -734f)))), 2095i);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec4<i32>) -> f32 {
    global0 = false;
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-339f - 1373f), _wgslsmith_f_op_f32(arg_1.a.x - arg_1.b.x)) * _wgslsmith_f_op_vec2_f32(step(arg_1.b.yy, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, 1000f))))))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.a.x, arg_1.b.x)) + _wgslsmith_f_op_f32(round(-375f))))), -170f, _wgslsmith_f_op_f32(func_3(1u, true, arg_1.a.x, Struct_1(_wgslsmith_f_op_vec2_f32(arg_1.a * arg_1.b.xy), _wgslsmith_f_op_vec3_f32(-arg_1.b), i32(-1i) * -13403i)))), abs(min(~u_input.b.x, -30055i)));
    var var_1 = _wgslsmith_div_u32(~(((u_input.a.x | arg_0.x) >> (firstTrailingBit(u_input.a.x) % 32u)) & reverseBits(19884u)), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x));
    var var_2 = countOneBits(firstLeadingBit(_wgslsmith_clamp_vec2_i32(-reverseBits(arg_2.zz), -arg_2.zy, select(vec2<i32>(arg_2.x, -11445i), vec2<i32>(u_input.b.x, arg_1.c), true))));
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, -262f, -606f, _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, 904f, -556f, -1519f) * vec4<f32>(653f, 355f, arg_1.a.x, var_0.b.x))), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, -1201f, _wgslsmith_f_op_f32(trunc(828f)), 434f)));
    return _wgslsmith_f_op_f32(sign(var_0.b.x));
}

fn func_5(arg_0: Struct_1) -> bool {
    var var_0 = select(vec4<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), true, any(vec2<bool>(true, true)), true == all(vec3<bool>(true, false, false))), vec4<bool>(true, ~4294967295u > ~u_input.a.x, true, ~24649u == _wgslsmith_clamp_u32(~0u, 1u, firstLeadingBit(4294967295u))), !select(vec4<bool>(all(vec2<bool>(false, false)), false, true, true), vec4<bool>(all(vec2<bool>(false, false)), false, any(vec2<bool>(true, false)), true), !all(vec3<bool>(true, true, true))));
    let var_1 = _wgslsmith_mod_vec2_u32(u_input.a.zx >> (~(vec2<u32>(35530u, 21566u) ^ ~vec2<u32>(46525u, u_input.a.x)) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(u_input.a.x, ~u_input.a.x, ~15782u), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x) & 1u), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.xz & vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_sub_vec2_u32(u_input.a.yz, u_input.a.yx)), _wgslsmith_sub_vec2_u32(max(vec2<u32>(48096u, 4294967295u), u_input.a.yx), ~u_input.a.yx), _wgslsmith_div_vec2_u32(u_input.a.xx >> (u_input.a.xy % vec2<u32>(32u)), u_input.a.zy))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.b.yx + arg_0.a)), arg_0.a))), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-173f, -532f)), _wgslsmith_f_op_vec3_f32(arg_0.b * _wgslsmith_f_op_vec3_f32(-arg_0.b))).b, ~_wgslsmith_dot_vec3_i32(abs(reverseBits(vec3<i32>(arg_0.c, arg_0.c, 0i))), _wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x), -vec3<i32>(-37680i, u_input.b.x, -11375i))));
    global0 = true;
    let var_3 = vec2<i32>(arg_0.c, u_input.b.x ^ _wgslsmith_clamp_i32(abs(min(u_input.b.x, 0i)), min(arg_0.c, -2147483647i), -6791i));
    return false;
}

fn func_1() -> Struct_1 {
    global0 = func_5(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(409f + -228f)), _wgslsmith_f_op_f32(func_4(~vec4<u32>(60684u, u_input.a.x, u_input.a.x, u_input.a.x), func_2(vec2<f32>(-379f, 988f), vec3<f32>(-826f, -980f, 478f)), vec4<i32>(u_input.b.x, 36637i, u_input.b.x, u_input.b.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1023f, 1016f, -1240f) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(457f, 916f, -1164f), vec3<f32>(-997f, 1870f, 743f))))), -2147483647i));
    var var_0 = func_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(~21796u, true, _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(vec2<f32>(2262f, 397f), vec3<f32>(1961f, 651f, -1000f), u_input.b.x))) - 1f), 1000f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1071f, _wgslsmith_f_op_f32(ceil(-195f)), _wgslsmith_f_op_f32(-680f - 548f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-908f, 1812f, 399f) - vec3<f32>(-579f, -1964f, -1000f))))))));
    let var_1 = func_5(func_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(671f, var_0.b.x), vec2<f32>(var_0.b.x, var_0.a.x), false)))), var_0.b));
    let var_2 = -u_input.b;
    var var_3 = _wgslsmith_clamp_u32(17183u, 0u, 4294967295u);
    return Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(-var_0.b), i32(-1i) * -_wgslsmith_sub_i32(_wgslsmith_sub_i32(-1i, -20004i), 13569i));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = ~vec3<i32>(abs(~(11405i << (u_input.a.x % 32u))), -1i, _wgslsmith_dot_vec2_i32(-vec2<i32>(arg_1.c, arg_0.c), u_input.b));
    var var_1 = arg_0.a;
    let var_2 = true;
    let var_3 = arg_1;
    var var_4 = arg_1;
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(func_2(vec2<f32>(arg_1.a.x, -1835f), _wgslsmith_div_vec3_f32(vec3<f32>(var_4.b.x, 2474f, arg_1.b.x), vec3<f32>(1130f, 1000f, var_4.b.x))).a.x, var_4.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_2(_wgslsmith_f_op_vec2_f32(step(arg_0.a, vec2<f32>(-1000f, -721f))), var_4.b).b) * vec3<f32>(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(abs(arg_0.a.x))), -1000f, var_1.x)), min(_wgslsmith_mult_i32(50963i, func_2(vec2<f32>(arg_0.a.x, -967f), vec3<f32>(var_4.a.x, -518f, 881f)).c), -_wgslsmith_dot_vec3_i32(var_0, vec3<i32>(u_input.b.x, -1i, var_4.c))) | max(_wgslsmith_sub_i32(-2147483647i, var_4.c ^ u_input.b.x), (arg_0.c ^ -1i) & 24859i));
}

fn func_7(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = vec3<bool>((_wgslsmith_f_op_f32(-arg_1) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -688f))) || true, all(vec2<bool>(true, !all(vec3<bool>(false, true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_f_op_f32(1000f - arg_1))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x), arg_3, vec4<i32>(arg_0.c, arg_3.c, 63620i, 22796i)))), -1306f));
    var var_1 = func_6(arg_0, func_2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -915f), _wgslsmith_f_op_f32(-arg_2.b.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2.a.x, arg_1, 249f)))) * vec3<f32>(_wgslsmith_f_op_f32(func_3(u_input.a.x, false, arg_3.a.x, arg_3)), 1747f, arg_2.a.x))), true, _wgslsmith_mult_vec4_i32(firstTrailingBit(~vec4<i32>(arg_3.c, 24383i, 1i, 1i)), _wgslsmith_mod_vec4_i32(~vec4<i32>(1i, 7929i, 2147483647i, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.c, u_input.b.x, -10078i, arg_0.c), vec4<i32>(-2147483647i, -1i, arg_3.c, arg_2.c)))) ^ vec4<i32>(0i, min(arg_0.c, -arg_3.c), -3296i, arg_3.c));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1().b.x - -370f) - 1413f);
    let var_3 = reverseBits(countOneBits(min(~(~45871u), ~1u)));
    var_0 = select(select(select(vec3<bool>(true, true, true), vec3<bool>(!var_0.x, var_0.x, !var_0.x), select(select(vec3<bool>(false, var_0.x, true), vec3<bool>(var_0.x, false, true), var_0.x), !vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, var_0.x, true))), vec3<bool>(var_0.x, false, false), select(select(!vec3<bool>(var_0.x, true, true), vec3<bool>(true, var_0.x, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, var_0.x))), !select(vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, false, var_0.x)), !vec3<bool>(var_0.x, true, var_0.x))), vec3<bool>(select(func_5(Struct_1(arg_0.a, arg_0.b, var_1.c)), var_0.x, all(select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, true, false)))), var_0.x, true != var_0.x), vec3<bool>(~(~u_input.a.x) >= _wgslsmith_dot_vec2_u32(vec2<u32>(4239u, var_3) << (u_input.a.xy % vec2<u32>(32u)), select(vec2<u32>(var_3, u_input.a.x), vec2<u32>(0u, 50197u), vec2<bool>(var_0.x, false))), any(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, false))), any(!vec4<bool>(false, true, var_0.x, true))));
    return true;
}

fn func_8(arg_0: bool) -> u32 {
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_8(func_7(func_6(Struct_1(vec2<f32>(452f, 431f), vec3<f32>(-1281f, -670f, -1718f), -16823i), func_1(), true, ~vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 39065i)), 2000f, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(356f, 375f) + vec2<f32>(-1401f, 845f)), _wgslsmith_div_vec3_f32(vec3<f32>(-472f, -542f, 283f), vec3<f32>(785f, 1047f, 1149f)), _wgslsmith_dot_vec3_i32(vec3<i32>(-39709i, -11160i, 2147483647i), vec3<i32>(u_input.b.x, 0i, -1i))), Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(2430f, -1000f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, -635f, 1152f), vec3<f32>(-838f, -1145f, -876f))), u_input.b.x)));
    global0 = !(abs(1u) > min(func_8(all(vec4<bool>(false, false, true, true))), select(0u, max(18644u, 65946u), true)));
    var var_1 = func_6(func_1(), Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-800f, -659f) + vec2<f32>(801f, 1000f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(226f, -1031f))))), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(286f + -394f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(357f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(245f, -1120f)))), 29821i), !(!any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), (~firstTrailingBit(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) << (~_wgslsmith_add_vec4_u32(vec4<u32>(1u, var_0, 82340u, var_0), vec4<u32>(1u, u_input.a.x, var_0, 1u)) % vec4<u32>(32u))) >> (vec4<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(var_0, 0u, 27784u), ~u_input.a.x), ~var_0, _wgslsmith_clamp_u32(58038u, var_0, u_input.a.x) ^ (u_input.a.x << (var_0 % 32u)), u_input.a.x) % vec4<u32>(32u)));
    let var_2 = 340f;
    var var_3 = vec2<bool>(true, var_1.c < ~(-2147483647i));
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(var_1.b.xx * vec2<f32>(var_1.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), 454f))), func_1().b, u_input.b.x & var_1.c);
    var_3 = !(!select(vec2<bool>(!var_3.x, var_3.x), select(vec2<bool>(false, var_3.x), vec2<bool>(var_3.x, var_3.x), vec2<bool>(var_3.x, true)), !vec2<bool>(var_3.x, var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(select(-30329i, -24757i, false));
}

