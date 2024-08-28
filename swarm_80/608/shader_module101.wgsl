struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: vec4<f32>, arg_3: vec3<bool>) -> vec4<f32> {
    let var_0 = Struct_2(Struct_1(~abs(vec3<i32>(31166i, arg_1.x, 0i) << (vec3<u32>(u_input.a.x, 32209u, 9044u) % vec3<u32>(32u)))), Struct_1(_wgslsmith_mult_vec3_i32(min(arg_1.yzw >> (u_input.a.xwz % vec3<u32>(32u)), arg_1.zxw >> (u_input.a.zzz % vec3<u32>(32u))), ~vec3<i32>(arg_1.x, arg_1.x, arg_1.x) << (vec3<u32>(1u, u_input.a.x, 36222u) % vec3<u32>(32u)))), -_wgslsmith_mult_i32(firstLeadingBit(-arg_1.x), arg_1.x), ~(~vec2<u32>(u_input.a.x, _wgslsmith_sub_u32(7184u, u_input.a.x))), Struct_1(vec3<i32>(-(i32(-1i) * -1i), ~_wgslsmith_sub_i32(arg_1.x, 15670i), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, 0i, 22436i), arg_1.wzz)))));
    return vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -681f) * arg_2.x))) + -1695f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + arg_2.x)) + _wgslsmith_f_op_f32(round(2576f))), _wgslsmith_div_f32(1266f, _wgslsmith_f_op_f32(-133f - -468f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-121f + -123f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

fn func_3(arg_0: Struct_3) -> bool {
    let var_0 = arg_0;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(select(1395f, _wgslsmith_f_op_f32(abs(367f)), false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1817f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-906f, -159f, true))))))));
    var var_2 = Struct_1(arg_0.a);
    let var_3 = _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(0u, arg_0.b, 41608u), 1u, _wgslsmith_sub_u32(arg_0.b, 1u));
    let var_4 = ~(~max(vec2<u32>(firstLeadingBit(3275u), reverseBits(0u)), vec2<u32>(4294967295u, _wgslsmith_clamp_u32(u_input.a.x, 0u, u_input.a.x))));
    return all(!vec4<bool>(true, var_0.b > _wgslsmith_div_u32(var_4.x, 0u), true, all(vec2<bool>(true, true))));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: i32) -> Struct_4 {
    let var_0 = arg_1.a;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_2(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec4<i32>(-22009i, ~arg_1.a.a.x, ~2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-23722i, arg_1.b.a.x, var_0.a.x, -11200i), vec4<i32>(arg_1.c, 15031i, arg_3, 1i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(758f, -1446f, -1173f, 222f) * vec4<f32>(-231f, -233f, arg_0.x, -734f)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-445f, arg_2.x, 549f, arg_2.x)))), vec3<bool>(true, true, true))))));
    var var_2 = select(1i > var_0.a.x, any(vec2<bool>(func_3(Struct_3(vec3<i32>(2147483647i, var_0.a.x, arg_3), u_input.a.x)), any(vec2<bool>(true, true)) | true)), all(select(vec4<bool>(true, true, true, all(vec3<bool>(false, true, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), false), func_3(Struct_3(vec3<i32>(17513i, arg_3, var_0.a.x), arg_1.d.x))), !(-24404i != var_0.a.x))));
    var_2 = true;
    var_2 = !(any(vec4<bool>(true, true, true, true)) && func_3(Struct_3(max(arg_1.e.a, var_0.a), ~arg_1.d.x)));
    return Struct_4(min(57988u, 0u));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2) -> Struct_4 {
    var var_0 = 15680u;
    var_0 = arg_1.d.x;
    var_0 = arg_1.d.x;
    let var_1 = _wgslsmith_mult_vec2_u32(arg_1.d, _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, ~arg_1.d.x) ^ arg_1.d, vec2<u32>(1u, ~abs(u_input.a.x))));
    var_0 = countOneBits(u_input.a.x);
    return arg_0;
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: Struct_4, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = max(~(~0u), arg_0.a);
    var var_1 = Struct_1(firstLeadingBit(_wgslsmith_clamp_vec3_i32(-vec3<i32>(50692i, 33166i, -2147483647i), vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i))) ^ vec3<i32>(countOneBits(2147483647i), 2147483647i, -2147483647i));
    var var_2 = arg_2;
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-arg_3.x), 520f, _wgslsmith_f_op_f32(arg_3.x * -652f), -1621f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.x, arg_3.x, arg_3.x, -444f), vec4<f32>(1651f, -1182f, arg_3.x, -1048f))), !vec4<bool>(false, true, arg_1, false))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-arg_3.x), arg_3.x, _wgslsmith_f_op_f32(select(arg_3.x, -646f, false)), _wgslsmith_f_op_f32(round(-658f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.x, -1000f, arg_3.x, -1295f), vec4<f32>(arg_3.x, -129f, arg_3.x, 276f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, 1000f, arg_3.x, -744f) + vec4<f32>(-825f, arg_3.x, arg_3.x, arg_3.x)), select(arg_1, true, true)))))));
    let var_4 = select(select(vec2<bool>(!arg_1, any(!vec3<bool>(arg_1, false, false))), !(!(!vec2<bool>(arg_1, true))), select(vec2<bool>(!arg_1, func_3(Struct_3(vec3<i32>(var_1.a.x, var_1.a.x, var_1.a.x), 1u))), !select(vec2<bool>(false, true), vec2<bool>(false, arg_1), vec2<bool>(arg_1, false)), any(select(vec2<bool>(true, true), vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true))))), vec2<bool>(true, true), false);
    return Struct_1(countOneBits(vec3<i32>(-2867i, -(var_1.a.x << (4294967295u % 32u)), reverseBits(var_1.a.x))));
}

