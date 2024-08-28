struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<u32> = vec2<u32>(34772u, 22141u);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: bool) -> f32 {
    let var_0 = Struct_2(select(select(!vec2<bool>(true, arg_1.b), vec2<bool>(arg_1.a != 664f, true), vec2<bool>(any(vec2<bool>(arg_2, true)), !arg_2)), arg_1.c, -510f > _wgslsmith_f_op_f32(ceil(-1331f))), arg_1, Struct_1(arg_1.a, arg_2, select(!select(vec2<bool>(true, true), arg_1.c, false), arg_1.c, arg_1.c), vec3<i32>(arg_1.d.x, select(countOneBits(u_input.c), arg_0.x, !arg_1.c.x), u_input.c)), Struct_1(_wgslsmith_f_op_f32(trunc(arg_1.a)), !arg_2, select(vec2<bool>(all(vec4<bool>(arg_2, true, arg_1.c.x, arg_2)), !arg_1.c.x), vec2<bool>(arg_2, false), all(select(vec3<bool>(arg_2, false, arg_2), vec3<bool>(arg_1.c.x, true, true), vec3<bool>(false, arg_2, arg_1.c.x)))), min(_wgslsmith_div_vec3_i32(arg_0, arg_1.d) >> (vec3<u32>(4294967295u, 0u, 19089u) % vec3<u32>(32u)), arg_1.d)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b.a, var_0.b.a)))), all(vec2<bool>(false, !var_0.a.x | true)), vec2<bool>(false, var_0.b.b), var_0.b.d << (u_input.a.wzx % vec3<u32>(32u)));
    var var_2 = false;
    let var_3 = ~countOneBits(~(~vec4<u32>(u_input.a.x, 0u, 0u, 26667u)));
    let var_4 = var_1.a;
    return -853f;
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    global0 = true;
    var var_0 = Struct_2(!select(arg_0.c, select(vec2<bool>(arg_0.b, true), arg_0.c, arg_0.c.x || false), true), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<i32>(-49969i, u_input.c, arg_0.d.x), Struct_1(arg_0.a, false, vec2<bool>(true, false), vec3<i32>(-14891i, -32345i, u_input.c)), any(vec2<bool>(arg_0.b, arg_0.c.x))))), all(select(select(vec4<bool>(arg_0.c.x, true, arg_0.c.x, true), vec4<bool>(arg_0.b, false, true, arg_0.b), true), vec4<bool>(arg_0.b, arg_0.b, arg_0.b, arg_0.c.x), vec4<bool>(false, false, true, false))), !arg_0.c, -firstLeadingBit(vec3<i32>(-2147483647i, arg_0.d.x, arg_0.d.x))), arg_0, arg_0);
    var var_1 = ~vec3<u32>(~global1.x, 4294967295u, 0u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, 8285u) >> (u_input.a.yxx % vec3<u32>(32u)), u_input.a.yyx) % 32u));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)) + -1275f) - -659f), any(select(!select(vec3<bool>(true, false, false), vec3<bool>(false, arg_0.c.x, false), vec3<bool>(true, var_0.b.b, false)), !vec3<bool>(arg_0.b, arg_0.b, true), true)), !select(select(select(arg_0.c, var_0.c.c, var_0.b.c), !vec2<bool>(var_0.c.b, false), select(arg_0.c, vec2<bool>(arg_0.c.x, arg_0.b), arg_0.c.x)), var_0.a, !select(true, var_0.a.x, true)), ~var_0.d.d);
    var_1 = _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(~u_input.a.x, 4294967295u, reverseBits(0u)), ~(reverseBits(u_input.b.zwy) >> (u_input.a.zyz % vec3<u32>(32u)))), u_input.b.wwz);
    return vec2<bool>(false, false);
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: vec2<u32>) -> f32 {
    let var_0 = !arg_0;
    var var_1 = arg_0 && arg_0;
    let var_2 = u_input.c;
    var var_3 = Struct_2(select(!select(vec2<bool>(var_0, arg_0), !vec2<bool>(false, arg_0), func_2(Struct_1(arg_1.x, arg_0, vec2<bool>(arg_0, arg_0), vec3<i32>(var_2, u_input.c, var_2)))), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(!arg_0, var_0 && false), any(vec3<bool>(arg_0, true, var_0)))), Struct_1(_wgslsmith_f_op_f32(abs(-1956f)), select(arg_0, true, arg_0), vec2<bool>(!(!arg_0), (false | var_0) || true), reverseBits(-(vec3<i32>(-20100i, var_2, u_input.c) >> (vec3<u32>(10236u, arg_2.x, 4294967295u) % vec3<u32>(32u))))), Struct_1(arg_1.x, func_2(Struct_1(2242f, select(var_0, var_0, arg_0), !vec2<bool>(false, arg_0), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -1i, u_input.c), vec3<i32>(-1i, -63228i, var_2)))).x, select(select(func_2(Struct_1(-1000f, arg_0, vec2<bool>(var_0, true), vec3<i32>(2147483647i, u_input.c, var_2))), vec2<bool>(true, true), func_2(Struct_1(arg_1.x, var_0, vec2<bool>(true, var_0), vec3<i32>(u_input.c, -1i, -1i)))), select(!vec2<bool>(arg_0, arg_0), !vec2<bool>(var_0, arg_0), vec2<bool>(var_0, var_0)), func_2(Struct_1(-525f, var_0, vec2<bool>(true, false), vec3<i32>(-2626i, u_input.c, 1i)))), _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(u_input.c, var_2), -1i ^ var_2, 2147483647i), ~vec3<i32>(1i, -1i, u_input.c) << (~u_input.a.wxx % vec3<u32>(32u)))), Struct_1(_wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-599f))))), arg_0, func_2(Struct_1(arg_1.x, !arg_0, vec2<bool>(false, var_0), abs(vec3<i32>(var_2, 7801i, 31498i)))), _wgslsmith_mod_vec3_i32(select(vec3<i32>(14751i, 8600i, -24494i), vec3<i32>(36752i, 3830i, var_2) | vec3<i32>(17623i, u_input.c, -21694i), all(vec4<bool>(false, var_0, false, false))), -_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, u_input.c, u_input.c), vec3<i32>(u_input.c, 44166i, var_2)))));
    var var_4 = select(select(vec4<bool>(!all(vec2<bool>(false, true)), arg_0, any(!vec4<bool>(arg_0, arg_0, true, arg_0)), select(false && arg_0, any(vec3<bool>(arg_0, var_0, var_3.b.c.x)), select(true, var_3.b.c.x, arg_0))), !(!select(vec4<bool>(var_0, var_3.b.b, arg_0, false), vec4<bool>(arg_0, var_3.c.b, false, var_0), true)), !(_wgslsmith_mult_i32(0i, u_input.c) < _wgslsmith_sub_i32(0i, u_input.c))), !vec4<bool>(arg_0, all(select(vec2<bool>(true, arg_0), vec2<bool>(false, true), false)), select(u_input.d.x >= 55801u, !arg_0, var_3.a.x), true), arg_0);
    return _wgslsmith_f_op_f32(-815f * _wgslsmith_f_op_f32(-var_3.c.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(!(all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true))) | false), !(2147483647i > firstTrailingBit(u_input.c)), true, all(vec4<bool>(~global1.x <= ~4294967295u, true, true, any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))))));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(false, _wgslsmith_f_op_vec2_f32(vec2<f32>(539f, 596f) * vec2<f32>(-959f, 743f)), ~u_input.b.wy)) - 1372f))));
    var var_2 = ~(~global1.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1219f + var_1) * _wgslsmith_div_f32(var_1, -1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-326f * 905f))), _wgslsmith_f_op_f32(func_1(!var_0.x, vec2<f32>(_wgslsmith_div_f32(var_1, var_1), _wgslsmith_f_op_f32(f32(-1f) * -1685f)), u_input.b.xy << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(-364f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(656f - 1254f))))));
    var var_4 = Struct_2(!func_2(Struct_1(_wgslsmith_f_op_f32(abs(var_1)), all(vec4<bool>(var_0.x, var_0.x, false, var_0.x)), var_0.xz, _wgslsmith_sub_vec3_i32(vec3<i32>(1i, u_input.c, -1i), vec3<i32>(1i, 2147483647i, -32438i)))), Struct_1(var_1, true, vec2<bool>(all(var_0.zyw), true), firstTrailingBit(firstLeadingBit(abs(vec3<i32>(-1i, -1i, -6781i))))), Struct_1(_wgslsmith_f_op_f32(func_1(!(var_0.x && true), var_3.wz, abs(reverseBits(vec2<u32>(u_input.a.x, 32486u))))), false, vec2<bool>(true, true), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -69833i, u_input.c), vec3<i32>(0i, u_input.c, u_input.c)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, 286i, u_input.c), vec3<i32>(u_input.c, u_input.c, u_input.c))) | abs(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, 12660i, u_input.c), vec3<i32>(u_input.c, -1i, u_input.c)))), Struct_1(_wgslsmith_f_op_f32(abs(804f)), true, func_2(Struct_1(var_1, all(vec4<bool>(true, var_0.x, false, true)), func_2(Struct_1(-791f, var_0.x, vec2<bool>(var_0.x, var_0.x), vec3<i32>(-1i, 52264i, u_input.c))), vec3<i32>(-9274i, u_input.c, u_input.c) >> (u_input.b.wyw % vec3<u32>(32u)))), ((vec3<i32>(u_input.c, u_input.c, 1308i) | vec3<i32>(u_input.c, 66715i, 1i)) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, u_input.c, -92543i), vec3<i32>(u_input.c, u_input.c, -1802i))) & (vec3<i32>(-1i) * -vec3<i32>(-76190i, u_input.c, 0i))));
    var var_5 = Struct_1(_wgslsmith_f_op_f32(-var_4.b.a), var_0.x, vec2<bool>(firstLeadingBit(abs(u_input.c)) != 1i, false), countOneBits(var_4.b.d));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, global1.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_4.b.a, var_1))), vec3<f32>(_wgslsmith_f_op_f32(var_1 - var_3.x), var_3.x, _wgslsmith_f_op_f32(sign(-610f)))) + vec3<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.d.a) * 1f), _wgslsmith_f_op_f32(func_1(true, vec2<f32>(-1295f, 178f), ~vec2<u32>(u_input.d.x, u_input.b.x))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-500f - _wgslsmith_f_op_f32(var_5.a - var_1))), _wgslsmith_f_op_f32(func_1(func_2(var_4.d).x, var_3.yw, ~u_input.d))));
}

