struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: f32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: vec4<u32>,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(55560u, 1u, 1u, 0u);

var<private> global1: array<Struct_3, 16>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> bool {
    let var_0 = !(!select(vec4<bool>(true, false, false, any(vec3<bool>(true, true, false))), vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec3<bool>(true, false, true)), true, true)));
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-358f, -389f, -670f), vec3<f32>(171f, -224f, 322f)), vec3<f32>(196f, 480f, -2479f), select(var_0.wzz, var_0.zzx, var_0.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-896f, 361f, -550f) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(839f, -690f, 748f), vec3<f32>(1000f, -964f, -608f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1073f, 709f, 1555f), vec3<f32>(627f, 487f, 761f), var_0.zzz))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-148f, -141f, -584f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(1249f, -1102f), _wgslsmith_f_op_f32(sign(730f))))), ~(~vec4<u32>(u_input.a, ~5693u, _wgslsmith_sub_u32(4294967295u, 1u), global0.x)), any(select(!var_0.wyy, vec3<bool>(select(true, false, var_0.x), var_0.x, true), select(!vec3<bool>(var_0.x, var_0.x, true), var_0.yzx, vec3<bool>(true, false, var_0.x)))), ~global0.x);
    var var_2 = 64727u ^ u_input.b;
    var var_3 = Struct_3(vec3<f32>(var_1.b, -752f, var_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -585f), ~(vec4<u32>(_wgslsmith_mod_u32(10560u, u_input.b), 4294967295u << (global0.x % 32u), global0.x, global0.x | global0.x) ^ vec4<u32>(~global0.x, ~u_input.a, abs(var_1.c.x), reverseBits(var_1.c.x))), all(vec4<bool>(!select(var_1.d, false, true), false, select(false & var_0.x, false, any(var_0.zz)), any(vec4<bool>(var_0.x, var_1.d, var_0.x, var_1.d)))), ~1u ^ ~global0.x);
    var var_4 = Struct_2(vec4<f32>(var_1.b, -2080f, -843f, var_3.b), Struct_1(var_0, var_3.a.x, _wgslsmith_f_op_f32(-var_3.b), ~(~_wgslsmith_clamp_i32(-1i, 36571i, -2147483647i)), ~_wgslsmith_div_u32(4294967295u, 54166u)), Struct_1(var_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -511f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1278f, 152f, var_1.d)) - var_3.a.x)), 1i, ~global0.x));
    return !(all(vec4<bool>(!var_3.d, var_3.d, var_1.d, var_3.d)) && var_4.b.a.x);
}

