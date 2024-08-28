struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> i32 {
    var var_0 = Struct_2(abs(vec2<u32>(_wgslsmith_mod_u32(0u, u_input.a), 4294967295u << (u_input.a % 32u))) >> (firstTrailingBit(~(vec2<u32>(4294967295u, u_input.a) & vec2<u32>(u_input.a, 37130u))) % vec2<u32>(32u)), Struct_1(arg_0, u_input.b.x, select(vec3<bool>(true, true, any(vec3<bool>(false, true, true))), vec3<bool>(all(vec4<bool>(false, true, false, true)), all(vec4<bool>(true, true, false, false)), false), true), select(max(u_input.a, 59580u) > u_input.a, true, true)));
    var_0 = Struct_2(_wgslsmith_mod_vec2_u32(~firstTrailingBit(vec2<u32>(4294967295u, 72295u)) >> (var_0.a % vec2<u32>(32u)), vec2<u32>(u_input.a, var_0.a.x)), var_0.b);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) + -911f), 1208f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(min(var_0.b.a, 379f))))));
    var var_2 = Struct_2(var_0.a ^ ~var_0.a, var_0.b);
    var var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(1f, 525f)), 820f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.b.a * _wgslsmith_f_op_f32(max(240f, 164f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -839f)), 4294967295u > ~var_2.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2259f))) - -549f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_0.b.a, var_2.b.a), -2161f, 1000f, 1165f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, var_0.b.a, var_2.b.a, var_0.b.a), vec4<f32>(var_2.b.a, var_2.b.a, -1243f, 204f)))))));
    return var_2.b.b;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(step(arg_1.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -495f), 264f))));
    var var_1 = Struct_3(arg_1, 1i & u_input.b.x, _wgslsmith_div_f32(arg_1.a, 1068f));
    var var_2 = -247f;
    var var_3 = Struct_2(vec2<u32>(max(31164u, _wgslsmith_mod_u32(0u, u_input.a) << (_wgslsmith_mod_u32(u_input.a, u_input.a) % 32u)), firstLeadingBit(u_input.a)), Struct_1(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(floor(1f))), -31445i, !(!(!var_1.a.c)), false));
    var_3 = Struct_2(select(var_3.a, ~reverseBits(var_3.a), true), Struct_1(_wgslsmith_f_op_f32(max(var_1.a.a, 345f)), min(-var_1.b, 1i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, 45366i, var_1.b, 1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 10290i, -23077i, 1i), vec4<i32>(-17998i, -42967i, -54880i, 0i), vec4<i32>(-1i, 1668i, 0i, 2147483647i))), select(select(arg_1.c, arg_1.c, arg_1.d), vec3<bool>(true, var_1.a.c.x & true, true), !(!vec3<bool>(var_1.a.d, var_3.b.d, arg_1.c.x))), _wgslsmith_dot_vec2_u32(var_3.a, abs(vec2<u32>(23367u, 1u))) > ~(4294967295u << (var_3.a.x % 32u))));
    return _wgslsmith_f_op_f32(ceil(arg_1.a));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> vec2<u32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-457f)))), _wgslsmith_f_op_f32(arg_1.a * arg_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(func_4(vec3<i32>(_wgslsmith_mod_i32(9805i, 11511i), abs(u_input.b.x), func_3(arg_1.a)), Struct_1(_wgslsmith_f_op_f32(sign(359f)), ~u_input.b.x, vec3<bool>(arg_1.c.x, true, true), true), -191f))), arg_1.a);
    var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, -1021f, -799f, 660f), vec4<f32>(arg_1.a, 486f, 738f, var_0.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 662f, var_0.x, arg_1.a) * vec4<f32>(434f, var_0.x, arg_1.a, -576f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1792f, arg_1.a, var_0.x, 738f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, arg_1.a, var_0.x, var_0.x), vec4<f32>(1043f, -100f, arg_1.a, var_0.x))) + _wgslsmith_div_vec4_f32(vec4<f32>(-120f, var_0.x, arg_1.a, 665f), vec4<f32>(var_0.x, arg_1.a, -1799f, var_0.x))), vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(var_0.x + 1392f), _wgslsmith_f_op_f32(floor(-2016f)))))));
    let var_1 = Struct_3(Struct_1(var_0.x, 1i, vec3<bool>(any(vec3<bool>(false, true, true)) | arg_1.c.x, arg_1.c.x && false, arg_1.d), arg_1.a == _wgslsmith_f_op_f32(select(-174f, var_0.x, arg_1.a >= 171f))), 0i, var_0.x);
    var_0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1043f), -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -451f), _wgslsmith_f_op_f32(-904f * -1270f))) - _wgslsmith_f_op_f32(floor(var_1.a.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.a, arg_1.a))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -120f)))), -791f), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-908f, -988f, var_1.a.a, var_0.x) + vec4<f32>(var_1.a.a, -852f, 1522f, 976f)))))))));
    let var_2 = vec4<u32>(abs(_wgslsmith_clamp_u32(1u, 83634u, 7551u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 78250u), vec2<u32>(1u, arg_2)) % 32u))), ~arg_2, 1u, 1u);
    return _wgslsmith_div_vec2_u32(var_2.wz, var_2.yx);
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    let var_0 = -(vec4<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(-13306i, -43939i), u_input.b.xx) ^ min(-19936i, 4390i), -2147483647i, countOneBits(abs(arg_0.b.b))) & reverseBits(firstLeadingBit(reverseBits(vec4<i32>(43324i, 25909i, 1i, 55062i)))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.a)), -2147483647i, vec3<bool>(arg_0.b.c.x, true || any(select(vec2<bool>(arg_0.b.d, true), arg_0.b.c.xx, false)), !arg_0.b.d & arg_0.b.d), arg_0.b.c.x);
}