fn func_6(arg_0: Struct_2, arg_1: vec3<bool>) -> bool {
    let var_0 = Struct_1(min(arg_0.a.a, _wgslsmith_clamp_vec3_i32(vec3<i32>(-arg_0.b.a.x, -1i, _wgslsmith_clamp_i32(2147483647i, arg_0.b.a.x, arg_0.b.a.x)), arg_0.b.a, abs(vec3<i32>(-1i, arg_0.a.a.x, 24490i)))));
    var var_1 = _wgslsmith_div_u32(abs(~(~1u)), ~36460u);
    var_1 = arg_0.d.x;
    var var_2 = Struct_3(vec3<i32>(_wgslsmith_add_i32(~(~1i), abs(-var_0.a.x)), _wgslsmith_div_i32(arg_0.a.a.x, var_0.a.x), arg_0.c), _wgslsmith_mod_u32(~u_input.a.x, _wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, arg_0.d.x), arg_0.d.x)) >> ((1u ^ u_input.a.x) % 32u));
    var var_3 = !select(arg_1.x, !(!arg_1.x), arg_1.x);
    return any(!select(vec2<bool>(true, true), select(vec2<bool>(true, arg_1.x), arg_1.xx, vec2<bool>(false, arg_1.x)), select(select(vec2<bool>(false, true), vec2<bool>(arg_1.x, true), arg_1.x), arg_1.zx, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = -1731f;
    let var_2 = ~(~1u);
    var var_3 = u_input.a.x;
    var_0 = true;
    var_3 = ~(~u_input.a.x);
    var_0 = func_6(Struct_2(func_5(func_4(func_1(vec3<f32>(-1522f, var_1, 685f), Struct_2(Struct_1(vec3<i32>(0i, 2147483647i, 14833i)), Struct_1(vec3<i32>(-558i, 2147483647i, -51796i)), -2147483647i, u_input.a.yy, Struct_1(vec3<i32>(2147483647i, 1i, 10305i))), vec3<f32>(614f, 438f, var_1), -2975i), Struct_2(Struct_1(vec3<i32>(-250i, 35416i, -12829i)), Struct_1(vec3<i32>(-25969i, -9742i, 2147483647i)), -1i, vec2<u32>(var_2, 0u), Struct_1(vec3<i32>(-47741i, 2147483647i, -5043i)))), false, Struct_4(31684u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -1484f, var_1) - vec3<f32>(var_1, var_1, 622f)))), Struct_1(max(reverseBits(vec3<i32>(0i, 0i, 0i)), vec3<i32>(1i, 1i, 1i))), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, 1413i, 2147483647i), vec4<i32>(-23391i, -1i, 0i, 12736i)), min(66192i, -11741i)) >> (~func_4(Struct_4(var_2), Struct_2(Struct_1(vec3<i32>(3967i, 1i, 31907i)), Struct_1(vec3<i32>(14538i, 18061i, 7087i)), -2147483647i, vec2<u32>(var_2, var_2), Struct_1(vec3<i32>(-2147483647i, 2359i, -7465i)))).a % 32u), u_input.a.xy, func_5(Struct_4(79295u >> (1u % 32u)), true, Struct_4(abs(var_2)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, -498f) - vec3<f32>(-1000f, -1536f, var_1)), vec3<f32>(134f, var_1, var_1))))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true));
    let var_4 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -939f), _wgslsmith_f_op_f32(-1052f - _wgslsmith_div_f32(990f, _wgslsmith_f_op_f32(f32(-1f) * -1184f))), _wgslsmith_f_op_f32(103f + -842f)), vec2<f32>(-445f, _wgslsmith_div_f32(var_1, var_1)));
}

