struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<f32>,
    d: u32,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
    e: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: vec4<f32>,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: u32) -> i32 {
    global0 = ~_wgslsmith_mod_i32(1i << (_wgslsmith_mult_u32(4294967295u, arg_2) % 32u), 1i) & arg_1.x;
    global0 = _wgslsmith_div_i32(u_input.d, ~(-(~(-2147483647i))) | _wgslsmith_div_i32(select(-37922i, countOneBits(-13181i), true), 0i << (u_input.a % 32u)));
    let var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1106f, 1266f)) - _wgslsmith_f_op_f32(max(1061f, 1000f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1431f)))));
    var var_2 = Struct_3(Struct_2(arg_1.zz, min(-22880i, 3565i), Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(41872i, -1i, arg_1.x, arg_1.x), vec4<i32>(25574i, arg_1.x, u_input.e, -44214i)) | vec4<i32>(u_input.c, 2147483647i, arg_1.x, 2608i), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1760f - -900f), _wgslsmith_f_op_f32(floor(-1849f))))), true, arg_1.x), Struct_1(vec4<i32>(-u_input.e | arg_1.x, abs(-2147483647i >> (u_input.a % 32u)), _wgslsmith_mult_i32(_wgslsmith_div_i32(arg_1.x, 0i), arg_1.x), ~arg_1.x), -1000f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2008f, -1000f) * vec2<f32>(280f, 958f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(202f, 628f), vec2<f32>(1354f, 1343f), false)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-199f, 587f))))), 2372u << (_wgslsmith_div_u32(select(~arg_0, arg_0, true), arg_0) % 32u));
    return -2147483647i;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_5(Struct_2(-((vec2<i32>(u_input.c, u_input.e) << (vec2<u32>(56897u, u_input.b) % vec2<u32>(32u))) & -vec2<i32>(1i, 2147483647i)), u_input.e, Struct_1(vec4<i32>(select(u_input.c, u_input.d, arg_2.x), -u_input.e, _wgslsmith_mult_i32(u_input.c, 2147483647i), abs(-11084i)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-515f))))), func_3(~59230u, select(vec3<i32>(44907i, 85713i, u_input.c), vec3<i32>(u_input.d, -2147483647i, u_input.e), arg_2.x), min(u_input.a, 4294967295u)) >= _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(0i, u_input.e, -13070i)), ~vec3<i32>(29358i, 23137i, u_input.d)), u_input.d), Struct_3(Struct_2(reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d, -24439i), vec2<i32>(-2147483647i, -52550i))), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(1i, u_input.e, u_input.d, u_input.e)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.e, u_input.d, -12896i, -1i), vec4<i32>(-1i, u_input.c, 8280i, u_input.c), vec4<i32>(-8620i, 7400i, u_input.e, -5361i))), Struct_1(-vec4<i32>(u_input.d, u_input.d, u_input.c, u_input.e), 409f), arg_1.x, _wgslsmith_div_i32(u_input.e, 19421i) & 26262i), Struct_1(~firstTrailingBit(vec4<i32>(-1i, u_input.e, u_input.c, u_input.d)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -333f), arg_1.x & false))), arg_0.yy, u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-179f, -424f, 484f, arg_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 421f, -1094f, -1236f)))))), Struct_2(countOneBits(countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, -1i), vec2<i32>(-64018i, u_input.c)))), abs(2147483647i), Struct_1(vec4<i32>(1i, 2147483647i, u_input.e, -29644i), -506f), false, (i32(-1i) * -u_input.e) ^ _wgslsmith_mult_i32(abs(u_input.d), -u_input.e)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.x)))), arg_0.x));
    let var_1 = Struct_5(Struct_2(var_0.a.c.a.yw, 0i ^ ~u_input.e, Struct_1(var_0.b.a.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1067f)))), !(!(var_0.b.b.b != arg_0.x)), -countOneBits(u_input.c)), Struct_3(var_0.a, Struct_1(select(var_0.a.c.a, var_0.b.a.c.a, arg_1) << ((vec4<u32>(1u, 1u, u_input.b, 44890u) << (vec4<u32>(var_0.b.d, var_0.b.d, var_0.b.d, 34220u) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -340f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 850f) * 1000f), -259f), ~_wgslsmith_add_u32(~u_input.b, ~var_0.b.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -1108f, -823f, 188f), var_0.c) + var_0.c) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(var_0.c - vec4<f32>(-620f, -256f, 298f, var_0.e)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 875f, arg_0.x)))))), var_0.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(217f, _wgslsmith_f_op_f32(f32(-1f) * -1465f))), _wgslsmith_f_op_f32(var_0.a.c.b - 1945f)));
    var_0 = Struct_5(Struct_2(var_0.d.a, var_1.b.a.a.x, Struct_1(firstLeadingBit(firstTrailingBit(var_0.a.c.a)), var_0.a.c.b), true, u_input.d), Struct_3(Struct_2(var_0.d.c.a.wz, ~(~(-3561i)), Struct_1(select(var_0.d.c.a, var_1.a.c.a, vec4<bool>(var_1.d.d, true, var_0.d.d, arg_1.x)), var_1.a.c.b), true, i32(-1i) * -2147483647i), var_1.a.c, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(var_1.c.zz)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(213f, 173f)))), var_1.b.d), _wgslsmith_f_op_vec4_f32(exp2(var_0.c)), var_1.a, var_1.c.x);
    var var_2 = Struct_4(-1i, var_1.b.a.c.a.zzw, abs(vec4<u32>(2565u, ~1u, var_1.b.d, var_0.b.d)), ~_wgslsmith_mult_u32(0u, 4294967295u), _wgslsmith_f_op_f32(-var_0.e));
    let var_3 = vec2<f32>(-282f, 1409f);
    return Struct_1(min(vec4<i32>(-1i) * -countOneBits(vec4<i32>(var_1.d.b, 2024i, 19319i, var_1.b.a.a.x)), -var_1.b.b.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.c.b)));
}

