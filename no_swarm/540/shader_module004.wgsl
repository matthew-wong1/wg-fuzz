struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: u32,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: vec3<f32>,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: vec3<bool>) -> vec2<i32> {
    var var_0 = ~abs(~arg_1 & 0u);
    var_0 = 2796u;
    var var_1 = true;
    let var_2 = u_input.c.x;
    var_0 = arg_1;
    return u_input.c.yy & ~vec2<i32>(-(~u_input.c.x), u_input.c.x);
}

fn func_2(arg_0: vec2<i32>, arg_1: bool) -> Struct_5 {
    var var_0 = Struct_2(func_3(Struct_4(-1000f, Struct_1(vec3<f32>(-1012f, 1062f, -2111f), vec3<bool>(arg_1, false, false), u_input.b, arg_1, vec3<u32>(11669u, 21879u, u_input.b)), any(vec4<bool>(false, arg_1, arg_1, arg_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-385f, 1165f, -1384f))), u_input.b, select(!vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, arg_1, true), vec3<bool>(arg_1, true, true))) >> (~(vec2<u32>(u_input.a, u_input.b) << ((vec2<u32>(u_input.a, 11297u) & vec2<u32>(36780u, u_input.b)) % vec2<u32>(32u))) % vec2<u32>(32u)), 1u, ~(~(select(1u, 34721u, true) >> (1u % 32u))), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-423f, 1224f, -587f), vec3<f32>(-3318f, -1000f, 489f)))))), vec3<bool>(true, arg_1, true), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 5341u), ~vec2<u32>(4294967295u, 6972u), ~vec2<u32>(32330u, 58080u)), min(~vec2<u32>(114578u, u_input.a), vec2<u32>(0u, u_input.b) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))), !(arg_1 || arg_1), vec3<u32>(u_input.a, abs(~86355u), u_input.b)));
    var var_1 = Struct_5(_wgslsmith_mod_vec4_u32(vec4<u32>(~29642u, ~(~56897u), ~0u >> (u_input.a % 32u), _wgslsmith_mod_u32(min(u_input.b, 27322u), 4294967295u)), vec4<u32>(var_0.b, countOneBits(countOneBits(u_input.a)), ~abs(4294967295u), ~(var_0.d.e.x | u_input.a))));
    var var_2 = u_input.c.xz;
    let var_3 = Struct_4(_wgslsmith_div_f32(var_0.d.a.x, _wgslsmith_f_op_f32(select(120f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1624f), _wgslsmith_f_op_f32(-var_0.d.a.x))), var_1.a.x < u_input.b))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_0.d.a))) * vec3<f32>(var_0.d.a.x, _wgslsmith_f_op_f32(-489f + 179f), var_0.d.a.x)), select(!(!vec3<bool>(var_0.d.b.x, var_0.d.b.x, true)), select(select(vec3<bool>(false, false, var_0.d.b.x), var_0.d.b, var_0.d.b.x), !vec3<bool>(arg_1, arg_1, arg_1), select(true, arg_1, true)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c, 1u, 4294967295u), vec3<u32>(40734u, var_0.c, 1u)) < u_input.a), ~17876u, !any(!var_0.d.b), var_1.a.zxw), true, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(var_0.d.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.a.x, 1204f, var_0.d.a.x)))) - _wgslsmith_f_op_vec3_f32(select(var_0.d.a, var_0.d.a, true & var_0.d.d))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_0.d.a.x, var_0.d.a.x), 876f, _wgslsmith_f_op_f32(-var_0.d.a.x)) + _wgslsmith_f_op_vec3_f32(var_0.d.a * _wgslsmith_f_op_vec3_f32(-vec3<f32>(823f, 1939f, 901f)))), (var_0.d.b.x & true) & all(vec4<bool>(false, var_0.d.d, true, var_0.d.d)))));
    var_1 = Struct_5(var_1.a);
    return Struct_5(_wgslsmith_clamp_vec4_u32(abs(var_1.a), _wgslsmith_div_vec4_u32(~(~vec4<u32>(1u, var_3.b.c, 0u, 44880u)), var_1.a), var_1.a));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: vec2<bool>) -> Struct_3 {
    var var_0 = -400f;
    var var_1 = func_2(u_input.c.zz, arg_2.x | true);
    var_0 = _wgslsmith_f_op_f32(-1f);
    var var_2 = vec3<u32>(u_input.a, ~(~1u), ~var_1.a.x);
    var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    return Struct_3(arg_0, Struct_2(-select(firstLeadingBit(vec2<i32>(-33765i, u_input.c.x)), vec2<i32>(-20325i, u_input.c.x), vec2<bool>(arg_2.x, true)), 6421u, 11208u, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, arg_0.x))), !vec3<bool>(true, false, arg_2.x), firstTrailingBit(reverseBits(var_2.x)), all(arg_2), ~_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.a.x, var_1.a.x, 10633u), var_1.a.wzy))), Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 1449f, arg_0.x)))), vec3<bool>(!any(vec3<bool>(arg_2.x, arg_2.x, true)), true, true), countOneBits(var_2.x) & 102388u, !arg_2.x, firstLeadingBit(firstLeadingBit(abs(var_1.a.ywy)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + arg_0.x)), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~1u;
    var_0 = u_input.a;
    let var_1 = vec4<i32>(-u_input.c.x, u_input.c.x & 2147483647i, 75578i, 1i);
    let var_2 = 68659u;
    var var_3 = vec2<f32>(-642f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-986f)) - _wgslsmith_div_f32(702f, -673f))))));
    var_0 = 1u;
    let var_4 = ~(~vec2<u32>(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(19740u, 1u), vec2<u32>(84113u, 4294967295u))) << (vec2<u32>(~var_2, u_input.a & ~u_input.a) % vec2<u32>(32u)));
    let var_5 = func_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-327f, var_3.x, var_3.x, var_3.x) - vec4<f32>(var_3.x, var_3.x, var_3.x, -969f)))), vec4<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(min(866f, 466f)), _wgslsmith_f_op_f32(322f * 320f), var_3.x)), vec4<f32>(_wgslsmith_div_f32(-931f, _wgslsmith_div_f32(1292f, var_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(901f))), 978f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(824f - -190f))))), var_3.x, vec2<bool>(true, false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-166f * _wgslsmith_f_op_f32(abs(-155f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_5.a.wzz + var_5.b.d.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_5.b.d.a))), vec3<i32>(firstTrailingBit(var_1.x), _wgslsmith_add_i32(reverseBits(38083i), var_1.x ^ func_1(var_5.a, 141f, var_5.b.d.b.zy).b.a.x), -_wgslsmith_sub_i32(var_5.b.a.x ^ 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -33552i), vec2<i32>(-2147483647i, var_5.b.a.x)))), vec4<u32>(select(var_2, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 4294967295u), firstTrailingBit(var_5.c.e)), true), ~(~var_5.e ^ firstTrailingBit(4294967295u)), _wgslsmith_clamp_u32(17752u ^ _wgslsmith_sub_u32(17043u, var_5.b.c), var_2, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_5.b.c, 27232u, var_5.c.c), vec3<u32>(8880u, 84788u, 53510u)), u_input.a)), 4294967295u), u_input.b);
}

