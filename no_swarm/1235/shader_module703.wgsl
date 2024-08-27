struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
    d: f32,
    e: vec4<i32>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2) -> vec2<f32> {
    var var_0 = 1u;
    var_0 = _wgslsmith_sub_u32(abs(max(1u, ~_wgslsmith_mult_u32(arg_1.c, arg_1.c))), 1u);
    var var_1 = ~(~vec3<i32>(-u_input.a.x & -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -1i, 4608i), vec3<i32>(0i, -2147483647i, u_input.a.x)), u_input.a.x));
    var var_2 = ~(~u_input.c);
    var_0 = _wgslsmith_clamp_u32(firstTrailingBit(firstTrailingBit(0u)), u_input.b.x, var_2.x);
    return vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.a.x - 687f), _wgslsmith_f_op_f32(-733f - arg_1.e.b.x), arg_0.x)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-582f, -690f))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-595f * arg_1.d.b.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.a.x + -896f)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    var var_0 = select(vec3<bool>(true, arg_3.b, any(select(vec2<bool>(false, arg_1.x), !vec2<bool>(arg_3.e.a, arg_2.a), all(vec4<bool>(arg_1.x, false, arg_3.d.a, true))))), !select(select(select(vec3<bool>(arg_1.x, true, true), vec3<bool>(arg_2.a, arg_3.b, arg_3.e.a), vec3<bool>(true, arg_1.x, false)), select(vec3<bool>(false, false, arg_1.x), vec3<bool>(arg_3.e.a, true, false), true), !vec3<bool>(true, true, arg_2.a)), select(!vec3<bool>(true, arg_2.a, arg_3.d.a), select(vec3<bool>(arg_3.d.a, arg_3.b, arg_2.a), vec3<bool>(arg_1.x, arg_3.b, false), vec3<bool>(arg_2.a, true, false)), arg_1.x), vec3<bool>(true, arg_1.x, arg_3.d.a)), true);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-810f, arg_2.b.x, 1781f) - _wgslsmith_f_op_vec3_f32(floor(arg_3.a.yzx))), arg_0, false)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_3.a.wzx)));
    var var_2 = Struct_3(arg_3.d, Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(arg_3.a)) + vec4<f32>(_wgslsmith_f_op_f32(arg_0.x + arg_3.a.x), _wgslsmith_div_f32(234f, var_1.x), _wgslsmith_div_f32(-150f, arg_0.x), _wgslsmith_f_op_f32(-arg_3.d.b.x))), any(!select(vec4<bool>(var_0.x, false, arg_2.a, false), vec4<bool>(true, arg_2.a, false, false), arg_3.b)), _wgslsmith_add_u32(~(0u | u_input.c.x), ~u_input.b.x), arg_3.e, Struct_1(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_3.d.b, vec2<f32>(442f, arg_0.x)) * _wgslsmith_f_op_vec2_f32(max(arg_0.yy, arg_0.zz))))), (i32(-1i) * -u_input.a.x) | u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.b.x))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(f32(-1f) * -881f)), _wgslsmith_f_op_f32(525f + _wgslsmith_f_op_f32(f32(-1f) * -800f))))), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 0i << (u_input.b.x % 32u), _wgslsmith_div_i32(u_input.a.x, 1i), u_input.a.x), -vec4<i32>(-1i, max(0i, u_input.a.x), -u_input.a.x, -10270i)));
    var_2 = Struct_3(Struct_1(all(vec2<bool>(var_0.x, !arg_1.x)), vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), arg_2.b.x)), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_f32(abs(arg_0.x)), arg_2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -332f))), !(!(!var_2.b.e.a)), ~select(u_input.c.x, ~7616u, var_2.b.b), Struct_1(any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_1.zz)))), Struct_1(var_2.c > 1i, arg_2.b)), -1i, _wgslsmith_div_f32(arg_3.a.x, _wgslsmith_f_op_f32(round(var_2.d))), _wgslsmith_sub_vec4_i32((~var_2.e | var_2.e) >> (~reverseBits(vec4<u32>(u_input.c.x, arg_3.c, 14162u, arg_3.c)) % vec4<u32>(32u)), vec4<i32>(var_2.e.x, _wgslsmith_clamp_i32(firstTrailingBit(u_input.a.x), i32(-1i) * -2147483647i, u_input.a.x), _wgslsmith_div_i32(17841i, ~(-21662i)), var_2.e.x)));
    let var_3 = var_2.b.a.xww;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-224f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), 1171f, var_2.a.a)));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32) -> Struct_3 {
    let var_0 = reverseBits(firstLeadingBit(-vec4<i32>(0i, u_input.a.x ^ u_input.a.x, u_input.a.x | u_input.a.x, 2147483647i)));
    var var_1 = _wgslsmith_clamp_u32(~(7888u | u_input.b.x), 14492u, ~_wgslsmith_sub_u32(u_input.b.x, arg_0.x));
    var_1 = 1u;
    let var_2 = false == (-countOneBits(13331i) >= -u_input.a.x);
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-212f, 497f, -603f)))), select(select(vec2<bool>(false, var_2), select(vec2<bool>(false, true), vec2<bool>(var_2, var_2), vec2<bool>(false, var_2)), var_2), vec2<bool>(false, u_input.b.x <= u_input.b.x), var_2), Struct_1(true, _wgslsmith_f_op_vec2_f32(func_3(vec4<bool>(true, true, var_2, var_2), Struct_2(vec4<f32>(1000f, 143f, -400f, 179f), true, 116748u, Struct_1(var_2, vec2<f32>(-1155f, -1643f)), Struct_1(false, vec2<f32>(1114f, 1840f)))))), Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(-1174f, 1218f, -1315f, -732f), _wgslsmith_div_vec4_f32(vec4<f32>(1795f, -1251f, 1248f, 374f), vec4<f32>(-326f, -146f, 1770f, -474f))), !(!var_2), arg_0.x, Struct_1(var_0.x <= 0i, _wgslsmith_f_op_vec2_f32(vec2<f32>(1504f, -299f) + vec2<f32>(1746f, -391f))), Struct_1(false, vec2<f32>(691f, 357f))))), _wgslsmith_f_op_f32(ceil(1478f))));
    return Struct_3(Struct_1(var_2, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(351f, 196f) + vec2<f32>(-199f, 261f))))), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(869f, -1572f, 1409f, 505f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-509f, -2673f, -1000f, -576f))), false, arg_1, Struct_1(true | all(vec2<bool>(false, var_2)), vec2<f32>(1f, 1f)), Struct_1(false, vec2<f32>(_wgslsmith_f_op_f32(-1061f + -153f), 1245f))), i32(-1i) * -2147483647i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -528f)) - 1f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1145f * -198f) - -300f)))), firstLeadingBit(var_0));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3) -> Struct_1 {
    let var_0 = arg_1.e.zxy;
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(167f, _wgslsmith_f_op_f32(sign(-1541f)), _wgslsmith_f_op_f32(trunc(1459f))) - arg_1.b.a.zwz);
    var var_2 = firstLeadingBit(_wgslsmith_add_vec3_i32(~vec3<i32>(min(-20452i, arg_1.c), -64231i, reverseBits(-1i)), -(~countOneBits(vec3<i32>(arg_0.x, 2147483647i, 62848i)))));
    var var_3 = firstTrailingBit(abs(~(-2147483647i))) | -_wgslsmith_sub_i32(_wgslsmith_sub_i32(-5861i << (arg_1.b.c % 32u), var_0.x << (u_input.b.x % 32u)), -firstTrailingBit(var_0.x));
    var_2 = vec3<i32>(0i, i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, arg_0.x, -2147483647i, 1i), select(arg_1.e, arg_1.e, arg_1.b.e.a)), _wgslsmith_mod_i32(func_2(select(vec3<u32>(4294967295u, arg_1.b.c, u_input.c.x), u_input.c.zzx, !vec3<bool>(arg_1.b.b, true, arg_1.b.d.a)), _wgslsmith_mod_u32(1u, 4294967295u)).c, i32(-1i) * -2147483647i));
    return func_2(reverseBits(u_input.c.yyy), 4294967295u).b.e;
}

