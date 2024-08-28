struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec4<bool>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_3) -> vec4<u32> {
    var var_0 = vec3<i32>(i32(-1i) * -26879i, 3649i, arg_0);
    var_0 = min(_wgslsmith_div_vec3_i32(min(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, arg_0, var_0.x), vec3<i32>(arg_0, 0i, 61456i)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, arg_0, arg_0), vec3<i32>(var_0.x, var_0.x, 44539i))), vec3<i32>(var_0.x, 6659i, 43455i) >> (~vec3<u32>(1u, 1u, u_input.a) % vec3<u32>(32u))) & _wgslsmith_clamp_vec3_i32(vec3<i32>(1073i, -2147483647i | var_0.x, 0i), vec3<i32>(arg_0, 2147483647i, 3342i), abs(vec3<i32>(0i, arg_0, var_0.x) << (vec3<u32>(u_input.a, 0u, u_input.a) % vec3<u32>(32u)))), select(_wgslsmith_sub_vec3_i32(~firstTrailingBit(vec3<i32>(var_0.x, var_0.x, 0i)), ~_wgslsmith_div_vec3_i32(vec3<i32>(arg_0, 1i, 14658i), vec3<i32>(var_0.x, arg_0, arg_0))), ~vec3<i32>(1i, var_0.x, countOneBits(arg_0)), !arg_3.c));
    var_0 = vec3<i32>(1i, var_0.x, -abs(-1i));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_1.b.xyy, vec3<f32>(arg_1.b.x, -1289f, arg_1.b.x)))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(arg_1.b.zzy, vec3<f32>(222f, 821f, 947f), vec3<bool>(false, false, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.b.x, -655f, arg_1.b.x) + vec3<f32>(arg_1.b.x, arg_3.b.x, 794f))))))), true, select(select(select(select(vec4<bool>(false, arg_2.a.x, arg_2.a.x, false), vec4<bool>(arg_2.a.x, true, arg_2.a.x, arg_3.a.x), arg_2.a.x), select(vec4<bool>(arg_1.c.x, arg_2.a.x, true, true), vec4<bool>(arg_1.a.x, true, arg_3.c.x, false), false), vec4<bool>(arg_2.a.x, arg_3.c.x, arg_1.a.x, true)), vec4<bool>(false, true, all(vec4<bool>(true, true, arg_3.a.x, arg_2.a.x)), arg_2.a.x), all(!arg_1.c)), vec4<bool>(!(true && arg_1.c.x), arg_2.a.x, true, ~0u != ~u_input.a), !select(select(vec4<bool>(arg_3.c.x, false, arg_1.c.x, arg_3.a.x), vec4<bool>(arg_3.a.x, true, arg_1.a.x, true), false), vec4<bool>(arg_1.a.x, true, true, false), arg_3.a.x)), -min(var_0.x, -abs(var_0.x)), abs(_wgslsmith_div_u32(1u, ~u_input.a)) & u_input.a);
    var_0 = _wgslsmith_mod_vec3_i32(~vec3<i32>(_wgslsmith_add_i32(var_1.d, 35764i), -var_1.d, _wgslsmith_mod_i32(arg_0, 2147483647i)), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(11212i, -7066i), -var_1.d), -24303i, abs(select(var_1.d, var_1.d, arg_1.a.x)))) | -_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(-34047i, 21477i, -1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(79603i, -44641i, 6196i), vec3<i32>(-1i, var_1.d, -8999i), vec3<i32>(6747i, -30065i, var_0.x))), -vec3<i32>(var_1.d, 4677i, -4254i), vec3<i32>(reverseBits(var_0.x), arg_0, 1i));
    return ~(~abs(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(0u, 1u, u_input.a, 1u)), firstTrailingBit(vec4<u32>(70138u, var_1.e, var_1.e, u_input.a)))));
}

