struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = arg_3;
    var var_1 = arg_3.c & -6333i;
    var_1 = countOneBits(-(~(-reverseBits(var_0.a))));
    var var_2 = arg_3;
    var_1 = var_2.a;
    return reverseBits(-_wgslsmith_div_i32(~select(arg_3.c, 2147483647i, true), 32456i));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = u_input.a;
    var var_1 = -func_3(arg_2.a, -19319i, arg_1, Struct_1(_wgslsmith_div_i32(1i << (0u % 32u), u_input.d.x), !(false || arg_0), ~abs(-2147483647i), _wgslsmith_f_op_f32(trunc(arg_2.d))));
    var_0 = select(u_input.a, countOneBits(~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(11296u, u_input.a, 1u)), countOneBits(0u))), arg_0);
    var var_2 = arg_1;
    let var_3 = arg_2;
    return countOneBits(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.a, min(u_input.a, u_input.a)), vec3<u32>(abs(10030u), u_input.a, 30566u)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(824f, arg_1.d), vec2<f32>(1000f, 442f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d, -191f))))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1818f, 102f, -795f) - vec3<f32>(-340f, var_2.x, var_0.d))), vec3<f32>(-204f, _wgslsmith_f_op_f32(select(arg_1.d, 684f, false)), _wgslsmith_f_op_f32(select(var_1.d, var_0.d, var_1.b))))) * vec3<f32>(_wgslsmith_f_op_f32(arg_2.d - _wgslsmith_f_op_f32(var_1.d * _wgslsmith_f_op_f32(ceil(-321f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(495f - 208f), _wgslsmith_f_op_f32(-600f + 1468f)))), var_2.x));
    let var_4 = 19992u;
    return Struct_1(_wgslsmith_mod_i32(firstLeadingBit(0i), 2147483647i), true, min(_wgslsmith_dot_vec4_i32(u_input.d, abs(-u_input.d)), -var_1.a), var_3.x);
}

