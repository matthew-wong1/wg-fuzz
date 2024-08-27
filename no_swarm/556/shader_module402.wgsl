struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-261f, arg_0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -1055f)), false)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0, arg_0))))))));
    let var_1 = u_input.d;
    var var_2 = max(abs(-(firstTrailingBit(u_input.a) & vec2<i32>(u_input.c.x, u_input.a.x))), u_input.c.zz);
    var var_3 = ~(-34425i);
    let var_4 = Struct_2(Struct_1(~131557u, select(vec2<bool>(true, true), vec2<bool>(true, true), !select(false, true, true)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 1148f, var_0.x) - vec4<f32>(arg_0, arg_0, var_0.x, var_0.x)) - vec4<f32>(arg_0, -1724f, var_0.x, var_0.x)))), -u_input.c << (~(~vec3<u32>(20236u, var_1, 924u)) % vec3<u32>(32u))), Struct_1(min(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 27453u) >> (vec2<u32>(var_1, var_1) % vec2<u32>(32u)), ~vec2<u32>(4294967295u, 0u)), var_1 | ~var_1), select(select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, false), false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)))), vec4<f32>(1125f, arg_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 + -777f), _wgslsmith_f_op_f32(-var_0.x), select(false, false, false))), arg_0), ~max(u_input.c, vec3<i32>(38149i, -2147483647i, 0i)) >> (vec3<u32>(countOneBits(var_1), 1u, firstLeadingBit(u_input.d)) % vec3<u32>(32u))));
    return var_4.b.c.x;
}

fn func_2(arg_0: vec4<i32>) -> vec4<f32> {
    let var_0 = 71256u;
    let var_1 = Struct_3(false, Struct_1(u_input.d, vec2<bool>(any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(f32(-1f) * -1000f) >= _wgslsmith_f_op_f32(func_3(-567f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(323f, 305f, 2526f, 937f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(315f, -667f, -1000f, -1000f)))))), reverseBits(abs(u_input.c & vec3<i32>(u_input.b, 2147483647i, -4209i)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.c.x));
    var var_3 = ~vec4<u32>(var_0, 1u, ~max(var_1.b.a, firstTrailingBit(var_1.b.a)), ~0u);
    var var_4 = var_1.b;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -537f), _wgslsmith_f_op_f32(trunc(240f)), var_1.b.c.x, var_4.c.x) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.b.c.x, 310f, -169f, var_2), vec4<f32>(var_2, var_2, 264f, var_1.b.c.x), !vec4<bool>(var_4.b.x, var_4.b.x, var_1.a, var_1.a))))) - _wgslsmith_f_op_vec4_f32(-var_4.c));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_1(u_input.d ^ firstTrailingBit(u_input.d), !select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(false, true, true, true)), true), false), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_2(vec4<i32>(u_input.a.x, 1i, 32479i, 0i) << (vec4<u32>(1u, u_input.d, u_input.d, u_input.d) % vec4<u32>(32u)))))))), reverseBits(firstTrailingBit(-select(u_input.c, u_input.c, vec3<bool>(true, false, false)))));
    var var_1 = Struct_2(Struct_1(39020u, vec2<bool>(true, false), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(-var_0.c.x), var_0.c.x, -2130f), ~select(vec3<i32>(-17839i, u_input.b, -11591i), var_0.d, !vec3<bool>(true, true, var_0.b.x))), Struct_1(_wgslsmith_add_u32(var_0.a, _wgslsmith_clamp_u32(var_0.a, var_0.a, abs(u_input.d))), !select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), !vec2<bool>(false, var_0.b.x), vec2<bool>(true, var_0.b.x)), var_0.c, firstTrailingBit(vec3<i32>(u_input.c.x, 52165i, var_0.d.x)) << (_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, 91924u, 1u), vec3<u32>(4294967295u, 12379u, 65469u), vec3<u32>(96530u, 4294967295u, 0u)), ~vec3<u32>(1u, var_0.a, 0u)) % vec3<u32>(32u))));
    var var_2 = var_1.b;
    var_1 = Struct_2(Struct_1(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.d, var_0.a >> (25022u % 32u)), ~u_input.d & 32350u), var_0.b, var_1.a.c, ~(-(var_1.a.d << (vec3<u32>(19163u, u_input.d, var_2.a) % vec3<u32>(32u))))), Struct_1(min(1u, ~4294967295u), !var_2.b, vec4<f32>(1209f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(max(var_0.c.x, -345f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.c.x + 1838f), var_1.b.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1011f) - -189f)), var_2.d));
    var_2 = Struct_1(select(abs(abs(_wgslsmith_mult_u32(1u, var_2.a))), 4294967295u, all(select(var_0.b, var_2.b, var_0.b))), var_2.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, var_0.c.x, _wgslsmith_f_op_f32(func_3(-467f)), -1270f)), firstLeadingBit(select(-vec3<i32>(var_0.d.x, var_0.d.x, u_input.a.x) | vec3<i32>(-1i, -1i, -2147483647i), _wgslsmith_clamp_vec3_i32(~u_input.c, ~u_input.c, -var_1.a.d), select(vec3<bool>(true, true, var_0.b.x), !vec3<bool>(true, var_2.b.x, var_0.b.x), !var_1.a.b.x))));
    return Struct_2(Struct_1(_wgslsmith_mod_u32(~u_input.d, _wgslsmith_mod_u32(var_2.a | u_input.d, ~4294967295u)), select(select(vec2<bool>(var_1.a.b.x, var_0.b.x), var_0.b, !var_0.b.x), !vec2<bool>(var_2.b.x, var_2.b.x), !vec2<bool>(var_2.b.x, var_2.b.x)), vec4<f32>(var_1.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.c.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1512f, var_0.c.x))), ~(-var_1.a.d) >> (~select(vec3<u32>(4294967295u, u_input.d, 65120u), vec3<u32>(var_1.a.a, u_input.d, 13593u), vec3<bool>(var_0.b.x, var_1.b.b.x, var_2.b.x)) % vec3<u32>(32u))), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.a, var_2.a, var_0.a), firstLeadingBit(vec3<u32>(var_1.a.a, var_1.a.a, var_1.b.a))), select(vec2<bool>(true, true), select(select(var_0.b, vec2<bool>(var_0.b.x, var_0.b.x), false), select(vec2<bool>(true, true), vec2<bool>(false, false), var_2.b), false), vec2<bool>(var_1.a.b.x, any(vec4<bool>(true, true, var_2.b.x, true)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(var_0.c.x + 253f), _wgslsmith_f_op_f32(floor(var_0.c.x)), -273f, -1001f), vec4<f32>(-1512f, _wgslsmith_f_op_f32(floor(1000f)), -1199f, -2558f), !(!vec4<bool>(var_1.a.b.x, true, var_1.b.b.x, var_2.b.x)))), var_0.d));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: f32) -> Struct_3 {
    var var_0 = !vec4<bool>(!arg_2.b.b.x, any(select(vec4<bool>(false, true, true, false), vec4<bool>(arg_2.a.b.x, true, false, arg_2.a.b.x), select(vec4<bool>(false, false, false, arg_0.b.x), vec4<bool>(arg_2.a.b.x, arg_0.b.x, true, true), arg_0.b.x))), arg_0.b.x, arg_2.a.b.x);
    let var_1 = Struct_2(func_1().b, Struct_1(~func_1().b.a, select(!(!arg_0.b), var_0.yz, false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(175f, 1738f, arg_2.b.c.x, -287f)))), vec3<i32>(-1i) * -arg_2.b.d));
    var_0 = select(select(!vec4<bool>(select(arg_2.a.b.x, true, arg_0.b.x), all(vec4<bool>(true, true, arg_0.b.x, var_0.x)), var_1.a.b.x, var_0.x), vec4<bool>(arg_0.b.x, -var_1.a.d.x >= _wgslsmith_dot_vec2_i32(arg_0.d.xy, arg_2.b.d.yx), false, _wgslsmith_div_u32(u_input.d, 4294967295u) != _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.b.a, u_input.d), vec3<u32>(arg_0.a, arg_2.b.a, var_1.b.a))), vec4<bool>(!(!arg_0.b.x), !all(vec4<bool>(var_1.a.b.x, false, false, true)), all(vec3<bool>(true, true, true)), true)), vec4<bool>(_wgslsmith_f_op_f32(sign(187f)) <= _wgslsmith_f_op_f32(trunc(173f)), arg_0.b.x, select(!(!var_0.x), var_1.a.b.x, arg_0.b.x), -1125f != _wgslsmith_f_op_f32(-arg_2.a.c.x)), select(vec4<bool>(var_0.x, any(select(vec4<bool>(arg_0.b.x, arg_0.b.x, true, arg_2.b.b.x), vec4<bool>(true, var_0.x, var_0.x, var_0.x), var_1.b.b.x)), -47117i <= _wgslsmith_dot_vec2_i32(arg_0.d.zx, arg_2.a.d.yz), true), !select(select(vec4<bool>(true, false, var_1.b.b.x, var_0.x), vec4<bool>(var_1.a.b.x, var_0.x, var_1.a.b.x, true), true), vec4<bool>(false, true, arg_0.b.x, true), select(vec4<bool>(var_0.x, arg_2.b.b.x, var_1.a.b.x, false), vec4<bool>(arg_0.b.x, false, var_1.b.b.x, var_0.x), vec4<bool>(true, false, false, var_0.x))), !all(vec4<bool>(false, true, true, false))));
    var_0 = !(!vec4<bool>(true, true, arg_2.a.b.x, var_1.a.b.x | arg_2.a.b.x));
    return Struct_3(!(!any(vec4<bool>(arg_0.b.x, false, true, var_0.x))), var_1.b);
}