fn func_2() -> Struct_1 {
    let var_0 = vec2<u32>(u_input.a, 1u);
    var var_1 = _wgslsmith_div_vec4_u32(~(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, var_0.x, 0u, 1u), abs(vec4<u32>(52283u, 20590u, 4294967295u, var_0.x))) & (func_3(1i, Struct_3(vec2<bool>(true, false), vec4<f32>(-908f, -274f, 503f, -169f), vec3<bool>(true, false, true)), Struct_2(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, false), vec4<f32>(-1342f, -1278f, 880f, 748f), vec3<bool>(true, false, false))) | (vec4<u32>(var_0.x, 4294967295u, 23676u, 1u) ^ vec4<u32>(var_0.x, 0u, 1u, 0u)))), func_3(~(i32(-1i) * -7848i), Struct_3(vec2<bool>(false, any(vec3<bool>(true, false, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-904f, 1025f, 806f, -1393f), vec4<f32>(-634f, -311f, 1285f, 968f)))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), Struct_2(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))), Struct_3(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-435f, -959f, 841f, 1626f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1417f, -1416f, -1111f, 2043f))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))));
    var_1 = ~vec4<u32>(0u, 4294967295u, 126813u, var_0.x);
    let var_2 = Struct_3(vec2<bool>(true, any(vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-262f, -1385f, _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_div_f32(816f, _wgslsmith_f_op_f32(f32(-1f) * -393f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1259f, -616f, -181f, 861f), vec4<f32>(-729f, 2562f, 1537f, -412f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -288f, 765f, 1643f))))), vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), true, all(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)))));
    let var_3 = max(~_wgslsmith_clamp_vec4_i32(vec4<i32>(firstLeadingBit(0i), countOneBits(-6988i), 1i, max(0i, -1i)), max(vec4<i32>(4862i, -23978i, -35657i, -1i), vec4<i32>(-39705i, 31628i, 2147483647i, -43580i)), vec4<i32>(1i, 1i, 1i, 1i)), firstLeadingBit(vec4<i32>(~(-66416i), -2147483647i, 1i, ~reverseBits(8251i))));
    return Struct_1(var_2.b.yxx, var_2.a.x, vec4<bool>(false, any(select(select(vec4<bool>(var_2.a.x, true, false, false), vec4<bool>(var_2.c.x, true, true, var_2.a.x), vec4<bool>(false, true, false, false)), select(vec4<bool>(var_2.a.x, var_2.c.x, false, var_2.a.x), vec4<bool>(false, var_2.c.x, true, false), vec4<bool>(var_2.c.x, true, var_2.a.x, var_2.c.x)), vec4<bool>(var_2.a.x, false, false, true))), true, true), -_wgslsmith_mult_i32(5289i, 2147483647i | var_3.x), 67769u);
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> Struct_3 {
    var var_0 = 99681u;
    var var_1 = arg_1;
    var var_2 = func_2();
    var_2 = func_2();
    var var_3 = (vec2<i32>(-1i, _wgslsmith_add_i32(-2147483647i, var_2.d)) ^ vec2<i32>(abs(var_2.d), _wgslsmith_clamp_i32(-var_2.d, 0i, var_2.d))) << (vec2<u32>(u_input.a, var_2.e) % vec2<u32>(32u));
    return Struct_3(!var_2.c.xy, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, -153f, _wgslsmith_f_op_f32(1000f * var_2.a.x), -2416f)), select(!(!select(var_2.c.xww, vec3<bool>(false, true, false), var_2.c.zzx)), func_2().c.zyz, true));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_3) -> Struct_3 {
    let var_0 = Struct_2(arg_1.c.yz);
    var var_1 = Struct_3(vec2<bool>(var_0.a.x, select(!arg_1.c.x, func_1(-194f, Struct_2(var_0.a)).a.x, arg_1.c.x) && func_1(_wgslsmith_f_op_f32(abs(arg_2.b.x)), Struct_2(vec2<bool>(arg_2.c.x, false))).c.x), arg_1.b, vec3<bool>(false, all(!func_1(1020f, var_0).a), select(any(var_0.a), arg_1.c.x, true)));
    var_1 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1287f * -717f), arg_2.b.x)) * _wgslsmith_f_op_f32(select(arg_2.b.x, 831f, all(arg_2.c)))), Struct_2(vec2<bool>(!any(vec4<bool>(var_1.a.x, var_1.a.x, arg_1.c.x, false)), !func_2().c.x)));
    var var_2 = firstTrailingBit(firstTrailingBit(select(_wgslsmith_mod_vec2_u32(vec2<u32>(45418u, u_input.a), vec2<u32>(0u, u_input.a)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 73791u), vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, 1430u)), select(arg_2.c.yz, arg_2.c.xy, vec2<bool>(var_1.c.x, true))) | ((vec2<u32>(u_input.a, 79659u) | vec2<u32>(1u, 20869u)) | (vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(u_input.a, 78954u) % vec2<u32>(32u))))));
    var_1 = arg_2;
    return Struct_3(vec2<bool>(4530u <= u_input.a, all(!select(vec2<bool>(false, true), vec2<bool>(var_0.a.x, true), vec2<bool>(var_0.a.x, false)))), _wgslsmith_f_op_vec4_f32(-arg_2.b), var_1.c);
}

