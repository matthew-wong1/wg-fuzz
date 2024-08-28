struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
    e: i32,
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<f32>) -> f32 {
    var var_0 = Struct_2(!vec3<bool>(select(arg_1.e.x, u_input.b.x < 4294967295u, 24239i != arg_0.x), !any(vec4<bool>(arg_2.a.x, arg_1.e.x, arg_2.b.e.x, arg_2.b.e.x)), !(2147483647i >= arg_2.b.d)), arg_1);
    var var_1 = vec2<bool>(_wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -627f), _wgslsmith_f_op_f32(-arg_1.a)))) >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_3.x), -252f, false)), !arg_1.e.x);
    var_1 = select(select(var_0.b.e, select(!arg_2.b.e, select(select(arg_2.a.xx, var_0.a.yy, arg_1.e), select(vec2<bool>(arg_2.a.x, true), arg_1.e, vec2<bool>(arg_1.e.x, var_0.b.e.x)), arg_1.e.x || false), !vec2<bool>(arg_2.a.x, arg_2.b.e.x)), select(arg_2.b.e, arg_1.e, var_1.x)), !var_0.b.e, arg_1.e);
    let var_2 = vec3<bool>(any(!(!vec4<bool>(var_1.x, true, var_0.b.e.x, true))) == any(var_0.a), false, var_1.x);
    var_0 = Struct_2(!vec3<bool>(var_0.a.x, var_1.x, true), Struct_1(_wgslsmith_f_op_f32(-arg_3.x), ~(firstLeadingBit(16507i) | -arg_2.b.d), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(0u, u_input.b.x)), _wgslsmith_clamp_u32(56753u, var_0.b.c, var_0.b.c), select(u_input.b.x, 4294967295u, arg_2.b.e.x), arg_2.b.c), select(reverseBits(vec4<u32>(4294967295u, 24258u, var_0.b.c, arg_2.b.c)), firstTrailingBit(vec4<u32>(4294967295u, 1u, arg_2.b.c, 4294967295u)), vec4<bool>(true, arg_1.e.x, false, arg_1.e.x))), 0i, var_0.a.xy));
    return var_0.b.a;
}