fn func_1() -> vec3<u32> {
    var var_0 = func_5(abs(-_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x)), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), func_2(u_input.c.yzx, u_input.c.x));
    let var_1 = !var_0.a;
    let var_2 = all(select(vec2<bool>(any(select(vec4<bool>(var_1, true, var_0.a, false), vec4<bool>(var_1, true, false, true), vec4<bool>(var_1, false, var_0.a, var_1))), true), select(select(!vec2<bool>(var_0.a, false), vec2<bool>(true, true), select(vec2<bool>(var_0.a, var_1), vec2<bool>(var_0.a, var_1), true)), vec2<bool>(all(vec2<bool>(false, var_1)), true), !vec2<bool>(var_0.a, true)), vec2<bool>(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x) >= abs(u_input.a.x), func_5(vec3<i32>(2147483647i, 1i, -2147483647i), Struct_3(Struct_1(var_1, var_0.b), Struct_2(vec4<f32>(-154f, var_0.b.x, 1268f, -1000f), var_1, u_input.c.x, Struct_1(var_1, vec2<f32>(var_0.b.x, var_0.b.x)), Struct_1(true, vec2<f32>(-1683f, -1786f))), u_input.a.x, 734f, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))).a && false)));
    var var_3 = vec3<bool>(var_1, true, false);
    var var_4 = ~_wgslsmith_dot_vec3_u32(u_input.c.yyz, min(vec3<u32>(u_input.c.x, 1u, 36022u), vec3<u32>(u_input.c.x, 44368u, 62326u)));
    return ~select(~(~vec3<u32>(u_input.b.x, u_input.c.x, 7123u)), abs(vec3<u32>(~u_input.c.x, u_input.c.x, u_input.b.x)), vec3<bool>(true, true, var_2));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = all(!(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), false))));
    let var_1 = !(!select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), any(vec4<bool>(true, true, false, false))), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true))));
    var_0 = false;
    let var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1019f - -1112f)), -888f)), _wgslsmith_add_vec4_i32(countOneBits(~vec4<i32>(1i, 2147483647i, 2147483647i, -16400i)), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-7710i, -2147483647i, u_input.a.x, 2147483647i), vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x)), vec4<i32>(2147483647i, 1136i, u_input.a.x, u_input.a.x))) << (~(vec4<u32>(var_2.x, 6921u, 4294967295u, u_input.c.x) << (u_input.c % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, ~12566i >> (1u % 32u)), vec2<i32>(u_input.a.x, _wgslsmith_div_i32(~8833i, _wgslsmith_mod_i32(u_input.a.x, 7334i)))), -_wgslsmith_mult_i32(u_input.a.x, -u_input.a.x));
}