fn func_1(arg_0: vec3<f32>) -> f32 {
    var var_0 = ~(~(~vec2<u32>(_wgslsmith_mult_u32(u_input.a, u_input.a), abs(4294967295u))));
    var_0 = vec2<u32>(firstTrailingBit(0u), min(4294967295u, reverseBits(_wgslsmith_mult_u32(u_input.a, ~var_0.x))));
    var var_1 = Struct_2(firstTrailingBit(vec2<u32>(18405u, ~u_input.a & 0u)), func_5(Struct_2(_wgslsmith_clamp_vec2_u32(func_2(u_input.b.x, Struct_1(arg_0.x, -1i, vec3<bool>(false, false, false), true), 16623u), firstTrailingBit(vec2<u32>(0u, var_0.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, var_0.x), vec2<u32>(20039u, var_0.x))), Struct_1(-1722f, -19457i, vec3<bool>(true, true, true), true))));
    var var_2 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_3 = 33906i << (1u % 32u);
    return 539f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a, 0u), firstTrailingBit(vec2<u32>(u_input.a, 65602u))), ~vec2<u32>(7740u, 13358u)), countOneBits(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(19479u, u_input.a)), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, u_input.a))), vec2<u32>(~u_input.a, u_input.a))));
    let var_1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(118f * 971f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 230f) + _wgslsmith_f_op_f32(func_1(vec3<f32>(954f, -1674f, -190f)))), _wgslsmith_f_op_f32(f32(-1f) * -420f)))));
    let var_2 = Struct_3(func_5(Struct_2(abs(vec2<u32>(var_0.x, u_input.a)) >> (countOneBits(vec2<u32>(u_input.a, var_0.x)) % vec2<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(-var_1.x), 10009i, func_5(Struct_2(var_0, Struct_1(var_1.x, -52185i, vec3<bool>(true, true, false), true))).c, false))), 7298i, var_1.x);
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(145f, -810f, var_1.x) - vec3<f32>(144f, -1389f, var_1.x))))), ~firstLeadingBit(_wgslsmith_clamp_i32(-1i, var_2.b, u_input.b.x)), vec3<bool>(var_2.a.d, var_2.a.d, true), (_wgslsmith_f_op_f32(round(788f)) <= _wgslsmith_f_op_f32(-1000f - -645f)) | all(var_2.a.c.xz)), _wgslsmith_dot_vec4_i32(~min(vec4<i32>(u_input.b.x, u_input.b.x, var_2.a.b, var_2.a.b), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, -2147483647i, u_input.b.x, 5055i), vec4<i32>(7528i, 1i, u_input.b.x, u_input.b.x))), vec4<i32>(_wgslsmith_mod_i32(firstTrailingBit(-48436i), var_2.a.b ^ 1i), _wgslsmith_mult_i32(~var_2.b, _wgslsmith_mod_i32(-17031i, var_2.a.b)), _wgslsmith_add_i32(u_input.b.x, -24323i ^ var_2.b), u_input.b.x)), var_2.c);
    let var_4 = ~(~var_0.x);
    var_3 = Struct_3(var_3.a, _wgslsmith_dot_vec3_i32(-u_input.b, ~vec3<i32>(i32(-1i) * -60714i, max(7029i, -15645i), _wgslsmith_div_i32(var_2.a.b, var_3.a.b))), _wgslsmith_f_op_f32(floor(var_2.c)));
    var_3 = Struct_3(func_5(Struct_2(vec2<u32>(var_4, _wgslsmith_dot_vec2_u32(var_0, vec2<u32>(1u, var_0.x))), Struct_1(_wgslsmith_f_op_f32(-var_3.a.a), 24130i, vec3<bool>(false, var_3.a.c.x, false), !var_3.a.c.x))), ~firstTrailingBit(_wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.b.x, var_3.b), firstLeadingBit(-78074i), _wgslsmith_sub_i32(u_input.b.x, var_2.b))), 2589f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(u_input.b, select(_wgslsmith_mod_vec3_i32(u_input.b, select(vec3<i32>(u_input.b.x, -9327i, u_input.b.x), vec3<i32>(var_3.b, var_2.a.b, var_3.b), false)), abs(u_input.b), all(var_2.a.c.zx))), _wgslsmith_mult_vec4_u32(~abs(vec4<u32>(93448u, 4294967295u, 22596u, 53560u) << (vec4<u32>(16262u, var_4, 1u, var_4) % vec4<u32>(32u))), vec4<u32>(abs(1u), ~4294967295u, 7089u, 1635u)), u_input.a);
}

