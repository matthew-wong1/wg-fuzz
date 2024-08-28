struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    var var_0 = vec2<bool>(true, true);
    var_0 = select(select(vec2<bool>(arg_0.x == arg_0.x, false), !(!vec2<bool>(var_0.x, true)), vec2<bool>(!var_0.x, true)), !(!vec2<bool>(true, -1687f < arg_0.x)), !select(select(!vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x)), vec2<bool>(true, var_0.x), false));
    var var_1 = ~u_input.c.x;
    let var_2 = Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(abs(-2147483647i), ~(-u_input.b), ~reverseBits(0i), i32(-1i) * -17824i), select(vec4<i32>(~1i, select(0i, -1i, var_0.x), 1i, ~u_input.b), vec4<i32>(-u_input.c.x, 24719i, _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(-2147483647i, 2147483647i)), ~0i), var_0.x)), u_input.b);
    var var_3 = var_2;
    return -2147483647i;
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_add_i32(-(~func_3(_wgslsmith_div_vec4_f32(vec4<f32>(-779f, -1073f, 425f, -379f), vec4<f32>(-110f, 632f, 1511f, 2536f)))), ~(-17733i));
    var var_1 = Struct_3(Struct_1(reverseBits(vec4<i32>(2147483647i, 37094i, u_input.a.x, arg_0)) >> (_wgslsmith_sub_vec4_u32(min(vec4<u32>(u_input.d.x, u_input.d.x, 2909u, 47530u), vec4<u32>(u_input.d.x, 1u, 0u, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, 54997u, u_input.d.x, 82888u), vec4<u32>(37623u, u_input.d.x, u_input.d.x, 0u))) % vec4<u32>(32u)), -6829i), ~countOneBits(_wgslsmith_div_i32(2147483647i & u_input.c.x, arg_0)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec3<bool>(false, true, false)), false), (u_input.d.x & u_input.d.x) == ~36229u), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), 128u >= u_input.d.x), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)));
    var_1 = Struct_3(var_1.a, 15966i, vec3<bool>(true, var_1.c.x, true));
    var_1 = Struct_3(Struct_1(abs(vec4<i32>(var_1.a.a.x, reverseBits(-13886i), ~u_input.c.x, -19716i)), _wgslsmith_add_i32(-78956i, var_0)), -20261i, !select(vec3<bool>(var_1.c.x | true, false, true), !var_1.c, select(var_1.c, var_1.c, true)));
    let var_2 = u_input.d;
    return var_1.a;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> i32 {
    return arg_2.a.x;
}

fn func_5(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x)));
    let var_1 = arg_3.x;
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_0.yzz))), arg_0.xxx);
    let var_3 = firstLeadingBit(vec3<u32>(~u_input.d.x, 4294967295u, 20767u));
    let var_4 = Struct_1(~vec4<i32>(_wgslsmith_mod_i32(-1i, 22880i), countOneBits(func_2(0i).b), arg_2.x, 44532i ^ (arg_2.x & arg_2.x)), -19169i);
    return var_4;
}

fn func_1(arg_0: bool) -> Struct_3 {
    var var_0 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(137f, 377f, -1000f, 524f), vec4<f32>(-1104f, -688f, 800f, 596f))))))), vec2<i32>(func_4(380f, false, func_2(1i), all(select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, false), vec2<bool>(false, true)))), _wgslsmith_mod_i32(i32(-1i) * -1i, u_input.a.x)), -firstLeadingBit(~(vec4<i32>(-1i, 21263i, u_input.c.x, 1i) | vec4<i32>(40987i, 0i, -24399i, 2147483647i))), !vec2<bool>(any(!vec2<bool>(arg_0, false)), true));
    let var_1 = Struct_3(func_5(vec4<f32>(-1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1467f, 452f))), _wgslsmith_f_op_f32(-444f + _wgslsmith_f_op_f32(235f - -386f)), -1031f), ~vec2<i32>(_wgslsmith_clamp_i32(51162i, 0i, 25812i), var_0.b), firstTrailingBit(var_0.a & vec4<i32>(11173i, 35403i, 2147483647i, var_0.b)) >> (~abs(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 5429u)) % vec4<u32>(32u)), !select(select(vec2<bool>(false, false), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0)), !vec2<bool>(arg_0, arg_0), select(vec2<bool>(arg_0, false), vec2<bool>(true, arg_0), vec2<bool>(false, arg_0)))), 2147483647i | var_0.b, vec3<bool>(all(!(!vec4<bool>(arg_0, arg_0, true, arg_0))), false && arg_0, true || (var_0.a.x > var_0.b)));
    var_0 = var_1.a;
    var_0 = func_2(abs(u_input.c.x));
    var var_2 = var_1;
    return Struct_3(Struct_1(vec4<i32>(~_wgslsmith_div_i32(var_0.b, u_input.b), _wgslsmith_dot_vec4_i32(var_1.a.a ^ var_0.a, var_1.a.a), _wgslsmith_sub_i32(-20132i, firstLeadingBit(var_0.a.x)), _wgslsmith_mod_i32(17469i ^ var_1.a.b, -var_1.a.b)), var_2.a.b), var_2.a.a.x, !vec3<bool>(false, any(var_2.c.zy), func_3(vec4<f32>(-1106f, 550f, -741f, -850f)) > -1i));
}

