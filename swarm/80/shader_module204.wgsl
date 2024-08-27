struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<f32>,
    d: vec4<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>) -> bool {
    global0 = _wgslsmith_dot_vec2_u32(arg_1, abs(_wgslsmith_add_vec2_u32(vec2<u32>(0u, arg_1.x), _wgslsmith_add_vec2_u32(vec2<u32>(arg_0, arg_1.x), u_input.a.yy)))) | ~(~arg_0);
    global0 = 79352u;
    var var_0 = reverseBits(arg_0);
    let var_1 = -_wgslsmith_mod_vec2_i32(vec2<i32>(1i, -33957i), vec2<i32>(~select(1i, 0i, true), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 49806i, -19008i, 73642i), vec4<i32>(11894i, 33061i, -13821i, -24175i)) >> (arg_1.x % 32u)));
    let var_2 = select(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, any(vec3<bool>(true, true, true)), !(true | (1i != var_1.x))), select(true | !any(vec2<bool>(true, true)), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1830f)) - 204f) > 1f));
    return select(false, select(any(select(vec2<bool>(var_2.x, var_2.x), !var_2.zz, vec2<bool>(var_2.x, var_2.x))), all(vec2<bool>(!var_2.x, var_2.x)), select(var_2.x, var_2.x && var_2.x, var_2.x) || false), any(vec4<bool>(all(vec2<bool>(false, false)), var_2.x, var_2.x, select(arg_1.x, 9141u, true) <= arg_1.x)));
}

fn func_2(arg_0: f32) -> Struct_4 {
    var var_0 = 18630i;
    var var_1 = Struct_4(Struct_1(!func_3(0u, select(u_input.a.xx, u_input.a.zx, true)), arg_0 < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), arg_0), vec2<f32>(_wgslsmith_f_op_f32(step(-658f, _wgslsmith_f_op_f32(arg_0 - arg_0))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 381f, 595f, arg_0) - vec4<f32>(407f, arg_0, arg_0, arg_0)))), _wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(-14217i, -5410i)), min(vec2<i32>(1i, 19109i), vec2<i32>(16243i, -2147483647i)), abs(vec2<i32>(2147483647i, 0i))) << (_wgslsmith_sub_vec2_u32(vec2<u32>(9830u, 131950u), ~u_input.a.zx) % vec2<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, arg_0) * arg_0), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 251f, 166f, arg_0)) - _wgslsmith_div_vec4_f32(vec4<f32>(-474f, arg_0, 2975f, 701f), vec4<f32>(-353f, 383f, arg_0, 1973f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -487f, -1660f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(644f, arg_0, arg_0, arg_0))) + vec4<f32>(-117f, 1238f, 436f, arg_0))))));
    let var_2 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2025i, firstTrailingBit(482i)), var_1.a.e), _wgslsmith_sub_i32(var_1.a.e.x, _wgslsmith_clamp_i32(-_wgslsmith_mult_i32(-1i, var_1.a.e.x), -2147483647i, 0i)), var_1.a.e.x, var_1.a.e.x);
    var var_3 = var_1.a.d.wzy;
    var_1 = Struct_4(var_1.a, 606f, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(var_1.c, var_1.c)), _wgslsmith_f_op_vec4_f32(step(var_1.a.d, var_1.c))) - var_1.a.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.c) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 137f, 1044f)))), vec4<bool>(!(!var_1.a.b), false, var_1.a.b, false))));
    return Struct_4(var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -458f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, 1000f, 2216f, -652f))) + _wgslsmith_f_op_vec4_f32(round(var_1.a.d)))))));
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    var var_0 = arg_0.a;
    global0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-427f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.c.x))))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-555f - _wgslsmith_f_op_f32(arg_0.a.c.x - _wgslsmith_f_op_f32(-arg_0.b))));
    return Struct_2(all(!vec2<bool>(all(vec4<bool>(false, var_1, true, var_1)), true || var_1)), arg_0.a, Struct_1(func_3(abs(1u), firstTrailingBit(vec2<u32>(u_input.a.x, u_input.a.x))) && true, !var_1 || true, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-315f, -1942f) + _wgslsmith_f_op_vec2_f32(-var_0.d.xx)))), vec4<f32>(-458f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-577f)), 1007f, false)), arg_0.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_0.c.x))))), -vec2<i32>(45918i, ~1i)));
}

fn func_1(arg_0: vec4<u32>) -> Struct_4 {
    var var_0 = func_4(func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-265f, -1484f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) - _wgslsmith_f_op_f32(sign(-1878f)))))));
    let var_1 = 75972u;
    global0 = _wgslsmith_div_u32(~u_input.a.x, min(arg_0.x, var_1 << (0u % 32u)));
    var var_2 = var_0.b.d.x;
    var var_3 = func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(158f)) + _wgslsmith_f_op_f32(-var_0.b.c.x)))))));
    return Struct_4(func_2(136f).a, 427f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b.d))), vec4<f32>(var_3.a.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -835f)), _wgslsmith_f_op_f32(ceil(-464f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.a.c.x, var_0.b.c.x)))));
}

