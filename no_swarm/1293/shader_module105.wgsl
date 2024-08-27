struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))) + -523f), -947f, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(false, true, true, false))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1125f, var_0, var_0), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1779f, 522f, var_0) + vec3<f32>(-698f, var_0, 1000f)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(236f, var_0, var_0)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-190f, -1371f, 572f), vec3<f32>(var_0, -806f, 1000f))))))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 760f, 798f)), _wgslsmith_div_vec3_f32(vec3<f32>(-522f, -931f, var_0), vec3<f32>(571f, var_0, 125f))))));
    let var_2 = Struct_3(Struct_1(vec4<u32>(_wgslsmith_clamp_u32(min(3356u, 13174u), ~0u, 61853u), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(44393u, 0u), max(4294967295u, 1u), ~58263u), ~(~1u), 33583u), vec2<i32>(min(reverseBits(u_input.a), u_input.a), -1i), vec4<bool>(true, true, true, true), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), -108f)), max(~vec2<u32>(36278u, 8629u), select(vec2<u32>(4363u, 2480u), _wgslsmith_clamp_vec2_u32(vec2<u32>(42111u, 0u), vec2<u32>(37338u, 4294967295u), vec2<u32>(1u, 87865u)), true)) ^ vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(6045u, 50881u), ~vec2<u32>(99164u, 48156u)), firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(26085u, 32443u), vec2<u32>(4294967295u, 15641u)))), Struct_1(~vec4<u32>(506u, ~4955u, _wgslsmith_mod_u32(0u, 76952u), _wgslsmith_mult_u32(47980u, 5236u)), _wgslsmith_clamp_vec2_i32(min(vec2<i32>(u_input.a, -82481i) ^ vec2<i32>(u_input.a, -19785i), vec2<i32>(12324i, u_input.a)), vec2<i32>(u_input.a, u_input.a), (vec2<i32>(12022i, u_input.a) | vec2<i32>(u_input.a, u_input.a)) | firstTrailingBit(vec2<i32>(14082i, 0i))), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1230f, _wgslsmith_div_f32(var_1.x, -1065f)))), _wgslsmith_dot_vec3_i32(firstTrailingBit(~min(vec3<i32>(u_input.a, 31361i, -2147483647i), vec3<i32>(u_input.a, u_input.a, u_input.a))), ~(-(~vec3<i32>(-1i, u_input.a, u_input.a)))));
    var var_3 = abs(~firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(17812u, var_2.b.x), var_2.a.a.wz, ~var_2.c.a.ww)));
    var_3 = var_2.a.a.wy;
    return vec2<u32>(4294967295u, var_3.x);
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_3(arg_1, select(~func_3(), vec2<u32>(63778u, 33749u), arg_1.c.zw), arg_1, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(2147483647i, 42505i), max(vec2<i32>(6950i, -1i) | arg_1.b, -arg_1.b), select(arg_1.b, vec2<i32>(arg_1.b.x, -2147483647i), arg_1.c.xx) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.a.x, 0u), arg_1.a.wy, vec2<u32>(0u, 8695u)) % vec2<u32>(32u))), arg_1.b & (-vec2<i32>(arg_1.b.x, arg_1.b.x) << (_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 2667u), vec2<u32>(36367u, arg_0)) % vec2<u32>(32u)))));
    var_0 = Struct_3(Struct_1(~select(var_0.c.a, arg_1.a, select(arg_1.c, var_0.a.c, arg_1.c)), vec2<i32>(-42701i, _wgslsmith_dot_vec2_i32(vec2<i32>(-20847i, var_0.a.b.x), max(arg_1.b, vec2<i32>(arg_1.b.x, -9071i)))), vec4<bool>(all(arg_1.c.zzz), true, var_0.c.c.x, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(254f, 108f) * vec2<f32>(var_0.c.d.x, arg_1.d.x)) + vec2<f32>(-701f, arg_1.d.x)) * arg_1.d)), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(select(reverseBits(var_0.b), vec2<u32>(32981u, 10741u), var_0.a.c.x), ~func_3()), vec2<u32>(countOneBits(_wgslsmith_mod_u32(var_0.b.x, var_0.a.a.x)), ~countOneBits(arg_0))), Struct_1(_wgslsmith_sub_vec4_u32(min(arg_1.a, var_0.c.a), var_0.a.a), select(vec2<i32>(u_input.a, var_0.a.b.x), ~var_0.a.b << ((vec2<u32>(var_0.c.a.x, arg_0) >> (var_0.a.a.wz % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<bool>(all(arg_1.c.zwx), false)), var_0.a.c, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1299f, var_0.c.d.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d.x, arg_1.d.x)), !vec2<bool>(arg_1.c.x, true)))))), arg_1.b.x);
    var var_1 = abs(~arg_0);
    var_0 = Struct_3(var_0.c, ~(~_wgslsmith_clamp_vec2_u32(var_0.a.a.yw, select(arg_1.a.zw, vec2<u32>(arg_0, 4294967295u), vec2<bool>(false, false)), select(arg_1.a.xz, vec2<u32>(arg_1.a.x, var_0.b.x), arg_1.c.x))), Struct_1(~(vec4<u32>(0u, arg_1.a.x, 1u, 31225u) & vec4<u32>(0u, arg_1.a.x, var_0.b.x, 0u)), vec2<i32>(abs(abs(-16723i)), -var_0.d), select(!select(vec4<bool>(true, false, true, false), arg_1.c, false), vec4<bool>(true, any(var_0.c.c.xz), true, true), var_0.a.c), arg_1.d), -u_input.a);
    let var_2 = Struct_3(Struct_1(vec4<u32>(var_0.c.a.x, arg_0, ~0u, arg_0 << (_wgslsmith_add_u32(0u, 4294967295u) % 32u)), arg_1.b, vec4<bool>(true, (arg_1.b.x < 1i) & true, true, var_0.c.c.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_0.c.d * var_0.a.d), var_0.a.d)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.d.x, var_0.c.d.x) - arg_1.d) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-364f, arg_1.d.x))))), ~arg_1.a.wy, var_0.c, reverseBits(-2147483647i ^ -arg_1.b.x));
    return arg_1;
}

