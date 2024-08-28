struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: bool,
    d: vec4<u32>,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(0i, -1i, -5755i, -1i);

var<private> global1: vec2<u32> = vec2<u32>(11908u, 54048u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_4) -> bool {
    return all(vec3<bool>(_wgslsmith_f_op_f32(ceil(552f)) < -1775f, all(select(!vec3<bool>(true, arg_0, arg_0), !vec3<bool>(false, arg_0, true), 21540u > global1.x)), any(!select(vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(arg_0, true, false, arg_0), false))));
}

fn func_4(arg_0: vec2<bool>, arg_1: u32) -> vec2<u32> {
    global0 = vec4<i32>(~(~countOneBits(2147483647i)), global0.x, _wgslsmith_dot_vec2_i32(~vec2<i32>(-60452i, global0.x) | vec2<i32>(global0.x, ~(-15766i)), vec2<i32>(global0.x ^ (2147483647i ^ global0.x), ~global0.x)), global0.x);
    let var_0 = any(vec3<bool>(arg_0.x, all(arg_0), true)) | (func_3(true && arg_0.x, Struct_4(Struct_1(158f)), Struct_1(678f), Struct_4(Struct_1(-1331f))) && arg_0.x);
    global1 = vec2<u32>(4294967295u, ~arg_1);
    var var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1520f)))), arg_0.x, select(arg_0, vec2<bool>(var_0, any(vec4<bool>(false, var_0, var_0, false))), arg_0.x)), global0.x, func_3(arg_0.x, Struct_4(Struct_1(_wgslsmith_f_op_f32(-198f + -1714f))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1377f - 789f), -516f)), Struct_4(Struct_1(-1427f))), ~min(~(~vec4<u32>(global1.x, global1.x, global1.x, u_input.a.x)), min(select(vec4<u32>(arg_1, global1.x, u_input.a.x, 25304u), vec4<u32>(arg_1, 0u, arg_1, 20723u), vec4<bool>(true, true, false, true)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, global1.x, 1u, u_input.a.x), vec4<u32>(38261u, 4294967295u, 3927u, arg_1)))), arg_0.x);
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.a.a) * 2398f), 436f, true));
    return var_1.d.xx;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: Struct_4) -> i32 {
    var var_0 = Struct_4(arg_2.a);
    var var_1 = _wgslsmith_f_op_f32(ceil(var_0.a.a));
    global1 = func_4(select(vec2<bool>(true, all(vec3<bool>(true, true, false))), vec2<bool>(func_3(true, Struct_4(var_0.a), Struct_1(1000f), Struct_4(Struct_1(-190f))), true), select(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true))), ~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(10560u, global1.x, 4294967295u, global1.x), _wgslsmith_mult_vec4_u32(vec4<u32>(74374u, global1.x, 30306u, global1.x), vec4<u32>(u_input.a.x, 1u, 1u, u_input.a.x))), ~global1.x));
    let var_2 = (vec4<i32>(~20341i << (0u % 32u), firstTrailingBit(63619i) | -1783i, global0.x, _wgslsmith_mod_i32(-18787i, 2147483647i)) & vec4<i32>(global0.x, -22483i, abs(global0.x), -16377i)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(~99561u, 29222u, global1.x, func_4(select(vec2<bool>(true, true), vec2<bool>(false, true), false), abs(global1.x)).x), abs(vec4<u32>(0u, 57204u, 25703u, 0u)) >> (((vec4<u32>(u_input.a.x, 1u, u_input.a.x, global1.x) & vec4<u32>(50919u, global1.x, u_input.a.x, u_input.a.x)) << (~vec4<u32>(u_input.a.x, 4294967295u, 1u, u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    global0 = var_2;
    return ~(-var_2.x);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(global0.zy, -global0.zx), -10402i, global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, global0.x, global0.x, global0.x), vec4<i32>(-2147483647i, global0.x, -2147483647i, global0.x) << (vec4<u32>(4294967295u, global1.x, 1u, global1.x) % vec4<u32>(32u)))), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, global0.x, -1i, global0.x) ^ vec4<i32>(global0.x, global0.x, -58102i, global0.x), _wgslsmith_mult_vec4_i32(vec4<i32>(2486i, -21741i, -2147483647i, 66264i), vec4<i32>(19776i, global0.x, global0.x, 2147483647i))), global0.x, max(~(-2147483647i), firstLeadingBit(-1i)), reverseBits(func_2(vec3<f32>(-454f, -777f, 1000f), vec4<f32>(-319f, -1718f, -1344f, 563f), Struct_4(Struct_1(1324f)))))) >> (_wgslsmith_add_vec4_u32(~(~firstLeadingBit(vec4<u32>(u_input.a.x, global1.x, 46502u, u_input.a.x))), _wgslsmith_add_vec4_u32(~(~vec4<u32>(global1.x, u_input.a.x, global1.x, global1.x)), ~(~vec4<u32>(1u, 9168u, 15020u, u_input.a.x)))) % vec4<u32>(32u));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-722f, 1f)))), false, !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)));
    global1 = (vec2<u32>(92769u, _wgslsmith_mult_u32(26126u, countOneBits(global1.x))) << (~vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a.xy, u_input.a.zy), global1.x) % vec2<u32>(32u))) >> (firstTrailingBit(u_input.a.zx) % vec2<u32>(32u));
    global1 = firstTrailingBit(firstLeadingBit(u_input.a.zx));
    let var_2 = var_1.c.x;
    return Struct_1(_wgslsmith_f_op_f32(sign(-705f)));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = Struct_2(arg_0, !(!any(vec3<bool>(false, true, arg_1.x))), select(!select(arg_1.zx, select(arg_1.zx, vec2<bool>(false, true), arg_1.x), !arg_1.zx), arg_1.wy, select(select(select(vec2<bool>(true, arg_1.x), arg_1.zy, true), arg_1.yy, true), vec2<bool>(true, false), !select(arg_1.x, false, arg_1.x))));
    var var_1 = all(select(vec3<bool>(all(arg_1), false, any(!var_0.c)), select(!(!arg_1.xyz), !(!vec3<bool>(true, var_0.c.x, true)), arg_1.zzy), arg_1.x && true));
    var var_2 = vec3<i32>(-11409i, -_wgslsmith_mult_i32(2147483647i, firstLeadingBit(1i)) >> (~_wgslsmith_dot_vec2_u32(~u_input.a.zy, u_input.a.zy) % 32u), 47065i);
    var_2 = global0.zyy << (select(u_input.a & u_input.a, abs(vec3<u32>(~u_input.a.x, 83575u, _wgslsmith_clamp_u32(0u, u_input.a.x, u_input.a.x))), arg_1.wwy) % vec3<u32>(32u));
    var var_3 = global0.x;
    return Struct_2(Struct_1(-397f), true, !(!select(!arg_1.xx, vec2<bool>(var_0.c.x, var_0.b), !vec2<bool>(var_0.b, var_0.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(), vec4<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false))), true, !(false & any(vec3<bool>(true, false, false))), any(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true)))));
    var var_1 = -22903i;
    let var_2 = reverseBits(u_input.a.yx) >> (((vec2<u32>(_wgslsmith_add_u32(1u, 53663u), ~u_input.a.x) << (u_input.a.yx % vec2<u32>(32u))) & vec2<u32>(_wgslsmith_mult_u32(4294967295u, u_input.a.x) >> (func_4(vec2<bool>(var_0.b, var_0.b), 25380u).x % 32u), _wgslsmith_sub_u32(~u_input.a.x, 1u << (u_input.a.x % 32u)))) % vec2<u32>(32u));
    var_1 = abs(55933i | reverseBits(max(-global0.x, global0.x)));
    let var_3 = Struct_3(var_0, -2679i, var_0.c.x, ~(~(~vec4<u32>(var_2.x, 32106u, 33414u, var_2.x))) << (abs(vec4<u32>(0u, 4294967295u, global1.x, _wgslsmith_add_u32(u_input.a.x, global1.x))) % vec4<u32>(32u)), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(-315f, _wgslsmith_f_op_f32(-var_0.a.a), all(select(var_0.c, var_3.a.c, select(var_3.a.c, vec2<bool>(var_0.c.x, false), vec2<bool>(true, true)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a) * 109f));
}

