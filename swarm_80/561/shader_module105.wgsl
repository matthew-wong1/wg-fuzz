struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec2<u32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<bool> {
    var var_0 = !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false))), !(u_input.a != u_input.a)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), false), all(vec2<bool>(false, true))), vec4<bool>(all(vec3<bool>(true, true, false)), all(vec3<bool>(false, false, false)), true, true), true), all(vec2<bool>(true, true)));
    var_0 = !select(vec4<bool>(var_0.x, any(vec2<bool>(false, var_0.x)), any(!vec4<bool>(false, var_0.x, false, var_0.x)), true), !vec4<bool>(var_0.x || true, any(var_0.yx), false, !var_0.x), !var_0.x);
    var var_1 = Struct_2(select(vec4<i32>(u_input.a, _wgslsmith_sub_i32(-1i, 2147483647i), reverseBits(u_input.a), _wgslsmith_mult_i32(u_input.a, -35730i)), _wgslsmith_mult_vec4_i32(~vec4<i32>(-1i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, 0i, -2147483647i, u_input.a)), select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(true, true, true, true), vec4<bool>(var_0.x, true, true, var_0.x))) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), Struct_1(vec2<u32>(1u, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(596f * 1396f)))), ~vec2<u32>(1u, 1u), -577f, (_wgslsmith_mult_u32(35994u, 36193u) >> (_wgslsmith_div_u32(0u, 74406u) % 32u)) >> (~_wgslsmith_clamp_u32(2226u, 4294967295u, 31760u) % 32u)), !vec4<bool>(min(-29644i, u_input.a) != (u_input.a << (23761u % 32u)), any(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, false, false, var_0.x), var_0.x)), any(!vec3<bool>(true, var_0.x, true)), false), Struct_1(min(_wgslsmith_add_vec2_u32(~vec2<u32>(3915u, 12521u), vec2<u32>(1u, 1u)), ~(~vec2<u32>(4294967295u, 1u))), -1000f, firstLeadingBit(vec2<u32>(select(4294967295u, 22203u, var_0.x), select(7842u, 0u, var_0.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-441f, 1071f, false)))))), max(1u, _wgslsmith_mult_u32(~4294967295u, _wgslsmith_mult_u32(18548u, 0u)))), -(min(vec3<i32>(u_input.a, u_input.a, u_input.a), max(vec3<i32>(1i, u_input.a, u_input.a), vec3<i32>(1i, 14143i, u_input.a))) ^ (max(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)) | ~vec3<i32>(u_input.a, u_input.a, 16394i))));
    let var_2 = var_1.d;
    var var_3 = ~2966i;
    return var_1.c.xww;
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(max(arg_2.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.d))));
    var var_1 = Struct_4(!any(func_3()));
    let var_2 = !(!vec4<bool>(arg_2.c.x, true, true && !arg_2.c.x, var_1.a));
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1338f, _wgslsmith_f_op_f32(arg_2.d.b * 1049f)))));
    let var_3 = Struct_3(Struct_1(vec2<u32>(arg_2.d.c.x, 3765u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d.b)), vec2<u32>(_wgslsmith_add_u32(32872u & arg_2.d.c.x, arg_2.b.e), ~arg_2.b.a.x), _wgslsmith_f_op_f32(arg_2.d.d + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.d.d, arg_2.b.d)) * arg_2.d.b)), arg_2.b.e));
    return 653f;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: i32, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_4(any(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true))));
    let var_1 = !(!(!var_0.a));
    var var_2 = Struct_1(vec2<u32>(arg_0.c.x, 62993u), _wgslsmith_f_op_f32(789f - arg_0.d), abs(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.e, 30539u, arg_0.c.x), vec3<u32>(1u, arg_0.e, arg_0.e)), arg_0.a.x)), arg_3, ~(~(~arg_0.a.x) & reverseBits(4294967295u)));
    var var_3 = vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec3_i32(-arg_1.zzw, countOneBits(max(arg_1.zxy, vec3<i32>(-8608i, -1i, -2147483647i))))), u_input.a, -arg_1.x | ~arg_2, abs(1i) << ((countOneBits(var_2.e) & 1u) % 32u));
    var var_4 = select(var_1, var_0.a | func_3().x, var_1);
    return arg_0;
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: i32, arg_3: vec3<u32>) -> vec4<bool> {
    var var_0 = Struct_3(func_4(Struct_1(~vec2<u32>(arg_3.x, arg_3.x) >> (~arg_3.yz % vec2<u32>(32u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_1, arg_1))), countOneBits(vec2<u32>(12427u, 0u)) >> (~arg_3.zz % vec2<u32>(32u)), _wgslsmith_f_op_f32(func_2(arg_2 ^ 41752i, select(vec4<i32>(1i, u_input.a, -25825i, -8979i), vec4<i32>(u_input.a, u_input.a, arg_0, 2147483647i), vec4<bool>(false, true, false, false)), Struct_2(vec4<i32>(-2147483647i, u_input.a, u_input.a, arg_0), Struct_1(vec2<u32>(4294967295u, arg_3.x), 455f, arg_3.yy, -186f, arg_3.x), vec4<bool>(true, false, true, false), Struct_1(vec2<u32>(arg_3.x, 4294967295u), 971f, arg_3.zy, 736f, 22952u), vec3<i32>(1i, 0i, -1i)))), ~4294967295u), -(~(vec4<i32>(arg_0, -33133i, 1i, arg_0) >> (vec4<u32>(86707u, 4294967295u, 4294967295u, 6730u) % vec4<u32>(32u)))), 2147483647i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1, -1336f)) + 958f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + 1000f)))));
    var var_1 = Struct_1(arg_3.xy, _wgslsmith_f_op_f32(-var_0.a.d), vec2<u32>(max(arg_3.x, var_0.a.a.x), arg_3.x ^ ~_wgslsmith_sub_u32(4294967295u, arg_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(157f))) * -328f), _wgslsmith_mod_u32(var_0.a.e >> (_wgslsmith_div_u32(arg_3.x, 4294967295u) % 32u), var_0.a.c.x) & ~(~arg_3.x));
    var var_2 = Struct_3(Struct_1(vec2<u32>(~4294967295u, ~var_0.a.a.x << (~arg_3.x % 32u)), _wgslsmith_f_op_f32(f32(-1f) * -772f), func_4(var_0.a, vec4<i32>(1i, 1i, _wgslsmith_mod_i32(arg_2, arg_2), arg_2), arg_0, 729f).a, _wgslsmith_f_op_f32(-arg_1), 13978u));
    let var_3 = 1000f;
    let var_4 = Struct_2(vec4<i32>(abs(arg_2), arg_2, -421i, 56111i << (countOneBits(var_1.c.x) % 32u)) >> (vec4<u32>(1u, ~_wgslsmith_mult_u32(1u, var_0.a.e), ~var_0.a.c.x >> (abs(1u) % 32u), _wgslsmith_clamp_u32(select(22237u, arg_3.x, false), reverseBits(1u), min(var_2.a.e, 112104u))) % vec4<u32>(32u)), var_2.a, !vec4<bool>(true && any(vec2<bool>(true, false)), false, all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false))), var_2.a, abs(-(-vec3<i32>(-14426i, arg_0, 18842i) >> (abs(vec3<u32>(var_1.c.x, 4294967295u, 55022u)) % vec3<u32>(32u)))));
    return vec4<bool>(!(~_wgslsmith_clamp_i32(arg_2, -1i, u_input.a) > (-2147483647i | arg_2)), false, select(true, false, var_4.c.x), var_4.c.x);
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> Struct_4 {
    let var_0 = max(vec3<u32>(1u, 1u, 1u), ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.d.c.x, arg_0.b.c.x, 0u), vec3<u32>(arg_0.b.c.x, arg_0.b.a.x, 32252u)))) ^ ~_wgslsmith_mod_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, 23424u, arg_0.d.a.x), vec3<u32>(4294967295u, 85687u, arg_0.b.e)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, arg_0.d.c.x, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.d.c.x, 56643u, 23829u), vec3<u32>(7252u, 0u, 38469u))));
    var var_1 = vec4<f32>(-1942f, 1184f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2394f * arg_0.b.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.d) - 479f)));
    let var_2 = select(vec4<bool>(arg_1, false, !arg_0.c.x, (-u_input.a & _wgslsmith_dot_vec2_i32(vec2<i32>(163i, -1i), vec2<i32>(2147483647i, arg_0.e.x))) < -2147483647i), arg_0.c, vec4<bool>(true, false, true, (_wgslsmith_f_op_f32(-186f - arg_0.b.b) <= _wgslsmith_f_op_f32(var_1.x * 752f)) || true));
    var var_3 = arg_0;
    let var_4 = min(~reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(var_3.b.a.x, 1u, arg_0.b.e, 5690u) << (vec4<u32>(78289u, arg_0.d.a.x, arg_0.d.e, var_3.d.c.x) % vec4<u32>(32u)), ~vec4<u32>(var_3.b.a.x, var_3.d.e, 0u, 55219u))), vec4<u32>(~var_0.x, ~_wgslsmith_mod_u32(arg_0.b.a.x, 13584u) & 4294967295u, var_0.x, ~abs(var_0.x) >> (~abs(var_3.b.c.x) % 32u)));
    return Struct_4(false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (countOneBits(u_input.a) >= _wgslsmith_mod_i32(u_input.a, u_input.a)) || true;
    var var_1 = func_5(Struct_2(-vec4<i32>(u_input.a, -54567i, u_input.a << (0u % 32u), -31760i), Struct_1(~(~vec2<u32>(4294967295u, 54243u)), _wgslsmith_f_op_f32(1f * -1045f), ~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 63714u), vec2<u32>(64605u, 12024u)), 1f, 63152u), !func_1(-18671i << (0u % 32u), _wgslsmith_f_op_f32(1613f - -1000f), -8756i, vec3<u32>(0u, 1u, 38800u)), Struct_1(~vec2<u32>(1u, 0u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-335f)))), vec2<u32>(1u, 1u), 556f, 60931u), _wgslsmith_div_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 1i, 1i), vec3<i32>(-1i, u_input.a, 11537i)), countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-1i, u_input.a, 74525i))))), true);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-238f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(802f, 680f))))), 1325f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-746f, -1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -1310f), -1000f);
    var_0 = false;
    let var_3 = u_input.a;
    let var_4 = true;
    let var_5 = Struct_2(select(-_wgslsmith_mult_vec4_i32(vec4<i32>(-35894i, var_3, 20642i, var_3) << (vec4<u32>(18530u, 27588u, 4294967295u, 0u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-63592i, var_3, var_3, -49992i), vec4<i32>(0i, -1595i, u_input.a, 0i), vec4<i32>(49371i, -13117i, 1i, -48051i))), vec4<i32>(_wgslsmith_sub_i32(max(var_3, 2147483647i), min(1i, -2147483647i)), -1i, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(var_3, var_3, u_input.a)), -vec3<i32>(-2147483647i, -31949i, var_3)), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 15213i, 32412i), vec3<i32>(var_3, 2147483647i, -31725i)), select(u_input.a, 0i, var_4))), !(!func_1(var_3, 244f, var_3, vec3<u32>(1u, 0u, 44287u)))), func_4(func_4(func_4(Struct_1(vec2<u32>(4294967295u, 4294967295u), var_2.x, vec2<u32>(2605u, 1u), -865f, 4294967295u), _wgslsmith_div_vec4_i32(vec4<i32>(1i, var_3, var_3, -45380i), vec4<i32>(-2147483647i, u_input.a, var_3, u_input.a)), 2147483647i, -117f), firstTrailingBit(~vec4<i32>(0i, 2340i, 30638i, var_3)), var_3, _wgslsmith_f_op_f32(190f + _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_sub_vec4_i32(~select(vec4<i32>(2147483647i, 19714i, var_3, u_input.a), vec4<i32>(u_input.a, var_3, -9124i, -2147483647i), var_4), ~vec4<i32>(var_3, 50170i, var_3, 0i)), var_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.x))))), func_1(1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + -359f)), var_3, abs(vec3<u32>(1u, 1u, 1u))), Struct_1(vec2<u32>(7786u, ~(~34708u)), _wgslsmith_f_op_f32(730f * _wgslsmith_f_op_f32(f32(-1f) * -114f)), ~vec2<u32>(1u, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + var_2.x)), _wgslsmith_clamp_u32(1u, ~(~0u), ~1u)), -select(~(~vec3<i32>(-8042i, 2147483647i, -13662i)), ~vec3<i32>(-7850i, -42991i, u_input.a) | vec3<i32>(var_3, -16702i, 1i), !vec3<bool>(false, var_1.a, false)));
    let x = u_input.a;
    s_output = StorageBuffer(9481u, var_5.d.e, _wgslsmith_dot_vec4_i32(~var_5.a, ~vec4<i32>(2207i, _wgslsmith_dot_vec4_i32(var_5.a, vec4<i32>(u_input.a, u_input.a, 0i, var_3)), -5748i | var_5.e.x, var_3)), u_input.a);
}

