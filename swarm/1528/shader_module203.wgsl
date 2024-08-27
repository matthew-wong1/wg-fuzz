struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec4<f32>,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: u32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1065f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(408f, 1000f)))))));
    let var_1 = Struct_1(arg_1.a.zz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1053f)) + -1986f)) - _wgslsmith_f_op_f32(f32(-1f) * -1137f)), vec4<f32>(-1889f, -1091f, _wgslsmith_f_op_f32(step(-542f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(233f * -2681f) + -217f))), _wgslsmith_f_op_f32(floor(-1550f))), _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(4294967295u, arg_2, u_input.a)), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_2, 51114u, arg_2), vec3<u32>(u_input.a, 1u, arg_2)) | ~vec3<u32>(4294967295u, 20155u, arg_2), firstTrailingBit(max(vec3<u32>(arg_2, 0u, 44336u), vec3<u32>(u_input.b, 4294967295u, u_input.a)))), countOneBits(vec3<u32>(u_input.b, 0u, reverseBits(0u)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(733f)))), _wgslsmith_f_op_f32(min(-1137f, _wgslsmith_f_op_f32(floor(-1309f)))))));
    let var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_1.b)))), var_1.c.x, _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(_wgslsmith_div_f32(693f, 664f) - var_1.b)), _wgslsmith_f_op_vec4_f32(-var_1.c))), var_1.d.zy);
    var var_3 = Struct_1(-max(vec2<i32>(arg_0, -12048i), var_1.a), -808f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.c.x)) * _wgslsmith_f_op_f32(var_2.a.x - -1088f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1972f * -308f) + var_1.e.x), var_2.a.x)), var_1.d, _wgslsmith_f_op_vec2_f32(-var_2.a.yx));
    let var_4 = 358f;
    return _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(70463u, var_2.b.x, 24429u, abs(4780u)), vec4<u32>(abs(~1u), countOneBits(select(98370u, arg_2, false)), 29956u, var_3.d.x)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(~var_2.b.x, 94901u, arg_2 >> (305u % 32u), 4834u), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, var_1.d.x, 6587u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 6997u, var_3.d.x, 33720u), vec4<u32>(var_2.b.x, var_1.d.x, var_1.d.x, arg_2), vec4<u32>(36885u, u_input.a, var_1.d.x, arg_2)))));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_3) -> f32 {
    let var_0 = _wgslsmith_clamp_vec4_u32(~(~(~vec4<u32>(arg_1.d.x, 1u, 0u, 4294967295u)) ^ vec4<u32>(_wgslsmith_add_u32(0u, 101142u), u_input.a, ~4294967295u, arg_2.d.x)), reverseBits(vec4<u32>(9471u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(49178u, 23315u, arg_1.d.x), vec3<u32>(arg_1.d.x, 100683u, arg_1.d.x)), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(arg_1.d.xy, vec2<u32>(arg_1.d.x, 4294967295u)), arg_1.d.yy), 84914u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 13679u), arg_2.d.yz))), func_3(firstTrailingBit(~(-9630i ^ arg_3.a.b.x)), Struct_2(-vec4<i32>(arg_3.b.a.x, 86664i, -3155i, arg_1.a.x) << (~vec4<u32>(1u, arg_1.d.x, 1u, 1u) % vec4<u32>(32u)), vec3<i32>(-1i) * -arg_3.d.a.zzw), arg_1.d.x));
    let var_1 = arg_3.a;
    var var_2 = !vec3<bool>(arg_0.x && all(arg_0), arg_0.x, (arg_0.x & true) || (~var_0.x > abs(4294967295u)));
    var var_3 = arg_3.d.a;
    let var_4 = 26490u << (~select(arg_1.d.x, ~1u, var_2.x) % 32u);
    return -405f;
}