fn func_1(arg_0: f32, arg_1: vec2<bool>) -> vec3<bool> {
    let var_0 = Struct_1(firstTrailingBit(~u_input.d.x >> (u_input.a % 32u)) & -1i, -1i <= ~_wgslsmith_dot_vec3_i32(u_input.d.zyy, firstTrailingBit(u_input.d.xzy)), 26226i, arg_0);
    var var_1 = func_4(u_input.d.wzy << (_wgslsmith_sub_vec3_u32(~(~vec3<u32>(u_input.a, 1u, 18884u)), func_2(false, Struct_1(-42788i, true, 2147483647i, 1120f), var_0)) % vec3<u32>(32u)), var_0, Struct_1(-1i, arg_1.x, 3456i, -1347f), false);
    var_1 = func_4(u_input.d.zyy, Struct_1(func_3(26601i, -var_0.c, Struct_1(0i, arg_1.x, var_1.c, -1019f), var_0) ^ u_input.e, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, 254f) * _wgslsmith_f_op_f32(-407f * arg_0)) < _wgslsmith_f_op_f32(var_1.d - 1608f), var_0.a, 1506f), func_4(vec3<i32>(func_4(~u_input.d.ywx, var_0, func_4(vec3<i32>(var_1.a, u_input.e, -2140i), var_0, Struct_1(-6868i, true, u_input.d.x, 826f), var_1.b), 9564u < u_input.a).a, abs(-2147483647i), i32(-1i) * -1i), var_0, func_4(~(~u_input.d.xyx), func_4(select(u_input.d.zzw, u_input.d.yxw, vec3<bool>(var_0.b, arg_1.x, true)), var_0, Struct_1(2147483647i, arg_1.x, 2147483647i, var_1.d), !var_0.b), var_0, false), true), select(true, firstLeadingBit(1i) <= (var_0.c << (u_input.a % 32u)), var_1.b));
    var var_2 = Struct_1(var_1.c, arg_1.x, 8893i, var_1.d);
    var var_3 = select(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(71873u, u_input.a) << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u))), vec2<u32>(1u, 1u)) | ~((vec2<u32>(u_input.a, u_input.a) & vec2<u32>(u_input.a, 1u)) << (~vec2<u32>(1u, u_input.a) % vec2<u32>(32u))), ~vec2<u32>(~max(4294967295u, u_input.a), ~_wgslsmith_mult_u32(40491u, 1u)), select(select(arg_1, arg_1, firstLeadingBit(var_1.a) >= (i32(-1i) * -11788i)), arg_1, !(!arg_1)));
    return !select(vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(var_2.b, true, arg_1.x, var_0.b)), firstLeadingBit(var_3.x) <= 1u, (var_0.b && var_2.b) & true), false);
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: f32, arg_3: vec2<bool>) -> bool {
    let var_0 = Struct_1(u_input.c.x, arg_0, -func_4(vec3<i32>(~arg_1, 15159i >> (1u % 32u), _wgslsmith_mod_i32(0i, arg_1)), func_4(abs(vec3<i32>(arg_1, -2147483647i, arg_1)), Struct_1(0i, false, arg_1, arg_2), Struct_1(0i, false, 0i, -1207f), func_4(u_input.d.wyz, Struct_1(1i, true, -1i, -1682f), Struct_1(12844i, arg_3.x, -43703i, 2257f), false).b), Struct_1(-40742i, arg_0, u_input.e << (44791u % 32u), -838f), !any(arg_3)).c, _wgslsmith_div_f32(arg_2, -198f));
    let var_1 = func_1(_wgslsmith_f_op_f32(-var_0.d), arg_3);
    return arg_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.e, func_5(all(select(func_1(-1000f, vec2<bool>(true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), -(1i ^ u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(940f + -1000f) + _wgslsmith_f_op_f32(floor(1718f))) - 387f), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), u_input.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-750f, 730f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1232f))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-393f, -1852f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.d, var_0.d))), var_0.b)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1088f, 904f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(545f, var_0.d))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, var_0.d)))), (true | var_0.b) && false)));
    var var_2 = ~select(select(23484u, 1u, true), ~(~u_input.a), true) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), ~vec3<u32>(3210u, 13093u, u_input.a)), ~(~vec3<u32>(u_input.a, 38791u, u_input.a)))) % 32u);
    let var_3 = any(select(!vec3<bool>(var_0.b, var_0.b, true), select(func_1(-1034f, vec2<bool>(var_0.b, false)), !vec3<bool>(false, var_0.b, false), vec3<bool>(true, false, false)), func_1(416f, select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, var_0.b))))) && true;
    var var_4 = vec4<u32>(min(func_2(true, func_4(~u_input.d.xyw, func_4(u_input.d.wzw, Struct_1(u_input.e, var_0.b, -35139i, -189f), Struct_1(u_input.c.x, var_0.b, -50966i, var_1.x), true), Struct_1(-2147483647i, true, 45880i, -1178f), true), var_0).x, ~45421u), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, u_input.a), false) ^ firstLeadingBit(vec2<u32>(4294967295u, u_input.a)), vec2<u32>(~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 8762u, 4294967295u, u_input.a), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)))), ~18626u), u_input.a, 59330u);
    var var_5 = ~(~abs(select(~vec4<u32>(u_input.a, 4294967295u, var_4.x, u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(36922u, 806u, 29289u, 1u), vec4<u32>(u_input.a, var_4.x, 83228u, 83437u)), !vec4<bool>(var_3, var_3, var_3, false))));
    let var_6 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(var_0.d, _wgslsmith_f_op_f32(round(var_0.d)))), _wgslsmith_f_op_f32(-var_0.d), -197f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))));
    var var_7 = var_3;
    let var_8 = Struct_1(abs(_wgslsmith_mod_i32(u_input.b, _wgslsmith_add_i32(~u_input.b, firstTrailingBit(var_0.a)))), var_3, u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1004f, -924f, !var_0.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_5.x, var_4.x, var_5.x), vec4<u32>(var_5.x, u_input.a, u_input.a, 19643u))), vec4<u32>(1u, ~(~4294967295u), _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a, u_input.a, 1u, var_4.x), vec4<u32>(var_5.x, var_5.x, 1u, 27818u), vec4<bool>(var_0.b, var_3, var_0.b, var_3)), countOneBits(vec4<u32>(var_5.x, var_5.x, var_5.x, 0u))), abs(~4294967295u))), ~(~vec4<u32>(var_5.x ^ 9289u, 1u, var_4.x, abs(30614u))));
}

