struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<u32>,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-959f, -662f, -1444f)))))), vec3<f32>(-390f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(143f))) - _wgslsmith_f_op_f32(round(-1277f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(611f + 180f)))))));
    let var_1 = Struct_2(Struct_1(var_0.x), Struct_1(var_0.x), select(vec3<bool>(true, true, true), !vec3<bool>(u_input.a.x > 1i, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), u_input.c.zx, Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1930f + var_0.x)))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-var_1.e.a), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, -1479f)) - var_0.x));
    var var_2 = u_input.b;
    var var_3 = -_wgslsmith_sub_i32(u_input.c.x, var_1.d.x) <= -1i;
    return var_0.x;
}

fn func_2() -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_3()));
    var var_1 = Struct_3(Struct_2(var_0, Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-230f - var_0.a)))), vec3<bool>(any(vec4<bool>(true, true, true, true)) & true, true, false), vec2<i32>(reverseBits(_wgslsmith_add_i32(2147483647i, -31118i)), abs(_wgslsmith_mod_i32(u_input.c.x, u_input.a.x))), Struct_1(605f)), var_0, ~(~(~(vec2<u32>(u_input.b.x, 1u) << (u_input.b.yy % vec2<u32>(32u))))), _wgslsmith_add_u32(_wgslsmith_mod_u32(max(~u_input.b.x, 0u), u_input.b.x), u_input.b.x), ~u_input.c);
    var var_2 = !(!any(vec3<bool>(var_1.a.c.x, var_1.a.c.x, true)));
    var var_3 = vec4<f32>(-939f, -628f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - var_1.b.a), -360f);
    var var_4 = var_1.a.c;
    return u_input.b.x;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: Struct_3) -> Struct_1 {
    var var_0 = countOneBits(vec3<i32>(_wgslsmith_mult_i32(-2147483647i, -1i), _wgslsmith_sub_i32(-1i >> (arg_0.d % 32u), i32(-1i) * -36835i) >> (1u % 32u), arg_0.e.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-361f, arg_0.a.e.a, arg_2.a.a.a), vec3<f32>(arg_0.a.e.a, 1090f, 224f))), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a.b.a, 487f, arg_0.b.a), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-465f, -564f, -1617f), vec3<f32>(arg_0.a.b.a, arg_2.a.e.a, arg_2.b.a))))))));
    return Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.x - arg_2.a.e.a))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> Struct_2 {
    var var_0 = u_input.c.x;
    let var_1 = ~(vec4<u32>(0u, ~1u, ~abs(49530u), _wgslsmith_dot_vec3_u32(u_input.b, _wgslsmith_mod_vec3_u32(vec3<u32>(8643u, 3346u, 1u), u_input.b))) >> (vec4<u32>(firstTrailingBit(u_input.b.x), u_input.b.x, 55058u, 12937u) % vec4<u32>(32u)));
    var_0 = max(arg_1.d.x, _wgslsmith_div_i32(~arg_1.d.x, -2147483647i));
    var_0 = abs(15875i);
    let var_2 = arg_1.c.x;
    return Struct_2(arg_1.a, arg_3, vec3<bool>(false, true, false), vec2<i32>(abs(abs(-27358i << (var_1.x % 32u))), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, -8991i), u_input.c.xx), arg_1.d >> (_wgslsmith_mult_vec2_u32(var_1.xz, vec2<u32>(u_input.b.x, var_1.x)) % vec2<u32>(32u)))), arg_0);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = arg_1.c.zz;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1086f, -1883f, 1652f)))))));
    var var_2 = func_5(func_4(Struct_3(arg_1, Struct_1(_wgslsmith_f_op_f32(-244f * 1204f)), vec2<u32>(arg_2.x, 80925u) >> (countOneBits(vec2<u32>(arg_2.x, 4294967295u)) % vec2<u32>(32u)), 1u, ~u_input.c), -(reverseBits(vec2<i32>(arg_1.d.x, arg_1.d.x)) | _wgslsmith_div_vec2_i32(arg_1.d, vec2<i32>(1i, arg_1.d.x))), Struct_3(arg_1, Struct_1(1000f), max(~vec2<u32>(u_input.b.x, 62984u), arg_2.xy), ~func_2(), u_input.c)), arg_1, !(-60306i < max(_wgslsmith_dot_vec3_i32(u_input.c.wzx, vec3<i32>(u_input.a.x, -2957i, u_input.c.x)), u_input.c.x)), func_4(Struct_3(arg_1, func_4(Struct_3(arg_1, arg_1.b, vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.x, vec4<i32>(u_input.a.x, -14642i, -1i, -19484i)), firstTrailingBit(arg_1.d), Struct_3(Struct_2(arg_1.b, Struct_1(674f), vec3<bool>(var_0.x, false, var_0.x), vec2<i32>(arg_1.d.x, arg_1.d.x), arg_1.b), Struct_1(-1207f), vec2<u32>(0u, u_input.b.x), 17947u, u_input.c)), _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(arg_2.xx, vec2<u32>(u_input.b.x, arg_2.x)), u_input.b.xx, arg_2.zz), ~(~116001u), select(firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, -1i, arg_1.d.x)), vec4<i32>(-10384i, u_input.c.x, u_input.c.x, u_input.a.x), select(false, false, var_0.x))), _wgslsmith_div_vec2_i32(arg_1.d, ~u_input.c.yx << (vec2<u32>(arg_2.x, arg_2.x) % vec2<u32>(32u))), Struct_3(Struct_2(arg_1.e, func_4(Struct_3(Struct_2(arg_1.e, arg_1.b, arg_1.c, vec2<i32>(-50513i, 0i), Struct_1(var_1.x)), arg_1.a, arg_2.yx, arg_2.x, vec4<i32>(u_input.c.x, 22401i, u_input.c.x, arg_1.d.x)), vec2<i32>(u_input.a.x, -1i), Struct_3(arg_1, Struct_1(arg_0.x), u_input.b.yy, 1u, vec4<i32>(-1i, 2147483647i, arg_1.d.x, 12362i))), arg_1.c, vec2<i32>(arg_1.d.x, -11039i), Struct_1(-339f)), Struct_1(_wgslsmith_f_op_f32(arg_0.x + var_1.x)), _wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(4092u, 4294967295u)), ~vec2<u32>(arg_2.x, 4294967295u)), 0u ^ func_2(), firstLeadingBit(u_input.c))));
    var var_3 = u_input.b.x;
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-603f, var_2.e.a, 849f), vec3<f32>(127f, -248f, 605f))))), arg_0, _wgslsmith_clamp_i32(8789i, var_2.d.x, 2147483647i) >= 1i))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.e.a))), var_2.a.a, _wgslsmith_f_op_f32(-arg_1.b.a))));
    return var_2.a;
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec4<bool>) -> bool {
    let var_0 = all(vec3<bool>(arg_2.x, arg_1.a.c.x, func_5(Struct_1(arg_1.a.e.a), func_5(func_5(arg_1.a.b, Struct_2(Struct_1(-603f), Struct_1(1307f), arg_1.a.c, vec2<i32>(arg_1.e.x, arg_1.a.d.x), arg_1.a.e), arg_2.x, Struct_1(-1789f)).a, func_5(Struct_1(arg_1.b.a), arg_1.a, arg_1.a.c.x, Struct_1(1627f)), arg_1.b.a != 1000f, Struct_1(arg_1.a.e.a)), arg_1.b.a <= -1164f, Struct_1(_wgslsmith_f_op_f32(arg_1.a.e.a * -665f))).c.x));
    let var_1 = _wgslsmith_f_op_f32(func_3());
    var var_2 = arg_1.e;
    var_2 = vec4<i32>(-23140i | -(reverseBits(u_input.a.x) | var_2.x), _wgslsmith_sub_i32(-11183i, _wgslsmith_clamp_i32(i32(-1i) * -var_2.x, u_input.c.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(var_2.x, -25374i, arg_1.a.d.x, 0i), min(vec4<i32>(-30226i, 2147483647i, arg_1.a.d.x, u_input.c.x), arg_1.e)))), 1i, arg_1.a.d.x);
    var var_3 = Struct_3(arg_1.a, Struct_1(1469f), arg_1.c, ~abs(arg_1.d), arg_1.e);
    return min(u_input.b.x, countOneBits(3559u)) > _wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(1u, u_input.b.x, u_input.b.x)), max(_wgslsmith_sub_vec3_u32(vec3<u32>(43262u, 53742u, u_input.b.x) >> (u_input.b % vec3<u32>(32u)), abs(vec3<u32>(37834u, 2747u, 1u))), abs(vec3<u32>(1u, 1u, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-vec4<i32>(-14995i, 0i, min(16361i, u_input.c.x), abs(u_input.c.x))) << (~reverseBits(abs(select(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 52196u), vec4<u32>(0u, 4294967295u, 4294967295u, u_input.b.x), vec4<bool>(true, true, false, false)))) % vec4<u32>(32u));
    var var_1 = _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(~var_0.x, max(-u_input.c.x, 0i), 1i, max((2147483647i & u_input.a.x) & 0i, u_input.a.x)));
    var var_2 = select(!vec2<bool>(all(vec3<bool>(true, false, false)), max(u_input.c.x, 29034i) > 33171i), vec2<bool>(func_6(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), false), Struct_3(Struct_2(Struct_1(929f), Struct_1(1214f), vec3<bool>(true, true, true), vec2<i32>(var_0.x, -13882i), Struct_1(-1064f)), func_1(vec3<f32>(-801f, 1217f, 806f), Struct_2(Struct_1(-1000f), Struct_1(425f), vec3<bool>(false, true, false), vec2<i32>(2147483647i, 56765i), Struct_1(917f)), vec3<u32>(u_input.b.x, u_input.b.x, 1u)), u_input.b.xy | vec2<u32>(1u, u_input.b.x), ~41519u, _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, 49910i), u_input.c)), vec4<bool>(all(vec3<bool>(false, false, true)), true, true, any(vec4<bool>(false, false, false, true)))), true), vec2<bool>(false, !any(vec2<bool>(true, true))));
    var_2 = vec2<bool>(false, all(!vec2<bool>(true, var_2.x | false)));
    var_0 = countOneBits(vec4<i32>(23055i, u_input.a.x, firstTrailingBit(var_0.x), var_0.x)) ^ u_input.c;
    var var_3 = vec3<i32>(-57817i, ~var_0.x, u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_div_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_0.x, var_3.x), vec3<i32>(2147483647i, 42482i, 38060i)), func_5(Struct_1(-1395f), Struct_2(Struct_1(3007f), Struct_1(-639f), vec3<bool>(var_2.x, var_2.x, true), var_3.yy, Struct_1(-1538f)), var_2.x, func_5(Struct_1(-960f), Struct_2(Struct_1(-1000f), Struct_1(914f), vec3<bool>(var_2.x, var_2.x, var_2.x), vec2<i32>(-39249i, var_0.x), Struct_1(-585f)), var_2.x, Struct_1(-2302f)).b).d.x), _wgslsmith_mod_u32(~0u, max(u_input.b.x, 0u)), 4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1f)), -1280f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-974f + 1433f)) - 1f)), var_0.zyz);
}

