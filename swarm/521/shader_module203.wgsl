struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: u32,
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

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<bool>) -> bool {
    var var_0 = Struct_1(u_input.a.yz, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -498f) + _wgslsmith_f_op_f32(f32(-1f) * -479f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-552f, _wgslsmith_f_op_f32(sign(-361f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -666f) + 1000f)));
    let var_1 = Struct_2(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, ~_wgslsmith_mod_i32(-60760i, u_input.a.x), u_input.a.x & var_0.a.x, ~(var_0.a.x >> (1u % 32u))), ~(-vec4<i32>(u_input.a.x, var_0.a.x, -31545i, -41666i) << (vec4<u32>(32349u, 0u, 4294967295u, 27660u) % vec4<u32>(32u)))), _wgslsmith_add_vec4_i32(~min(vec4<i32>(u_input.a.x, 56546i, 2147483647i, -27072i), vec4<i32>(u_input.a.x, -2147483647i, var_0.a.x, var_0.a.x)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, var_0.a.x, 2147483647i, var_0.a.x), _wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.a.x, u_input.a.x, -1i), vec4<i32>(-31607i, u_input.a.x, 51093i, u_input.a.x)))) >> (~_wgslsmith_div_vec4_u32(max(vec4<u32>(1u, 0u, 4294967295u, 11085u), vec4<u32>(120335u, 75936u, 110232u, 23739u)), max(vec4<u32>(0u, 0u, 2210u, 72371u), vec4<u32>(1u, 1u, 0u, 37174u))) % vec4<u32>(32u)));
    let var_2 = Struct_1(abs(vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, var_1.b.x)) | var_0.a, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1485f, 793f, var_0.b.x)), var_0.b, true)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -137f), _wgslsmith_div_f32(-977f, -1925f), -302f)))));
    var_0 = var_2;
    var_0 = var_2;
    return false && (any(arg_0.wwy) & true);
}