fn func_5(arg_0: Struct_3) -> vec4<f32> {
    var var_0 = reverseBits(-vec3<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(31166i, 1i), vec2<i32>(-17654i, -2147483647i)), _wgslsmith_mod_i32(-2147483647i, abs(2147483647i)), -2147483647i));
    let var_1 = _wgslsmith_f_op_vec2_f32(arg_0.b.yx - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-534f, arg_0.b.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.b.x), -1711f)))));
    let var_2 = _wgslsmith_f_op_f32(select(arg_0.b.x, -251f, arg_0.c.x));
    var var_3 = func_2();
    var_3 = func_2();
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-313f)))), -1000f, func_4(_wgslsmith_f_op_vec2_f32(max(func_1(_wgslsmith_f_op_f32(var_3.a.x + 237f), Struct_2(var_3.c.zy)).b.zz, vec2<f32>(_wgslsmith_f_op_f32(var_1.x * -1331f), _wgslsmith_f_op_f32(step(-180f, -1000f))))), Struct_3(arg_0.a, vec4<f32>(var_3.a.x, -362f, _wgslsmith_f_op_f32(arg_0.b.x * 205f), _wgslsmith_f_op_f32(arg_0.b.x + var_2)), !(!var_3.c.yzw)), Struct_3(vec2<bool>(var_3.b, !var_3.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(arg_0.b)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-760f, 803f, -554f, var_2))), vec3<bool>(!var_3.c.x, func_4(vec2<f32>(arg_0.b.x, -1000f), Struct_3(var_3.c.xw, vec4<f32>(-329f, 734f, -1721f, -693f), arg_0.c), Struct_3(var_3.c.zz, arg_0.b, vec3<bool>(true, var_3.c.x, false))).a.x, true))).b.x, _wgslsmith_f_op_f32(var_3.a.x - var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_div_u32(7765u, select(83305u, ~_wgslsmith_add_u32(u_input.a, u_input.a), true));
    let var_1 = vec2<bool>(!(!(var_0 >= (u_input.a | var_0))), false);
    var var_2 = Struct_3(var_1, _wgslsmith_f_op_vec4_f32(func_5(func_4(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -297f), 400f), func_1(_wgslsmith_f_op_f32(678f * -1000f), Struct_2(vec2<bool>(false, false))), Struct_3(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-681f, -1930f, 1307f, -670f)), func_1(-1505f, Struct_2(vec2<bool>(var_1.x, var_1.x))).c)))), !(!vec3<bool>(false, var_1.x, true)));
    let var_3 = ~(~vec4<u32>(24318u, var_0, 0u, var_0));
    let x = u_input.a;
    s_output = StorageBuffer(var_3, _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(~(~var_3.xz), var_3.yw), vec2<u32>(u_input.a, _wgslsmith_mod_u32(0u, var_0)) & var_3.wy, vec2<u32>(~(~1u), ~(0u & var_0))), (_wgslsmith_clamp_vec4_i32(~vec4<i32>(-35702i, 2147483647i, 2147483647i, -7786i), vec4<i32>(17992i, 2147483647i, 2147483647i, -3235i) << (vec4<u32>(var_0, u_input.a, 13424u, var_3.x) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 0i, -61806i), vec4<i32>(-1i, 1i, 2147483647i, -16900i))) << ((vec4<u32>(var_3.x, 41797u, 1u, u_input.a) >> (var_3 % vec4<u32>(32u))) % vec4<u32>(32u))) << (vec4<u32>(u_input.a ^ _wgslsmith_dot_vec3_u32(var_3.xyz, var_3.zww), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, var_0, 0u, var_3.x) >> (vec4<u32>(var_3.x, 4294967295u, 4294967295u, 1u) % vec4<u32>(32u)), vec4<u32>(4294967295u, var_0, 0u, 0u)), var_3.x, ~(~var_3.x)) % vec4<u32>(32u)));
}