fn func_1() -> vec3<u32> {
    let var_0 = func_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-519f, -311f, 1635f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-395f, -125f, -1552f)))))), vec4<bool>(true, true, true, true), vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false))), !any(vec2<bool>(true, true)), all(vec2<bool>(true, any(vec2<bool>(false, false)))), (_wgslsmith_clamp_i32(u_input.c, u_input.d, 1760i) << (4294967295u % 32u)) == firstLeadingBit(_wgslsmith_sub_i32(-37953i, u_input.c))));
    global0 = -13513i;
    var var_1 = _wgslsmith_clamp_u32(u_input.a, _wgslsmith_dot_vec2_u32(select(select(vec2<u32>(u_input.a, 20409u), select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, 13139u), vec2<bool>(true, false)), true), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.b, u_input.b)), !any(vec3<bool>(true, false, false))), ~vec2<u32>(414u, 1u)), countOneBits(abs(_wgslsmith_clamp_u32(0u, ~u_input.a, 72109u))));
    let var_2 = Struct_4(-_wgslsmith_dot_vec2_i32(var_0.a.wy, ~var_0.a.zx << (_wgslsmith_mult_vec2_u32(vec2<u32>(22980u, u_input.b), vec2<u32>(4294967295u, u_input.a)) % vec2<u32>(32u))), ~vec3<i32>(min(-2147483647i, var_0.a.x) >> (~4294967295u % 32u), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(24442i, u_input.c)), -var_0.a.yz), 2147483647i), _wgslsmith_div_vec4_u32(min((vec4<u32>(u_input.a, u_input.b, u_input.b, 7828u) >> (vec4<u32>(u_input.b, u_input.a, u_input.b, 45846u) % vec4<u32>(32u))) >> (vec4<u32>(u_input.b, 42u, 4294967295u, u_input.a) % vec4<u32>(32u)), vec4<u32>(4294967295u, _wgslsmith_add_u32(7507u, u_input.a), u_input.a << (u_input.a % 32u), 0u)), vec4<u32>(~abs(20765u), ~u_input.a, ~4294967295u, 0u)), firstLeadingBit(abs(0u)), 233f);
    global0 = _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -(var_0.a << (var_2.c % vec4<u32>(32u))), -(vec4<i32>(firstLeadingBit(-2147483647i), ~var_0.a.x, _wgslsmith_sub_i32(u_input.d, var_2.b.x), -1i) & _wgslsmith_mult_vec4_i32(var_0.a << (vec4<u32>(70027u, u_input.a, 27940u, 2189u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, var_0.a.x, -2147483647i, -1i), vec4<i32>(-16679i, 46099i, 37566i, 31719i), var_0.a))));
    return (~vec3<u32>(var_2.c.x, ~var_2.c.x, reverseBits(u_input.a)) >> (reverseBits((vec3<u32>(39587u, var_2.c.x, 4151u) | var_2.c.wzz) >> (max(var_2.c.yyx, var_2.c.wzy) % vec3<u32>(32u))) % vec3<u32>(32u))) ^ countOneBits(vec3<u32>(select(_wgslsmith_clamp_u32(49355u, var_2.c.x, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.b, 126014u), var_2.c), true), select(_wgslsmith_dot_vec2_u32(var_2.c.wy, var_2.c.yz), 1u, any(vec4<bool>(false, true, false, false))), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(223f, 291f), vec2<f32>(142f, 1914f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(636f, -1615f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(462f, _wgslsmith_f_op_f32(ceil(995f))))));
    let var_1 = _wgslsmith_div_vec3_u32(func_1(), func_1());
    global0 = -67088i;
    var var_2 = _wgslsmith_f_op_vec2_f32(trunc(var_0));
    var var_3 = Struct_4(u_input.e, _wgslsmith_clamp_vec3_i32(~(-reverseBits(vec3<i32>(63160i, -58560i, 2147483647i))), ~vec3<i32>(13144i, firstTrailingBit(u_input.d), firstTrailingBit(0i)), max(firstTrailingBit(vec3<i32>(u_input.e, u_input.e, -1i)), ~vec3<i32>(1024i, -20564i, u_input.e) >> (~vec3<u32>(var_1.x, var_1.x, u_input.a) % vec3<u32>(32u)))), firstTrailingBit(vec4<u32>(32025u, var_1.x, 12467u, 4294967295u)), 4294967295u, _wgslsmith_f_op_f32(146f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.x, var_0.x))), var_0.x)));
    var var_4 = true & (any(vec2<bool>(select(false, false, true), select(false, true, true))) == true);
    let x = u_input.a;
    s_output = StorageBuffer(-(~(~(~vec2<i32>(37125i, 1i)))), var_0, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.x, var_0.x, -1557f, 1584f), vec4<f32>(var_0.x, 707f, var_2.x, var_2.x))), vec4<f32>(-1000f, 386f, var_2.x, 2610f), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(687f, 867f, var_3.e, 193f), vec4<f32>(var_0.x, var_0.x, -952f, var_0.x)), vec4<f32>(var_3.e, 215f, var_3.e, -842f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-700f, -685f, var_0.x, var_2.x) * vec4<f32>(-1672f, -246f, var_2.x, -248f)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-663f, 186f, var_0.x, -542f))))), !vec4<bool>(true, true, all(vec3<bool>(true, false, false)), any(vec2<bool>(false, false))))));
}