fn func_4(arg_0: Struct_1) -> i32 {
    var var_0 = Struct_2(!(!(!(!vec3<bool>(arg_0.e.x, arg_0.e.x, arg_0.e.x)))), Struct_1(arg_0.a, ~(-68957i), arg_0.c, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.d.yww, vec3<i32>(u_input.c, 16011i, -7430i)) << (~vec3<u32>(arg_0.c, u_input.b.x, 42603u) % vec3<u32>(32u)), vec3<i32>(62603i, 2147483647i, 30752i)), select(vec2<bool>(arg_0.e.x, arg_0.e.x), !(!vec2<bool>(arg_0.e.x, arg_0.e.x)), all(arg_0.e))));
    let var_1 = vec2<bool>(false || arg_0.e.x, true);
    let var_2 = arg_0.e.x;
    var_0 = Struct_2(var_0.a, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + arg_0.a)), arg_0.a), -51173i, ~firstTrailingBit(_wgslsmith_add_u32(1u, var_0.b.c)), var_0.b.b, var_0.a.zx));
    var var_3 = Struct_1(arg_0.a, ~(firstLeadingBit(-2147483647i) & arg_0.b), 9240u, _wgslsmith_clamp_i32(-36026i, reverseBits(~u_input.e), -firstLeadingBit(abs(arg_0.d))), var_0.b.e);
    return abs(_wgslsmith_clamp_i32(arg_0.b, -arg_0.b, ~(-2147483647i)));
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-314f, 560f, true)) - _wgslsmith_f_op_f32(-1232f * -1087f))) != -473f, func_4(Struct_1(_wgslsmith_f_op_f32(func_3(vec2<i32>(0i, u_input.e), Struct_1(1000f, u_input.c, 0u, u_input.a.x, vec2<bool>(false, false)), Struct_2(vec3<bool>(false, true, false), Struct_1(936f, u_input.d.x, u_input.b.x, -14305i, vec2<bool>(true, true))), vec3<f32>(427f, -971f, -1824f))), ~0i, _wgslsmith_add_u32(u_input.b.x, 57102u), -1i >> (u_input.b.x % 32u), select(vec2<bool>(false, false), vec2<bool>(true, true), false))) <= u_input.d.x);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -210f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-421f - 373f), -511f) + _wgslsmith_f_op_f32(1469f - _wgslsmith_f_op_f32(-1000f - -667f))) + 1f), -870f, _wgslsmith_f_op_f32(sign(1f)));
    let var_2 = vec3<bool>(var_0.x, any(select(!vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), select(true, var_0.x, false))) & true, select(!var_0.x, var_0.x, var_0.x));
    let var_3 = Struct_2(select(!select(var_0, vec3<bool>(true, true, false), any(vec4<bool>(var_2.x, false, false, true))), var_2, select(var_0, !(!vec3<bool>(true, var_2.x, false)), any(!var_2.zy))), Struct_1(var_1.x, _wgslsmith_div_i32(-23692i, select(i32(-1i) * -2147483647i, 1i, all(var_0))), u_input.b.x, u_input.a.x, var_0.xz));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(var_3.b.a - -345f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -705f)))), reverseBits(_wgslsmith_sub_i32(39454i, 1i)), ~_wgslsmith_add_u32(59194u, var_3.b.c), var_3.b.d, select(var_3.b.e, !(!select(vec2<bool>(true, var_0.x), var_3.a.zz, var_3.b.e.x)), var_2.x));
    return Struct_1(-1902f, -2147483647i, var_4.c, select(_wgslsmith_sub_i32(firstTrailingBit(reverseBits(var_4.b)), 0i), 1i, -1268f == _wgslsmith_f_op_f32(-var_1.x)), !select(vec2<bool>(any(var_2.yx), any(vec2<bool>(var_3.b.e.x, var_3.b.e.x))), !select(vec2<bool>(var_2.x, true), vec2<bool>(false, true), true), !(!vec2<bool>(var_3.a.x, true))));
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = ~0u;
    let var_1 = Struct_2(vec3<bool>(false, true, arg_0), func_2());
    var var_2 = min(14373i, -4222i);
    var var_3 = max(var_0, ~var_1.b.c);
    let var_4 = var_1;
    return Struct_2(select(select(vec3<bool>(var_1.b.e.x, true, false), var_1.a, select(vec3<bool>(var_4.a.x, true, false), var_4.a, true)), vec3<bool>(var_4.a.x | (var_4.b.c < 0u), var_4.a.x, all(!vec4<bool>(var_4.a.x, arg_0, false, true))), !var_1.a.x), var_1.b);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: u32, arg_3: bool) -> u32 {
    let var_0 = func_1(!any(arg_0.a.zy)).b;
    let var_1 = i32(-1i) * -(~2147483647i);
    var var_2 = func_1(arg_0.b.b > var_0.d);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.a)))), ~var_2.b.b, abs(~28335u), func_1(true).b.d, !func_1(!(!var_2.b.e.x)).a.xy);
    var_2 = func_1(any(vec4<bool>(var_0.e.x, false, var_3.a != func_2().a, !all(var_2.a))));
    return max(~(1u ^ var_3.c), _wgslsmith_mod_u32(arg_0.b.c, var_3.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(u_input.b.x, 57539u, u_input.b.x, ~_wgslsmith_mod_u32(17584u, func_5(func_1(true), u_input.b, 14844u, false)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(902f * -756f))))), reverseBits(1i), ~1u, -4970i, !select(vec2<bool>(true, true), vec2<bool>(true, select(false, true, true)), 0u >= _wgslsmith_clamp_u32(var_0.x, 1u, 38415u)));
    let var_2 = _wgslsmith_mod_i32(-1i, firstTrailingBit(reverseBits(u_input.d.x)));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(ceil(var_1.a))) + -1000f), _wgslsmith_f_op_f32(var_1.a * var_1.a));
    var_1 = Struct_1(-107f, var_1.d, 76178u << (reverseBits((var_1.c | 1u) << ((u_input.b.x << (u_input.b.x % 32u)) % 32u)) % 32u), _wgslsmith_add_i32(i32(-1i) * -var_2, 0i), !vec2<bool>(var_1.e.x, true));
    var_1 = func_2();
    var var_4 = Struct_1(-1395f, i32(-1i) * -select(_wgslsmith_add_i32(u_input.d.x, var_1.b), var_2, true), 7315u, u_input.c, !vec2<bool>(var_1.e.x, var_1.e.x || (var_1.b >= -2147483647i)));
    var var_5 = max(vec3<i32>(var_4.b, -_wgslsmith_div_i32(var_1.d, -2147483647i), ~func_4(Struct_1(var_4.a, var_4.d, 4294967295u, 11416i, var_1.e))), vec3<i32>(u_input.d.x, -2828i, var_1.d)) & -(~vec3<i32>(abs(var_2), var_4.d ^ -87291i, var_1.b));
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2().a + _wgslsmith_f_op_f32(abs(var_1.a)))), abs(-797i) >> (~(_wgslsmith_add_u32(19571u, var_0.x) & (var_0.x << (1u % 32u))) % 32u), firstLeadingBit(firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_mult_u32(1u, 1u), _wgslsmith_mod_u32(var_1.c, var_0.x)))), _wgslsmith_mod_i32(33771i, 2147483647i), select(!(!select(var_4.e, var_4.e, var_1.e)), vec2<bool>(true, true), !select(var_1.e, func_1(var_4.e.x).b.e, !vec2<bool>(var_4.e.x, true))));
    let x = u_input.a;
    s_output = StorageBuffer(446f, _wgslsmith_f_op_f32(-var_4.a));
}

