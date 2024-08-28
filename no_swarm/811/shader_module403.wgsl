struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> i32 {
    let var_0 = Struct_2(Struct_1(vec3<u32>(~4294967295u, 1u, min(~14940u, ~4294967295u))), u_input.a.x, Struct_1(vec3<u32>(1u, 1u, 1u)), abs(-_wgslsmith_mod_i32(abs(-1i), u_input.a.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(854f)))), -850f, -1000f) * vec3<f32>(-202f, 301f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1444f * _wgslsmith_f_op_f32(select(537f, 623f, false))))));
    let var_2 = false;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1161f * var_1.x) * _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(620f, var_1.x)) - var_1.x)))) + _wgslsmith_f_op_f32(f32(-1f) * -738f));
    var var_4 = var_0.c;
    return u_input.a.x;
}

fn func_2() -> bool {
    var var_0 = true;
    let var_1 = (func_3() | -(2147483647i | _wgslsmith_sub_i32(u_input.a.x, 1i))) <= u_input.a.x;
    var_0 = var_1;
    let var_2 = var_1;
    var_0 = !(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1590f + _wgslsmith_div_f32(-535f, -756f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1000f, 1000f)), -1423f))));
    return !var_2;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_2 {
    let var_0 = abs(_wgslsmith_sub_vec3_i32(-vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_1.x, arg_0.b, arg_0.d), vec4<i32>(55223i, 40895i, -7116i, -2147483647i)), -u_input.a.x, _wgslsmith_div_i32(-43829i, arg_1.x)), u_input.a.wyw));
    let var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.c.a.x, ~40641u, select(15159u, arg_2.c.a.x, func_2())) ^ (~(vec3<u32>(39659u, arg_0.a.a.x, 1u) >> (arg_3.xwx % vec3<u32>(32u))) << (vec3<u32>(0u ^ arg_3.x, arg_2.c.a.x, ~1u) % vec3<u32>(32u))), vec3<u32>(arg_3.x, arg_3.x, ~_wgslsmith_mult_u32(109965u, arg_0.c.a.x) ^ _wgslsmith_mult_u32(arg_0.c.a.x, arg_0.c.a.x)));
    var var_2 = Struct_1(vec3<u32>(1u, ~22857u, 0u));
    var var_3 = _wgslsmith_div_vec2_u32(~var_1.yx, arg_2.a.a.zy);
    let var_4 = vec2<bool>(false, false | all(vec4<bool>(true, true, true, true)));
    return Struct_2(Struct_1(~vec3<u32>(0u, reverseBits(arg_2.a.a.x), var_3.x)), -reverseBits(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-20010i, 1i), vec2<i32>(u_input.a.x, 25695i)), _wgslsmith_clamp_vec2_i32(arg_1, u_input.a.yw, var_0.zz))), Struct_1(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_3.x, arg_3.x, var_1.x), vec3<u32>(arg_2.c.a.x, 38274u, 4294967295u)))), var_0.x);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2) -> f32 {
    var var_0 = !(!select(vec2<bool>(true, true), vec2<bool>(true, select(true, false, false)), false));
    var_0 = select(vec2<bool>(!(!(arg_0.a.x < 0u)), var_0.x), vec2<bool>(true, true), any(vec4<bool>(var_0.x, var_0.x, all(vec4<bool>(var_0.x, false, var_0.x, var_0.x)), var_0.x)));
    let var_1 = arg_2.a.a.yy << (_wgslsmith_sub_vec2_u32(arg_2.a.a.yx, vec2<u32>(~min(1u, arg_0.a.x), _wgslsmith_mod_u32(arg_2.c.a.x, arg_2.c.a.x))) % vec2<u32>(32u));
    var_0 = !vec2<bool>(true, var_0.x);
    var var_2 = _wgslsmith_clamp_vec2_u32(select(~var_1, arg_2.c.a.yx, !(!vec2<bool>(true, var_0.x))), ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.a.x) | vec2<u32>(arg_2.a.a.x, var_1.x), vec2<u32>(1u, arg_0.a.x)), _wgslsmith_mod_u32(~arg_0.a.x, var_1.x | arg_2.c.a.x)), arg_0.a.yx);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1659f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1602f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1064f)), _wgslsmith_f_op_f32(min(-1547f, -1065f)))))), -1222f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(select(512f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(403f - 1000f)), _wgslsmith_f_op_f32(func_4(Struct_1(vec3<u32>(4294967295u, 1u, 51542u)), ~10163i, func_1(Struct_2(Struct_1(vec3<u32>(0u, 1u, 1u)), 30195i, Struct_1(vec3<u32>(13090u, 5640u, 1u)), u_input.a.x), u_input.a.wz, Struct_2(Struct_1(vec3<u32>(0u, 0u, 4294967295u)), u_input.a.x, Struct_1(vec3<u32>(4294967295u, 30361u, 0u)), -92109i), vec4<u32>(0u, 73521u, 5443u, 56458u)))))), 310f)), true));
    var_0 = _wgslsmith_div_f32(210f, 974f);
    let var_1 = reverseBits(15473u);
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(393f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-141f, -229f))), _wgslsmith_f_op_f32(-1f), -518f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1097f, 366f, 1928f, 893f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -997f, -664f, 1312f)))))));
    var_2 = vec4<f32>(667f, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -292f), -1062f);
    var var_3 = 1u;
    let var_4 = Struct_2(func_1(func_1(Struct_2(Struct_1(vec3<u32>(var_1, var_1, 84091u)), _wgslsmith_mult_i32(4656i, -18319i), Struct_1(vec3<u32>(var_1, var_1, 28351u)), u_input.a.x), -u_input.a.wz, func_1(func_1(Struct_2(Struct_1(vec3<u32>(var_1, var_1, 95950u)), u_input.a.x, Struct_1(vec3<u32>(var_1, var_1, 4294967295u)), -2147483647i), vec2<i32>(u_input.a.x, u_input.a.x), Struct_2(Struct_1(vec3<u32>(var_1, var_1, 4294967295u)), 2147483647i, Struct_1(vec3<u32>(1u, var_1, var_1)), -7725i), vec4<u32>(4294967295u, 64709u, var_1, var_1)), countOneBits(vec2<i32>(u_input.a.x, u_input.a.x)), Struct_2(Struct_1(vec3<u32>(var_1, 10398u, var_1)), u_input.a.x, Struct_1(vec3<u32>(84802u, 3187u, 4916u)), u_input.a.x), vec4<u32>(var_1, 47551u, var_1, 53113u)), vec4<u32>(16812u, var_1, var_1, var_1) << (min(vec4<u32>(6763u, var_1, var_1, 45752u), vec4<u32>(1u, 37536u, 0u, var_1)) % vec4<u32>(32u))), u_input.a.zx << (_wgslsmith_add_vec2_u32(vec2<u32>(var_1, var_1) | vec2<u32>(var_1, var_1), max(vec2<u32>(1u, var_1), vec2<u32>(63319u, 13754u))) % vec2<u32>(32u)), Struct_2(func_1(func_1(Struct_2(Struct_1(vec3<u32>(1u, 1u, 0u)), u_input.a.x, Struct_1(vec3<u32>(29816u, var_1, var_1)), u_input.a.x), vec2<i32>(-1i, u_input.a.x), Struct_2(Struct_1(vec3<u32>(0u, 0u, var_1)), -39247i, Struct_1(vec3<u32>(var_1, var_1, 0u)), u_input.a.x), vec4<u32>(var_1, var_1, var_1, 15477u)), -vec2<i32>(u_input.a.x, u_input.a.x), func_1(Struct_2(Struct_1(vec3<u32>(1759u, 1u, var_1)), u_input.a.x, Struct_1(vec3<u32>(49071u, 34201u, var_1)), u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x), Struct_2(Struct_1(vec3<u32>(var_1, 4294967295u, 4294967295u)), u_input.a.x, Struct_1(vec3<u32>(var_1, 1u, var_1)), -46289i), vec4<u32>(var_1, 23757u, var_1, var_1)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, var_1), vec4<u32>(63570u, 1u, var_1, 76156u))).a, u_input.a.x, Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1, var_1, var_1), vec3<u32>(var_1, var_1, var_1), vec3<u32>(var_1, 55194u, var_1))), u_input.a.x & (u_input.a.x >> (var_1 % 32u))), select(vec4<u32>(var_1, var_1, var_1, 3758u), vec4<u32>(4294967295u, var_1, var_1, 10072u) | vec4<u32>(0u, 12019u, 1u, 0u), true) & (~vec4<u32>(var_1, 27898u, var_1, var_1) & (vec4<u32>(var_1, 10615u, var_1, 0u) | vec4<u32>(var_1, 1u, var_1, 25015u)))).a, _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(i32(-1i) * -2147483647i, firstTrailingBit(u_input.a.x)), u_input.a.x), -select(func_3(), -2291i, any(vec2<bool>(true, false)))), Struct_1(firstTrailingBit((vec3<u32>(7355u, var_1, var_1) << (vec3<u32>(129877u, 1u, var_1) % vec3<u32>(32u))) & min(vec3<u32>(0u, var_1, var_1), vec3<u32>(var_1, 107947u, 35128u)))), 0i);
    var var_5 = firstLeadingBit(~u_input.a.zz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(countOneBits(~u_input.a.x), reverseBits(var_5.x)), u_input.a);
}

