struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<bool>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: bool,
    d: Struct_1,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: u32,
    d: vec4<i32>,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, -30630i) >> (vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u)), u_input.a)) & u_input.a, vec2<i32>(-1i, -1i));
    return u_input.b;
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: vec4<bool>, arg_3: vec3<bool>) -> u32 {
    let var_0 = vec3<i32>(_wgslsmith_div_i32(-1i, 16603i), u_input.a.x, u_input.a.x);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-264f * _wgslsmith_f_op_f32(-447f * arg_1.x))), Struct_1(_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u), vec4<u32>(18263u, 4294967295u, u_input.b, 1u)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 7569u, 24406u, u_input.b), vec4<u32>(4294967295u, 55128u, 0u, u_input.b)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(64902u, u_input.b)), u_input.b, min(u_input.b, u_input.b), 0u))), _wgslsmith_add_i32(abs(~select(u_input.a.x, 0i, false)), min(0i, -(i32(-1i) * -2147483647i))), Struct_1(abs(abs(u_input.b | u_input.b))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.a), var_1.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.x)))))));
    var var_3 = var_1;
    var var_4 = u_input.a;
    return ~4294967295u;
}

fn func_1(arg_0: vec3<i32>, arg_1: bool, arg_2: vec2<i32>) -> bool {
    let var_0 = Struct_1(u_input.b);
    let var_1 = ~vec2<u32>(func_2(), var_0.a & ~func_3(true, vec3<f32>(585f, 1000f, 1000f), vec4<bool>(arg_1, false, true, arg_1), vec3<bool>(arg_1, arg_1, false)));
    let var_2 = arg_1;
    let var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -281f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-227f - -1479f)), _wgslsmith_f_op_f32(-364f - _wgslsmith_div_f32(-1162f, 452f)))), Struct_1(43188u), 1i >> (~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(42052u, var_1.x, 0u), 4294967295u) % 32u), Struct_1(var_1.x));
    let var_4 = vec2<bool>(var_3.a != _wgslsmith_f_op_f32(f32(-1f) * -202f), all(!select(vec3<bool>(true, false, var_2), vec3<bool>(var_2, arg_1, true), !vec3<bool>(var_2, arg_1, false))));
    return true;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: vec4<bool>) -> Struct_4 {
    var var_0 = Struct_1(~u_input.b);
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1427f, -427f)), _wgslsmith_f_op_f32(f32(-1f) * -1044f), _wgslsmith_div_f32(arg_2.a, _wgslsmith_div_f32(arg_2.a, arg_2.a)), 167f))));
    var_0 = arg_2.b;
    var_0 = Struct_1(21055u);
    var var_2 = !select(select(select(select(arg_3.xz, vec2<bool>(arg_1.x, true), arg_1.x), vec2<bool>(arg_1.x, false), false), vec2<bool>(any(arg_3), true), !vec2<bool>(false, arg_1.x)), vec2<bool>(true, true), select(vec2<bool>(!arg_1.x, arg_3.x), vec2<bool>(arg_3.x, true), false));
    return Struct_4(Struct_1(arg_2.b.a), Struct_2(-121f), vec4<bool>(true, var_1.x != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1276f)) - -979f), arg_1.x, any(!(!arg_3.xyy))), vec4<i32>(countOneBits(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, -31812i)), -1i << (arg_2.d.a % 32u))), 1i, max(u_input.a.x, _wgslsmith_div_i32(u_input.a.x, arg_2.c)), -1i), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(arg_0, _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 18158u, var_0.a), arg_0)), ~arg_0) >> (select(vec3<u32>(_wgslsmith_dot_vec2_u32(arg_0.zy, arg_0.xx), arg_0.x, ~arg_2.b.a), _wgslsmith_mult_vec3_u32(~vec3<u32>(var_0.a, 4294967295u, 4294967295u), ~vec3<u32>(arg_2.b.a, 56850u, u_input.b)), !select(arg_3.wyz, arg_3.ywx, vec3<bool>(arg_3.x, var_2.x, true))) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~(~vec3<u32>(u_input.b, ~4294967295u, u_input.b)), select(select(vec2<bool>(false, func_1(vec3<i32>(2147483647i, 2147483647i, u_input.a.x), false, u_input.a)), select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(false, false), false)), all(vec4<bool>(false, true, true, false))), vec2<bool>(true, true && all(vec3<bool>(false, true, true))), !any(vec4<bool>(true, true, true, true))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-152f + -1221f), -1031f))), Struct_1(u_input.b), 0i, Struct_1(func_3(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1102f, 928f, 125f)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true)), vec3<bool>(true, true, true)))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, ~u_input.b >= 4294967295u, all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(ceil(927f)) > _wgslsmith_f_op_f32(ceil(-249f))), all(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)))));
    var var_1 = var_0.d;
    var var_2 = func_4(abs(~(~vec3<u32>(23772u, 0u, 14085u))), func_4(_wgslsmith_add_vec3_u32(vec3<u32>(func_3(var_0.c.x, vec3<f32>(630f, var_0.b.a, var_0.b.a), vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, false), vec3<bool>(var_0.c.x, true, var_0.c.x)), 6956u, var_0.a.a), _wgslsmith_mult_vec3_u32(var_0.e, var_0.e)), func_4(abs(countOneBits(vec3<u32>(u_input.b, var_0.e.x, 0u))), !func_4(var_0.e, vec2<bool>(var_0.c.x, true), Struct_3(var_0.b.a, Struct_1(41473u), 40984i, var_0.a), vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x)).c.ww, Struct_3(_wgslsmith_div_f32(-820f, -178f), Struct_1(u_input.b), 2147483647i | var_1.x, Struct_1(var_0.a.a)), !func_4(var_0.e, var_0.c.ww, Struct_3(-925f, Struct_1(1u), -2147483647i, Struct_1(4294967295u)), vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x)).c).c.xw, Struct_3(1574f, var_0.a, _wgslsmith_add_i32(_wgslsmith_div_i32(var_0.d.x, u_input.a.x), _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(30092i, var_1.x))), func_4(var_0.e, select(var_0.c.yw, var_0.c.yx, var_0.c.x), Struct_3(var_0.b.a, var_0.a, var_0.d.x, var_0.a), !vec4<bool>(false, var_0.c.x, true, var_0.c.x)).a), select(vec4<bool>(true, var_0.c.x, 20647i < var_0.d.x, var_0.c.x | var_0.c.x), select(!var_0.c, !var_0.c, select(vec4<bool>(var_0.c.x, var_0.c.x, false, var_0.c.x), vec4<bool>(false, var_0.c.x, var_0.c.x, var_0.c.x), vec4<bool>(false, var_0.c.x, false, false))), var_0.c.x)).c.zy, Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(141f, -295f))))), Struct_1(~var_0.a.a ^ 37383u), abs(-19754i << (countOneBits(37723u) % 32u)), var_0.a), !vec4<bool>(!var_0.c.x, false, var_0.c.x, false)).b;
    var_2 = var_0.b;
    var_2 = Struct_2(1f);
    var_1 = var_0.d;
    var var_3 = _wgslsmith_div_vec3_u32(vec3<u32>(abs(var_0.e.x << (17307u % 32u)), u_input.b, u_input.b), min(countOneBits(vec3<u32>(u_input.b, var_0.a.a, 4294967295u)), reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 4294967295u, var_0.a.a), vec3<u32>(var_0.a.a, 40711u, u_input.b))))) ^ (reverseBits(vec3<u32>(u_input.b << (u_input.b % 32u), _wgslsmith_mod_u32(u_input.b, u_input.b), 23083u)) >> (vec3<u32>(_wgslsmith_mod_u32(countOneBits(50760u), u_input.b), ~_wgslsmith_clamp_u32(1u, 78499u, var_0.a.a), countOneBits(~0u)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_2.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.a + 870f) * _wgslsmith_f_op_f32(floor(var_0.b.a))), -1000f), _wgslsmith_f_op_f32(772f + var_2.a), _wgslsmith_f_op_f32(376f + -464f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 387f, 1000f, 1114f))))), _wgslsmith_dot_vec4_u32(vec4<u32>(abs(_wgslsmith_mult_u32(0u, 4294967295u)), ~(~30397u), u_input.b, 4294967295u), vec4<u32>(0u, 24733u, _wgslsmith_sub_u32(1878u, var_3.x), func_3(false, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1728f, -1000f, var_0.b.a))), var_0.c, !vec3<bool>(var_0.c.x, false, false)))), firstLeadingBit(min(firstTrailingBit(var_0.d >> (vec4<u32>(83419u, u_input.b, 7179u, 0u) % vec4<u32>(32u))), vec4<i32>(~(-2147483647i), u_input.a.x, u_input.a.x, -37857i))));
}