fn func_2() -> vec4<i32> {
    var var_0 = 56514u;
    let var_1 = select(select(vec3<bool>(false, any(vec2<bool>(false, true)), !all(vec3<bool>(true, false, true))), !select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), !select(vec3<bool>(true, select(false, true, false), true), vec3<bool>(true, any(vec3<bool>(true, false, true)), func_3(vec4<bool>(true, false, false, false))), _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x) > u_input.a.x), true);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1617f, -1239f)))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-var_2.x)))));
    var_0 = ~0u;
    return _wgslsmith_add_vec4_i32(-min(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x) ^ vec4<i32>(-2147483647i, -2147483647i, u_input.a.x, u_input.a.x), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, -4254i, 2704i, u_input.a.x), vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.a.x))), firstTrailingBit(max(vec4<i32>(-14998i, 1i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -64881i, -1i, u_input.a.x)))), max(vec4<i32>(-1i, 1i, u_input.a.x, u_input.a.x) >> (vec4<u32>(64009u, 85555u, 14622u, 3843u) % vec4<u32>(32u)), ~vec4<i32>(2147483647i, 57381i, 26437i, u_input.a.x)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    var var_0 = firstTrailingBit(~_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(22207u, 19663u, 47982u)), vec3<u32>(4294967295u, abs(0u), ~44352u), max(~vec3<u32>(83192u, 91429u, 4294967295u), ~vec3<u32>(4294967295u, 4294967295u, 4294967295u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-110f - -851f), _wgslsmith_f_op_f32(ceil(arg_0.b.x)), arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1041f - 666f), _wgslsmith_f_op_f32(-1125f - 1337f))))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_0.b.x)))), -763f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.b.x)) - _wgslsmith_f_op_f32(step(-1000f, -440f)))), 1000f)));
    let var_2 = Struct_1(~max(u_input.a.xx, arg_1.b.zz), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_1.xzy), vec3<f32>(_wgslsmith_div_f32(arg_0.b.x, -525f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), 1579f), all(vec2<bool>(true, true)) | true)));
    var_0 = vec3<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(var_0.x, 4294967295u), 1u), var_0.x), firstTrailingBit(var_0.x ^ firstLeadingBit(var_0.x))), 48571u, _wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(~var_0.yx, var_0.xy), 1u));
    let var_3 = Struct_1(~arg_1.a.yw, var_1.zyw);
    return 390f;
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: bool, arg_3: f32) -> Struct_2 {
    var var_0 = vec4<bool>(true, true, true, true);
    var var_1 = true;
    let var_2 = Struct_2(~vec4<i32>(-22691i, ~20174i, ~arg_1.b.x, countOneBits(u_input.a.x)) | arg_1.b, arg_1.a);
    let var_3 = -144f;
    var_0 = select(!select(vec4<bool>(arg_2, false, !var_0.x, false), vec4<bool>(any(vec4<bool>(var_0.x, var_0.x, arg_2, var_0.x)), !arg_2, arg_2, true), var_0.x), select(select(!select(vec4<bool>(arg_2, true, var_0.x, arg_2), vec4<bool>(var_0.x, false, true, false), arg_2), vec4<bool>(arg_2, any(vec4<bool>(true, false, true, true)), arg_2, arg_0 != var_3), arg_2), !select(!vec4<bool>(true, true, var_0.x, false), vec4<bool>(var_0.x, var_0.x, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(var_0.x, true, var_0.x, arg_2), vec4<bool>(false, var_0.x, arg_2, false))), select(vec4<bool>(!var_0.x, true, var_0.x, all(vec4<bool>(arg_2, true, false, var_0.x))), select(select(vec4<bool>(arg_2, false, false, true), vec4<bool>(false, var_0.x, arg_2, false), vec4<bool>(true, true, arg_2, false)), select(vec4<bool>(false, false, arg_2, arg_2), vec4<bool>(arg_2, var_0.x, true, arg_2), vec4<bool>(false, true, false, false)), any(vec3<bool>(arg_2, var_0.x, false))), all(select(var_0.zyw, vec3<bool>(true, true, true), true)))), true);
    return var_2;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2) -> u32 {
    let var_0 = func_5(804f, arg_2, false, _wgslsmith_f_op_f32(func_4(arg_0, Struct_2(vec4<i32>(max(2147483647i, 37781i), arg_2.a.x, _wgslsmith_div_i32(arg_0.a.x, 1i), ~0i), func_2()))));
    var var_1 = vec3<u32>(1u, 1u, 1u);
    let var_2 = _wgslsmith_f_op_f32(select(1314f, _wgslsmith_f_op_f32(f32(-1f) * -632f), true));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(abs(726f))))));
    var_1 = vec3<u32>(_wgslsmith_add_u32(countOneBits(firstTrailingBit(_wgslsmith_div_u32(var_1.x, var_1.x))), firstLeadingBit(~var_1.x)), var_1.x, 13332u);
    return _wgslsmith_clamp_u32(max(_wgslsmith_sub_u32(0u, var_1.x), 0u), var_1.x << (4294967295u % 32u), reverseBits(min(var_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 75502u), var_1.xy >> (var_1.yy % vec2<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = func_1(Struct_1(~(-u_input.a.xx), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), 0i, Struct_2(~(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 0i, -1i, u_input.a.x), vec4<i32>(0i, -1i, u_input.a.x, 5628i)), abs(vec4<i32>(2147483647i, u_input.a.x, -5266i, -14173i))))) <= 1u;
    var var_1 = func_5(1000f, func_5(-1347f, Struct_2(firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(14124i, -26207i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -54317i, -21669i, 2147483647i))), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, 1i, -1i), vec4<i32>(1i, 13681i, 49854i, 1i)) << (abs(vec4<u32>(1u, 0u, 7977u, 72560u)) % vec4<u32>(32u))), !any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(func_4(Struct_1(u_input.a.xx, vec3<f32>(564f, 479f, -1718f)), Struct_2(vec4<i32>(u_input.a.x, -7215i, u_input.a.x, u_input.a.x), vec4<i32>(-13528i, u_input.a.x, -1i, -55185i)))))), all(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-668f, _wgslsmith_f_op_f32(floor(-2012f)), true))))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -666f), _wgslsmith_f_op_f32(977f + 1000f)))) * -346f);
    let var_3 = -u_input.a.x;
    var_1 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(344f, var_2), -958f)) - var_2)), Struct_2(vec4<i32>(abs(u_input.a.x), ~(~var_1.b.x), var_1.a.x, _wgslsmith_div_i32(i32(-1i) * -21781i, var_3)), vec4<i32>(-(2147483647i ^ var_1.b.x), _wgslsmith_add_i32(u_input.a.x, abs(2147483647i)), _wgslsmith_mult_i32(min(49615i, 1i), min(1i, var_1.a.x)), firstLeadingBit(-3809i))), any(select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false), any(vec3<bool>(true, true, false))), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(func_4(Struct_1(u_input.a.zz, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(118f, var_2, var_2) * vec3<f32>(var_2, var_2, -884f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_2, var_2) * vec3<f32>(var_2, var_2, -1692f)))), func_5(var_2, Struct_2(firstLeadingBit(var_1.a), var_1.b), !all(vec3<bool>(false, true, false)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2 - -1571f), _wgslsmith_f_op_f32(-var_2)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-101f - -670f), _wgslsmith_f_op_f32(max(-744f, var_2)), 1u, _wgslsmith_div_u32(~(4294967295u >> (1u % 32u)), 1u));
}

