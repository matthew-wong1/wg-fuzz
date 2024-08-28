struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<bool>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: f32, arg_1: i32) -> i32 {
    let var_0 = Struct_4(!vec3<bool>(global1.x, !all(vec4<bool>(true, global1.x, false, true)), true), u_input.a | u_input.a);
    var var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(49971i, arg_1), vec2<i32>(1i, ~arg_1)) & vec2<i32>(-1i, arg_1);
    global1 = var_0.a.zz;
    let var_2 = Struct_1(vec3<f32>(-1155f, _wgslsmith_f_op_f32(arg_0 + arg_0), arg_0), vec4<u32>(u_input.a, 58987u, u_input.a, firstLeadingBit(_wgslsmith_sub_u32(41785u, u_input.a))) | ~_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(31148u, var_0.b, u_input.a, 4294967295u), vec4<u32>(15586u, u_input.a, var_0.b, 16167u)), vec4<u32>(59371u, u_input.a, u_input.a, var_0.b), ~vec4<u32>(u_input.a, u_input.a, 19921u, 1u)));
    var var_3 = var_0;
    return var_1.x & arg_1;
}

fn func_3(arg_0: Struct_1) -> f32 {
    global1 = select(select(vec2<bool>(all(select(vec2<bool>(global1.x, global1.x), vec2<bool>(true, true), true)), any(vec3<bool>(global1.x, true, true))), vec2<bool>(global1.x, true), !global1.x), select(vec2<bool>(all(select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(false, global1.x, false), vec3<bool>(false, global1.x, true))), false), vec2<bool>(false, global1.x), any(vec4<bool>(global1.x, !global1.x, false, arg_0.a.x != 910f))), false);
    var var_0 = vec2<bool>(true, false);
    var_0 = select(select(!vec2<bool>(all(vec2<bool>(var_0.x, true)), !global1.x), select(vec2<bool>(true, global1.x & false), vec2<bool>(false, var_0.x & global1.x), !var_0.x), select(true, true, false)), vec2<bool>(!(!any(vec2<bool>(true, false))), var_0.x), vec2<bool>(!var_0.x, true));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(arg_0.a.x)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -765f) - -1108f));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + arg_0.a.x) - _wgslsmith_f_op_f32(exp2(arg_0.a.x))))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, 1383f, arg_0.a.x)) + vec3<f32>(_wgslsmith_f_op_f32(trunc(1094f)), _wgslsmith_f_op_f32(exp2(var_1)), 540f)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 57151u, 71770u), vec4<u32>(u_input.a, u_input.a, 29593u, u_input.a), arg_0.b) | arg_0.b), _wgslsmith_dot_vec3_i32(max(select(max(vec3<i32>(0i, -24295i, 2147483647i), vec3<i32>(-1i, -1i, 65416i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-25077i, 1i, 2147483647i), vec3<i32>(0i, 1i, -1i), vec3<i32>(-2358i, 11219i, -7594i)), !vec3<bool>(false, global1.x, false)), -vec3<i32>(24474i, 15089i, -2147483647i)), min(-reverseBits(vec3<i32>(36109i, 1i, 2147483647i)), ~(-vec3<i32>(-1i, 35180i, -32264i)))));
    return var_1;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: bool) -> Struct_1 {
    let var_0 = ~_wgslsmith_mult_i32(func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-577f)))), -arg_1.x), arg_1.x);
    global1 = vec2<bool>(true, true);
    let var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1185f, -297f)), -733f), -485f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(Struct_1(vec3<f32>(-481f, -1137f, 2201f), vec4<u32>(4294967295u, u_input.a, u_input.a, 32670u) << (vec4<u32>(u_input.a, 3468u, u_input.a, u_input.a) % vec4<u32>(32u))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1799f + 524f))))))));
    let var_2 = _wgslsmith_mod_i32(~arg_1.x, var_0);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2500f * _wgslsmith_f_op_f32(f32(-1f) * -1388f)) - _wgslsmith_f_op_f32(var_1.x * var_1.x)), var_1.x)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(var_1, vec3<f32>(var_1.x, -804f, 728f), arg_0.xyx)))) + _wgslsmith_f_op_vec3_f32(sign(var_1)))), select(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 71801u), vec4<u32>(u_input.a, u_input.a, 53803u, u_input.a))), abs(abs(vec4<u32>(0u, u_input.a, 39042u, 3284u))), vec4<bool>(all(select(vec4<bool>(arg_3, arg_0.x, false, true), arg_0, arg_2.x)), true, all(select(arg_2.wx, arg_0.yx, arg_0.wx)), global1.x)));
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    let var_0 = any(!select(vec3<bool>(global1.x, global1.x, true), select(!vec3<bool>(global1.x, false, global1.x), !vec3<bool>(true, false, global1.x), global1.x), vec3<bool>(any(vec4<bool>(global1.x, global1.x, global1.x, true)), !global1.x, global1.x)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(func_1(select(!vec4<bool>(var_0, false, true, true), vec4<bool>(var_0, global1.x, false, false), !var_0), vec2<i32>(1i, 1i), !vec4<bool>(false, var_0, true, true), _wgslsmith_f_op_f32(-152f + arg_0.a.x) == _wgslsmith_f_op_f32(-arg_0.a.x)))) * _wgslsmith_f_op_f32(-arg_0.a.x));
    let var_2 = 1u;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(var_1, arg_0.a.x)), arg_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.x, -2104f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, var_1)))))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-327f)) - _wgslsmith_f_op_f32(-254f + 1091f)), arg_0.a.x) + func_1(select(select(vec4<bool>(global1.x, var_0, global1.x, var_0), vec4<bool>(false, global1.x, global1.x, true), vec4<bool>(false, true, var_0, true)), select(vec4<bool>(false, var_0, false, global1.x), vec4<bool>(false, global1.x, var_0, true), vec4<bool>(true, var_0, true, global1.x)), select(vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(var_0, var_0, false, true), vec4<bool>(true, true, var_0, false))), ~vec2<i32>(2147483647i, 2147483647i) >> (arg_0.b.wz % vec2<u32>(32u)), select(vec4<bool>(var_0, var_0, var_0, false), select(vec4<bool>(var_0, false, false, global1.x), vec4<bool>(global1.x, var_0, var_0, var_0), vec4<bool>(var_0, true, true, false)), vec4<bool>(var_0, true, true, true)), !(!var_0)).a.x));
    global1 = select(!vec2<bool>(!any(vec4<bool>(global1.x, var_0, false, true)), true), vec2<bool>(any(vec3<bool>(true, any(vec3<bool>(global1.x, var_0, false)), global1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-arg_0.a.x)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-872f, 2254f)))), select(select(vec2<bool>(any(vec3<bool>(true, global1.x, global1.x)), true), select(select(vec2<bool>(global1.x, var_0), vec2<bool>(false, var_0), false), !vec2<bool>(var_0, true), !global1.x), true), select(vec2<bool>(global1.x, all(vec4<bool>(global1.x, global1.x, false, global1.x))), !select(vec2<bool>(global1.x, false), vec2<bool>(var_0, false), vec2<bool>(false, false)), u_input.a == ~var_2), select(select(vec2<bool>(var_0, false), select(vec2<bool>(false, true), vec2<bool>(false, global1.x), var_0), !var_0), vec2<bool>(true, any(vec3<bool>(global1.x, true, var_0))), !(!vec2<bool>(true, global1.x)))));
    return Struct_3(vec2<bool>(all(vec4<bool>(all(vec3<bool>(var_0, var_0, false)), true, !var_0, true)), var_1 > 394f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(!(!(!vec4<bool>(true, global1.x, global1.x, false))), vec2<i32>(i32(-1i) * -2147483647i, ~1i), !select(!vec4<bool>(global1.x, true, false, global1.x), select(vec4<bool>(false, global1.x, global1.x, false), vec4<bool>(true, false, true, global1.x), vec4<bool>(false, false, global1.x, global1.x)), global1.x), all(vec4<bool>(false, global1.x, false, global1.x)) && !any(vec3<bool>(global1.x, false, global1.x))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(205f, 197f, -1000f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(trunc(-689f)), -340f, _wgslsmith_f_op_f32(676f - 754f)))), any(vec4<bool>(!global1.x, true, var_0.a.x, select(global1.x, global1.x, global1.x))))), vec4<u32>(~min(~u_input.a, u_input.a), u_input.a, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a, u_input.a)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(3609u, 0u))), ~0u), u_input.a));
    var var_2 = true;
    let var_3 = -412f;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b);
}

