struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: vec4<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -899f)), arg_2.x, !all(vec3<bool>(true, true, true))));
    var var_1 = Struct_1(vec3<i32>(abs(17240i), select(select(1i, 8815i, all(vec2<bool>(true, false))), _wgslsmith_sub_i32(arg_1.a, min(arg_1.a, -1i)), all(vec3<bool>(true, true, true))), 52160i), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec4<bool>(false, false, true, false)), 1165f == arg_2.x, all(vec2<bool>(true, true))), vec4<bool>(true, u_input.b.x != 4346u, all(vec3<bool>(true, false, true)), true)), select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), all(vec3<bool>(false, false, false)))), vec4<bool>(false, true, all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), false)), true)));
    let var_2 = Struct_3(2147483647i);
    var var_3 = Struct_1(var_1.a, !select(select(!vec4<bool>(var_1.b.x, false, var_1.b.x, var_1.b.x), vec4<bool>(false, false, true, var_1.b.x), var_1.b), !var_1.b, _wgslsmith_f_op_f32(-arg_2.x) < _wgslsmith_f_op_f32(-arg_2.x)));
    let var_4 = var_3.a.xz;
    return 17485u;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<bool>) -> vec2<bool> {
    let var_0 = abs(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(max(vec4<i32>(783i, -20835i, u_input.a, u_input.a), vec4<i32>(13629i, u_input.a, u_input.a, u_input.a)), -vec4<i32>(u_input.a, -2147483647i, 2147483647i, 4439i)), reverseBits(vec4<i32>(u_input.a, 1i, u_input.a, -2147483647i))), ~(~vec4<i32>(u_input.a, -31176i, -16317i, 19451i)) << ((abs(arg_0) | ~vec4<u32>(u_input.b.x, 4294967295u, 0u, 10863u)) % vec4<u32>(32u))));
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(387f)), -1172f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-768f, -221f), vec2<f32>(-663f, -1116f)))), true))));
    let var_2 = Struct_1(var_0.xxx, !vec4<bool>(any(arg_1), arg_1.x, true, false));
    let var_3 = firstTrailingBit(~reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, u_input.a, var_2.a.x), vec3<i32>(1i, var_0.x, -11520i))));
    let var_4 = Struct_3((i32(-1i) * -41585i) >> ((firstTrailingBit(6008u) ^ func_3(arg_0.x, Struct_3(var_0.x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, var_1.x, var_1.x, 985f))))) % 32u));
    return !select(!select(select(arg_1.xx, var_2.b.xx, vec2<bool>(true, true)), vec2<bool>(false, true), true), arg_1.xw, select(!(!vec2<bool>(false, arg_1.x)), vec2<bool>(true, true), select(select(arg_1.wy, arg_1.zw, var_2.b.xy), !arg_1.yx, any(vec3<bool>(false, var_2.b.x, false)))));
}