fn func_4(arg_0: Struct_1) -> u32 {
    var var_0 = !arg_0.c.x;
    var var_1 = Struct_3(func_2(arg_0.a.x, func_2(arg_0.a.x, func_2(arg_0.a.x, arg_0))), arg_0.a.wy, Struct_1(max(arg_0.a, select(vec4<u32>(arg_0.a.x, 50364u, 1332u, 38627u), arg_0.a, arg_0.c) >> (~vec4<u32>(arg_0.a.x, 28596u, 1719u, 1u) % vec4<u32>(32u))), vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, u_input.a, arg_0.b.x), max(vec3<i32>(-61330i, arg_0.b.x, u_input.a), vec3<i32>(1i, u_input.a, 26665i))), max(-2147483647i ^ arg_0.b.x, _wgslsmith_mod_i32(u_input.a, u_input.a))), select(select(!arg_0.c, func_2(arg_0.a.x, Struct_1(vec4<u32>(arg_0.a.x, arg_0.a.x, 39287u, arg_0.a.x), arg_0.b, vec4<bool>(arg_0.c.x, true, true, false), arg_0.d)).c, arg_0.c.x), arg_0.c, arg_0.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_0.d))))), _wgslsmith_mod_i32(select(firstTrailingBit(_wgslsmith_mult_i32(u_input.a, 1i)), -1i, all(!vec3<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x))), firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b.x, -1i), arg_0.b)) << (arg_0.a.x % 32u)));
    var var_2 = abs(~var_1.c.a);
    var var_3 = vec4<i32>(min(-u_input.a | _wgslsmith_mult_i32(48129i, arg_0.b.x), min(arg_0.b.x, -1i)) ^ var_1.d, ~var_1.d, reverseBits(_wgslsmith_add_i32(var_1.c.b.x, 0i)), 0i);
    var var_4 = arg_0.b.x;
    return ~firstLeadingBit(~_wgslsmith_dot_vec4_u32(var_1.a.a, vec4<u32>(var_2.x, 39066u, var_1.b.x, 1u)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(1883f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-717f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1762f + -241f)))), -1000f)));
    var var_1 = Struct_1(vec4<u32>(arg_1.a.x, arg_1.a.x, ~arg_1.a.x, _wgslsmith_sub_u32(arg_1.a.x, func_4(func_2(4294967295u, Struct_1(arg_0.c.a, arg_1.b, arg_0.c.c, arg_0.a.d))))), vec2<i32>(-1i) * -(arg_1.b | arg_0.a.b), !vec4<bool>(!any(arg_0.a.c.wzx), false, !func_2(10165u, arg_0.c).c.x, false), arg_1.d);
    var_1 = arg_1;
    var var_2 = vec3<i32>(_wgslsmith_clamp_i32(0i, ~_wgslsmith_div_i32(-13083i, arg_1.b.x), ~u_input.a), countOneBits(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.x, -2147483647i, arg_1.b.x, arg_0.c.b.x), vec4<i32>(var_1.b.x, u_input.a, arg_0.c.b.x, arg_0.d))), arg_0.c.b.x) ^ firstTrailingBit(~abs(abs(vec3<i32>(arg_0.d, 23353i, arg_0.a.b.x))));
    let var_3 = ~_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(select(-33249i, u_input.a, true), arg_1.b.x >> (var_1.a.x % 32u), _wgslsmith_clamp_i32(arg_0.a.b.x, var_2.x, u_input.a)), var_2.x ^ -7802i), vec2<i32>(2497i, 1i), -vec2<i32>(~0i, _wgslsmith_add_i32(20999i, -12648i)));
    return _wgslsmith_f_op_f32(-arg_1.d.x);
}