fn func_6(arg_0: f32, arg_1: Struct_3) -> Struct_1 {
    let var_0 = arg_1.c.x;
    let var_1 = Struct_3(func_2(_wgslsmith_dot_vec2_i32(arg_1.a.a.zz, ~u_input.c)), func_4(_wgslsmith_f_op_f32(-arg_0), any(!func_1(arg_1.c.x).c), arg_1.a, false), arg_1.c);
    var var_2 = vec2<bool>(!var_0 || false, func_1(all(vec2<bool>(any(arg_1.c.xz), arg_1.c.x))).c.x);
    var var_3 = Struct_2(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.d.x, u_input.d.x, 0u) ^ ~vec4<u32>(u_input.d.x, 7691u, u_input.d.x, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 4294967295u), abs(vec4<u32>(68854u, 44784u, 55019u, 10187u)))), select(_wgslsmith_add_vec4_u32(~vec4<u32>(51871u, u_input.d.x, 0u, 16841u), select(vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, u_input.d.x), vec4<u32>(u_input.d.x, u_input.d.x, 19757u, 4294967295u), var_0)), ~(~vec4<u32>(16746u, 1u, 27979u, 4294967295u)), select(vec4<bool>(false, var_1.c.x, true, var_2.x), vec4<bool>(var_1.c.x, var_0, var_0, var_2.x), any(var_1.c.yz)))), func_5(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1280f, arg_0, -435f, 1000f)))))), _wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(u_input.b, u_input.b)), ~min(var_1.a.a.yw, u_input.a.zy)), vec4<i32>(16881i, func_2(13518i).a.x, u_input.a.x << (u_input.d.x % 32u), _wgslsmith_mult_i32(arg_1.a.a.x, arg_1.b)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(4469u, 4294967295u, u_input.d.x, u_input.d.x), min(vec4<u32>(96863u, 23865u, 1u, u_input.d.x), vec4<u32>(4294967295u, 24160u, 51382u, 4294967295u))) % vec4<u32>(32u)), select(select(select(arg_1.c.yz, vec2<bool>(var_0, var_2.x), vec2<bool>(false, arg_1.c.x)), func_1(var_1.c.x).c.xx, arg_1.c.x), arg_1.c.zx, select(!vec2<bool>(var_1.c.x, arg_1.c.x), !vec2<bool>(arg_1.c.x, true), var_1.c.xz))), -201f, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(arg_0, -2201f), _wgslsmith_f_op_f32(arg_0 - arg_0)) - vec2<f32>(_wgslsmith_f_op_f32(arg_0 - 1659f), arg_0)))));
    var var_4 = !all(vec2<bool>(false, true));
    return Struct_1(arg_1.a.a, func_4(481f, var_1.c.x, func_2(-27157i), var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2073f + -989f)), func_1(all(vec3<bool>(true, true, false)) & any(vec4<bool>(true, false, true, true)))), ~(i32(-1i) * -20387i), vec3<bool>(false, true || all(vec4<bool>(true, true, true, true)), true));
    var var_1 = Struct_2(vec4<u32>(_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), vec4<u32>(3740u, u_input.d.x, u_input.d.x, u_input.d.x)), _wgslsmith_mod_u32(~3549u, 49886u ^ u_input.d.x)), u_input.d.x, u_input.d.x, countOneBits(u_input.d.x)), Struct_1(var_0.a.a, u_input.a.x), 1364f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-528f, 711f)))))));
    let var_2 = var_0.c.xy;
    var var_3 = _wgslsmith_f_op_f32(ceil(-1220f));
    var_1 = Struct_2(_wgslsmith_div_vec4_u32(abs(~abs(vec4<u32>(45180u, 15748u, var_1.a.x, 31070u))), max(var_1.a, vec4<u32>(4294967295u, ~1u, _wgslsmith_dot_vec3_u32(var_1.a.zwx, u_input.d), _wgslsmith_add_u32(var_1.a.x, var_1.a.x)))), Struct_1(~var_1.b.a, _wgslsmith_sub_i32(~1i, 39872i)), _wgslsmith_f_op_f32(var_1.d.x * var_1.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1489f, var_1.d.x), _wgslsmith_f_op_vec2_f32(-var_1.d))));
    var var_4 = Struct_1(~vec4<i32>(-1i, _wgslsmith_mod_i32(~var_1.b.b, -var_0.b), -u_input.b, countOneBits(~var_0.a.a.x)), _wgslsmith_div_i32(-(_wgslsmith_div_i32(u_input.b, 32447i) | _wgslsmith_div_i32(36680i, var_0.a.a.x)), max(firstLeadingBit(~(-1i)), ~func_3(vec4<f32>(-1016f, 2617f, var_1.c, 1000f)))));
    var var_5 = select(var_0.c, vec3<bool>(var_0.c.x, false, true), _wgslsmith_mod_i32(-33388i, ~23641i >> (_wgslsmith_div_u32(1u, u_input.d.x) % 32u)) == -1i);
    var var_6 = ~4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_dot_vec4_u32(firstTrailingBit(~var_1.a), ~vec4<u32>(1u, var_1.a.x, var_1.a.x, 4294967295u) >> (var_1.a % vec4<u32>(32u))), 4953u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.c, _wgslsmith_f_op_f32(abs(998f)), -248f, _wgslsmith_f_op_f32(f32(-1f) * -1021f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(894f, -567f, var_1.c, var_1.d.x), vec4<f32>(var_1.d.x, -627f, var_1.c, var_1.c))))), vec4<bool>(!all(vec2<bool>(var_2.x, false)), true, false, var_0.c.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, 1387f)), -max(vec3<i32>(var_0.a.b, 0i, var_1.b.b), var_4.a.zxz) ^ vec3<i32>(var_1.b.a.x, var_0.a.a.x ^ func_6(1000f, var_0).a.x, _wgslsmith_mod_i32(_wgslsmith_mod_i32(31450i, var_1.b.a.x), ~(-2147483647i))), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.d.zx, var_1.a.yy), abs(~38286u)), u_input.d.x, abs(~(~23785u))));
}