fn func_2() -> Struct_2 {
    let var_0 = !((true != all(vec4<bool>(true, true, true, true))) || false);
    let var_1 = Struct_2(-560f, ~u_input.b.x);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), u_input.b.x);
    var var_3 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -1443f)))), var_2.b);
    let var_4 = func_4(vec4<u32>(1u, var_2.b, abs(var_1.b), _wgslsmith_sub_u32(~func_3(var_1.b, Struct_3(u_input.a), vec4<f32>(-1073f, var_1.a, var_2.a, 532f)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1.b, 1u), vec3<u32>(var_1.b, 56459u, var_1.b) << (vec3<u32>(33837u, 28910u, 1u) % vec3<u32>(32u))))), !select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(true, var_0, false)), !var_0, true, u_input.a == u_input.a), false));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a * 1f)), var_1.b);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_1(vec3<i32>(u_input.a, abs(max(u_input.a, u_input.a)) >> (u_input.b.x % 32u), 5665i), vec4<bool>(arg_1.x, !(_wgslsmith_f_op_f32(f32(-1f) * -2396f) <= _wgslsmith_f_op_f32(-143f * arg_0.a)), any(vec3<bool>(arg_1.x, !arg_1.x, 9161u >= u_input.b.x)), !any(!vec2<bool>(arg_1.x, true))));
    var var_1 = var_0.a.x;
    let var_2 = -33523i;
    let var_3 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, arg_0.b) | max(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(arg_0.b, arg_0.b, arg_0.b)), ~(~vec3<u32>(22129u, 67343u, 20376u))) & firstLeadingBit(((vec3<u32>(u_input.b.x, 40292u, arg_0.b) ^ vec3<u32>(1u, arg_0.b, arg_0.b)) & _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, arg_0.b, 0u), vec3<u32>(0u, 0u, 0u), vec3<u32>(arg_0.b, 29826u, u_input.b.x))) & min(~vec3<u32>(u_input.b.x, arg_0.b, 1u), ~vec3<u32>(4294967295u, 6507u, 4294967295u)));
    var_1 = 0i;
    return Struct_1(firstTrailingBit(vec3<i32>(firstTrailingBit(u_input.a), i32(-1i) * -12144i, u_input.a) >> (firstLeadingBit(var_3) % vec3<u32>(32u))), vec4<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-arg_0.a), true)) >= arg_0.a, all(vec2<bool>(!var_0.b.x, true)), false, !(_wgslsmith_f_op_f32(-710f - arg_0.a) > _wgslsmith_f_op_f32(-315f + arg_0.a))));
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = Struct_3(36970i);
    var var_1 = _wgslsmith_f_op_f32(-arg_0.x);
    var_1 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_0.x, -587f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), !arg_2.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x))), arg_0.x);
    let var_3 = func_5(func_2(), select(vec2<bool>(true, true), select(select(func_5(Struct_2(-1554f, 83911u), vec2<bool>(arg_1.b.x, false)).b.zx, select(vec2<bool>(arg_3.b.x, arg_3.b.x), vec2<bool>(false, false), arg_3.b.yw), !vec2<bool>(arg_1.b.x, arg_1.b.x)), !(!arg_1.b.yz), vec2<bool>(arg_2.x, arg_2.x)), func_5(Struct_2(_wgslsmith_f_op_f32(sign(1707f)), ~u_input.b.x), arg_3.b.wz).b.wz));
    return func_2();
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: Struct_1) -> u32 {
    var var_0 = func_6(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1400f, -1462f, -1859f))))), func_5(func_2(), arg_3.b.zy), select(!select(!arg_3.b.xwy, vec3<bool>(arg_3.b.x, true, arg_3.b.x), arg_3.b.x), select(!(!arg_3.b.yzz), vec3<bool>(!arg_3.b.x, true, arg_3.b.x), any(vec3<bool>(arg_3.b.x, false, false))), !select(arg_3.b.x, arg_3.b.x, 3197i > arg_1.x)), arg_3);
    let var_1 = arg_3;
    var_0 = func_2();
    var var_2 = Struct_3(firstLeadingBit(-2147483647i));
    var_0 = Struct_2(-1709f, _wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, func_3(arg_0 >> (4294967295u % 32u), Struct_3(-1i), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.a))))), var_0.b));
    return func_2().b;
}

fn func_7(arg_0: vec2<u32>, arg_1: bool, arg_2: u32) -> Struct_2 {
    let var_0 = ~(~abs(_wgslsmith_sub_u32(arg_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(51448u, 1u), u_input.b))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-687f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -167f))) - 182f)), u_input.b.x);
    var var_2 = ~(-func_5(func_6(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.a, var_1.a, var_1.a), vec3<f32>(var_1.a, var_1.a, var_1.a))), func_5(Struct_2(var_1.a, 0u), vec2<bool>(false, true)), vec3<bool>(arg_1, false, true), func_5(var_1, vec2<bool>(false, true))), vec2<bool>(true, true)).a.x);
    var_2 = _wgslsmith_add_i32(select(1i, u_input.a ^ u_input.a, arg_1), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.a, -2147483647i, u_input.a), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.a, u_input.a), vec3<i32>(-3990i, -2147483647i, u_input.a))), ~countOneBits(vec3<i32>(27246i, u_input.a, 2147483647i))), ~(-u_input.a) ^ 43709i));
    var var_3 = Struct_3(-7841i);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(u_input.b.x, 113391u);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(825f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -183f)))), 25381u);
    var_1 = func_7(abs(~_wgslsmith_mult_vec2_u32(u_input.b, vec2<u32>(var_1.b, u_input.b.x))) >> (max(reverseBits(u_input.b), vec2<u32>(_wgslsmith_sub_u32(0u, u_input.b.x), func_1(var_0.x, vec4<i32>(u_input.a, 52667i, u_input.a, u_input.a), vec4<u32>(56937u, var_0.x, 11836u, var_0.x), Struct_1(vec3<i32>(-1i, u_input.a, u_input.a), vec4<bool>(false, false, false, true))))) % vec2<u32>(32u)), var_1.a > 634f, ~13270u);
    let var_2 = reverseBits(vec3<u32>(~(~(0u ^ u_input.b.x)), ~func_7(vec2<u32>(var_1.b, 23910u), true, func_2().b).b, reverseBits(72890u)));
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1598f), 1479f));
    var_1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-876f, var_1.a, var_3)))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1635f, var_1.a, 1384f) * vec3<f32>(1565f, 1514f, -1000f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(670f, var_1.a, var_3), vec3<f32>(371f, -253f, var_3))), _wgslsmith_f_op_vec3_f32(vec3<f32>(869f, var_3, 324f) - vec3<f32>(199f, var_1.a, -933f)))), select(func_5(Struct_2(410f, var_0.x), vec2<bool>(false, true)).b.wxx, vec3<bool>(false, false, true), true)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, _wgslsmith_f_op_f32(f32(-1f) * -903f))), -3190f);
}