fn func_5(arg_0: f32, arg_1: vec3<i32>, arg_2: vec2<f32>, arg_3: Struct_3) -> Struct_1 {
    var var_0 = arg_3.b;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(trunc(-1147f)), 968f, -196f, arg_0);
    return func_1().b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(1i, u_input.c.x);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-481f + -1381f) + _wgslsmith_div_f32(-859f, 175f)) * _wgslsmith_f_op_f32(floor(511f)))));
    let var_2 = Struct_3(true, func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(928f + -1389f), _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(var_1 - 612f))), vec3<i32>(var_0 | ~(-2147483647i), _wgslsmith_sub_i32(~var_0, -1i), u_input.c.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-794f, var_1) - vec2<f32>(var_1, var_1)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) + vec2<f32>(var_1, -450f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1275f, 1731f) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1, -710f)))), !select(vec2<bool>(false, true), vec2<bool>(false, true), true))), func_4(Struct_1(_wgslsmith_add_u32(4294967295u, u_input.d), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1, var_1, var_1, -191f), vec4<f32>(-1034f, -1882f, 863f, var_1))), ~vec3<i32>(var_0, -1i, u_input.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -266f), _wgslsmith_f_op_f32(f32(-1f) * -746f)), func_1(), _wgslsmith_f_op_f32(743f - _wgslsmith_f_op_f32(-616f + 250f)))));
    var var_3 = func_1();
    var var_4 = 955f;
    let x = u_input.a;
    s_output = StorageBuffer(1u, -2147483647i, var_3.a.c.yx, var_2.b.c.zxw);
}

