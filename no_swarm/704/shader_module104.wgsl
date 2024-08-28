struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> vec4<i32> {
    var var_0 = u_input.b.x;
    var_0 = 1i;
    var_0 = ~8087i;
    var_0 = u_input.b.x;
    var var_1 = ~(~vec3<u32>(65919u, 62231u, 1u));
    return countOneBits(vec4<i32>((-18692i >> (_wgslsmith_mult_u32(4294967295u, u_input.a) % 32u)) << (abs(var_1.x | u_input.a) % 32u), 49552i, _wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.b.x, min(arg_1, arg_1), -2147483647i), arg_0.b), 2147483647i));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    let var_0 = _wgslsmith_clamp_u32(u_input.a, 4294967295u, _wgslsmith_sub_u32(~(~u_input.a) >> (4294967295u % 32u), 34335u));
    let var_1 = -1549f != _wgslsmith_f_op_f32(arg_3.a.x * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1772f, arg_3.a.x)), -411f)));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_3.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.x - 336f)))));
    let var_3 = (abs(vec2<u32>(abs(var_0), 41815u)) << (vec2<u32>(_wgslsmith_mod_u32(u_input.a | var_0, 1u | var_0), ~u_input.a) % vec2<u32>(32u))) >> (reverseBits(vec2<u32>(0u, ~firstLeadingBit(35537u))) % vec2<u32>(32u));
    var var_4 = !any(!vec3<bool>(var_1, var_1 && var_1, true));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(f32(-1f) * -119f)));
}

fn func_2(arg_0: i32) -> vec4<bool> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(112f, 1772f, 1000f) + vec3<f32>(1265f, -766f, -697f))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, 179f, -662f), vec3<f32>(-584f, -1000f, -546f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-194f, 732f, -1485f))))), vec3<f32>(_wgslsmith_f_op_f32(func_4(Struct_1(26298i), func_3(Struct_2(vec3<f32>(-843f, -140f, 615f), 32968i), -1i), Struct_1(-17586i), Struct_2(vec3<f32>(142f, 156f, -505f), u_input.b.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-2614f, -850f))), 1000f))), abs(u_input.b.x << (abs(select(4294967295u, 132615u, false)) % 32u)));
    var var_1 = ~abs(4294967295u);
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1249f, var_0.a.x), -646f))))))));
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(var_0.a + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0.a * _wgslsmith_f_op_vec3_f32(-vec3<f32>(2656f, var_0.a.x, var_0.a.x))), var_0.a, vec3<bool>(true, true, true)))), 33468i);
    let var_4 = any(select(select(vec3<bool>(true, false, true), vec3<bool>(true, all(vec2<bool>(true, false)), select(true, false, true)), _wgslsmith_div_f32(213f, -629f) > var_0.a.x), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(any(vec3<bool>(false, false, true)), true, any(vec3<bool>(false, true, true))), select(false, false, false) == true), true));
    return !(!(!vec4<bool>(all(vec2<bool>(var_4, false)), select(var_4, true, false), true != var_4, var_4)));
}

fn func_5(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(trunc(874f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-973f)))), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1665f - 924f), -950f))))), _wgslsmith_mod_i32(countOneBits(-(~(-43336i))), -33480i));
    let var_1 = vec3<bool>(_wgslsmith_f_op_f32(var_0.a.x * 558f) != 684f, !arg_1.x == arg_1.x, any(func_2(u_input.b.x).xy));
    var_0 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a + _wgslsmith_div_vec3_f32(vec3<f32>(-1001f, var_0.a.x, 282f), vec3<f32>(var_0.a.x, -513f, var_0.a.x)))), var_0.a), arg_3.a);
    var var_2 = Struct_2(var_0.a, u_input.b.x);
    let var_3 = firstLeadingBit(u_input.b.x);
    return vec4<bool>(arg_1.x || arg_1.x, var_1.x, !(any(arg_1.yx) & !arg_1.x), u_input.a <= ~_wgslsmith_add_u32(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.a, 0u), vec4<u32>(u_input.a, 44336u, 0u, 0u))));
}

fn func_1(arg_0: f32) -> bool {
    var var_0 = ~57877u & u_input.a;
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(791f, 283f, 2708f, arg_0)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(893f, arg_0, 1000f, -1067f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 243f, arg_0) * vec4<f32>(-1000f, 633f, -1275f, arg_0)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-511f, arg_0, arg_0, -1257f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, arg_0)) - vec4<f32>(arg_0, arg_0, -108f, 224f)))), select(!func_5(u_input.b.x, func_2(4992i), Struct_1(u_input.b.x), Struct_1(u_input.b.x)), func_5(42864i, select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true), false), Struct_1(1i), Struct_1(22715i)), vec4<bool>(true, all(vec3<bool>(true, false, true)), false, all(select(vec2<bool>(true, false), vec2<bool>(false, true), true))))));
    var var_2 = _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(trunc(-1719f)))))));
    let var_3 = firstLeadingBit(~(~(~u_input.a))) <= ~u_input.a;
    var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0, arg_0), 1f, all(vec4<bool>(var_3, true, true, var_3))))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, select(false, true, true)), vec2<bool>(func_1(268f), true), true & any(vec2<bool>(false, false))), !select(vec2<bool>(true, true), vec2<bool>(true, true), true)), vec2<bool>(!((u_input.b.x | u_input.b.x) < max(u_input.b.x, u_input.b.x)), !any(vec4<bool>(true, true, true, true))), true);
    var_0 = vec2<bool>(!(u_input.b.x >= -u_input.b.x), all(vec3<bool>(!var_0.x, true, !var_0.x)) == func_1(-866f));
    var_0 = vec2<bool>(true, !(!var_0.x | true));
    let var_1 = !(!func_2(abs(_wgslsmith_div_i32(6618i, 16807i))));
    let var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(856f + -1000f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * 160f), _wgslsmith_f_op_f32(1120f - 1315f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(621f, 953f)))), 680f), ~u_input.b.x);
    var_0 = select(var_1.xw, func_5(u_input.b.x, select(var_1, vec4<bool>(func_1(-718f), true, true, any(vec3<bool>(false, true, var_1.x))), select(!vec4<bool>(var_0.x, true, var_1.x, false), var_1, false | var_0.x)), Struct_1(1i), Struct_1(countOneBits(reverseBits(-1i)))).xx, var_1.zy);
    var_0 = func_2(firstTrailingBit(-2092i)).xz;
    var_0 = !(!select(vec2<bool>(!var_1.x, var_2.a.x > var_2.a.x), func_5(23010i, vec4<bool>(false, true, false, false), Struct_1(-30041i), Struct_1(u_input.b.x)).zy, !func_1(457f)));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(11809i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.b, 2147483647i, 2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x), vec3<i32>(-26767i, -47078i, 38763i))), min(1i, var_2.b >> (4294967295u % 32u)), reverseBits(_wgslsmith_add_i32(u_input.b.x, u_input.b.x))), abs(u_input.b.x));
}