fn func_5(arg_0: Struct_4) -> vec2<bool> {
    let var_0 = (arg_0.a.e.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x << (40984u % 32u), u_input.a.x << (u_input.a.x % 32u), u_input.a.x, countOneBits(u_input.a.x)), abs(~vec4<u32>(36838u, 0u, u_input.a.x, u_input.a.x))) % 32u)) > 3331i;
    global0 = u_input.a.x;
    let var_1 = func_2(_wgslsmith_f_op_f32(func_2(func_4(Struct_4(arg_0.a, 1210f, arg_0.a.d)).c.d.x).b * -1000f));
    var var_2 = ~arg_0.a.e.x;
    global0 = 4294967295u;
    return select(vec2<bool>(!(u_input.a.x < u_input.a.x), false), !vec2<bool>(var_0, var_1.a.e.x >= min(arg_0.a.e.x, arg_0.a.e.x)), select(!select(vec2<bool>(true, true), vec2<bool>(true, var_1.a.a), true), vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, false), false)), all(select(vec3<bool>(false, false, var_0), vec3<bool>(false, true, false), vec3<bool>(true, false, var_0)))), vec2<bool>(true, var_1.a.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_1 = ~(~firstTrailingBit(~u_input.a.x));
    var_1 = 40716u;
    var var_2 = false;
    var var_3 = func_5(func_1(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(51652u, u_input.a.x, 159087u, 14275u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 41976u)))));
    var_3 = vec2<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) != 335f);
    var var_4 = !(!(!func_5(Struct_4(Struct_1(var_3.x, false, vec2<f32>(var_0, var_0), vec4<f32>(278f, 179f, var_0, -428f), vec2<i32>(1i, 1i)), var_0, vec4<f32>(-791f, var_0, 255f, var_0)))));
    let var_5 = var_0;
    let var_6 = select(select(vec4<bool>(false, true, any(select(vec3<bool>(var_3.x, true, var_3.x), vec3<bool>(false, false, true), vec3<bool>(true, var_4.x, var_3.x))), -323f > _wgslsmith_f_op_f32(var_5 - -334f)), select(select(select(vec4<bool>(var_4.x, true, true, false), vec4<bool>(true, var_3.x, false, true), vec4<bool>(var_3.x, var_3.x, var_4.x, true)), vec4<bool>(false, var_3.x, true, var_4.x), !vec4<bool>(false, false, var_3.x, var_4.x)), vec4<bool>(true, var_4.x, var_3.x, true), !vec4<bool>(var_3.x, var_3.x, var_4.x, false)), vec4<bool>(var_4.x, true, var_3.x, true)), select(select(select(vec4<bool>(var_4.x, true, true, var_3.x), !vec4<bool>(var_3.x, false, true, true), true), !select(vec4<bool>(true, var_4.x, var_4.x, var_4.x), vec4<bool>(var_3.x, false, var_4.x, var_4.x), true), select(select(vec4<bool>(var_3.x, false, false, var_4.x), vec4<bool>(false, false, var_4.x, var_3.x), true), select(vec4<bool>(true, var_3.x, var_4.x, true), vec4<bool>(var_3.x, true, true, false), var_4.x), select(vec4<bool>(false, false, var_4.x, true), vec4<bool>(false, var_3.x, true, var_3.x), vec4<bool>(true, var_3.x, true, var_3.x)))), !select(vec4<bool>(true, false, true, true), vec4<bool>(var_4.x, false, false, var_3.x), select(vec4<bool>(var_4.x, var_3.x, true, var_4.x), vec4<bool>(true, true, var_4.x, var_3.x), vec4<bool>(false, var_3.x, true, false))), true), select(!(!(!vec4<bool>(true, var_3.x, var_4.x, var_3.x))), !vec4<bool>(true, !var_4.x, true, select(false, var_3.x, var_4.x)), vec4<bool>(true, true, func_5(Struct_4(Struct_1(var_3.x, var_4.x, vec2<f32>(733f, var_5), vec4<f32>(var_0, var_0, var_0, 1423f), vec2<i32>(-14096i, 1i)), 384f, vec4<f32>(var_0, var_5, var_5, -1090f))).x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~u_input.a.x, ~countOneBits(u_input.a.x), u_input.a.x), func_1(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 0u, ~1u, _wgslsmith_mod_u32(u_input.a.x, 0u)), countOneBits(~vec4<u32>(4294967295u, 16459u, 10863u, u_input.a.x)))).a.e.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1936f, var_5, -218f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(461f, var_5, 130f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1831f, var_5, 917f))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, var_5) * vec3<f32>(var_5, 397f, var_5)))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-286f, var_0, var_0) + vec3<f32>(245f, -1036f, -1387f)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, 1000f, -1000f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(760f, _wgslsmith_f_op_f32(var_0 - var_0), -632f, _wgslsmith_f_op_f32(round(var_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 629f, -770f, var_5) * vec4<f32>(529f, var_5, 541f, var_0)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0, 865f, var_0, 562f)))))));
}