fn func_1() -> vec2<bool> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -938f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<bool>(true, true, true, true), Struct_1(vec2<i32>(u_input.c, 0i), 302f, vec4<f32>(956f, -1047f, 1586f, 316f), vec3<u32>(u_input.b, u_input.b, u_input.b), vec2<f32>(512f, 1000f)), Struct_1(vec2<i32>(u_input.c, 75299i), -996f, vec4<f32>(-1944f, -428f, -359f, 1000f), vec3<u32>(24864u, u_input.a, 1u), vec2<f32>(1000f, 142f)), Struct_3(Struct_2(vec4<i32>(u_input.c, u_input.c, 2147483647i, 0i), vec3<i32>(-20954i, u_input.c, u_input.c)), Struct_2(vec4<i32>(u_input.c, 16344i, u_input.c, 36696i), vec3<i32>(45690i, u_input.c, 2147483647i)), vec3<f32>(-195f, 1210f, 1134f), Struct_2(vec4<i32>(u_input.c, -10345i, u_input.c, 47154i), vec3<i32>(2147483647i, 2147483647i, u_input.c))))) * _wgslsmith_div_f32(-446f, 1000f))))), -1602f, -216f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2105f, -655f)))));
    var var_1 = Struct_3(Struct_2(max(vec4<i32>(u_input.c | u_input.c, u_input.c, firstTrailingBit(u_input.c), _wgslsmith_div_i32(u_input.c, -131i)), ~vec4<i32>(u_input.c, u_input.c, 0i, u_input.c)), ~(~_wgslsmith_mult_vec3_i32(vec3<i32>(-54598i, -48483i, u_input.c), vec3<i32>(u_input.c, -2147483647i, 14449i)))), Struct_2(~min(vec4<i32>(35518i, -2147483647i, u_input.c, -33884i), vec4<i32>(u_input.c, u_input.c, 2147483647i, -1i)) << (select(select(vec4<u32>(0u, 50997u, 72676u, u_input.b), vec4<u32>(10878u, 4294967295u, u_input.b, 0u), false), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 21955u, u_input.b, u_input.b), vec4<u32>(19356u, 0u, 1u, u_input.b)), vec4<bool>(true, false, true, false)) % vec4<u32>(32u)), vec3<i32>(-u_input.c, 15122i, u_input.c)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(abs(var_0.x))), -902f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * var_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_0.ywz + vec3<f32>(var_0.x, 1000f, -448f))))), 4819u > _wgslsmith_mult_u32(firstLeadingBit(0u), ~u_input.b))), Struct_2(select(-firstTrailingBit(vec4<i32>(1i, 0i, 1i, u_input.c)), reverseBits(-vec4<i32>(42721i, u_input.c, -1i, -41334i)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), all(vec3<bool>(true, false, true)))), vec3<i32>(-(~u_input.c), firstTrailingBit(-u_input.c), u_input.c)));
    var_1 = Struct_3(var_1.b, Struct_2(firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec3_i32(var_1.d.b, var_1.a.a.zxy), reverseBits(-1i), _wgslsmith_div_i32(5468i, var_1.a.a.x), _wgslsmith_div_i32(u_input.c, u_input.c))), ~(-vec3<i32>(37336i, -1i, u_input.c))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x + var_1.c.x) * _wgslsmith_f_op_f32(-var_1.c.x)))), var_1.d);
    var_1 = Struct_3(var_1.a, var_1.a, var_0.xwz, Struct_2(countOneBits(var_1.d.a), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-4015i, -1i, u_input.c), ~vec3<i32>(-6333i, u_input.c, var_1.a.b.x)), vec3<i32>(_wgslsmith_add_i32(var_1.d.b.x, u_input.c), _wgslsmith_mult_i32(var_1.d.a.x, u_input.c), ~var_1.a.b.x))));
    var var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0)) - vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(609f)))), 597f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-889f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c.x * -249f), var_1.c.x))), func_3(-1i, Struct_2(var_1.b.a, _wgslsmith_div_vec3_i32(~var_1.d.b, _wgslsmith_sub_vec3_i32(var_1.a.b, var_1.b.b))), ~136046u).yz);
    return select(vec2<bool>(all(vec2<bool>(true, true)), any(select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true)))), vec2<bool>(true, 19585u > u_input.a), all(vec4<bool>(any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), false)), _wgslsmith_f_op_f32(sign(1226f)) != var_2.a.x, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!func_1()), vec2<bool>(all(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), !any(vec4<bool>(true, false, true, true))), false);
    var var_1 = Struct_4(Struct_2(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, 1i, 25124i, _wgslsmith_mult_i32(u_input.c, u_input.c)), vec4<i32>(_wgslsmith_mod_i32(0i, -1i), 1i & u_input.c, _wgslsmith_div_i32(u_input.c, u_input.c), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -28455i), vec2<i32>(u_input.c, u_input.c)))), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, u_input.c & u_input.c, _wgslsmith_add_i32(u_input.c, 1i)), vec3<i32>(_wgslsmith_div_i32(u_input.c, 29075i), ~(-22599i), firstLeadingBit(u_input.c)), -(~vec3<i32>(1054i, u_input.c, u_input.c)))), Struct_2(_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(-45844i, u_input.c, u_input.c, u_input.c) | vec4<i32>(1i, 17403i, -1i, -26152i)), abs(min(vec4<i32>(-16615i, u_input.c, u_input.c, u_input.c), vec4<i32>(0i, 88773i, 122181i, u_input.c)))), -select(vec3<i32>(43631i, 0i, 8081i), vec3<i32>(-31105i, 15494i, u_input.c), false) | select(vec3<i32>(1i, u_input.c, -1i), vec3<i32>(u_input.c, 65292i, -1i) & vec3<i32>(-11902i, -1i, -1i), false)));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-665f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-642f)), _wgslsmith_f_op_f32(sign(1994f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -829f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-156f, 321f)) + _wgslsmith_f_op_f32(step(-899f, 531f))))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(257f, 790f, 1594f), vec3<f32>(-441f, -1347f, -179f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-1293f)), 383f, -753f) - vec3<f32>(1f, 1f, 1f)))));
    var var_3 = Struct_1(_wgslsmith_div_vec2_i32(reverseBits(~vec2<i32>(var_1.b.a.x, 7535i)) ^ (~vec2<i32>(-16780i, u_input.c) & reverseBits(var_1.a.b.yz)), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(abs(var_1.b.a.xz), var_1.a.b.yx), vec2<i32>(~44495i, firstLeadingBit(u_input.c)))), var_2.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -299f), _wgslsmith_f_op_f32(-var_2.x), 1000f, var_2.x)), ~reverseBits(vec3<u32>(_wgslsmith_mod_u32(4294967295u, u_input.a), u_input.a, u_input.a)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), 1093f)))));
    var_0 = select(select(vec2<bool>(true, true), vec2<bool>(true, 2786f < _wgslsmith_f_op_f32(-var_2.x)), select(vec2<bool>(true, -1i > var_1.a.b.x), select(!vec2<bool>(var_0.x, true), vec2<bool>(true, true), var_3.e.x >= 928f), !func_1())), vec2<bool>(true, true), any(select(select(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, false, var_0.x), true), vec3<bool>(var_0.x, true, var_0.x), !var_0.x), !vec3<bool>(true, var_0.x, false), vec3<bool>(var_0.x, all(vec4<bool>(true, true, var_0.x, false)), false))));
    var_0 = select(select(!select(vec2<bool>(var_0.x, false), func_1(), !var_0.x), select(select(vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(false, true), vec2<bool>(true, var_0.x), vec2<bool>(false, false)), vec2<bool>(true, true)), !vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, var_0.x)), !(!(-6686i < var_3.a.x))), select(vec2<bool>(select(func_1().x, func_1().x, var_3.a.x >= 27565i), true), func_1(), vec2<bool>(var_0.x, any(select(vec4<bool>(false, var_0.x, true, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, true))))), vec2<bool>(var_0.x, !var_0.x));
    var var_4 = Struct_5(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.c.x, 590f, 1000f, var_3.e.x) - vec4<f32>(var_3.b, 1521f, var_3.b, var_3.c.x))), vec4<f32>(_wgslsmith_f_op_f32(766f - 2108f), 258f, _wgslsmith_f_op_f32(var_2.x - 1166f), _wgslsmith_f_op_f32(f32(-1f) * -1451f)), var_0.x)))), ~vec2<u32>(45171u >> (_wgslsmith_mult_u32(4294967295u, var_3.d.x) % 32u), countOneBits(u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~u_input.b, (~1u >> (~4294967295u % 32u)) >> (_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(var_3.d, vec3<u32>(1u, var_4.b.x, 67646u)), reverseBits(vec3<u32>(25986u, var_4.b.x, 89706u))) % 32u)), vec2<i32>(-1i, i32(-1i) * -countOneBits(-1i)), firstTrailingBit(-36881i), u_input.b);
}