fn func_2() -> Struct_1 {
    global1 = array<Struct_3, 16>();
    let var_0 = !(!select(vec4<bool>(any(vec2<bool>(false, true)), true, false, func_3()), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false)), any(vec4<bool>(true, true, false, true))), vec4<bool>(true, true, true, true)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), Struct_1(vec4<bool>(true, true, !all(vec2<bool>(false, var_0.x)), !var_0.x), -377f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1231f + _wgslsmith_f_op_f32(-1000f + 463f)))), _wgslsmith_clamp_i32(1i << (u_input.b % 32u), firstLeadingBit(~(-26673i)), _wgslsmith_mult_i32(~(-61662i), ~1i)), ~_wgslsmith_div_u32(u_input.a, 23384u)), Struct_1(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-654f)) * _wgslsmith_f_op_f32(floor(637f)))), _wgslsmith_f_op_f32(-2429f - -1656f), -1i, ~global0.x));
    let var_2 = any(!var_1.c.a);
    var var_3 = !(_wgslsmith_div_u32(~_wgslsmith_mod_u32(global0.x, global0.x), ~(u_input.a | 87085u)) < global0.x);
    return Struct_1(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-843f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(166f - 1468f) * var_1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.b) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.b.c, 825f)) - _wgslsmith_f_op_f32(floor(var_1.b.c))) + var_1.b.c)), _wgslsmith_dot_vec2_i32(countOneBits(-vec2<i32>(1i, 1i)), vec2<i32>(var_1.b.d, min(var_1.b.d, -43269i))), 41550u);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: f32, arg_3: vec3<bool>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.b, 1536f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), -1346f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.a + vec4<f32>(arg_0.a.x, arg_2, arg_0.a.x, arg_2))))));
    var var_1 = vec3<u32>(_wgslsmith_mult_u32(reverseBits(global0.x), _wgslsmith_div_u32(u_input.a, 4294967295u)), u_input.a, select(2403u ^ ((global0.x << (global0.x % 32u)) ^ ~u_input.b), ((arg_0.b.e >> (24427u % 32u)) >> (u_input.b % 32u)) << (reverseBits(global0.x) % 32u), arg_0.c.a.x));
    var var_2 = ~vec4<u32>(_wgslsmith_mod_u32((1u ^ var_1.x) | (u_input.b >> (arg_0.c.e % 32u)), abs(var_1.x)), arg_0.b.e, ~(~global0.x), _wgslsmith_sub_u32(global0.x, _wgslsmith_clamp_u32(arg_0.c.e, ~var_1.x, _wgslsmith_div_u32(var_1.x, u_input.b))));
    var var_3 = true;
    let var_4 = arg_0;
    return vec4<bool>(true, true, false, !func_3());
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~abs(arg_1.x)), ~abs(1u), arg_1.x), 16u)];
    let var_1 = select(!func_4(Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(908f, 317f, var_0.a.x, var_0.b), vec4<f32>(var_0.a.x, -2246f, var_0.a.x, var_0.a.x)), func_2(), Struct_1(vec4<bool>(var_0.d, false, true, false), -117f, var_0.b, 24999i, var_0.c.x)), select(vec2<bool>(true, true), !vec2<bool>(var_0.d, false), !vec2<bool>(var_0.d, var_0.d)), 622f, !(!vec3<bool>(var_0.d, var_0.d, var_0.d))), vec4<bool>(!var_0.d, !var_0.d, var_0.d, var_0.d), ~u_input.b != 48713u);
    global0 = var_0.c;
    var var_2 = ~(~arg_0);
    var var_3 = _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(~var_0.c.yzw, _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.c.x, global0.x, global0.x), max(vec3<u32>(29483u, var_2.x, global0.x), arg_1))), ~(~func_2().e), _wgslsmith_clamp_u32(1u, select(1u, ~4294967295u, true), ~0u)), vec3<u32>(((var_2.x << (u_input.b % 32u)) | (arg_1.x >> (4294967295u % 32u))) ^ 0u, arg_0.x, select(_wgslsmith_dot_vec2_u32(arg_0.zx, global0.yz) | ~83694u, u_input.b, true)));
    return Struct_1(!var_1, 1396f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + _wgslsmith_f_op_f32(trunc(var_0.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b)) - -1096f))), firstTrailingBit(reverseBits(-58731i)), 1u);
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> Struct_3 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-arg_1.a), arg_1.c, Struct_1(!select(select(arg_1.c.a, vec4<bool>(arg_1.b.a.x, arg_0, true, arg_1.c.a.x), arg_1.b.a), !arg_1.b.a, func_1(global0.yxz, vec3<u32>(global0.x, 4294967295u, 0u)).a.x), 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-117f, arg_1.c.c)), _wgslsmith_f_op_f32(f32(-1f) * -1087f)), -51597i, arg_1.b.e));
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -412f);
    var_2 = _wgslsmith_f_op_f32(min(3266f, _wgslsmith_f_op_f32(trunc(-286f))));
    var var_3 = global1[_wgslsmith_index_u32(min(var_0.b.e, 0u), 16u)];
    return Struct_3(_wgslsmith_f_op_vec3_f32(-var_3.a), arg_1.c.b, ~var_3.c, true, ~u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(false, Struct_2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(520f + -129f), 1719f, 1197f, _wgslsmith_f_op_f32(f32(-1f) * -267f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-257f, 734f, -788f, -1390f))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-271f, 298f, -135f, -869f), vec4<f32>(887f, 2066f, 797f, 1338f)))))), Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(floor(-785f)), 407f, 57101i, global0.x), func_1(vec3<u32>(11688u << (u_input.b % 32u), ~global0.x, ~u_input.b), ~select(vec3<u32>(22464u, 1u, 27485u), global0.yyz, true))));
    var var_1 = select(~min(~vec4<u32>(44918u, 6691u, u_input.a, var_0.e), var_0.c) & var_0.c, abs(~var_0.c) & ((~var_0.c >> (var_0.c % vec4<u32>(32u))) & ~select(var_0.c, var_0.c, vec4<bool>(true, var_0.d, var_0.d, true))), false);
    var var_2 = !vec3<bool>(_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(round(var_0.a.x))) > -1293f, !(!var_0.d), !var_0.d);
    var var_3 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a.x))), 442f, var_0.b, _wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(-var_0.a.x))), Struct_1(vec4<bool>(var_0.d, var_0.d, (false && var_0.d) && false, var_0.d), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(789f - var_0.b))), _wgslsmith_f_op_f32(-var_0.b), !func_3())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2031f)) * 315f), -(-10930i >> (var_0.c.x % 32u)) >> (34703u % 32u), global0.x), Struct_1(vec4<bool>(false, func_1(vec3<u32>(u_input.b, 84354u, 12468u) << (var_1.wxz % vec3<u32>(32u)), vec3<u32>(8630u, global0.x, var_1.x)).a.x, all(vec3<bool>(var_0.d, false, var_2.x)), true), var_0.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.b)) - _wgslsmith_f_op_f32(round(-1167f))))), _wgslsmith_div_i32(~1i, firstLeadingBit(countOneBits(-27303i))), var_1.x));
    global1 = array<Struct_3, 16>();
    var_1 = ~var_0.c;
    var var_4 = 1089f;
    var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(377f - var_0.b))), -782f, _wgslsmith_div_f32(func_1(global0.yww, vec3<u32>(var_1.x, var_0.c.x, global0.x)).c, 1000f), -635f))), Struct_1(!vec4<bool>(var_3.c.a.x, select(false, true, var_2.x), all(var_3.b.a.zzy), var_3.c.a.x), -209f, 1000f, var_3.c.d, var_3.b.e), var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(max(~abs(1u), var_3.c.e), -1870f, abs(min(vec2<i32>(0i, _wgslsmith_clamp_i32(var_3.c.d, 2147483647i, -20291i)), ~(-vec2<i32>(var_3.b.d, -1i)))), _wgslsmith_div_u32(~(~4294967295u), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(var_1.x, 0u, 1u, 1u)), ~var_0.c) >> (22964u % 32u)));
}

