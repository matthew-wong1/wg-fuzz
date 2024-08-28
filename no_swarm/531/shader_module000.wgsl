struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14> = array<i32, 14>(31865i, -44594i, -14527i, 0i, -35257i, 2147483647i, 26844i, 36977i, 3496i, -2798i, 54671i, i32(-2147483648), 2147483647i, -10778i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: i32) -> vec4<i32> {
    var var_0 = Struct_1(-arg_0.a);
    global0 = array<i32, 14>();
    global0 = array<i32, 14>();
    var var_1 = u_input.d.xz << (~vec2<u32>(1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(12031u, 0u), u_input.a.xz)) % vec2<u32>(32u));
    let var_2 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(select(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(24328u, u_input.a.x, u_input.a.x, 1u), vec4<u32>(4294967295u, 0u, 1u, 59182u)), select(true, false, false)), 1u, ~_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(4294967295u, 1u, 4294967295u)), min(u_input.a.x, u_input.a.x)), ~firstTrailingBit(abs(vec4<u32>(1u, 0u, u_input.a.x, 78776u))));
    return vec4<i32>(~_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.c | -2147483647i, arg_1.a.x), var_1.x), 42198i, _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(~(~abs(0u)), 14u)], abs(-1i), arg_1.a.x), arg_0.a.x);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: i32) -> vec4<i32> {
    let var_0 = Struct_1(arg_1.a);
    let var_1 = u_input.a.x;
    global0 = array<i32, 14>();
    global0 = array<i32, 14>();
    var var_2 = arg_1;
    return _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(1730i, var_0.a.x), 0i), _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(0u, 14u)] | var_2.a.x, 40040i | arg_1.a.x), var_0.a.x, 958i) << ((~(vec4<u32>(853u, 4294967295u, arg_0.x, var_1) >> (arg_0 % vec4<u32>(32u))) ^ firstLeadingBit(_wgslsmith_sub_vec4_u32(arg_0, arg_0))) % vec4<u32>(32u)), abs(_wgslsmith_div_vec4_i32(-func_3(var_0, Struct_1(u_input.d), vec4<f32>(970f, 199f, -677f, -1000f), 0i), firstTrailingBit(max(vec4<i32>(-57433i, -65385i, global0[_wgslsmith_index_u32(var_1, 14u)], -1408i), vec4<i32>(u_input.c, arg_1.a.x, -9018i, var_2.a.x))))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = 1000f;
    let var_1 = 111254u;
    var var_2 = vec2<bool>(all(!vec3<bool>(false, u_input.d.x < -33464i, any(vec3<bool>(false, false, false)))), true);
    return select(vec4<bool>(!(!all(vec2<bool>(var_2.x, false))), var_2.x, !var_2.x | var_2.x, all(vec2<bool>(any(vec2<bool>(var_2.x, var_2.x)), true))), vec4<bool>(false, u_input.a.x >= ~_wgslsmith_dot_vec3_u32(vec3<u32>(18602u, 44591u, u_input.a.x), vec3<u32>(52482u, u_input.a.x, 4294967295u)), all(select(select(vec2<bool>(false, false), vec2<bool>(var_2.x, var_2.x), var_2.x), select(vec2<bool>(var_2.x, false), vec2<bool>(true, var_2.x), vec2<bool>(true, var_2.x)), true)), var_2.x), !vec4<bool>(any(vec4<bool>(true, var_2.x, var_2.x, false)), true, true, var_2.x));
}