fn func_5(arg_0: vec3<i32>, arg_1: vec2<f32>) -> Struct_3 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-806f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_1.x)))))), -370f);
    var var_1 = -709f;
    let var_2 = func_2(~1u, func_2(reverseBits(4294967295u), func_2(func_3().x, func_2(firstTrailingBit(13370u), Struct_1(vec4<u32>(24514u, 25118u, 4294967295u, 86545u), vec2<i32>(u_input.a, arg_0.x), vec4<bool>(false, true, false, true), arg_1)))));
    return Struct_3(func_2(_wgslsmith_mod_u32(~_wgslsmith_div_u32(599u, var_2.a.x), ~_wgslsmith_clamp_u32(var_2.a.x, 1u, var_2.a.x)), func_2(var_2.a.x, var_2)), ~(select(vec2<u32>(var_2.a.x, 4294967295u) << (vec2<u32>(var_2.a.x, var_2.a.x) % vec2<u32>(32u)), var_2.a.zw << (var_2.a.wy % vec2<u32>(32u)), true) & ~var_2.a.zz), Struct_1(~var_2.a, -abs(vec2<i32>(u_input.a, 1i)), !var_2.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0)) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-282f, var_0.x), _wgslsmith_f_op_vec2_f32(floor(arg_1)))))), var_2.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(0i, u_input.a, ~u_input.a, _wgslsmith_div_i32(u_input.a, firstLeadingBit(u_input.a)));
    let var_1 = func_5(vec3<i32>(i32(-1i) * -19924i, abs(_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.a, var_0.x), ~var_0.x)), firstTrailingBit(-5396i)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1737f - -1264f))), _wgslsmith_f_op_f32(func_1(Struct_3(Struct_1(vec4<u32>(44027u, 68882u, 32892u, 1u), var_0.yy, vec4<bool>(true, true, true, true), vec2<f32>(-133f, -437f)), vec2<u32>(1u, 0u), Struct_1(vec4<u32>(14236u, 5911u, 4667u, 35835u), vec2<i32>(u_input.a, var_0.x), vec4<bool>(false, false, false, true), vec2<f32>(-1000f, -419f)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 1i, 28035i), var_0.xzy)), Struct_1(vec4<u32>(1u, 1u, 1u, 1u), firstLeadingBit(vec2<i32>(-46230i, var_0.x)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -320f)))))));
    var_0 = select(vec4<i32>(var_1.a.b.x, select(var_1.d, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, u_input.a, var_0.x, var_1.a.b.x), firstTrailingBit(vec4<i32>(var_0.x, u_input.a, var_0.x, var_1.d))), true), -66956i, var_0.x << (_wgslsmith_dot_vec4_u32(firstLeadingBit(var_1.c.a), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 6288u, 0u, var_1.c.a.x), var_1.a.a)) % 32u)), vec4<i32>(~1i, -3533i, 1i, _wgslsmith_sub_i32(var_1.c.b.x, -25553i)) >> (var_1.c.a % vec4<u32>(32u)), var_1.c.c);
    var_0 = -abs(vec4<i32>(2147483647i, var_0.x << (select(74543u, 1u, var_1.c.c.x) % 32u), 2147483647i, 29276i));
    var var_2 = Struct_1(vec4<u32>(firstTrailingBit(43468u), func_2(24002u, Struct_1(var_1.c.a, vec2<i32>(u_input.a, var_0.x), var_1.c.c, var_1.a.d)).a.x, var_1.c.a.x, 54263u) & (~(~vec4<u32>(4294967295u, 13965u, 1u, 1u)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.a.a.x, var_1.b.x, 1u, 0u), ~var_1.c.a) % vec4<u32>(32u))), select(vec2<i32>(43125i, -35082i), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, u_input.a, 1606i), var_0.xxz), 2147483647i) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(25272i, 1i), _wgslsmith_sub_vec2_i32(var_0.xz, vec2<i32>(-1i, -2147483647i))), all(var_1.c.c)), var_1.c.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-1424f)), var_1.c.d.x) * var_1.c.d)));
    var var_3 = _wgslsmith_mult_vec3_i32(countOneBits(_wgslsmith_mult_vec3_i32(~var_0.yxz, -firstLeadingBit(vec3<i32>(100468i, -1i, var_1.a.b.x)))), ~(~(var_0.wzx | -var_0.ywx)));
    let var_4 = ~vec2<i32>(i32(-1i) * -31734i, -10581i);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d, var_1.a.d);
}