fn func_5(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = abs(vec3<u32>(min(0u, ~u_input.a.x), (0u >> (u_input.a.x % 32u)) << (_wgslsmith_clamp_u32(103078u, u_input.a.x, u_input.a.x) % 32u), ~firstTrailingBit(0u))) & vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x);
    global0 = array<i32, 14>();
    let var_1 = 4294967295u;
    let var_2 = arg_3.x;
    let var_3 = arg_2;
    return var_3;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = func_5(_wgslsmith_f_op_f32(-1115f - -1923f), select(vec4<bool>(true, true, !select(true, true, true), false), vec4<bool>(true, true, (2147483647i <= arg_0.a.x) || true, !any(vec4<bool>(true, true, false, false))), func_4(~func_2(vec4<u32>(78707u, u_input.a.x, u_input.a.x, 1u), Struct_1(vec3<i32>(arg_0.a.x, arg_0.a.x, 14173i)), vec3<f32>(-2311f, 1777f, -597f), -48403i), Struct_1(select(vec3<i32>(-1i, global0[_wgslsmith_index_u32(709u, 14u)], arg_0.a.x), u_input.d, vec3<bool>(false, true, true))), arg_0)), arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-259f, 171f, 373f))))))));
    var var_1 = var_0;
    global0 = array<i32, 14>();
    let var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(18082u, 105886u, 80501u, _wgslsmith_mult_u32(~u_input.a.x, 1u)), vec4<u32>(select(firstLeadingBit(1u), u_input.a.x, false), 1u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), u_input.a.x & 0u), 0u)) << (~(select(vec4<u32>(31728u, 0u, u_input.a.x, 4964u) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), max(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 39167u, 47920u, 26256u)), true) << (vec4<u32>(u_input.a.x, u_input.a.x, select(u_input.a.x, u_input.a.x, true), 1u) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_3 = vec2<f32>(406f, -1200f);
    return var_0;
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = !(!(_wgslsmith_sub_i32(abs(global0[_wgslsmith_index_u32(58983u, 14u)]), 2147483647i >> (arg_0.x % 32u)) < arg_2.a.x));
    var var_1 = func_5(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-467f * -1784f)))), vec4<bool>(any(!select(vec2<bool>(true, false), vec2<bool>(false, true), false)), true, false, all(vec2<bool>(true, false)) & func_4(select(vec4<i32>(0i, u_input.b, 37648i, arg_1.a.x), vec4<i32>(u_input.b, arg_3.a.x, -2147483647i, 12529i), vec4<bool>(false, true, false, false)), arg_2, Struct_1(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 14u)], 0i, arg_3.a.x))).x), Struct_1(-(~(~vec3<i32>(2147483647i, 0i, 17567i)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-752f, -419f, 341f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(578f, 1199f, 1000f), vec3<f32>(522f, 301f, 1540f))), vec3<bool>(true, true, true))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-651f, -372f, 644f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(407f, -1000f, 305f) - vec3<f32>(173f, -1087f, -1437f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-320f, 1000f, -1573f))))));
    var var_2 = Struct_1(var_1.a);
    var_0 = (~1u ^ u_input.a.x) < arg_0.x;
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(247f, -2337f, 621f, -1639f))))), vec4<f32>(-111f, -947f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-478f - -1999f), 251f)), 2053f), 1u <= arg_0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-579f, 778f), _wgslsmith_f_op_f32(-835f * -319f), -931f, 1221f) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(191f, -223f, -265f, -1000f)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -425f, 866f, -1762f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-812f, -362f, 603f, 309f), vec4<f32>(-991f, 227f, 1441f, -734f)))))))));
    return all(func_4(firstTrailingBit(func_2(_wgslsmith_mod_vec4_u32(arg_0, arg_0), arg_1, _wgslsmith_f_op_vec3_f32(vec3<f32>(748f, 419f, var_3.x) - vec3<f32>(var_3.x, var_3.x, -2058f)), _wgslsmith_clamp_i32(arg_2.a.x, 11616i, u_input.d.x))), Struct_1(firstTrailingBit(u_input.d >> (arg_0.zwz % vec3<u32>(32u)))), arg_1).xww);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(countOneBits(-u_input.d), vec3<i32>(select(0i, -2147483647i, true), _wgslsmith_add_i32(global0[_wgslsmith_index_u32(0u, 14u)], -14250i), u_input.c), func_6(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 4294967295u, 0u, 0u)), func_1(Struct_1(u_input.d)), Struct_1(u_input.d), func_5(-1387f, vec4<bool>(false, false, true, true), Struct_1(vec3<i32>(1i, u_input.b, global0[_wgslsmith_index_u32(0u, 14u)])), vec3<f32>(-3275f, -1000f, 1227f)))) | func_3(func_1(Struct_1(vec3<i32>(-1i, global0[_wgslsmith_index_u32(14254u, 14u)], u_input.c))), func_1(func_1(Struct_1(vec3<i32>(-9888i, u_input.b, global0[_wgslsmith_index_u32(u_input.a.x, 14u)])))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(405f, 351f, -154f, -240f), vec4<f32>(380f, -413f, 304f, 495f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 472f, 1801f, -1000f))), ~(-15344i)).yzw);
    var var_1 = !select(false, true, all(vec4<bool>(true, true, true, true)));
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(439f, _wgslsmith_f_op_f32(select(-1442f, _wgslsmith_f_op_f32(f32(-1f) * -662f), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(270f + 713f) + _wgslsmith_f_op_f32(f32(-1f) * -2497f)), _wgslsmith_f_op_f32(839f + _wgslsmith_f_op_f32(ceil(2201f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-466f, 364f, 530f, -681f), vec4<f32>(843f, 1373f, 391f, -1329f), true))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(998f, 719f, -2357f, -102f) + vec4<f32>(1000f, -783f, -120f, 2447f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(182f, 338f, 1000f, -414f))))))));
    let var_3 = !func_4(vec4<i32>(~(-global0[_wgslsmith_index_u32(u_input.a.x, 14u)]), global0[_wgslsmith_index_u32(u_input.a.x, 14u)], var_0.a.x, _wgslsmith_div_i32(abs(-2147483647i), -u_input.b)), Struct_1(_wgslsmith_div_vec3_i32(var_0.a | vec3<i32>(u_input.c, -2147483647i, global0[_wgslsmith_index_u32(21676u, 14u)]), u_input.d)), var_0).wz;
    var var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x * 1000f), 1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, -1529f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-217f * 1308f), _wgslsmith_div_f32(var_2.x, var_2.x)), _wgslsmith_f_op_f32(var_2.x + var_2.x), -1037f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_2.xyw)) - _wgslsmith_div_vec3_f32(var_2.ywz, vec3<f32>(var_2.x, 596f, var_2.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.wxz) * _wgslsmith_f_op_vec3_f32(var_2.zzz * vec3<f32>(-1266f, 110f, 1762f))))), ~select(firstLeadingBit(vec3<u32>(4294967295u, 0u, u_input.a.x)), ~(~vec3<u32>(11198u, u_input.a.x, u_input.a.x)), false), u_input.d.x);
}

